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
-- Table structure for table `consumers`
--

DROP TABLE IF EXISTS `consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumers` (
  `consumerId` int NOT NULL AUTO_INCREMENT,
  `credentialId` int DEFAULT NULL,
  `displayName` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobTitle` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumerImage` longblob,
  `consumerFactoryLocation` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumerPhone` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumerEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customizationNote` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`consumerId`),
  KEY `credentialId` (`credentialId`),
  CONSTRAINT `consumers_ibfk_1` FOREIGN KEY (`credentialId`) REFERENCES `usercredentials` (`credentialId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumers`
--

LOCK TABLES `consumers` WRITE;
/*!40000 ALTER TABLE `consumers` DISABLE KEYS */;
INSERT INTO `consumers` VALUES (1,5,'張明銘','生產部門','製程工程師',NULL,'晶圓二廠','0985644852','zhang@tsmc.com',NULL),(2,6,'王玲婷','研發部門','研發工程師',NULL,'晶圓二廠','0985618359','wang@tsmc.com',NULL),(3,7,'林威雯','行銷部門','市場專員',NULL,'晶圓二廠','0922583647','lin@tsmc.com',NULL),(4,8,'陳思文','資訊部門','系統分析師',NULL,'晶圓二廠','0952844691','chen@tsmc.com',NULL);
/*!40000 ALTER TABLE `consumers` ENABLE KEYS */;
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
