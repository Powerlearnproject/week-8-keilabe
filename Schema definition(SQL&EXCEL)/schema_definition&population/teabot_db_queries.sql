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
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queries` (
  `query_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `question` text,
  `bot_response` text,
  `query_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`query_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `queries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (1,1,'What is Blister Blight?','Blister Blight is a fungal disease that causes small blisters on tea leaves. It can be treated with copper-based fungicides.','2024-01-15 06:00:00'),(2,2,'How can I prevent Red Rust?','Red Rust can be prevented by ensuring proper aeration, avoiding excessive nitrogen fertilizers, and using sulfur-based fungicides.','2024-01-20 11:30:00'),(3,3,'What causes Black Rot in tea plants?','Black Rot is caused by fungal infections due to poor drainage and excessive moisture. Improve drainage and use Bordeaux mixture for treatment.','2024-02-05 08:00:00'),(4,4,'Is Algal Leaf Spot harmful to tea plants?','Yes, Algal Leaf Spot reduces photosynthesis and weakens plants. Use copper oxychloride to manage it.','2024-02-10 13:45:00'),(5,5,'How to identify Dieback in tea plants?','Dieback is identified by wilting and drying of young shoots, which spread from the tips downwards. Prune affected branches and use fungicides.','2024-03-02 06:45:00'),(6,2,'What is the best way to treat Blister Blight?','Blister Blight can be treated with copper-based fungicides and pruning infected leaves.','2024-03-18 09:15:00'),(7,3,'How to manage Red Rust outbreaks?','Remove affected leaves and apply sulfur-based fungicides regularly to manage Red Rust outbreaks.','2024-04-07 11:00:00'),(8,4,'What are the symptoms of Black Rot?','Black Rot symptoms include dark brown spots with a yellow halo on leaves. Improve drainage and spray with Bordeaux mixture.','2024-04-15 15:30:00'),(9,5,'How to control Algal Leaf Spot?','Control Algal Leaf Spot by applying copper oxychloride and ensuring proper spacing between plants.','2024-05-12 05:15:00'),(10,1,'What causes Dieback in tea plants?','Dieback is caused by fungal infections and poor plant health. Prune affected branches and use fungicide treatments.','2024-05-25 09:45:00'),(11,2,'How to prevent Black Rot?','Prevent Black Rot by improving drainage, avoiding waterlogging, and using Bordeaux mixture.','2024-06-01 07:30:00'),(12,3,'What is the treatment for Algal Leaf Spot?','Treat Algal Leaf Spot with copper oxychloride and ensure proper plant spacing.','2024-06-19 12:45:00'),(13,4,'How to identify Blister Blight?','Blister Blight is identified by small blisters and yellowing on tea leaves.','2024-07-04 07:30:00'),(14,5,'What are the symptoms of Red Rust?','Red Rust symptoms include reddish-brown patches on leaves.','2024-07-22 15:15:00'),(15,1,'How to manage Dieback?','Manage Dieback by pruning affected branches and applying fungicides.','2024-08-09 05:45:00'),(16,2,'What is the best treatment for Algal Leaf Spot?','The best treatment for Algal Leaf Spot is copper oxychloride.','2024-08-27 17:30:00'),(17,1,'What is Brown Rot?','Brown Rot is a fungal disease that causes brown lesions on leaves. Remove infected leaves and apply fungicides.','2025-02-09 12:00:00'),(18,4,'What does \"No Disease Detected\" mean?','No Disease Detected means that no visible symptoms of disease were found on the tea leaves.','2025-02-09 12:15:00'),(19,2,'How to treat Red Spider Mite?','Red Spider Mite can be treated with miticides and maintaining proper humidity levels.','2025-02-09 12:30:00'),(20,5,'What should I do if no disease is detected?','If no disease is detected, continue regular plant care and monitoring.','2025-02-09 12:45:00'),(21,3,'How to prevent Brown Rot?','Prevent Brown Rot by removing infected leaves and applying fungicides.','2025-02-09 13:00:00');
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
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
