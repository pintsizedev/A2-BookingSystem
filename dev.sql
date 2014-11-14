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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-16 17:10:23
