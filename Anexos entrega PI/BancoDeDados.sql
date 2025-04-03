CREATE DATABASE  IF NOT EXISTS `dbloja` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbloja`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbloja
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (15,'Acessórios'),(7,'Blusas'),(2,'Calças'),(1,'Camisetas'),(4,'Casacos'),(9,'Jaquetas'),(10,'Macacões'),(13,'Moda Esportiva'),(12,'Moda Praia'),(11,'Pijamas'),(14,'Roupas Íntimas'),(5,'Saias'),(6,'Shorts'),(8,'Suéteres'),(3,'Vestidos');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Silva','joao@email.com','11987654321','111.111.111-11'),(2,'Maria Santos','maria@email.com','11976543210','222.222.222-22'),(3,'Pedro Oliveira','pedro@email.com','11965432109','333.333.333-33'),(4,'Ana Souza','ana@email.com','11954321098','444.444.444-44'),(5,'Carlos Lima','carlos@email.com','11943210987','555.555.555-55'),(6,'Fernanda Costa','fernanda@email.com','11932109876','666.666.666-66'),(7,'Lucas Mendes','lucas@email.com','11921098765','777.777.777-77'),(8,'Juliana Alves','juliana@email.com','11910987654','888.888.888-88'),(9,'Ricardo Pinto','ricardo@email.com','11909876543','999.999.999-99'),(10,'Beatriz Rocha','beatriz@email.com','11908765432','101.101.101-10'),(11,'Gabriel Martins','gabriel@email.com','11907654321','202.202.202-20'),(12,'Vanessa Nunes','vanessa@email.com','11906543210','303.303.303-30'),(13,'Thiago Ferreira','thiago@email.com','11905432109','404.404.404-40'),(14,'Paula Dias','paula@email.com','11904321098','505.505.505-50'),(15,'Rafael Cardoso','rafael@email.com','11903210987','606.606.606-60');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `idVenda` int NOT NULL AUTO_INCREMENT,
  `dataVenda` date NOT NULL,
  `valorCompra` decimal(10,2) NOT NULL,
  `cliente_idCliente` int NOT NULL,
  PRIMARY KEY (`idVenda`),
  KEY `fk_venda_cliente1_idx` (`cliente_idCliente`),
  CONSTRAINT `fk_venda_cliente1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2024-03-01',79.90,1),(2,'2024-03-02',159.90,2),(3,'2024-03-03',299.90,3),(4,'2024-03-04',49.90,4),(5,'2024-03-05',89.90,5),(6,'2024-03-06',69.90,6),(7,'2024-03-07',199.90,7),(8,'2024-03-08',99.90,8),(9,'2024-03-09',39.90,9),(10,'2024-03-10',129.90,10),(11,'2024-03-11',49.90,11),(12,'2024-03-12',159.90,12),(13,'2024-03-13',99.90,13),(14,'2024-03-14',69.90,14),(15,'2024-03-15',119.90,15),(16,'2024-03-16',249.90,1),(17,'2024-03-17',199.90,2),(18,'2024-03-18',99.90,3),(19,'2024-03-19',89.90,4),(20,'2024-03-20',79.90,5),(21,'2024-03-21',69.90,6),(22,'2024-03-22',279.80,7),(23,'2024-03-23',189.90,8),(24,'2024-03-24',279.90,9),(25,'2024-03-25',299.70,10),(26,'2024-03-26',159.80,11),(27,'2024-03-27',89.90,12),(28,'2024-03-28',119.90,13),(29,'2024-03-29',379.80,14),(30,'2024-03-30',229.90,15),(31,'2024-03-31',79.90,1),(32,'2024-04-01',199.80,2),(33,'2024-04-02',109.90,3),(34,'2024-04-03',119.70,4),(35,'2024-04-04',99.80,5),(36,'2024-04-05',159.90,6),(37,'2024-04-06',399.80,7),(38,'2024-04-07',89.90,8),(39,'2024-04-08',299.70,9),(40,'2024-04-09',199.90,10);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemcompra`
--

DROP TABLE IF EXISTS `itemcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemcompra` (
  `idVenda` int NOT NULL AUTO_INCREMENT,
  `quantidade` int NOT NULL,
  `preçoUnidade` decimal(10,2) NOT NULL,
  `produtos_idProduto` int NOT NULL,
  `compra_idCompra` int NOT NULL,
  PRIMARY KEY (`idVenda`),
  KEY `fk_itemvenda_produtos1_idx` (`produtos_idProduto`),
  KEY `fk_itemvenda_venda1_idx` (`compra_idCompra`),
  CONSTRAINT `fk_itemvenda_produtos1` FOREIGN KEY (`produtos_idProduto`) REFERENCES `produtos` (`idProduto`),
  CONSTRAINT `fk_itemvenda_venda1` FOREIGN KEY (`compra_idCompra`) REFERENCES `compra` (`idVenda`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemcompra`
--

LOCK TABLES `itemcompra` WRITE;
/*!40000 ALTER TABLE `itemcompra` DISABLE KEYS */;
INSERT INTO `itemcompra` VALUES (1,1,79.90,10,1),(2,1,159.90,5,2),(3,1,299.90,8,3),(4,1,49.90,1,4),(5,1,89.90,9,5),(6,1,69.90,12,6),(7,1,199.90,14,7),(8,1,99.90,11,8),(9,1,39.90,15,9),(10,1,129.90,3,10),(11,1,49.90,2,11),(12,1,159.90,6,12),(13,1,99.90,4,13),(14,1,69.90,12,14),(15,1,119.90,13,15),(16,1,249.90,7,16),(17,1,199.90,14,17),(18,1,99.90,11,18),(19,1,89.90,9,19),(20,1,79.90,10,20),(21,1,69.90,16,21),(22,2,139.90,17,22),(23,1,189.90,18,23),(24,1,279.90,19,24),(25,3,99.90,20,25),(26,2,79.90,21,26),(27,1,89.90,22,27),(28,1,119.90,23,28),(29,2,189.90,24,29),(30,1,229.90,25,30),(31,1,79.90,26,31),(32,2,99.90,27,32),(33,1,109.90,28,33),(34,3,39.90,29,34),(35,2,49.90,30,35),(36,1,159.90,31,36),(37,2,199.90,32,37),(38,1,89.90,9,38),(39,3,99.90,11,39),(40,1,199.90,14,40);
/*!40000 ALTER TABLE `itemcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `categoria_idCategoria` int NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `fk_produtos_categoria_idx` (`categoria_idCategoria`),
  CONSTRAINT `fk_produtos_categoria` FOREIGN KEY (`categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Camiseta Básica Branca',49.90,1),(2,'Camiseta Estampada',59.90,1),(3,'Calça Jeans Skinny',129.90,2),(4,'Calça Moletom',99.90,2),(5,'Vestido Floral',159.90,3),(6,'Vestido Longo Preto',199.90,3),(7,'Casaco de Lã',249.90,4),(8,'Jaqueta de Couro',299.90,9),(9,'Short Jeans',89.90,6),(10,'Blusa de Tricô',79.90,7),(11,'Suéter de Algodão',99.90,8),(12,'Pijama de Algodão',69.90,11),(13,'Biquíni Floral',119.90,12),(14,'Tênis Esportivo',199.90,13),(15,'Boné Preto',39.90,15),(16,'Camiseta Polo Azul',69.90,1),(17,'Calça Cargo Bege',139.90,2),(18,'Vestido Midi Vermelho',189.90,3),(19,'Casaco Impermeável',279.90,4),(20,'Saia Plissada',99.90,5),(21,'Shorts de Sarja',79.90,6),(22,'Blusa de Renda',89.90,7),(23,'Suéter Gola Alta',119.90,8),(24,'Jaqueta Jeans',189.90,9),(25,'Macacão Jeans Feminino',229.90,10),(26,'Pijama de Flanela',79.90,11),(27,'Sunga Azul Marinho',99.90,12),(28,'Calça Legging Esportiva',109.90,13),(29,'Cueca Boxer Microfibra',39.90,14),(30,'Sutiã de Renda',49.90,14),(31,'Óculos de Sol Aviador',159.90,15),(32,'Relógio de Pulso Casual',199.90,15);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbloja'
--

--
-- Dumping routines for database 'dbloja'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-02 21:07:13
