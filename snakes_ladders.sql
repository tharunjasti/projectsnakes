CREATE DATABASE  IF NOT EXISTS `snakes_ladders` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `snakes_ladders`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: snakes_ladders
-- ------------------------------------------------------
-- Server version	5.5.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES ('red'),('blue'),('green'),('black');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_details`
--

DROP TABLE IF EXISTS `game_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_details` (
  `game_name` varchar(20) NOT NULL,
  `passphrase` varchar(20) DEFAULT NULL,
  `max_players` int(2) DEFAULT NULL,
  `player_name` varchar(20) DEFAULT NULL,
  `count` int(2) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`game_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_details`
--

LOCK TABLES `game_details` WRITE;
/*!40000 ALTER TABLE `game_details` DISABLE KEYS */;
INSERT INTO `game_details` VALUES ('game','kumar',2,'hemanth',2,'red'),('satya','satya',2,'kill',2,'red');
/*!40000 ALTER TABLE `game_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players_details`
--

DROP TABLE IF EXISTS `players_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players_details` (
  `player_name` varchar(20) NOT NULL,
  `game_name` varchar(20) DEFAULT NULL,
  `player_color` varchar(20) DEFAULT NULL,
  `current_position` int(3) DEFAULT NULL,
  `previous_position` int(3) DEFAULT NULL,
  `host` varchar(4) DEFAULT NULL,
  `flag` int(2) DEFAULT '0',
  `orders` int(2) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`player_name`),
  KEY `game_name` (`game_name`),
  CONSTRAINT `players_details_ibfk_1` FOREIGN KEY (`game_name`) REFERENCES `game_details` (`game_name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_details`
--

LOCK TABLES `players_details` WRITE;
/*!40000 ALTER TABLE `players_details` DISABLE KEYS */;
INSERT INTO `players_details` VALUES ('hemanth','game','red',10,0,'1',0,1,0),('hemanth1','game','blue',6,0,'0',1,2,0);
/*!40000 ALTER TABLE `players_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `loname` varchar(20) NOT NULL DEFAULT '',
  `dob` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `secq` varchar(30) DEFAULT NULL,
  `seca` varchar(30) DEFAULT NULL,
  `altemail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`loname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES ('hemanth','kumar','hemanth','1990-01-03','male','hemanthkumarpotnuri@gmail.com','kumar','fjhdsj fdsjk fdsj','q1','dog','kuma@gmail.com'),('hemanthkumar','potnuri','hemanthkumar','2000-01-01','male','hemanthkumarpotnuri@gmail.com','kumar','jdskf h:no:5454','q1','ffdg','kuma@gmail.com'),('nithin','asdfg','nithin','2011-02-20','male','nithinsingamsetti@gmail.com','12345','eefre','q1','hemanth','nithinsingamsett1i@gmail.com'),('rajashekar','shekar','raja143','2004-01-01','male','rajasekhar_cool91@yahoo.com','12345','hyderabad','q1','dog','kuma@gmail.com'),('ravi','shekhar','satya','1991-06-22','male','ravi.satya91@gmail.com','satya','28','q1','Kill','d.ravishekhar@yahoo.com'),('shekar','gvrgvr','shekar','1990-11-15','male','shekar.gvr@gmail.com','msit123','asdasdasd','q1','pandu','saas@gmail.com');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-14 10:18:33
