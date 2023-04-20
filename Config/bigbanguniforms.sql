-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bigbanguniforms
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `uniform`
--

DROP TABLE IF EXISTS `uniform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uniform` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `color` varchar(25) NOT NULL,
  `size` enum('xs','s','m','l','xl') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `amount` smallint NOT NULL DEFAULT '0',
  `material1` enum('cotton','poliester','flax','spandex') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `material2` enum('cotton','poliester','flax','spandex') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `release_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` char(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at_user` smallint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniform`
--

LOCK TABLES `uniform` WRITE;
/*!40000 ALTER TABLE `uniform` DISABLE KEYS */;
INSERT INTO `uniform` VALUES (1,'Polo','Rojo','xs',36,NULL,NULL,'2023-04-19 19:48:21','1','2023-04-19 19:48:21',1),(2,'Polo','Verde','xs',30,NULL,NULL,'2023-04-19 19:57:45','1','2023-04-19 19:57:45',1),(3,'Polo','Azul','xs',36,NULL,NULL,'2023-04-19 20:01:14','1','2023-04-19 20:01:14',1),(5,'Polo','Morado','m',120,NULL,NULL,'2023-04-20 12:53:37','1','2023-04-20 12:53:37',1),(6,'Playera V','Naranja','m',200,NULL,NULL,'2023-04-20 13:02:29','1','2023-04-20 13:02:29',1),(7,'Playera V','Negro','l',150,NULL,NULL,'2023-04-20 15:33:24','1','2023-04-20 15:33:24',1),(8,'Playera V','Lavanda','m',0,NULL,NULL,'2023-04-20 16:00:03','1','2023-04-20 16:00:03',1),(9,'Polo','Canario','s',0,NULL,NULL,'2023-04-20 16:05:36','1','2023-04-20 16:05:36',1),(10,'Polo','Canario','xs',0,NULL,NULL,'2023-04-20 16:06:31','1','2023-04-20 16:06:31',1),(11,'Playera V','Canario','m',120,NULL,NULL,'2023-04-20 16:22:01','1','2023-04-20 16:22:01',1),(12,'Playera V','Canario','m',120,NULL,NULL,'2023-04-20 16:28:08','1','2023-04-20 16:28:08',1),(13,'Polo','Verde','xl',30,NULL,NULL,'2023-04-20 16:30:04','1','2023-04-20 16:30:04',1),(14,'Polo','Canario','xl',24,NULL,NULL,'2023-04-20 16:31:46','1','2023-04-20 16:31:46',1),(15,'Polo','Verde','l',120,NULL,NULL,'2023-04-20 16:32:00','1','2023-04-20 16:32:00',1),(16,'Polo','Verde','xs',20,NULL,NULL,'2023-04-20 16:34:18','1','2023-04-20 16:34:18',1),(17,'Camisa Trabajo','Azul','m',300,NULL,NULL,'2023-04-20 16:35:49','1','2023-04-20 16:35:49',1);
/*!40000 ALTER TABLE `uniform` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 17:33:32
