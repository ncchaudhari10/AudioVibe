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
-- Table structure for table `songs_in_playlist`
--

DROP TABLE IF EXISTS `songs_in_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs_in_playlist` (
  `playlist_id` int NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`song_id`,`playlist_id`),
  KEY `fk_playlist_id` (`playlist_id`),
  CONSTRAINT `fk_playlist_id` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`),
  CONSTRAINT `fk_song_id_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs_in_playlist`
--

LOCK TABLES `songs_in_playlist` WRITE;
/*!40000 ALTER TABLE `songs_in_playlist` DISABLE KEYS */;
INSERT INTO `songs_in_playlist` VALUES (5000,3077),(5000,3110),(5000,3527),(5000,3567),(5001,3077),(5001,3110),(5001,3527),(5001,3567),(5002,3077),(5002,3110),(5002,3527),(5002,3567),(5003,3077),(5003,3110),(5003,3527),(5003,3567),(5004,3077),(5004,3110),(5004,3527),(5004,3567),(5005,3077),(5005,3110),(5005,3527),(5005,3567),(5006,3077),(5006,3110),(5006,3527),(5006,3567),(5007,3077),(5007,3110),(5007,3527),(5007,3567),(5008,3077),(5008,3110),(5008,3527),(5008,3567),(5009,3077),(5009,3110),(5009,3527),(5009,3567),(5010,3077),(5010,3110),(5010,3527),(5010,3567),(5011,3077),(5011,3110),(5011,3527),(5011,3567),(5012,3077),(5012,3110),(5012,3527),(5012,3567),(5013,3077),(5013,3110),(5013,3527),(5013,3567),(5014,3077),(5014,3110),(5014,3527),(5014,3567),(5015,3077),(5015,3110),(5015,3527),(5015,3567),(5016,3077),(5016,3110),(5016,3527),(5016,3567),(5017,3077),(5017,3110),(5017,3527),(5017,3567),(5018,3077),(5018,3110),(5018,3527),(5018,3567),(5019,3077),(5019,3110),(5019,3527),(5019,3567),(5020,3077),(5020,3110),(5020,3527),(5020,3567),(5021,3077),(5021,3110),(5021,3527),(5021,3567),(5022,3077),(5022,3110),(5022,3527),(5022,3567),(5023,3077),(5023,3110),(5023,3527),(5023,3567),(5024,3077),(5024,3110),(5024,3527),(5024,3567),(5025,3077),(5025,3110),(5025,3527),(5025,3567),(5026,3077),(5026,3110),(5026,3527),(5026,3567),(5027,3077),(5027,3110),(5027,3527),(5027,3567),(5028,3077),(5028,3110),(5028,3527),(5028,3567),(5029,3077),(5029,3110),(5029,3527),(5029,3567),(5030,3077),(5030,3110),(5030,3527),(5030,3567),(5031,3077),(5031,3110),(5031,3527),(5031,3567),(5032,3077),(5032,3110),(5032,3527),(5032,3567),(5033,3077),(5033,3110),(5033,3527),(5033,3567),(5034,3077),(5034,3110),(5034,3527),(5034,3567),(5036,3001),(5039,3002),(5039,3005),(5039,3006);
/*!40000 ALTER TABLE `songs_in_playlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_delete_songs_in_playlist` BEFORE DELETE ON `songs_in_playlist` FOR EACH ROW BEGIN
    INSERT INTO songs_in_playlist_history (playlist_id, song_id, action_type)
    VALUES (OLD.playlist_id, OLD.song_id, 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 13:36:19
