-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: tugas_akhir
-- ------------------------------------------------------
-- Server version	8.0.19

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
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (8,'Komik',0,'2020-06-15 17:06:55','2020-06-15 17:06:55',NULL),(9,'Novel',0,'2020-06-15 17:06:55','2020-06-15 17:06:55',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `start_date` datetime NOT NULL,
  `expired_date` datetime NOT NULL,
  `createat` datetime NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flashsaledetails`
--

DROP TABLE IF EXISTS `flashsaledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flashsaledetails` (
  `flashsaledetails_id` int NOT NULL AUTO_INCREMENT,
  `discount_id` int NOT NULL,
  `productid` int NOT NULL,
  `discount_price` int NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`flashsaledetails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flashsaledetails`
--

LOCK TABLES `flashsaledetails` WRITE;
/*!40000 ALTER TABLE `flashsaledetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `flashsaledetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image` varchar(400) DEFAULT NULL,
  `stock` int NOT NULL,
  `idcategory` int NOT NULL,
  `price` int NOT NULL,
  `author` varchar(45) NOT NULL,
  `language` varchar(45) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  `publishat` date DEFAULT NULL,
  `totalpage` int NOT NULL,
  `description` mediumtext NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (13,'The Other Side','/product/PROD1592285721029.jpg',100,9,89000,'ALYA RANTI','Indonesia','Pasteli','2012-03-20',312,'Demi melupakan rasa sakit hati kepada Reynand, Ale amemutuskan untuk pindah sekolah. Namun, di sekolah yang baru itu,Alea malah bertemu Revo, yang entah mengapa begitu mirip dengan Reynand. Revo membuat Alea merasa nyaman. Revo yang jail tetapi baik hati, mampu membuat Alea senang. Saat keduanya semakin dekat, terjadi hal-hal yang…',0,'2020-06-16 12:35:21','2020-06-16 12:35:21'),(14,'abcd',NULL,464,8,567576,'bfhgf','jkhk','hkl,hlk','2000-02-20',67,'gjkhgkj',1,'2020-06-16 17:01:08','2020-06-16 17:01:08'),(15,'dasad',NULL,4234,8,32432432,'dadas','dfgdfg','qewqe','2333-02-02',3243,'hgfhgfh',0,'2020-06-16 18:09:16','2020-06-16 18:09:16'),(16,'abcd','/product/PROD1592306379350.jpg',43242,9,12321321,'dgdfgfd','fsdfs','dsfs','1234-12-12',2312,'vcxvcx',0,'2020-06-16 18:19:39','2020-06-16 18:19:39'),(17,'qwe','/product/PROD1592309420851.jpg',798,8,809,'hjhkj','lklkkjlk','hkjhkj','1234-01-12',879,'bmbjkj',0,'2020-06-16 18:25:21','2020-06-16 18:25:21'),(18,'hjhkj',NULL,8988,8,87898,'sfsd','kljjlk','ijolj','9999-06-03',7889,'jkljjjkl',1,'2020-06-16 18:33:38','2020-06-16 18:33:38');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactiondetails`
--

DROP TABLE IF EXISTS `transactiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactiondetails` (
  `idtransactiondetail` int NOT NULL AUTO_INCREMENT,
  `idtransaction` int NOT NULL,
  `idproduct` int NOT NULL,
  `qty` int NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtransactiondetail`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiondetails`
--

LOCK TABLES `transactiondetails` WRITE;
/*!40000 ALTER TABLE `transactiondetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `idtransaction` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `method` varchar(25) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtransaction`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` int NOT NULL DEFAULT '1',
  `isdeleted` int NOT NULL DEFAULT '0',
  `isverified` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastlogin` datetime NOT NULL,
  `isfacebook` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'admin','suhandy4.24@gmail.com','4fe253177747405fcb98c2e8b3f5dd7757d839037862f6f1ae7d4b3e79ee361a',2,0,1,'2020-06-15 23:45:52','2020-06-15 23:45:52','2020-06-17 10:05:47',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-17 21:02:35
