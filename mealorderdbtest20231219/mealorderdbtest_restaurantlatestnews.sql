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
-- Table structure for table `restaurantlatestnews`
--

DROP TABLE IF EXISTS `restaurantlatestnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurantlatestnews` (
  `newsId` int NOT NULL AUTO_INCREMENT,
  `restaurantId` int DEFAULT NULL,
  `newsContent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `releaseTime` datetime NOT NULL,
  PRIMARY KEY (`newsId`),
  KEY `restaurantId` (`restaurantId`),
  CONSTRAINT `restaurantlatestnews_ibfk_1` FOREIGN KEY (`restaurantId`) REFERENCES `restaurants` (`restaurantId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantlatestnews`
--

LOCK TABLES `restaurantlatestnews` WRITE;
/*!40000 ALTER TABLE `restaurantlatestnews` DISABLE KEYS */;
INSERT INTO `restaurantlatestnews` VALUES (1,1,'元記古早味新菜色上市','2023-07-15 10:00:00'),(2,1,'特色湯品限量供應','2023-09-20 11:30:00'),(3,2,'快餐街角新品嚴選食材','2023-08-05 09:45:00'),(4,3,'聖誕節特別預購開跑！立即預訂獨家甜點！','2023-12-19 09:20:00'),(5,4,'養生食盒新菜單發表','2023-06-30 12:00:00'),(6,5,'一系列新鮮有機蔬菜！等著您來預購！','2023-12-19 10:20:00'),(7,6,'特別推出幸福可可手作的精美巧克力禮盒！讓您的聖誕更加美好！','2023-12-19 10:20:00');
/*!40000 ALTER TABLE `restaurantlatestnews` ENABLE KEYS */;
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
