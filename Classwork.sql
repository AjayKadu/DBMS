-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: classwork
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Cnum` int DEFAULT NULL,
  `Cname` varchar(10) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Snum` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2001,'Hoffman','London',100,1001),(2002,'Giovanni','Rome',200,1003),(2003,'Liu','San Jose',200,1002),(2004,'Grass','Berlin',300,1002),(2006,'Clemens','London',100,1001),(2008,'Cisneros','San Jose',300,1007),(2007,'Pereira','Rome',100,1004);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Onum` int DEFAULT NULL,
  `Amt` float(7,2) DEFAULT NULL,
  `Odate` date DEFAULT NULL,
  `Cnum` int DEFAULT NULL,
  `Snum` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3001,18.69,'1990-10-03',2008,1007),(3003,767.19,'1990-10-03',2001,1001),(3002,1900.10,'1990-10-03',2007,1004),(3005,5160.45,'1990-10-03',2003,1002),(3006,1098.16,'1990-10-03',2008,1007),(3009,1713.23,'1990-10-04',2002,1003),(3007,75.75,'1990-10-04',2004,1002),(3008,4723.00,'1990-10-05',2006,1001),(3010,1309.95,'1990-10-06',2004,1002),(3011,9891.88,'1990-10-06',2006,1001);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salespeople`
--

DROP TABLE IF EXISTS `salespeople`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salespeople` (
  `Snum` int DEFAULT NULL,
  `Sname` varchar(10) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Comm` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespeople`
--

LOCK TABLES `salespeople` WRITE;
/*!40000 ALTER TABLE `salespeople` DISABLE KEYS */;
INSERT INTO `salespeople` VALUES (1001,'Peel','London',0.12),(1002,'Serres','San Jose',0.13),(1004,'Motika','London',0.11),(1007,'Rifkin','Barcelona',0.15),(1003,'Axelrod','New York',0.10);
/*!40000 ALTER TABLE `salespeople` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES ('sammer');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdept`
--

DROP TABLE IF EXISTS `sdept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdept` (
  `DeptNo` char(2) DEFAULT NULL,
  `DeptName` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdept`
--

LOCK TABLES `sdept` WRITE;
/*!40000 ALTER TABLE `sdept` DISABLE KEYS */;
INSERT INTO `sdept` VALUES ('10','Development'),('20','Training');
/*!40000 ALTER TABLE `sdept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semp`
--

DROP TABLE IF EXISTS `semp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semp` (
  `EmpNo` char(4) DEFAULT NULL,
  `EmpName` char(20) DEFAULT NULL,
  `Basic` float DEFAULT NULL,
  `DeptNo` char(2) DEFAULT NULL,
  `DeptHead` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semp`
--

LOCK TABLES `semp` WRITE;
/*!40000 ALTER TABLE `semp` DISABLE KEYS */;
INSERT INTO `semp` VALUES ('0001','Sunil',6000,'10',NULL),('0002','Hiren',8000,'20',NULL),('0003','Ali',4000,'10','0001'),('0004','George',6000,NULL,'0002');
/*!40000 ALTER TABLE `semp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25 22:28:28
