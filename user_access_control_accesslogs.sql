CREATE DATABASE  IF NOT EXISTS `user_access_control` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `user_access_control`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: user_access_control
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `accesslogs`
--

DROP TABLE IF EXISTS `accesslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesslogs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `idx_accesslogs_user_time` (`user_id`,`login_time`),
  CONSTRAINT `accesslogs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesslogs`
--

LOCK TABLES `accesslogs` WRITE;
/*!40000 ALTER TABLE `accesslogs` DISABLE KEYS */;
INSERT INTO `accesslogs` VALUES (1,1,'2025-11-09 08:00:00','2025-11-09 16:30:00','192.168.1.10','Logged in and updated user settings'),(2,2,'2025-11-09 09:15:00','2025-11-09 17:00:00','192.168.1.11','Reviewed payroll reports'),(3,3,'2025-11-09 08:45:00','2025-11-09 16:00:00','192.168.1.12','Generated financial report'),(4,4,'2025-11-09 22:30:00','2025-11-10 01:00:00','192.168.1.13','Checked audit logs'),(5,5,'2025-11-09 10:00:00','2025-11-09 18:00:00','192.168.1.14','Managed marketing campaigns'),(34,6,'2025-11-14 08:30:00','2025-11-14 17:15:00','192.168.1.15','Processed financial transactions'),(35,7,'2025-11-14 09:00:00','2025-11-14 17:30:00','192.168.1.16','Conducted employee reviews'),(36,8,'2025-11-14 14:00:00','2025-11-14 15:30:00','192.168.1.17','System maintenance'),(37,1,'2025-11-14 08:00:00','2025-11-14 16:45:00','192.168.1.10','Updated system configurations'),(38,1,'2025-11-13 08:15:00','2025-11-13 17:00:00','192.168.1.10','Performed system maintenance'),(39,2,'2025-11-14 09:15:00','2025-11-14 17:30:00','192.168.1.11','Processed employee onboarding'),(40,2,'2025-11-13 09:30:00','2025-11-13 17:15:00','192.168.1.11','Reviewed HR policies'),(41,3,'2025-11-14 08:45:00','2025-11-14 16:30:00','192.168.1.12','Generated quarterly financial reports'),(42,3,'2025-11-13 08:30:00','2025-11-13 16:45:00','192.168.1.12','Audited expense reports'),(43,4,'2025-11-13 23:00:00','2025-11-14 02:00:00','192.168.1.13','Performed security audit'),(44,5,'2025-11-14 10:00:00','2025-11-14 18:30:00','192.168.1.14','Launched new marketing campaign'),(45,5,'2025-11-13 10:30:00','2025-11-13 19:00:00','192.168.1.14','Analyzed campaign performance metrics');
/*!40000 ALTER TABLE `accesslogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-14 11:43:51
