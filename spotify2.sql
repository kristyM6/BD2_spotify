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
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` VALUES (1,'Brianna'),(2,'Cedric'),(3,'Nash'),(4,'Dylan'),(5,'Alyssa'),(6,'Clark'),(7,'Rinah'),(8,'Leandra'),(9,'Tiger'),(10,'Marsden'),(11,'Shafira'),(12,'Christian'),(13,'Brendan'),(14,'Deanna'),(15,'Garrett'),(16,'Angelica'),(17,'Diana'),(18,'Zane'),(19,'Lawrence'),(20,'Dolan'),(21,'Dai'),(22,'Griffith'),(23,'Avye'),(24,'Sylvia'),(25,'Drake'),(26,'Judah'),(27,'Imani'),(28,'Reed'),(29,'Cruz'),(30,'Kai'),(31,'Kevyn'),(32,'Geraldine'),(33,'Kylan'),(34,'Thaddeus'),(35,'Aaron'),(36,'Justina'),(37,'Conan'),(38,'Clayton'),(39,'Lysandra'),(40,'Jacqueline'),(41,'Graham'),(42,'Doris'),(43,'Cora'),(44,'Shellie'),(45,'Elton'),(46,'Reece'),(47,'Stone'),(48,'Julie'),(49,'Xaviera'),(50,'Lionel'),(51,'Rogan'),(52,'Yvette'),(53,'Nolan'),(54,'Dana'),(55,'Ava'),(56,'Kasimir'),(57,'Jocelyn'),(58,'Solomon'),(59,'Justin'),(60,'Quentin'),(61,'Herrod'),(62,'Zena'),(63,'Keith'),(64,'Wang'),(65,'Nehru'),(66,'Althea'),(67,'Melodie'),(68,'Bryar'),(69,'Kane'),(70,'Lars'),(71,'Xantha'),(72,'Mark'),(73,'Carissa'),(74,'Armando'),(75,'Hilda'),(76,'Emmanuel'),(77,'Miriam'),(78,'Ignacia'),(79,'Desiree'),(80,'Gage'),(81,'Yoshio'),(82,'Todd'),(83,'Laith'),(84,'Audrey'),(85,'Kasimir'),(86,'Larissa'),(87,'Prescott'),(88,'Sade'),(89,'Aladdin'),(90,'Cullen'),(91,'Ezekiel'),(92,'Tucker'),(93,'Odessa'),(94,'Ria'),(95,'Catherine'),(96,'Margaret'),(97,'Maxwell'),(98,'Wallace'),(99,'Jaime'),(100,'Price'),(101,'Brianna'),(102,'Cedric'),(103,'Nash'),(104,'Dylan'),(105,'Alyssa'),(106,'Clark'),(107,'Rinah'),(108,'Leandra'),(109,'Tiger'),(110,'Marsden'),(111,'Shafira'),(112,'Christian'),(113,'Brendan'),(114,'Deanna'),(115,'Garrett'),(116,'Angelica'),(117,'Diana'),(118,'Zane'),(119,'Lawrence'),(120,'Dolan'),(121,'Dai'),(122,'Griffith'),(123,'Avye'),(124,'Sylvia'),(125,'Drake'),(126,'Judah'),(127,'Imani'),(128,'Reed'),(129,'Cruz'),(130,'Kai'),(131,'Kevyn'),(132,'Geraldine'),(133,'Kylan'),(134,'Thaddeus'),(135,'Aaron'),(136,'Justina'),(137,'Conan'),(138,'Clayton'),(139,'Lysandra'),(140,'Jacqueline'),(141,'Graham'),(142,'Doris'),(143,'Cora'),(144,'Shellie'),(145,'Elton'),(146,'Reece'),(147,'Stone'),(148,'Julie'),(149,'Xaviera'),(150,'Lionel'),(151,'Rogan'),(152,'Yvette'),(153,'Nolan'),(154,'Dana'),(155,'Ava'),(156,'Kasimir'),(157,'Jocelyn'),(158,'Solomon'),(159,'Justin'),(160,'Quentin'),(161,'Herrod'),(162,'Zena'),(163,'Keith'),(164,'Wang'),(165,'Nehru'),(166,'Althea'),(167,'Melodie'),(168,'Bryar'),(169,'Kane'),(170,'Lars'),(171,'Xantha'),(172,'Mark'),(173,'Carissa'),(174,'Armando'),(175,'Hilda'),(176,'Emmanuel'),(177,'Miriam'),(178,'Ignacia'),(179,'Desiree'),(180,'Gage'),(181,'Yoshio'),(182,'Todd'),(183,'Laith'),(184,'Audrey'),(185,'Kasimir'),(186,'Larissa'),(187,'Prescott'),(188,'Sade'),(189,'Aladdin'),(190,'Cullen'),(191,'Ezekiel'),(192,'Tucker'),(193,'Odessa'),(194,'Ria'),(195,'Catherine'),(196,'Margaret'),(197,'Maxwell'),(198,'Wallace'),(199,'Jaime'),(200,'Price');
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
INSERT INTO `Cancion` VALUES (1,'Molestie Arcu Institute','11:05:20',1),(2,'Molestie In LLP','01:26:21',2),(3,'Nec Enim Nunc Limited','11:01:19',3),(4,'Et Rutrum Industries','05:16:20',4),(5,'Aliquam Associates','11:15:20',5),(6,'Nisl Arcu Institute','01:11:20',6),(7,'Et Institute','06:15:20',7),(8,'Lobortis Ultrices Ltd','12:08:19',8),(9,'Turpis In Institute','08:25:20',9),(10,'In Corp.','12:06:20',10),(11,'Vestibulum Ltd','06:12:20',11),(12,'Dictum Phasellus In LLP','01:04:20',12),(13,'Diam Lorem Corp.','01:31:21',13),(14,'Turpis Industries','09:26:19',14),(15,'Tempor Lorem Corporation','04:21:20',15),(16,'Sagittis Nullam Ltd','01:04:21',16),(17,'Euismod Limited','01:12:20',17),(18,'Nam Corp.','11:10:20',18),(19,'Non Quam Pellentesque Inc.','09:22:20',19),(20,'Sit Amet Massa Company','11:12:19',20),(21,'Nec Corporation','12:16:19',21),(22,'Id Nunc Interdum Corporation','11:14:19',22),(23,'Pellentesque Eget PC','02:05:20',23),(24,'Vestibulum Associates','02:06:21',24),(25,'Montes Industries','01:31:21',25),(26,'Ultrices Posuere Foundation','06:27:20',26),(27,'Eu Eleifend Nec Foundation','11:18:19',27),(28,'Ligula Eu Enim Institute','06:25:20',28),(29,'Placerat Orci Inc.','03:09:20',29),(30,'Elit Industries','02:27:21',30),(31,'Cursus A Enim Ltd','02:10:21',31),(32,'Sagittis Felis Company','02:18:20',32),(33,'Ac Corp.','11:17:19',33),(34,'Ultricies Corporation','09:10:19',34),(35,'A Incorporated','01:26:20',35),(36,'Tellus Sem Inc.','11:12:20',36),(37,'Amet Ltd','09:12:20',37),(38,'Arcu Limited','11:02:19',38),(39,'Ut Tincidunt Vehicula Institute','08:04:20',39),(40,'Lectus Ante Dictum Corporation','03:22:21',40),(41,'Lacus Aliquam Rutrum Associates','03:02:21',41),(42,'Dolor Sit Associates','04:15:21',42),(43,'Et Libero Ltd','04:06:21',43),(44,'Integer Corp.','04:20:20',44),(45,'Leo Morbi Corporation','09:25:20',45),(46,'Orci Ut Sagittis LLC','12:14:20',46),(47,'Libero Corp.','05:26:20',47),(48,'Sodales Nisi Company','08:12:20',48),(49,'Mauris Limited','08:20:20',49),(50,'Integer Ltd','08:09:19',50),(51,'Phasellus At Augue Foundation','03:22:20',51),(52,'Diam Company','03:08:20',52),(53,'Suspendisse Institute','09:06:19',53),(54,'Nulla In Tincidunt Company','04:17:21',54),(55,'A PC','05:21:21',55),(56,'Urna Ut Tincidunt Foundation','07:30:20',56),(57,'Mauris Sapien Cursus Foundation','07:29:19',57),(58,'Blandit Enim LLC','05:22:20',58),(59,'Elementum Industries','08:15:20',59),(60,'Posuere Cubilia Curae; LLP','02:18:20',60),(61,'Mauris Non Dui Institute','05:18:21',61),(62,'Enim Diam Vel Consulting','05:11:20',62),(63,'Pharetra Company','04:13:21',63),(64,'A Limited','12:16:20',64),(65,'Nulla Facilisis Suspendisse Corporation','07:02:20',65),(66,'Gravida PC','05:24:20',66),(67,'Per Conubia Institute','03:26:21',67),(68,'Lacus Industries','08:23:19',68),(69,'Natoque Penatibus Et Industries','09:30:20',69),(70,'Vestibulum Accumsan Neque LLC','11:01:19',70),(71,'Vulputate Eu Odio Company','01:30:20',71),(72,'Malesuada Vel Venenatis Company','05:15:20',72),(73,'Arcu Foundation','12:01:19',73),(74,'Magna Malesuada Vel Foundation','08:16:19',74),(75,'Amet Nulla Donec Foundation','12:14:19',75),(76,'Mauris Sapien Cursus Incorporated','04:22:21',76),(77,'Suspendisse Sagittis Corporation','09:11:20',77),(78,'Nunc Mauris Morbi Consulting','06:17:19',78),(79,'Erat Inc.','07:28:20',79),(80,'Ipsum Leo Corporation','12:01:20',80),(81,'Lacus Cras Interdum Industries','04:28:21',81),(82,'Aenean Euismod Mauris Ltd','08:04:20',82),(83,'Convallis Limited','01:14:20',83),(84,'Dictum Placerat PC','11:06:19',84),(85,'Magna Foundation','10:12:19',85),(86,'Mi Foundation','08:23:20',86),(87,'In Magna Phasellus Corp.','03:03:20',87),(88,'Quisque Corp.','03:06:20',88),(89,'Nisi Company','09:30:19',89),(90,'Urna Nec Luctus Limited','12:13:20',90),(91,'Justo Faucibus Corp.','08:17:20',91),(92,'Dapibus Ligula Aliquam Corporation','12:02:20',92),(93,'Odio LLP','05:09:20',93),(94,'Donec Company','06:08:19',94),(95,'Donec Sollicitudin LLP','02:22:20',95),(96,'Elementum Corp.','05:13:20',96),(97,'Tincidunt Dui Augue Foundation','02:15:20',97),(98,'Sed Ltd','03:15:21',98),(99,'Nonummy Ultricies LLC','02:19:21',99),(100,'Orci Foundation','01:09:21',100);
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
-- Table structure for table `Explorar`
--

DROP TABLE IF EXISTS `Explorar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Explorar` (
  `id_explorar` int(11) NOT NULL AUTO_INCREMENT,
  `codExplorar` int(11) DEFAULT NULL,
  `genero` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `mood` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `exitos` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `novedades` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_explorar`),
  KEY `codExplorar` (`codExplorar`),
  CONSTRAINT `Explorar_ibfk_1` FOREIGN KEY (`codExplorar`) REFERENCES `premiumUser` (`id_premiumUser`),
  CONSTRAINT `Explorar_ibfk_2` FOREIGN KEY (`codExplorar`) REFERENCES `basicUser` (`id_basicUser`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Explorar`
--

LOCK TABLES `Explorar` WRITE;
/*!40000 ALTER TABLE `Explorar` DISABLE KEYS */;
INSERT INTO `Explorar` VALUES (41,NULL,'F','Semper Pretium Neque Industries','Turpis Corp.','Amet Limited'),(42,NULL,'F','Vulputate Posuere Industries','Aliquam Corp.','In Condimentum Donec PC'),(43,NULL,'F','Enim Curabitur Massa Corporation','Tristique Pharetra PC','Adipiscing Elit Etiam Inc.'),(44,NULL,'F','Consequat Dolor LLP','Vestibulum Corporation','In Tincidunt Congue Corporation'),(45,NULL,'F','Imperdiet Ornare In Ltd','Sem Elit Company','Ultrices Vivamus Rhoncus Inc.'),(46,NULL,'F','Magna Malesuada Corporation','Odio Phasellus PC','Ipsum Suspendisse Ltd'),(47,NULL,'F','Lorem PC','Amet Consectetuer Adipiscing LLP','Quisque Company'),(48,NULL,'M','Adipiscing Lacus Ut LLC','Vivamus Sit PC','Luctus Ipsum Industries'),(49,NULL,'F','Vehicula Aliquet Company','Blandit Congue Company','Imperdiet Nec Leo Foundation'),(50,NULL,'F','Velit Dui Semper Inc.','Donec Consectetuer Ltd','Erat Semper Consulting'),(133,NULL,'M','Industries','Corp.','Limited');
/*!40000 ALTER TABLE `Explorar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarjeta`
--

DROP TABLE IF EXISTS `Tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tarjeta` (
  `idTarjeta` int(11) NOT NULL,
  `NumTarjeta` int(11) NOT NULL,
  `FechaExpTarjeta` date NOT NULL,
  `cvcTarjeta` int(11) NOT NULL,
  PRIMARY KEY (`idTarjeta`),
  UNIQUE KEY `NumTarjeta` (`NumTarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarjeta`
--

LOCK TABLES `Tarjeta` WRITE;
/*!40000 ALTER TABLE `Tarjeta` DISABLE KEYS */;
INSERT INTO `Tarjeta` VALUES (1,1,'2029-08-20',1),(2,2,'2003-08-20',2),(3,3,'2019-05-21',3),(4,4,'2016-09-19',4),(5,5,'2022-12-20',5),(6,6,'2024-09-20',6),(7,7,'2006-09-19',7),(8,8,'2002-10-19',8),(9,9,'2017-07-20',9),(10,10,'2005-04-20',10),(11,11,'2027-09-20',11),(12,12,'2003-03-20',12),(13,13,'2001-08-20',13),(14,14,'2004-01-21',14),(15,15,'2019-05-21',15),(16,16,'2015-10-19',16),(17,17,'2002-11-20',17),(18,18,'2025-03-20',18),(19,19,'2029-06-19',19),(20,20,'2024-09-20',20),(21,21,'2015-06-19',21),(22,22,'2010-09-19',22),(23,23,'2023-02-20',23),(24,24,'2019-11-20',24),(25,25,'2016-09-19',25),(26,26,'2020-07-20',26),(27,27,'2018-04-20',27),(28,28,'2027-08-19',28),(29,29,'2022-09-19',29),(30,30,'2003-04-20',30),(31,31,'2008-04-20',31),(32,32,'2001-02-20',32),(33,33,'2026-08-20',33),(34,34,'2025-03-21',34),(35,35,'2016-02-21',35),(36,36,'2006-02-21',36),(37,37,'2012-01-20',37),(38,38,'2013-09-19',38),(39,39,'2027-07-19',39),(40,40,'2016-06-19',40),(41,41,'2027-12-19',41),(42,42,'2013-09-19',42),(43,43,'2022-04-21',43),(44,44,'2027-05-20',44),(45,45,'2010-05-21',45),(46,46,'2026-11-20',46),(47,47,'2004-04-20',47),(48,48,'2023-11-19',48),(49,49,'2015-11-20',49),(50,50,'2005-09-20',50),(51,51,'2021-09-19',51),(52,52,'2019-09-19',52),(53,53,'2002-09-20',53),(54,54,'2026-11-19',54),(55,55,'2002-03-20',55),(56,56,'2007-09-20',56),(57,57,'2024-10-19',57),(58,58,'2029-12-19',58),(59,59,'2018-12-19',59),(60,60,'2029-09-20',60),(61,61,'2010-01-21',61),(62,62,'2005-02-21',62),(63,63,'2009-11-20',63),(64,64,'2017-05-20',64),(65,65,'2023-07-20',65),(66,66,'2016-02-21',66),(67,67,'2001-11-20',67),(68,68,'2027-12-19',68),(69,69,'2013-09-20',69),(70,70,'2012-04-21',70),(71,71,'2023-07-20',71),(72,72,'2022-05-21',72),(73,73,'2028-04-21',73),(74,74,'2015-07-19',74),(75,75,'2025-12-20',75),(76,76,'2021-02-21',76),(77,77,'2004-06-20',77),(78,78,'2009-07-19',78),(79,79,'2019-12-19',79),(80,80,'2025-11-19',80),(81,81,'2015-03-20',81),(82,82,'2017-02-20',82),(83,83,'2005-08-19',83),(84,84,'2020-06-20',84),(85,85,'2023-03-20',85),(86,86,'2017-04-20',86),(87,87,'2008-02-20',87),(88,88,'2023-12-19',88),(89,89,'2004-08-20',89),(90,90,'2028-09-20',90),(91,91,'2014-04-20',91),(92,92,'2026-05-21',92),(93,93,'2005-09-20',93),(94,94,'2012-09-20',94),(95,95,'2015-01-20',95),(96,96,'2001-02-20',96),(97,97,'2018-02-20',97),(98,98,'2006-07-20',98),(99,99,'2020-07-19',99),(100,100,'2012-04-20',100);
/*!40000 ALTER TABLE `Tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminUser`
--

DROP TABLE IF EXISTS `adminUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminUser` (
  `id_adminUser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_adminUser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `contrasenia` (`contrasenia`),
  CONSTRAINT `adminUser_ibfk_1` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminUser`
--

LOCK TABLES `adminUser` WRITE;
/*!40000 ALTER TABLE `adminUser` DISABLE KEYS */;
INSERT INTO `adminUser` VALUES (1,'Ardath','amatz1@bbb.hotmail',1,'2012-10-25','f'),(26,'Genny','genny@bbb.hotmail',1,'2012-10-25','M'),(28,'Maria','maria@bbb.hotmail',1,'2012-01-25','F'),(29,'Julia','julio@bbb.hotmail',2,'2012-10-25','F'),(30,'Frank','frank@bbb.hotmail',3,'2012-12-25','M'),(31,'Elias','Elias@bbb.hotmail',4,'2012-11-25','M'),(32,'Ernesto','ernesto@bbb.hotmail',5,'2012-09-25','M');
/*!40000 ALTER TABLE `adminUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basicUser`
--

DROP TABLE IF EXISTS `basicUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicUser` (
  `id_basicUser` int(11) NOT NULL AUTO_INCREMENT,
  `CodbasicUser` int(11) DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_basicUser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `contrasenia` (`contrasenia`),
  KEY `CodbasicUser` (`CodbasicUser`),
  CONSTRAINT `basicUser_ibfk_1` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`),
  CONSTRAINT `basicUser_ibfk_2` FOREIGN KEY (`CodbasicUser`) REFERENCES `adminUser` (`id_adminUser`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicUser`
--

LOCK TABLES `basicUser` WRITE;
/*!40000 ALTER TABLE `basicUser` DISABLE KEYS */;
INSERT INTO `basicUser` VALUES (61,1,'Eliana','Phasellus@rhoncusNullamvelit.org',1,'2019-08-20','M'),(110,1,'Elianna','Phaselluss@rhoncusNullamvelit.org',1,'2019-08-20','M'),(119,1,'Eliannna','Phaselluss@rhoncusNullamvelilt.org',1,'2019-08-20','M'),(120,1,'Martena','ante@vulputate.ca',1,'2019-08-22','F'),(130,1,'Eliannnap','Phasellusss@rhoncusNullamvelilt.org',1,'2019-08-20','M'),(131,1,'Martenaaa','aante@vulputate.ca',1,'2019-08-22','F'),(132,1,'Odette','nonummy@Curabitur.net',1,'2019-09-11','M'),(141,NULL,'Eliannnapp','pPhasellusss@rhoncusNullamvelilt.org',1,'2019-08-20','M'),(142,NULL,'Martenaaap','paante@vulputate.ca',2,'2019-08-22','F'),(143,NULL,'oOdette','nnonummy@Curabitur.net',3,'2019-09-11','M'),(144,NULL,'Alfonso','non@afacilisis.ca',4,'2020-07-10','M'),(145,NULL,'Eli','usss@rhoncusNullamvelilt.org',1,'2019-08-20','M'),(146,NULL,'Martin','pae@vulputate.ca',2,'2019-08-22','F'),(147,NULL,'Tedette','nononummy@Curabitur.net',3,'2019-09-11','M'),(148,NULL,'Alfonsot','nunon@afacilisis.ca',4,'2020-07-10','M'),(149,NULL,'Blair','mauris@odio.org',5,'2019-07-16','F'),(150,NULL,'Dara','purus@Maurisutquam.co.uk',6,'2020-07-30','M'),(151,NULL,'Herrod','scelerisque@lacusMauris.com',7,'2019-08-29','M'),(152,NULL,'Jonah','Cras@mus.com',8,'2019-08-02','M'),(153,NULL,'Yoshi','nunc@venenatis.net',9,'2020-03-27','F'),(154,NULL,'Bell','non@dictummi.org',10,'2019-08-21','F');
/*!40000 ALTER TABLE `basicUser` ENABLE KEYS */;
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
-- Table structure for table `premiumUser`
--

DROP TABLE IF EXISTS `premiumUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premiumUser` (
  `id_premiumUser` int(11) NOT NULL AUTO_INCREMENT,
  `CodpremiumUser` int(11) DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `tarjet` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) COLLATE utf8_bin DEFAULT NULL,
  `tipoPremUser` varchar(45) COLLATE utf8_bin NOT NULL,
  `NumDescargas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_premiumUser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `tarjet` (`tarjet`),
  KEY `CodpremiumUser` (`CodpremiumUser`),
  KEY `contrasenia` (`contrasenia`),
  CONSTRAINT `premiumUser_ibfk_1` FOREIGN KEY (`CodpremiumUser`) REFERENCES `adminUser` (`id_adminUser`),
  CONSTRAINT `premiumUser_ibfk_2` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`),
  CONSTRAINT `premiumUser_ibfk_3` FOREIGN KEY (`tarjet`) REFERENCES `Tarjeta` (`idTarjeta`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiumUser`
--

LOCK TABLES `premiumUser` WRITE;
/*!40000 ALTER TABLE `premiumUser` DISABLE KEYS */;
INSERT INTO `premiumUser` VALUES (71,1,'Clayton','nec@idmagnaet.edu',1,1,'2007-03-20','F','Joy',1),(101,26,'Jin','fringilla.porttitor@condimentum.org',2,2,'2007-03-20','M','Joy',2),(102,28,'Nayda','erat.vel@acnulla.edu',3,3,'2003-12-21','F','Cooper',3),(103,29,'Elizabeth','mi.Duis@consequatenimdiam.net',4,4,'2002-11-21','M','Holmes',4),(104,30,'Xena','malesuada.vel@Donecfeugiat.edu',5,5,'2010-10-20','M','Leo',5),(105,31,'Ezra','euismod.urna.Nullam@Integer.ca',6,6,'2008-09-19','F','Cally',6),(106,32,'Gwendolyn','ante.ipsum@Suspendisse.net',7,7,'2008-07-20','M','Aidan',7);
/*!40000 ALTER TABLE `premiumUser` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-29 15:01:07
