-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: SSTD
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `CYB`
--

DROP TABLE IF EXISTS `CYB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CYB` (
  `Date` varchar(10) COLLATE utf8_bin NOT NULL,
  `Open` float NOT NULL,
  `Close` float NOT NULL,
  `High` float NOT NULL,
  `Low` float NOT NULL,
  `Rate` float NOT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CYB`
--

LOCK TABLES `CYB` WRITE;
/*!40000 ALTER TABLE `CYB` DISABLE KEYS */;
INSERT INTO `CYB` VALUES ('2016-12-22',1993.04,1986.27,1993.04,1978.74,-0.27223),('2016-12-28',1968.15,1957.16,1971.51,1954.96,-0.582388),('2016-12-29',1956.72,1959.24,1971.94,1955.62,0.106532),('2017-01-03',1965.04,1963.26,1971.91,1959.14,0.0609564),('2017-01-04',1963.02,1991.56,1992.76,1959.57,1.44199),('2017-01-05',1990.7,1983.97,1993.71,1983.84,-0.381308),('2017-01-06',1980.84,1965.03,1982.4,1963.32,-0.954701),('2017-01-09',1962.2,1961.62,1968.87,1951.49,-0.173585),('2017-01-10',1960.1,1951.68,1967.47,1951.18,-0.506826),('2017-01-11',1947.42,1937.55,1959.3,1932.46,-0.723993),('2017-01-12',1935.52,1930.15,1946.59,1929.05,-0.382029),('2017-01-13',1930.11,1899.94,1934.48,1899.11,-1.56475),('2017-01-16',1897.45,1830.85,1897.82,1783.74,-3.63669);
/*!40000 ALTER TABLE `CYB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detail`
--

DROP TABLE IF EXISTS `Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Detail` (
  `ID` int(11) NOT NULL,
  `code` varchar(6) COLLATE utf8_bin NOT NULL,
  `After_Date` varchar(10) COLLATE utf8_bin NOT NULL,
  `Open` float NOT NULL,
  `High` float NOT NULL,
  `Low` float NOT NULL,
  `Close` float NOT NULL,
  `Rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detail`
--

LOCK TABLES `Detail` WRITE;
/*!40000 ALTER TABLE `Detail` DISABLE KEYS */;
INSERT INTO `Detail` VALUES (22,'600426','2016-12-19',12.75,13.2,12.67,13.07,1.79),(23,'601579','2016-12-19',15.52,15.52,15.02,15.17,-2.76),(24,'002481','2016-12-19',9.35,10.12,9.3,9.86,4.34),(25,'300376','2016-12-19',52.24,53.66,51.3,53.5,1.71),(22,'600426','2016-12-20',12.9,13.09,12.57,12.76,-2.37),(23,'601579','2016-12-20',15.13,15.41,14.78,14.82,-2.31),(24,'002481','2016-12-20',9.77,9.89,9.45,9.63,-2.33),(25,'300376','2016-12-20',53.4,53.5,48.33,48.69,-8.99),(22,'600426','2016-12-21',12.82,13.05,12.75,12.87,0.86),(23,'601579','2016-12-21',14.83,15.04,14.71,15,1.21),(24,'002481','2016-12-21',9.61,9.68,9.19,9.36,-2.8),(25,'300376','2016-12-21',49.15,49.78,46.1,49.15,0.94),(22,'600426','2016-12-22',12.8,13.58,12.71,13.5,4.9),(23,'601579','2016-12-22',14.92,15,14.4,14.42,-3.87),(24,'002481','2016-12-22',9.3,9.54,9.12,9.24,-1.28),(25,'300376','2016-12-22',48.58,49.13,47.81,48.07,-2.2),(22,'600426','2016-12-23',13.5,13.71,13.2,13.51,0.07),(23,'601579','2016-12-23',14.4,14.57,14.25,14.42,0),(24,'002481','2016-12-23',9.3,9.47,9.16,9.28,0.43),(25,'300376','2016-12-23',47.79,49.27,47.47,47.79,-0.58),(22,'600426','2016-12-26',13.51,13.61,13.16,13.48,-0.22),(23,'601579','2016-12-26',14.4,14.5,14.24,14.49,0.49),(24,'002481','2016-12-26',9.2,9.27,9.01,9.25,-0.32),(25,'300376','2016-12-26',47,50.65,46.35,50.33,5.31),(1,'002455','2016-12-28',12.82,12.95,12.6,12.76,-1.09),(1,'002455','2016-12-29',12.73,13.1,12.41,12.88,0.94),(2,'002166','2016-12-29',12.62,12.72,12.35,12.37,-2.52),(1,'002455','2016-12-30',12.77,13.07,12.72,12.77,-0.85),(2,'002166','2016-12-30',12.32,12.42,12.25,12.37,0),(3,'600099','2016-12-30',19.7,20.67,18.8,18.93,-6.01),(4,'600227','2016-12-30',7.13,7.38,7.04,7.25,-1.23),(5,'600311','2016-12-30',7.4,7.78,7.39,7.57,2.99),(6,'002028','2016-12-30',13.22,13.47,13.08,13.18,-0.98),(1,'002455','2017-01-03',12.69,13.28,12.69,12.95,1.41),(2,'002166','2017-01-03',12.35,12.42,11.96,11.97,-3.23),(3,'600099','2017-01-03',18.99,20.82,18.85,20.82,9.98),(4,'600227','2017-01-03',7.22,7.29,7.16,7.23,-0.28),(5,'600311','2017-01-03',7.52,7.71,7.49,7.63,0.79),(6,'002028','2017-01-03',13.23,13.76,13.15,13.75,4.32),(1,'002455','2017-01-04',12.95,13.09,12.6,12.8,-1.16),(2,'002166','2017-01-04',11.9,12.01,11.71,11.99,0.17),(3,'600099','2017-01-04',20.86,21.02,18.74,19.95,-4.18),(4,'600227','2017-01-04',7.2,7.38,7.18,7.35,1.66),(5,'600311','2017-01-04',7.6,7.62,7.43,7.59,-0.52),(6,'002028','2017-01-04',13.69,13.95,13.54,13.94,1.38),(1,'002455','2017-01-05',12.82,12.95,12.66,12.77,-0.23),(2,'002166','2017-01-05',11.91,12.08,11.8,12.03,0.33),(3,'600099','2017-01-05',19.6,19.9,18.9,19.52,-2.16),(4,'600227','2017-01-05',7.39,7.49,7.32,7.36,0.14),(5,'600311','2017-01-05',7.61,8.26,7.51,8,5.4),(6,'002028','2017-01-05',13.9,13.93,13.74,13.77,-1.22),(7,'600123','2017-01-05',8.15,8.35,8.15,8.2,0.12),(8,'600227','2017-01-05',7.39,7.49,7.32,7.36,0.14),(2,'002166','2017-01-06',11.97,12.25,11.9,12.1,0.58),(3,'600099','2017-01-06',19.29,20.08,18.18,19.03,-2.51),(4,'600227','2017-01-06',7.3,7.98,7.3,7.69,4.48),(5,'600311','2017-01-06',7.92,7.95,7.75,7.81,-2.38),(6,'002028','2017-01-06',13.76,13.92,13.57,13.58,-1.38),(7,'600123','2017-01-06',8.19,8.3,8.12,8.23,0.37),(8,'600227','2017-01-06',7.3,7.98,7.3,7.69,4.48),(9,'600284','2017-01-06',13.17,13.85,13.12,13.48,1.74),(10,'000612','2017-01-06',11.66,11.95,11.66,11.77,-0.51),(11,'002057','2017-01-06',17.55,17.66,17.11,17.34,-2.14),(3,'600099','2017-01-09',18.73,19.6,18.23,18.99,-0.21),(4,'600227','2017-01-09',7.65,7.77,7.56,7.63,-0.78),(5,'600311','2017-01-09',7.76,7.9,7.62,7.83,0.26),(6,'002028','2017-01-09',13.54,13.86,13.47,13.79,1.55),(7,'600123','2017-01-09',8.21,8.28,8.05,8.14,-1.09),(8,'600227','2017-01-09',7.65,7.77,7.56,7.63,-0.78),(9,'600284','2017-01-09',13.32,13.55,13.18,13.52,0.3),(10,'000612','2017-01-09',11.8,11.97,11.34,11.44,-2.8),(11,'002057','2017-01-09',17.29,17.29,16.42,16.9,-2.54),(7,'600123','2017-01-10',8.13,8.24,8.06,8.14,0),(8,'600227','2017-01-10',7.61,7.69,6.95,7.11,-6.82),(9,'600284','2017-01-10',13.39,13.56,13,13.01,-3.77),(10,'000612','2017-01-10',11.61,11.9,11.48,11.69,2.19),(11,'002057','2017-01-10',17.03,17.28,16.77,17.11,1.24),(12,'600686','2017-01-10',15.05,15.1,14.81,14.94,-1.06),(13,'000619','2017-01-10',12.57,12.59,12.27,12.29,-2.15),(14,'000655','2017-01-10',9.92,10.68,9.76,10.18,2.41),(15,'600858','2017-01-10',10.21,11.26,10.1,10.64,3.91),(16,'600727','2017-01-10',11.13,11.24,10.86,10.88,-2.86),(17,'600830','2017-01-10',12.08,12.09,11.75,11.79,-2.56),(18,'000683','2017-01-10',3.29,3.38,3.25,3.3,0.3),(7,'600123','2017-01-11',8.14,8.24,8,8.05,-1.11),(8,'600227','2017-01-11',7.05,7.07,6.91,6.92,-2.67),(9,'600284','2017-01-11',12.9,13.15,12.87,13.03,0.15),(10,'000612','2017-01-11',11.63,11.7,11.05,11.19,-4.28),(11,'002057','2017-01-11',17,17.08,15.96,16.1,-5.9),(12,'600686','2017-01-11',14.86,14.89,14.5,14.62,-2.14),(13,'000619','2017-01-11',12.25,12.59,12.24,12.34,0.41),(14,'000655','2017-01-11',10.1,10.24,9.73,9.75,-4.22),(15,'600858','2017-01-11',10.45,10.53,10.12,10.33,-2.91),(16,'600727','2017-01-11',10.83,10.96,10.53,10.61,-2.48),(17,'600830','2017-01-11',11.82,12.44,11.69,12.16,3.14),(18,'000683','2017-01-11',3.28,3.37,3.24,3.25,-1.52),(7,'600123','2017-01-12',8,8.04,7.77,7.84,-2.61),(8,'600227','2017-01-12',6.91,7.02,6.91,6.92,0),(9,'600284','2017-01-12',13.04,13.07,12.7,12.82,-1.61),(10,'000612','2017-01-12',11.31,11.39,10.79,10.91,-2.5),(11,'002057','2017-01-12',16.11,16.22,15.84,15.96,-0.87),(12,'600686','2017-01-12',14.54,14.62,14.39,14.57,-0.34),(13,'000619','2017-01-12',12.42,13.57,12.36,13.57,9.97),(14,'000655','2017-01-12',9.75,9.85,9.57,9.67,-0.82),(15,'600858','2017-01-12',10.2,10.23,9.9,10.02,-3),(16,'600727','2017-01-12',10.58,10.76,10.44,10.68,0.66),(17,'600830','2017-01-12',12,12.17,11.85,11.91,-2.06),(18,'000683','2017-01-12',3.25,3.28,3.15,3.16,-2.77),(19,'600698','2017-01-12',9.7,10.17,9.47,9.86,-0.7),(20,'002259','2017-01-12',10.85,11.06,10.6,10.64,-1.66),(21,'002356','2017-01-12',26.45,26.77,25.93,26.32,-0.64),(26,'002483','2017-01-12',14.98,15,14.11,14.33,-4.53),(27,'300176','2017-01-12',32,34.87,31.8,34.4,6.34),(9,'600284','2017-01-13',12.91,12.92,12.36,12.39,-3.35),(10,'000612','2017-01-13',11.07,11.16,10.81,10.83,-0.73),(11,'002057','2017-01-13',15.96,16.05,14.9,15.1,-5.39),(12,'600686','2017-01-13',14.57,14.7,14.51,14.63,0.41),(13,'000619','2017-01-13',13.78,13.99,12.92,13.02,-4.05),(14,'000655','2017-01-13',9.65,9.78,9.29,9.35,-3.31),(15,'600858','2017-01-13',10,10.08,9.62,9.73,-2.89),(16,'600727','2017-01-13',10.65,10.7,10.34,10.35,-3.09),(17,'600830','2017-01-13',11.91,12.08,11.4,11.45,-3.86),(18,'000683','2017-01-13',3.15,3.21,3.12,3.14,-0.63),(19,'600698','2017-01-13',9.8,10.1,9.5,9.68,-1.83),(20,'002259','2017-01-13',10.56,10.77,10.36,10.41,-2.16),(21,'002356','2017-01-13',26.3,27.11,26.16,26.89,2.17),(26,'002483','2017-01-13',14.28,14.48,13.55,13.61,-5.02),(27,'300176','2017-01-13',34.02,34.78,33.37,34.49,0.26),(28,'600197','2017-01-13',15.59,15.74,15.38,15.47,-1.59),(29,'600966','2017-01-13',4.1,4.3,4.07,4.19,1.45),(30,'603126','2017-01-13',12.9,13.13,12.6,12.62,-2.77),(31,'603300','2017-01-13',18.65,18.65,17.5,18.01,-3.79),(12,'600686','2017-01-16',14.63,14.95,13.5,14.11,-3.55),(13,'000619','2017-01-16',12.84,12.95,11.72,12.39,-4.84),(14,'000655','2017-01-16',9.4,9.75,8.58,9.06,-3.1),(15,'600858','2017-01-16',9.71,9.98,9.09,9.35,-3.91),(16,'600727','2017-01-16',10.26,10.3,9.32,9.62,-7.05),(17,'600830','2017-01-16',11.38,11.48,10.5,10.91,-4.72),(18,'000683','2017-01-16',3.14,3.17,2.97,3.09,-1.59),(19,'600698','2017-01-16',9.32,9.38,8.71,8.71,-10.02),(20,'002259','2017-01-16',10.3,10.39,9.42,9.52,-8.55),(21,'002356','2017-01-16',26.8,27,25.1,26.36,-1.97),(26,'002483','2017-01-16',13.75,14.11,12.9,13.89,2.06),(27,'300176','2017-01-16',34.1,34.66,32.15,34.55,0.17),(28,'600197','2017-01-16',15.41,15.65,14.6,15.22,-1.62),(29,'600966','2017-01-16',4.2,4.48,3.96,4.22,0.72),(30,'603126','2017-01-16',12.5,12.55,11.36,11.91,-5.63),(31,'603300','2017-01-16',18.05,18.58,16.55,18.51,2.78),(12,'600686','2017-01-17',14.02,14.25,13.8,14.08,-0.21),(13,'000619','2017-01-17',12.2,12.65,11.85,12.55,1.29),(14,'000655','2017-01-17',9.03,9.09,8.65,9.07,0.11),(15,'600858','2017-01-17',9.25,9.61,9.25,9.54,2.03),(16,'600727','2017-01-17',9.55,9.83,9.38,9.82,2.08),(17,'600830','2017-01-17',10.85,11,10.56,10.97,0.55),(18,'000683','2017-01-17',3.06,3.14,3.05,3.14,1.62),(19,'600698','2017-01-17',8.6,9.58,8.52,9.58,9.99),(20,'002259','2017-01-17',9.52,9.86,9.32,9.74,2.31),(21,'002356','2017-01-17',26.1,26.1,24.97,26.05,-1.18),(26,'002483','2017-01-17',13.74,15.28,13.31,14.88,7.13),(27,'300176','2017-01-17',34.29,34.5,33.2,34.1,-1.3),(28,'600197','2017-01-17',15.14,15.74,15.1,15.73,3.35),(29,'600966','2017-01-17',4.15,4.64,4.12,4.6,9),(30,'603126','2017-01-17',11.8,12.15,11.57,11.96,0.42),(31,'603300','2017-01-17',18.3,18.71,16.86,18.53,0.11),(19,'600698','2017-01-18',9.65,10.42,9.38,10.15,5.95),(20,'002259','2017-01-18',9.74,9.94,9.6,9.7,-0.41),(21,'002356','2017-01-18',25.92,25.98,25.36,25.78,-1.04),(26,'002483','2017-01-18',14.45,14.98,14.22,14.45,-2.89),(27,'300176','2017-01-18',33.7,34.01,32.81,33.74,-1.06),(28,'600197','2017-01-18',15.93,16.54,15.75,16.26,3.37),(29,'600966','2017-01-18',4.5,4.57,4.43,4.47,-2.83),(30,'603126','2017-01-18',11.81,12.06,11.78,11.82,-1.17),(31,'603300','2017-01-18',18.5,19.3,18.5,19.2,3.62),(32,'600282','2017-01-18',3.57,3.66,3.54,3.6,0.56),(33,'600642','2017-01-18',6.12,6.13,6.07,6.1,-0.33),(34,'600760','2017-01-18',23.85,23.89,23.67,23.89,5.01),(35,'600966','2017-01-18',4.5,4.57,4.43,4.47,-2.83),(36,'002302','2017-01-18',9.5,10.43,9.43,10.43,10.02),(19,'600698','2017-01-19',9.86,9.9,9.16,9.4,-7.39),(20,'002259','2017-01-19',9.7,9.88,9.6,9.73,0.31),(21,'002356','2017-01-19',25.78,26.01,25.51,25.97,0.74),(26,'002483','2017-01-19',14.26,14.35,13.79,14.09,-2.49),(27,'300176','2017-01-19',33,34.17,33,33.71,-0.09),(28,'600197','2017-01-19',16.21,16.21,15.89,16,-1.6),(29,'600966','2017-01-19',4.44,4.65,4.35,4.38,-2.01),(30,'603126','2017-01-19',11.75,12.1,11.58,11.94,1.02),(31,'603300','2017-01-19',18.9,18.99,18.39,18.67,-2.76),(32,'600282','2017-01-19',3.58,3.61,3.53,3.58,-0.56),(33,'600642','2017-01-19',6.1,6.12,6.06,6.08,-0.33),(34,'600760','2017-01-19',25.08,25.08,25.08,25.08,4.98),(35,'600966','2017-01-19',4.44,4.65,4.35,4.38,-2.01),(36,'002302','2017-01-19',11,11.47,10.55,10.68,2.4),(37,'603300','2017-01-19',18.9,18.99,18.39,18.67,-2.76),(38,'600148','2017-01-19',40.9,42.68,38.54,38.9,-9.15),(39,'603311','2017-01-19',25.58,26.11,25.39,25.63,-1.08),(28,'600197','2017-01-20',16.06,16.17,15.87,16.04,0.25),(29,'600966','2017-01-20',4.35,4.55,4.35,4.5,2.74),(30,'603126','2017-01-20',11.89,12.13,11.84,12.09,1.26),(31,'603300','2017-01-20',18.49,19.2,18.37,18.87,1.07),(32,'600282','2017-01-20',3.58,3.7,3.53,3.59,0.28),(33,'600642','2017-01-20',6.08,6.12,6.06,6.1,0.33),(34,'600760','2017-01-20',25.99,25.99,23.83,24.34,-2.95),(35,'600966','2017-01-20',4.35,4.55,4.35,4.5,2.74),(36,'002302','2017-01-20',10.79,11.75,10.3,11.75,10.02),(37,'603300','2017-01-20',18.49,19.2,18.37,18.87,1.07),(38,'600148','2017-01-20',39,42.79,38,42.79,10),(39,'603311','2017-01-20',25.59,26.87,25.42,26.07,1.72);
/*!40000 ALTER TABLE `Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `History`
--

DROP TABLE IF EXISTS `History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `History` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `Code` varchar(6) COLLATE utf8_bin NOT NULL,
  `Name` varchar(16) COLLATE utf8_bin NOT NULL,
  `Enter_Date` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `History`
--

LOCK TABLES `History` WRITE;
/*!40000 ALTER TABLE `History` DISABLE KEYS */;
INSERT INTO `History` VALUES (22,'600426','华鲁恒升','2016-12-19'),(23,'601579','会稽山','2016-12-19'),(24,'002481','双塔食品','2016-12-19'),(25,'300376','易事特','2016-12-19'),(1,'002455','百川股份','2016-12-28'),(2,'002166','莱茵生物','2016-12-28'),(3,'600099','林海股份','2016-12-29'),(4,'600227','赤天化','2016-12-29'),(5,'600311','荣华实业','2016-12-29'),(6,'002028','思源电气','2016-12-29'),(7,'600123','兰花科创','2017-1-4'),(8,'600227','赤天化','2017-1-4'),(9,'600284','浦东建设','2017-1-4'),(10,'000612','焦作万方','2017-1-4'),(11,'002057','中钢天源','2017-1-5'),(12,'600686','金龙汽车','2017-01-09'),(13,'000619','海螺型材','2017-01-09'),(14,'000655','金岭矿业','2017-01-09'),(15,'600858','银座股份','2017-01-09'),(16,'600727','鲁北化工','2017-01-09'),(17,'600830','香溢融通','2017-01-09'),(18,'000683','远兴能源','2017-01-09'),(19,'600698','湖南天雁','2017-1-11'),(20,'002259','升达林业','2017-1-11'),(21,'002356','赫美集团','2017-1-11'),(26,'002483','润邦股份','2016-1-11'),(27,'300176','鸿特精密','2016-1-11'),(28,'600197','伊力特','2016-1-12'),(29,'600966','博汇纸业','2016-1-12'),(30,'603126','中材节能','2016-1-12'),(31,'603300','华铁科技','2016-1-12');
/*!40000 ALTER TABLE `History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SH`
--

DROP TABLE IF EXISTS `SH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SH` (
  `Date` varchar(10) COLLATE utf8_bin NOT NULL,
  `Open` float NOT NULL,
  `Close` float NOT NULL,
  `High` float NOT NULL,
  `Low` float NOT NULL,
  `Rate` float NOT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SH`
--

LOCK TABLES `SH` WRITE;
/*!40000 ALTER TABLE `SH` DISABLE KEYS */;
INSERT INTO `SH` VALUES ('2016-12-28',3113.77,3102.24,3118.78,3094.55,-0.399025),('2016-12-29',3095.84,3096.1,3111.8,3087.34,-0.197886),('2016-12-30',3097.35,3103.64,3108.84,3089.99,0.243549),('2017-01-03',3105.31,3135.92,3136.46,3105.31,1.04018),('2017-01-04',3133.79,3158.79,3160.1,3130.11,0.729393),('2017-01-05',3157.91,3165.41,3168.5,3154.28,0.209476),('2017-01-06',3163.78,3154.32,3172.03,3153.03,-0.350346),('2017-01-09',3148.53,3171.24,3173.14,3147.74,0.536255),('2017-01-10',3167.57,3161.67,3174.58,3157.33,-0.301614),('2017-01-11',3156.69,3136.75,3167.03,3136.27,-0.788121),('2017-01-12',3133.6,3119.29,3144.97,3115.98,-0.556783),('2017-01-13',3116.08,3112.76,3130.51,3102.16,-0.209157),('2017-01-16',3104.49,3103.43,3105.14,3044.29,-0.299939);
/*!40000 ALTER TABLE `SH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stack_Pool`
--

DROP TABLE IF EXISTS `Stack_Pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stack_Pool` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Code` varchar(6) COLLATE utf8_bin NOT NULL,
  `Name` varchar(16) COLLATE utf8_bin NOT NULL,
  `Enter_Date` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stack_Pool`
--

LOCK TABLES `Stack_Pool` WRITE;
/*!40000 ALTER TABLE `Stack_Pool` DISABLE KEYS */;
INSERT INTO `Stack_Pool` VALUES (32,'600282','南钢股份','2017-1-18'),(33,'600642','申能股份','2017-1-18'),(34,'600760','ST黑豹','2017-1-18'),(35,'600966','博汇纸业','2017-1-18'),(36,'002302','西部建设','2017-1-18'),(37,'603300','华铁科技','2017-1-18'),(38,'600148','长春一东','2017-1-18'),(39,'603311','金海环境','2017-1-18'),(40,'601211','国泰君安','2017-1-20');
/*!40000 ALTER TABLE `Stack_Pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `Code` varchar(6) COLLATE utf8_bin NOT NULL,
  `Name` varchar(16) COLLATE utf8_bin NOT NULL,
  `Enter_Date` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (3,'600633','浙报传媒','2016-12-19'),(4,'601579','会稽山','2016-12-19'),(5,'000716','黑芝麻','2016-12-19'),(6,'002481','双塔食品','2016-12-19'),(7,'600609','金杯汽车','2016-12-19');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-20 19:07:46
