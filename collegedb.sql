-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: collegedb
-- ------------------------------------------------------
-- Server version	8.0.39

create database collegedb;
use collegedb;

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
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accommodation_fee` int DEFAULT NULL,
  `accommodation_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,25000,'AC','Kashi Institute of Technology'),(2,20000,'NON AC','IIT BHU'),(3,28000,'AC','Varanasi College of Engineering'),(4,22000,'NON AC','Mahila Maha Vidyalaya'),(5,30000,'AC','Institute of Science BHU'),(6,21000,'NON AC','DAV Post Graduate College'),(7,27000,'AC','Udai Pratap College'),(8,23000,'NON AC','Arya Mahila PG College'),(9,26000,'AC','Sunbeam College for Women'),(10,24000,'NON AC','Ashoka Institute of Technology');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_courses`
--

DROP TABLE IF EXISTS `college_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_courses` (
  `college_id` int NOT NULL,
  `courses_id` int NOT NULL,
  UNIQUE KEY `UK5flhhidvjumj1e0wuqckyea2m` (`courses_id`),
  KEY `FKfdciq61860xjprv9gncliqao9` (`college_id`),
  CONSTRAINT `FKfdciq61860xjprv9gncliqao9` FOREIGN KEY (`college_id`) REFERENCES `college` (`id`),
  CONSTRAINT `FKri710834jyofu9dcstcugmlst` FOREIGN KEY (`courses_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_courses`
--

LOCK TABLES `college_courses` WRITE;
/*!40000 ALTER TABLE `college_courses` DISABLE KEYS */;
INSERT INTO `college_courses` VALUES (1,101),(1,102),(1,103),(2,104),(2,105),(2,106),(3,107),(3,108),(3,109),(3,110),(4,111),(4,112),(4,113),(4,114),(4,115),(4,116),(5,117),(5,118),(5,119),(5,120),(6,121),(6,122),(6,123),(6,124),(7,125),(7,126),(7,127),(7,128),(8,131),(8,132),(8,133),(8,134),(8,135),(8,136),(9,137),(9,138),(9,139),(9,140),(9,141),(10,142),(10,143),(10,144),(10,145),(10,146);
/*!40000 ALTER TABLE `college_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `duration` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course_fee_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKbhd1jdmm36ij6q3igd6fdaptm` (`course_fee_id`),
  CONSTRAINT `FKhkbhdt5e36mbvybtbhqhaqj44` FOREIGN KEY (`course_fee_id`) REFERENCES `course_fee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (101,'4 Years','B.Tech',1001),(102,'3 Years','B.Sc',1002),(103,'2 Years','MBA',1003),(104,'4 Years','B.Tech',1004),(105,'3 Years','B.Com',1005),(106,'2 Years','MCA',1006),(107,'4 Years','B.Tech',1007),(108,'2 Years','M.Tech',1008),(109,'3 Years','BA',1009),(110,'2 Years','M.Sc',1010),(111,'3 Years','BBA',1011),(112,'2 Years','MBA',1012),(113,'3 Years','BCA',1013),(114,'2 Years','MCA',1014),(115,'4 Years','B.Tech',1015),(116,'2 Years','M.Tech',1016),(117,'3 Years','B.Sc',1017),(118,'2 Years','M.Sc',1018),(119,'3 Years','B.Com',1019),(120,'2 Years','M.Com',1020),(121,'5 Years','MBBS',1021),(122,'4 Years','BDS',1022),(123,'3 Years','LLB',1023),(124,'2 Years','LLM',1024),(125,'3 Years','B.Ed',1025),(126,'2 Years','M.Ed',1026),(127,'3 Years','B.Pharma',1027),(128,'2 Years','M.Pharma',1028),(129,'3 Years','BFA',1029),(130,'2 Years','MFA',1030),(131,'3 Years','BHM',1031),(132,'2 Years','MHM',1032),(133,'4 Years','B.Arch',1033),(134,'2 Years','M.Arch',1034),(135,'3 Years','BPT',1035),(136,'2 Years','MPT',1036),(137,'3 Years','B.Lib',1037),(138,'2 Years','M.Lib',1038),(139,'4 Years','B.Voc',1039),(140,'2 Years','M.Voc',1040),(141,'3 Years','B.Des',1041),(142,'2 Years','M.Des',1042),(143,'4 Years','B.Sc Nursing',1043),(144,'2 Years','M.Sc Nursing',1044),(145,'3 Years','BMS',1045),(146,'2 Years','MMS',1046);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_fee`
--

DROP TABLE IF EXISTS `course_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_fee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fee` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1047 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_fee`
--

LOCK TABLES `course_fee` WRITE;
/*!40000 ALTER TABLE `course_fee` DISABLE KEYS */;
INSERT INTO `course_fee` VALUES (1001,50000),(1002,45000),(1003,55000),(1004,60000),(1005,40000),(1006,75000),(1007,65000),(1008,30000),(1009,80000),(1010,35000),(1011,90000),(1012,70000),(1013,25000),(1014,20000),(1015,95000),(1016,65000),(1017,50000),(1018,55000),(1019,60000),(1020,72000),(1021,48000),(1022,53000),(1023,57000),(1024,49000),(1025,62000),(1026,58000),(1027,62000),(1028,51000),(1029,66000),(1030,54000),(1031,72000),(1032,55000),(1033,68000),(1034,63000),(1035,49000),(1036,55000),(1037,60000),(1038,58000),(1039,75000),(1040,66000),(1041,60000),(1042,49000),(1043,58000),(1044,57000),(1045,65000),(1046,64000);
/*!40000 ALTER TABLE `course_fee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 20:05:53
