-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dit
--

CREATE DATABASE IF NOT EXISTS dit;
USE dit;

--
-- Definition of table `fos`
--

DROP TABLE IF EXISTS `fos`;
CREATE TABLE `fos` (
  `tableno` int(10) unsigned NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fos`
--

/*!40000 ALTER TABLE `fos` DISABLE KEYS */;
INSERT INTO `fos` (`tableno`,`itemname`,`qty`,`time`,`total`) VALUES 
 (50,'Lemon',3,3,824),
 (50,'BlueBerry',4,3,824),
 (50,'ColdCoffee',4,3,824),
 (50,'HamBurger',6,5,824),
 (50,'Lemon',3,3,824),
 (50,'BlueBerry',4,3,824),
 (50,'ColdCoffee',4,3,824),
 (50,'HamBurger',6,5,824),
 (45,'Lemon',3,3,90),
 (45,'Lemon',3,3,90),
 (45,'Lemon',3,3,90),
 (90,'Lemon',1,3,30),
 (90,'Lemon',1,3,30),
 (87,'ColdCoffee',50,3,1750),
 (1,'Lemon',2,3,716),
 (1,'HotCoffee',7,3,716),
 (1,'GreenTea',8,3,716),
 (5,'Lemon',2,3,801.6),
 (5,'GreenTea',3,3,801.6),
 (5,'FullCheesePizza',3,5,801.6),
 (4,'Lemon',1,3,120),
 (4,'HotCoffee',2,3,120),
 (4,'Lemon',1,3,120),
 (4,'HotCoffee',2,3,120),
 (5,'Lemon',3,3,315),
 (5,'HotCoffee',5,3,315);
/*!40000 ALTER TABLE `fos` ENABLE KEYS */;


--
-- Definition of table `foschefo`
--

DROP TABLE IF EXISTS `foschefo`;
CREATE TABLE `foschefo` (
  `username` varchar(45) NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `datetime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foschefo`
--

/*!40000 ALTER TABLE `foschefo` DISABLE KEYS */;
INSERT INTO `foschefo` (`username`,`itemname`,`qty`,`datetime`) VALUES 
 ('akki','Lemon',3,'2015-04-18 12:05:50'),
 ('akki','GreenTea',4,'2015-04-18 12:05:50'),
 ('akki','Lemon',2,'2015-04-18 18:39:57'),
 ('akki','Lemon',2,'2015-04-18 18:41:25'),
 ('akki','Lemon',2,'2015-04-18 18:42:25'),
 ('akki','Lemon',2,'2015-04-18 18:44:26'),
 ('maahi786','Apple',2,'2015-04-23 22:21:43'),
 ('maahi786','HotCoffee',1,'2015-04-23 22:21:43'),
 ('maahi786','Apple',1,'2015-04-24 10:58:09');
/*!40000 ALTER TABLE `foschefo` ENABLE KEYS */;


--
-- Definition of table `fosemp`
--

DROP TABLE IF EXISTS `fosemp`;
CREATE TABLE `fosemp` (
  `empid` varchar(45) NOT NULL,
  `empname` varchar(45) NOT NULL,
  `empgen` varchar(45) NOT NULL,
  `empdesg` varchar(45) NOT NULL,
  `empsal` double NOT NULL,
  `empmo` double NOT NULL,
  `empemail` varchar(45) NOT NULL,
  `empadrs` varchar(145) NOT NULL,
  PRIMARY KEY  (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fosemp`
--

/*!40000 ALTER TABLE `fosemp` DISABLE KEYS */;
INSERT INTO `fosemp` (`empid`,`empname`,`empgen`,`empdesg`,`empsal`,`empmo`,`empemail`,`empadrs`) VALUES 
 ('11hdh','maahi','male','student',10000,9191919191,'maahie@ex.com','Near Char bhuja maruti work shop\r\nladnun road Sujangarh'),
 ('11it0011','rajiv','male','student',20000,870966662,'akshay@gmail.com','bytutj6u7fn');
/*!40000 ALTER TABLE `fosemp` ENABLE KEYS */;


--
-- Definition of table `fosms`
--

DROP TABLE IF EXISTS `fosms`;
CREATE TABLE `fosms` (
  `rawm` varchar(45) NOT NULL,
  `rqty` double NOT NULL,
  `rprice` double NOT NULL,
  `rused` double NOT NULL default '0',
  PRIMARY KEY  (`rawm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fosms`
--

/*!40000 ALTER TABLE `fosms` DISABLE KEYS */;
INSERT INTO `fosms` (`rawm`,`rqty`,`rprice`,`rused`) VALUES 
 ('bread',50,100,0),
 ('chise',10,200,0),
 ('rajma',88,55,12);
/*!40000 ALTER TABLE `fosms` ENABLE KEYS */;


--
-- Definition of table `fostrns`
--

DROP TABLE IF EXISTS `fostrns`;
CREATE TABLE `fostrns` (
  `trnsid` int(10) unsigned NOT NULL,
  `credit` double NOT NULL,
  `debit` double NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY  (`trnsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fostrns`
--

/*!40000 ALTER TABLE `fostrns` DISABLE KEYS */;
INSERT INTO `fostrns` (`trnsid`,`credit`,`debit`,`balance`) VALUES 
 (3,6286,0,6286),
 (4,0,2000,4286),
 (5,0,0,4286),
 (6,200,0,4486),
 (7,801.6,0,5287.6),
 (8,120,0,5407.6),
 (9,120,0,5527.6),
 (10,315,0,5842.6),
 (11,290,0,6132.6),
 (12,140,0,6272.6),
 (13,140,0,6412.6),
 (14,145,0,6557.6),
 (15,200,0,6757.6),
 (16,300,0,7057.6),
 (17,50,0,7107.6);
/*!40000 ALTER TABLE `fostrns` ENABLE KEYS */;


--
-- Definition of table `fosusers`
--

DROP TABLE IF EXISTS `fosusers`;
CREATE TABLE `fosusers` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` double NOT NULL,
  `address` varchar(145) NOT NULL,
  `securityq` varchar(85) NOT NULL,
  `answer` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fosusers`
--

/*!40000 ALTER TABLE `fosusers` DISABLE KEYS */;
INSERT INTO `fosusers` (`username`,`password`,`firstname`,`lastname`,`email`,`mobile`,`address`,`securityq`,`answer`,`gender`,`designation`,`city`) VALUES 
 ('akki','ak123','akshay','gupta','akshay@gmail.com',8191079122,'40/41 haridwar','What is your pet name?','gupta','male','user','Dehradun'),
 ('anchal2','way2','aanchal','tomar','maahi_72@yahoo.com',9191919191,'41/40 haridwar road dehradun','What is your college name?','dit','male','user','Dehradun'),
 ('deepi','way2','deepankar','parashar','maahi_72@yahoo.com',9191919191,'Near Char bhuja maruti work shop\r\nladnun road Sujangarh','What is your friend\'s nickname?','shsggsgs','male','user','Delhi'),
 ('maahi786','way2','maahi','bhama','maahi_62@yahoo.com',9166683083,'Near Char bhuja maruti work shop\r\nladnun road Sujangarh hha a','What is your pet name?','mamaama','male','manager','Dehradun');
/*!40000 ALTER TABLE `fosusers` ENABLE KEYS */;


--
-- Definition of table `fosweb`
--

DROP TABLE IF EXISTS `fosweb`;
CREATE TABLE `fosweb` (
  `username` varchar(45) NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `total` double NOT NULL,
  `datetime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fosweb`
--

/*!40000 ALTER TABLE `fosweb` DISABLE KEYS */;
INSERT INTO `fosweb` (`username`,`itemname`,`qty`,`total`,`datetime`) VALUES 
 ('akki','Lemon',3,350,'2015-04-18 12:05:50'),
 ('akki','GreenTea',4,350,'2015-04-18 12:05:50'),
 ('akki','Lemon',2,60,'2015-04-18 18:39:57'),
 ('akki','Lemon',2,60,'2015-04-18 18:41:25'),
 ('akki','Lemon',2,60,'2015-04-18 18:42:25'),
 ('akki','Lemon',2,60,'2015-04-18 18:44:26'),
 ('maahi786','Apple',2,145,'2015-04-23 22:21:43'),
 ('maahi786','HotCoffee',1,145,'2015-04-23 22:21:43'),
 ('anchal2','Apple',1,200,'2015-04-24 09:26:51'),
 ('anchal2','ColdCoffee',3,200,'2015-04-24 09:26:51'),
 ('maahi786','Apple',1,50,'2015-04-24 10:58:09');
/*!40000 ALTER TABLE `fosweb` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
