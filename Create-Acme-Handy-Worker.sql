
USE `b6aunhfpisossiiivxqr`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: acme-handy-worker
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flagged` bit(1) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_35h1nqybvq43ekf4b0p6m73cd` (`user`),
  CONSTRAINT `FK_35h1nqybvq43ekf4b0p6m73cd` FOREIGN KEY (`user`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flagged` bit(1) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6j8gc8pi770auwuu59hx12q3i` (`user`),
  CONSTRAINT `FK_6j8gc8pi770auwuu59hx12q3i` FOREIGN KEY (`user`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1741,0,'Calle de admins, 1, 3¬∫D','admin1@gmail.com','\0','','Samuel','+34 688888888','http:\\\\www.photo.com/test9','Lorenzo',1730),(1742,0,'Calle de admins, 1, 3¬∫D','admin2@gmail.com','\0','','Samuela','+34 610101010','http:\\\\www.photo.com/test10','Lorenzo',1731);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d285hl23ejq8efmum8hbvqrt2` (`parent`),
  CONSTRAINT `FK_d285hl23ejq8efmum8hbvqrt2` FOREIGN KEY (`parent`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1804,0,'CATEGORY',NULL),(1805,0,'VEHICULOS',1804),(1806,0,'BICICLETAS',1805),(1807,0,'Carpentry',1804),(1808,0,'Cleaning',1804),(1809,0,'Concrete work',1804),(1810,0,'Doors',1807),(1811,0,'Electrical wiring',1804),(1812,0,'Fan installation',1811),(1813,0,'Fence installation',1807),(1814,0,'Fence fixing',1807),(1815,0,'Home security system',1811),(1816,0,'Insulation installation',1804),(1817,0,'Solar panels',1807),(1818,0,'Soundproofing',1804),(1819,0,'Sprinkler repair',1804),(1820,0,'Windows repair',1804);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `reference` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qq8eb6tdec6a0mvr5gcdf33iu` (`reference`),
  CONSTRAINT `FK_qq8eb6tdec6a0mvr5gcdf33iu` FOREIGN KEY (`reference`) REFERENCES `fixup_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint_attachments`
--

DROP TABLE IF EXISTS `complaint_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint_attachments` (
  `complaint` int(11) NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  KEY `FK_f4g1vv33vade4pm8t0qim14os` (`complaint`),
  CONSTRAINT `FK_f4g1vv33vade4pm8t0qim14os` FOREIGN KEY (`complaint`) REFERENCES `complaint` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint_attachments`
--

LOCK TABLES `complaint_attachments` WRITE;
/*!40000 ALTER TABLE `complaint_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `ccv` int(11) NOT NULL,
  `expiration_month` int(11) NOT NULL,
  `expiration_year` int(11) NOT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `credit_card_make` int(11) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2kvi9ihgds5toybsamlws7n5q` (`credit_card_make`),
  CONSTRAINT `FK_2kvi9ihgds5toybsamlws7n5q` FOREIGN KEY (`credit_card_make`) REFERENCES `credit_card_make` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES (1802,0,456,10,22,'Antonio Gonz√°lez','4165282637872893',1798,1733),(1803,0,333,4,20,'Paco Pepe Lopez','4163332637833393',1799,1741);
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card_make`
--

DROP TABLE IF EXISTS `credit_card_make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card_make` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_make`
--

LOCK TABLES `credit_card_make` WRITE;
/*!40000 ALTER TABLE `credit_card_make` DISABLE KEYS */;
INSERT INTO `credit_card_make` VALUES (1798,0,'VISA'),(1799,0,'MASTER'),(1800,0,'DINNERS'),(1801,0,'AMEX');
/*!40000 ALTER TABLE `credit_card_make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `social_profile` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1a2at8tjo3u0d57c5nvhkucyn` (`owner`),
  KEY `FK_mtp70wjb8gnwf35w3oolhe6ro` (`social_profile`),
  CONSTRAINT `FK_mtp70wjb8gnwf35w3oolhe6ro` FOREIGN KEY (`social_profile`) REFERENCES `social_profile` (`id`),
  CONSTRAINT `FK_1a2at8tjo3u0d57c5nvhkucyn` FOREIGN KEY (`owner`) REFERENCES `handy_worker` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
INSERT INTO `curriculum` VALUES (1790,0,'worker1@gmail.com','Luis Ram√≥n Guti√©rrez','+34 633333333','http:\\\\www.photo.com/test3','021097-ABCDEF',1735,1788);
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_records`
--

DROP TABLE IF EXISTS `curriculum_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum_records` (
  `curriculum` int(11) NOT NULL,
  `records` int(11) NOT NULL,
  UNIQUE KEY `UK_3412u4m9wtsy04haxnytjsn5m` (`records`),
  KEY `FK_fsi47or6qxbesr2rieso4fsdj` (`curriculum`),
  CONSTRAINT `FK_fsi47or6qxbesr2rieso4fsdj` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_records`
--

LOCK TABLES `curriculum_records` WRITE;
/*!40000 ALTER TABLE `curriculum_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flagged` bit(1) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_b7a4o0cm12eyxln4hcd3q1ujf` (`user`),
  CONSTRAINT `FK_b7a4o0cm12eyxln4hcd3q1ujf` FOREIGN KEY (`user`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1733,0,'Calle de customers, 1, 3¬∫D','customer1@gmail.com','\0','Pablo','Juan','+34 611111111','http:\\\\www.photo.com/test','Garc√≠a',1722,1.3),(1734,0,'Calle de customers, 2, 3¬∫D','customer2@gmail.com','\0','','Juana','+34 622222222','http:\\\\www.photo.com/test2','Dominguez',1723,1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_record`
--

DROP TABLE IF EXISTS `education_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachment_url` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_record`
--

LOCK TABLES `education_record` WRITE;
/*!40000 ALTER TABLE `education_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorsement`
--

DROP TABLE IF EXISTS `endorsement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorsement` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `author` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorsement`
--

LOCK TABLES `endorsement` WRITE;
/*!40000 ALTER TABLE `endorsement` DISABLE KEYS */;
INSERT INTO `endorsement` VALUES (1829,0,'2018-03-08 20:32:00',1733,1735),(1830,0,'2018-03-08 20:32:00',1734,1735),(1831,0,'2018-03-08 20:32:00',1735,1733);
/*!40000 ALTER TABLE `endorsement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorsement_comments`
--

DROP TABLE IF EXISTS `endorsement_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorsement_comments` (
  `endorsement` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_pscx7i90sy9rn656hbdtcot64` (`endorsement`),
  CONSTRAINT `FK_pscx7i90sy9rn656hbdtcot64` FOREIGN KEY (`endorsement`) REFERENCES `endorsement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorsement_comments`
--

LOCK TABLES `endorsement_comments` WRITE;
/*!40000 ALTER TABLE `endorsement_comments` DISABLE KEYS */;
INSERT INTO `endorsement_comments` VALUES (1829,'good'),(1830,'ok'),(1831,'bad');
/*!40000 ALTER TABLE `endorsement_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorser_record`
--

DROP TABLE IF EXISTS `endorser_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorser_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endorser_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `endorser_social_profile` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_52mrqh7bylgfc8hp0m6x3pe3a` (`endorser_social_profile`),
  CONSTRAINT `FK_52mrqh7bylgfc8hp0m6x3pe3a` FOREIGN KEY (`endorser_social_profile`) REFERENCES `social_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorser_record`
--

LOCK TABLES `endorser_record` WRITE;
/*!40000 ALTER TABLE `endorser_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `endorser_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder`
--

DROP TABLE IF EXISTS `finder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `max_date` datetime DEFAULT NULL,
  `max_price` double DEFAULT NULL,
  `min_date` datetime DEFAULT NULL,
  `min_price` double DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `handy_worker` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qi9ryx37gartbf5qa8ipv8lhr` (`handy_worker`),
  CONSTRAINT `FK_qi9ryx37gartbf5qa8ipv8lhr` FOREIGN KEY (`handy_worker`) REFERENCES `handy_worker` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder`
--

LOCK TABLES `finder` WRITE;
/*!40000 ALTER TABLE `finder` DISABLE KEYS */;
INSERT INTO `finder` VALUES (1791,0,NULL,'2018-11-11 00:00:00','bici','2018-12-12 00:00:00',NULL,NULL,20,NULL,1735);
/*!40000 ALTER TABLE `finder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder_fix_up_tasks`
--

DROP TABLE IF EXISTS `finder_fix_up_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder_fix_up_tasks` (
  `finder` int(11) NOT NULL,
  `fix_up_tasks` int(11) NOT NULL,
  UNIQUE KEY `UK_mxx0exr9sl0tqpfmt67rn9ntw` (`fix_up_tasks`),
  KEY `FK_3lx1mc9naw2l6iynabqyqm46m` (`finder`),
  CONSTRAINT `FK_3lx1mc9naw2l6iynabqyqm46m` FOREIGN KEY (`finder`) REFERENCES `finder` (`id`),
  CONSTRAINT `FK_mxx0exr9sl0tqpfmt67rn9ntw` FOREIGN KEY (`fix_up_tasks`) REFERENCES `fixup_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder_fix_up_tasks`
--

LOCK TABLES `finder_fix_up_tasks` WRITE;
/*!40000 ALTER TABLE `finder_fix_up_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `finder_fix_up_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixup_application`
--

DROP TABLE IF EXISTS `fixup_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixup_application` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` tinyblob,
  `offered_rate` float DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `fixup_task` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4bsm3honttmn3vm8cla1wmrbj` (`author`),
  KEY `FK_8mdf3dc6stbhhejtujf7vry2p` (`fixup_task`),
  CONSTRAINT `FK_8mdf3dc6stbhhejtujf7vry2p` FOREIGN KEY (`fixup_task`) REFERENCES `fixup_task` (`id`),
  CONSTRAINT `FK_4bsm3honttmn3vm8cla1wmrbj` FOREIGN KEY (`author`) REFERENCES `handy_worker` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixup_application`
--

LOCK TABLES `fixup_application` WRITE;
/*!40000 ALTER TABLE `fixup_application` DISABLE KEYS */;
INSERT INTO `fixup_application` VALUES (1837,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0do it fasterx',100,'2018-03-10 20:32:00','ACCEPTED',1735,1835),(1838,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0do it for lessx',500,'2017-10-11 20:32:00','ACCEPTED',1736,1836),(1839,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0do it fasterx',100,'2017-08-11 20:32:00','ACCEPTED',1735,1836),(1840,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0do it fasterx',100,'2018-03-11 20:32:00','ACCEPTED',1736,1836),(1841,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0do it fasterx',100,'2018-03-11 20:32:00','ACCEPTED',1736,1835),(1842,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0do it fasterx',100,'2017-01-11 20:32:00','ACCEPTED',1736,1835),(1843,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0no likex',100,'2018-03-08 20:32:00','ACCEPTED',1735,1836),(1844,0,'¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0no likex',100,'2018-03-08 20:32:00','ACCEPTED',1735,1834);
/*!40000 ALTER TABLE `fixup_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixup_task`
--

DROP TABLE IF EXISTS `fixup_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixup_task` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `locked` bit(1) NOT NULL,
  `maximum_price` float DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `credit_card` int(11) DEFAULT NULL,
  `warranty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tjk8hdg6lpwu65m0mxg6mxb87` (`author`),
  KEY `FK_bl9rkgoi0puairt2gptggd794` (`category`),
  KEY `FK_e8h6hoiwmaoumr5vq2ciyq83d` (`credit_card`),
  KEY `FK_f0mkjews6tr2epiqwbckgnj4a` (`warranty`),
  CONSTRAINT `FK_f0mkjews6tr2epiqwbckgnj4a` FOREIGN KEY (`warranty`) REFERENCES `warranty` (`id`),
  CONSTRAINT `FK_bl9rkgoi0puairt2gptggd794` FOREIGN KEY (`category`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_e8h6hoiwmaoumr5vq2ciyq83d` FOREIGN KEY (`credit_card`) REFERENCES `credit_card` (`id`),
  CONSTRAINT `FK_tjk8hdg6lpwu65m0mxg6mxb87` FOREIGN KEY (`author`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixup_task`
--

LOCK TABLES `fixup_task` WRITE;
/*!40000 ALTER TABLE `fixup_task` DISABLE KEYS */;
INSERT INTO `fixup_task` VALUES (1834,0,'Calle de customers, 1, 3¬∫D','A mi bici no le funcionan los frenos.','2018-10-20 00:00:00','',40.5,'2018-10-10 00:00:00','2018-10-10 00:00:00','20181010-ABZZEF',1733,1806,1802,1821),(1835,0,'Calle de customers, 1, 3¬∫D','A mi bici no le funcionan los frenos.','2018-10-20 00:00:00','\0',40.5,'2018-10-10 00:00:00','2018-10-10 00:00:00','20181010-ABCDEF',1733,1806,1802,1821),(1836,0,'Calle de customers, 7','El techo esta roto','2018-10-20 00:00:00','',40.5,'2018-10-10 00:00:00','2018-10-10 00:00:00','20181010-ABCDGF',1734,1806,1802,1821);
/*!40000 ALTER TABLE `fixup_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handy_worker`
--

DROP TABLE IF EXISTS `handy_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handy_worker` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flagged` bit(1) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `make` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sht4042co805ari294qfxflee` (`user`),
  CONSTRAINT `FK_sht4042co805ari294qfxflee` FOREIGN KEY (`user`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handy_worker`
--

LOCK TABLES `handy_worker` WRITE;
/*!40000 ALTER TABLE `handy_worker` DISABLE KEYS */;
INSERT INTO `handy_worker` VALUES (1735,0,'Calle de workers, 1, 3¬∫D','worker1@gmail.com','\0','Ram√≥n','Luis','+34 633333333','http:\\\\www.photo.com/test3','Gutierrez',1724,'LuisRam√≥n',1),(1736,0,'Calle de workers, 2, 3¬∫D','worker2@gmail.com','\0','','Luisa','+34 644444444','http:\\\\www.photo.com/test4','San Jos√©',1725,'Luisa',1);
/*!40000 ALTER TABLE `handy_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('domain_entity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `law`
--

DROP TABLE IF EXISTS `law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `law` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `relevant_text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `law`
--

LOCK TABLES `law` WRITE;
/*!40000 ALTER TABLE `law` DISABLE KEYS */;
INSERT INTO `law` VALUES (1824,0,'relevant text 1','Law 1'),(1825,0,'relevant text 1','Law 2'),(1826,0,'relevant text 1','Law 3'),(1827,0,'relevant text 1','Law 4'),(1828,0,'relevant text 1','Law 5');
/*!40000 ALTER TABLE `law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lorem`
--

DROP TABLE IF EXISTS `lorem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lorem` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `fixup_task` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c7kjl3h4of7uv7uo95n16uwb4` (`author`),
  KEY `FK_cv2ih4xy238ucu9jf1sf4vtda` (`fixup_task`),
  CONSTRAINT `FK_cv2ih4xy238ucu9jf1sf4vtda` FOREIGN KEY (`fixup_task`) REFERENCES `fixup_task` (`id`),
  CONSTRAINT `FK_c7kjl3h4of7uv7uo95n16uwb4` FOREIGN KEY (`author`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lorem`
--

LOCK TABLES `lorem` WRITE;
/*!40000 ALTER TABLE `lorem` DISABLE KEYS */;
INSERT INTO `lorem` VALUES (1845,0,'test','https://i.redd.it/ixy3lhau0fn01.jpg','\0','2019-02-04 12:00:00','AB01-020419','TEST',1733,1835),(1846,0,'test','https://i.pinimg.com/236x/1b/d0/c8/1bd0c87460c828300c26c2b4ceeea6e4--animal-jam-doge.jpg','','2019-01-03 12:00:00','AB02-010319','TEST',1733,1835),(1847,0,'test','https://i.kym-cdn.com/photos/images/newsfeed/000/581/069/626.jpg','','2018-01-03 12:00:00','AB03-030118','TEST',1734,1835),(1848,0,'test','https://i.kym-cdn.com/photos/images/newsfeed/000/820/485/18c.png','','2018-01-03 12:00:00','AB04-030118','TEST',1734,1835);
/*!40000 ALTER TABLE `lorem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `sender_alias` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `sender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_box`
--

DROP TABLE IF EXISTS `message_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_box` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h8ejofn6k6j5gtbl2sb4fc3co` (`parent`),
  CONSTRAINT `FK_h8ejofn6k6j5gtbl2sb4fc3co` FOREIGN KEY (`parent`) REFERENCES `message_box` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_box`
--

LOCK TABLES `message_box` WRITE;
/*!40000 ALTER TABLE `message_box` DISABLE KEYS */;
INSERT INTO `message_box` VALUES (1743,0,'ROOT','Mail',1733,NULL),(1744,0,'INBOX','Inbox',1733,1743),(1745,0,'OUTBOX','Outbox',1733,1743),(1746,0,'TRASHBOX','Trashbox',1733,1743),(1747,0,'SPAMBOX','Spambox',1733,1743),(1748,0,'ROOT','Mail',1734,NULL),(1749,0,'INBOX','Inbox',1734,1748),(1750,0,'OUTBOX','Outbox',1734,1748),(1751,0,'TRASHBOX','Trashbox',1734,1748),(1752,0,'SPAMBOX','Spambox',1734,1748),(1753,0,'ROOT','Mail',1741,NULL),(1754,0,'INBOX','Inbox',1741,1753),(1755,0,'OUTBOX','Outbox',1741,1753),(1756,0,'TRASHBOX','Trashbox',1741,1753),(1757,0,'SPAMBOX','Spambox',1741,1753),(1758,0,'ROOT','Mail',1742,NULL),(1759,0,'INBOX','Inbox',1742,1758),(1760,0,'OUTBOX','Outbox',1742,1758),(1761,0,'TRASHBOX','Trashbox',1742,1758),(1762,0,'SPAMBOX','Spambox',1742,1758),(1763,0,'ROOT','Mail',1735,NULL),(1764,0,'INBOX','Inbox',1735,1763),(1765,0,'OUTBOX','Outbox',1735,1763),(1766,0,'TRASHBOX','Trashbox',1735,1763),(1767,0,'SPAMBOX','Spambox',1735,1763),(1768,0,'INBOX','Inbox',1736,NULL),(1769,0,'OUTBOX','Outbox',1736,NULL),(1770,0,'TRASHBOX','Trashbox',1736,NULL),(1771,0,'SPAMBOX','Spambox',1736,NULL),(1772,0,'INBOX','Inbox',1737,NULL),(1773,0,'OUTBOX','Outbox',1737,NULL),(1774,0,'TRASHBOX','Trashbox',1737,NULL),(1775,0,'SPAMBOX','Spambox',1737,NULL),(1776,0,'INBOX','Inbox',1738,NULL),(1777,0,'OUTBOX','Outbox',1738,NULL),(1778,0,'TRASHBOX','Trashbox',1738,NULL),(1779,0,'SPAMBOX','Spambox',1738,NULL),(1780,0,'INBOX','Inbox',1739,NULL),(1781,0,'OUTBOX','Outbox',1739,NULL),(1782,0,'TRASHBOX','Trashbox',1739,NULL),(1783,0,'SPAMBOX','Spambox',1739,NULL),(1784,0,'INBOX','Inbox',1740,NULL),(1785,0,'OUTBOX','Outbox',1740,NULL),(1786,0,'TRASHBOX','Trashbox',1740,NULL),(1787,0,'SPAMBOX','Spambox',1740,NULL);
/*!40000 ALTER TABLE `message_box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_container`
--

DROP TABLE IF EXISTS `message_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_container` (
  `message` int(11) NOT NULL,
  `container` int(11) NOT NULL,
  KEY `FK_if6gd5ir16th5590l74hbqpf1` (`container`),
  KEY `FK_r416lrs60qdbv9veh39m06785` (`message`),
  CONSTRAINT `FK_r416lrs60qdbv9veh39m06785` FOREIGN KEY (`message`) REFERENCES `message` (`id`),
  CONSTRAINT `FK_if6gd5ir16th5590l74hbqpf1` FOREIGN KEY (`container`) REFERENCES `message_box` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_container`
--

LOCK TABLES `message_container` WRITE;
/*!40000 ALTER TABLE `message_container` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_recipients`
--

DROP TABLE IF EXISTS `message_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_recipients` (
  `message` int(11) NOT NULL,
  `recipients` int(11) NOT NULL,
  KEY `FK_1odmg2n3n487tvhuxx5oyyya2` (`message`),
  CONSTRAINT `FK_1odmg2n3n487tvhuxx5oyyya2` FOREIGN KEY (`message`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_recipients`
--

LOCK TABLES `message_recipients` WRITE;
/*!40000 ALTER TABLE `message_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscellaneous_record`
--

DROP TABLE IF EXISTS `miscellaneous_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscellaneous_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachment_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscellaneous_record`
--

LOCK TABLES `miscellaneous_record` WRITE;
/*!40000 ALTER TABLE `miscellaneous_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscellaneous_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `author` int(11) NOT NULL,
  `report` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jk2abb4f3s4qx304y1uwq59pi` (`report`),
  CONSTRAINT `FK_jk2abb4f3s4qx304y1uwq59pi` FOREIGN KEY (`report`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_comments`
--

DROP TABLE IF EXISTS `note_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_comments` (
  `note` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_16n3b9i6naufk2skyw8kjqkgh` (`note`),
  CONSTRAINT `FK_16n3b9i6naufk2skyw8kjqkgh` FOREIGN KEY (`note`) REFERENCES `note` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_comments`
--

LOCK TABLES `note_comments` WRITE;
/*!40000 ALTER TABLE `note_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_record`
--

DROP TABLE IF EXISTS `professional_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachment_url` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_record`
--

LOCK TABLES `professional_record` WRITE;
/*!40000 ALTER TABLE `professional_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `professional_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_comments`
--

DROP TABLE IF EXISTS `record_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_comments` (
  `record` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_comments`
--

LOCK TABLES `record_comments` WRITE;
/*!40000 ALTER TABLE `record_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `record_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referee` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flagged` bit(1) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t6lbibg766b8ysl5a9q7t18en` (`user`),
  CONSTRAINT `FK_t6lbibg766b8ysl5a9q7t18en` FOREIGN KEY (`user`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
INSERT INTO `referee` VALUES (1737,0,'Calle de referees, 1, 3¬∫D','referee1@gmail.com','\0','Ram√≥n','David','+34 655555555','http:\\\\www.photo.com/test5','P√©rez',1726),(1738,0,'Calle de referees, 2, 3¬∫D','referee2@gmail.com','\0','Maria','Julia','+34 666666666','http:\\\\www.photo.com/test6','Reverte',1727);
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `locked` bit(1) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `author` int(11) NOT NULL,
  `complaint` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t59n6kkaatqfg0bbc7jm25wao` (`author`),
  KEY `FK_48rqaecflpcs8unotw4drrtfw` (`complaint`),
  CONSTRAINT `FK_48rqaecflpcs8unotw4drrtfw` FOREIGN KEY (`complaint`) REFERENCES `complaint` (`id`),
  CONSTRAINT `FK_t59n6kkaatqfg0bbc7jm25wao` FOREIGN KEY (`author`) REFERENCES `referee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_attachments`
--

DROP TABLE IF EXISTS `report_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_attachments` (
  `report` int(11) NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  KEY `FK_8pqwcub4o2xip8o8ohqk3bu05` (`report`),
  CONSTRAINT `FK_8pqwcub4o2xip8o8ohqk3bu05` FOREIGN KEY (`report`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_attachments`
--

LOCK TABLES `report_attachments` WRITE;
/*!40000 ALTER TABLE `report_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_comments`
--

DROP TABLE IF EXISTS `report_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_comments` (
  `report` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_rv98td83ckn33xg2dtq0jq62u` (`report`),
  CONSTRAINT `FK_rv98td83ckn33xg2dtq0jq62u` FOREIGN KEY (`report`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_comments`
--

LOCK TABLES `report_comments` WRITE;
/*!40000 ALTER TABLE `report_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photos` tinyblob,
  `position` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1793,0,'Desmontar y evaluar la bicicleta','¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'Identificar el problema'),(1794,0,'Solucionar problemas b√°sicos de bicicletas','¨Ì\0sr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0t\0\"http:\\\\fotobicis.com/arreglar2.pngt\0\"http:\\\\fotobicis.com/arreglar3.pngx',0,'Resolver el problema');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_configuration`
--

DROP TABLE IF EXISTS `site_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_configuration` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `default_country_code` int(11) DEFAULT NULL,
  `finder_res_limit` int(11) DEFAULT NULL,
  `finder_time_limit` int(11) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `vat_rate` float DEFAULT NULL,
  `welcome_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_configuration`
--

LOCK TABLES `site_configuration` WRITE;
/*!40000 ALTER TABLE `site_configuration` DISABLE KEYS */;
INSERT INTO `site_configuration` VALUES (1732,0,'http://www.sample-banner.com/banner.png',34,10,3600,'Acme Handy Worker',0.2,'');
/*!40000 ALTER TABLE `site_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_configuration_bad_words`
--

DROP TABLE IF EXISTS `site_configuration_bad_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_configuration_bad_words` (
  `site_configuration` int(11) NOT NULL,
  `bad_words` varchar(255) DEFAULT NULL,
  KEY `FK_p2dbqp6xtk9ys8rsg51mukww` (`site_configuration`),
  CONSTRAINT `FK_p2dbqp6xtk9ys8rsg51mukww` FOREIGN KEY (`site_configuration`) REFERENCES `site_configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_configuration_bad_words`
--

LOCK TABLES `site_configuration_bad_words` WRITE;
/*!40000 ALTER TABLE `site_configuration_bad_words` DISABLE KEYS */;
INSERT INTO `site_configuration_bad_words` VALUES (1732,'chapuza');
/*!40000 ALTER TABLE `site_configuration_bad_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_configuration_good_words`
--

DROP TABLE IF EXISTS `site_configuration_good_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_configuration_good_words` (
  `site_configuration` int(11) NOT NULL,
  `good_words` varchar(255) DEFAULT NULL,
  KEY `FK_6nvs0xfn2p5kjiwvd522yx6ki` (`site_configuration`),
  CONSTRAINT `FK_6nvs0xfn2p5kjiwvd522yx6ki` FOREIGN KEY (`site_configuration`) REFERENCES `site_configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_configuration_good_words`
--

LOCK TABLES `site_configuration_good_words` WRITE;
/*!40000 ALTER TABLE `site_configuration_good_words` DISABLE KEYS */;
INSERT INTO `site_configuration_good_words` VALUES (1732,'nuevo');
/*!40000 ALTER TABLE `site_configuration_good_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_configuration_spam_words`
--

DROP TABLE IF EXISTS `site_configuration_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_configuration_spam_words` (
  `site_configuration` int(11) NOT NULL,
  `spam_words` varchar(255) DEFAULT NULL,
  KEY `FK_4o9nj5p1s6mns37t9h5ny6jo6` (`site_configuration`),
  CONSTRAINT `FK_4o9nj5p1s6mns37t9h5ny6jo6` FOREIGN KEY (`site_configuration`) REFERENCES `site_configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_configuration_spam_words`
--

LOCK TABLES `site_configuration_spam_words` WRITE;
/*!40000 ALTER TABLE `site_configuration_spam_words` DISABLE KEYS */;
INSERT INTO `site_configuration_spam_words` VALUES (1732,'sex'),(1732,'viagra'),(1732,'cialis'),(1732,'one million'),(1732,'you\'ve been selected'),(1732,'nigeria'),(1732,'sexo'),(1732,'un millon'),(1732,'ha sido seleccionado');
/*!40000 ALTER TABLE `site_configuration_spam_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_profile`
--

DROP TABLE IF EXISTS `social_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_profile` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_profile`
--

LOCK TABLES `social_profile` WRITE;
/*!40000 ALTER TABLE `social_profile` DISABLE KEYS */;
INSERT INTO `social_profile` VALUES (1788,0,'manitas1','linkedIn','http://www.linkedin.com/manitas1',1735),(1789,0,'manitas1','facebook','http://www.facebook.com/manitas1',1735);
/*!40000 ALTER TABLE `social_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flagged` bit(1) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_bfwcnbssm5sggtwosgfrfl37v` (`user`),
  CONSTRAINT `FK_bfwcnbssm5sggtwosgfrfl37v` FOREIGN KEY (`user`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1739,0,'Calle de sponsors, 1, 3¬∫D','sponsor1@gmail.com','\0','','Juli√°n','+34 677777777','http:\\\\www.photo.com/test7','S√°nchez',1728),(1740,0,'Calle de sponsors, 2, 3¬∫D','sponsor1@gmail.com','\0','','Roberta','+34 688888888','http:\\\\www.photo.com/test8','Ram√≠rez',1729);
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsorship` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `target_page` varchar(255) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `creditcard` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o8owp8pwu41c5xps2dgpaitt8` (`author`),
  KEY `FK_363s93kxlesooltaj11slbnao` (`creditcard`),
  CONSTRAINT `FK_363s93kxlesooltaj11slbnao` FOREIGN KEY (`creditcard`) REFERENCES `credit_card` (`id`),
  CONSTRAINT `FK_o8owp8pwu41c5xps2dgpaitt8` FOREIGN KEY (`author`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
INSERT INTO `sponsorship` VALUES (1832,0,'https://www.youtube.com/','https://www.youtube.com/',1739,1802),(1833,0,'https://www.youtube.com/','https://www.youtube.com/',1740,1803);
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
INSERT INTO `tutorial` VALUES (1792,0,'tutorial para identificar y resolver problemas con bicis',NULL,'tutorial para reparar bicis',1735);
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial_photos`
--

DROP TABLE IF EXISTS `tutorial_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial_photos` (
  `tutorial` int(11) NOT NULL,
  `photos` varchar(255) DEFAULT NULL,
  KEY `FK_c8ui2fgbn0g6bagyyv8l0lofa` (`tutorial`),
  CONSTRAINT `FK_c8ui2fgbn0g6bagyyv8l0lofa` FOREIGN KEY (`tutorial`) REFERENCES `tutorial` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial_photos`
--

LOCK TABLES `tutorial_photos` WRITE;
/*!40000 ALTER TABLE `tutorial_photos` DISABLE KEYS */;
INSERT INTO `tutorial_photos` VALUES (1792,'http:\\\\fotobicis.com/arreglar.png');
/*!40000 ALTER TABLE `tutorial_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial_sections`
--

DROP TABLE IF EXISTS `tutorial_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial_sections` (
  `tutorial` int(11) NOT NULL,
  `sections` int(11) NOT NULL,
  UNIQUE KEY `UK_fam9vwtnrx0m7vmnqngwoekdo` (`sections`),
  KEY `FK_8sl8cpfc93exnk3nv9a6okamu` (`tutorial`),
  CONSTRAINT `FK_8sl8cpfc93exnk3nv9a6okamu` FOREIGN KEY (`tutorial`) REFERENCES `tutorial` (`id`),
  CONSTRAINT `FK_fam9vwtnrx0m7vmnqngwoekdo` FOREIGN KEY (`sections`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial_sections`
--

LOCK TABLES `tutorial_sections` WRITE;
/*!40000 ALTER TABLE `tutorial_sections` DISABLE KEYS */;
INSERT INTO `tutorial_sections` VALUES (1792,1793),(1792,1794);
/*!40000 ALTER TABLE `tutorial_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial_sponsorship`
--

DROP TABLE IF EXISTS `tutorial_sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial_sponsorship` (
  `tutorial` int(11) NOT NULL,
  `sponsorship` int(11) NOT NULL,
  KEY `FK_gaix0ucg766852ogsu4jhlmpi` (`sponsorship`),
  KEY `FK_4pikua24wfp34drr8aoqlq7uv` (`tutorial`),
  CONSTRAINT `FK_4pikua24wfp34drr8aoqlq7uv` FOREIGN KEY (`tutorial`) REFERENCES `tutorial` (`id`),
  CONSTRAINT `FK_gaix0ucg766852ogsu4jhlmpi` FOREIGN KEY (`sponsorship`) REFERENCES `sponsorship` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial_sponsorship`
--

LOCK TABLES `tutorial_sponsorship` WRITE;
/*!40000 ALTER TABLE `tutorial_sponsorship` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial_sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1719,0,'21232f297a57a5a743894a0e4a801fc3','admin'),(1720,0,'91ec1f9324753048c0096d036a694f86','customer'),(1721,0,'1b3231655cebb7a1f783eddf27d254ca','super'),(1722,0,'325a2cc052914ceeb8c19016c091d2ac','customer1'),(1723,0,'325a2cc052914ceeb8c19016c091d2ac','customer2'),(1724,0,'325a2cc052914ceeb8c19016c091d2ac','handyWorker1'),(1725,0,'325a2cc052914ceeb8c19016c091d2ac','handyWorker2'),(1726,0,'325a2cc052914ceeb8c19016c091d2ac','referee1'),(1727,0,'325a2cc052914ceeb8c19016c091d2ac','referee2'),(1728,0,'325a2cc052914ceeb8c19016c091d2ac','sponsor1'),(1729,0,'325a2cc052914ceeb8c19016c091d2ac','sponsor2'),(1730,0,'325a2cc052914ceeb8c19016c091d2ac','admin1'),(1731,0,'325a2cc052914ceeb8c19016c091d2ac','admin2');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account_authorities`
--

DROP TABLE IF EXISTS `user_account_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account_authorities` (
  `user_account` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_pao8cwh93fpccb0bx6ilq6gsl` (`user_account`),
  CONSTRAINT `FK_pao8cwh93fpccb0bx6ilq6gsl` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account_authorities`
--

LOCK TABLES `user_account_authorities` WRITE;
/*!40000 ALTER TABLE `user_account_authorities` DISABLE KEYS */;
INSERT INTO `user_account_authorities` VALUES (1719,'ADMIN'),(1720,'CUSTOMER'),(1721,'ADMIN'),(1721,'CUSTOMER'),(1722,'CUSTOMER'),(1723,'CUSTOMER'),(1724,'HANDYWORKER'),(1725,'HANDYWORKER'),(1726,'REFEREE'),(1727,'REFEREE'),(1728,'SPONSOR'),(1729,'SPONSOR'),(1730,'ADMIN'),(1731,'ADMIN');
/*!40000 ALTER TABLE `user_account_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warranty`
--

DROP TABLE IF EXISTS `warranty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warranty` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `locked` bit(1) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warranty`
--

LOCK TABLES `warranty` WRITE;
/*!40000 ALTER TABLE `warranty` DISABLE KEYS */;
INSERT INTO `warranty` VALUES (1821,0,'\0','Default terms bro','Default'),(1822,0,'\0','prove that it was a theft','Thef'),(1823,0,'\0','prove that it was the handyworkers fault','Total destruction');
/*!40000 ALTER TABLE `warranty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warranty_laws`
--

DROP TABLE IF EXISTS `warranty_laws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warranty_laws` (
  `warranty` int(11) NOT NULL,
  `laws` int(11) NOT NULL,
  KEY `FK_t2nfstyaqqqmnolkhpqrvop7j` (`laws`),
  KEY `FK_ssb1vpe3jaukg4rim19cem3wu` (`warranty`),
  CONSTRAINT `FK_ssb1vpe3jaukg4rim19cem3wu` FOREIGN KEY (`warranty`) REFERENCES `warranty` (`id`),
  CONSTRAINT `FK_t2nfstyaqqqmnolkhpqrvop7j` FOREIGN KEY (`laws`) REFERENCES `law` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warranty_laws`
--

LOCK TABLES `warranty_laws` WRITE;
/*!40000 ALTER TABLE `warranty_laws` DISABLE KEYS */;
INSERT INTO `warranty_laws` VALUES (1821,1824),(1821,1825),(1822,1824),(1822,1825),(1822,1826),(1823,1827),(1823,1828);
/*!40000 ALTER TABLE `warranty_laws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_plan_phase`
--

DROP TABLE IF EXISTS `work_plan_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_plan_phase` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `fixup_task` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_24ky9cgty92ruvb13r0045m5m` (`fixup_task`),
  CONSTRAINT `FK_24ky9cgty92ruvb13r0045m5m` FOREIGN KEY (`fixup_task`) REFERENCES `fixup_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_plan_phase`
--

LOCK TABLES `work_plan_phase` WRITE;
/*!40000 ALTER TABLE `work_plan_phase` DISABLE KEYS */;
INSERT INTO `work_plan_phase` VALUES (1795,1,'Desmontar la bici y evaluarla.','2018-10-17 00:00:00',1,'2018-10-16 00:00:00','Desmontar y evaluar',1835),(1796,1,'Reparar el problema o en su defecto sustituir las piezas defectuosas.','2018-10-19 00:00:00',2,'2018-10-18 00:00:00','Solucionar o recambiar',1835),(1797,1,'Ponemo uno nuevo','2018-10-17 00:00:00',1,'2018-10-16 00:00:00','Arreglar el techo',1836);
/*!40000 ALTER TABLE `work_plan_phase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-04 18:31:27
