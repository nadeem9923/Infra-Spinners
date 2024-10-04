-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: polltest
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lan_id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(10) NOT NULL,
  `about` varchar(255) NOT NULL,
  `votecount` int NOT NULL,
  PRIMARY KEY (`lan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'BJP','BJP is Bharatiya Janata Party',6),(2,'CONGRESS','CONGRESS is INC',8),(3,'AAP','AAP is Aam Admin Party',21),(4,'NOTA','NOTA is None of the Above',20),(5,'NIRDLIY','NIRDLIY is Non-Partisan',4);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginusers`
--

DROP TABLE IF EXISTS `loginusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL DEFAULT 'voter',
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginusers`
--

LOCK TABLES `loginusers` WRITE;
/*!40000 ALTER TABLE `loginusers` DISABLE KEYS */;
INSERT INTO `loginusers` VALUES (47,'helllo','b373c043b854b0ebb97afe9b0ba47059','voter','ACTIVE'),(46,'jaha','e3df9353ab12391b79865f25a0d7068e','voter','ACTIVE'),(45,'action','1ace9555f0aafb4fe1e75309e8f79e4d','voter','ACTIVE'),(44,'arjun','451d3eb1573c7ebb70c08dfee9766509','voter','ACTIVE'),(43,'niku19','ac61ebbe84c06debaa78c0a832330164','voter','ACTIVE'),(42,'ejjhed','b3f70c0d1b269668e937741a5d5797ab','voter','ACTIVE'),(41,'Anirban','9a7108cfaa7f51efb5fcda9e9d4b7a90','voter','ACTIVE'),(40,'dnddd','b5d165334b465a7fc42310750430b3f9','voter','ACTIVE'),(48,'Nadeem','cc03e747a6afbbcbf8be7668acfebee5','voter','ACTIVE'),(49,'junaid.shaikh@worldline.com','40b88f4948e2464342e4eda5e3aafcfd','voter','ACTIVE'),(50,'manish','5c0229bb3fcc8efebf4c6849bc3dfe81','voter','ACTIVE'),(51,'lalit.chaudhari','68f6fdc81f364abcbf780ae564ec8278','voter','ACTIVE'),(52,'Arjun@','c7a0d31290ebe1c9059684415d2464c2','voter','ACTIVE'),(53,'Ask@000','4bd325ff60232559274e8ef62ef25445','voter','ACTIVE'),(54,'wasim','e10adc3949ba59abbe56e057f20f883e','voter','ACTIVE');
/*!40000 ALTER TABLE `loginusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voters` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'NOTVOTED',
  `voted` varchar(255) DEFAULT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES ('sdjdjdj','djdjddjj','helllo','VOTED','python'),('Anirban','oodoododo','jaha','NOTVOTED',NULL),('Anirban','Dutta','action','VOTED','php'),('Anirban','Dutta','arjun','NOTVOTED',NULL),('janemaan','lohiid','niku19','VOTED','c++'),('asdhk','ddddnd','ejjhed','NOTVOTED',NULL),('Anirban','Dutta','Anirban','VOTED','java'),('ndndnd','dhbhdd','dnddd','NOTVOTED',NULL),('Nadeem','Shaikh','Nadeem','VOTED','NOTA'),('Junaid','Shaikh','junaid.shaikh@worldline.com','VOTED','NOTA'),('Manish','Sonawane','manish','VOTED','BJP'),('Lalit','Chaudhari','lalit.chaudhari','VOTED','NOTA'),('Arjun','kakde','Arjun@','VOTED','CONGRESS'),('Mmm','Sss','Ask@000','VOTED','CONGRESS'),('Wasim','Shaikh','wasim','VOTED','NOTA');
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04 10:16:22
