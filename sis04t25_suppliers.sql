-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sis04t25
-- ------------------------------------------------------
-- Server version	5.1.72-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(200) DEFAULT NULL,
  `ContactName` varchar(200) DEFAULT NULL,
  `Adress` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `PostalCode` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Exotic Liquids','Charlotte Cooper','49 Gilbert St.','Londres','0','UK','0'),(2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','0'),(3,'Grandma Kelly Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','0'),(4,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tóquio','100','Japão','0'),(5,'Cooperativa de Quesos','Antonio del Valle','Calle del Rosal 4','Oviedo','33007','Espanha','0'),(6,'Mayumis','Mayumi Ohno','6782-1 Sakura-cho','Osaka','545','Japão','0'),(7,'Pavlova, Ltd.','Ian Devling','74 Rose St.','Melbourne','3058','Austrália','0'),(8,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','0','UK','0'),(9,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Gotemburgo','0','Suécia','31'),(10,'Refrescos Americanos','Guillermo Fernandez','Av. das Nações, 100','São Paulo','4578','Brasil','0'),(11,'Heli Süßwaren GmbH','Petra Winkler','Tiergartenstraße 5','Berlim','10785','Alemanha','0'),(12,'Plutzer Lebensmittel','Martin Bein','Biedermeyerstrasse 15','Frankfurt','60306','Alemanha','0'),(13,'Nord-Ost-Fisch Handels','Sven Petersen','Frau-Holle-Weg 92','Cuxhaven','27478','Alemanha','0'),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Itália','0'),(15,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1337','Noruega','0'),(16,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue','Bend','97701','USA','0'),(17,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Estocolmo','0','Suécia','8'),(18,'Aux Joyeux Ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','França','0'),(19,'New England Seafood Cannery','Robb Merchant','Order Processing Dept.','Boston','2134','USA','0'),(20,'Leka Trading','Chandra Leka','471 Serangoon Loop','Singapura','511','Singapura','555'),(21,'Exotic Liquids','Charlotte Cooper','49 Gilbert St.','Londres','EC1 4SD','UK','0'),(22,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','0'),(23,'Grandma Kelly Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','0'),(24,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tóquio','100','Japão','0'),(25,'Cooperativa de Quesos','Antonio del Valle','Calle del Rosal 4','Oviedo','33007','Espanha','0'),(26,'Mayumis','Mayumi Ohno','6782-1 Sakura-cho','Osaka','545','Japão','0'),(27,'Pavlova, Ltd.','Ian Devling','74 Rose St.','Melbourne','3058','Austrália','0'),(28,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK','0'),(29,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Gotemburgo','S-345 67','Suécia','31'),(30,'Refrescos Americanos','Guillermo Fernandez','Av. das Nações, 100','São Paulo','04578-000','Brasil','0'),(31,'Heli Süßwaren GmbH','Petra Winkler','Tiergartenstraße 5','Berlim','10785','Alemanha','0'),(32,'Plutzer Lebensmittel','Martin Bein','Biedermeyerstrasse 15','Frankfurt','60306','Alemanha','0'),(33,'Nord-Ost-Fisch Handels','Sven Petersen','Frau-Holle-Weg 92','Cuxhaven','27478','Alemanha','0'),(34,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Itália','0'),(35,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1337','Noruega','0'),(36,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue','Bend','97701','USA','0'),(37,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Estocolmo','S-123 45','Suécia','8'),(38,'Aux Joyeux Ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','França','0'),(39,'New England Seafood Cannery','Robb Merchant','Order Processing Dept.','Boston','02134','USA','0'),(40,'Leka Trading','Chandra Leka','471 Serangoon Loop','Singapura','0511','Singapura','555'),(41,'Exotic Liquids','Charlotte Cooper','49 Gilbert St.','Londres','EC1 4SD','UK','(171) 555-2222'),(42,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','(100) 555-4822'),(43,'Grandma Kelly Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','(313) 555-5735'),(44,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tóquio','100','Japão','(03) 3555-5011'),(45,'Cooperativa de Quesos','Antonio del Valle','Calle del Rosal 4','Oviedo','33007','Espanha','(98) 598 76 54'),(46,'Mayumis','Mayumi Ohno','6782-1 Sakura-cho','Osaka','545','Japão','(06) 431-7877'),(47,'Pavlova, Ltd.','Ian Devling','74 Rose St.','Melbourne','3058','Austrália','(03) 444-2343'),(48,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK','(161) 555-4448'),(49,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Gotemburgo','S-345 67','Suécia','031-987 65 43'),(50,'Refrescos Americanos','Guillermo Fernandez','Av. das Nações, 100','São Paulo','04578-000','Brasil','(11) 5505-1234'),(51,'Heli Süßwaren GmbH','Petra Winkler','Tiergartenstraße 5','Berlim','10785','Alemanha','(010) 9984510'),(52,'Plutzer Lebensmittel','Martin Bein','Biedermeyerstrasse 15','Frankfurt','60306','Alemanha','(069) 992755'),(53,'Nord-Ost-Fisch Handels','Sven Petersen','Frau-Holle-Weg 92','Cuxhaven','27478','Alemanha','(04721) 8713'),(54,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Itália','(0544) 60302'),(55,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1337','Noruega','(0) 2-953010'),(56,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue','Bend','97701','USA','(503) 555-9931'),(57,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Estocolmo','S-123 45','Suécia','08-123 45 67'),(58,'Aux Joyeux Ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','França','(1) 03.83.00.68'),(59,'New England Seafood Cannery','Robb Merchant','Order Processing Dept.','Boston','02134','USA','(617) 555-3267'),(60,'Leka Trading','Chandra Leka','471 Serangoon Loop','Singapura','0511','Singapura','555-8787');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-06 16:16:07
