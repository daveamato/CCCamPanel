<?
	$strHost = "127.0.0.1";
	$strDB = "cwmv2";
	$strUser = "root";
	$strPassword = "";
	$clsMyDB = new MyDatabase($strHost,$strDB,$strUser,$strPassword);

	/**** Class Database ****/
	Class MyDatabase
	{
		/**** function connect to database ****/
		function MyDatabase($strHost,$strDB,$strUser,$strPassword)
		{
				$this->objConnect = mysql_connect($strHost,$strUser,$strPassword);
				$this->DB = mysql_select_db($strDB);
				mysql_query("SET NAMES UTF8");
		}

		/**** function insert record ****/
		function fncInsertRecord()
		{
				$strSQL = "INSERT INTO $this->strTable ($this->strField) VALUES ($this->strValue) ";
				return mysql_query($strSQL);
		}

		/**** function select record ****/
		function fncSelectRecord()
		{
				$strSQL = "SELECT * FROM $this->strTable WHERE $this->strCondition ";
				$objQuery = @mysql_query($strSQL);
				return @mysql_fetch_array($objQuery);
		}

		/**** function update record (argument) ****/
		function fncUpdateRecord($strTable,$strCommand,$strCondition)
		{
				$strSQL = "UPDATE $strTable SET  $strCommand WHERE $strCondition ";
				return @mysql_query($strSQL);
		}

		/**** function delete record ****/
		function fncDeleteRecord()
		{
				$strSQL = "DELETE FROM $this->strTable WHERE $this->strCondition ";
				return @mysql_query($strSQL);
		}

		/*** end class auto disconnect ***/
		function __destruct() {
				return @mysql_close($this->objConnect);
	    }
	}			

//==================================================================
mysql_connect($strHost,$strUser,$strPassword); // connect mysql
mysql_select_db($strDB); // select database 
mysql_query("SET character_set_results=utf8");
mysql_query("SET character_set_client=utf8");
mysql_query("SET character_set_connection=utf8");

?>
