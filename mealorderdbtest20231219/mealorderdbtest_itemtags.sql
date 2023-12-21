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
-- Table structure for table `itemtags`
--

DROP TABLE IF EXISTS `itemtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemtags` (
  `itemId` int NOT NULL,
  `tagId` int NOT NULL,
  PRIMARY KEY (`itemId`,`tagId`),
  UNIQUE KEY `itemtags_tagId_itemId_unique` (`itemId`,`tagId`),
  KEY `tagId` (`tagId`),
  CONSTRAINT `itemtags_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `menuitems` (`itemId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `itemtags_ibfk_2` FOREIGN KEY (`tagId`) REFERENCES `tags` (`tagId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemtags`
--

LOCK TABLES `itemtags` WRITE;
/*!40000 ALTER TABLE `itemtags` DISABLE KEYS */;
INSERT INTO `itemtags` VALUES (1,3),(13,5),(24,7),(25,7),(26,7),(27,7),(28,7),(29,7),(30,7),(31,7),(32,7),(33,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),(12,8),(24,8),(25,8),(26,8),(27,8),(28,8),(29,8),(30,8),(31,8),(32,8),(33,8),(24,9),(25,9),(26,9),(27,9),(28,9),(29,9),(30,9),(31,9),(32,9),(33,9),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),(31,10),(32,10),(33,10),(23,11),(30,11),(22,12),(23,12),(24,12),(31,12),(33,12),(24,13),(31,13),(33,13),(14,14),(15,14);
/*!40000 ALTER TABLE `itemtags` ENABLE KEYS */;
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
