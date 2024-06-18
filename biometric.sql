-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: biometric
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1,'shameema','manager'),(2,'janu','manager');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('shameema','nazrin'),('britto','pcs05');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof`
--

DROP TABLE IF EXISTS `prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prof` (
  `profid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dept` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cr_time` varchar(50) DEFAULT NULL,
  `princid` varchar(10) DEFAULT NULL,
  `ldays` varchar(20) DEFAULT NULL,
  `frdate` varchar(50) DEFAULT NULL,
  `todate` varchar(50) DEFAULT NULL,
  `leavests` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`profid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof`
--

LOCK TABLES `prof` WRITE;
/*!40000 ALTER TABLE `prof` DISABLE KEYS */;
INSERT INTO `prof` VALUES (1,'sagubar','CS','1','Professor','1','2023-05-27 16:28:49','1','2','2023-05-01','2023-05-02','Grant'),(3,'meharajbanu','CS','2','Professor','1','2023-05-27 16:33:54','1','2','2023-05-01','2023-05-02','Reject'),(4,'shameema','CS','3','Professor','1','2023-05-27 17:15:12','1',NULL,NULL,NULL,NULL),(5,'divakar','CS','2','Professor','1','2023-05-27 20:05:23','1','2','2023-05-30','2023-05-31','Grant'),(16,'sugasri','CS','2','Professor','1','2023-05-28 13:08:18','1','2','2023-06-01','2023-06-02','Grant'),(19,'vyshnavi','CS','2','Professor','1','2023-05-28 13:46:53','1','2','2023-06-08','2023-06-09','Grant'),(20,'imrana','CS','1','Professor','1','2023-05-28 14:01:06','1','2','2023-06-06','2023-06-07','Reject'),(21,'arshadha','CS','1','Professor','1','2023-05-28 18:59:48','1','2','2023-05-17','2023-05-18','Grant');
/*!40000 ALTER TABLE `prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `usname` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `loc` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `nationality` varchar(15) DEFAULT NULL,
  `role` varchar(15) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `cr_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg`
--

LOCK TABLES `reg` WRITE;
/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
INSERT INTO `reg` VALUES (1,'mass','sag123','sagubar','male','sag@gmail.com','9444440042','Chennai','Egmore','indian','Professor','CS','1','1','2023-05-27 13:49:07'),(3,'banu','b123','meharajbanu','female','banu@gmail.com','9940383331','Chennai','Egmore','indian','Professor','CS','2','1','2023-05-27 13:55:05'),(8,'asi','a123','asifa','female','asifa@gmail.com','9878684422','Chennai','Egmore','indian','Student','CS','3','1','2023-05-27 17:00:13'),(9,'shamee','sh123','shameema','female','shameemanazrin05@gmail.com','8754449995','Chennai','Egmore','indian','Professor','CS','3','1','2023-05-27 17:14:46'),(10,'janumk','j123','janu','female','janu@gmail.com','9878654876','Chennai','Egmore','indian','Student','CS','3','1','2023-05-27 17:21:07'),(11,'shank','s123','shankar','male','shankar@gmail.com','7865467895','Chennai','Egmore','indian','Student','CS','3','1','2023-05-27 17:48:39'),(12,'britt','br123','britto','male','britto@gmail.com','9834236755','Chennai','Egmore','indian','Student','CS','2','1','2023-05-27 17:53:29'),(16,'aakas','aa123','aakash','male','aakash@gmail.com','7868976545','Chennai','Egmore','indian','Student','CS','1','1','2023-05-27 18:16:18'),(20,'faz','f123','fazeela','female','faz@gmail.com','9878654876','Chennai','Egmore','indian','Student','CS','2','1','2023-05-27 20:02:53'),(21,'diva','d123','divakar','male','divakar@gmail.com','7868976545','Chennai','Egmore','indian','Professor','CS','2','1','2023-05-27 20:04:54'),(22,'suga','s123','sugasri','female','suga@gmail.com','879675876','Chennai','Egmore','indian','Professor','CS','2','1','2023-05-28 13:07:08'),(23,'cyrild','c123','cyril','male','cyril','9871234325','Chennai','Egmore','indian','Professor','CS','1','1','2023-05-28 13:18:46'),(24,'vysh','v123','vyshnavi','female','vysh@gmail.com','8769875679','Chennai','Egmore','indian','Professor','CS','2','1','2023-05-28 13:46:32'),(25,'Imra','i123','imrana','female','imra@gmail.com','7868976545','Chennai','Egmore','indian','Professor','CS','1','1','2023-05-28 14:00:43'),(26,'chels','c123','chelsea','female','che@gmail.com','7868976545','Chennai','Egmore','indian','Student','CS','3','1','2023-05-28 16:09:35'),(31,'arsha','ar123','arshadha','female','arsha@gmail.com','7868976545','Chennai','rgfs','indian','Professor','CS','1','1','2023-05-28 18:58:00'),(32,'suhain','suh123','suhaina','female','suhaina@gmail.com','9878654876','Chennai','vbnbmn','indian','Student','CS','2','1','2023-05-28 19:04:51');
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `usname` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `mname` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('shamz','s123','shameema','snazrin05@gmail.com'),('janumk','j123','janu','janu@gmail.com'),('shan','sh123','shankar','shankar@gmail.com'),('britt','br123','britto','britto@gmail.com'),('faz','f123','fazeela','faz@gmail.com'),('anbu','an123','anbu','anbu@gmail.com'),('kowsikey','k123','kowsik','k123'),('asi','a123','asifa','asifa@gmail.com'),('runi','r123','runita','runi@gmail.com'),('swe','sw123','swetha','s@gmail.com');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `sno` int DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `roleid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Principal','01'),(2,'Teacher','02'),(3,'Student','03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stud`
--

DROP TABLE IF EXISTS `stud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stud` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `dept` varchar(15) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `cr_time` varchar(50) DEFAULT NULL,
  `profid` varchar(10) DEFAULT NULL,
  `profname` varchar(50) DEFAULT NULL,
  `ldays` varchar(20) DEFAULT NULL,
  `frdate` varchar(50) DEFAULT NULL,
  `todate` varchar(50) DEFAULT NULL,
  `leavests` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud`
--

LOCK TABLES `stud` WRITE;
/*!40000 ALTER TABLE `stud` DISABLE KEYS */;
INSERT INTO `stud` VALUES (1,'asifa','CS','3','Student','1','2023-05-27 17:10:42','4','shameema','2','2023-06-01','2023-06-02','Grant'),(2,'janu','CS','3','Student','1','2023-05-27 17:21:34','4','shameema',NULL,NULL,NULL,NULL),(3,'shankar','CS','3','Student','1','2023-05-27 17:49:19','4','shameema',NULL,NULL,NULL,NULL),(4,'britto','CS','2','Student','1','2023-05-27 17:53:49','3','meharajbanu',NULL,NULL,NULL,NULL),(7,'aakash','CS','1','Student','1','2023-05-27 18:16:44','1','sagubar',NULL,NULL,NULL,NULL),(9,'fazeela','CS','2','Student','1','2023-05-27 20:03:25','3','meharajbanu','2','2023-06-07','2023-06-08','Reject'),(10,'chelsea','CS','3','Student','1','2023-05-28 16:10:02','4','shameema','4','2023-05-26','2023-05-29','Reject'),(11,'suhaina','CS','2','Student','1','2023-05-28 19:05:13','3','meharajbanu','2','2023-05-19','2023-05-20','Reject');
/*!40000 ALTER TABLE `stud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'shankar','CSC'),(2,'brittney','Chem');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 19:48:55
