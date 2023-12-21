-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: mealorderdbtest
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `restaurantId` int NOT NULL AUTO_INCREMENT,
  `ownerId` int DEFAULT NULL,
  `restaurantName` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurantImage` longblob,
  `factoryArea` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `factoryLocation` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurantLocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurantPhone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurantMail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isOpening` tinyint(1) NOT NULL DEFAULT '1',
  `serviceMethod` enum('外帶','內用','外帶內用') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isorderAvailable` tinyint(1) NOT NULL DEFAULT '1',
  `istemporaryRestaurant` tinyint(1) NOT NULL DEFAULT '0',
  `stationStartDate` date DEFAULT NULL,
  `stationEndDate` date DEFAULT NULL,
  `prepareTime` int NOT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`restaurantId`),
  UNIQUE KEY `restaurantName` (`restaurantName`),
  KEY `ownerId` (`ownerId`),
  CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`ownerId`) REFERENCES `owners` (`ownerId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,1,'元記古早味',NULL,'新竹','晶圓二廠','晶圓二廠 S1 櫃','035635678','s1@tsmc.com',1,'外帶內用',1,0,'2023-01-01','2024-12-31',20,NULL),(2,2,'快餐街角',NULL,'新竹','晶圓二廠','晶圓二廠 S2 櫃','035635682','s2@tsmc.com',1,'外帶內用',1,0,'2023-01-01','2024-12-31',20,NULL),(3,3,'蘿拉甜點鋪',NULL,'新竹','晶圓二廠','晶圓二廠 T1 櫃','035635689','t1@tsmc.com',1,'外帶內用',1,1,'2023-12-22','2024-12-29',20,NULL),(4,4,'養生食盒',NULL,'新竹','晶圓二廠','晶圓二廠 S3 櫃','035635625','s3@tsmc.com',1,'外帶內用',1,0,'2023-01-01','2024-12-31',20,NULL),(5,5,'有機田園市集',NULL,'新竹','晶圓二廠','晶圓二廠 T2 櫃','035636758','t2@tsmc.com',1,'外帶內用',1,1,'2023-12-22','2024-12-29',20,NULL),(6,6,'幸福可可手作',NULL,'新竹','晶圓二廠','晶圓二廠 T3 櫃','035635275','t3@tsmc.com',1,'外帶內用',1,1,'2023-12-22','2024-12-29',20,NULL);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 16:15:44
