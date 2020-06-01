CREATE DATABASE  IF NOT EXISTS `spotify` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `spotify`;
-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Win64 (AMD64)
--
-- Host: 206.189.178.241    Database: spotify
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB-1:10.4.13+maria~bionic

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
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) COLLATE utf8_bin NOT NULL,
  `anio` date DEFAULT NULL,
  `genero` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  KEY `interprete` (`interprete`),
  CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES (45,'sodales purus','2002-12-19','F',19),(46,'nec luctus','2018-08-20','M',19),(97,'tempor bibendum','2028-12-19','F',12),(98,'tempor bibendum','2028-12-19','F',12),(99,'Vitae Erat Vivamus Ltd','2003-11-19','N',1),(100,'Fringilla Mi Lacinia Institute','2019-10-19','N',2),(101,'Odio Associates','2001-02-20','F',3),(102,'Egestas LLC','2025-08-20','N',4),(103,'Cras PC','2010-05-21','N',5),(104,'Non Hendrerit Id PC','2014-03-20','F',6),(105,'Eget LLC','2014-05-21','F',7),(106,'Ornare Foundation','2022-09-19','F',8),(107,'Sociis Natoque Ltd','2029-08-19','N',9),(108,'Et Malesuada Consulting','2011-11-20','F',10),(109,'In Consequat Enim LLC','2004-03-21','N',11),(110,'Luctus Institute','2026-02-21','F',12),(111,'Sed Corporation','2012-07-20','F',13),(112,'Aenean Massa Integer Ltd','2028-05-20','N',14),(113,'Fames Ac Turpis Associates','2024-09-19','N',15),(114,'Lectus Nullam Suscipit Corp.','2022-10-19','F',16),(115,'Risus In Corp.','2024-01-20','N',17),(116,'Magna Et Ipsum Industries','2020-02-20','N',18),(117,'Sed Associates','2011-07-20','N',19),(118,'Hendrerit Donec Porttitor Institute','2006-08-19','N',20),(119,'Mauris Quis Institute','2006-10-20','F',21),(120,'Nisl Sem Consequat LLP','2005-09-19','N',22),(121,'Mauris A Nunc LLC','2006-10-19','N',23),(122,'Arcu Corp.','2011-01-21','F',24),(123,'Mauris Sagittis Placerat Limited','2001-11-20','N',25),(124,'Tellus Inc.','2027-11-19','F',26),(125,'Aliquet Diam Ltd','2018-12-20','N',27),(126,'Ipsum Nunc Industries','2003-01-20','F',28),(127,'Rutrum Magna PC','2005-03-21','F',29),(128,'Nostra Per Corp.','2028-04-21','F',30),(129,'Nunc Sed Inc.','2024-02-21','N',31),(130,'Faucibus Lectus A Company','2010-10-20','F',32),(131,'Nunc Corporation','2025-10-19','N',33),(132,'Lorem Fringilla Ornare PC','2018-04-21','F',34),(133,'Elit Aliquam Auctor Corp.','2023-01-20','F',35),(134,'Eu Inc.','2019-10-20','N',36),(135,'Et Limited','2019-03-21','N',37),(136,'Luctus Felis LLC','2028-11-20','N',38),(137,'Non Hendrerit Incorporated','2012-02-21','N',39),(138,'Blandit Congue In Associates','2024-09-19','N',40),(139,'Pede Company','2028-06-20','F',41),(140,'Ut Associates','2011-08-20','F',42),(141,'Risus Institute','2024-11-20','F',43),(142,'Consequat Dolor Vitae Associates','2012-02-21','F',44),(143,'Rutrum Consulting','2024-08-19','F',45),(144,'Porttitor Scelerisque PC','2018-12-20','F',46),(145,'A Malesuada Id Consulting','2007-04-20','N',47),(146,'Eget Nisi Consulting','2019-07-19','N',48),(147,'Quisque Fringilla Limited','2001-12-20','N',49),(148,'Vestibulum Ante Associates','2009-05-20','F',50),(149,'Ultrices Mauris Limited','2003-10-20','F',51),(150,'Orci Incorporated','2026-11-19','F',52),(151,'Mollis LLC','2023-02-20','F',53),(152,'Erat Corp.','2013-08-19','F',54),(153,'Curabitur Vel Lectus Consulting','2029-12-19','F',55),(154,'Aliquet Libero Corporation','2007-05-21','F',56),(155,'Eget Metus Corporation','2006-02-21','F',57),(156,'Ultricies Consulting','2029-12-19','N',58),(157,'Dui Semper Inc.','2016-06-20','F',59),(158,'Ridiculus Mus LLP','2015-09-19','N',60),(159,'Egestas Duis Foundation','2022-12-19','N',61),(160,'Vivamus Molestie Dapibus Incorporated','2010-10-19','F',62),(161,'Sed Dictum Institute','2003-11-19','N',63),(162,'Lobortis Company','2024-02-20','F',64),(163,'Orci Ut Associates','2002-06-20','F',65),(164,'Ligula Ltd','2008-11-20','N',66),(165,'Quis Arcu Vel Consulting','2022-01-20','F',67),(166,'Adipiscing Associates','2011-12-20','N',68),(167,'Non Dapibus Ltd','2028-04-21','F',69),(168,'Sem Eget Institute','2017-12-19','F',70),(169,'Mauris Suspendisse Aliquet Corp.','2014-07-19','F',71),(170,'Pellentesque Tincidunt Industries','2018-02-20','F',72),(171,'Augue Ut Lacus Company','2014-02-20','F',73),(172,'Ut Sagittis Lobortis Industries','2015-02-21','F',74),(173,'Rutrum Lorem Ac Associates','2004-08-20','F',75),(174,'Convallis In Cursus Company','2010-06-20','F',76),(175,'Metus Corp.','2005-03-20','F',77),(176,'Ac Mattis Ornare Inc.','2003-02-20','N',78),(177,'Vulputate PC','2018-11-20','N',79),(178,'Scelerisque LLP','2012-10-19','N',80),(179,'Dis Industries','2009-04-21','N',81),(180,'Vitae Velit Industries','2026-01-20','F',82),(181,'Lorem Eu Metus LLP','2012-09-19','F',83),(182,'Quis Turpis Vitae Limited','2021-01-21','N',84),(183,'A Aliquet Limited','2011-11-19','N',85),(184,'Velit Quisque Varius LLC','2012-11-19','N',86),(185,'Cum Sociis LLP','2016-05-20','N',87),(186,'Turpis Vitae Purus Consulting','2003-05-20','F',88),(187,'Placerat Eget Foundation','2029-04-21','N',89),(188,'Proin Vel Inc.','2017-11-19','N',90),(189,'Erat Nonummy Institute','2006-08-20','F',91),(190,'A Institute','2010-07-19','F',92),(191,'Odio Sagittis Industries','2009-04-21','N',93),(192,'Tempor Augue PC','2014-05-21','F',94),(193,'Vitae Aliquet Ltd','2003-06-19','N',95),(194,'Facilisis Magna Tellus Ltd','2021-11-20','F',96),(195,'Eget Limited','2029-06-19','N',97),(196,'Vitae Semper Egestas Consulting','2011-11-19','F',98),(197,'Orci In Consequat Ltd','2009-12-19','N',99),(198,'Purus LLP','2019-09-19','N',100);
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artista`
--

DROP TABLE IF EXISTS `Artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artista` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_artista` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `oyentes_mensuales` float DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` VALUES (1,'Brianna',300),(2,'Cedric',3000),(3,'Nash',NULL),(4,'Dylan',NULL),(5,'Alyssa',NULL),(6,'Clark',NULL),(7,'Rinah',NULL),(8,'Leandra',NULL),(9,'Tiger',NULL),(10,'Marsden',NULL),(11,'Shafira',NULL),(12,'Christian',NULL),(13,'Brendan',NULL),(14,'Deanna',NULL),(15,'Garrett',NULL),(16,'Angelica',NULL),(17,'Diana',NULL),(18,'Zane',NULL),(19,'Lawrence',NULL),(20,'Dolan',NULL),(21,'Dai',NULL),(22,'Griffith',NULL),(23,'Avye',NULL),(24,'Sylvia',NULL),(25,'Drake',NULL),(26,'Judah',NULL),(27,'Imani',NULL),(28,'Reed',NULL),(29,'Cruz',NULL),(30,'Kai',NULL),(31,'Kevyn',NULL),(32,'Geraldine',NULL),(33,'Kylan',NULL),(34,'Thaddeus',NULL),(35,'Aaron',NULL),(36,'Justina',NULL),(37,'Conan',NULL),(38,'Clayton',NULL),(39,'Lysandra',NULL),(40,'Jacqueline',NULL),(41,'Graham',NULL),(42,'Doris',NULL),(43,'Cora',NULL),(44,'Shellie',NULL),(45,'Elton',NULL),(46,'Reece',NULL),(47,'Stone',NULL),(48,'Julie',NULL),(49,'Xaviera',NULL),(50,'Lionel',NULL),(51,'Rogan',NULL),(52,'Yvette',NULL),(53,'Nolan',NULL),(54,'Dana',NULL),(55,'Ava',NULL),(56,'Kasimir',NULL),(57,'Jocelyn',NULL),(58,'Solomon',NULL),(59,'Justin',NULL),(60,'Quentin',NULL),(61,'Herrod',NULL),(62,'Zena',NULL),(63,'Keith',NULL),(64,'Wang',NULL),(65,'Nehru',NULL),(66,'Althea',NULL),(67,'Melodie',NULL),(68,'Bryar',NULL),(69,'Kane',NULL),(70,'Lars',NULL),(71,'Xantha',NULL),(72,'Mark',NULL),(73,'Carissa',NULL),(74,'Armando',NULL),(75,'Hilda',NULL),(76,'Emmanuel',NULL),(77,'Miriam',NULL),(78,'Ignacia',NULL),(79,'Desiree',NULL),(80,'Gage',NULL),(81,'Yoshio',NULL),(82,'Todd',NULL),(83,'Laith',NULL),(84,'Audrey',NULL),(85,'Kasimir',NULL),(86,'Larissa',NULL),(87,'Prescott',NULL),(88,'Sade',NULL),(89,'Aladdin',NULL),(90,'Cullen',NULL),(91,'Ezekiel',NULL),(92,'Tucker',NULL),(93,'Odessa',NULL),(94,'Ria',NULL),(95,'Catherine',NULL),(96,'Margaret',NULL),(97,'Maxwell',NULL),(98,'Wallace',NULL),(99,'Jaime',NULL),(100,'Price',NULL),(101,'Brianna',NULL),(102,'Cedric',NULL),(103,'Nash',NULL),(104,'Dylan',NULL),(105,'Alyssa',NULL),(106,'Clark',NULL),(107,'Rinah',NULL),(108,'Leandra',NULL),(109,'Tiger',NULL),(110,'Marsden',NULL),(111,'Shafira',NULL),(112,'Christian',NULL),(113,'Brendan',NULL),(114,'Deanna',NULL),(115,'Garrett',NULL),(116,'Angelica',NULL),(117,'Diana',NULL),(118,'Zane',NULL),(119,'Lawrence',NULL),(120,'Dolan',NULL),(121,'Dai',NULL),(122,'Griffith',NULL),(123,'Avye',NULL),(124,'Sylvia',NULL),(125,'Drake',NULL),(126,'Judah',NULL),(127,'Imani',NULL),(128,'Reed',NULL),(129,'Cruz',NULL),(130,'Kai',NULL),(131,'Kevyn',NULL),(132,'Geraldine',NULL),(133,'Kylan',NULL),(134,'Thaddeus',NULL),(135,'Aaron',NULL),(136,'Justina',NULL),(137,'Conan',NULL),(138,'Clayton',NULL),(139,'Lysandra',NULL),(140,'Jacqueline',NULL),(141,'Graham',NULL),(142,'Doris',NULL),(143,'Cora',NULL),(144,'Shellie',NULL),(145,'Elton',NULL),(146,'Reece',NULL),(147,'Stone',NULL),(148,'Julie',NULL),(149,'Xaviera',NULL),(150,'Lionel',NULL),(151,'Rogan',NULL),(152,'Yvette',NULL),(153,'Nolan',NULL),(154,'Dana',NULL),(155,'Ava',NULL),(156,'Kasimir',NULL),(157,'Jocelyn',NULL),(158,'Solomon',NULL),(159,'Justin',NULL),(160,'Quentin',NULL),(161,'Herrod',NULL),(162,'Zena',NULL),(163,'Keith',NULL),(164,'Wang',NULL),(165,'Nehru',NULL),(166,'Althea',NULL),(167,'Melodie',NULL),(168,'Bryar',NULL),(169,'Kane',NULL),(170,'Lars',NULL),(171,'Xantha',NULL),(172,'Mark',NULL),(173,'Carissa',NULL),(174,'Armando',NULL),(175,'Hilda',NULL),(176,'Emmanuel',NULL),(177,'Miriam',NULL),(178,'Ignacia',NULL),(179,'Desiree',NULL),(180,'Gage',NULL),(181,'Yoshio',NULL),(182,'Todd',NULL),(183,'Laith',NULL),(184,'Audrey',NULL),(185,'Kasimir',NULL),(186,'Larissa',NULL),(187,'Prescott',NULL),(188,'Sade',NULL),(189,'Aladdin',NULL),(190,'Cullen',NULL),(191,'Ezekiel',NULL),(192,'Tucker',NULL),(193,'Odessa',NULL),(194,'Ria',NULL),(195,'Catherine',NULL),(196,'Margaret',NULL),(197,'Maxwell',NULL),(198,'Wallace',NULL),(199,'Jaime',NULL),(200,'Price',NULL);
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancion`
--

DROP TABLE IF EXISTS `Cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cancion` (
  `id_cancion` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) COLLATE utf8_bin NOT NULL,
  `duración` time DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  `reproducciones` float DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `interprete` (`interprete`),
  CONSTRAINT `Cancion_ibfk_1` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancion`
--

LOCK TABLES `Cancion` WRITE;
/*!40000 ALTER TABLE `Cancion` DISABLE KEYS */;
INSERT INTO `Cancion` VALUES (1,'Molestie Arcu Institute','11:05:20',1,10),(2,'Molestie In LLP','01:26:21',2,10.1),(3,'Nec Enim Nunc Limited','11:01:19',3,12.2),(4,'Et Rutrum Industries','05:16:20',4,12.3),(5,'Aliquam Associates','11:15:20',5,13),(6,'Nisl Arcu Institute','01:11:20',6,10),(7,'Et Institute','06:15:20',7,2),(8,'Lobortis Ultrices Ltd','12:08:19',8,30),(9,'Turpis In Institute','08:25:20',9,50),(10,'In Corp.','12:06:20',10,60),(11,'Vestibulum Ltd','06:12:20',11,700),(12,'Dictum Phasellus In LLP','01:04:20',12,80000),(13,'Diam Lorem Corp.','01:31:21',13,6000),(14,'Turpis Industries','09:26:19',14,1223),(15,'Tempor Lorem Corporation','04:21:20',15,123),(16,'Sagittis Nullam Ltd','01:04:21',16,5667),(17,'Euismod Limited','01:12:20',17,55667),(18,'Nam Corp.','11:10:20',18,55677),(19,'Non Quam Pellentesque Inc.','09:22:20',19,56777),(20,'Sit Amet Massa Company','11:12:19',20,56677),(21,'Nec Corporation','12:16:19',21,6777),(22,'Id Nunc Interdum Corporation','11:14:19',22,6678),(23,'Pellentesque Eget PC','02:05:20',23,66788),(24,'Vestibulum Associates','02:06:21',24,6677),(25,'Montes Industries','01:31:21',25,66778),(26,'Ultrices Posuere Foundation','06:27:20',26,67777),(27,'Eu Eleifend Nec Foundation','11:18:19',27,7778),(28,'Ligula Eu Enim Institute','06:25:20',28,77888),(29,'Placerat Orci Inc.','03:09:20',29,345),(30,'Elit Industries','02:27:21',30,456),(31,'Cursus A Enim Ltd','02:10:21',31,5678),(32,'Sagittis Felis Company','02:18:20',32,55667),(33,'Ac Corp.','11:17:19',33,667),(34,'Ultricies Corporation','09:10:19',34,5667),(35,'A Incorporated','01:26:20',35,5667),(36,'Tellus Sem Inc.','11:12:20',36,4556),(37,'Amet Ltd','09:12:20',37,4556),(38,'Arcu Limited','11:02:19',38,4567),(39,'Ut Tincidunt Vehicula Institute','08:04:20',39,45567),(40,'Lectus Ante Dictum Corporation','03:22:21',40,8789),(41,'Lacus Aliquam Rutrum Associates','03:02:21',41,8877),(42,'Dolor Sit Associates','04:15:21',42,788),(43,'Et Libero Ltd','04:06:21',43,77788),(44,'Integer Corp.','04:20:20',44,67788),(45,'Leo Morbi Corporation','09:25:20',45,778),(46,'Orci Ut Sagittis LLC','12:14:20',46,787),(47,'Libero Corp.','05:26:20',47,787),(48,'Sodales Nisi Company','08:12:20',48,8878),(49,'Mauris Limited','08:20:20',49,787),(50,'Integer Ltd','08:09:19',50,7899),(51,'Phasellus At Augue Foundation','03:22:20',51,7788),(52,'Diam Company','03:08:20',52,7888),(53,'Suspendisse Institute','09:06:19',53,777),(54,'Nulla In Tincidunt Company','04:17:21',54,7878),(55,'A PC','05:21:21',55,9887),(56,'Urna Ut Tincidunt Foundation','07:30:20',56,7889),(57,'Mauris Sapien Cursus Foundation','07:29:19',57,7889),(58,'Blandit Enim LLC','05:22:20',58,7889),(59,'Elementum Industries','08:15:20',59,7888),(60,'Posuere Cubilia Curae; LLP','02:18:20',60,7889),(61,'Mauris Non Dui Institute','05:18:21',61,7889),(62,'Enim Diam Vel Consulting','05:11:20',62,7889),(63,'Pharetra Company','04:13:21',63,789),(64,'A Limited','12:16:20',64,7889),(65,'Nulla Facilisis Suspendisse Corporation','07:02:20',65,NULL),(66,'Gravida PC','05:24:20',66,NULL),(67,'Per Conubia Institute','03:26:21',67,NULL),(68,'Lacus Industries','08:23:19',68,NULL),(69,'Natoque Penatibus Et Industries','09:30:20',69,NULL),(70,'Vestibulum Accumsan Neque LLC','11:01:19',70,NULL),(71,'Vulputate Eu Odio Company','01:30:20',71,NULL),(72,'Malesuada Vel Venenatis Company','05:15:20',72,NULL),(73,'Arcu Foundation','12:01:19',73,NULL),(74,'Magna Malesuada Vel Foundation','08:16:19',74,NULL),(75,'Amet Nulla Donec Foundation','12:14:19',75,NULL),(76,'Mauris Sapien Cursus Incorporated','04:22:21',76,NULL),(77,'Suspendisse Sagittis Corporation','09:11:20',77,NULL),(78,'Nunc Mauris Morbi Consulting','06:17:19',78,NULL),(79,'Erat Inc.','07:28:20',79,NULL),(80,'Ipsum Leo Corporation','12:01:20',80,NULL),(81,'Lacus Cras Interdum Industries','04:28:21',81,NULL),(82,'Aenean Euismod Mauris Ltd','08:04:20',82,NULL),(83,'Convallis Limited','01:14:20',83,NULL),(84,'Dictum Placerat PC','11:06:19',84,NULL),(85,'Magna Foundation','10:12:19',85,NULL),(86,'Mi Foundation','08:23:20',86,NULL),(87,'In Magna Phasellus Corp.','03:03:20',87,NULL),(88,'Quisque Corp.','03:06:20',88,NULL),(89,'Nisi Company','09:30:19',89,NULL),(90,'Urna Nec Luctus Limited','12:13:20',90,NULL),(91,'Justo Faucibus Corp.','08:17:20',91,NULL),(92,'Dapibus Ligula Aliquam Corporation','12:02:20',92,NULL),(93,'Odio LLP','05:09:20',93,NULL),(94,'Donec Company','06:08:19',94,NULL),(95,'Donec Sollicitudin LLP','02:22:20',95,NULL),(96,'Elementum Corp.','05:13:20',96,NULL),(97,'Tincidunt Dui Augue Foundation','02:15:20',97,NULL),(98,'Sed Ltd','03:15:21',98,NULL),(99,'Nonummy Ultricies LLC','02:19:21',99,NULL),(100,'Orci Foundation','01:09:21',100,NULL);
/*!40000 ALTER TABLE `Cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contrasena`
--

DROP TABLE IF EXISTS `Contrasena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contrasena` (
  `idContrasena` int(11) NOT NULL AUTO_INCREMENT,
  `c_contrasenia` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idContrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrasena`
--

LOCK TABLES `Contrasena` WRITE;
/*!40000 ALTER TABLE `Contrasena` DISABLE KEYS */;
INSERT INTO `Contrasena` VALUES (1,'Ardath'),(2,'Ardath'),(3,'Kristy'),(4,'Julio'),(5,'Manuel'),(6,'Micaela'),(7,'Ardath'),(8,'Kristy'),(9,'Julio'),(10,'Manuel'),(11,'Micaela'),(12,'XRW14NAR6TE'),(13,'GEN64PUU2CP'),(14,'YID26GLY5QL'),(15,'RHC66SEJ0QV'),(16,'WWA15SPR9VC'),(17,'Ardath*'),(18,'Kristy'),(19,'Julio'),(20,'Manuel'),(21,'Micaela'),(22,'Ardath*'),(23,'Kristy**'),(24,'Julio***'),(25,'Manuel**'),(26,'Micaela***');
/*!40000 ALTER TABLE `Contrasena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingresos`
--

DROP TABLE IF EXISTS `Ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingresos` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `procedimiento` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `entrada` time DEFAULT NULL,
  `salida` time DEFAULT NULL,
  `CodUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`),
  KEY `CodUser` (`CodUser`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingresos`
--

LOCK TABLES `Ingresos` WRITE;
/*!40000 ALTER TABLE `Ingresos` DISABLE KEYS */;
INSERT INTO `Ingresos` VALUES (14,'ekgemgtt','2019-01-25','11:05:20','12:05:20',1),(15,'amemvfmgtt','2020-01-23','10:05:20','12:05:20',26),(16,'eifmeef','2020-01-22','09:05:20','12:05:20',28),(17,'lkiokd','2019-02-25','11:05:20','12:05:20',29),(18,'ekewrett','2020-03-30','11:05:00','12:00:20',30),(19,'ekoikt','2020-05-25','11:05:20','13:05:20',31),(20,'ekgemgtt','2019-01-25','11:05:20','12:05:20',32);
/*!40000 ALTER TABLE `Ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Podcasts`
--

DROP TABLE IF EXISTS `Podcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Podcasts` (
  `id_podcasts` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_podcasts`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Podcasts`
--

LOCK TABLES `Podcasts` WRITE;
/*!40000 ALTER TABLE `Podcasts` DISABLE KEYS */;
INSERT INTO `Podcasts` VALUES (60,'Ac Ipsum Phasellus LLC'),(66,'Aenean Eget Metus Incorporated'),(61,'Aliquam Iaculis Inc.'),(6,'Aliquet Consulting'),(54,'Aliquet Metus Corp.'),(74,'At Egestas Foundation'),(37,'Augue Id Ante LLC'),(62,'Blandit Incorporated'),(34,'Consectetuer Cursus Incorporated'),(38,'Cras Vehicula Aliquet Corp.'),(10,'Curae; Inc.'),(67,'Cursus A Enim Consulting'),(43,'Dapibus Rutrum Justo Company'),(28,'Dignissim Maecenas Ornare Incorporated'),(32,'Dolor Quisque Tincidunt Inc.'),(13,'Donec LLP'),(45,'Duis Gravida Ltd'),(26,'Eget Dictum Associates'),(72,'Eget Magna Corp.'),(79,'Eget Nisi Corporation'),(30,'Eget Tincidunt Foundation'),(36,'Elit Etiam Laoreet LLC'),(35,'Enim Consequat Limited'),(9,'Enim Limited'),(82,'Erat Institute'),(100,'Et Corporation'),(46,'Et Netus Et Consulting'),(50,'Et PC'),(55,'Eu Corp.'),(27,'Faucibus Orci Corporation'),(12,'Fusce Aliquet Incorporated'),(91,'Gravida Company'),(25,'Habitant Morbi Corp.'),(21,'Iaculis Enim Corporation'),(16,'In Incorporated'),(24,'Integer Urna Vivamus Corp.'),(22,'Ipsum Dolor Sit Inc.'),(52,'Ipsum Suspendisse Limited'),(23,'Justo Proin Non Industries'),(59,'Lacus Institute'),(58,'Lectus Corp.'),(20,'Leo Cras Vehicula Company'),(49,'Libero Et Tristique LLC'),(31,'Lorem PC'),(47,'Maecenas Inc.'),(44,'Maecenas Ornare Egestas Inc.'),(42,'Mauris Company'),(29,'Metus Vivamus Euismod LLP'),(39,'Mi Lacinia Industries'),(99,'Mollis Integer Tincidunt PC'),(70,'Nec Malesuada Incorporated'),(33,'Nisi Nibh Lacinia LLC'),(41,'Non Foundation'),(63,'Non Quam LLP'),(80,'Nulla Eget LLC'),(94,'Nullam LLC'),(83,'Nunc Id PC'),(78,'Nunc Industries'),(56,'Nunc LLP'),(18,'Odio A Purus Consulting'),(7,'Odio A Purus Corporation'),(85,'Odio LLC'),(68,'Orci Associates'),(48,'Ornare Elit Elit Limited'),(40,'Ornare Sagittis Felis Associates'),(75,'Ornare Tortor Corp.'),(11,'Parturient Corp.'),(3,'Pede LLP'),(2,'Pharetra Consulting'),(14,'Phasellus Consulting'),(15,'Placerat Eget Venenatis Company'),(8,'Placerat Eget Venenatis Consulting'),(64,'Praesent Eu Dui Associates'),(69,'Pulvinar Arcu Et Consulting'),(98,'Purus LLC'),(89,'Quam LLC'),(5,'Quisque Fringilla Foundation'),(86,'Quisque Purus Sapien LLC'),(4,'Quisque Tincidunt Incorporated'),(77,'Rhoncus Foundation'),(53,'Risus Duis A Limited'),(92,'Scelerisque Scelerisque Consulting'),(88,'Sed Est Nunc Inc.'),(57,'Sed Hendrerit Ltd'),(73,'Sed Pede Nec Corp.'),(17,'Sem Consequat Nec Limited'),(1,'Sem Molestie Corp.'),(93,'Semper Nam Institute'),(96,'Suspendisse Ac Foundation'),(87,'Suspendisse Consulting'),(90,'Suspendisse Sed Dolor LLP'),(76,'Tempus Risus Donec Associates'),(81,'Tincidunt Nibh Phasellus Industries'),(95,'Ultricies Institute'),(84,'Ultricies LLC'),(97,'Ut Tincidunt Vehicula PC'),(19,'Varius Ultrices Mauris Inc.'),(51,'Vel Arcu Eu Consulting'),(71,'Vivamus Nibh Dolor Inc.'),(65,'Vulputate Eu LLC');
/*!40000 ALTER TABLE `Podcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (1,'Administrador'),(2,'Basico'),(3,'Premium'),(4,'Administrador'),(5,'Basico'),(6,'Premium'),(7,'Administrador'),(8,'Basico'),(9,'Premium');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarjeta`
--

DROP TABLE IF EXISTS `Tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tarjeta` (
  `idTarjeta` int(11) NOT NULL,
  `CodUser` int(11) DEFAULT NULL,
  `NumTarjeta` float DEFAULT NULL,
  `FechaExpTarjeta` date NOT NULL,
  `cvcTarjeta` int(11) NOT NULL,
  PRIMARY KEY (`idTarjeta`),
  UNIQUE KEY `NumTarjeta` (`NumTarjeta`),
  KEY `fk_tarjetauser` (`CodUser`),
  CONSTRAINT `fk_tarjetauser` FOREIGN KEY (`CodUser`) REFERENCES `Usuario` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarjeta`
--

LOCK TABLES `Tarjeta` WRITE;
/*!40000 ALTER TABLE `Tarjeta` DISABLE KEYS */;
INSERT INTO `Tarjeta` VALUES (1,1,1,'2029-08-20',1),(2,26,2,'2003-08-20',2),(3,28,3,'2019-05-21',3),(4,29,4,'2016-09-19',4),(5,30,5,'2022-12-20',5),(6,31,6,'2024-09-20',6),(7,32,7,'2006-09-19',7),(8,26,8,'2002-10-19',8),(9,29,9,'2017-07-20',9),(10,30,10,'2005-04-20',10),(11,31,11,'2027-09-20',11),(12,32,12,'2003-03-20',12),(13,1,13,'2001-08-20',13),(14,26,14,'2004-01-21',14),(15,30,15,'2019-05-21',15),(16,31,16,'2015-10-19',16),(17,32,17,'2002-11-20',17),(18,1,18,'2025-03-20',18),(19,31,19,'2029-06-19',19),(20,32,20,'2024-09-20',20),(21,29,21,'2015-06-19',21),(22,28,22,'2010-09-19',22),(23,NULL,23,'2023-02-20',23),(24,NULL,24,'2019-11-20',24),(25,NULL,25,'2016-09-19',25),(26,NULL,26,'2020-07-20',26),(27,NULL,27,'2018-04-20',27),(28,NULL,28,'2027-08-19',28),(29,NULL,29,'2022-09-19',29),(30,NULL,30,'2003-04-20',30),(31,NULL,31,'2008-04-20',31),(32,NULL,32,'2001-02-20',32),(33,NULL,33,'2026-08-20',33),(34,NULL,34,'2025-03-21',34),(35,NULL,35,'2016-02-21',35),(36,NULL,36,'2006-02-21',36),(37,NULL,37,'2012-01-20',37),(38,NULL,38,'2013-09-19',38),(39,NULL,39,'2027-07-19',39),(40,NULL,40,'2016-06-19',40),(41,NULL,41,'2027-12-19',41),(42,NULL,42,'2013-09-19',42),(43,NULL,43,'2022-04-21',43),(44,NULL,44,'2027-05-20',44),(45,NULL,45,'2010-05-21',45),(46,NULL,46,'2026-11-20',46),(47,NULL,47,'2004-04-20',47),(48,NULL,48,'2023-11-19',48),(49,NULL,49,'2015-11-20',49),(50,NULL,50,'2005-09-20',50),(51,NULL,51,'2021-09-19',51),(52,NULL,52,'2019-09-19',52),(53,NULL,53,'2002-09-20',53),(54,NULL,54,'2026-11-19',54),(55,NULL,55,'2002-03-20',55),(56,NULL,56,'2007-09-20',56),(57,NULL,57,'2024-10-19',57),(58,NULL,58,'2029-12-19',58),(59,NULL,59,'2018-12-19',59),(60,NULL,60,'2029-09-20',60),(61,NULL,61,'2010-01-21',61),(62,NULL,62,'2005-02-21',62),(63,NULL,63,'2009-11-20',63),(64,NULL,64,'2017-05-20',64),(65,NULL,65,'2023-07-20',65),(66,NULL,66,'2016-02-21',66),(67,NULL,67,'2001-11-20',67),(68,NULL,68,'2027-12-19',68),(69,NULL,69,'2013-09-20',69),(70,NULL,70,'2012-04-21',70),(71,NULL,71,'2023-07-20',71),(72,NULL,72,'2022-05-21',72),(73,NULL,73,'2028-04-21',73),(74,NULL,74,'2015-07-19',74),(75,NULL,75,'2025-12-20',75),(76,NULL,76,'2021-02-21',76),(77,NULL,77,'2004-06-20',77),(78,NULL,78,'2009-07-19',78),(79,NULL,79,'2019-12-19',79),(80,NULL,80,'2025-11-19',80),(81,NULL,81,'2015-03-20',81),(82,NULL,82,'2017-02-20',82),(83,NULL,83,'2005-08-19',83),(84,NULL,84,'2020-06-20',84),(85,NULL,85,'2023-03-20',85),(86,NULL,86,'2017-04-20',86),(87,NULL,87,'2008-02-20',87),(88,NULL,88,'2023-12-19',88),(89,NULL,89,'2004-08-20',89),(90,NULL,90,'2028-09-20',90),(91,NULL,91,'2014-04-20',91),(92,NULL,92,'2026-05-21',92),(93,NULL,93,'2005-09-20',93),(94,NULL,94,'2012-09-20',94),(95,NULL,95,'2015-01-20',95),(96,NULL,96,'2001-02-20',96),(97,NULL,97,'2018-02-20',97),(98,NULL,98,'2006-07-20',98),(99,NULL,99,'2020-07-19',99),(100,NULL,100,'2012-04-20',100);
/*!40000 ALTER TABLE `Tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `CodPodcasts` int(11) DEFAULT NULL,
  `CodRol` int(11) DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `contrasenia` (`contrasenia`),
  KEY `fk_podcastsusuario` (`CodPodcasts`),
  KEY `fk_rolesuser` (`CodRol`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`),
  CONSTRAINT `fk_podcastsusuario` FOREIGN KEY (`CodPodcasts`) REFERENCES `Podcasts` (`id_podcasts`),
  CONSTRAINT `fk_rolesuser` FOREIGN KEY (`CodRol`) REFERENCES `Roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,60,1,'Ardath','amatz1@bbb.hotmail',1,'2012-10-25','f'),(26,66,2,'Genny','genny@bbb.hotmail',1,'2012-10-25','M'),(28,61,3,'Maria','maria@bbb.hotmail',1,'2012-01-25','F'),(29,54,4,'Julia','julio@bbb.hotmail',2,'2012-10-25','F'),(30,74,5,'Frank','frank@bbb.hotmail',3,'2012-12-25','M'),(31,6,6,'Elias','Elias@bbb.hotmail',4,'2012-11-25','M'),(32,5,7,'Ernesto','ernesto@bbb.hotmail',5,'2012-09-25','M');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favSong`
--

DROP TABLE IF EXISTS `favSong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favSong` (
  `id_favSong` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  `idplaylist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_favSong`),
  KEY `idcancion` (`idcancion`),
  KEY `interprete` (`interprete`),
  KEY `idplaylist` (`idplaylist`),
  CONSTRAINT `favSong_ibfk_1` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`),
  CONSTRAINT `favSong_ibfk_2` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`),
  CONSTRAINT `favSong_ibfk_3` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favSong`
--

LOCK TABLES `favSong` WRITE;
/*!40000 ALTER TABLE `favSong` DISABLE KEYS */;
INSERT INTO `favSong` VALUES (21,1,1,1),(22,2,2,2),(23,3,3,3),(24,4,4,4),(25,5,5,5),(26,6,6,6),(27,7,7,7),(28,8,8,8),(29,9,9,9),(30,10,10,10),(31,11,11,11),(32,12,12,12),(33,13,13,13),(34,14,14,14),(35,15,15,15),(36,16,16,16),(37,17,17,17),(38,18,18,18),(39,19,19,19),(40,20,20,20),(41,21,21,21),(42,22,22,22),(43,23,23,23),(44,24,24,24),(45,25,25,25),(46,26,26,26),(47,27,27,27),(48,28,28,28),(49,29,29,29),(50,30,30,30),(51,31,31,31),(52,32,32,32),(53,33,33,33),(54,34,34,34),(55,35,35,35),(56,36,36,36),(57,37,37,37),(58,38,38,38),(59,39,39,39),(60,40,40,40),(61,41,41,41),(62,42,42,42),(63,43,43,43),(64,44,44,44),(65,45,45,45),(66,46,46,46),(67,47,47,47),(68,48,48,48),(69,49,49,49),(70,50,50,50),(71,51,51,51),(72,52,52,52),(73,53,53,53),(74,54,54,54),(75,55,55,55),(76,56,56,56),(77,57,57,57),(78,58,58,58),(79,59,59,59),(80,60,60,60),(81,61,61,61),(82,62,62,62),(83,63,63,63),(84,64,64,64),(85,65,65,65),(86,66,66,66),(87,67,67,67),(88,68,68,68),(89,69,69,69),(90,70,70,70),(91,71,71,71),(92,72,72,72),(93,73,73,73),(94,74,74,74),(95,75,75,75),(96,76,76,76),(97,77,77,77),(98,78,78,78),(99,79,79,79),(100,80,80,80),(101,81,81,81),(102,82,82,82),(103,83,83,83),(104,84,84,84),(105,85,85,85),(106,86,86,86),(107,87,87,87),(108,88,88,88),(109,89,89,89),(110,90,90,90),(111,91,91,91),(112,92,92,92),(113,93,93,93),(114,94,94,94),(115,95,95,95),(116,96,96,96),(117,97,97,97),(118,98,98,98),(119,99,99,99),(120,100,100,100);
/*!40000 ALTER TABLE `favSong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playList`
--

DROP TABLE IF EXISTS `playList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playList` (
  `id_playList` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_playList`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playList`
--

LOCK TABLES `playList` WRITE;
/*!40000 ALTER TABLE `playList` DISABLE KEYS */;
INSERT INTO `playList` VALUES (3,'A LLP'),(22,'Adipiscing Company'),(9,'Aliquam PC'),(32,'Amet Industries'),(79,'Ante Maecenas Associates'),(10,'Arcu Associates'),(60,'Arcu Corporation'),(51,'Augue Company'),(31,'Commodo Hendrerit Donec LLC'),(98,'Cum Sociis Natoque Ltd'),(62,'Diam Dictum Sapien Corp.'),(86,'Diam Industries'),(25,'Diam Luctus Inc.'),(15,'Dignissim Maecenas Ornare Industries'),(4,'Dis Parturient LLC'),(12,'Dolor Consulting'),(91,'Dui Nec Industries'),(95,'Duis Cursus Incorporated'),(97,'Egestas Urna Corporation'),(63,'Eget Ipsum LLC'),(77,'Eget Venenatis A Associates'),(73,'Elementum Corporation'),(5,'Elementum Sem LLC'),(14,'Elit Nulla Facilisi Associates'),(74,'Enim Diam Vel Foundation'),(20,'Est Mauris Eu Foundation'),(100,'Et Malesuada Fames Institute'),(55,'Eu Ligula Aenean Consulting'),(84,'Eu Sem Corp.'),(19,'Euismod Ac Fermentum Inc.'),(1,'Facilisis Facilisis Magna Foundation'),(67,'Felis Corporation'),(36,'Felis Orci Corp.'),(64,'Feugiat Limited'),(2,'Fringilla Inc.'),(54,'Gravida Limited'),(92,'Hendrerit Id Associates'),(24,'Iaculis Lacus PC'),(66,'Id Sapien Cras Limited'),(53,'In Associates'),(88,'In Institute'),(61,'In LLP'),(78,'Lacinia Orci Company'),(44,'Lacus Corporation'),(41,'Leo Cras PC'),(68,'Libero Morbi Accumsan Limited'),(65,'Lobortis Quam A Corp.'),(27,'Lorem Eu Metus Associates'),(52,'Lorem Foundation'),(56,'Lorem Incorporated'),(89,'Lorem Ipsum Sodales Corp.'),(85,'Lorem Tristique Institute'),(38,'Luctus Vulputate Nisi LLP'),(29,'Magnis Inc.'),(30,'Malesuada Id Erat LLP'),(69,'Massa Vestibulum Accumsan Company'),(13,'Mi LLC'),(59,'Mus Proin Vel Incorporated'),(28,'Nec Imperdiet Nec Corp.'),(6,'Nec Mauris Associates'),(80,'Neque Vitae PC'),(48,'Nibh Enim LLC'),(17,'Non Lacinia At LLP'),(26,'Non Lacinia PC'),(47,'Nulla Corporation'),(34,'Nulla Facilisis Incorporated'),(40,'Nulla Inc.'),(39,'Nullam Corp.'),(76,'Nullam Velit Corporation'),(93,'Nunc Quis Arcu Institute'),(16,'Orci Associates'),(72,'Pede Corp.'),(75,'Pellentesque Corporation'),(49,'Posuere Enim Nisl PC'),(70,'Praesent Eu Nulla Incorporated'),(23,'Praesent Luctus Curabitur Incorporated'),(83,'Proin Ultrices Limited'),(11,'Quis Pede Praesent Corp.'),(94,'Quisque Consulting'),(87,'Quisque Fringilla Euismod LLP'),(46,'Ridiculus Mus Proin Inc.'),(58,'Sagittis Augue Eu Institute'),(33,'Sapien LLP'),(18,'Sed Consulting'),(90,'Sed Dictum Proin PC'),(50,'Sed Libero Institute'),(43,'Sed PC'),(42,'Sed Pharetra Limited'),(7,'Sodales Mauris Blandit LLC'),(71,'Sollicitudin Adipiscing Ligula Limited'),(96,'Sollicitudin Commodo Ltd'),(99,'Ultrices Corp.'),(45,'Urna Inc.'),(35,'Urna Nec PC'),(37,'Ut Pharetra Sed PC'),(82,'Vel Arcu Associates'),(21,'Vel Corp.'),(8,'Velit Sed Malesuada Corp.'),(81,'Venenatis Vel Company'),(57,'Vestibulum Ltd');
/*!40000 ALTER TABLE `playList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recentlyListened`
--

DROP TABLE IF EXISTS `recentlyListened`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recentlyListened` (
  `id_recentlyListened` int(11) NOT NULL AUTO_INCREMENT,
  `idalbum` int(11) DEFAULT NULL,
  `idcancion` int(11) DEFAULT NULL,
  `idplaylist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_recentlyListened`),
  KEY `idalbum` (`idalbum`),
  KEY `idcancion` (`idcancion`),
  KEY `idplaylist` (`idplaylist`),
  CONSTRAINT `recentlyListened_ibfk_1` FOREIGN KEY (`idalbum`) REFERENCES `Album` (`id_album`),
  CONSTRAINT `recentlyListened_ibfk_2` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`),
  CONSTRAINT `recentlyListened_ibfk_3` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recentlyListened`
--

LOCK TABLES `recentlyListened` WRITE;
/*!40000 ALTER TABLE `recentlyListened` DISABLE KEYS */;
INSERT INTO `recentlyListened` VALUES (21,45,1,1),(22,45,1,1),(23,97,2,2),(24,98,3,3),(25,100,4,4),(26,101,5,5),(27,102,6,6),(28,103,7,7),(29,104,8,8),(30,105,9,9),(31,106,10,10);
/*!40000 ALTER TABLE `recentlyListened` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songsPlaylist`
--

DROP TABLE IF EXISTS `songsPlaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songsPlaylist` (
  `id_songsPlaylist` int(11) NOT NULL AUTO_INCREMENT,
  `idplaylist` int(11) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  `idcancion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_songsPlaylist`),
  KEY `idplaylist` (`idplaylist`),
  KEY `interprete` (`interprete`),
  KEY `idcancion` (`idcancion`),
  CONSTRAINT `songsPlaylist_ibfk_1` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`),
  CONSTRAINT `songsPlaylist_ibfk_2` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`),
  CONSTRAINT `songsPlaylist_ibfk_3` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songsPlaylist`
--

LOCK TABLES `songsPlaylist` WRITE;
/*!40000 ALTER TABLE `songsPlaylist` DISABLE KEYS */;
INSERT INTO `songsPlaylist` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10),(11,11,11,11),(12,12,12,12),(13,13,13,13),(14,14,14,14),(15,15,15,15),(16,16,16,16),(17,17,17,17),(18,18,18,18),(19,19,19,19),(20,20,20,20),(21,21,21,21),(22,22,22,22),(23,23,23,23),(24,24,24,24),(25,25,25,25),(26,26,26,26),(27,27,27,27),(28,28,28,28),(29,29,29,29),(30,30,30,30),(31,31,31,31),(32,32,32,32),(33,33,33,33),(34,34,34,34),(35,35,35,35),(36,36,36,36),(37,37,37,37),(38,38,38,38),(39,39,39,39),(40,40,40,40),(41,41,41,41),(42,42,42,42),(43,43,43,43),(44,44,44,44),(45,45,45,45),(46,46,46,46),(47,47,47,47),(48,48,48,48),(49,49,49,49),(50,50,50,50),(51,51,51,51),(52,52,52,52),(53,53,53,53),(54,54,54,54),(55,55,55,55),(56,56,56,56),(57,57,57,57),(58,58,58,58),(59,59,59,59),(60,60,60,60),(61,61,61,61),(62,62,62,62),(63,63,63,63),(64,64,64,64),(65,65,65,65),(66,66,66,66),(67,67,67,67),(68,68,68,68),(69,69,69,69),(70,70,70,70),(71,71,71,71),(72,72,72,72),(73,73,73,73),(74,74,74,74),(75,75,75,75),(76,76,76,76),(77,77,77,77),(78,78,78,78),(79,79,79,79),(80,80,80,80),(81,81,81,81),(82,82,82,82),(83,83,83,83),(84,84,84,84),(85,85,85,85),(86,86,86,86),(87,87,87,87),(88,88,88,88),(89,89,89,89),(90,90,90,90),(91,91,91,91),(92,92,92,92),(93,93,93,93),(94,94,94,94),(95,95,95,95),(96,96,96,96),(97,97,97,97),(98,98,98,98),(99,99,99,99),(100,100,100,100);
/*!40000 ALTER TABLE `songsPlaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vista_Usuarios_con_e`
--

DROP TABLE IF EXISTS `vista_Usuarios_con_e`;
/*!50001 DROP VIEW IF EXISTS `vista_Usuarios_con_e`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vista_Usuarios_con_e` (
  `id_user` tinyint NOT NULL,
  `CodPodcasts` tinyint NOT NULL,
  `CodRol` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contrasenia` tinyint NOT NULL,
  `fecha_nacimiento` tinyint NOT NULL,
  `sexo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_reporteIngresoUsuario`
--

DROP TABLE IF EXISTS `vista_reporteIngresoUsuario`;
/*!50001 DROP VIEW IF EXISTS `vista_reporteIngresoUsuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vista_reporteIngresoUsuario` (
  `username` tinyint NOT NULL,
  `ultima_fecha_ingreso` tinyint NOT NULL,
  `entrada` tinyint NOT NULL,
  `salida` tinyint NOT NULL,
  `cantidad_ingreso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_Usuarios_con_e`
--

/*!50001 DROP TABLE IF EXISTS `vista_Usuarios_con_e`*/;
/*!50001 DROP VIEW IF EXISTS `vista_Usuarios_con_e`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_Usuarios_con_e` AS select `Usuario`.`id_user` AS `id_user`,`Usuario`.`CodPodcasts` AS `CodPodcasts`,`Usuario`.`CodRol` AS `CodRol`,`Usuario`.`username` AS `username`,`Usuario`.`email` AS `email`,`Usuario`.`contrasenia` AS `contrasenia`,`Usuario`.`fecha_nacimiento` AS `fecha_nacimiento`,`Usuario`.`sexo` AS `sexo` from `Usuario` where `Usuario`.`username` like 'E%' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reporteIngresoUsuario`
--

/*!50001 DROP TABLE IF EXISTS `vista_reporteIngresoUsuario`*/;
/*!50001 DROP VIEW IF EXISTS `vista_reporteIngresoUsuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reporteIngresoUsuario` AS select `Usuario`.`username` AS `username`,max(`Ingresos`.`fecha_ingreso`) AS `ultima_fecha_ingreso`,`Ingresos`.`entrada` AS `entrada`,`Ingresos`.`salida` AS `salida`,count(`Ingresos`.`CodUser`) AS `cantidad_ingreso` from (`Usuario` join `Ingresos` on(`Usuario`.`id_user` = `Ingresos`.`CodUser`)) group by `Usuario`.`id_user` */;
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

-- Dump completed on 2020-06-01 17:41:14
