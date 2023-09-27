CREATE DATABASE  IF NOT EXISTS `lab_03` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lab_03`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lab_03
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `ID_depto` int NOT NULL AUTO_INCREMENT,
  `sigla` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_depto`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (100,'RH','Recursos Humanos'),(101,'CTB','Contabilidade'),(102,'VND','Vendas'),(103,'ETQ','Estoque'),(104,'ATM','Atendimento'),(105,'CNG','Carteira de Negócios');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado`
--

DROP TABLE IF EXISTS `empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregado` (
  `ID_emp` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `ID_depto` int NOT NULL,
  `Salario` float DEFAULT NULL,
  PRIMARY KEY (`ID_emp`),
  KEY `FK_Empregado_Departamento` (`ID_depto`),
  CONSTRAINT `FK_Empregado_Departamento` FOREIGN KEY (`ID_depto`) REFERENCES `departamento` (`ID_depto`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado`
--

LOCK TABLES `empregado` WRITE;
/*!40000 ALTER TABLE `empregado` DISABLE KEYS */;
INSERT INTO `empregado` VALUES (1000,'José da Silva','2000-12-20',100,2000),(1001,'Maria das Flores','1995-05-14',101,2500),(1002,'Antônio Lopes','1998-04-18',101,1500),(1003,'Catarina Santos','2002-08-05',102,1500),(1004,'Olívia Andrade','1993-07-19',102,2200),(1005,'Arthur Coimbra','1980-10-06',103,2900),(1006,'Jonas Alves','1990-12-13',103,2080),(1007,'Amélia Silveira','1980-05-06',100,3005);
/*!40000 ALTER TABLE `empregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empskill`
--

DROP TABLE IF EXISTS `empskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empskill` (
  `ID_emp` int NOT NULL,
  `ID_skill` int NOT NULL,
  `nivel` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_emp`,`ID_skill`),
  KEY `FK_EmpSkill_Skill` (`ID_skill`),
  CONSTRAINT `FK_EmpSkill_Empregado` FOREIGN KEY (`ID_emp`) REFERENCES `empregado` (`ID_emp`),
  CONSTRAINT `FK_EmpSkill_Skill` FOREIGN KEY (`ID_skill`) REFERENCES `skill` (`ID_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empskill`
--

LOCK TABLES `empskill` WRITE;
/*!40000 ALTER TABLE `empskill` DISABLE KEYS */;
INSERT INTO `empskill` VALUES (1000,1,'Básico'),(1000,2,'Intermediário'),(1000,3,'Básico'),(1002,4,'Avançado'),(1002,5,'Básico'),(1004,4,'Intermediário'),(1004,5,'Básico');
/*!40000 ALTER TABLE `empskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `ID_skill` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`ID_skill`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'MS Word','Conhece o ambiente do editor de texto e sabe criar, salvar e modificar documentos.'),(2,'MS Excel','Conhece o ambiente da planilha eletrônica e sabe criar, salvar e modificar documentos.'),(3,'MS Power Point','Conhece o ambiente do editor de apresentações e sabe criar, salvar e modificar documentos.'),(4,'Pytho','Conhece linguagem de programação Python e sabe criar, salvar e modificar programas na linguagem.'),(5,'Java','Conhece linguagem de programação Java e sabe criar, salvar e modificar programas na linguagem.'),(6,'HTML','Conhece linguagem de marcação HTML e sabe criar, salvar e modificar documentos HTML.');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-27 17:28:27
