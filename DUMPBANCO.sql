-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: sicooperative
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `associado`
--

DROP TABLE IF EXISTS `associado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associado`
--

LOCK TABLES `associado` WRITE;
/*!40000 ALTER TABLE `associado` DISABLE KEYS */;
INSERT INTO `associado` VALUES (1,'usuario 1','usuario 1',33,'usuario1@usr.com'),(2,'usuario 2','usuario 2',18,'usuario2@usr.com'),(3,'usuario 3','usuario 3',90,'usuario3@usr.com'),(4,'usuario 4','usuario 4',30,'usuario4@usr.com'),(5,'usuario 5','usuario 5',20,'usuario5@usr.com'),(6,'usuario 6','usuario 6',50,'usuario6@usr.com'),(7,'usuario 7','usuario 7',41,'usuario7@usr.com'),(8,'usuario 8','usuario 8',64,'usuario8@usr.com'),(9,'usuario 9','usuario 9',27,'usuario9@usr.com'),(10,'usuario 10','usuario 10',40,'usuario10@usr.com');
/*!40000 ALTER TABLE `associado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartao`
--

DROP TABLE IF EXISTS `cartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_cartao` int NOT NULL,
  `nome_impresso` varchar(100) NOT NULL,
  `id_conta` int NOT NULL,
  `id_associado` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartao`
--

LOCK TABLES `cartao` WRITE;
/*!40000 ALTER TABLE `cartao` DISABLE KEYS */;
INSERT INTO `cartao` VALUES (1,111111,'Usuario 1',1,1),(2,222222,'Usuario 1',2,2),(3,333333,'Usuario 1',3,3),(4,444444,'Usuario 1',4,4),(5,555555,'Usuario 1',5,5),(6,555556,'Usuario 1',6,5),(7,565556,'Usuario 1',6,5),(8,555557,'Usuario 1',7,5),(9,577757,'Usuario 1',7,5),(10,666666,'Usuario 1',8,6),(11,777777,'Usuario 1',9,7),(12,888888,'Usuario 1',10,8),(13,999999,'Usuario 1',11,9),(14,101012,'Usuario 1',12,10),(15,101013,'Usuario 1',13,10);
/*!40000 ALTER TABLE `cartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta`
--

DROP TABLE IF EXISTS `conta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_conta` varchar(45) NOT NULL,
  `data_criacao` timestamp(2) NOT NULL,
  `id_associado` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta`
--

LOCK TABLES `conta` WRITE;
/*!40000 ALTER TABLE `conta` DISABLE KEYS */;
INSERT INTO `conta` VALUES (1,'corrente','2022-03-19 18:04:21.00',1),(2,'poupança','2022-03-19 18:04:21.00',2),(3,'corrente','2022-03-19 18:04:21.00',3),(4,'corrente','2022-03-19 18:04:21.00',4),(5,'corrente','2022-03-19 18:04:21.00',5),(6,'corrente','2022-03-19 18:04:21.00',5),(7,'poupança','2022-03-19 18:04:21.00',5),(8,'corrente','2022-03-19 18:04:21.00',6),(9,'poupança','2022-03-19 18:04:21.00',7),(10,'corrente','2022-03-19 18:04:21.00',8),(11,'poupança','2022-03-19 18:04:21.00',9),(12,'corrente','2022-03-19 18:04:21.00',10),(13,'poupança','2022-03-19 18:04:21.00',10);
/*!40000 ALTER TABLE `conta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimento`
--

DROP TABLE IF EXISTS `movimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vlr_transacao` decimal(10,2) NOT NULL,
  `des_transacao` varchar(500) NOT NULL,
  `data_movimento` timestamp NOT NULL,
  `id_cartao` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimento`
--

LOCK TABLES `movimento` WRITE;
/*!40000 ALTER TABLE `movimento` DISABLE KEYS */;
INSERT INTO `movimento` VALUES (1,10000.00,'compra','2022-03-19 18:04:21',1),(2,9000.00,'compra','2017-06-25 03:00:00',2),(3,5000.00,'compra','2022-03-29 18:04:21',3),(4,2000.00,'compra','2022-03-14 18:04:21',4),(5,399.00,'compra','2022-03-13 18:04:21',5),(6,500.00,'compra','2022-03-11 18:04:21',6),(7,1000.00,'compra','2022-03-24 18:04:21',7),(8,1500.00,'compra','2022-03-19 18:04:21',8),(9,1050.00,'compra','2022-03-19 18:04:21',9),(10,700.00,'compra','2022-03-19 18:04:21',10),(11,1023.00,'saque','2022-03-26 18:04:21',11),(12,23000.00,'compra','2022-03-19 18:04:21',12),(13,8500.00,'compra','2022-03-19 18:04:21',13),(14,3000.00,'compra','2022-03-14 18:04:21',14),(15,3500.00,'paeclamento','2022-03-19 18:04:21',15),(16,9000.00,'compra','2022-03-28 18:04:21',14),(17,8500.00,'compra','2022-03-31 18:04:21',14),(18,12000.00,'compra','2022-04-03 18:04:21',14),(19,999.00,'compra','2022-03-12 18:04:21',14),(20,30.00,'compra','2022-03-10 18:04:21',14);
/*!40000 ALTER TABLE `movimento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 15:07:03
