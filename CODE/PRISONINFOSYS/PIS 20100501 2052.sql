-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema pis
--

CREATE DATABASE IF NOT EXISTS pis;
USE pis;

--
-- Definition of table `baildetails`
--

DROP TABLE IF EXISTS `baildetails`;
CREATE TABLE `baildetails` (
  `prisonid` int(11) default NULL,
  `name` varchar(20) default NULL,
  `bailid` int(11) default NULL,
  `exitdate` varchar(20) default NULL,
  `reportdate` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baildetails`
--

/*!40000 ALTER TABLE `baildetails` DISABLE KEYS */;
INSERT INTO `baildetails` (`prisonid`,`name`,`bailid`,`exitdate`,`reportdate`) VALUES 
 (101,'kranthi',8000,'1-5-2010 ','1-5-2010 '),
 (105,'raj',8001,'1-6-2010 ','1-6-2010 '),
 (102,'Srinivas',8002,'14-5-2010 ','28-5-2010 '),
 (103,'Rakesh',8003,'1-5-2010 ','31-5-2010 ');
/*!40000 ALTER TABLE `baildetails` ENABLE KEYS */;


--
-- Definition of table `disposaldetails`
--

DROP TABLE IF EXISTS `disposaldetails`;
CREATE TABLE `disposaldetails` (
  `prisonid` int(11) default NULL,
  `name` varchar(20) default NULL,
  `prisonerstatus` varchar(200) default NULL,
  `entrydate` varchar(20) default NULL,
  `exitdate` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disposaldetails`
--

/*!40000 ALTER TABLE `disposaldetails` DISABLE KEYS */;
INSERT INTO `disposaldetails` (`prisonid`,`name`,`prisonerstatus`,`entrydate`,`exitdate`) VALUES 
 (101,'kranthi','IN','1-5-2010 ','15-5-2010 '),
 (100,'srikanth','OUT','3-5-2010 ','27-5-2010 ');
/*!40000 ALTER TABLE `disposaldetails` ENABLE KEYS */;


--
-- Definition of table `jailorsreg`
--

DROP TABLE IF EXISTS `jailorsreg`;
CREATE TABLE `jailorsreg` (
  `jailorid` int(11) default NULL,
  `jailorname` varchar(20) default NULL,
  `allotedjailname` varchar(20) default NULL,
  `gender` varchar(20) default NULL,
  `address` varchar(200) default NULL,
  `phoneno` varchar(20) default NULL,
  `emailid` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `remarks` varchar(200) default NULL,
  `date` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jailorsreg`
--

/*!40000 ALTER TABLE `jailorsreg` DISABLE KEYS */;
INSERT INTO `jailorsreg` (`jailorid`,`jailorname`,`allotedjailname`,`gender`,`address`,`phoneno`,`emailid`,`password`,`remarks`,`date`) VALUES 
 (1000,'Arvind','Warangal','male','KAREEMABAD			','9876543212','arvind@gmail.com','arvind','Excellent','30-4-2010 '),
 (1001,'Satish','Khammam','male','KHAMMAM			','9876543212','satish@gmail.com','satish','Very Good','30-4-2010 '),
 (1002,'Naveen','Kurnool','male','KURNOOL			','9876543212','naveen@gmail.com','naveen','GOOD','30-4-2010 '),
 (1003,'Sunil','Nizamabad','male','Nizamabad			','9848357334','sunil@gmail.com','sunil','Very Nice			    ','1-5-2010 ');
/*!40000 ALTER TABLE `jailorsreg` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `userid` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `role` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`userid`,`password`,`role`) VALUES 
 ('admin','admin','administrator'),
 ('venky','venky','administrator'),
 ('1000','arvind','jailor'),
 ('1001','satish','jailor'),
 ('1002','naveen','jailor'),
 ('1003','sunil','jailor');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `medicalreport`
--

DROP TABLE IF EXISTS `medicalreport`;
CREATE TABLE `medicalreport` (
  `prisonid` int(11) default NULL,
  `name` varchar(20) default NULL,
  `medicalstatus` varchar(20) default NULL,
  `reportondate` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalreport`
--

/*!40000 ALTER TABLE `medicalreport` DISABLE KEYS */;
INSERT INTO `medicalreport` (`prisonid`,`name`,`medicalstatus`,`reportondate`) VALUES 
 (101,'kranthi','Clear','1-5-2010 '),
 (103,'Rakesh','Not Clear','1-5-2010 '),
 (105,'raj','Clear','19-5-2010 '),
 (100,'srikanth','Not Clear','22-5-2010 ');
/*!40000 ALTER TABLE `medicalreport` ENABLE KEYS */;


--
-- Definition of table `newjail`
--

DROP TABLE IF EXISTS `newjail`;
CREATE TABLE `newjail` (
  `jailid` int(11) default NULL,
  `jailname` varchar(20) NOT NULL,
  `jaillocation` varchar(20) default NULL,
  `district` varchar(20) default NULL,
  `pincode` int(20) default NULL,
  `phoneno` varchar(20) default NULL,
  `remarks` varchar(200) default NULL,
  `status` varchar(20) default NULL,
  `date` varchar(20) default NULL,
  PRIMARY KEY  (`jailname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newjail`
--

/*!40000 ALTER TABLE `newjail` DISABLE KEYS */;
INSERT INTO `newjail` (`jailid`,`jailname`,`jaillocation`,`district`,`pincode`,`phoneno`,`remarks`,`status`,`date`) VALUES 
 (2001,'Khammam','Khammam','Khammam',500079,'9876543212','Very Good','Accepted','30-4-2010 '),
 (2002,'Kurnool','Kurnool','Kurnool',500087,'9876543212','Very Good','Accepted','30-4-2010 '),
 (2003,'Nizamabad','Nizamabad','Nizamabad',500045,'9703817117','VERY NICE','Accepted','1-5-2010 '),
 (2000,'Warangal','Warangal','Warangal',500078,'9876543212','very Good','Accepted','30-4-2010 ');
/*!40000 ALTER TABLE `newjail` ENABLE KEYS */;


--
-- Definition of table `prisonersreg`
--

DROP TABLE IF EXISTS `prisonersreg`;
CREATE TABLE `prisonersreg` (
  `jailid` int(11) default NULL,
  `prisonid` int(11) default NULL,
  `firstname` varchar(20) NOT NULL default '',
  `lastname` varchar(20) default NULL,
  `dob` varchar(20) default NULL,
  `haircolor` varchar(20) default NULL,
  `eyes` varchar(20) default NULL,
  `gender` varchar(20) default NULL,
  `claims` varchar(20) default NULL,
  `punishmenttype` varchar(200) default NULL,
  `section` varchar(20) default NULL,
  `dateofentry` varchar(20) default NULL,
  `dateofleaving` varchar(20) default NULL,
  `prisonercellno` varchar(20) default NULL,
  PRIMARY KEY  (`firstname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prisonersreg`
--

/*!40000 ALTER TABLE `prisonersreg` DISABLE KEYS */;
INSERT INTO `prisonersreg` (`jailid`,`prisonid`,`firstname`,`lastname`,`dob`,`haircolor`,`eyes`,`gender`,`claims`,`punishmenttype`,`section`,`dateofentry`,`dateofleaving`,`prisonercellno`) VALUES 
 (2000,101,'kranthi','T','28-3-1980 ','Balck','Black','male','Attempt Murder','Life Time','498','30-4-2010 ','1-1-2011 ','5001'),
 (2001,105,'raj','k','1-1-1980 ','brown','blue','male','theft','7 Years imprisonment ,1500Rs','498','1-5-2010 ','1-11-2010 ','5005'),
 (2001,103,'Rakesh','K','1-1-1980 ','Black','brown','male','Human Harassment','7 Years imprisonment ,1500Rs','320','1-5-2010 ','1-1-2017 ','5003'),
 (2000,100,'srikanth','T','14-1-1980 ','Brown','Blue','male','Theft','7 Years imprisonment ,1500Rs','498','30-4-2010 ','30-5-2010 ','5000'),
 (2001,102,'Srinivas','Adda','18-1-1980 ','Black','Blue','male','Cheeting','7 Years imprisonment ,1500Rs','420','14-5-2010 ','31-7-2010 ','5002'),
 (2003,104,'Yadagiri','J','1-1-1982 ','Brown','Black','male','Theft','7 Years imprisonment ,1500Rs','498','1-5-2010 ','1-6-2010 ','5004');
/*!40000 ALTER TABLE `prisonersreg` ENABLE KEYS */;


--
-- Definition of table `punishmentdetails`
--

DROP TABLE IF EXISTS `punishmentdetails`;
CREATE TABLE `punishmentdetails` (
  `prisonid` int(11) default NULL,
  `punishmenttype` varchar(20) default NULL,
  `enddate` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `punishmentdetails`
--

/*!40000 ALTER TABLE `punishmentdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `punishmentdetails` ENABLE KEYS */;


--
-- Definition of table `transferdetails`
--

DROP TABLE IF EXISTS `transferdetails`;
CREATE TABLE `transferdetails` (
  `prisonid` int(11) default NULL,
  `name` varchar(20) default NULL,
  `transferlocation` varchar(20) default NULL,
  `reasonfortransferring` varchar(200) default NULL,
  `startdate` varchar(20) default NULL,
  `enddate` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transferdetails`
--

/*!40000 ALTER TABLE `transferdetails` DISABLE KEYS */;
INSERT INTO `transferdetails` (`prisonid`,`name`,`transferlocation`,`reasonfortransferring`,`startdate`,`enddate`) VALUES 
 (103,'Rakesh','2001','fighting','1-5-2010 ','20-5-2010 ');
/*!40000 ALTER TABLE `transferdetails` ENABLE KEYS */;


--
-- Definition of table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(11) NOT NULL auto_increment,
  `visitorname` varchar(20) default NULL,
  `date` varchar(20) default NULL,
  `intime` varchar(20) default NULL,
  `outtime` varchar(20) default NULL,
  `jailid` int(11) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` (`id`,`visitorname`,`date`,`intime`,`outtime`,`jailid`) VALUES 
 (1,'Commisioner','1-5-2010 ','4:00 PM','6:00 PM',2000),
 (2,'CBI','1-5-2010 ','2:00 PM','3:00 PM',2001);
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;


--
-- Definition of table `workdetails`
--

DROP TABLE IF EXISTS `workdetails`;
CREATE TABLE `workdetails` (
  `prisonid` int(11) default NULL,
  `name` varchar(20) default NULL,
  `worktype` varchar(20) default NULL,
  `workdescription` varchar(200) default NULL,
  `startdate` varchar(20) default NULL,
  `status` varchar(20) default NULL,
  `enddate` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workdetails`
--

/*!40000 ALTER TABLE `workdetails` DISABLE KEYS */;
INSERT INTO `workdetails` (`prisonid`,`name`,`worktype`,`workdescription`,`startdate`,`status`,`enddate`) VALUES 
 (102,'Srinivas','Gardening','Make plants','1-5-2010 ','Pending','1-6-2010 '),
 (100,'srikanth','Carpentry','wood Work','1-5-2010 ','Pending','5-6-2010 '),
 (101,'kranthi','Cooking','Food Items','1-5-2010 ','Accepted','5-6-2010 '),
 (100,'srikanth','Tailering','Cloth Cutting','1-5-2010 ','Pending','11-7-2010 '),
 (105,'raj','Tailering','Cloth Cutting','7-5-2010 ','Pending','31-5-2010 '),
 (102,'Srinivas','Gardening','Plants','1-5-2010 ','Pending','29-5-2010 '),
 (103,'Rakesh','Gardening','Cloth Cutting','1-5-2010 ','Accepted','30-6-2010 ');
/*!40000 ALTER TABLE `workdetails` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
