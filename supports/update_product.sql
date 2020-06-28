-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: team_api
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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (5,'erby s'),(6,'taku sakamoto'),(7,'nisioisin, oh!great'),(8,'haruichi furudate'),(9,'hiro morito'),(10,'glsongi (via carrot korean agency)'),(11,'jonbray'),(12,'pionicon'),(13,'kotono kato'),(14,'hitoshi iwaaki'),(15,'joji morikawa'),(16,'maybe'),(17,'mikoto yamaguchi, yuki sato'),(18,'tony wong'),(19,'pidi baiq'),(20,'alffy rev'),(21,'albait mubaroq'),(22,'sdavinci'),(23,'tzu, sun'),(24,'rintik sedu'),(25,'puthut ea'),(26,'ripaajp'),(27,'rudi utomo'),(28,'djenar maesa ayu'),(29,'budi darma'),(30,'fakhrisina amalia'),(31,'mijin jung'),(32,'mia arsjad'),(33,'tere liye'),(34,'tim oopredoo'),(35,'Yusup Somadinata'),(36,'veronica winata'),(37,'aifa syah'),(38,'yayasan lentera kasih agape'),(39,'husna widyani'),(40,'seoul cultural publisher, inc.'),(41,'toni matas'),(42,'hastarita dewanti\"'),(43,'l.j. sattgast'),(44,'wulan mulya pratiwi'),(45,'dwi putra'),(46,'lilis hu'),(47,'feny andiani'),(48,'ari wulandari'),(49,'luluk hf'),(50,'titish ak'),(51,'pricillia a.w.'),(52,'shania kurniawan'),(53,'hardanto raditya'),(54,'kanti pertiwi, dkk.'),(55,'dede pratiwi'),(56,'dheyamela'),(57,'viera fitani');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booksformat`
--

DROP TABLE IF EXISTS `booksformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booksformat` (
  `format_id` int NOT NULL AUTO_INCREMENT,
  `isbn` bigint DEFAULT NULL,
  `sku` int DEFAULT NULL,
  `height` decimal(5,3) NOT NULL,
  `width` decimal(5,3) NOT NULL,
  `weight` decimal(5,3) NOT NULL,
  `totalpage` smallint NOT NULL,
  `publishat` datetime NOT NULL,
  `language` varchar(25) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  PRIMARY KEY (`format_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booksformat`
--

LOCK TABLES `booksformat` WRITE;
/*!40000 ALTER TABLE `booksformat` DISABLE KEYS */;
INSERT INTO `booksformat` VALUES (7,9786026595317,207927906,20.000,14.000,0.260,284,'2017-06-14 00:00:00','indonesia','histeria'),(9,9786230016530,720010571,17.200,11.400,0.093,192,'2020-06-14 00:00:00','indonesia','elex media komputindo'),(10,9786230015519,720010470,18.000,13.000,0.150,192,'2020-06-14 00:00:00','indonesia','elex media komputindo'),(11,9786230300721,532060055,17.200,11.400,0.120,216,'2020-06-14 00:00:00','indonesia','m&c!'),(12,9786230015816,720010499,17.200,11.400,0.093,192,'2020-06-14 00:00:00','indonesia','elex media komputindo'),(13,9786230015885,720020502,22.000,15.000,0.500,208,'2020-06-01 00:00:00','indonesia','elex media komputindo'),(14,9786230015861,720020501,22.000,15.000,0.500,200,'2020-06-01 00:00:00','indonesia','elex media komputindo'),(15,9786022203360,208041552,20.000,14.000,0.150,120,'2019-06-11 00:00:00','indonesia','bukune'),(16,9786022203070,208024101,19.000,13.000,0.150,132,'2019-05-15 00:00:00','indonesia','bukune'),(17,9786020484990,718011626,18.000,13.000,0.125,176,'2018-10-23 00:00:00','indonesia','elex media komputindo'),(18,9786020483986,718011469,18.000,13.000,0.120,208,'2018-10-09 00:00:00','indonesia','elex media komputindo'),(19,9786020483528,718011460,18.000,12.000,0.120,192,'2018-10-09 00:00:00','indonesia','elex media komputindo'),(20,9786020478685,718011258,18.000,12.000,0.120,192,'2018-10-02 00:00:00','indonesia','elex media komputindo'),(21,9786020480190,718011419,18.000,12.000,0.120,200,'2018-09-25 00:00:00','indonesia','elex media komputindo'),(22,9786024289560,531850004,24.500,17.000,0.250,184,'2018-09-18 00:00:00','indonesia','m&c!'),(23,9786024289560,531850004,24.500,17.000,0.250,184,'2018-09-18 00:00:00','indonesia','m&c!'),(24,9786024289560,531850004,24.500,17.000,0.250,184,'2018-09-18 00:00:00','indonesia','m&c!'),(25,9786020851563,207108747,20.000,14.000,0.350,132,'2018-08-19 00:00:00','indonesia','mizan publishing'),(26,9786237211006,208017667,19.000,13.000,0.199,199,'2018-03-19 00:00:00','indonesia','loveable x bhumi anoma'),(27,9786022081845,208059873,19.000,13.000,0.205,284,'2018-04-19 00:00:00','indonesia','gradienmediatama'),(28,9786022081845,208059873,19.000,13.000,0.205,284,'2018-04-19 00:00:00','indonesia','gradienmediatama'),(29,9786022081845,208059873,19.000,13.000,0.205,284,'2018-04-19 00:00:00','indonesia','gradienmediatama'),(30,9786022081852,208059910,19.000,13.000,0.231,316,'2019-04-19 00:00:00','indonesia','gradienmediatama'),(31,0,207954318,24.000,17.000,0.200,0,'2018-10-19 00:00:00','indonesia','penguin random house'),(32,9789797809096,207959053,20.000,14.000,0.200,253,'2017-11-19 00:00:00','indonesia','gagas media'),(33,9786237284086,208033040,18.000,12.000,0.200,106,'2017-08-18 00:00:00','indonesia','buku mojok'),(34,9786237211334,208037884,19.000,13.000,0.166,240,'2019-10-19 00:00:00','indonesia','romancious'),(35,9786024813970,592001802,20.000,13.500,0.140,175,'2019-06-28 00:00:00','indonesia','kepustakaan populer gramedia'),(36,9786020322469,620202021,21.000,14.000,0.280,148,'2020-06-28 00:00:00','indonesia','gramedia pustaka utama'),(37,9786020322469,620202021,21.000,14.000,0.280,148,'2020-06-28 00:00:00','indonesia','gramedia pustaka utama'),(38,9786020642161,620202022,20.000,13.500,0.140,168,'2019-06-28 00:00:00','indonesia','gramedia pustaka utama'),(39,9786024814007,592001800,19.000,13.000,0.160,246,'2019-06-28 00:00:00','indonesia','kepustakaan populer gramedia'),(40,9786237351283,208059916,19.000,13.000,0.230,300,'2019-06-14 00:00:00','indonesia','haru'),(41,9789792230345,620171008,20.000,13.500,0.250,384,'2019-06-14 00:00:00','indonesia','gramedia pustaka utama'),(42,9786020639369,620153004,20.000,13.500,0.300,408,'2020-06-14 00:00:00','indonesia','gramedia pustaka utama'),(43,9786230006296,719121315,24.000,18.000,0.450,120,'2019-09-22 00:00:00','indonesia','elex media komputindo'),(44,0,719121315,58.000,37.000,0.450,2,'2019-09-22 00:00:00','indonesia','elex media komputindo'),(45,9786230005022,719121182,29.000,21.000,0.120,0,'2019-09-08 00:00:00','indonesia','elex media komputindo'),(46,9786230005022,719121182,29.000,21.000,0.120,0,'2019-09-08 00:00:00','indonesia','elex media komputindo'),(47,9786230003462,719121047,16.000,16.000,0.120,7,'2019-09-08 00:00:00','indonesia','elex media komputindo'),(48,9786230005039,719121181,29.500,21.000,0.130,24,'2019-09-08 00:00:00','indonesia','elex media komputindo'),(49,9786230003455,719121046,16.000,16.000,0.120,14,'2019-09-08 00:00:00','indonesia','elex media komputindo'),(50,NULL,208034727,27.000,27.000,0.120,70,'2019-08-27 00:00:00','indonesia','elex media komputindo'),(51,0,719121093,16.500,11.000,0.120,20,'2019-08-18 00:00:00','indonesia','elex media komputindo'),(52,9786025067778,208041048,20.000,20.000,0.220,94,'2019-10-21 00:00:00','indonesia','yayasan lentera kasih agape'),(53,9786020521541,571920020,24.500,17.000,0.255,144,'2019-09-01 00:00:00','indonesia','gramedia widiasarana indonesia'),(54,9786230005374,719021211,22.000,15.000,0.100,176,'2019-09-01 00:00:00','indonesia','elex media komputindo'),(55,9786230002830,719070980,24.000,18.000,0.100,112,'2019-08-18 00:00:00','indonesia','elex media komputindo'),(56,9786237210955,208032995,27.000,21.000,0.110,80,'2019-08-12 00:00:00','indonesia','playground'),(57,9786022315636,208034725,20.000,16.500,0.650,345,'2019-07-20 00:00:00','indonesia','bpkgm'),(58,9786230002038,719100926,23.000,19.000,0.650,345,'2019-07-28 00:00:00','indonesia','elex media komputindo'),(59,9786232160798,550001135,24.000,19.000,0.100,44,'2019-04-14 00:00:00','indonesia','bhuana ilmu populer'),(60,9786232160880,550001133,20.500,20.500,0.100,56,'2019-04-14 00:00:00','indonesia','bhuana ilmu populer'),(61,9786232160873,550001134,20.500,20.500,0.100,56,'2019-04-14 00:00:00','indonesia','bhuana ilmu populer'),(62,9786023782246,208003272,26.000,19.000,0.380,280,'2018-11-24 00:00:00','indonesia','wahyu media'),(63,9789792967579,207998677,24.000,21.000,0.480,173,'2018-11-23 00:00:00','indonesia','penerbit andi'),(64,9786025508615,208005611,21.000,14.500,0.480,496,'2019-03-19 00:00:00','indonesia','penerbit andicoconut books'),(65,9789792295290,619150029,20.000,13.500,0.450,280,'2019-09-22 00:00:00','indonesia','gramedia pustaka utama'),(66,9786020317304,619150014,20.000,13.500,0.190,280,'2019-04-28 00:00:00','indonesia','gramedia pustaka utama'),(67,9786020627830,619150011,20.000,13.500,0.180,256,'2019-04-28 00:00:00','indonesia','gramedia pustaka utama'),(68,9786020332550,619150015,20.000,13.500,0.180,264,'2019-04-28 00:00:00','indonesia','gramedia pustaka utama'),(69,9786020332550,619150015,20.000,13.500,0.180,256,'2019-04-28 00:00:00','indonesia','gramedia pustaka utama'),(70,9786025416996,208020288,21.000,14.000,0.225,231,'2019-04-23 00:00:00','indonesia','phoenix publisher'),(71,9786025416996,208020288,21.000,14.000,0.225,231,'2019-04-23 00:00:00','indonesia','phoenix publisher'),(72,9786025416996,208020288,21.000,14.000,0.225,231,'2019-04-23 00:00:00','indonesia','phoenix publisher'),(73,9786020620817,619174007,20.000,13.500,0.180,264,'2019-04-14 00:00:00','indonesia','gramedia pustaka utama'),(74,9786020519883,571910016,19.000,13.000,0.150,256,'2019-04-14 00:00:00','indonesia','gramedia widiasarana indonesia'),(75,9786020512082,571910002,19.000,13.000,0.210,448,'2019-04-14 00:00:00','indonesia','gramedia widiasarana indonesia'),(76,0,720030659,12.500,19.500,0.180,0,'2020-05-31 00:00:00','indonesia','elex media komputindo'),(77,0,720030648,12.500,19.500,0.180,0,'2020-05-31 00:00:00','indonesia','elex media komputindo');
/*!40000 ALTER TABLE `booksformat` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'komik',0,'2020-06-17 22:17:07','2020-06-17 22:17:07',NULL),(2,'novel',0,'2020-06-17 22:17:07','2020-06-17 22:17:07',NULL),(3,'edukasi',0,'2020-06-17 22:17:07','2020-06-17 22:17:07',NULL),(4,'Anak-anak',0,'2020-06-19 20:47:08','2020-06-19 20:47:08',NULL);
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
  `name` varchar(80) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `stock` int NOT NULL,
  `idcategory` int NOT NULL,
  `price` int NOT NULL,
  `description` mediumtext NOT NULL,
  `isdeleted` int NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author_id` int DEFAULT NULL,
  `format_id` int DEFAULT NULL,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (19,'lapar','/product/PROD1592421718252.jpg',23,1,52500,'Andri menebarkan kerakusan terhadap istri dan kedua anak-anaknya. Mereka kesulitan dimakan dengan makanan yang seharusnya tidak layak dimakan. Alasannya mudah ditebak. Semua berawal ketika kelaparan menyelimuti mereka. Mereka berpendapat. Semua orang berhak memakan daging, termasuk daging manusia.Dan, begitulah kisah ini dimulai.',0,'2020-06-18 02:21:58','2020-06-18 02:21:58',5,7),(21,'clean freak! aoyama kun 09','/product/PROD1592444170355.jpg',12,1,28000,'Ozaki pergi ke maid cafe dan bertemu pelayan yang memberikan inspirasi baru untuk komiknya. Dia jadi menyukai sang pelayan dan ingin menjadi pacarnya. Tapi, sosok asli pelayan tersebut di luar dugaannya. Ketika Ozaki berusaha mencoba menjual komik percintaannya yang ditolak oleh editornya di acara komikus amatiran, Ozaki malah mendapati Aoyama, yang ternyata sedang menjual komiknya!! Nah, komik siapakah yang terjual habis!?',0,'2020-06-18 08:36:10','2020-06-18 08:36:10',6,9),(22,'lc: bakemonogatari 02','/product/PROD1592459460971.jpg',20,1,40000,'Aku cuma sekadar menuntunmu” Hitagi Senjogahara, gadis yang berat badannya direbut, harus menolong dirinya sendiri agar dia tidak tersesat di dalam “perasaannya” yang sesungguhnya…',0,'2020-06-18 12:51:01','2020-06-18 12:51:01',7,10),(23,'haikyu!!: fly high! volleyball! 21','/product/PROD1592459576967.jpg',10,1,28000,'Pertandingan melawan Shiratorizawa telah sampai pada set kelima. Cedera yang dialami Tsukishima menyebabkan kekosongan pada pilar pertahanan Karasuno, tapi mereka terus berjuang dengan tekad kuat untuk merebut angka! Pertarungan sengit yang menguras stamina ini akhirnya sampai pada babak terakhir. Siapakah yang akan mendapatkan predikat wakil prefektur?',0,'2020-06-18 12:52:57','2020-06-18 12:52:57',8,11),(24,'beyblade burst 02','/product/PROD1592459770307.jpg',10,1,28000,'Aoi Valt sangat menyukai beyblade sampai level ekstrem. Kejuaraan tingkat distrik akhirnya tiba pada putaran final duel melawan sahabat karibnya, Shuu. Teknik spesial yang diperolehnya dari latihan intensif, ikatan dengan partner-nya, Valkyrie… Mempertaruhkan “segala yang dapat dilakukan saat ini”, jangan-jangan takdir Valt…!?',0,'2020-06-18 12:56:10','2020-06-18 12:56:10',9,12),(25,'ten ten: my boss my adventure','/product/PROD1592459895656.jpg',12,1,100000,'Aku tidak memiliki jiwa kepemimpinan.’ Apakah ada teman kita yang berpikir demikian? Apakah kita berpikir bahwa jiwa kepemimpinan hanya diperlukan oleh orang di posisi khusus seperti ketua kelas atau ketua yang memimpin sebuah tim saja? Tidak pernah berdiri di depan banyak orang sebagai pemimpin bukan berarti tidak memiliki jiwa kepemimpinan. Sedikit aktif tampil di depan orang dapat mengembangkan jiwa kepemimpinan yang tersembunyi, dan itu merupakan modal yang cukup untuk mejadi pemimpin. Tidak harus menjadi pemimpin yang melakukan hal-hal besar. Seseorang yang mempengaruhi teman dengan menjadi pusat dan memimpin teman-temannya juga bisa disebut sebagai pemimpin, seperti ketika berkumpul ingin memutuskan sesuatu atau ketika menentukan aturan sebuah permainan.',0,'2020-06-18 12:58:15','2020-06-18 12:58:15',10,13),(26,'ten ten: learning otodidak','/product/PROD1592460018347.jpg',4,1,100000,'Pernahkah mendengar nasihat, `Begini, begitu...`, `Ini harus begini, itu harus begitu,` hal itu terjadi karena kita hidup tanpa rencana, tujuan, dan mimpi. Kita tidak tahu mau ngapain. Ada juga teman yang kalau orangtuanya tidak melarang, dia akan menghabiskan waktu seharian dengan menonton TV, bermain komputer. Jangan pernah berpikir kalau `Saya masih kecil jadi tidak apa-apa tidak ada rencana kehidupan`. Jika sejak kecil tidak mempunyai rencana kalau sudah besar lama-lama akan sulit. Kalau melihat anak yang pintar berarti dia merencanakan hidupnya, belajar merupakan bagian dari rencana. Kenapa kita harus pintar dan rajin? Itu karena kita mempunyai mimpi. Saat kita mempunyai mimpi yang ingin diwujudkan coba aturlah waktu. Dan mulai sekarang lihatlah daftar rencana hidup itu!',0,'2020-06-18 13:00:18','2020-06-18 13:00:18',10,14),(27,'komplek tanpa faedah 1','/product/PROD1592460112577.jpg',12,1,77000,'Om Iyek—bukan nama panggilan vokalis rock legendaris ternama—menemkan ada bom yang ditinggal di dalam rumah kesayangan. Tanpa basa-basi, beliau segera menelpon polisi komplek yang sudah terlatih, untuk melakukan penangkapan. Kira-kira apakah yang akan terjadi: A. Bom akan meledak. B. Bom akan meledak. Saksikan nasib Om Iyek dan ambil faedah dari sekian banyak cerita Komplek Tanpa Faedah karya Jonbray ini!',0,'2020-06-18 13:01:52','2020-06-18 13:01:52',11,15),(28,'si juki seri keroyokan 12','/product/PROD1592463679103.jpg',12,1,55000,'Hore! Berbulan-bulan sejak #11 rilis, akhirnya si juki keroyokan #12 terbit juga! jarak selesainya memang agak lama, maklum para kreatornya banyak urusan terutama yang bikin si juki jawara tarkan, HIK. Hore lagi! Edisi ini kita kedatangan superhero yang hero: Hore hero! Badut ini emang antimainstream, kalo dicerita lain badut biasanya jadi penjahat. Di sini dia jagoanya. Yok kita liat aksi perdananya si hore hero!',0,'2020-06-18 14:01:19','2020-06-18 14:01:19',12,16),(29,'lc: altair - tale of the great war 19','/product/PROD1592553580040.jpg',12,1,27000,'Yakin dengan datangnya serangan dadakan dari Duchess Lerederick, kaum Herrmann Baltrhain maju ke medan perang. Kaum Herrmann telah menantikan tibanya hari ini untuk menunjukkan kesetiaan terhadap Imperium. Setelah pengorbanan yang besar, kemenangan Imperium begitu diharapkan. Akan tetapi, pasukan Turkiye juga telah mantap berkat \"Uyandirmak\" serta dukungan Aliansi Anti-Imperium di belakang mereka. Dan kini, tibalah fajar yang akan menentukan nasib baik Turkiye maupun Imperium!',0,'2020-06-19 14:59:40','2020-06-19 14:59:40',13,17),(30,'lc: historie 08','/product/PROD1592553716202.jpg',15,1,27000,'Pasukan Makedonia menghadapi Pasukan Athena di darat yang dipimpin oleh Chares dan Pasukan Athena di laut yang dipimpin oleh Phokion. Mampukah Makedonia mengalahkan Athena!? Dalam perjalanan pulang pun ternyata mereka masih harus menghadapi dua musuh lagi!!',0,'2020-06-19 15:01:56','2020-06-19 15:01:56',14,18),(31,'lc: fight ippo 118','/product/PROD1592554394015.jpg',12,1,27000,'Setelah istirahat dan persiapan jangka panjang, akhirnya lawan Ippo untuk pertandingan comeback telah ditetapkan! Lawannya adalah Juara Kelas Bulu Filipina yang baru, Antonio Guevara! Namun berbeda dengan lawan bertandingnya selama ini, Guevara adalah petinju kidal yang jarang dihadapi oleh Ippo!',0,'2020-06-19 15:13:14','2020-06-19 15:13:14',15,19),(32,'lc: to the abandoned sacred beast 3','/product/PROD1592554515122.jpg',15,1,27000,'Satu tahun telah berlalu sejak Hank berhadapan dengan mantan rekannya, Cain Madhouse, dalam peristiwa di kota uap White Church. Cain yang memimpin para prajurit artifisial dewa dan melakukan kudeta, kemudian mendeklarasikan berdirinya “negara merdeka Patria Baru.” Sekali lagi, dunia berada di ambang peperangan... Di saat bersamaan, Char yang mengunjungi kampung halamannya di Rivulet Wood, bertemu dengan monster yang seharusnya sudah tidak ada...',0,'2020-06-19 15:15:15','2020-06-19 15:15:15',16,20),(33,'lc: friends game 10','/product/PROD1592554631062.jpg',10,1,27000,'Sang manusia serigala memberi penawaran kepada Yuichi dan kawan-kawan. Ia tidak akan kabur, tapi mereka harus menyerahkan uang hadiah sebagai kompensasi. Dapatkah Yuichi mengungkap sosoknya dan memenangkan permainan Penjara Teman ini?',0,'2020-06-19 15:17:11','2020-06-19 15:17:11',17,21),(34,'legend of an emperor viii : cang tian ba huang 08','/product/PROD1592554910309.jpg',15,1,100000,'Temujin, Jamukha dan Wang Chongyang berhasil memasuki Nadi Naga untuk menyelamatkan Shao Xiaoxiao dari cengkeraman Iblis Barat. Longzang, Zenda, serta pengikut mereka juga menyusul masuk demi menjadi penguasa dan membuat angan-angan mereka terkabul. Berkumpulnya kawan dan lawan di dalam Nadi Naga ditambah bahaya tersembunyi yang menunggu mereka di sana membuat pertarungan dahsyat tak bisa dihindari! Siapa yang akan bertahan dan siapa yang akan gugur?',0,'2020-06-19 15:21:50','2020-06-19 15:21:50',18,24),(35,'milea suara dari dilan','/product/PROD1592570976825.jpg',30,2,89000,'“Dilan memberi penggambaran lain dari sebuah penaklukan cinta & bagaimana indahnya cinta sederhana anak zaman dahulu.” @refaniris\\r\\n“Cuma satu yang kuinginkan, aku ingin cowok seperti Dilan.” @_SLovaFC\\r\\n“Dilan brengsek! Dia selalu tahu caranya menjadi pusat perhatian, bahkan ketika jadi buku, setiap serinya selalu ditunggu.” @Tedy_Pensil\\r\\n“Membaca Dilan itu seperti jatuh cinta lagi, lagi, dan lagi. Ah, indah, deh. Rasanya gak akan pernah bosan membacanya.” @agungwyd\\r\\n“Bukan cuma sekadar novel, tapi bisa menjadikan yang malas baca jadi mau baca.” @cobra_iqq\\r\\n“Kisah cintanya gak lebay. Dilan tahu bagaimana memperlakukan wanita. Novelnya keren, bahasanya gak bertele-tele.” @AH_DILAN\\r\\n“Terima kasih Dilan telah menginspirasiku lewat ceritamu bersama Milea. Terima kasih Surayah, novelmu seru.” @EnciSrifiyani\\r\\n“Dari Dilan kita belajar mengistimewakan wanita, romantis yang gak kuno, bahkan menjadi ayah & bunda yang hebat :)” @ginaalna\\r\\n“Kurasa Dilan satu-satunya novel yang aku harap ceritanya terus berlanjut, dan tidak ingin ada akhir.” @TriaFitriaN41',0,'2020-06-19 19:48:31','2020-06-19 19:48:31',19,25),(36,'senja dan pagi','/product/PROD1592571131815.jpeg',30,2,94000,'Katanya, rindu itu berat. Tapi bagi saya, \'Rindu\' itu tanggung jawab besar. Harga sejati yang harus dibayar untuk mengungkapkan kerinduan adalah menghalalkanmu.',0,'2020-06-19 19:52:12','2020-06-19 19:52:12',20,26),(37,'yang mesti dibenci itu cinta','/product/PROD1592571315592.jpg',30,2,79000,'Hidup bagaikan misteri pagi. Suasana pagi yang indah, belum tentu menggambarkan keseluruhan hari.\\r\\nBahkan, bisa saja nanti justru mengobrak-abrik hati.\\r\\nPermasalahan dalam hidup ini adalah proses pendewasaan diri perihal bagaimana cara kita menghadapi,\\r\\nbukannya menghindari. Sebab, segala permasalahan tak bisa terelakkan. Kita hanya perlu membuka\\r\\nmata, tetap tegar, dan terus bersabar. Agar hati yang lepuh perlahan-lahan menjadi nurani yang sembuh.',0,'2020-06-19 19:55:15','2020-06-19 19:55:15',21,29),(38,'senyawa','/product/PROD1592571554105.jpg',30,2,85000,'Kita tidak pernah bertemu, ditemukan, atau menemukan, tetapi saling dipertemukan.\\r\\n\\r\\nKita tidak pernah berpisah, dipisahkan, atau memisahkan, tetapi terlanjur dikisahkan.\\r\\n\\r\\nKita tidak pernah terpaksa atau dipaksakan,\\r\\ntetapi jelas-jelas, kita memaksakan kita.\\r\\n\\r\\nJalan keluar ada di sebelah sana.\\r\\nKau dijemput. Senyawaku dicabut.',0,'2020-06-19 19:59:14','2020-06-19 19:59:14',22,30),(39,'art of war, the,mass market','/product/PROD1592571715263.jpg',30,2,105000,'Art Of War, The,Mass Market',0,'2020-06-19 20:01:55','2020-06-19 20:01:55',23,31),(40,'geez & ann #1','/product/PROD1592571850506.jpg',20,2,77000,'\\\"Untuk peri kecilku,\\r\\n\\r\\n\\r\\nAnn, dari kecil, aku susah sekali bicara banyak. Namun, sejak bertemu denganmu, aku ingin bisa banyak berkata-kata, khususnya saat bersamamu.\\r\\n\\r\\n\\r\\nAku tahu, aku jenis orang yang sedikit rumit. Namun, percayalah Ann, aku berusaha sekeras mungkin untuk bisa membuatmu memahamiku, walaupun aku tahu itu sulit.\\r\\n\\r\\n\\r\\nBerat sekali rasanya harus meninggalkanmu ke Berlin. Harus membiarkanmu sendirian dengan banyak pertanyaan. Kamu bisa sabar, kan? Tunggu ya, Geez akan pulang untuk Ann.\\r\\n\\r\\n\\r\\nGeez\\\"',0,'2020-06-19 20:04:10','2020-06-19 20:04:10',24,32),(41,'sastrawan salah pergaulan','/product/PROD1592571933417.jpg',20,2,42000,'Memasuki tahun ketiga kuliah, Unggun punya kecemasan yang akut. Sementara teman-teman lainnya punya ketakutan nanti kalau lulus kuliah mau kerja di mana, Unggun justru mengkhawatirkan eksistensinya di depan kawan-kawannya. Dia merasa tidak pernah dianggap benar-benar ada.\\r\\n\\r\\nPeringatan: Kisah-kisah dalam buku ini mengandung bahasa Jawa.',0,'2020-06-19 20:05:33','2020-06-19 20:05:33',25,33),(42,'lulus story : shadiq','/product/PROD1592572106349.jpg',25,2,84500,'Shadiq dan keempat temannya yang lain, harus menghadapi permasalahan yang berbeda-beda. Mulai dari orangtua yang begitu menuntut, dianggap remeh oleh orang lain, tidak mampu mengambil keputusan sendiri, hingga tidak bisa mengambil sikap dalam menentukan masa depan. Dengan berbagai permasalahan itu, apakah mereka mampu lulus bersama-sama? Dan, apakah mereka bisa mencari, menentukan, dan menggapai impian mereka?',0,'2020-06-19 20:08:26','2020-06-19 20:08:26',26,34),(43,'dimensi lain : ghost diaries','/product/PROD1592572215395.jpg',15,2,90000,'Ghost Diaries bercerita tentang tujuh spirit yang ditemui Furi Harun dalam program YouTube Dimensi Lain. Spirit-spirit tersebut memiliki energi yang kuat. “ketujuhnya punya masa lalu yang layak untuk diceritakan ulang, sebagai pelajaran agar kita menjalani hidup secara lebih baik lagi,” ucap Furi harun kepada Rudi Utomo, penulis buku ini.\\r\\n\\r\\nLewat Ghost Diaries, kita dapat meresapi sisi lain kehidupan melalui sudut pandang seorang indigo. Soal bagaimana memaknai sosok-sosok astral yang ada dalam buku ini, Furi Harun dan Rudi Utomo mengembalikan sepenuhnya kepada pembaca, karena itu semua bergantung pada keyakinan masing-masing.',0,'2020-06-19 20:10:15','2020-06-19 20:10:15',27,35),(44,'mereka bilang, saya monyet!','/product/PROD1592572325094.jpg',30,2,68000,'Mereka Bilang, Saya Monyet! adalah buku pertama Djenar Maesa Ayu yang langsung merebut perhatian pembaca sejak pertama kali diterbitkan. Tema yang berani dan cara bercerita yang lugas serta eksploratif membuat karya ini menuai banyak pujian ketika awal diluncurkan. Dalam perjalanannya buku ini telah dicetak ulang berkali-kali. Dua dari cerpen dalam buku ini pun menjadi inspirasi bagi Djenar untuk film Mereka Bilang, Saya Monyet! yang disutradarainya sendiri. Film ini berhasil meraih perhatian media massa, bahkan menyabet beberapa penghargaan pada festival bergengsi di dunia, seperti Indonesian Movie Award 2008 (Winner for the Best Actress, Winner of The Best New Comer Actress, Nominated as The Most Favorite Movie), Singapore International Film Festival 2008 (Nominated as The Best Asian Feature Film, Silver Screen Award), Osian\'s Cinefan International Film Festival (Nominated as The Best First Feature Film), dan Hongkong International Film Festival 2008 (Official Selection). Djenar pun mendapat Piala Citra dari kategori Skenario Adaptasi Terbaik dan sebagai Sutradara Baru Terbaik pada Festival Film Indonesia 2009.',0,'2020-06-19 20:12:05','2020-06-19 20:12:05',28,37),(45,'solilokui: kumpulan esai','/product/PROD1592572450260.jpg',40,2,80000,'Sastra: Merupakan Dunia Jungkir-Balik? Demikian salah satu judul esai Budi Darma dalam buku ini. Budi Darma menuliskan perkara-perkara yang tumbuh di sekitar sastra. Kreativitas, para pencipta tradisi, keberadaan kritik sastra, kebiasaan pengarang Indonesia, peran jurusan sastra Indonesia, dan hal-hal lain yang membuat sastra hadir sebagai dunia jungkir-balik sekaligus menarik. Walaupun ditulis pada waktu berlainan yakni dalam rentang tahun 1969-1971, gaya bahasa Budi Darma sungguh khas, unik, kritis, dan tentu kaya akan wawasan. Solilokui dihadirkan kembali sebab konteks dan pembahasan Budi Darma yang mendalam sekaligus mampu menjawab fenomena sastra di tahun sekarang. Buku ini menjadi bacaan yang harus ditelaah bagi mereka yang menaruh perhatian secara serius terhadap sastra termasuk sastra Indonesia. Penulis, akademikus, kritikus, atau pembaca dan penikmat sastra yang ingin memahami jungkir-balik dalam dunia sastra.',0,'2020-06-19 20:14:10','2020-06-19 20:14:10',29,38),(46,'happiness','/product/PROD1592572699858.jpg',38,2,60000,'\\\"Berarti nggak masalah, dong, kalau Ceria masuk MIPA tapi ambil Biologi?\\\" \\r\\n\\\"Bisa aja, sih. Tapi kalau kamu tanya Mama, yang banyak hitung-hitungannya itu lebih spesial. Nggak sembarang orang bisa, kan?\\\" \\r\\nBagi Mama yang seorang dosen Matematika, bidang ilmu eksakta itu istimewa. Mama selalu membanding-bandingkan nilai rapor Ceria dengan Reina—anak tetangga sebelah yang pandai Matematika—tanpa melihat nilai Bahasa Inggris Ceria yang sempurna. Karena itu, sepanjang hidupnya Ceria memaksakan diri untuk menjadi seperti Reina. Agar Mama dan Papa bangga. Agar dia tak perlu lagi dibayang-bayangi kesuksesan si anak tetangga. Agar hidupnya bahagia. Ceria bahkan memilih berkuliah di jurusan Matematika tanpa menyadari bahwa dia telah melepaskan sesuatu yang benar-benar dia inginkan—sesuatu yang membuat dirinya benar-benar bahagia.',0,'2020-06-19 20:18:20','2020-06-19 20:18:20',30,39),(47,'bone','/product/PROD1592572779976.jpg',50,2,99000,'\\\"Bawa 500 juta won, atau gadis ini mati.\\\" \\r\\n\\r\\nDua tahun sudah Hajin menghilang tanpa kabar, meninggalkan luka yang nyaris tak bisa disembuhkan dalam diri Junwon. \\r\\nAkan tetapi, saat Junwon mulai melupakan Hajin dan melanjutkan hidupnya, dia menerima sebuah paket dengan surat ancaman. Batas waktunya mendesak, Junwon harus menemukan Hajin. Jika tidak, sudah bisa dipastikan dia tidak akan pernah lagi bisa bertemu dengan gadis itu lagi.\\r\\n\\r\\nJunwon pun memulai pencariannya, tenggelam dalam kenangan-kenangannya bersama Hajin....',0,'2020-06-19 20:19:40','2020-06-19 20:19:40',31,40),(48,'metropop klasik: rona hidup rona','/product/PROD1592572899614.jpg',24,2,90000,'Rona mantap batal menikah sama Tion, tunangannya yang terbukti cowok brengsek. Biarpun semua sudah fix, biarpun dia harus menghadapi keluarganya dan keluarga Tion, Rona nggak peduli. Lebih baik batal sekarang daripada nekat dan akhirnya jadi janda cerai! Umur Rona 28 tahun, dan ternyata batal nikah bukan cuma kembali jadi jomblo, tapi memicu kepanikan massal dari lingkungan sekitar. Semua takut Rona trauma jatuh cinta dan jadi perawan tua. Great! Padahal Rona sama sekali nggak trauma. Dia jatuh cinta lagi. Betul-betul jatuh cinta. Love is blind, kata orang, dan itu betul. Cinta nggak mengenal tempat, usia, maupun waktu. Rona setuju seratus persen! Tapi kenapa harus dia? Kenapa harus laki-laki itu yang bikin Rona jatuh cinta?! Yah, cinta dan logika memang bukan pasangan akur, bukan?',0,'2020-06-19 20:21:39','2020-06-19 20:21:39',32,41),(49,'sun *ket: edisi inggris matahari','/product/PROD1592572991010.jpg',20,2,179000,'Sun *Ket: Edisi Inggris Matahari',0,'2020-06-19 20:23:11','2020-06-19 20:23:11',33,42),(50,'super lengkap calistung paud & tk 2019','/product/PROD1592573246359.jpg',100,3,65000,'Buku ini disusun dengan sangat lengkap sesuai tahapan perkembangan anak usia dini (PAUD/ TK usia 3-6 tahun). Diawali dengan kegiatan motorik halus seperti mewarnai, menebalkan dan menulis. Lalu dilanjutkan dengan kegiatan kognitif seperti membaca, berhitung, mengenal garis, bentuk, warna, ukuran, pola, perbandingan dan waktu. Dengan tambahan kegiatan menggambar langkah demi langkah, anak dapat meningkatkan kemandirian dan kreativitasnya.',0,'2020-06-19 20:25:06','2020-06-19 20:25:06',35,43),(51,'education poster: body parts & body organs','/product/PROD1592573333191.jpg',100,3,50000,'Education Poster: Body Parts & Body Organs merupakan poster yang berisikan pengenalan bagian luar dan dalam tubuh kita. Si kecil dapat belajar mengenal bagian tubuh dan organ yang kita miliki dengan mudah menggunakan Education Poster: Body Parts & Body Organs. Dengan gambar-gambar ilustrasi menarik yang dikomposisikan menjadi 1 bidang, si kecil akan dengan mudah mengenali dan membedakan jenis bagian tubuh dan organ yang satu dengan yang lainnya.',0,'2020-06-19 20:28:53','2020-06-19 20:28:53',34,44),(52,'opredo 6 in 1 skills: makanan','/product/PROD1592573453040.jpg',100,3,80000,'6 IN 1 Skills: Makanan merupakan paket aktivitas untuk melatih si kecil belajar menggunting, melipat, menempel, mewarnai, berhitung, serta melatih berbahasa Indonesia dan Inggris. Si kecil dapat meningkatkan kreativitasnya dengan 10 permainan yang bertemakan makanan.',0,'2020-06-19 20:30:53','2020-06-19 20:30:53',36,46),(53,'opredo lift the flap - aku bisa 123','/product/PROD1592573601332.jpg',100,3,85000,'Ayo mulai belajar berhitung dengan board book lift the flap. Setiap angka tertulis dalam bentuk simbol, juga dengan cara membacanya. Setiap angka juga dilengkapi dengan gambar ilustrasi yang dapat dihitung. Dengan lift the flap di dalam board book ini, anak dapat belajar sambil beraktivitas membalikkan penutup yang ada di dalam.',0,'2020-06-19 20:33:21','2020-06-19 20:33:21',34,47),(54,'opredo 6 in 1 skills: kendaraan','/product/PROD1592573726815.jpg',100,3,80000,'6 IN 1 Skills: Kendaraan merupakan paket aktivitas untuk melatih si kecil belajar menggunting, melipat, menempel, mewarnai, berhitung, serta melatih berbahasa Indonesia dan Inggris. Si kecil dapat meningkatkan kreativitasnya dengan 10 permainan yang bertemakan kendaraan.',0,'2020-06-19 20:35:27','2020-06-19 20:35:27',36,48),(55,'opredo lift the flap - aku bisa abc','/product/PROD1592573859537.jpg',100,3,85000,'Ayo mulai belajar mengenal alfabet dengan board book lift the flap. Setiap huruf tertulis dengan huruf besar dan huruf kecil, serta gambar ilustrasi yang diawali huruf itu. Dengan lift the flap di dalam board book ini, anak dapat belajar sambil beraktivitas membalikkan penutup yang ada di dalam.',0,'2020-06-19 20:37:39','2020-06-19 20:37:39',34,49),(56,'aku pandai shalat','/product/PROD1592574067968.jpg',100,3,55000,'Ibadah shalat harus dikenalkan kepada anak-anak sejak usia dini. Buku ini berisi uraian tentang shalat dan hal lain yang berhubungan dengan shalat, seperti wudhu, tayamum, azan, ikamah, zikir, doa, dan surat pendek.\\r\\n\\r\\nSelain ilustrasi yang menarik, buku ini juga dilengkapi dialog orang tua dan anak-anak. Buku ini bagus di jadikan pegangan oleh orang tua maupun tenaga pengajar dalam mengajarkan shalat. Semoga buku ini dapat bermanfaat untuk membentuk generasi muslim yang bertakwa kepada Allah.',0,'2020-06-19 20:41:08','2020-06-19 20:41:08',37,50),(57,'opredo kartu kata pertama: kata kerja & kata sifat\"','/product/PROD1592574141350.jpg',100,3,68000,'Ajak anak untuk mengenal 40 macam kata kerja dan kata sifat. Tunjukkan anak gambar-gambar yang ada di kartu dan latih anak untuk menebak gambar beserta kata kerja dan kata sifatnya. Lalu, ajarkan anak untuk mengulang katanya.',0,'2020-06-19 20:42:21','2020-06-19 20:42:21',34,51),(58,'kisahku dari sumba timur','/product/PROD1592574242269.jpg',100,3,38500,'Biasanya anak-anak di desa mereka menyebut cita-cita menjadi guru, polisi, dokter dan pendeta.\\r\\nTapi Kristiono ingin menjadi arsitek, Tri Ningsih mau menjadi atlet voli dan Corazon menjadi atlet renang. Bahkan, Vanensia bisa mengidolakan pengusaha bernama Bob Sadino.\\r\\nApalagi Petualangan anak-anak Sumba ini? Yuk, ikut dengan mereka. Nikmati keindahan alam dan budaya mereka. Nikmati kisah optimis anak-anak Sumba.',0,'2020-06-19 20:44:02','2020-06-19 20:44:02',38,52),(59,'angsa bertelur emas & kumpulan fabel terlengkap','/product/PROD1592574610104.jpg',100,4,85000,'Bercerita melalui mendongeng dapat menambah wawasan anak tentang beragam jenis sastra di Indonesia. Buku ini menyajikan beragam fabel anak pilihan. Cerita-cerita yang disajikan pun menghibur dan dilengkapi dengan gambar yang menarik.\\r\\n\\r\\nSemua cerita yang terdapat dalam buku ini mengandung nilai moral dan pendidikan. Dengan membaca cerita dan mendongeng, nilai-nilai luhur dan budi pekerti dapat diajarkan, sekaligus membantu membangun karakter serta mental anak-anak.\\r\\n\\r\\nSelamat membaca dan mendengarkan dongeng adik-adik.',0,'2020-06-19 20:50:10','2020-06-19 20:50:10',39,53),(60,'Cookie Run Sweet Escape Adventure! - Science Dunia\"','/product/PROD1592576533376.jpg',100,4,85000,'Cookie Run Sweet Escape Adventure! - Science Dunia',0,'2020-06-19 21:21:40','2020-06-19 21:21:40',40,54),(61,'kisah perumpamaan yesus','/product/PROD1592576603215.jpg',100,4,98000,'Buku ini ditujukan untuk pembaca berusia 9 tahun ke atas. Orang tua dan guru yang menggunakannya untuk menjelaskan perumpamaan dapat mendalami satu perumpamaan terlebih dulu di setiap sesinya. Jika Anda membaca perumpamaan dalam komik, jangan lupa juga membaca teks Alkitab, sehingga Anda tidak kehilangan detail.\\r\\n\\r\\nSaya menyarankan Anda untuk mempersiapkan sesi dengan membaca komentar sebelumnya. Ini bisa membantu sebagai panduan untuk menjelaskan perumpamaan; setiap paragraf berisi ide dan pengembangannya.',0,'2020-06-19 21:23:23','2020-06-19 21:23:23',41,55),(62,'kisah budi pekerti: cimo si kelinci lucu\"','/product/PROD1592576678370.jpg',90,4,66500,'Kisah Budi Pekerti: Cimo Si Kelinci Lucu menceritakan tentang kelinci kecil nan lucu bernama Cimo yang bersekolah di TK Satwa Ceria. Cimo mempunyai sahabat bernama Monay Si Monyet dan Baba Si Badak. Banyak sekali kisah seru mereka bersama.\\r\\n\\r\\nAyp, kita baca cerita seru Cimo dan sahabatnya dalam buku ini. Pasti menarik sekali dan sayang untuk dilewatkan. Di sini, Adik-adik akan belajar banyak tentang pesan moral dalam kehidupan sehari-hari. Buku cerita ini sangat cocok menemani aktivitas belajar Adik-adik semua, apalagi sebagai pengantar tidur.\\r\\n\\r\\nSelamat membaca Adik-adik...',0,'2020-06-19 21:24:38','2020-06-19 21:24:38',42,56),(63,'35 cerita alkitab berima (hard cover)','/product/PROD1592576779313.jpg',80,4,179000,'35 CERITA ALKITAB BERIMA',0,'2020-06-19 21:26:19','2020-06-19 21:26:19',43,57),(64,'kisah-kisah birrul walidain untuk anak saleh','/product/PROD1592576849742.jpg',100,4,85000,'Berbakti kepada kedua orangtua adalah suatu kewajiban karena perintah dari Allah taala. Bahkan perintah untuk berbakti kepada orangtua digandengkan langsung dengan perintah taat kepada Allah. Wah… masyaallah. Rasulullah bersabda bahwa amalan-amalan yang dicintai oleh Allah taala ada tiga, yaitu mendirikan salat pada waktunya, berbakti kepada orangtua dan jihad di jalan Allah. (HR. Bukhari) Berikut akan ada kisah-kisah Birrul Walidain, yaitu kisah anak yang berbakti kepada orangtuanya. Semoga kisah-kisah ini dapat menjadi teladan bagi kita, sehingga kita jadi anak beriman yang disayang orangtua dan dirahmati Allah taala. Allahuma amin.',0,'2020-06-19 21:27:30','2020-06-19 21:27:30',44,58),(65,'buku paud cerdas: mengenal hewan','/product/PROD1592576943345.jpg',70,4,53000,'Buku aktivitas untuk memperkenalkan berbagai hewan liar dan jinak kepada anak-anak usia dini. Dirancang dengan kegiatan melatih motorik halus dan pengetahuan sederhana yang akan menambah kecerdasan anak-anak.',0,'2020-06-19 21:29:03','2020-06-19 21:29:03',45,59),(66,'seri dongeng 3d nusantara: sigarlaki dan limbat','/product/PROD1592577089487.jpg',40,4,40000,'Alkisah, di sebuah hutan yang terletak di pingir desa, hiduplah seorang pemuda bernama Sigarlaki. Sehari-hari pekerjaannya memburu binatang. Sigarlaki memiliki seorang pelayan yang setia dan jujur bernama Limbat. Suatu hari, Sigarlaki meragukan kesetiaan Limbat dan mengujinya. Dapatkan Limbat membuktikan kesetiaannya?\\r\\nYuk, koleksi semua seri Dongeng Nusantara 3D, ya!',0,'2020-06-19 21:31:29','2020-06-19 21:31:29',46,60),(67,'seri dongeng 3d nusantara: putri karang melenu','/product/PROD1592577170032.jpg',40,4,40000,'lkisah, di Kampung Melanti tinggallah sepasang suami-istri yang telah menikah bertahun-tahun. Namun, hingga kini mereka belum memiliki anak. Mereka berdua hidup dengan rukun dan rajin menjalankan perintah agama. Setiap hari mereka berdoa meminta anak dan tak penah menyerah untuk percaya. Apakah doa mereka akan terkabul kelak?\\r\\nYuk, koleksi semua seri Dongeng Nusantara 3D, ya!',0,'2020-06-19 21:32:50','2020-06-19 21:32:50',46,61),(68,'story telling: cerita rakyat nusantara','/product/PROD1592577235018.jpg',30,4,129000,'Cerita Timun Emas mengisahkan keluarga miskin yang tidak mempunya anak. Suatu hari, mereka meminta bantuan raksasa. Akhirnya, raksasa itu memberikan seorang anak perempuan dari dalam sebuah timun. Anak ini diberi nama Timun Emas. Setelah Timun Emas dewasa, raksasa ingin mengambilnya untuk dimakan. Namun, Timun Emas berhasil lolos dari kejaran raksasa itu. Bagaimana cara Timun Emas bisa lolos ya? Cerita Timun Emas hanya salah satu cerita menarik dalam buku ini.\\r\\n\\r\\n\\r\\nStory Telling Cerita Rakyat Nusantara ini memuat kumpulan cerita pilihan penjuru Nusantara. Cerita yang dihadirkan mempunya pesan moral atau nilai karakter untuk anak. Ilustrasi yang digunakan juga menarik dan penuh warna. Buku ini diharapkan meningkatkan rasa sosial dan emosi. Anak mempunyai kepribadian baik dan kemandirian untuk masa depan.',0,'2020-06-19 21:33:55','2020-06-19 21:33:55',47,62),(69,'kisah klasik dari papua: woiram yang perkasa','/product/PROD1592577306762.jpg',100,4,118500,'Papua adalah pulau terbesar yang berada di timur Indonesia. Sebagai pulau terbesar dengan kekayaan suku dan bahasa daerah terbesar pula, menjadikan daerah ini juga kaya akan cerita cerita rakyat yang penuh inspirasi. Cerita-cerita tersebut sebagian sudah terdokumentasikan, sebagian lagi masih tersebar luas dalam tradisi lisan masyarakat Papua.\\r\\n\\r\\n\\r\\nBuku Cerita Rakyat Papua ini ditulis dalam rangka untuk mendokumentasikan dan menulis kembali cerita-cerita rakyat yang ada di Papua. Cerita rakyat ini dikemas dengan bahasa sederhana dan mudah dipahami dan dengan ilustrasi yang sesuai. Berbagai istilah lokal sudah diganti dalam bahasa Indonesia. Cerita rakyat Papua yang ada di dalam buku ini, tidak dikelompokkan dari tiap provinsi. Namun ditulis secara umum, yaitu cerita rakyat yang ada di Tanah Papua. Tujuannya agar khalayak umum mengenali cerita-cerita rakyat Papua lebih luas dan tidak terbatas dari tiap provinsi.',0,'2020-06-19 21:35:07','2020-06-19 21:35:07',48,63),(70,'mariposa - cover film','/product/PROD1592577409064.jpg',50,2,99000,'Edisi khusus cover film dan mendapatkan bonus Buku Mariposa Special Parts dan Gantungan Kunci Mariposa.\\r\\n\\r\\nUntuk mencintai kamu, aku hanya butuh waktu satu detik. \\r\\nUntuk mendapatkan cinta kamu? Aku butuh berapa juta detik?\\r\\n\\r\\nIni kisah tentang Acha, memiliki nama panjang Natasha Kay Loovi. Gadis ajaib berparas cantik seperti bidadari. Ini juga kisah tentang Iqbal. Jangan tanya nama panjangnya siapa, nanti kalian jatuh cinta. Pria berhati dingin dengan hidup monotonnya.\\r\\nBercerita tentang perjuangan Acha untuk mendapatkan cinta seorang Iqbal. Acha tak pernah gentar meruntuhkan dingin dan kokohnya tembok pertahanan hati Iqbal yang belum pernah disinggahi perempuan mana pun. \\r\\nSikap dingin dan penolakan Iqbal berkali-kali tak membuat Acha menyerah. Bagi Acha selama Iqbal masih berwujud manusia, selama Iqbal tidak berubah menjadi sapi terbang, Acha akan terus berjuang. \\r\\nSiapkan hati yang mandiri untuk membaca cerita ini. Hati-hati jantung Anda, mohon selalu dijaga. Serangan baper akan terus menyerang tanpa henti. \\r\\nKisah romantis komedi remaja yang siap memanjakan hari indah Anda semua. Jangan lupa selalu bahagia. \\r\\nDari Mariposa untuk semua pembaca tercinta.\\r\\n\\r\\n*Berhadiah Mariposa (Special Parts) & Keychain',0,'2020-06-19 21:36:49','2020-06-19 21:36:49',49,64),(71,'a little white lie','/product/PROD1592577652981.jpg',60,2,69000,'Ocha benci Adit! Meskipun cowok itu idola cewek satu sekolah, bagi Ocha, Adit nggak lebih dari perusak image dan pembawa sial. Sejak kenal Adit, Ocha berevolusi jadi cewek cengeng, malu-maluin, suka bohong, dan doyan melet. Pokoknya Ocha benci Adit. Titik. Tuhan seperti memberikan jalan untuk membalas dendam ketika tanpa sengaja Ocha menemukan apa yang bakal dianggap harta karun oleh cewek-cewek di sekolahnya: nomor handphone Adit, yang katanya susaaah banget dicari tahu itu. \\r\\n\\r\\nAwalnya Ocha berencana menjual informasi nomor handphone Adit ke teman-temannya. Tapi karena nggak tega, akhirnya Ocha cuma ngisengin Adit lewat SMS dengan nama samaran Ayu. Tapi bukannya sukses balas dendam, Ocha malah tambah pusing. Soalnya kebohongan kecil yang dia ciptakan itu menimbulkan masalah baru. Adit ternyata naksir Ayu!',0,'2020-06-19 21:40:53','2020-06-19 21:40:53',50,65),(72,'teenlit: zero class#3: legacy','/product/PROD1592577736946.jpg',60,2,79000,'Ini kesempatan terakhir. Sekaranglah penetuan nasib kelas 11 IPS 4 untuk tahun ajaran mendatang. Kelas dengan label mudir buangan oleh beberapa guru dan murid SMA Nusa Jaya itu sudah berjuang keras. Mana mungkin Gita dan teman-teman tidak frustrasi dengan anggapan itu. Gita bertekad membongkar berbagai kasus yang melibatkan kelasnya demi menghilangkan rumor konyol itu. Belum lagi mesti berhadapan dengan pilihan yang membuat banyak pihak tersakiti. Sampai kemudian, peristiwa tak terduga terjadi! Gita harus merelakan perasaannya. Semua demi membuktikan apakah kelas 11 IPS 4 merupakan alat balas dendam atau tempat berlindung bagi yang merasa terpinggirkan.',0,'2020-06-19 21:42:17','2020-06-19 21:42:17',51,66),(73,'teenlit: vio: don\'t mess up','/product/PROD1592577840023.jpg',60,2,77000,'Vio sepertinya menyandang gelar siswi paling bermasalah sepanjang sejarah SMA Mayapada. Dia sering bolos, suka cari masalah dengan cowok-cowok bajingan di lingkungan sekolah, dan sudah nunggak gorengan dua semester. Cewek biang kerok yang dihindari oleh teman-temannya karena mereka takut dia bakal menularkan virus berandalannya. Tapi, saat kakaknya hendak dipanggil, Vio menyerah. Cello nggak boleh sampai tahu tentang kelakuannya! Karena itu, Vio setuju untuk ikut program belajar dengan Jo untuk memperbaiki semua nilainya. Kalau dalam semester kedua ini Vio nggak mendapatkan nilai merah sama sekali, Cello nggak akan dipanggil. Terpaksa belajar dengan cowok kaku itu, Vio cuma bisa menahan emosi. Bisa nggak ya, sekali ini saja, dia nggak mengacaukan semuanya?',0,'2020-06-19 21:44:00','2020-06-19 21:44:00',52,67),(74,'Teenlit: zero class#1','/product/PROD1592578054700.jpg',80,2,77000,'Aruna Cahaya Millen menghindari pergaulan di sekolah. Itu bentuk pelarian dari berbagai tuntutan sebagai putri tunggal pengusaha top Indonesia. Runa merasa hidupnya tak seindah matahari pagi yang selalu ditunggunya setiap hari. Lain hal dengan Samudra Banyu Diwangga. Cowok itu punya banyak teman, penggemar, dan pacar yang begitu mengaguminya. Namun, bagi Sam semua hal gemerlap tersebut hanyalah kamuflase. Persis setelah kasus korupsi yang melibatkan ayahnya terbongkar, seketika hidup Sam gelap dan senyap. Sama-sama terasing di sekolah justru memberikan kesempatan untuk Runa dan Sam bertemu. Dan jatuh cinta. Padahal, ada takdir yang terbentuk di antara mereka berdua. Takdir yang hadir bahkan sebelum mereka lahir. Takdir yang menempatkan mereka pada keadaan untuk saling membenci tanpa memberi kesempatan sekecil apa pun untuk cinta tumbuh.',0,'2020-06-19 21:45:21','2020-06-19 21:45:21',51,68),(75,'teenlit: our little chance','/product/PROD1592578001919.jpg',70,2,77000,'Aruna Cahaya Millen menghindari pergaulan di sekolah. Itu bentuk pelarian dari berbagai tuntutan sebagai putri tunggal pengusaha top Indonesia. Runa merasa hidupnya tak seindah matahari pagi yang selalu ditunggunya setiap hari. Lain hal dengan Samudra Banyu Diwangga. Cowok itu punya banyak teman, penggemar, dan pacar yang begitu mengaguminya. Namun, bagi Sam semua hal gemerlap tersebut hanyalah kamuflase. Persis setelah kasus korupsi yang melibatkan ayahnya terbongkar, seketika hidup Sam gelap dan senyap. Sama-sama terasing di sekolah justru memberikan kesempatan untuk Runa dan Sam bertemu. Dan jatuh cinta. Padahal, ada takdir yang terbentuk di antara mereka berdua. Takdir yang hadir bahkan sebelum mereka lahir. Takdir yang menempatkan mereka pada keadaan untuk saling membenci tanpa memberi kesempatan sekecil apa pun untuk cinta tumbuh.',0,'2020-06-19 21:46:42','2020-06-19 21:46:42',51,69),(76,'pengabdi klien','/product/PROD1592578132310.jpg',38,2,79000,'Kusno, seorang pekerja radio yang sangat memilki visi dan misi yang jelas dalam kehidupannya, yaitu berkelahi dengan klien. Pekerjaannya sebagai orang kreatif di radio membuatnya harus bertemu dengan banyak klien dengan keunikn dan keajaiban masing-masing. Klien adlah pemasok rupiah utama ke perusahaan. melayaninya dengan sepenuh hati adalah kewajiban semua pekerja, tapi apa iya mereka harus terus-menerus dibela? Dipuja? Disembah? Ingat, mereka bukan Tuhan',0,'2020-06-19 21:48:52','2020-06-19 21:48:52',53,72),(77,'jurnal ph.d. mama','/product/PROD1592578205699.jpg',65,2,76000,'Buku yang sangat inspiratif! Bangsa Indonesia patut bangga memiliki para wanita pejuang yang ulet, cerdas, dan tangguh. Semua ini membuktikan bahwa perempuan mampu meski banyak hal menghalang. Kita perlu meningkatkan kebijakan publik dan pemihakan agar perempuan Indonesia dapat terus mampu memajukan dirinya dan ikut memajukan bangsa dan negara. \\r\\n–Sri Mulyani Indrawati, Menteri Keuangan RI. \\r\\n\\r\\nKetika dewasa ini perempuan Indonesia makin dituntut untuk memiliki gelar akademis tertinggi untuk menempati berbagai jabatan publik dan menghadapi benturan dengan peranan mereka di dalam rumah tangga, para tokoh perempuan yang digambarkan dalam buku ini membuktikan bahwa dengan ketekunan, ketangguhan, kesabaran, dan kerja sama saling mengisi yang penuh pengertian bersama para suami masing-masing, mereka dapat berhasil mencapai kedua tuntutan itu. \\r\\n–Prof. Dr. Meutia Hatta Swasono, Menteri Negara Pemberdayaan Perempuan RI periode 2004-2009. \\r\\n\\r\\nMembaca tulisan-tulisan di buku Jurnal Ph.D. Mama ini, saya seperti menjenguk lagi perjalanan panjang saya sendiri. Benang merahnya sangat jelas: perempuan senantiasa menghadapi tantangan yang sangat khas ketika menjalani pendidikan doktoral di negeri asing. Stigma, ekspektasi sosial, budaya, dan agama yang melekat kuat dan tuntutan agar menyelesaikan pendidikan dengan baik, ditanggung secara bersamaan. Tetapi perempuan adalah makhluk yang asyik, tahan banting, dan selalu mengutamakan kebersamaan, karenanya perjalanan Ph.D. Mama senantiasa dikenang sebagai salah satu etape kehidupan yang mendewasakan, membanggakan, dan disyukuri.\\r\\n- Lily Yulianti Farid, Pendiri Makassar International Writers Festival.',0,'2020-06-19 21:50:05','2020-06-19 21:50:05',54,73),(78,'relung waktu','/product/PROD1592578282382.jpg',70,2,65000,'Apakah mencintai harus diiringi sakit hati? Apakah perasaan sayang selalu diikuti pengorbanan? Jika iya, maka akan kulakukan semua demi kekasihku. Aku seorang gadis yang lahir dan dibesarkan di Batavia. Sementara itu, kekasihku pergi ke Borneo demi idealismenya untuk memerdekakan bangsa. Apakah aku harus menyusulnya? Ataukah hanya diam menunggu dan membiarkan takdir berlalu? Aku berjudi di tempat bernama kehidupan. Kekasihku, jika harus terjatuh, mari jatuh bersama di lubang antara cinta dan kematian.',0,'2020-06-19 21:51:22','2020-06-19 21:51:22',55,74),(79,'love without words','/product/PROD1592578415717.jpg',50,2,98000,'Sosok remaja jail, badung, dan sering berbuat onar bernama Kevin Andreas berubah seratus delapan puluh derajat ketika jatuh cinta kepada seorang gadis “Putri Salju” di sekolah baru. Namun, gadis cantik itu tidak ingin berbicara sama sekali seolah bisu. Tak hanya itu gadis itu juga dianggap tak ada oleh teman-teman di sekolah. Seakan-akan gadis itu adalah hantu.\\r\\n\\r\\nHingga suatu hari, satu per satu fakta dan rahasia terkuak. Kevin mulai ragu sambil bertanya-tanya, apakah dirinya benar-benar waras?',0,'2020-06-19 21:53:36','2020-06-19 21:53:36',56,75),(80,'city lite: morning breeze (collector`s edition)','/product/PROD1592578510669.jpg',40,2,80000,'Fabian Aganta (30 tahun) dokter tampan yang kelebihan hormon ramah dan baik hati sukses membuat suster Dinasty (25 tahun) yang baru saja menjadi asistennya sebal setengah mati. Pekerjaannya berubah, dia lebih sering membantu Fabian mengusir pasien-pasien yang betah menggoda sang dokter sampai berjam-jam. Kebiasaan Fabian yang menulis segala keperluannya dalam notes kecil oleh asisten sebelumnya, membuat Dinasty lebih merasa menjadi pesuruhnya dibanding asistennya. Tak disangka, dokter ganteng itu ternyata menyukai Dinasty yang selalu cemberut dan mengeluhkan setiap pekerjaan yang disuruhnya. Seseorang dari masa lalu Dinasty datang tepat ketika Fabian menyatakan perasaannya pada wanita itu. Seseorang yang sangat Dinasty cintai dan nanti-nantikan. Mungkinkah Dinasty akan menyukai Fabian dan meninggalkaN orang dari masa lalunya? Atau Fabianlah yang dipilih Dinasty untuk menemani seumur hidupnya?',0,'2020-06-19 21:55:11','2020-06-19 21:55:11',57,76),(81,'city lite: minori mengejar cinta','/product/PROD1592578580725.jpg',30,2,70000,'Gagal menikah di usia 33 tahun tidak membuat Minori patah semangat. Dia percaya, suatu hari cinta sejati akan datang padanya. Berbeda dengan Minori, Ersad justru tidak percaya dengan cinta. Trauma masa lalu membuat pria itu memutuskan tidak akan menikah. Pertemuan demi pertemuan yang terjadi di antara mereka membuat Minori sadar bahwa Ersad adalah pria yang tepat untuknya. Namun sikap Ersad yang dingin sering kali membuat Minori kecewa. Belum lagi kehadiran Emir yang percaya bahwa dirinya adalah pria yang tepat untuk Minori. Mampukah Minori mengejar cintanya?',0,'2020-06-19 21:56:20','2020-06-19 21:56:20',57,77);
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
-- Table structure for table `userprofiles`
--

DROP TABLE IF EXISTS `userprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprofiles` (
  `id` int NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofiles`
--

LOCK TABLES `userprofiles` WRITE;
/*!40000 ALTER TABLE `userprofiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprofiles` ENABLE KEYS */;
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
  `role` tinyint(1) NOT NULL DEFAULT '1',
  `isdeleted` tinyint(1) NOT NULL DEFAULT '0',
  `isverified` tinyint(1) NOT NULL DEFAULT '0',
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastlogin` datetime NOT NULL,
  `isfacebook` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'tes','muhammadirzza@gmail.com','1cb2b4378d3a195e549ffe826bf8471acb2075e580b4a62bd72042a3e9ae8c81',2,0,1,'2020-05-11 09:26:33','2020-05-11 09:26:33','2020-06-19 19:36:03',0),(13,'tes2','muhammadirzza@gmail.com','1cb2b4378d3a195e549ffe826bf8471acb2075e580b4a62bd72042a3e9ae8c81',1,0,1,'2020-05-11 13:55:05','2020-05-11 13:55:05','2020-06-14 19:19:32',0),(46,'tes3','muhammadirzza@gmail.com','1cb2b4378d3a195e549ffe826bf8471acb2075e580b4a62bd72042a3e9ae8c81',1,0,1,'2020-06-17 20:21:58','2020-06-17 20:21:58','2020-06-17 20:21:59',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_pembeli`
--

DROP TABLE IF EXISTS `users_pembeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_pembeli` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nomorhp` varchar(45) DEFAULT NULL,
  `Idusers` int NOT NULL,
  PRIMARY KEY (`iduser`),
  KEY `fk_users_pembeli_usersId_idx` (`Idusers`),
  CONSTRAINT `fk_users_pembeli_Idusers` FOREIGN KEY (`Idusers`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_pembeli`
--

LOCK TABLES `users_pembeli` WRITE;
/*!40000 ALTER TABLE `users_pembeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_pembeli` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-19 22:04:05
