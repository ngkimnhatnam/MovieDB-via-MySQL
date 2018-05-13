-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: MOVIE
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genre` (
  `Genre_ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Genre_ID`),
  UNIQUE KEY `Genre_ID_UNIQUE` (`Genre_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Animation'),(4,'Biography'),(5,'Comedy'),(6,'Crime'),(7,'Documentary'),(8,'Drama'),(9,'Family'),(10,'Fantasy'),(11,'Film Noir'),(12,'History'),(13,'Horror'),(14,'Music'),(15,'Musical'),(16,'Mystery'),(17,'Romance'),(18,'Sci-Fi'),(19,'Short'),(20,'Sport'),(21,'Superhero'),(22,'Thriller'),(23,'War'),(24,'Western');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `Movie_ID` int(11) NOT NULL,
  `Movie_Title` varchar(50) DEFAULT NULL,
  `Movie_Release_Date` datetime DEFAULT NULL,
  `Movie_lang` varchar(45) DEFAULT NULL,
  `Movie_Country` varchar(45) DEFAULT NULL,
  `Movie_Time` int(11) DEFAULT NULL,
  UNIQUE KEY `Movie_ID_UNIQUE` (`Movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'Ready Player One','2018-03-28 00:00:00','English','USA',140),(2,'Black Panther','2018-02-16 00:00:00','English','USA',134),(3,'Captain America: Civil War','2016-04-27 00:00:00','English','USA',147),(4,'Titanic','1997-12-14 00:00:00','English','USA',194),(5,'Forest Gump','1994-06-07 00:00:00','English','USA',142),(6,'Walking On Air','1987-01-17 00:00:00','English','USA',55),(7,'Pretty Woman','1990-03-23 00:00:00','English','USA',119),(8,'Terminator 2','1991-07-01 00:00:00','English','USA',137),(9,'3 Idiots	','2009-12-25 00:00:00','Hindi','India',170),(10,'Mission Impossible','1996-05-20 00:00:00','English','USA',110),(11,'Jurrasic Park','1993-06-09 00:00:00','English','USA',127),(12,'Rush Hour','1998-09-18 00:00:00','English','USA',98),(13,'The Ring','2002-10-02 00:00:00','English','USA',115),(14,'The Shining','1980-05-23 00:00:00','English','USA',146),(15,'An American Werewolf in London','1981-08-21 00:00:00','English','USA',97),(16,'You’ve Got Mail','1998-12-18 00:00:00','English','USA',119),(17,'Cast Away','2001-01-26 00:00:00','English','USA',143),(18,'Gran Torino','2008-12-09 00:00:00','English','USA',114),(19,'King Kong','2005-12-14 00:00:00','English','USA',201),(20,'Gone With The Wind','1939-05-15 00:00:00','English','USA',238),(21,'Pride And Prejudice','2005-12-23 00:00:00','English','USA',129),(22,'500 Days Of Summer','2009-01-17 00:00:00','English','USA',97),(23,'The Green Mile','1999-12-06 00:00:00','English','USA',189),(24,'Avatar','2009-12-17 00:00:00','English','UK',160),(25,'Stars War','1977-01-01 00:00:00','English','USA',NULL),(26,'The Matrix','1999-07-09 00:00:00','English','USA',136);
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Genre`
--

DROP TABLE IF EXISTS `Movie_Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_Genre` (
  `Movie_ID` int(11) NOT NULL,
  `Genre_ID` int(11) NOT NULL,
  KEY `Movie_ID_idx` (`Movie_ID`),
  KEY `Genre_ID_idx` (`Genre_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Genre`
--

LOCK TABLES `Movie_Genre` WRITE;
/*!40000 ALTER TABLE `Movie_Genre` DISABLE KEYS */;
INSERT INTO `Movie_Genre` VALUES (1,1),(1,2),(1,18),(2,1),(2,2),(2,18),(3,1),(3,2),(3,18),(4,8),(4,17),(5,8),(5,17),(6,8),(6,9),(6,20),(7,5),(7,17),(8,1),(8,18),(9,5),(9,8),(10,1),(10,2),(10,22),(11,2),(11,18),(11,22),(12,1),(12,5),(12,6),(13,13),(13,16),(14,8),(14,13),(15,5),(15,13),(16,5),(16,8),(16,17),(17,2),(17,8),(17,17),(18,8),(19,8),(19,1),(20,8),(20,12),(20,17),(21,8),(21,17),(22,8),(22,17),(22,5),(23,8),(23,10),(23,6),(24,10),(24,18),(25,10),(26,10),(26,18);
/*!40000 ALTER TABLE `Movie_Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Person`
--

DROP TABLE IF EXISTS `Movie_Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_Person` (
  `Movie_ID` int(11) NOT NULL,
  `Person_ID` int(11) NOT NULL,
  `Actor` tinyint(4) DEFAULT NULL,
  `Director` tinyint(4) DEFAULT NULL,
  `Characters` varchar(45) DEFAULT NULL,
  KEY `Movie_ID_idx` (`Movie_ID`),
  KEY `Person_ID_idx` (`Person_ID`),
  CONSTRAINT `Movie_ID` FOREIGN KEY (`Movie_ID`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `Person_ID` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Person`
--

LOCK TABLES `Movie_Person` WRITE;
/*!40000 ALTER TABLE `Movie_Person` DISABLE KEYS */;
INSERT INTO `Movie_Person` VALUES (1,101,1,0,'Parzival'),(1,102,1,0,'Art3mis'),(1,103,1,0,'Sorrento'),(1,104,1,0,'Aech'),(1,105,1,0,'Anorak'),(1,106,0,1,NULL),(2,107,1,0,'Black Panther'),(2,108,1,0,'Erik Kilmonger'),(2,109,1,0,'Nakia'),(2,110,1,0,'Okoye'),(2,111,1,0,'Everett'),(2,112,1,0,'W\'Kabi'),(2,113,1,0,'Shuri'),(2,114,1,0,'M\'Baku'),(2,115,0,1,NULL),(2,116,1,0,'N\'Jobu'),(2,117,1,0,'Ramonda'),(2,118,1,0,'Zuri'),(2,119,1,0,'Ulysses Klaue'),(3,120,1,0,'Captain America'),(3,121,1,0,'Ironman'),(3,122,1,0,'Black Widow'),(3,123,1,0,'Winter Soldier'),(3,124,1,0,'Falcon'),(3,125,1,0,'War Machine'),(3,126,1,0,'Hawkeye'),(3,107,1,0,'Black Panther'),(3,127,1,0,'Vision'),(3,128,1,0,'Scarlett Witch'),(3,129,1,0,'Ant-Man'),(3,130,0,1,NULL),(3,131,0,1,NULL),(4,132,1,0,'Jack Dawson'),(4,133,1,0,'Rose Dewitt'),(4,134,1,0,'Cal Hockley'),(4,135,0,1,NULL),(5,136,1,0,'Forest Gumb'),(5,137,1,0,'Mrs.Gumb'),(5,138,1,0,'Young Forest'),(5,139,0,1,NULL),(6,140,1,0,'Mrs.Hepp'),(6,141,1,0,'Danny Pearson'),(6,142,1,0,'Bill Pearson'),(6,143,0,1,NULL),(7,144,1,0,'Edward Lewis'),(7,145,1,0,'Vivian Ward'),(7,146,1,0,'James Morse'),(7,147,0,1,NULL),(8,148,1,0,'Terminator'),(8,149,1,0,'Sarah Connor'),(8,150,1,0,'John Connor'),(8,135,0,1,NULL),(9,151,1,0,'Chanchad'),(9,152,1,0,'Farhan Qureshi'),(9,153,1,0,'Raju Rastogi'),(9,154,0,1,NULL),(10,155,1,0,'Ethan Hunt'),(10,156,1,0,'Jim Phelps'),(10,157,1,0,'Claire'),(10,158,0,1,NULL),(11,159,1,0,'Grant'),(11,160,1,0,'Ellie'),(11,161,1,0,'Malcolm'),(11,106,0,1,NULL),(12,162,1,0,'Lee'),(12,163,1,0,'Sang'),(12,164,1,0,'Carter'),(12,165,0,1,NULL),(13,166,1,0,'Rachel'),(13,167,1,0,'Noah'),(13,168,1,0,'Aidan'),(13,169,0,1,NULL),(14,170,1,0,'Jack Torrence'),(14,171,1,0,'Wendy Torrence'),(14,172,1,0,'Danny'),(14,173,0,1,NULL),(15,174,1,0,'Truck Driver'),(15,175,1,0,'David Kessler'),(15,176,1,0,'Jack Goodman'),(15,177,0,1,NULL),(16,178,1,0,'Kathleen Kelly'),(16,179,1,0,'Frank Navasky'),(16,180,0,1,NULL),(16,136,1,0,'Joe Fox'),(17,181,1,0,'Ramon'),(17,182,1,0,'Bettina Peterson'),(17,136,1,0,'Chuck Noland'),(17,139,0,1,NULL),(18,183,1,1,'Walt Kowalski'),(18,184,1,0,'Thao'),(18,185,1,0,'Father Janovich'),(19,186,1,0,'Coloin Hanz'),(19,187,1,0,'Ivan Parke'),(19,188,0,1,NULL),(19,166,1,0,'Jack Black'),(20,189,1,0,'Scarlett'),(20,190,1,0,'Gerald O\'Hara'),(20,191,1,0,'Ellen'),(20,192,0,1,NULL),(21,193,1,0,'Elizabeth Bennet'),(21,194,1,0,'Mr.Darcy'),(21,195,1,0,'Jane Bennet'),(21,196,0,1,NULL),(22,197,1,0,'Tom'),(22,198,1,0,'Summer'),(22,199,1,0,'McKenzie'),(22,200,0,1,NULL),(23,201,1,0,'John Coffey'),(23,202,1,0,'Brutus Howell'),(23,203,0,1,NULL),(23,136,1,0,'Paul Edgecomb'),(24,204,1,0,'Jon Landau'),(24,205,1,0,'Neytiri'),(24,206,1,0,'Colonel Miles Quaritch'),(24,135,0,1,NULL),(25,207,1,0,'Princess Leia'),(25,208,1,0,'Luke Skywalker'),(25,209,1,0,'Han Solo'),(25,210,0,1,NULL),(26,211,1,0,'Neo'),(26,212,1,0,'Morpheus'),(26,213,1,0,'Trinity'),(26,214,0,1,NULL);
/*!40000 ALTER TABLE `Movie_Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `Person_ID` int(11) NOT NULL,
  `FNAME` varchar(45) DEFAULT NULL,
  `LNAME` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Person_ID`),
  UNIQUE KEY `Person_ID_UNIQUE` (`Person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (101,'Tye','Sheridan','Male'),(102,'Olivia','Cooke','Female'),(103,'Ben','Mendelsohn','Male'),(104,'Lena','Waithe','Female'),(105,'Mark','Rylance','Male'),(106,'Steven','Spielberg','Male'),(107,'Chadwick','Boseman','Male'),(108,'Michael','B.Jordan','Male'),(109,'Lupita','Nyong\'o','Female'),(110,'Danai','Gurira','Female'),(111,'Martin','Freeman','Male'),(112,'Daniel','Kaluuya','Male'),(113,'Letitia','Wright','Female'),(114,'Winston','Duke','Male'),(115,'Ryan','Coogler','Male'),(116,'Sterling','K.Brown','Male'),(117,'Angela','Bassett','Female'),(118,'Forest','Whitaker','Male'),(119,'Andy','Serkis','Male'),(120,'Chris','Evans','Male'),(121,'Robert','Downey','Male'),(122,'Scarlett','Johansson','Female'),(123,'Sebastian','Stan','Male'),(124,'Anthony','Mackie','Male'),(125,'Don','Cheadle','Male'),(126,'Jeremy','Renner','Male'),(127,'Paul','Bettany','Male'),(128,'Elizabeth','Olsen','Female'),(129,'Paul','Rudd','Male'),(130,'Anthony','Russo','Male'),(131,'Joe','Russo','Male'),(132,'Leonardo','Dicarpio','Male'),(133,'Kate','Winslet','Female'),(134,'Billy','Zane','Male'),(135,'James','Cameron','Male'),(136,'Tom','Hanks','Male'),(137,'Sally','Field','Female'),(138,'Michael','Conner Humphreys','Male'),(139,'Robert','Zemeckis','Male'),(140,'Lynn','Redgrave','Female'),(141,'Jordan','Marder','Male'),(142,'Tom','Butler','Male'),(143,'Ed','Kaplan','Male'),(144,'Richard','Gere','Male'),(145,'Julia','Roberts','Female'),(146,'Ralph','Bellamy','Male'),(147,'Garry','Marshall','Male'),(148,'Arnold','Schwarzenegger','Male'),(149,'Linda','Hamilton','Female'),(150,'Edward','Furlong','Male'),(151,'Aamir','Khan','Male'),(152,'Madhavan',NULL,'Male'),(153,'Sharman','Joshi','Male'),(154,'Rajkumar','Hirani','Male'),(155,'Tom','Cruise','Male'),(156,'Jon','Voight','Male'),(157,'Emmanuelle','Beart','Female'),(158,'Brian','De Palma','Male'),(159,'Sam','Neill','Male'),(160,'Laura','Dern','Female'),(161,'Jeff','Goldblum','Male'),(162,'Jackie','Chan','Male'),(163,'Ken','Leung','Male'),(164,'Chris','Tucker','Male'),(165,'Brett','Ratner','Male'),(166,'Naomi','Watts','Female'),(167,'Martin','Henderson','Male'),(168,'David','Dorfman','Male'),(169,'Gore','Verbinski','Male'),(170,'Jack','Nicholson','Male'),(171,'Shelley','Duval','Female'),(172,'Danny','Lloyd','Male'),(173,'Stanley','Kubrick','Male'),(174,'Joe','Belcher','Male'),(175,'David','Naughton','Male'),(176,'Griffin','Dunne','Male'),(177,'John','Landis','Male'),(178,'Meg','Ryan','Female'),(179,'Greg','Kinnear','Male'),(180,'Nora','Ephron','Female'),(181,'Paul','Sanchez','Male'),(182,'Lari','White','Female'),(183,'Clint','Eastwood','Male'),(184,'Bee','Vang','Male'),(185,'Christopher','Carley','Male'),(186,'Adrean','Body','Male'),(187,'Jamie','Bell','Male'),(188,'Peter','Jackson','Male'),(189,'Viven','Leigh','Female'),(190,'Thomas','Mitchell','Male'),(191,'Barbara','O\'Neil','Female'),(192,'Victor','Fleming','Male'),(193,'Keira','Kingley','Female'),(194,'Matthew','Macfadyen','Male'),(195,'Rosamund','Pike','Female'),(196,'Joe','Wright','Male'),(197,'Joseph','Gordon','Male'),(198,'Zooey','Deschanel','Female'),(199,'Geoffrey','Arend','Male'),(200,'Marc','Webb','Male'),(201,'Michael Klark','Duncan','Male'),(202,'David','Mors','Male'),(203,'Franc','Darabont','Male'),(204,'Sam','Worthington','Male'),(205,'Zoe','Saldana','Female'),(206,'Stephen','Lang','Male'),(207,'Carrie','Fisher','Female'),(208,'Mark','Hamill','Male'),(209,'Harrison','Ford','Male'),(210,'George','Lucas','Male'),(211,'Keanu','Reeves','Male'),(212,'Laurence','Fishburne','Female'),(213,'Carrie-Anne','Moss','Female'),(214,'Lilly','Wachowski','Female');
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producing_Company`
--

DROP TABLE IF EXISTS `Producing_Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Producing_Company` (
  `Movie_ID` int(11) NOT NULL,
  `Company_Name` varchar(45) DEFAULT NULL,
  KEY `Movie_ID_idx` (`Movie_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producing_Company`
--

LOCK TABLES `Producing_Company` WRITE;
/*!40000 ALTER TABLE `Producing_Company` DISABLE KEYS */;
INSERT INTO `Producing_Company` VALUES (1,'Warner Bros. Pictures'),(2,'Marvel Studios'),(3,'Marvel Studios'),(4,'Paramount Pictures'),(5,'Wendy Finerman Productions'),(6,'WonderWorks'),(7,'Touchstone Pictures'),(8,'Carolco Pictures'),(9,'Vinod Chopra Productions'),(10,'Cruise/Wagner Productions'),(11,'Amblin Entertainment'),(12,'Roger Birnbaum Productions'),(13,'BenderSpink Parkes/MacDonald Productions'),(14,'The Producer Circle Company'),(15,'PolyGram Pictures'),(16,'Warner Bros. Pictures'),(17,'ImageMovers'),(18,'Double Nickel Entertainment'),(19,'Universal Pictures'),(20,'Selznick International'),(21,'Universal Pictures'),(22,'Dune Entertainment'),(23,'Castle Rock Entertainment'),(24,'Lightstorm Entertainment'),(25,'Lucasfilm Ltd.'),(26,'Village Roadshow Pictures');
/*!40000 ALTER TABLE `Producing_Company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-13 13:33:36
