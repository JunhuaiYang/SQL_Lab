-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: lab_1
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ACTIN`
--

DROP TABLE IF EXISTS `ACTIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACTIN` (
  `ACTID` int(11) NOT NULL,
  `FID` int(11) NOT NULL,
  `ISLEADING` char(1) DEFAULT NULL,
  `GRADE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ACTID`,`FID`),
  KEY `FID` (`FID`),
  CONSTRAINT `ACTIN_ibfk_1` FOREIGN KEY (`ACTID`) REFERENCES `ACTOR` (`ACTID`),
  CONSTRAINT `ACTIN_ibfk_2` FOREIGN KEY (`FID`) REFERENCES `FILM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACTIN`
--

LOCK TABLES `ACTIN` WRITE;
/*!40000 ALTER TABLE `ACTIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACTIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACTOR`
--

DROP TABLE IF EXISTS `ACTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACTOR` (
  `ACTID` int(11) NOT NULL,
  `ANAME` char(30) DEFAULT NULL,
  `SEX` char(2) DEFAULT NULL,
  `BYEAR` int(11) DEFAULT NULL,
  PRIMARY KEY (`ACTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACTOR`
--

LOCK TABLES `ACTOR` WRITE;
/*!40000 ALTER TABLE `ACTOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FILM`
--

DROP TABLE IF EXISTS `FILM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FILM` (
  `FID` int(11) NOT NULL,
  `FNAME` char(30) DEFAULT NULL,
  `FTYPE` char(10) DEFAULT NULL,
  `DNAME` char(30) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `IS3D` char(1) DEFAULT NULL,
  `GRADE` int(11) DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FILM`
--

LOCK TABLES `FILM` WRITE;
/*!40000 ALTER TABLE `FILM` DISABLE KEYS */;
INSERT INTO `FILM` VALUES (1,'sdf1','gfh','sdfhgf',120,'Y',80);
/*!40000 ALTER TABLE `FILM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHOWING`
--

DROP TABLE IF EXISTS `SHOWING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHOWING` (
  `FID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `YEARS` int(11) DEFAULT NULL,
  `MONTHS` int(11) DEFAULT NULL,
  PRIMARY KEY (`FID`,`TID`),
  KEY `TID` (`TID`),
  CONSTRAINT `SHOWING_ibfk_1` FOREIGN KEY (`FID`) REFERENCES `FILM` (`FID`),
  CONSTRAINT `SHOWING_ibfk_2` FOREIGN KEY (`TID`) REFERENCES `THEATER` (`TID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHOWING`
--

LOCK TABLES `SHOWING` WRITE;
/*!40000 ALTER TABLE `SHOWING` DISABLE KEYS */;
/*!40000 ALTER TABLE `SHOWING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `THEATER`
--

DROP TABLE IF EXISTS `THEATER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `THEATER` (
  `TID` int(11) NOT NULL,
  `TNAME` char(20) DEFAULT NULL,
  `TAREA` char(20) DEFAULT NULL,
  `ADDRESS` char(30) DEFAULT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `THEATER`
--

LOCK TABLES `THEATER` WRITE;
/*!40000 ALTER TABLE `THEATER` DISABLE KEYS */;
/*!40000 ALTER TABLE `THEATER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-08 11:42:15
