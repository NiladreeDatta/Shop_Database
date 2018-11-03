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
INSERT INTO `bank_account` VALUES (1770,'Trust Bank','455','Chittagong',2000.00,'0000000001',10000.00),(1771,'AB Bank','456','Chittagong',5000.00,'0000000002',11000.00),(1772,'AB Bank','457','Dhaka',6000.00,'0000000003',12000.00),(1773,'AB Bank','458','Sylhet',7000.00,'0000000004',13000.00),(1774,'AB Bank','459','Dhaka',NULL,'0000000005',14000.00),(1775,'AB Bank','460','Dhaka',NULL,'0000000006',15000.00),(1776,'AB Bank','461','Dhaka',NULL,'0000000007',16000.00),(1777,'AB Bank','462','Dhaka',NULL,'0000000008',17000.00),(1778,'AB Bank','463','Dhaka',NULL,'0000000009',18000.00),(1779,'AB Bank','464','Dhaka',NULL,'0000000010',19000.00);
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
INSERT INTO `blood_group` VALUES (1,'A+'),(2,'B+'),(3,'AB+'),(4,'O+'),(5,'O+'),(6,'B+'),(7,'AB+'),(8,'A-'),(9,'B-'),(10,'B+');
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
INSERT INTO `educational_info` VALUES (1,'CU','Chittagong'),(2,'DU','Dhaka'),(3,'RUET','Rajshahi'),(4,'CUET','Chittagong'),(5,'RU','Rajshahi'),(6,'JU','Dhaka'),(7,'NU','Chittagong'),(8,'NSTU','Noakhali'),(9,'PSTU','Pabna'),(10,'SUST','Sylhet');
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
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Expense_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (1,'Education',10000.00,'monthly'),(2,'House Rent',15000.00,'monthly'),(3,'Food',12000.00,'monthly'),(4,'Cloth',6000.00,'yearly'),(5,'Medicine',7000.00,'yearly'),(6,'Tour',5000.00,'yearly'),(7,'Travel',5000.00,'yearly'),(8,'Electricity',2000.00,'monthly'),(9,'Gass',1000.00,'monthly'),(10,'Water',500.00,'monthly');
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
  `Building_NO` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Family_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1,'Datta_Family',80000.00,6.00,2,3,10000.00,'Shely Chowdhury','01'),(2,'Alam',50000.00,10.00,6,4,200.00,'Nurul Alam','02'),(3,'Chowdhury',2.00,20.00,18,2,0.00,'Ahasunul Kader Chy','03'),(4,'Hasan',200000.00,4.00,2,2,100000.00,'Reshad','04'),(5,'Rahman',50000.00,6.00,3,3,40000.00,'Abdur Rahman','05'),(6,'Maifee',20000.00,20.00,2,2,30000.00,'Maifee','06'),(7,'Nishat',2.00,20.00,18,2,0.00,'Ahsanul','03'),(8,'Rishat',5000.00,5.00,2,3,2000.00,'Rishat','08'),(9,'Sadia',20000.00,5.00,2,3,2000.00,'Rakin','09'),(10,'Rakin',20000.00,5.00,2,3,200.00,'Sadia','10');
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
INSERT INTO `family_member_relationship` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
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
INSERT INTO `income` VALUES (1,'Job',100000.00),(2,'Job',12000.00),(3,'Job',35000.00),(4,'Job',23000.00),(5,'Job',5000.00),(6,'Job',6000.00),(7,'Job',10000.00),(8,'Job',32000.00),(9,'Jon',32003.00),(10,'Job',3200.00);
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
  `height` decimal(5,2) DEFAULT NULL,
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
INSERT INTO `member` VALUES (1,'Niladree',70000.00,26,1,1770,'06/07/1999','M',1,NULL),(2,'Anik',80000.00,25,2,1771,'04/01/1998','S',2,NULL),(3,'Nokhotro',0.00,7,3,1772,'06/07/2025','S',3,NULL),(4,'Arupa',12000.00,20,4,1773,'06/07/2019','S',4,NULL),(5,'ABir',1300.00,21,5,1774,'06/07/2019','M',5,NULL),(6,'Noyon',1400.00,22,6,1775,'06/07/2019','S',6,NULL),(7,'Rupa',1500.00,23,7,1776,'06/07/2019','M',7,NULL),(8,'Snigdho',1600.00,24,8,1777,'06/07/2019','S',8,NULL),(9,'Arup',1700.00,25,9,1778,'06/07/2019','M',9,NULL),(10,'Abonii',1800.00,26,10,1779,'06/07/2019','S',10,NULL);
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
INSERT INTO `member_expense_relationship` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
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
INSERT INTO `member_income_relationship` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
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

-- Dump completed on 2018-10-27  1:29:04
