CREATE DATABASE  IF NOT EXISTS `family01` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `family01`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: family01
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
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bank_account` (
  `Bank_Account_ID` decimal(10,0) NOT NULL,
  `Bank_Name` varchar(80) DEFAULT NULL,
  `Account_No` varchar(30) DEFAULT NULL,
  `Branch` varchar(30) DEFAULT NULL,
  `Loan` decimal(10,2) DEFAULT NULL,
  `Credit_Card_No` varchar(40) DEFAULT NULL,
  `Savings` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Bank_Account_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES (1770,'Trust Bank','455','Chittagong',2000.00,'0000000001',10000.00),(1771,'AB Bank','456','Chittagong',5000.00,'0000000002',11000.00),(1772,'AB Bank','457','Dhaka',6000.00,'0000000003',12000.00),(1773,'AB Bank','458','Sylhet',7000.00,'0000000004',13000.00);
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_group`
--

DROP TABLE IF EXISTS `blood_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blood_group` (
  `Blood_Group_ID` decimal(2,0) NOT NULL,
  `Group_Name` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Blood_Group_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_group`
--

LOCK TABLES `blood_group` WRITE;
/*!40000 ALTER TABLE `blood_group` DISABLE KEYS */;
INSERT INTO `blood_group` VALUES (1,'A+'),(2,'B+'),(3,'AB+'),(4,'O+');
/*!40000 ALTER TABLE `blood_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educational_info`
--

DROP TABLE IF EXISTS `educational_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `educational_info` (
  `Educational_Info_ID` decimal(10,0) NOT NULL,
  `Institution` varchar(80) DEFAULT NULL,
  `Location` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`Educational_Info_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educational_info`
--

LOCK TABLES `educational_info` WRITE;
/*!40000 ALTER TABLE `educational_info` DISABLE KEYS */;
INSERT INTO `educational_info` VALUES (1,'CU','Chittagong'),(2,'DU','Dhaka'),(3,'RUET','Rajshahi'),(4,'CUET','Chittagong');
/*!40000 ALTER TABLE `educational_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `expense` (
  `Expense_ID` decimal(10,0) NOT NULL,
  `Expense_Sector` varchar(30) DEFAULT NULL,
  `Total_Expense` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Expense_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (1,'Education',10000.00),(2,'House Rent',15000.00),(3,'Food',12000.00),(4,'Cloth',6000.00),(5,'Medicine',7000.00),(6,'Tour',5000.00);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `family` (
  `Family_ID` decimal(20,0) NOT NULL,
  `Name` varchar(80) DEFAULT NULL,
  `Total_Income` decimal(10,2) DEFAULT NULL,
  `Total_Members` decimal(10,2) DEFAULT NULL,
  `Total_Child` decimal(2,0) DEFAULT NULL,
  `Total_Adult` decimal(2,0) DEFAULT NULL,
  `Total_Savings` decimal(10,2) DEFAULT NULL,
  `Family_Head` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`Family_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1,'Datta_Family',80000.00,6.00,2,3,10000.00,'Shely Chowdhury'),(2,'Alam',50000.00,10.00,6,4,200.00,'Nurul Alam'),(3,'Chowdhury',2.00,20.00,18,2,0.00,'Ahasunul Kader Chy'),(4,'Hasan',200000.00,4.00,2,2,100000.00,'Reshad'),(5,'Rahman',50000.00,6.00,3,3,40000.00,'Abdur Rahman');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_member_relationship`
--

DROP TABLE IF EXISTS `family_member_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `family_member_relationship` (
  `Family_ID` decimal(20,0) NOT NULL,
  `Member_ID` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Family_ID`,`Member_ID`),
  KEY `Member_ID` (`Member_ID`),
  CONSTRAINT `family_member_relationship_ibfk_1` FOREIGN KEY (`Family_ID`) REFERENCES `family` (`family_id`),
  CONSTRAINT `family_member_relationship_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_member_relationship`
--

LOCK TABLES `family_member_relationship` WRITE;
/*!40000 ALTER TABLE `family_member_relationship` DISABLE KEYS */;
INSERT INTO `family_member_relationship` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `family_member_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `income` (
  `Income_ID` decimal(20,0) NOT NULL,
  `Income_Source` varchar(20) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Income_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,'Job',100000.00),(2,'Job',12000.00),(3,'Job',35000.00),(4,'Job',23000.00);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `Member_ID` decimal(10,0) NOT NULL,
  `Name` varchar(80) DEFAULT NULL,
  `Total_Salary` decimal(10,2) DEFAULT NULL,
  `Age` decimal(3,0) DEFAULT NULL,
  `Blood_Group_ID` decimal(2,0) DEFAULT NULL,
  `Bank_Account_ID` decimal(10,0) DEFAULT NULL,
  `Birth_Date` varchar(30) DEFAULT NULL,
  `Marital_Status` varchar(5) DEFAULT NULL,
  `Educational_Info_ID` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Member_ID`),
  KEY `Blood_Group_ID` (`Blood_Group_ID`),
  KEY `Bank_Account_ID` (`Bank_Account_ID`),
  KEY `Educational_Info_ID` (`Educational_Info_ID`),
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`Blood_Group_ID`) REFERENCES `blood_group` (`blood_group_id`),
  CONSTRAINT `member_ibfk_2` FOREIGN KEY (`Bank_Account_ID`) REFERENCES `bank_account` (`bank_account_id`),
  CONSTRAINT `member_ibfk_3` FOREIGN KEY (`Educational_Info_ID`) REFERENCES `educational_info` (`educational_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Niladree',70000.00,26,1,1770,'06/07/1999','M',1),(2,'Anik',80000.00,25,2,1771,'04/01/1998','S',2),(3,'Nokhotro',0.00,7,3,1772,'06/07/2025','S',3),(4,'Arupa',12000.00,20,4,1773,'06/07/2019','S',4);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_expense_relationship`
--

DROP TABLE IF EXISTS `member_expense_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member_expense_relationship` (
  `Member_ID` decimal(10,0) NOT NULL,
  `Expense_ID` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Member_ID`,`Expense_ID`),
  KEY `Expense_ID` (`Expense_ID`),
  CONSTRAINT `member_expense_relationship_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`member_id`),
  CONSTRAINT `member_expense_relationship_ibfk_2` FOREIGN KEY (`Expense_ID`) REFERENCES `expense` (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_expense_relationship`
--

LOCK TABLES `member_expense_relationship` WRITE;
/*!40000 ALTER TABLE `member_expense_relationship` DISABLE KEYS */;
INSERT INTO `member_expense_relationship` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `member_expense_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_income_relationship`
--

DROP TABLE IF EXISTS `member_income_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member_income_relationship` (
  `Member_ID` decimal(10,0) NOT NULL,
  `Income_ID` decimal(20,0) NOT NULL,
  PRIMARY KEY (`Member_ID`,`Income_ID`),
  KEY `Income_ID` (`Income_ID`),
  CONSTRAINT `member_income_relationship_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`member_id`),
  CONSTRAINT `member_income_relationship_ibfk_2` FOREIGN KEY (`Income_ID`) REFERENCES `income` (`income_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_income_relationship`
--

LOCK TABLES `member_income_relationship` WRITE;
/*!40000 ALTER TABLE `member_income_relationship` DISABLE KEYS */;
INSERT INTO `member_income_relationship` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `member_income_relationship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-25 12:52:48
