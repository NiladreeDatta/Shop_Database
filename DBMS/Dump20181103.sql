-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bank_dbms
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch` (
  `Branch_ID` decimal(20,0) NOT NULL,
  `Branch_Name` varchar(20) DEFAULT NULL,
  `Maneger_ID` decimal(20,0) DEFAULT NULL,
  `Manager_Start_date` date DEFAULT NULL,
  PRIMARY KEY (`Branch_ID`),
  KEY `Maneger_ID` (`Maneger_ID`),
  CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`Maneger_ID`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Halishahar',1,'1999-01-26'),(2,'Agrabad',2,'1999-01-26'),(3,'Chotopol',3,'1999-01-26'),(4,'Dhaka',4,'1999-01-26'),(5,'Comilla',5,'1999-01-26');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_supplier`
--

DROP TABLE IF EXISTS `branch_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch_supplier` (
  `branch_ID` decimal(20,0) NOT NULL,
  `Supplier_Name` varchar(20) NOT NULL,
  `Supply_Type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`branch_ID`,`Supplier_Name`),
  CONSTRAINT `branch_supplier_ibfk_1` FOREIGN KEY (`branch_ID`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_supplier`
--

LOCK TABLES `branch_supplier` WRITE;
/*!40000 ALTER TABLE `branch_supplier` DISABLE KEYS */;
INSERT INTO `branch_supplier` VALUES (1,'Kutkut','Food'),(2,'Jobar','Medicine'),(3,'Rohim','honey'),(4,'Karim','milk');
/*!40000 ALTER TABLE `branch_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `client` (
  `Client_ID` decimal(20,0) NOT NULL,
  `Client_Name` varchar(40) DEFAULT NULL,
  `Branch_ID` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`Client_ID`),
  KEY `Branch_ID` (`Branch_ID`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`Branch_ID`) REFERENCES `branch` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Rafiq',1),(2,'Salam',2),(3,'Jobbar',3),(4,'shofique',4);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `Employee_ID` decimal(20,0) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Sex` varchar(5) DEFAULT NULL,
  `salary` decimal(20,0) DEFAULT NULL,
  `Super_ID` decimal(20,0) DEFAULT NULL,
  `Branch_ID` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Niladree','Datta','M',50000,1,1),(2,'Srabani',' Bardhan','F',55000,2,2),(3,'Rashedul','Alam','M',60000,3,3),(4,'Raiyan','Noor','M',10000,4,4),(5,'Safa','Noor','M',25000,5,5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_with`
--

DROP TABLE IF EXISTS `work_with`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `work_with` (
  `employee_ID` decimal(20,0) NOT NULL,
  `client_ID` decimal(20,0) NOT NULL,
  `total_sales` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`employee_ID`,`client_ID`),
  KEY `client_ID` (`client_ID`),
  CONSTRAINT `work_with_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `work_with_ibfk_2` FOREIGN KEY (`client_ID`) REFERENCES `client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_with`
--

LOCK TABLES `work_with` WRITE;
/*!40000 ALTER TABLE `work_with` DISABLE KEYS */;
INSERT INTO `work_with` VALUES (1,1,500),(2,2,600),(3,3,700),(4,4,800);
/*!40000 ALTER TABLE `work_with` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bank_dbms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-03 21:19:51
