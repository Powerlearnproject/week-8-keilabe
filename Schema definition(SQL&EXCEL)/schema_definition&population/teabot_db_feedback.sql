CREATE DATABASE  IF NOT EXISTS `teabot_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `teabot_db`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: teabot_db
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `comment` text,
  `rating` int DEFAULT NULL,
  `feedback_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `feedback_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,'The bot provided accurate information about Blister Blight.',5,'2024-01-15 06:30:00'),(2,2,'The response for Red Rust was helpful but could be more detailed.',4,'2024-01-20 12:00:00'),(3,3,'The explanation for Black Rot was clear and concise.',5,'2024-02-05 08:30:00'),(4,4,'The bot did not recognize my tea leaf issue initially.',3,'2024-02-10 14:15:00'),(5,5,'The Dieback identification guide was very useful.',5,'2024-03-02 07:15:00'),(6,2,'The treatment suggestions for Blister Blight were effective.',4,'2024-03-18 09:45:00'),(7,3,'The Red Rust management tips were practical.',5,'2024-04-07 11:30:00'),(8,4,'The bot response for Black Rot was too generic.',3,'2024-04-15 16:00:00'),(9,5,'The Algal Leaf Spot control measures worked well.',4,'2024-05-12 05:45:00'),(10,1,'The Dieback explanation was easy to understand.',5,'2024-05-25 10:15:00'),(11,2,'The prevention tips for Black Rot were helpful.',4,'2024-06-01 08:00:00'),(12,3,'The treatment for Algal Leaf Spot was effective.',5,'2024-06-19 13:15:00'),(13,4,'The Blister Blight identification guide was accurate.',4,'2024-07-04 08:00:00'),(14,5,'The Red Rust symptoms description was clear.',5,'2024-07-22 15:45:00'),(15,1,'The Dieback management tips were practical.',4,'2024-08-09 06:15:00'),(16,2,'The Algal Leaf Spot treatment worked well.',5,'2024-08-27 18:00:00'),(17,1,'The Brown Rot explanation was helpful.',4,'2025-02-09 12:30:00'),(18,4,'The \"No Disease Detected\" response was reassuring.',5,'2025-02-09 12:45:00'),(19,2,'The Red Spider Mite treatment was effective.',4,'2025-02-09 13:00:00'),(20,5,'The bot response for no disease detected was clear.',5,'2025-02-09 13:15:00'),(21,3,'The Brown Rot prevention tips were useful.',4,'2025-02-09 13:30:00');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 18:54:16
