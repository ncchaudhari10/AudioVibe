CREATE DATABASE  IF NOT EXISTS `audiovibe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `audiovibe`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: audiovibe
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `playlist_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `playlist_name` varchar(255) DEFAULT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `fk_user_id_4` (`user_id`),
  KEY `idx_playlist_id` (`playlist_id`),
  CONSTRAINT `fk_user_id_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5040 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (5000,103,'Playlist_1',NULL),(5001,180,'Playlist_2',NULL),(5002,93,'Playlist_3',NULL),(5003,15,'Playlist_4',NULL),(5004,107,'Playlist_5',NULL),(5005,72,'Playlist_6',NULL),(5006,189,'Playlist_7',NULL),(5007,21,'Playlist_8',NULL),(5008,103,'Playlist_9',NULL),(5009,122,'Playlist_10',NULL),(5010,211,'Playlist_11',NULL),(5011,215,'Playlist_12',NULL),(5012,75,'Playlist_13',NULL),(5013,203,'Playlist_14',NULL),(5014,88,'Playlist_15',NULL),(5015,117,'Playlist_16',NULL),(5016,100,'Playlist_17',NULL),(5017,104,'Playlist_18',NULL),(5018,152,'Playlist_19',NULL),(5019,131,'Playlist_20',NULL),(5020,150,'Playlist_21',NULL),(5021,53,'Playlist_22',NULL),(5022,2,'Playlist_23',NULL),(5023,88,'Playlist_24',NULL),(5024,236,'Playlist_25',NULL),(5025,158,'Playlist_26',NULL),(5026,38,'Playlist_27',NULL),(5027,130,'Playlist_28',NULL),(5028,192,'Playlist_29',NULL),(5029,188,'Playlist_30',NULL),(5030,21,'Playlist_31',NULL),(5031,161,'Playlist_32',NULL),(5032,204,'Playlist_33',NULL),(5033,58,'Playlist_34',NULL),(5034,22,'Playlist_35',NULL),(5036,302,'Playlist_1','2023-12-05 17:09:23.087717'),(5037,302,'Playlist_1','2023-12-05 18:19:09.322550'),(5038,302,'liked songs','2023-12-05 18:19:24.578861'),(5039,302,'classic','2023-12-05 19:38:35.292083');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 13:36:20
