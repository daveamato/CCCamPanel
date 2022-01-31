-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- โฮสต์: localhost
-- เวลาในการสร้าง: 01 มิ.ย. 2010  14:52น.
-- รุ่นของเซิร์ฟเวอร์: 5.1.37
-- รุ่นของ PHP: 5.2.10-2ubuntu6.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- ฐานข้อมูล: `cwmv2`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `cccam_log`
--

CREATE TABLE IF NOT EXISTS `cccam_log` (
  `lport` varchar(10) NOT NULL,
  `ldatetime` datetime NOT NULL,
  `l_uid` int(11) NOT NULL,
  `lusername` varchar(50) NOT NULL,
  `lip` varchar(50) NOT NULL,
  `lconnected` varchar(50) NOT NULL,
  `lecm` varchar(20) NOT NULL,
  `lversion` varchar(10) NOT NULL,
  `ltime` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- dump ตาราง `cccam_log`
--


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `channel`
--

CREATE TABLE IF NOT EXISTS `channel` (
  `chid` int(11) NOT NULL AUTO_INCREMENT,
  `chcaid` varchar(50) DEFAULT NULL,
  `chpid` varchar(50) DEFAULT NULL,
  `chname` varchar(128) DEFAULT NULL,
  `chpic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`chid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=169 ;

--
-- dump ตาราง `channel`
--

INSERT INTO `channel` (`chid`, `chcaid`, `chpid`, `chname`, `chpic`) VALUES
(2, '604', '000000:019f', 'AF MV', 'AFMV.png'),
(3, '604', '000000:00d9', 'Animal Planet', 'ANPL.png'),
(4, '604', '000000:019e', 'Asias Series', 'ASER.png'),
(5, '604', '000000:0148', 'AXN', 'AXN.png'),
(6, '604', '000000:014b', 'AXN Beyond', 'AXNB.png'),
(7, '614', '000000:00cc', 'Bang Channel', 'Bang Channel.png'),
(8, '604', '000000:0212', 'BBC', 'BBC.png'),
(9, '604', '000000:0214', 'Bloomberg', 'BMBG.png'),
(10, '614', '000000:000e', 'Busaba Cafe', 'Busaba Cafe.png'),
(11, '614', '000000:00cb', 'Cartoon Club', 'Cartoon Club.png'),
(12, '604', '000000:0264', 'CCTV', 'CCTV.png'),
(13, '604', '000000:006f', 'CH-3', 'CH-3.png'),
(14, '604', '000000:0070', 'CH-5', 'CH-5.png'),
(15, '604', '000000:0071', 'CH-7', 'CH-7.png'),
(16, '604', '000000:0072', 'CH-9', 'CH-9.png'),
(17, '604', '000000:01a2', 'Chic Channel', 'CHIC.png'),
(18, '604', '000000:020a', 'CH [V] Thailand', 'CH-V.png'),
(19, '604', '000000:0213', 'CNBC', 'CNBC.png'),
(20, '604', '000000:0211', 'CNN', 'CNN.png'),
(21, '604', '000000:0338', 'Discory H&H', 'D HH.png'),
(22, '604', '000000:0336', 'Discory Turbo', 'D TB.png'),
(23, '604', '000000:0337', 'Discory T&L', 'D TL.png'),
(24, '614', '000000:00ce', 'D Asian', 'D-Asian.png'),
(25, '614', '000000:0007', 'D Channel', 'D-Channel.png'),
(26, '604', '000000:00d8', 'Discovery Channel', 'Disc.png'),
(27, '604', '000000:0137', 'DisN', 'Disn.png'),
(28, '604', '000000:00e6', 'DisP', 'DisP.png'),
(29, '604', '000000:039e', 'DLTV 1', 'DLTV1.png'),
(30, '604', '000000:03a7', 'DLTV 10', 'DLTV10.png'),
(31, '604', '000000:03a8', 'DLTV 11', 'DLTV11.png'),
(32, '604', '000000:03a9', 'DLTV 12', 'DLTV12.png'),
(33, '604', '000000:03aa', 'DLTV 13', 'DLTV13.png'),
(34, '604', '000000:03ab', 'DLTV 14', 'DLTV14.png'),
(35, '604', '000000:03ac', 'DLTV 15', 'DLTV15.png'),
(36, '604', '000000:039f', 'DLTV 2', 'DLTV2.png'),
(37, '604', '000000:03a0', 'DLTV 3', 'DLTV3.png'),
(38, '604', '000000:03a1', 'DLTV 4', 'DLTV4.png'),
(39, '604', '000000:03a2', 'DLTV 5', 'DLTV5.png'),
(40, '604', '000000:03a3', 'DLTV 6', 'DLTV6.png'),
(41, '604', '000000:03a4', 'DLTV 7', 'DLTV7.png'),
(42, '604', '000000:03a5', 'DLTV 8', 'DLTV8.png'),
(43, '604', '000000:03a6', 'DLTV 9', 'DLTV9.png'),
(44, '614', '000000:0010', 'DMC', 'DMC.png'),
(45, '614', '000000:00cd', 'D Movie', 'D-Movie.png'),
(46, '604', '000000:0335', 'Discovery Science', 'DSci.png'),
(47, '604', '000000:0149', 'E!', 'E!.png'),
(48, '604', '000000:026e', 'ESPN', 'ESPN.png'),
(49, '604', '000000:0398', 'ETV', 'ETV.png'),
(50, '604', '000000:00d3', 'Explore 1', 'EXP1.png'),
(51, '604', '000000:00d4', 'Explore 2', 'EXP2.png'),
(52, '604', '000000:00d5', 'Explore 3', 'EXP3.png'),
(53, '604', '000000:0079', 'Film Asia', 'FL A.png'),
(54, '604', '000000:013d', 'Flim Asia', 'FL A.png'),
(55, '614', '000000:000c', 'Green Channel', 'GREEN Channel.png'),
(56, '604', '000000:01a1', 'G-Square', 'GSQ.png'),
(57, '604', '000000:0147', 'Hallmark', 'HALL.png'),
(58, '604', '000000:007b', 'HBO', 'HBO.png'),
(59, '604', '000000:013f', 'HBO', 'HBO.png'),
(60, '604', '000000:033a', 'HBO Family', 'HBOF.png'),
(61, '604', '000000:033b', 'HBO Hits', 'HBOH.png'),
(62, '604', '000000:0339', 'HBO Signature', 'HBOS.png'),
(63, '604', '000000:01a0', 'Hay Ha', 'H-HA.png'),
(64, '604', '000000:00d6', 'History Channel', 'HIST.png'),
(65, '604', '000000:019b', 'InsidE', 'insE.png'),
(66, '604', '000000:0209', 'T Channel', 'LTNG.png'),
(67, '604', '000000:0208', 'Ma jung', 'MA.png'),
(68, '604', '000000:0140', 'MAX', 'MAX.png'),
(69, '604', '000000:0266', 'MCOT 1', 'MCT1.png'),
(70, '604', '000000:0267', 'MCOT 2', 'MCT2.png'),
(71, '604', '000000:0142', 'MGM', 'MGM.png'),
(72, '614', '000000:0004', 'Modern 9 TV', 'Modern9 TV.png'),
(73, '604', '000000:0396', 'Money Channel', 'MONY.png'),
(74, '604', '000000:013e', 'Movie Hit', 'MOVH.png'),
(75, '604', '000000:020b', 'MTV', 'MTV.png'),
(76, '614', '000000:00d5', 'Music Lifestyle', 'Music Lifestyle.png'),
(77, '604', '000000:007a', 'Movie Hits', 'MV_HIT.png'),
(78, '614', '000000:025b', 'MV5', 'MV_MV5.png'),
(79, '614', '000000:025e', 'OK TV', 'MVTV_My TV.png'),
(80, '604', '000000:0073', 'NBT', 'NBT.png'),
(81, '614', '000000:0005', 'NBT-DTV : ', 'NBT.png'),
(82, '614', '000000:00d4', 'Next Step Television', 'Next Step Television.png'),
(83, '614', '000000:00d8', 'NAT GEO Wild', 'NGAV.png'),
(84, '604', '000000:00d7', 'National Geographic Channel', 'NGC.png'),
(85, '604', '000000:0265', 'NHK', 'NHK.png'),
(86, '604', '000000:00e5', 'Nick', 'NICK.png'),
(87, '614', '000000:000f', 'Parliament TV', 'Parliament TV.png'),
(88, '604', '000000:0263', 'Phoenix info News', 'PHOX.png'),
(89, '604', '000000:033f', 'True Preview', 'PREV.png'),
(90, '604', '000000:00ff', 'RIVR', 'RATV.png'),
(91, '604', '000000:0341', 'Royal TV', 'RATV.png'),
(92, '604', '000000:00db', 'Reality', 'REAL.png'),
(93, '614', '000000:000b', 'Reality Panda', 'REAL.png'),
(94, '604', '000000:0077', 'RS09', 'RS09.png'),
(95, '604', '000000:0268', 'RS100', 'RS09.png'),
(96, '604', '000000:032c', 'RS142', 'RS09.png'),
(97, '604', '000000:00dc', 'RS24', 'RS09.png'),
(98, '604', '000000:00dd', 'RS25', 'RS09.png'),
(99, '604', '000000:00de', 'RS26', 'RS09.png'),
(100, '604', '000000:00df', 'RS27', 'RS09.png'),
(101, '604', '000000:00e0', 'RS28', 'RS09.png'),
(102, '604', '000000:00e1', 'RS29', 'RS09.png'),
(103, '604', '000000:00e2', 'RS30', 'RS09.png'),
(104, '604', '000000:0138', 'RS36', 'RS09.png'),
(105, '604', '000000:0139', 'RS37', 'RS09.png'),
(106, '604', '000000:013a', 'RS38', 'RS09.png'),
(107, '604', '000000:013b', 'RS39', 'RS09.png'),
(108, '604', '000000:013c', 'RS40', 'RS09.png'),
(109, '604', '000000:0144', 'RS48', 'RS09.png'),
(110, '604', '000000:0145', 'RS49', 'RS09.png'),
(111, '604', '000000:0146', 'RS50', 'RS09.png'),
(112, '614', '000000:00d3', 'Samrujlok', 'Samrujlok.png'),
(113, '604', '000000:0078', 'Shopping Channel', 'SHOP.png'),
(114, '614', '000000:0009', 'Siam Sport Channel', 'Siam Sport Channel.png'),
(115, '614', '000000:025d', 'Sabaidee TV', 'Smile of A Child.png'),
(116, '604', '000000:00e3', 'Spark', 'SPRK.png'),
(117, '604', '000000:026f', 'Star Sports', 'SPRT.png'),
(118, '604', '000000:019d', 'Series', 'SRES.png'),
(119, '604', '000000:0141', 'Star Movie', 'STMV.png'),
(120, '604', '000000:014a', 'Star World', 'SWLD.png'),
(121, '604', '000000:0340', 'TATV', 'TATV.png'),
(122, '604', '000000:00e4', 'TCCN', 'TCCN.png'),
(123, '604', '000000:0143', 'TCM', 'TCM.png'),
(124, '614', '000000:0001', 'Thai TV 3', 'Thai TV3.png'),
(125, '604', '000000:0207', 'True Music', 'TMUS.png'),
(126, '604', '000000:0076', 'TNN 2', 'TNN.png'),
(127, '604', '000000:0075', 'TNN 24', 'TNN2.png'),
(128, '604', '000000:0074', 'TPBS', 'TPBS.png'),
(129, '614', '000000:0006', 'TPBS-DTV : ', 'TPBS.png'),
(130, '604', '000000:02d6', 'Club A', 'TS A.png'),
(131, '604', '000000:02d5', 'Club C', 'TS C.png'),
(132, '604', '000000:02d4', 'Club L', 'TS L.png'),
(133, '604', '000000:02d3', 'Club M', 'TS M.png'),
(134, '604', '000000:02d1', 'True Sport Extra 1', 'TSE1.png'),
(135, '604', '000000:02d2', 'True Sport Extra 2', 'TSE2.png'),
(136, '604', '000000:0269', 'Sport 1', 'TSP1.png'),
(137, '604', '000000:026a', 'Sport 2', 'TSP2.png'),
(138, '604', '000000:026b', 'Sport 3', 'TSP3.png'),
(139, '604', '000000:026c', 'Sport 4', 'TSP4.png'),
(140, '604', '000000:026d', 'Sport 5', 'TSP5.png'),
(141, '604', '000000:0271', 'T Sports', 'TSPT.png'),
(142, '614', '000000:0002', 'TV 5', 'TV 5.png'),
(143, '614', '000000:0003', 'TV 7', 'TV 7.png'),
(144, '604', '000000:032d', 'TV5', 'TV5.png'),
(145, '604', '000000:032b', 'TVB', 'TVB.png'),
(146, '614', '000000:025a', 'World Series Channel', 'TVCI.png'),
(147, '614', '000000:025f', 'Variety', 'Variety.png'),
(148, '604', '000000:019c', 'X-Zyte', 'XZYT.png'),
(149, '614', '000000:000d', 'Acts Channel', 'RS09.png'),
(150, '604', '000000:0270', 'All Sports Network', 'RS09.png'),
(151, '604', '000000:00fc', 'ALT', 'RS09.png'),
(152, '614', '000000:00d9', 'Australia Network', 'RS09.png'),
(153, '604', '000000:0102', 'Cool', 'RS09.png'),
(154, '604', '000000:00fd', 'DANC', 'RS09.png'),
(155, '604', '000000:00fe', 'Euro', 'RS09.png'),
(156, '614', '000000:0008', 'Farm Channel', 'RS09.png'),
(157, '614', '000000:00d7', 'FOX Crime', 'RS09.png'),
(158, '604', '000000:0101', 'GET', 'RS09.png'),
(159, '604', '000000:0103', 'GWV', 'RS09.png'),
(160, '604', '000000:00fb', 'Hott', 'RS09.png'),
(161, '604', '000000:0100', 'METR', 'RS09.png'),
(162, '614', '000000:0260', 'Mix', 'RS09.png'),
(163, '614', '000000:0259', 'MJ Channel', 'RS09.png'),
(164, '604', '000000:00da', 'NGAV 2 Series', 'RS09.png'),
(165, '614', '000000:00d6', 'Real Metro', 'RS09.png'),
(166, '604', '000000:0107', 'SPT', 'RS09.png'),
(167, '614', '000000:000a', 'TV Pool', 'RS09.png'),
(168, '614', '000000:025c', 'You Channel', 'RS09.png');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `cusid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cus_uid` int(11) DEFAULT NULL,
  `cususername` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuspass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cusexternal_command` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cusname` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `custel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cusemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cusdetail` text COLLATE utf8_unicode_ci,
  `cusupdate` datetime DEFAULT NULL,
  `cus_msgstatus` int(11) DEFAULT NULL,
  `cusautodisable` int(11) DEFAULT NULL,
  `cusstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`cusid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- dump ตาราง `customers`
--


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `license`
--

CREATE TABLE IF NOT EXISTS `license` (
  `lcid` int(11) DEFAULT NULL,
  `licenseid` varchar(2048) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- dump ตาราง `license`
--

INSERT INTO `license` (`lcid`, `licenseid`) VALUES
(1, 'i5n5l4m4j294v5o5w5f2r4i5s4n4b384j4e594t52464l4v5p3i4e484v5b2x2q2w2q204242314u2d4p324j2v2w2y264f4f484w2b4a4y253t2z2b45484r3f474w5p3k2k2d2d4t2d484x2y2c4a4u25494d4b43403x2a46424e4m5y2c4y3f484y2u2c46424a4d4s2a4a4p3u49464r36313q2v2v2n4l4x244s294m4e44313i3b226r5l5f2c474b4t22354b4h5l2m594r2843464y2x2u2142423v2v2n23434c47403a444m5z2w2d4s2s336q584i2o3t2e2');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `msg_cus`
--

CREATE TABLE IF NOT EXISTS `msg_cus` (
  `mscusid` int(11) NOT NULL AUTO_INCREMENT,
  `mscus_cusid` int(11) NOT NULL,
  `mscusemail` varchar(128) NOT NULL,
  `mscussubject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mscusdetail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mscustype` int(11) NOT NULL,
  `mscusstatus` int(11) NOT NULL,
  `mscusdate` datetime NOT NULL,
  PRIMARY KEY (`mscusid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- dump ตาราง `msg_cus`
--


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `stid` int(11) NOT NULL AUTO_INCREMENT,
  `stgid` int(255) DEFAULT NULL,
  `stname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- dump ตาราง `status`
--

INSERT INTO `status` (`stid`, `stgid`, `stname`) VALUES
(1, 1, 'ใช้งาน'),
(2, 1, 'ตัด');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `usedate`
--

CREATE TABLE IF NOT EXISTS `usedate` (
  `udid` int(11) NOT NULL AUTO_INCREMENT,
  `ud_uid` int(11) DEFAULT NULL,
  `ud_cusid` int(11) DEFAULT NULL,
  `udday` int(11) DEFAULT NULL,
  `udsdate` date DEFAULT NULL,
  `udedate` date DEFAULT NULL,
  `udprice` float NOT NULL,
  `udupdate` datetime DEFAULT NULL,
  `udindex` int(11) NOT NULL,
  `udstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`udid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- dump ตาราง `usedate`
--


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ugid` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uusername` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upass` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uupdate` datetime DEFAULT NULL,
  `usvname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usvport` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ucccamport` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ucccamuser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ucccampass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ulimit_cus` int(11) NOT NULL,
  `udefaultccccam_user_command` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `udefault_cccam_start` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `udefault_cccam_file` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ubasic_cccam_server` text COLLATE utf8_unicode_ci NOT NULL,
  `uemailpass` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uemail_head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uemail_message` text COLLATE utf8_unicode_ci,
  `usms` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utime_disable` int(11) NOT NULL,
  `ups_server_config` int(11) DEFAULT NULL,
  `ups_add_cus` int(11) DEFAULT NULL,
  `ups_edit_cus` int(11) DEFAULT NULL,
  `ups_del_cus` int(11) DEFAULT NULL,
  `ups_add_day` int(11) DEFAULT NULL,
  `ups_del_day` int(11) DEFAULT NULL,
  `ups_ban` int(11) DEFAULT NULL,
  `exf1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exf2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exf3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ustatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=69 ;

--
-- dump ตาราง `users`
--

INSERT INTO `users` (`uid`, `ugid`, `uname`, `utel`, `uemail`, `uusername`, `upass`, `uupdate`, `usvname`, `usvport`, `ucccamport`, `ucccamuser`, `ucccampass`, `ulimit_cus`, `udefaultccccam_user_command`, `udefault_cccam_start`, `udefault_cccam_file`, `ubasic_cccam_server`, `uemailpass`, `uemail_head`, `uemail_message`, `usms`, `utime_disable`, `ups_server_config`, `ups_add_cus`, `ups_edit_cus`, `ups_del_cus`, `ups_add_day`, `ups_del_day`, `ups_ban`, `exf1`, `exf2`, `exf3`, `ustatus`) VALUES
(1, 1, 'คุณxxx', '0800123456', 'cccam.webmin@gmail.com', 'admin', 'admin', '2010-05-29 21:03:45', 'myserver.dyndns.biz', '40001', '8089', 'root', '1111', 200, '1 0 1 {0:0:1}', 'CCcam.x86 -C', '/var/etc/CCcam.cfg', 'N: 127.0.0.1 12000 user01 1111  01 02 03 04 05 06 07 08 09 10 11 12 13 14\r\n\r\n\r\nSERVER LISTEN PORT : 40001\r\nSHOW TIMING : yes\r\n\r\nALLOW TELNETINFO: yes\r\nALLOW WEBINFO: yes\r\n\r\nWEBINFO USERNAME : root\r\nWEBINFO PASSWORD : 1111\r\n\r\nTELNETINFO USERNAME : root\r\nTELNETINFO PASSWORD : 1111\r\n\r\nTELNETINFO LISTEN PORT : 40002\r\nWEBINFO LISTEN PORT : 8089\r\n\r\nNEWCAMD CONF : yes\r\nDISABLE EMM : no\r\nEXTRA EMM LEVEL : yes', '', 'แจ้ง ครบชำระค่าบริการ', 'ค่าบริการของท่าน 1000 บาท\r\nรบกวนชำระที่ ธนาคารไทยพานิชย์\r\nเลขที่บัญชี 123456789101', 'ค่าบริการทีวี\r\nจำนวน 1000บ.\r\nธ.ไทยพานิชย์ 1234567891\r\nขอบคุณครับ', 21, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `ugid` int(11) NOT NULL AUTO_INCREMENT,
  `ugname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ugstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`ugid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- dump ตาราง `user_groups`
--

INSERT INTO `user_groups` (`ugid`, `ugname`, `ugstatus`) VALUES
(1, 'Admin', 1),
(2, 'Dealer', 1),
(3, 'User', 1),
(4, 'Customer', 1);
