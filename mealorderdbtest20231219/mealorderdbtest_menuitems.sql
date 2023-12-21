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
-- Table structure for table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitems` (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `menuId` int NOT NULL,
  `itemName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemImage` longblob,
  `descriptionText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calories` int DEFAULT NULL,
  `prepareTime` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `isAvailable` tinyint(1) NOT NULL DEFAULT '1',
  `totalQuantity` int NOT NULL DEFAULT '0',
  `soldQuantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `menuitems_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `menus` (`menuId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitems`
--

LOCK TABLES `menuitems` WRITE;
/*!40000 ALTER TABLE `menuitems` DISABLE KEYS */;
INSERT INTO `menuitems` VALUES (1,1,'牛肉麵',NULL,'濃郁香氣的牛肉麵湯底，配上鮮嫩牛肉與彈牙麵條',600,20,120,1,30,0),(2,1,'酸辣湯麵',NULL,'酸酸辣辣，香辣開胃的酸辣湯配上熱騰騰的麵條',550,20,90,1,30,0),(3,1,'肉燥乾麵',NULL,'風味獨特的肉燥醬配上麵條，讓人回味無窮',580,20,60,1,30,0),(4,1,'麻辣乾拌麵',NULL,'麻辣鮮香的乾拌麵，讓您一試愛上',620,20,75,1,30,0),(5,1,'擔仔麵',NULL,'飄香百年，安平港邊的古食風華',580,20,60,1,30,0),(6,1,'控肉飯',NULL,'肉香滷汁濃郁，配上軟綿飯，美味可口',550,20,60,1,30,0),(7,1,'雞肉飯',NULL,'香嫩的雞肉搭配蓮藕，配上白飯，美味爽口',540,20,60,1,30,0),(8,1,'肉燥飯',NULL,'咸香肉燥，配上飯，經典的台式美食',560,20,60,1,30,0),(9,1,'排骨飯',NULL,'醇厚排骨燉製而成，搭配軟糯飯，滿足您的味蕾',620,20,90,1,30,0),(10,1,'三杯雞飯',NULL,'三杯雞香氣撲鼻，搭配米飯，令人垂涎',600,20,90,1,30,0),(11,1,'肉羹湯',NULL,'鮮嫩肉塊搭配濃郁湯汁，讓人胃口大開',300,20,60,1,30,0),(12,1,'蛋花貢丸湯',NULL,'Q彈貢丸搭配清甜高湯，回味無窮',280,20,40,1,30,0),(13,1,'蛤蜊湯',NULL,'新鮮蛤蜊搭配鮮甜湯汁，清爽美味',120,20,70,1,30,0),(14,1,'味噌湯',NULL,'有機豆腐，口感豐富',100,20,40,1,30,0),(15,1,'紅蘿蔔排骨湯',NULL,'有機清甜紅蘿蔔搭配排骨，營養美味',350,20,65,1,30,0),(16,1,'滷蛋',NULL,'滷製的鮮嫩蛋，滋味獨特',80,20,45,1,30,0),(17,1,'涼拌海帶結',NULL,'爽口海帶結，搭配特製調味料',60,20,40,1,30,0),(18,1,'炸豆腐',NULL,'外酥內軟的炸豆腐，香氣四溢',200,20,50,1,30,0),(19,2,'手工辣醬',NULL,'辣味濃郁的手工製辣醬，香辣可口',50,20,120,1,40,0),(20,2,'澎湖現炒手工干貝XO醬',NULL,'澎湖風味手工製作的XO醬，干貝香氣十足',70,20,200,1,35,0),(21,2,'手工麻醬',NULL,'香氣四溢的手工製麻醬，搭配多種料理美味',60,20,120,1,45,0),(22,2,'手工蔥油',NULL,'香氣撲鼻的手工蔥油，料理佳品',30,20,120,1,48,0),(23,2,'台式麻油',NULL,'風味獨特的台式手工麻油，調味佳品',55,20,120,1,42,0),(24,3,'巧克力蛋糕',NULL,'濃郁香濃的巧克力蛋糕',450,NULL,120,1,20,0),(25,3,'提拉米蘇',NULL,'充滿咖啡香氣的意式提拉米蘇',380,NULL,130,1,25,0),(26,3,'草莓奶油蛋糕',NULL,'新鮮草莓搭配柔滑奶油的蛋糕',300,NULL,110,1,18,0),(27,3,'焦糖布丁',NULL,'滑順香甜的焦糖布丁',250,NULL,100,1,22,0),(28,3,'水果塔',NULL,'色彩繽紛的水果塔',280,NULL,150,1,15,0),(29,3,'檸檬塔',NULL,'清新酸甜的檸檬塔',320,NULL,140,1,16,0),(30,3,'覆盆子派',NULL,'美味的覆盆子派',350,NULL,125,1,19,0),(31,3,'巧克力杯子蛋糕',NULL,'迷你版的巧克力杯子蛋糕',200,NULL,90,1,24,0),(32,3,'香草冰淇淋',NULL,'純正香草口味的冰淇淋',180,NULL,80,1,28,0),(33,3,'巧克力布朗尼',NULL,'濃郁的巧克力與香甜的焦糖結合',400,NULL,160,1,21,0);
/*!40000 ALTER TABLE `menuitems` ENABLE KEYS */;
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
