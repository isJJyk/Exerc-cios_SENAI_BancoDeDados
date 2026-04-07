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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(200) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Photo` blob,
  `Notes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Silva','Ricardo','1985-03-12',_binary 'emp1.jpg','Especialista em logística com 10 anos de experiência.'),(2,'Santos','Maria','1990-07-25',_binary 'emp2.jpg','Coordenadora de vendas, fluente em inglês e espanhol.'),(3,'Oliveira','Ana','1992-11-05',_binary 'emp3.jpg','Graduada em Administração, foca em gestão de pessoas.'),(4,'Souza','Carlos','1980-01-30',_binary 'emp4.jpg','Técnico sênior responsável pela manutenção da frota.'),(5,'Pereira','Juliana','1988-05-14',_binary 'emp5.jpg','Expert em atendimento ao cliente e resolução de conflitos.'),(6,'Ferreira','Lucas','1995-09-20',_binary 'emp6.jpg','Desenvolvedor focado em sistemas de automação interna.'),(7,'Almeida','Fernanda','1983-12-08',_binary 'emp7.jpg','Diretora financeira com foco em redução de custos.'),(8,'Costa','Roberto','1979-04-17',_binary 'emp8.jpg','Supervisor de armazém com certificação em segurança.'),(9,'Rodrigues','Beatriz','1991-06-22',_binary 'emp9.jpg','Analista de marketing digital e mídias sociais.'),(10,'Martins','André','1987-10-10',_binary 'emp10.jpg','Responsável pelo controle de qualidade de suprimentos.'),(11,'Barbosa','Camila','1994-02-28',_binary 'emp11.jpg','Assistente de RH focada em processos de recrutamento.'),(12,'Rocha','Felipe','1982-08-15',_binary 'emp12.jpg','Gerente de TI com foco em infraestrutura de rede.'),(13,'Lima','Patrícia','1989-12-01',_binary 'emp13.jpg','Contadora sênior com vasta experiência em auditoria.'),(14,'Gomes','Gabriel','1993-03-19',_binary 'emp14.jpg','Especialista em SEO e análise de dados de mercado.'),(15,'Ribeiro','Vanessa','1986-11-30',_binary 'emp15.jpg','Coordenadora de eventos e relações públicas.'),(16,'Carvalho','Marcos','1981-05-09',_binary 'emp16.jpg','Analista de sistemas com foco em segurança da informação.'),(17,'Mendes','Letícia','1996-07-04',_binary 'emp17.jpg','Estagiária de design gráfico com grande potencial criativo.'),(18,'Teixeira','Bruno','1984-09-27',_binary 'emp18.jpg','Operador de máquinas pesadas e instrutor técnico.'),(19,'Moreira','Aline','1990-01-12',_binary 'emp19.jpg','Secretária executiva com foco em organização de diretoria.'),(20,'Nunes','Sérgio','1975-06-18',_binary 'emp20.jpg','Veterano da empresa, atua como consultor estratégico.');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-06 16:16:08
