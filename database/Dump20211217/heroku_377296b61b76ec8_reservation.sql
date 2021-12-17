-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: us-cdbr-east-04.cleardb.com    Database: heroku_377296b61b76ec8
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `pet_id` int(11) DEFAULT NULL,
  `vet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4ifdimvfe3bhhr38ihl99juhh` (`pet_id`),
  KEY `FKqcynwt4hakhqg42qd6w1qvo5k` (`vet_id`),
  CONSTRAINT `FK4ifdimvfe3bhhr38ihl99juhh` FOREIGN KEY (`pet_id`) REFERENCES `pet` (`id`),
  CONSTRAINT `FKqcynwt4hakhqg42qd6w1qvo5k` FOREIGN KEY (`vet_id`) REFERENCES `vet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2021-12-14 12:00:00',1,2),(2,'2021-12-05 12:00:00',1,1),(3,'2021-12-10 12:00:00',1,2),(4,'2021-12-14 12:00:00',2,1),(5,'2021-12-14 12:00:00',3,3),(6,'2021-12-14 12:00:00',4,4),(7,'2021-12-14 12:00:00',5,4);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-17  7:24:32
