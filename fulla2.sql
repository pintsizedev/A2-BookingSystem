-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: a2_development
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1

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
-- Table structure for table `boats`
--

DROP TABLE IF EXISTS `boats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boatName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `births` int(11) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startMonday` tinyint(1) DEFAULT NULL,
  `startThursday` tinyint(1) DEFAULT NULL,
  `startFriday` tinyint(1) DEFAULT NULL,
  `startSaturday` tinyint(1) DEFAULT NULL,
  `startSunday` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boats`
--

LOCK TABLES `boats` WRITE;
/*!40000 ALTER TABLE `boats` DISABLE KEYS */;
INSERT INTO `boats` VALUES (1,'Jenny\'s Drum',5,'Narrowbeam',1,0,1,0,0,'2013-01-09 13:29:07','2013-01-09 13:29:07'),(2,'Drummer Girl',5,'Narrowbeam',1,0,1,0,0,'2013-01-12 14:40:21','2013-01-12 14:40:21'),(3,'Gwen\'s Drum',5,'Narrowbeam',1,0,1,0,0,'2013-01-12 14:41:34','2013-01-12 14:41:34'),(4,'Megan\'s Drum',7,'Narrowbeam',1,0,1,0,0,'2013-01-12 14:43:44','2013-01-12 14:43:44'),(5,'Bob\'s Drum',8,'Widebeam',1,0,1,0,0,'2013-01-12 14:44:13','2013-01-12 14:44:13'),(6,'Katie\'s Drum',9,'Narrowbeam',0,0,0,1,0,'2013-01-12 14:44:51','2013-01-12 14:44:51'),(7,'Dan\'s Drum',9,'Narrowbeam',1,0,1,0,0,'2013-01-12 14:54:31','2013-01-12 14:54:31'),(8,'Sara\'s Drum',7,'Narrowbeam',0,1,0,0,1,'2013-01-12 14:56:06','2013-01-12 14:56:06'),(9,'Sam\'s Drum',5,'Narrowbeam',0,0,0,1,0,'2013-01-12 14:59:16','2013-01-12 14:59:16'),(10,'Molly\'s Drum',5,'Narrowbeam',0,0,0,1,0,'2013-01-12 15:02:43','2013-01-12 15:02:43'),(11,'Drummer Boy',7,'Narrowbeam',0,0,0,1,0,'2013-01-12 15:09:46','2013-01-12 15:09:46'),(12,'Helen\'s Drum',8,'Widebeam',0,0,0,1,0,'2013-01-12 15:15:12','2013-01-12 15:15:12'),(13,'Hum Drum',8,'Widebeam',0,0,0,1,0,'2013-01-12 15:23:42','2013-01-12 15:23:42'),(14,'Isla\'s Drum',9,'Narrowbeam',0,0,0,1,0,'2013-01-12 15:25:26','2013-01-12 15:25:26'),(15,'Sophie\'s Drum',9,'Narrowbeam',1,0,1,0,0,'2013-01-12 15:35:39','2013-01-12 15:35:39'),(16,'Rosie\'s Drum',4,'Narrowbeam',0,1,0,0,1,'2013-01-12 15:36:12','2013-01-12 15:36:12'),(17,'Golden Dale',2,'Narrowbeam',0,1,0,0,1,'2013-01-12 15:53:16','2013-01-12 15:53:16'),(18,'Susan\'s Drum',5,'Narrowbeam',0,1,0,0,1,'2013-01-12 16:10:32','2013-01-12 16:10:32'),(19,'Barbara\'s Drum',9,'Narrowbeam',0,1,0,0,1,'2013-01-12 16:15:39','2013-01-12 16:15:39'),(20,'Marley\'s Drum',8,'Widebeam',0,1,0,0,1,'2013-01-12 16:33:46','2013-01-12 16:33:46'),(21,'Fern\'s Drum',5,'Narrowbeam',0,1,0,0,1,'2013-01-12 16:34:22','2013-01-12 16:34:22'),(22,'Drum Beat',8,'Widebeam',1,0,1,0,0,'2013-01-12 16:39:18','2013-01-12 16:39:18');
/*!40000 ALTER TABLE `boats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boat_id` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `numberInParty` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (35,3,'2008-01-04',5,'2013-02-17 17:40:56','2013-02-17 17:40:56'),(36,1,'2013-02-17',5,'2013-02-17 18:37:07','2013-02-17 18:37:07'),(37,19,'2008-02-02',5,'2013-02-18 13:35:30','2013-02-18 13:35:30'),(38,6,'2008-03-02',3,'2013-02-18 14:02:46','2013-02-18 14:02:46'),(39,6,'2008-03-02',3,'2013-02-18 14:09:17','2013-02-18 14:09:17'),(40,6,'2008-03-02',3,'2013-02-18 14:17:12','2013-02-18 14:17:12'),(41,6,'2008-03-02',3,'2013-02-18 14:31:18','2013-02-18 14:31:18'),(42,1,'2013-02-17',2,'2013-02-18 15:59:15','2013-02-18 15:59:15'),(43,1,'2013-02-17',2,'2013-02-18 16:00:17','2013-02-18 16:00:17'),(44,1,'2013-02-17',2,'2013-02-18 16:01:11','2013-02-18 16:01:11'),(45,1,'2013-02-17',2,'2013-02-18 16:03:05','2013-02-18 16:03:05'),(46,1,'2013-02-17',2,'2013-02-18 16:04:01','2013-02-18 16:04:01'),(47,1,'2013-02-17',2,'2013-02-18 16:04:38','2013-02-18 16:04:38'),(48,1,'2013-02-17',2,'2013-02-18 16:05:54','2013-02-18 16:05:54'),(49,1,'2013-02-17',2,'2013-02-18 16:11:36','2013-02-18 16:11:36'),(50,1,'2008-01-01',2,'2013-02-18 16:18:24','2013-02-18 16:18:24'),(51,17,'2008-02-15',2,'2013-02-18 16:19:37','2013-02-18 16:19:37'),(52,19,'2013-02-14',2,'2013-02-18 16:51:56','2013-02-18 16:51:56'),(53,2,'2013-02-14',2,'2013-02-18 16:53:23','2013-02-18 16:53:23'),(54,17,'2013-02-28',2,'2013-02-18 17:01:10','2013-02-18 17:01:10'),(55,1,'2013-02-08',2,'2013-02-18 17:04:19','2013-02-18 17:04:19'),(56,19,'2012-11-04',2,'2013-02-18 17:05:35','2013-02-18 17:05:35'),(57,19,'2012-12-06',2,'2013-02-18 21:53:40','2013-02-18 21:53:40'),(58,19,'2013-01-10',2,'2013-02-18 21:55:40','2013-02-18 21:55:40'),(59,19,'2013-01-17',2,'2013-02-18 22:09:14','2013-02-18 22:09:14'),(60,19,'2013-04-07',2,'2013-02-19 10:52:06','2013-02-19 10:52:06'),(61,19,'2013-04-07',2,'2013-02-19 10:58:56','2013-02-19 10:58:56'),(62,19,'2013-04-07',2,'2013-02-19 11:02:08','2013-02-19 11:02:08'),(63,19,'2013-04-07',2,'2013-02-19 11:02:32','2013-02-19 11:02:32'),(64,19,'2013-04-14',2,'2013-02-19 11:03:58','2013-02-19 11:03:58'),(65,19,'2013-04-14',2,'2013-02-19 11:04:32','2013-02-19 11:04:32'),(66,19,'2013-04-14',2,'2013-02-19 12:19:39','2013-02-19 12:19:39'),(67,19,'2013-05-02',2,'2013-02-19 12:37:23','2013-02-19 12:37:23'),(68,19,'2013-03-10',1,'2013-02-19 12:40:15','2013-02-19 12:40:15'),(69,19,'2013-02-21',1,'2013-02-19 16:39:51','2013-02-19 16:39:51'),(70,19,'2013-02-28',1,'2013-02-19 18:51:10','2013-02-19 18:51:10'),(71,19,'2013-02-28',1,'2013-02-19 18:51:41','2013-02-19 18:51:41'),(72,19,'2013-02-28',1,'2013-02-19 18:51:57','2013-02-19 18:51:57'),(73,1,'2013-04-01',1,'2013-02-19 19:27:57','2013-02-19 19:27:57'),(74,1,'2013-04-01',1,'2013-02-19 19:30:09','2013-02-19 19:30:09'),(75,1,'2013-04-01',1,'2013-02-19 19:35:10','2013-02-19 19:35:10'),(76,1,'2013-04-01',1,'2013-02-19 19:39:59','2013-02-19 19:39:59'),(77,1,'2013-04-01',1,'2013-02-19 19:54:13','2013-02-19 19:54:13'),(78,1,'2013-04-01',1,'2013-02-19 19:59:50','2013-02-19 19:59:50'),(79,1,'2013-04-01',1,'2013-02-19 20:08:54','2013-02-19 20:08:54'),(80,6,'2013-02-23',1,'2013-02-19 20:30:08','2013-02-19 20:30:08'),(81,6,'2013-02-23',1,'2013-02-19 20:31:32','2013-02-19 20:31:32');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `addressLineOne` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressLineTwo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressLineThree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephoneNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (28,35,'Mr','Daniel','Burnley','1994-11-12','7 College Court','Bradley','Keighley','BD20 9EA','01535636201','dan.burnley@gmail.com','2013-02-17 17:41:55','2013-02-17 17:41:55'),(29,35,'Mr','Daniel','Burnley','1994-11-12','7 College Court','Bradley','Keighley','BD20 9EA','01535636201','dan.burnley@gmail.com','2013-02-17 17:42:55','2013-02-17 17:42:55'),(30,35,'Mrs','Edward','Hobbs','1995-08-24',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-17 17:43:15','2013-02-17 17:43:15'),(31,36,'Mr','a','A','2013-02-17','hhu','h','uhu','hu','hu','jij','2013-02-17 18:37:30','2013-02-17 18:37:30'),(32,36,'ad','ada','adada','2013-02-17',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-17 18:37:39','2013-02-17 18:37:39'),(33,59,'Mr','a','a','2013-04-18','a','a','a','A','a','A','2013-02-18 22:09:15','2013-02-18 22:09:15'),(34,60,'Mr','Daniel','Burnley','2013-03-19','A','A','A','A','11111111111','asd','2013-02-19 10:52:06','2013-02-19 10:52:06'),(35,61,'Mr','Daniel','Burnley','2013-03-19','A','A','A','A','11 111 1 11111','asd','2013-02-19 10:58:56','2013-02-19 10:58:56'),(36,62,'Mr','a','a','2013-01-19','1','1','1','1','123 546 999 78','8','2013-02-19 11:02:09','2013-02-19 11:02:09'),(37,63,'Mr','a','a','2013-08-19','1','1','1','1','123 546 999 78','8','2013-02-19 11:02:32','2013-02-19 11:02:32'),(38,64,'Mr','a','a','2013-03-19','a','a','a','a','12345678911','a','2013-02-19 11:03:58','2013-02-19 11:03:58'),(39,65,'Mr','a','a','2013-03-19','a','a','a','a','12345678911','a','2013-02-19 11:04:32','2013-02-19 11:04:32'),(40,66,'Mr','a','a','2013-02-19','a','a','a','a','12345678987','a','2013-02-19 12:19:39','2013-02-19 12:19:39'),(41,67,'Mr','Danie','b','2013-01-19','a','a','a','a','12345678988','a','2013-02-19 12:37:25','2013-02-19 12:37:25'),(42,67,'a','a','a','2013-01-19',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-19 12:38:40','2013-02-19 12:38:40'),(43,68,'Mr','a','a','2013-01-19','a','a','a','a','12345678978','asdas','2013-02-19 12:40:15','2013-02-19 12:40:15'),(44,69,'Mr','Daniel','Burnley','1994-11-12','7 College Court','Bradley','West Yorkshire','BD20 9EA','01535636201','dan.burnley@gmail.com','2013-02-19 16:39:51','2013-02-19 16:39:51'),(45,70,'Mr','Daniel','Burnley','2010-01-18','a','a','a','a','01535636201','dan.burnley@gmail.com','2013-02-19 18:51:10','2013-02-19 18:51:10'),(46,71,'Mr','Daniel','Burnley','2010-01-18','a','a','a','a','01535636201','dan.burnley@gmail.com','2013-02-19 18:51:45','2013-02-19 18:51:45'),(47,72,'Mr','Daniel','Burnley','2010-01-18','a','a','a','a','01535636201','dan.burnley@gmail.com','2013-02-19 18:51:57','2013-02-19 18:51:57'),(48,73,'Mr','a','a','2011-01-17','wwwdwdw','ww','W','weqd','01535636201','dan.burnley@gmail.com','2013-02-19 19:27:57','2013-02-19 19:27:57'),(49,74,'Mr','a','a','2011-01-17','wwwdwdw','ww','W','weqd','01535636201','dan.burnley@gmail.com','2013-02-19 19:30:09','2013-02-19 19:30:09'),(50,75,'Mr','a','a','2011-01-17','wwwdwdw','ww','W','weqd','01535636201','dan.burnley@gmail.com','2013-02-19 19:35:10','2013-02-19 19:35:10'),(51,76,'Mr','a','a','2011-01-17','wwwdwdw','ww','W','weqd','01535636201','dan.burnley@gmail.com','2013-02-19 19:39:59','2013-02-19 19:39:59'),(52,77,'Mr','a','a','2011-01-17','wwwdwdw','ww','W','weqd','01535636201','dan.burnley@gmail.com','2013-02-19 19:54:13','2013-02-19 19:54:13'),(53,78,'Mr','a','a','2011-01-17','wwwdwdw','ww','W','weqd','01535636201','dan.burnley@gmail.com','2013-02-19 19:59:50','2013-02-19 19:59:50'),(54,79,'Mr','a','a','2011-01-17','wwwdwdw','ww','W','weqd','01535636201','dan.burnley@gmail.com','2013-02-19 20:08:58','2013-02-19 20:08:58'),(55,80,'Mr','Smelly','Poo','2009-01-19','poo','po','opopo','popop','01234567898','edward24hobbs@gmail.com','2013-02-19 20:30:10','2013-02-19 20:30:10'),(56,81,'Mr','Smelly','Poo','2009-01-19','poo','po','opopo','popop','01234567898','edward24hobbs@gmail.com','2013-02-19 20:31:32','2013-02-19 20:31:32');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20121107113600'),('20130216174032'),('20130216174049');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-17 11:28:15
