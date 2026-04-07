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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Bebidas','Refrigerantes, cafés, chás, cervejas e sucos.'),(2,'Condimentos','Molhos doces e picantes, temperos e pastas.'),(3,'Confeitos','Doces, balas, chocolates e sobremesas prontas.'),(4,'Laticínios','Queijos, leites, manteigas e iogurtes.'),(5,'Grãos/Cereais','Pães, biscoitos, massas e cereais matinais.'),(6,'Carnes/Aves','Carnes preparadas, cortes bovinos e frango.'),(7,'Hortifrutis','Frutas frescas, secas e vegetais variados.'),(8,'Frutos do Mar','Peixes, algas, camarões e frutos do mar em conserva.'),(9,'Padaria','Pães artesanais, bolos e tortas frescas.'),(10,'Congelados','Refeições prontas, pizzas e sorvetes.'),(11,'Limpeza','Detergentes, desinfetantes e produtos para lavanderia.'),(12,'Higiene Pessoal','Shampoos, sabonetes e cremes dentais.'),(13,'Pet Shop','Rações para cães e gatos e acessórios para pets.'),(14,'Eletrônicos','Cabos, adaptadores e pequenos gadgets.'),(15,'Papelaria','Cadernos, canetas e material de escritório.'),(16,'Utilidades Domésticas','PANELAS, talheres e utensílios de cozinha.'),(17,'Saúde/Bem-estar','Vitaminas, suplementos e primeiros socorros.'),(18,'Bebidas Alcoólicas','Vinhos, destilados e licores importados.'),(19,'Jardinagem','Sementes, fertilizantes e ferramentas de plantio.'),(20,'Automotivo','Óleos, fluidos e acessórios para veículos.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
