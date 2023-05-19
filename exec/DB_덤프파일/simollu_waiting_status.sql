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
-- Table structure for table `waiting_status`
--

DROP TABLE IF EXISTS `waiting_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waiting_status` (
  `waiting_status_seq` int NOT NULL AUTO_INCREMENT,
  `waiting_seq` int NOT NULL,
  `waiting_status_content` int NOT NULL,
  `waiting_status_rank` int DEFAULT NULL,
  `waiting_status_regist_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`waiting_status_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiting_status`
--

LOCK TABLES `waiting_status` WRITE;
/*!40000 ALTER TABLE `waiting_status` DISABLE KEYS */;
INSERT INTO `waiting_status` VALUES (131,101,0,1,'2023-05-18 10:58:16.916554'),(132,101,2,0,'2023-05-18 10:58:31.416703'),(133,102,0,1,'2023-05-18 11:00:14.790955'),(134,103,0,2,'2023-05-18 11:07:35.772830'),(135,102,2,0,'2023-05-18 11:08:14.634255'),(136,104,0,2,'2023-05-18 11:08:27.929447'),(137,104,2,0,'2023-05-18 11:08:40.356112'),(138,105,0,2,'2023-05-18 11:08:51.474270'),(139,105,2,0,'2023-05-18 11:09:06.800210'),(140,106,0,2,'2023-05-18 11:09:10.245555'),(141,106,2,0,'2023-05-18 11:09:24.591345'),(142,107,0,2,'2023-05-18 11:09:27.803381'),(143,107,2,0,'2023-05-18 11:10:33.068415'),(144,108,0,2,'2023-05-18 11:10:50.265458'),(145,108,2,0,'2023-05-18 11:11:23.304079'),(146,109,0,2,'2023-05-18 11:13:00.763084'),(147,103,1,0,'2023-05-18 11:19:23.344695'),(148,110,0,2,'2023-05-18 11:20:02.650364'),(149,111,0,3,'2023-05-18 11:20:05.969620'),(150,109,3,0,'2023-05-18 11:20:17.112766'),(151,109,2,0,'2023-05-18 11:23:59.916731'),(152,110,1,0,'2023-05-18 11:24:15.757869'),(153,112,0,2,'2023-05-18 11:24:24.281406'),(154,112,1,0,'2023-05-18 11:24:38.048226'),(155,111,1,0,'2023-05-18 11:25:55.733215'),(156,113,0,1,'2023-05-18 11:29:55.725419'),(157,113,1,0,'2023-05-18 11:30:11.244189'),(158,114,0,1,'2023-05-18 13:12:36.112060'),(159,114,2,0,'2023-05-18 13:12:43.527877'),(160,115,0,1,'2023-05-18 13:21:32.972513'),(161,115,1,0,'2023-05-18 13:23:17.020127'),(162,116,0,1,'2023-05-18 13:38:34.833502'),(163,116,1,0,'2023-05-18 13:40:19.554369'),(164,117,0,1,'2023-05-18 13:40:50.070005'),(165,118,0,2,'2023-05-18 13:40:58.159857'),(166,119,0,1,'2023-05-18 13:53:00.005119'),(167,120,0,1,'2023-05-18 14:14:43.169524'),(168,120,2,0,'2023-05-18 14:17:01.064173'),(169,121,0,1,'2023-05-18 14:17:19.345912'),(170,121,2,0,'2023-05-18 14:20:06.370361'),(171,122,0,1,'2023-05-18 14:20:14.251321'),(172,122,2,0,'2023-05-18 14:23:32.042138'),(173,123,0,1,'2023-05-18 14:23:40.156947'),(174,123,2,0,'2023-05-18 14:25:27.469684'),(175,124,0,1,'2023-05-18 14:25:53.708801'),(176,125,0,1,'2023-05-18 14:31:14.469324'),(177,125,2,0,'2023-05-18 14:35:05.552215'),(178,126,0,3,'2023-05-18 14:35:07.744316'),(179,126,2,0,'2023-05-18 14:35:21.404570'),(180,127,0,1,'2023-05-18 14:35:28.810416'),(181,127,2,0,'2023-05-18 14:37:48.951217'),(182,128,0,3,'2023-05-18 14:41:05.653427'),(183,128,2,0,'2023-05-18 14:41:19.745059'),(184,129,0,1,'2023-05-18 14:41:31.102182'),(185,129,2,0,'2023-05-18 14:42:33.189297'),(186,130,0,2,'2023-05-18 14:43:34.989764'),(187,130,2,0,'2023-05-18 14:44:33.710704'),(188,131,0,3,'2023-05-18 15:01:28.243430'),(189,131,2,0,'2023-05-18 15:05:33.966018'),(190,132,0,3,'2023-05-18 15:36:55.582708'),(191,132,3,0,'2023-05-18 15:59:14.195343'),(192,132,2,0,'2023-05-18 16:00:20.475114'),(193,133,0,3,'2023-05-18 16:44:46.677390'),(194,117,1,0,'2023-05-18 16:45:57.542564'),(195,118,1,0,'2023-05-18 16:46:37.362410'),(196,133,1,0,'2023-05-18 16:47:41.221664'),(197,134,0,1,'2023-05-18 16:51:26.482313'),(198,134,1,0,'2023-05-18 16:52:25.616421'),(199,135,0,1,'2023-05-18 17:00:44.089756'),(200,135,1,0,'2023-05-18 17:01:02.395194'),(201,136,0,1,'2023-05-18 17:02:49.856744'),(202,136,1,0,'2023-05-18 17:03:13.491098'),(203,137,0,1,'2023-05-18 17:03:56.763672'),(204,138,0,2,'2023-05-18 17:05:20.524187'),(205,138,1,0,'2023-05-18 17:05:39.740294'),(206,139,0,2,'2023-05-18 17:06:43.669986'),(207,139,1,0,'2023-05-18 17:06:56.360151'),(208,137,2,0,'2023-05-18 17:12:44.886520'),(209,140,0,1,'2023-05-18 17:13:50.375285'),(210,119,2,0,'2023-05-18 17:22:34.574099'),(211,140,1,0,'2023-05-18 17:23:36.646466'),(212,141,0,1,'2023-05-18 17:24:27.960805'),(213,141,3,0,'2023-05-18 17:25:22.736270'),(214,141,2,0,'2023-05-18 17:25:30.255176'),(215,142,0,1,'2023-05-18 17:28:58.869860'),(216,142,2,0,'2023-05-18 17:31:50.134000'),(217,143,0,1,'2023-05-18 17:35:03.143358'),(218,144,0,1,'2023-05-18 17:48:06.203162'),(219,143,1,0,'2023-05-18 17:48:14.396885'),(220,145,0,1,'2023-05-18 17:48:29.648316'),(221,144,2,0,'2023-05-18 20:02:01.393784'),(222,88,2,0,'2023-05-18 20:37:29.789036'),(223,146,0,1,'2023-05-18 21:05:27.674461'),(224,147,0,2,'2023-05-18 21:06:07.424213'),(225,146,1,0,'2023-05-18 21:07:48.625976'),(226,146,1,0,'2023-05-18 21:08:00.065453'),(227,148,0,1,'2023-05-18 21:10:30.426996'),(228,149,0,2,'2023-05-18 21:11:40.627385'),(229,150,0,3,'2023-05-18 21:12:25.160934'),(230,151,0,4,'2023-05-18 21:12:33.343200'),(231,152,0,5,'2023-05-18 21:14:26.666143'),(232,151,3,0,'2023-05-18 21:15:11.017835'),(233,148,1,0,'2023-05-18 21:16:31.921722'),(234,148,1,0,'2023-05-18 21:16:35.247498'),(235,148,1,0,'2023-05-18 21:16:36.937448'),(236,148,1,0,'2023-05-18 21:16:38.973501'),(237,148,1,0,'2023-05-18 21:17:05.526249'),(238,153,0,1,'2023-05-18 21:17:49.101900'),(239,154,0,2,'2023-05-18 21:17:49.476122'),(240,155,0,3,'2023-05-18 21:17:57.704602'),(241,156,0,4,'2023-05-18 21:18:13.995862'),(242,155,3,0,'2023-05-18 21:18:33.659114'),(243,157,0,5,'2023-05-18 21:19:18.598230'),(244,155,1,0,'2023-05-18 21:19:31.594985'),(245,153,1,0,'2023-05-18 21:19:59.149294'),(246,153,1,0,'2023-05-18 21:20:00.676559'),(247,153,1,0,'2023-05-18 21:20:02.438495'),(248,153,1,0,'2023-05-18 21:20:17.223103'),(249,158,0,1,'2023-05-18 21:20:26.480703'),(250,159,0,2,'2023-05-18 21:20:30.428945'),(251,160,0,3,'2023-05-18 21:20:32.098294'),(252,161,0,4,'2023-05-18 21:20:44.849166'),(253,162,0,5,'2023-05-18 21:20:52.524003'),(254,161,3,0,'2023-05-18 21:22:28.129146'),(255,161,3,0,'2023-05-18 21:22:44.271445'),(256,161,2,0,'2023-05-18 21:22:57.583494'),(257,161,1,0,'2023-05-18 21:23:14.097916'),(258,163,0,4,'2023-05-18 21:23:53.021164'),(259,164,0,5,'2023-05-18 21:24:35.159133'),(260,163,1,0,'2023-05-18 21:25:08.593590'),(261,163,1,0,'2023-05-18 21:26:05.687884'),(262,165,0,4,'2023-05-18 21:26:58.163054'),(263,165,1,0,'2023-05-18 21:27:32.999933'),(264,166,0,4,'2023-05-18 21:27:53.539985'),(265,166,1,0,'2023-05-18 21:29:44.643124'),(266,167,0,4,'2023-05-18 21:30:02.761913'),(267,167,1,0,'2023-05-18 21:34:37.488800'),(268,168,0,4,'2023-05-18 21:34:58.290665'),(269,168,1,0,'2023-05-18 21:36:53.651374'),(270,169,0,4,'2023-05-18 21:41:36.253449'),(271,169,1,0,'2023-05-18 21:48:06.089416'),(272,170,0,4,'2023-05-18 21:52:22.145042'),(273,170,1,0,'2023-05-18 21:54:01.585227'),(274,171,0,4,'2023-05-18 21:54:50.824471'),(275,171,1,0,'2023-05-18 21:56:16.711989'),(276,172,0,1,'2023-05-18 21:59:35.857956'),(277,173,0,4,'2023-05-18 21:59:44.798812'),(278,173,1,0,'2023-05-18 22:00:10.814007'),(279,174,0,4,'2023-05-18 22:10:24.891016'),(280,174,1,0,'2023-05-18 22:11:51.040576'),(281,175,0,4,'2023-05-18 22:12:02.387626'),(282,175,1,0,'2023-05-18 22:13:55.895384'),(283,176,0,4,'2023-05-18 22:21:53.763094'),(284,172,2,0,'2023-05-18 22:36:51.237304'),(285,176,1,0,'2023-05-18 22:56:26.778208'),(286,177,0,4,'2023-05-18 23:04:51.369927'),(287,177,1,0,'2023-05-18 23:05:29.850167'),(288,178,0,4,'2023-05-18 23:06:29.659413'),(289,178,1,0,'2023-05-18 23:10:08.380098'),(290,179,0,4,'2023-05-18 23:10:22.761285'),(291,179,1,0,'2023-05-18 23:10:43.569343'),(292,180,0,4,'2023-05-18 23:29:27.665479'),(293,180,1,0,'2023-05-18 23:29:44.411198'),(294,159,1,0,'2023-05-18 23:32:46.323186'),(295,159,1,0,'2023-05-18 23:32:50.659032'),(296,181,0,1,'2023-05-18 23:40:34.512647'),(297,181,2,0,'2023-05-18 23:40:44.572593'),(298,182,0,1,'2023-05-18 23:41:10.240325'),(299,183,0,2,'2023-05-18 23:47:09.131667'),(300,184,0,3,'2023-05-18 23:54:37.934107'),(301,184,2,0,'2023-05-18 23:55:10.559644'),(302,183,2,0,'2023-05-19 00:02:27.840526'),(303,185,0,2,'2023-05-19 00:03:02.347472'),(304,186,0,3,'2023-05-19 00:03:15.566438'),(305,187,0,4,'2023-05-19 00:04:07.778772'),(306,187,2,0,'2023-05-19 00:04:45.624607'),(307,188,0,4,'2023-05-19 00:05:04.225719'),(308,188,1,0,'2023-05-19 00:49:34.192396'),(309,186,1,0,'2023-05-19 00:49:38.432639'),(310,189,0,3,'2023-05-19 01:06:17.746429'),(311,189,1,0,'2023-05-19 01:07:54.776615'),(312,190,0,3,'2023-05-19 01:25:21.024991'),(313,158,1,0,'2023-05-19 01:26:05.978868'),(314,185,1,0,'2023-05-19 01:26:07.718107'),(315,158,1,0,'2023-05-19 01:26:09.770721'),(316,191,0,1,'2023-05-19 01:34:08.459814'),(317,191,1,0,'2023-05-19 01:35:44.442554'),(318,192,0,1,'2023-05-19 01:44:28.300839'),(319,193,0,2,'2023-05-19 01:44:47.619111'),(320,194,0,3,'2023-05-19 01:45:40.167612'),(321,194,2,0,'2023-05-19 01:45:46.933828'),(322,193,1,0,'2023-05-19 01:51:44.024849'),(323,195,0,2,'2023-05-19 02:44:23.158441'),(324,195,1,0,'2023-05-19 02:45:24.677702'),(325,196,0,2,'2023-05-19 02:54:05.622814'),(326,196,2,0,'2023-05-19 02:56:14.607383'),(327,192,1,0,'2023-05-19 03:12:34.649844'),(328,197,0,1,'2023-05-19 03:20:02.946074'),(329,197,1,0,'2023-05-19 03:21:01.173291'),(330,198,0,1,'2023-05-19 03:31:12.698196'),(331,198,1,0,'2023-05-19 03:32:05.664368'),(332,199,0,1,'2023-05-19 07:55:53.449287'),(333,200,0,2,'2023-05-19 09:06:30.970841'),(334,199,1,0,'2023-05-19 09:07:43.718924'),(335,199,1,0,'2023-05-19 09:07:45.069578'),(336,201,0,1,'2023-05-19 09:09:52.366448'),(337,201,1,0,'2023-05-19 09:10:56.605287'),(338,202,0,1,'2023-05-19 09:23:36.579476'),(339,202,1,0,'2023-05-19 09:24:42.058623'),(340,203,0,1,'2023-05-19 10:13:55.916291'),(341,203,1,0,'2023-05-19 10:14:50.908484'),(342,204,0,1,'2023-05-19 10:33:53.561975'),(343,205,0,2,'2023-05-19 10:35:16.272720');
/*!40000 ALTER TABLE `waiting_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 10:56:00
