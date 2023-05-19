-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 43.200.152.213    Database: simollu
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `writeable_review`
--

DROP TABLE IF EXISTS `writeable_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writeable_review` (
  `writeable_seq` bigint NOT NULL AUTO_INCREMENT,
  `restaurant_seq` bigint NOT NULL,
  `user_seq` varchar(255) NOT NULL,
  `waiting_complete_date` datetime(6) NOT NULL,
  PRIMARY KEY (`writeable_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writeable_review`
--

LOCK TABLES `writeable_review` WRITE;
/*!40000 ALTER TABLE `writeable_review` DISABLE KEYS */;
INSERT INTO `writeable_review` VALUES (70,124,'6f3c0699-19ce-4dcd-ba40-21dcc3785c11','2023-05-18 23:32:50.659032'),(71,124,'6f3c0699-19ce-4dcd-ba40-21dcc3785c11','2023-05-19 00:49:34.192396'),(74,124,'43ccce9b-7210-4c7c-a43b-ded38a1fd1b5','2023-05-19 01:26:05.978868'),(76,124,'43ccce9b-7210-4c7c-a43b-ded38a1fd1b5','2023-05-19 01:26:09.770721'),(79,207,'7f4da6a4-cc59-4eef-a9ab-ce91f88ad82e','2023-05-19 02:01:00.000000'),(91,124,'8a5e742f-01ca-4fd0-8e17-27d7ed2e3112','2023-05-19 09:07:43.718924'),(92,124,'8a5e742f-01ca-4fd0-8e17-27d7ed2e3112','2023-05-19 09:07:45.069578'),(94,124,'2537e7bd-61db-49da-a4c8-d9ab360e05a6','2023-05-19 09:24:42.058623'),(95,124,'2537e7bd-61db-49da-a4c8-d9ab360e05a6','2023-05-19 10:14:50.908484');
/*!40000 ALTER TABLE `writeable_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 10:55:59
