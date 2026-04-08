-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sis04t25
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(200) DEFAULT NULL,
  `ContactName` varchar(200) DEFAULT NULL,
  `PostalCode` int DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Adress` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Mercado Central','Ana Silva',1001,'Brasil','Rua das Flores, 123','São Paulo'),(2,'Global Tech','John Smith',10001,'USA','5th Avenue, 450','New York'),(3,'Boutique Paris','Marie Dubois',75001,'França','Rue de Rivoli, 78','Paris'),(4,'Tech Solutions','Carlos Ortega',6500,'México','Av. Reforma, 500','Cidade do México'),(5,'Cantina Italiana','Giovanni Rossi',100,'Itália','Via Roma, 12','Roma'),(6,'Supermercado Sol','Maria Santos',1250,'Portugal','Av. da Liberdade, 1001','Lisboa'),(7,'London Traders','Elizabeth Brown',0,'UK','Baker Street, 221B','Londres'),(8,'Berlin Import','Hans Müller',10178,'Alemanha','Alexanderplatz, 4','Berlim'),(9,'Tokyo Store','Akira Tanaka',150,'Japão','Shibuya-ku, 1-2-3','Tóquio'),(10,'Andes Export','Elena Gomez',0,'Argentina','Calle Florida, 45','Buenos Aires'),(11,'Nordic Design','Erik Larsson',111,'Suécia','Sveavägen, 10','Estocolmo'),(12,'Sydney Cafe','James Cook',2000,'Austrália','George Street, 200','Sydney'),(13,'Canadian Maple','Sarah Wilson',0,'Canadá','Bay Street, 150','Toronto'),(14,'Madrid Moda','Javier López',28013,'Espanha','Gran Vía, 32','Madri'),(15,'Dublin Pub','Patrick O’Neil',0,'Irlanda','Temple Bar, 5','Dublin'),(16,'Alpine Gears','Stefan Weber',8001,'Suíça','Bahnhofstrasse, 1','Zurique'),(17,'Rio Brindes','Ricardo Lima',22010,'Brasil','Av. Atlântica, 500','Rio de Janeiro'),(18,'Cape Town Fish','David Mbeki',8001,'África do Sul','Victoria Wharf, 1','Cidade do Cabo'),(19,'Vienna Classics','Petra Mayer',1010,'Áustria','Kärntner Straße, 15','Viena'),(20,'Brussels Choc','Luc Janssens',1000,'Bélgica','Grand Place, 10','Bruxelas');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-08 13:02:11
