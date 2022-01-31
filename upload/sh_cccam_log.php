<? 
include(dirname($_SERVER['SCRIPT_FILENAME'])."/include/dbconnect.php");

$alluser =  mysql_query("select * from users where ustatus <> 0");
while($alluser_arr = mysql_fetch_array($alluser)){

	$url= "http://".$alluser_arr["ucccamuser"].":".$alluser_arr["ucccampass"]."@127.0.0.1:".$alluser_arr["ucccamport"]."/activeclients";
	$myweb = get_data($url);
	$count_rec = 0;
	$data1= explode("\n",$myweb);
	foreach($data1 as $rec_value){
		$count_rec++;
		if(substr($rec_value,0,1)=="|"){
			$arr_rec = explode("|",$rec_value);
			if(count($arr_rec) > 5 && str_replace(" ","",$arr_rec[1]) != "Username" ){
			mysql_query ("INSERT INTO cccam_log(lport,ldatetime, lusername, lip, lconnected, lecm, lversion, ltime) VALUES ('".$alluser_arr["ucccamport"]."','".date("Y-m-d H:i:s")."', '".str_replace(" ","",$arr_rec[1])."', '".str_replace(" ","",$arr_rec[2])."', '".$arr_rec[3]."', '".$arr_rec[5]."', '".$arr_rec[7]."', '".$arr_rec[9]."')");
				
			}
		}
	}

$time = date(H);

echo $time."-".$alluser_arr['utime_disable'];

if ($time == $alluser_arr['utime_disable'])
{
$sql_autodis = "SELECT
Sum(IF(udedate<now(),IF(udindex=0,0,DATEDIFF(udedate,now())) ,if(udsdate>now(),DATEDIFF(udedate,udsdate),IF(DATEDIFF(udedate,now())Is Null ,0,DATEDIFF(udedate,now()))))) AS udday_remain,
Sum(IF(udday Is Null,0,udday)) AS udday_sum,
Max(udedate) AS end_date,
Sum(udprice) AS udprice_sum,
customers.cusid,
customers.cusautodisable,
customers.cusstatus
FROM customers 
Left Outer Join usedate ON customers.cusid = usedate.ud_cusid 
Left Outer Join status ON status.stid = customers.cusstatus
where customers.cusautodisable = 1 and customers.cusstatus <> 2 
GROUP BY customers.cususername
HAVING  udday_remain < 0 ";
//echo $sql_autodis;
$Query = mysql_query($sql_autodis);
$total = mysql_num_rows($Query);

while($arr_dis = mysql_fetch_array($Query)){
	mysql_query("UPDATE customers SET cusstatus =2 WHERE cusid =".$arr_dis[cusid]);
}

if($total != 0){
	update_cccam($alluser_arr[uid]);
	echo "update";
}else{
	echo "no update";
}
}
}


function update_cccam($uid){
	start_stop_cam($uid,1);
	$sql_location_cccam = "SELECT * 
	FROM
	users
	where uid=".$uid." and ustatus <> 0";
	$Query_sql_location_cccam =  mysql_query($sql_location_cccam);
	$arr_user = mysql_fetch_array($Query_sql_location_cccam);

	$isql = "SELECT * 
	FROM
	customers
	Inner Join users ON users.uid = customers.cus_uid
	where cusstatus <> 0
	and udefault_cccam_file='".$arr_user['udefault_cccam_file']."' GROUP BY customers.cususername
	order by cusstatus ";

//echo $isql;

	$Query = mysql_query($isql);
//	$arr = mysql_fetch_array($Query);

	$filesource =  $arr_user['udefault_cccam_file'];

	if (file_exists($filesource)){

		$fp = fopen ($filesource, "r");
		$storeWord = array();
		$i = 0;
		while (!feof($fp)){
			$line = fgets ($fp, 100);
	
			if(stristr($line, "F:" ) || stristr($line, "f:" )){
				
			}else{
				$new_text[$i] =$line;	
			}
			$i = $i+1;
		}
		fclose($fp);

		$fw = fopen ($filesource, "w");

		while($arr = mysql_fetch_array($Query)){
			
			if($arr[cusstatus] != 1){
				fwrite($fw,"#F: ".$arr[cususername]." ".$arr[cuspass]." ".$arr[udefaultccccam_user_command]." ".$arr[cusexternal_command]." \n");
			}else{
				fwrite($fw,"F: ".$arr[cususername]." ".$arr[cuspass]." ".$arr[udefaultccccam_user_command]." ".$arr[cusexternal_command]." \n");	
			}
		}

		foreach($new_text as $nline){
			fwrite($fw,$nline);			
		}
		fclose($fw);
		sleep(1); 
		start_stop_cam($uid,0);
		return "Update Complete.";
	}else{
		return "Update faile.";
	}
}



function get_data($url)
{
$ch = curl_init();
$timeout = 5;
curl_setopt($ch,CURLOPT_URL,$url);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,$timeout);
$data = curl_exec($ch);
curl_close($ch);
return $data;
}

function start_stop_cam($uid,$comd){
$sql_user = "SELECT udefault_cccam_start ,udefault_cccam_file 
FROM
users
where uid=".$uid;
$Query =  mysql_query($sql_user);
$psvalue = mysql_fetch_array($Query);

$ipid = shell_exec("ps -aef | grep -v grep | grep '".$psvalue['udefault_cccam_start']." ".$psvalue['udefault_cccam_file']."'");
$ipid = str_replace("      "," ",$ipid);
$ipid = str_replace("     "," ",$ipid);
$ipid = str_replace("    "," ",$ipid);
$ipid = str_replace("   "," ",$ipid);
$ipid = str_replace("  "," ",$ipid);
$spid = explode(" ",$ipid);

	if($spid[1] && $comd==1){
		shell_exec("kill $spid[1]");
		return "Stop CAM complete.";
	}else{
		shell_exec($psvalue['udefault_cccam_start']." ".$psvalue['udefault_cccam_file']);
		return "Start CAM complete.";
	}

}


?>