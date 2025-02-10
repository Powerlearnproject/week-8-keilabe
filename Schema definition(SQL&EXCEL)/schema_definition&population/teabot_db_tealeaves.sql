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
-- Table structure for table `tealeaves`
--

DROP TABLE IF EXISTS `tealeaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tealeaves` (
  `leaf_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `disease_detected` varchar(100) DEFAULT NULL,
  `detection_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`leaf_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tealeaves_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tealeaves`
--

LOCK TABLES `tealeaves` WRITE;
/*!40000 ALTER TABLE `tealeaves` DISABLE KEYS */;
INSERT INTO `tealeaves` VALUES (1,1,'https://example.com/leaf1.jpg','Blister Blight','2024-01-15 05:30:00'),(2,2,'https://example.com/leaf2.jpg','Red Rust','2024-01-20 11:10:00'),(3,3,'https://example.com/leaf3.jpg','Black Rot','2024-02-05 07:45:00'),(4,4,'https://example.com/leaf4.jpg','Algal Leaf Spot','2024-02-10 13:20:00'),(5,5,'https://example.com/leaf5.jpg','Dieback','2024-03-02 06:15:00'),(6,2,'https://example.com/leaf6.jpg','Blister Blight','2024-03-18 08:50:00'),(7,3,'https://example.com/leaf7.jpg','Red Rust','2024-04-07 10:30:00'),(8,4,'https://example.com/leaf8.jpg','Black Rot','2024-04-15 15:05:00'),(9,5,'https://example.com/leaf9.jpg','Algal Leaf Spot','2024-05-12 04:40:00'),(10,1,'https://example.com/leaf10.jpg','Dieback','2024-05-25 09:10:00'),(11,2,'https://example.com/leaf11.jpg','Black Rot','2024-06-01 06:55:00'),(12,3,'https://example.com/leaf12.jpg','Algal Leaf Spot','2024-06-19 12:20:00'),(13,4,'https://example.com/leaf13.jpg','Blister Blight','2024-07-04 07:00:00'),(14,5,'https://example.com/leaf14.jpg','Red Rust','2024-07-22 14:40:00'),(15,1,'https://example.com/leaf15.jpg','Dieback','2024-08-09 05:10:00'),(16,2,'https://example.com/leaf16.jpg','Algal Leaf Spot','2024-08-27 17:00:00'),(17,1,'https://example.com/images/leaf17.jpg','Blister Blight','2025-02-09 11:36:54'),(18,4,'https://example.com/images/leaf21.jpg','No Disease Detected','2025-02-09 11:36:54'),(19,2,'https://example.com/images/leaf18.jpg','Red Spider Mite','2025-02-09 11:36:54'),(20,5,'https://example.com/images/leaf22.jpg','No Disease Detected','2025-02-09 11:36:54'),(21,3,'https://example.com/images/leaf19.jpg','No Disease Detected','2025-02-09 11:36:54'),(22,1,'https://example.com/images/leaf20.jpg','Brown Rot','2025-02-09 11:36:54');
/*!40000 ALTER TABLE `tealeaves` ENABLE KEYS */;
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
