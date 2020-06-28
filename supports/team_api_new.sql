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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (5,'erby s'),(6,'taku sakamoto'),(7,'nisioisin, oh!great'),(8,'haruichi furudate'),(9,'hiro morito'),(10,'glsongi (via carrot korean agency)'),(11,'jonbray'),(12,'pionicon'),(13,'kotono kato'),(14,'hitoshi iwaaki'),(15,'joji morikawa'),(16,'maybe'),(17,'mikoto yamaguchi, yuki sato'),(18,'tony wong');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booksformat`
--

LOCK TABLES `booksformat` WRITE;
/*!40000 ALTER TABLE `booksformat` DISABLE KEYS */;
INSERT INTO `booksformat` VALUES (7,9786026595317,207927906,20.000,14.000,0.260,284,'2017-06-14 00:00:00','indonesia','histeria'),(9,9786230016530,720010571,17.200,11.400,0.093,192,'2020-06-14 00:00:00','indonesia','elex media komputindo'),(10,9786230015519,720010470,18.000,13.000,0.150,192,'2020-06-14 00:00:00','indonesia','elex media komputindo'),(11,9786230300721,532060055,17.200,11.400,0.120,216,'2020-06-14 00:00:00','indonesia','m&c!'),(12,9786230015816,720010499,17.200,11.400,0.093,192,'2020-06-14 00:00:00','indonesia','elex media komputindo'),(13,9786230015885,720020502,22.000,15.000,0.500,208,'2020-06-01 00:00:00','indonesia','elex media komputindo'),(14,9786230015861,720020501,22.000,15.000,0.500,200,'2020-06-01 00:00:00','indonesia','elex media komputindo'),(15,9786022203360,208041552,20.000,14.000,0.150,120,'2019-06-11 00:00:00','indonesia','bukune'),(16,9786022203070,208024101,19.000,13.000,0.150,132,'2019-05-15 00:00:00','indonesia','bukune'),(17,9786020484990,718011626,18.000,13.000,0.125,176,'2018-10-23 00:00:00','indonesia','elex media komputindo'),(18,9786020483986,718011469,18.000,13.000,0.120,208,'2018-10-09 00:00:00','indonesia','elex media komputindo'),(19,9786020483528,718011460,18.000,12.000,0.120,192,'2018-10-09 00:00:00','indonesia','elex media komputindo'),(20,9786020478685,718011258,18.000,12.000,0.120,192,'2018-10-02 00:00:00','indonesia','elex media komputindo'),(21,9786020480190,718011419,18.000,12.000,0.120,200,'2018-09-25 00:00:00','indonesia','elex media komputindo'),(22,9786024289560,531850004,24.500,17.000,0.250,184,'2018-09-18 00:00:00','indonesia','m&c!'),(23,9786024289560,531850004,24.500,17.000,0.250,184,'2018-09-18 00:00:00','indonesia','m&c!'),(24,9786024289560,531850004,24.500,17.000,0.250,184,'2018-09-18 00:00:00','indonesia','m&c!');
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
INSERT INTO `categories` VALUES (1,'komik',0,'2020-06-17 22:17:07','2020-06-17 22:17:07',NULL),(2,'novel',0,'2020-06-17 22:17:07','2020-06-17 22:17:07',NULL),(3,'edukasi',0,'2020-06-17 22:17:07','2020-06-17 22:17:07',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (19,'lapar','/product/PROD1592421718252.jpg',23,1,52500,'Andri menebarkan kerakusan terhadap istri dan kedua anak-anaknya. Mereka kesulitan dimakan dengan makanan yang seharusnya tidak layak dimakan. Alasannya mudah ditebak. Semua berawal ketika kelaparan menyelimuti mereka. Mereka berpendapat. Semua orang berhak memakan daging, termasuk daging manusia.Dan, begitulah kisah ini dimulai.',0,'2020-06-18 02:21:58','2020-06-18 02:21:58',5,7),(21,'clean freak! aoyama kun 09','/product/PROD1592444170355.jpg',12,1,28000,'Ozaki pergi ke maid cafe dan bertemu pelayan yang memberikan inspirasi baru untuk komiknya. Dia jadi menyukai sang pelayan dan ingin menjadi pacarnya. Tapi, sosok asli pelayan tersebut di luar dugaannya. Ketika Ozaki berusaha mencoba menjual komik percintaannya yang ditolak oleh editornya di acara komikus amatiran, Ozaki malah mendapati Aoyama, yang ternyata sedang menjual komiknya!! Nah, komik siapakah yang terjual habis!?',0,'2020-06-18 08:36:10','2020-06-18 08:36:10',6,9),(22,'lc: bakemonogatari 02','/product/PROD1592459460971.jpg',20,1,40000,'Aku cuma sekadar menuntunmu” Hitagi Senjogahara, gadis yang berat badannya direbut, harus menolong dirinya sendiri agar dia tidak tersesat di dalam “perasaannya” yang sesungguhnya…',0,'2020-06-18 12:51:01','2020-06-18 12:51:01',7,10),(23,'haikyu!!: fly high! volleyball! 21','/product/PROD1592459576967.jpg',10,1,28000,'Pertandingan melawan Shiratorizawa telah sampai pada set kelima. Cedera yang dialami Tsukishima menyebabkan kekosongan pada pilar pertahanan Karasuno, tapi mereka terus berjuang dengan tekad kuat untuk merebut angka! Pertarungan sengit yang menguras stamina ini akhirnya sampai pada babak terakhir. Siapakah yang akan mendapatkan predikat wakil prefektur?',0,'2020-06-18 12:52:57','2020-06-18 12:52:57',8,11),(24,'beyblade burst 02','/product/PROD1592459770307.jpg',10,1,28000,'Aoi Valt sangat menyukai beyblade sampai level ekstrem. Kejuaraan tingkat distrik akhirnya tiba pada putaran final duel melawan sahabat karibnya, Shuu. Teknik spesial yang diperolehnya dari latihan intensif, ikatan dengan partner-nya, Valkyrie… Mempertaruhkan “segala yang dapat dilakukan saat ini”, jangan-jangan takdir Valt…!?',0,'2020-06-18 12:56:10','2020-06-18 12:56:10',9,12),(25,'ten ten: my boss my adventure','/product/PROD1592459895656.jpg',12,1,100000,'Aku tidak memiliki jiwa kepemimpinan.’ Apakah ada teman kita yang berpikir demikian? Apakah kita berpikir bahwa jiwa kepemimpinan hanya diperlukan oleh orang di posisi khusus seperti ketua kelas atau ketua yang memimpin sebuah tim saja? Tidak pernah berdiri di depan banyak orang sebagai pemimpin bukan berarti tidak memiliki jiwa kepemimpinan. Sedikit aktif tampil di depan orang dapat mengembangkan jiwa kepemimpinan yang tersembunyi, dan itu merupakan modal yang cukup untuk mejadi pemimpin. Tidak harus menjadi pemimpin yang melakukan hal-hal besar. Seseorang yang mempengaruhi teman dengan menjadi pusat dan memimpin teman-temannya juga bisa disebut sebagai pemimpin, seperti ketika berkumpul ingin memutuskan sesuatu atau ketika menentukan aturan sebuah permainan.',0,'2020-06-18 12:58:15','2020-06-18 12:58:15',10,13),(26,'ten ten: learning otodidak','/product/PROD1592460018347.jpg',4,1,100000,'Pernahkah mendengar nasihat, `Begini, begitu...`, `Ini harus begini, itu harus begitu,` hal itu terjadi karena kita hidup tanpa rencana, tujuan, dan mimpi. Kita tidak tahu mau ngapain. Ada juga teman yang kalau orangtuanya tidak melarang, dia akan menghabiskan waktu seharian dengan menonton TV, bermain komputer. Jangan pernah berpikir kalau `Saya masih kecil jadi tidak apa-apa tidak ada rencana kehidupan`. Jika sejak kecil tidak mempunyai rencana kalau sudah besar lama-lama akan sulit. Kalau melihat anak yang pintar berarti dia merencanakan hidupnya, belajar merupakan bagian dari rencana. Kenapa kita harus pintar dan rajin? Itu karena kita mempunyai mimpi. Saat kita mempunyai mimpi yang ingin diwujudkan coba aturlah waktu. Dan mulai sekarang lihatlah daftar rencana hidup itu!',0,'2020-06-18 13:00:18','2020-06-18 13:00:18',10,14),(27,'komplek tanpa faedah 1','/product/PROD1592460112577.jpg',12,1,77000,'Om Iyek—bukan nama panggilan vokalis rock legendaris ternama—menemkan ada bom yang ditinggal di dalam rumah kesayangan. Tanpa basa-basi, beliau segera menelpon polisi komplek yang sudah terlatih, untuk melakukan penangkapan. Kira-kira apakah yang akan terjadi: A. Bom akan meledak. B. Bom akan meledak. Saksikan nasib Om Iyek dan ambil faedah dari sekian banyak cerita Komplek Tanpa Faedah karya Jonbray ini!',0,'2020-06-18 13:01:52','2020-06-18 13:01:52',11,15),(28,'si juki seri keroyokan 12','/product/PROD1592463679103.jpg',12,1,55000,'Hore! Berbulan-bulan sejak #11 rilis, akhirnya si juki keroyokan #12 terbit juga! jarak selesainya memang agak lama, maklum para kreatornya banyak urusan terutama yang bikin si juki jawara tarkan, HIK. Hore lagi! Edisi ini kita kedatangan superhero yang hero: Hore hero! Badut ini emang antimainstream, kalo dicerita lain badut biasanya jadi penjahat. Di sini dia jagoanya. Yok kita liat aksi perdananya si hore hero!',0,'2020-06-18 14:01:19','2020-06-18 14:01:19',12,16),(29,'lc: altair - tale of the great war 19','/product/PROD1592553580040.jpg',12,1,27000,'Yakin dengan datangnya serangan dadakan dari Duchess Lerederick, kaum Herrmann Baltrhain maju ke medan perang. Kaum Herrmann telah menantikan tibanya hari ini untuk menunjukkan kesetiaan terhadap Imperium. Setelah pengorbanan yang besar, kemenangan Imperium begitu diharapkan. Akan tetapi, pasukan Turkiye juga telah mantap berkat \"Uyandirmak\" serta dukungan Aliansi Anti-Imperium di belakang mereka. Dan kini, tibalah fajar yang akan menentukan nasib baik Turkiye maupun Imperium!',0,'2020-06-19 14:59:40','2020-06-19 14:59:40',13,17),(30,'lc: historie 08','/product/PROD1592553716202.jpg',15,1,27000,'Pasukan Makedonia menghadapi Pasukan Athena di darat yang dipimpin oleh Chares dan Pasukan Athena di laut yang dipimpin oleh Phokion. Mampukah Makedonia mengalahkan Athena!? Dalam perjalanan pulang pun ternyata mereka masih harus menghadapi dua musuh lagi!!',0,'2020-06-19 15:01:56','2020-06-19 15:01:56',14,18),(31,'lc: fight ippo 118','/product/PROD1592554394015.jpg',12,1,27000,'Setelah istirahat dan persiapan jangka panjang, akhirnya lawan Ippo untuk pertandingan comeback telah ditetapkan! Lawannya adalah Juara Kelas Bulu Filipina yang baru, Antonio Guevara! Namun berbeda dengan lawan bertandingnya selama ini, Guevara adalah petinju kidal yang jarang dihadapi oleh Ippo!',0,'2020-06-19 15:13:14','2020-06-19 15:13:14',15,19),(32,'lc: to the abandoned sacred beast 3','/product/PROD1592554515122.jpg',15,1,27000,'Satu tahun telah berlalu sejak Hank berhadapan dengan mantan rekannya, Cain Madhouse, dalam peristiwa di kota uap White Church. Cain yang memimpin para prajurit artifisial dewa dan melakukan kudeta, kemudian mendeklarasikan berdirinya “negara merdeka Patria Baru.” Sekali lagi, dunia berada di ambang peperangan... Di saat bersamaan, Char yang mengunjungi kampung halamannya di Rivulet Wood, bertemu dengan monster yang seharusnya sudah tidak ada...',0,'2020-06-19 15:15:15','2020-06-19 15:15:15',16,20),(33,'lc: friends game 10','/product/PROD1592554631062.jpg',10,1,27000,'Sang manusia serigala memberi penawaran kepada Yuichi dan kawan-kawan. Ia tidak akan kabur, tapi mereka harus menyerahkan uang hadiah sebagai kompensasi. Dapatkah Yuichi mengungkap sosoknya dan memenangkan permainan Penjara Teman ini?',0,'2020-06-19 15:17:11','2020-06-19 15:17:11',17,21),(34,'legend of an emperor viii : cang tian ba huang 08','/product/PROD1592554910309.jpg',15,1,100000,'Temujin, Jamukha dan Wang Chongyang berhasil memasuki Nadi Naga untuk menyelamatkan Shao Xiaoxiao dari cengkeraman Iblis Barat. Longzang, Zenda, serta pengikut mereka juga menyusul masuk demi menjadi penguasa dan membuat angan-angan mereka terkabul. Berkumpulnya kawan dan lawan di dalam Nadi Naga ditambah bahaya tersembunyi yang menunggu mereka di sana membuat pertarungan dahsyat tak bisa dihindari! Siapa yang akan bertahan dan siapa yang akan gugur?',0,'2020-06-19 15:21:50','2020-06-19 15:21:50',18,24);
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
INSERT INTO `users` VALUES (12,'tes','muhammadirzza@gmail.com','1cb2b4378d3a195e549ffe826bf8471acb2075e580b4a62bd72042a3e9ae8c81',2,0,1,'2020-05-11 09:26:33','2020-05-11 09:26:33','2020-06-19 14:51:32',0),(13,'tes2','muhammadirzza@gmail.com','1cb2b4378d3a195e549ffe826bf8471acb2075e580b4a62bd72042a3e9ae8c81',1,0,1,'2020-05-11 13:55:05','2020-05-11 13:55:05','2020-06-14 19:19:32',0),(46,'tes3','muhammadirzza@gmail.com','1cb2b4378d3a195e549ffe826bf8471acb2075e580b4a62bd72042a3e9ae8c81',1,0,1,'2020-06-17 20:21:58','2020-06-17 20:21:58','2020-06-17 20:21:59',0);
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

-- Dump completed on 2020-06-19 15:25:28
