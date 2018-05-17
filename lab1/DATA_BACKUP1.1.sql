-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: film_db
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
INSERT INTO `ACTIN` VALUES (1,1,'Y',95),(1,2,'N',90),(1,3,'Y',92),(2,1,'N',90),(2,2,'Y',95),(2,3,'Y',92),(3,3,'Y',95),(4,4,'Y',92),(5,5,'Y',95),(6,6,'Y',93),(7,1,'N',97),(8,1,'Y',98),(8,2,'Y',92),(8,3,'N',95),(8,4,'Y',87),(9,5,'N',95),(10,6,'N',87),(11,8,'Y',80),(11,11,'Y',95),(12,12,'Y',89),(12,14,'N',80),(13,14,'Y',95),(14,14,'Y',89);
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
INSERT INTO `ACTOR` VALUES (1,'胡晋源','男',1999),(2,'胡晋发','男',1982),(3,'胡晋啊','男',1968),(4,'小明','女',1997),(5,'小红','女',1996),(6,'包靖远','男',1956),(7,'何涌硕','男',1998),(8,'十多个','女',1988),(9,'合法','男',1978),(10,'大概','男',1958),(11,'吴京','男',1979),(12,'冯小刚','男',1962),(13,'周星驰','男',1962),(14,'黄圣依','女',1970),(15,'阿萨德','男',1989);
/*!40000 ALTER TABLE `ACTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ACTOR_80s`
--

DROP TABLE IF EXISTS `ACTOR_80s`;
/*!50001 DROP VIEW IF EXISTS `ACTOR_80s`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ACTOR_80s` AS SELECT 
 1 AS `ACTID`,
 1 AS `ACTOR_NAME`,
 1 AS `BIRTH_YEAR`,
 1 AS `Is_LEADING_COUNT`,
 1 AS `MAX_GREAD`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `FILM` VALUES (1,'电影1','喜剧片','胡晋源',109,'Y',98),(2,'电影2','动作片','吴宇森',109,'Y',85),(3,'电影3','恐怖片','吴宇森',109,'Y',50),(4,'电影4','科幻片','文柱锟',109,'Y',77),(5,'电影5','故事片','冯小刚',109,'Y',98),(6,'电影6','喜剧片','郭德纲',109,'Y',89),(7,'西游','喜剧片','周星驰',123,'N',90),(8,'战狼','战争片','吴京',90,'N',80),(9,'香港','枪战片','王晶',91,'N',60),(10,'大话西游','sdf','周星驰',92,'N',99),(11,'战狼2','战争片','吴京',113,'N',96),(12,'老炮','剧情片','冯小刚',101,'N',85),(13,'芳华','剧情片','冯小刚',98,'N',95),(14,'功夫','喜剧片','周星驰',100,'Y',96),(15,'功夫足球','喜剧片','周星驰',86,'N',90),(16,'喜剧之王','喜剧片','周星驰',91,'N',86),(17,'没有评分','动作片','王晶',82,'Y',NULL);
/*!40000 ALTER TABLE `FILM` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ZXC_XJ 
	  before INSERT ON `FILM`
	  FOR EACH ROW 
      BEGIN
      if(NEW.DNAME = '周星驰')
      then set NEW.FTYPE = '喜剧片';
      end if;
-- 	  UPDATE `FILM` SET `FTYPE` = '喜剧片' 
-- 	  WHERE NEW.`DNAME` = '周星驰';	
      end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
INSERT INTO `SHOWING` VALUES (1,1,30,2018,2),(1,2,30,2018,3),(1,3,40,2017,2),(1,4,30,2018,3),(2,1,45,2018,2),(2,2,25,2018,3),(2,3,20,2018,2),(3,2,60,2018,12),(4,1,25,2016,3),(4,2,30,2016,3),(5,1,30,2017,7),(5,2,32,2016,6),(8,1,35,2017,6),(8,2,32,2017,6),(8,3,30,2017,7),(8,4,31,2017,8),(8,5,40,2017,5),(11,1,45,2018,2),(11,2,40,2018,2),(11,3,38,2018,3),(14,1,30,2017,6),(14,2,30,2016,9),(17,1,40,2017,3),(17,2,40,2017,4),(17,3,40,2017,3),(17,4,40,2017,4);
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
INSERT INTO `THEATER` VALUES (1,'CGV','洪山区','光谷德意风情街'),(2,'成龙耀莱','洪山区','光谷'),(3,'横店影院','汉口区','江汉路'),(4,'中国巨幕','洪山区','光谷'),(5,'星耀美莱','洪山区','珞喻路');
/*!40000 ALTER TABLE `THEATER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YOUNG_ACTOR`
--

DROP TABLE IF EXISTS `YOUNG_ACTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `YOUNG_ACTOR` (
  `ACTID` int(11) NOT NULL,
  `ANAME` char(30) DEFAULT NULL,
  `SEX` char(2) DEFAULT NULL,
  `BYEAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YOUNG_ACTOR`
--

LOCK TABLES `YOUNG_ACTOR` WRITE;
/*!40000 ALTER TABLE `YOUNG_ACTOR` DISABLE KEYS */;
INSERT INTO `YOUNG_ACTOR` VALUES (1,'胡晋源','男',1999),(4,'小明','女',1997),(5,'小红','女',1996),(7,'何涌硕','男',1998);
/*!40000 ALTER TABLE `YOUNG_ACTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'film_db'
--

--
-- Dumping routines for database 'film_db'
--

--
-- Final view structure for view `ACTOR_80s`
--

/*!50001 DROP VIEW IF EXISTS `ACTOR_80s`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ACTOR_80s` AS select `ACTOR`.`ACTID` AS `ACTID`,`ACTOR`.`ANAME` AS `ACTOR_NAME`,`ACTOR`.`BYEAR` AS `BIRTH_YEAR`,count(1) AS `Is_LEADING_COUNT`,max(`ACTIN`.`GRADE`) AS `MAX_GREAD` from (`ACTOR` join `ACTIN`) where ((`ACTOR`.`BYEAR` >= 1980) and (`ACTOR`.`BYEAR` <= 1990) and (`ACTOR`.`ACTID` = `ACTIN`.`ACTID`) and (`ACTIN`.`ISLEADING` = 'Y')) group by `ACTOR`.`ACTID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 23:53:56
