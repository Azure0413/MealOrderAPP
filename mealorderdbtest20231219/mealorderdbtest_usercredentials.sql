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
-- Table structure for table `usercredentials`
--

DROP TABLE IF EXISTS `usercredentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercredentials` (
  `credentialId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashedPassword` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userRole` tinyint(1) NOT NULL,
  PRIMARY KEY (`credentialId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercredentials`
--

LOCK TABLES `usercredentials` WRITE;
/*!40000 ALTER TABLE `usercredentials` DISABLE KEYS */;
INSERT INTO `usercredentials` VALUES (1,'王文明','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',1),(2,'林美玲','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',1),(3,'張雯雯','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',1),(4,'陳志明','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',1),(5,'莊志文','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',1),(6,'呂宜婷','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',1),(7,'張明銘','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',0),(8,'王玲婷','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',0),(9,'林威雯','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',0),(10,'陳思文','$2b$12$ukVKMbVUmZZKkQNo4YWtSeSDxIJkPEi3tLc5qgy98pJaxsHBC2PBy',0);
/*!40000 ALTER TABLE `usercredentials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 16:15:45
