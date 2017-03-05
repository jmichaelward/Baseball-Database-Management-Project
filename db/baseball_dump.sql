-- MySQL dump 10.13  Distrib 5.1.41, for Win32 (ia32)
--
-- Host: localhost    Database: baseball
-- ------------------------------------------------------
-- Server version	5.1.41

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_firstname` varchar(15) NOT NULL,
  `cust_lastname` varchar(25) NOT NULL,
  `cust_zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'David','Alexander','55105'),(2,'Aaron','Gleeman','55402'),(3,'Sarah','Blissman','55208'),(4,'Jordan','Thompson','55123'),(5,'Tess','Goldblum','55118'),(6,'Terrence','Hemingway','54019'),(7,'Sheila','Jenkins','52119'),(8,'Clarence','Dooley','54123'),(9,'Abby','Haddican','55404'),(10,'Jeremy','Ward','55104'),(11,'Tyler','Gordon','55228'),(12,'April','Newman','56212'),(13,'Theresa','Clark','62419'),(14,'Allison','Gaffigan','29241'),(15,'John','Thomas','55428'),(16,'Eric','Nysmith','55202'),(17,'Philip','Morris','55454'),(18,'Joan','Schaeffer','55122'),(19,'Jacob','Jones','51428');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisions` (
  `div_id` int(11) NOT NULL AUTO_INCREMENT,
  `div_region` varchar(10) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`div_id`),
  KEY `divisions_fk` (`league_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (1,'East',1),(2,'Central',1),(3,'West',1),(4,'East',2),(5,'Central',2),(6,'West',2);
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `freeagents`
--

DROP TABLE IF EXISTS `freeagents`;
/*!50001 DROP VIEW IF EXISTS `freeagents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `freeagents` (
  `player_id` int(11),
  `player_firstname` varchar(15),
  `player_lastname` varchar(25),
  `position` char(2),
  `team_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_datetime` datetime NOT NULL,
  `hometeam_id` int(11) NOT NULL,
  `awayteam_id` int(11) NOT NULL,
  `stad_id` int(11) NOT NULL,
  `crew_id` int(11) NOT NULL,
  PRIMARY KEY (`game_id`),
  KEY `games_fk1` (`hometeam_id`),
  KEY `games_fk2` (`awayteam_id`),
  KEY `games_fk3` (`stad_id`),
  KEY `games_fk4` (`crew_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (8,'2011-04-01 13:05:00',18,22,13,12),(9,'2011-04-02 19:05:00',18,22,13,12),(10,'2011-03-31 13:05:00',3,8,4,6),(11,'2011-04-02 16:10:00',3,8,4,6),(12,'2011-04-03 13:05:00',3,8,4,6),(13,'2011-03-31 13:05:00',19,15,18,5),(14,'2011-03-31 14:10:00',21,23,15,13),(15,'2011-03-31 16:10:00',9,11,25,2),(16,'2011-03-31 16:15:00',25,29,12,14),(17,'2011-03-31 20:00:00',28,30,1,11),(18,'2011-04-01 14:20:00',20,24,21,15),(19,'2011-04-01 15:05:00',7,6,10,16),(20,'2011-04-01 16:05:00',14,2,6,3),(21,'2011-04-01 16:10:00',27,26,2,9),(22,'2011-04-01 19:07:00',5,10,5,7),(23,'2011-04-01 19:10:00',16,17,26,1),(24,'2011-04-01 19:10:00',4,1,29,4),(25,'2011-04-01 20:10:00',9,11,25,2),(26,'2011-04-01 22:05:00',12,13,30,8),(27,'2011-04-01 22:10:00',28,30,1,11),(28,'2011-04-02 13:05:00',7,6,10,16),(29,'2011-04-02 13:05:00',20,24,21,15),(30,'2011-04-02 13:05:00',19,15,18,5),(31,'2011-04-02 13:07:00',5,10,5,7),(32,'2011-04-02 13:10:00',9,11,25,2),(33,'2011-04-03 13:07:00',5,10,5,7),(34,'2011-04-02 16:10:00',28,30,1,11),(35,'2011-04-02 16:10:00',25,29,12,14),(36,'2011-04-02 19:10:00',21,23,15,13),(37,'2011-04-02 19:10:00',16,17,26,1),(38,'2011-04-02 19:10:00',4,1,29,4),(39,'2011-04-02 20:05:00',14,2,6,3),(40,'2011-04-02 20:10:00',27,26,2,9),(41,'2011-04-02 21:05:00',12,13,30,8),(42,'2011-04-03 13:05:00',7,6,10,16),(43,'2011-04-03 13:10:00',21,23,15,13),(44,'2011-04-03 13:10:00',16,17,26,1),(45,'2011-04-03 13:35:00',19,15,18,5),(46,'2011-04-03 13:40:00',4,1,29,4),(47,'2011-04-03 14:05:00',14,2,6,3),(48,'2011-04-03 14:10:00',9,11,25,2),(49,'2011-04-03 14:15:00',25,29,12,14),(50,'2011-04-03 14:20:00',20,24,21,15),(51,'2011-04-03 15:10:00',27,26,2,9),(52,'2011-04-03 16:05:00',12,13,30,8),(53,'2011-04-03 20:00:00',28,30,1,11),(54,'2011-04-03 13:35:00',18,22,13,12),(55,'2011-04-08 16:10:00',10,12,24,15),(56,'2011-04-09 19:10:00',10,12,24,15),(57,'2011-04-10 16:10:00',10,12,24,15),(58,'2011-04-04 15:05:00',1,8,8,10);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `gameschedule`
--

DROP TABLE IF EXISTS `gameschedule`;
/*!50001 DROP VIEW IF EXISTS `gameschedule`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `gameschedule` (
  `game_id` int(11),
  `game_datetime` datetime,
  `hometeam` varchar(30),
  `awayteam` varchar(30),
  `stad_name` varchar(30)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `leagues`
--

DROP TABLE IF EXISTS `leagues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leagues` (
  `league_id` int(11) NOT NULL AUTO_INCREMENT,
  `league_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`league_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leagues`
--

LOCK TABLES `leagues` WRITE;
/*!40000 ALTER TABLE `leagues` DISABLE KEYS */;
INSERT INTO `leagues` VALUES (1,'American League'),(2,'National League');
/*!40000 ALTER TABLE `leagues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managers` (
  `mgr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mgr_firstname` varchar(15) NOT NULL,
  `mgr_lastname` varchar(25) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mgr_id`),
  KEY `managers_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'Kirk','Gibson',26),(2,'Fredi','Gonzalez',15),(3,'Buck','Showalter',1),(4,'Terry','Francona',2),(5,'Mike','Quade',20),(6,'Ozzie','Guillen',6),(7,'Dusty','Baker',21),(8,'Manny','Acta',7),(9,'Jim','Tracy',27),(10,'Jim','Leyland',8),(11,'Edwin','Rodriguez',16),(12,'Brad','Mills',22),(13,'Ned','Yost',9),(14,'Mike','Scioscia',11),(15,'Don','Mattingly',28),(16,'Ron','Roenicke',23),(17,'Ron','Gardenhire',10),(18,'Terry','Collins',17),(19,'Joe','Girardi',3),(20,'Bob','Geren',12),(21,'Charlie','Manuel',18),(22,'Clint','Hurdle',24),(23,'Bud','Black',29),(24,'Bruce','Bochy',30),(25,'Eric','Wedge',13),(26,'Tony','La Russa',25),(27,'Joe','Maddon',4),(28,'Ron','Washington',14),(29,'John','Farrell',5),(30,'Jim','Riggleman',19);
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_firstname` varchar(15) NOT NULL,
  `player_lastname` varchar(25) NOT NULL,
  `position` char(2) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  KEY `players_fk` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=725 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Justin','Morneau','1B',10),(2,'Joe','Mauer','C',10),(3,'Scott','Baker','P',10),(4,'Nick','Blackburn','P',10),(5,'Matt','Capps','P',10),(6,'Brian','Duensing','P',10),(7,'Eric','Hacker','P',10),(8,'Jim','Hoey','P',10),(9,'Dusty','Hughes','P',10),(10,'Francisco','Liriano','P',10),(11,'Jose','Mijares','P',10),(12,'Joe','Nathan','P',10),(13,'Carl','Pavano','P',10),(14,'Glen','Perkins','P',10),(15,'Drew','Butera','C',10),(16,'Steve','Holm','C',10),(17,'Alexi','Casilla','SS',10),(18,'Luke','Hughes','3B',10),(19,'Matt','Tolbert','3B',10),(20,'Danny','Valencia','3B',10),(21,'Michael','Cuddyer','RF',10),(22,'Jason','Kubel','RF',10),(23,'Jason','Repko','RF',10),(24,'Denard','Span','CF',10),(25,'Delmon','Young','LF',10),(26,'Jim','Thome','DH',10),(27,'Tsuyoshi','Nishioka','2B',10),(28,'Kevin','Slowey','P',10),(29,'Joe','Benson','CF',10),(30,'David','Bromberg','P',10),(31,'Alex','Burnett','P',10),(32,'Deolis','Guerra','P',10),(33,'Jeff','Manship','P',10),(34,'Chris','Parmalee','1B',10),(35,'Trevor','Plouffe','SS',10),(36,'Ben','Revere','CF',10),(37,'Anthony','Slama','P',10),(38,'Anthony','Swarzak','P',10),(39,'Rene','Tosoni','RF',10),(40,'Jeremy','Accardo','P',1),(41,'Jake','Arrieta','P',1),(42,'Brad','Bergesen','P',1),(43,'Jason','Berken','P',1),(44,'Zach','Britton','P',1),(45,'Mike','Gonzalez','P',1),(46,'Kevin','Gregg','P',1),(47,'Jeremy','Guthrie','P',1),(48,'Jim','Johnson','P',1),(49,'Clay','Rapada','P',1),(50,'Josh','Rupe','P',1),(51,'Chris','Tillman','P',1),(52,'Koji','Uehara','P',1),(53,'Jake','Fox','C',1),(54,'Matt','Wieters','C',1),(55,'Robert','Andino','SS',1),(56,'Cesar','Itzuris','SS',1),(57,'Derrek','Lee','1B',1),(58,'Mark','Reynolds','3B',1),(59,'Brian','Roberts','2B',1),(60,'Adam','Jones','CF',1),(61,'Nick','Markakis','RF',1),(62,'Felix','Pie','LF',1),(63,'Luke','Scott','LF',1),(64,'Vladimir','Guerrero','DH',1),(65,'J.J.','Hardy','SS',1),(66,'Chris','Jakubauskas','P',1),(67,'Brian','Matusz','P',1),(68,'Matt','Angle','LF',1),(69,'Josh','Bell','3B',1),(70,'Brandon','Erbe','P',1),(71,'Pedro','Florimon','SS',1),(72,'Luis','Lebron','P',1),(73,'Joe','Mahoney','1B',1),(74,'Troy','Patton','P',1),(75,'Nolan','Reimold','LF',1),(76,'Brandon','Snyder','1B',1),(77,'Chorye','Spoone','P',1),(78,'Craig','Tatum','C',1),(79,'Pedro','Viola','P',1),(80,'Alfredo','Simon','P',1),(81,'Matt','Albers','P',2),(82,'Daniel','Bard','P',2),(83,'Josh','Beckett','P',2),(84,'Clay','Buchholz','P',2),(85,'Bobby','Jenks','P',2),(86,'John','Lackey','P',2),(87,'Jon','Lester','P',2),(88,'Daisuke','Matsuzaka','P',2),(89,'Hideki','Okajima','P',2),(90,'Jonathan','Papelbon','P',2),(91,'Tim','Wakefield','P',2),(92,'Dan','Wheeler','P',2),(93,'Jarrod','Saltalamacchia','C',2),(94,'Jason','Varitek','C',2),(95,'Adrian','Gonzalez','1B',2),(96,'Jed','Lowrie','SS',2),(97,'Dustin','Pedroia','2B',2),(98,'Marco','Scutaro','SS',2),(99,'Kevin','Youkilis','3B',2),(100,'Mike','Cameron','CF',2),(101,'Carl','Crawford','LF',2),(102,'J.D.','Drew','RF',2),(103,'Jacoby','Ellsbury','CF',2),(104,'Darnell','McDonald','CF',2),(105,'David','Ortiz','DH',2),(106,'Alfredo','Aceves','P',2),(107,'Lars','Anderson','1B',2),(108,'Scott','Atchison','P',2),(109,'Michael','Bowden','P',2),(110,'Felix','Doubront','P',2),(111,'Luis','Exposito','C',2),(112,'Jose','Iglesias','SS',2),(113,'Ryan','Kalish','CF',2),(114,'Michael','McKenry','C',2),(115,'Daniel','Nava','LF',2),(116,'Yamaico','Navarro','2B',2),(117,'Stolmy','Pimentel','P',2),(118,'Josh','Reddick','CF',2),(119,'Oscar','Tejeda','SS',2),(120,'Mark','Buehrle','P',6),(121,'Jesse','Crain','P',6),(122,'John','Danks','P',6),(123,'Gavin','Floyd','P',6),(124,'Jeff','Gray','P',6),(125,'Philip','Humber','P',6),(126,'Edwin','Jackson','P',6),(127,'Will','Ohman','P',6),(128,'Tony','Pena','P',6),(129,'Chris','Sale','P',6),(130,'Sergio','Santos','P',6),(131,'Matt','Thornton','P',6),(132,'Ramon','Castro','C',6),(133,'A.J.','Pierzynski','C',6),(134,'Gordon','Beckham','2B',6),(135,'Adam','Dunn','DH',6),(136,'Paul','Konerko','1B',6),(137,'Brent','Lillibridge','2B',6),(138,'Brent','Morel','3B',6),(139,'Alexei','Ramirez','SS',6),(140,'Mark','Teahen','3B',6),(141,'Omar','Vizquel','3B',6),(142,'Juan','Pierre','LF',6),(143,'Carlos','Quentin','RF',6),(144,'Alex','Rios','CF',6),(145,'Jake','Peavy','P',6),(146,'Anthony','Carter','P',6),(147,'Kyle','Cofield','P',6),(148,'Alejandro','De Aza','P',6),(149,'Freddy','Dolsi','P',6),(150,'Eduardo','Escobar','SS',6),(151,'Tyler','Flowers','C',6),(152,'Lucas','Harrell','P',6),(153,'Gregory','Infante','P',6),(154,'Nathan','Jones','P',6),(155,'Jhonny','Nunez','P',6),(156,'Dayan','Viciedo','OF',6),(157,'A.J.','Burnett','P',3),(158,'Buddy','Carlyle','P',3),(159,'Joba','Chamberlain','P',3),(160,'Bartolo','Colon','P',3),(161,'Freddy','Garcia','P',3),(162,'Boone','Logan','P',3),(163,'Ivan','Nova','P',3),(164,'Lance','Pendleton','P',3),(165,'Mariano','Rivera','P',3),(166,'David','Robertson','P',3),(167,'CC','Sabathia','P',3),(168,'Rafael','Soriano','P',3),(169,'Russell','Martin','C',3),(170,'Gustavo','Molina','C',3),(171,'Robinson','Cano','2B',3),(172,'Eric','Chavez','3B',3),(173,'Derek','Jeter','SS',3),(174,'Eduardo','Nunez','3B',3),(175,'Alex','Rodriguez','3B',3),(176,'Mark','Teixeira','1B',3),(177,'Brett','Gardner','LF',3),(178,'Curtis','Granderson','CF',3),(179,'Andruw','Jones','CF',3),(180,'Nick','Swisher','RF',3),(181,'Jorge','Posada','DH',3),(182,'Luis','Ayala','P',3),(183,'Francisco','Cervelli','C',3),(184,'Phil','Hughes','P',3),(185,'Dellin','Betances','P',3),(186,'Andrew','Brackman','P',3),(187,'Chris','Dickerson','OF',3),(188,'Steve','Garrison','P',3),(189,'Greg','Golson','CF',3),(190,'Brandon','Laird','3B',3),(191,'Justin','Maxwell','LF',3),(192,'Melky','Mesa','RF',3),(193,'Hector','Noesi','P',3),(194,'Ramiro','Pena','3B',3),(195,'Ryan','Pope','P',3),(196,'Kevin','Russo','3B',3),(197,'Danys','Baez','P',18),(198,'Antonio','Bastardo','P',18),(199,'Joe','Blanton','P',18),(200,'Jose','Contreras','P',18),(201,'Roy','Halladay','P',18),(202,'Cole','Hamels','P',18),(203,'David','Herndon','P',18),(204,'Kyle','Kendrick','P',18),(205,'Cliff','Lee','P',18),(206,'Ryan','Madson','P',18),(207,'Roy','Oswalt','P',18),(208,'Mike','Zagurski','P',18),(209,'Carlos','Ruiz','C',18),(210,'Brian','Schneider','C',18),(211,'Ross','Gload','1B',18),(212,'Ryan','Howard','1B',18),(213,'Pete','Orr','2B',18),(214,'Placido','Polanco','3B',18),(215,'Jimmy','Rollins','SS',18),(216,'Wilson','Valdez','2B',18),(217,'Ben','Francisco','RF',18),(218,'Raul','Ibanez','LF',18),(219,'Michael','Martinez','CF',18),(220,'John','Mayberry Jr.','RF',18),(221,'Shane','Victorino','CF',18),(222,'Brian','Bocock','SS',18),(223,'Domonic','Brown','RF',18),(224,'Brad','Lidge','P',18),(225,'J.C.','Romero','P',18),(226,'Brian','Schlitter','P',18),(227,'Chase','Utley','2B',18),(228,'Justin','De Fratus','P',18),(229,'Freddy','Galvis','SS',18),(230,'Harold','Garcia','2B',18),(231,'Cesar','Hernandez','2B',18),(232,'Scott','Mathieson','P',18),(233,'Drew','Naylor','P',18),(234,'J.C.','Ramirez','P',18),(235,'Carlos','Rivero','SS',18),(236,'Vance','Worley','P',18),(237,'Fernando','Abad','P',22),(238,'Enerio','Del Rosario','P',22),(239,'Nelson','Figueroa','P',22),(240,'Jeff','Fulchino','P',22),(241,'J.A.','Happ','P',22),(242,'Brandon','Lyon','P',22),(243,'Mark','Melancon','P',22),(244,'Brett','Myers','P',22),(245,'Bud','Norris','P',22),(246,'Aneury','Rodriguez','P',22),(247,'Wandy','Rodriguez','P',22),(248,'Jose','Valdez','P',22),(249,'Humberto','Quintero','C',22),(250,'J.R.','Towles','C',22),(251,'Matt','Downs','2B',22),(252,'Bill','Hall','2B',22),(253,'Joe','Inglett','2B',22),(254,'Chris','Johnson','3B',22),(255,'Angel','Sanchez','SS',22),(256,'Brett','Wallace','1B',22),(257,'Jason','Bourgeois','CF',22),(258,'Michael','Bourn','CF',22),(259,'Carlos','Lee','LF',22),(260,'Jason','Michaels','LF',22),(261,'Hunter','Pence','RF',22),(262,'Alberto','Arias','P',22),(263,'Clint','Barmes','SS',22),(264,'Jason','Castro','C',22),(265,'Jeff','Keppinger','2B',22),(266,'Wilton','Lopez','P',22),(267,'Brian','Bogusevic','RF',22),(268,'David','Carpenter','P',22),(269,'Jorge','De Leon','P',22),(270,'Sergio','Escalona','P',22),(271,'Arcenio','Leon','P',22),(272,'Jimmy','Paredes','2B',22),(273,'Henry','Villar','P',22),(274,'Wesley','Wright','P',22),(275,'Juan','Cruz','P',4),(276,'Wade','Davis','P',4),(277,'Kyle','Farnsworth','P',4),(278,'Jeremy','Hellickson','P',4),(279,'Jake','McGee','P',4),(280,'Jeff','Niemann','P',4),(281,'Joel','Peralta','P',4),(282,'David','Price','P',4),(283,'Cesar','Ramos','P',4),(284,'Adam','Russell','P',4),(285,'James','Shields','P',4),(286,'Andy','Sonnanstine','P',4),(287,'John','Jaso','C',4),(288,'Kelly','Shoppach','C',4),(289,'Reid','Brignac','SS',4),(290,'Dan','Johnson','1B',4),(291,'Elliot','Johnson','SS',4),(292,'Casey','Kotchman','1B',4),(293,'Felipe','Lopez','3B',4),(294,'Sean','Rodriguez','3B',4),(295,'Ben','Zobrist','2B',4),(296,'Sam','Fuld','LF',4),(297,'Matt','Joyce','RF',4),(298,'B.J.','Upton','CF',4),(299,'Johnny','Damon','DH',4),(300,'J.P.','Howell','P',4),(301,'Evan','Longoria','3B',4),(302,'Chris','Archer','P',4),(303,'Nevin','Ashley','C',4),(304,'Matt','Bush','P',4),(305,'Robinson','Chirinos','C',4),(306,'Alex','Cobb','P',4),(307,'Dane','De La Rosa','P',4),(308,'Rob','Delaney','P',4),(309,'Brandon','Gomes','P',4),(310,'Brandon','Guyer','RF',4),(311,'Desmond','Jennings','LF',4),(312,'Jose','Lobaton','C',4),(313,'Albert','Suarez','P',4),(314,'Alex','Torres','P',4),(315,'Shawn','Camp','P',5),(316,'Octavio','Dotel','P',5),(317,'Kyle','Drabek','P',5),(318,'Frank','Francisco','P',5),(319,'Jason','Frasor','P',5),(320,'Casey','Janssen','P',5),(321,'Brandon','Morrow','P',5),(322,'Jon','Rauch','P',5),(323,'Jo-Jo','Reyes','P',5),(324,'Ricky','Romero','P',5),(325,'Marc','Rzepczynski','P',5),(326,'Carlos','Villanueva','P',5),(327,'J.P.','Arencibia','C',5),(328,'Jose','Molina','C',5),(329,'Edwin','Encarnacion','3B',5),(330,'Yunel','Escobar','SS',5),(331,'Aaron','Hill','2B',5),(332,'Adam','Lind','1B',5),(333,'John','McDonald','SS',5),(334,'Chris','Woodward','2B',5),(335,'Jose','Bautista','RF',5),(336,'Mike','McCoy','CF',5),(337,'Corey','Patterson','CF',5),(338,'Travis','Snider','RF',5),(339,'Juan','Rivera','DH',5),(340,'Rajai','Davis','CF',5),(341,'Jayson','Nix','3B',5),(342,'Joel','Carreno','P',5),(343,'Brett','Cecil','P',5),(344,'Alan','Farina','P',5),(345,'Adeiny','Hechavarria','SS',5),(346,'Brian','Jeroloman','C',5),(347,'Jesse','Litsch','P',5),(348,'Darin','Mastroianni','CF',5),(349,'Brad','Mills','P',5),(350,'Luis','Perez','P',5),(351,'Robert','Ray','P',5),(352,'Scott','Richmond','P',5),(353,'Josh','Roenicke','P',5),(354,'Moises','Sierra','RF',5),(355,'Fausto','Carmona','P',7),(356,'Carlos','Carrasco','P',7),(357,'Chad','Durbin','P',7),(358,'Justin','Germano','P',7),(359,'Jeanmar','Gomez','P',7),(360,'Justin','Masterson','P',7),(361,'Chris','Perez','P',7),(362,'Rafael','Perez','P',7),(363,'Vinnie','Pestano','P',7),(364,'Tony','Sipp','P',7),(365,'Joe','Smith','P',7),(366,'Josh','Tomlin','P',7),(367,'Lou','Marson','C',7),(368,'Carlos','Santana','C',7),(369,'Asdrubal','Cabrera','SS',7),(370,'Orlando','Cabrera','2B',7),(371,'Adam','Everett','SS',7),(372,'Jack','Hannahan','3B',7),(373,'Matt','LaPorta','1B',7),(374,'Michael','Brantley','CF',7),(375,'Shin-Soo','Choo','RF',7),(376,'Shelley','Duncan','LF',7),(377,'Austin','Kearns','RF',7),(378,'Grady','Sizemore','CF',7),(379,'Travis','Hafner','DH',7),(380,'Jason','Donald','SS',7),(381,'Mitch','Talbot','P',7),(382,'Travis','Buck','RF',7),(383,'Ezequiel','Carrera','LF',7),(384,'Kelvin','De La Cruz','P',7),(385,'Nick','Hagadone','P',7),(386,'Frank','Herrmann','P',7),(387,'David','Huff','P',7),(388,'Josh','Judy','P',7),(389,'Corey','Kluber','P',7),(390,'Zach','McAllister','P',7),(391,'Hector','Rondon','P',7),(392,'Jess','Todd','P',7),(393,'Luis','Valbuena','2B',7),(394,'Nick','Weglarz','RF',7),(395,'Al','Alburquerque','P',8),(396,'Joaquin','Benoit','P',8),(397,'Phil','Coke','P',8),(398,'Brad','Penny','P',8),(399,'Ryan','Perry','P',8),(400,'Rick','Porcello','P',8),(401,'Max','Scherzer','P',8),(402,'Daniel','Schlereth','P',8),(403,'Brad','Thomas','P',8),(404,'Jose','Valverde','P',8),(405,'Justin','Verlander','P',8),(406,'Brayan','Villarreal','P',8),(407,'Alex','Avila','C',8),(408,'Omir','Santos','C',8),(409,'Miguel','Cabrera','1B',8),(410,'Brandon','Inge','3B',8),(411,'Jhonny','Peralta','SS',8),(412,'Will','Rhymes','2B',8),(413,'Ramon','Santiago','SS',8),(414,'Brennan','Boesch','LF',8),(415,'Austin','Jackson','CF',8),(416,'Don','Kelly','LF',8),(417,'Magglio','Ordonez','RF',8),(418,'Ryan','Raburn','LF',8),(419,'Casper','Wells','RF',8),(420,'Carlos','Guillen','2B',8),(421,'Victor','Martinez','DH',8),(422,'Duane','Below','P',8),(423,'Cale','Iorg','SS',8),(424,'Andrew','Oliver','P',8),(425,'Lester','Oliveros','P',8),(426,'Jose','Ortega','P',8),(427,'Scott','Sizemore','2B',8),(428,'Ryan','Strieby','1B',8),(429,'Clete','Thomas','RF',8),(430,'Jacob','Turner','P',8),(431,'Robbie','Weinhardt','P',8),(432,'Danny','Worth','SS',8),(433,'Nate','Adcock','P',9),(434,'Bruce','Chen','P',9),(435,'Louis','Coleman','P',9),(436,'Tim','Collins','P',9),(437,'Aaron','Crow','P',9),(438,'Kyle','Davies','P',9),(439,'Jeff','Francis','P',9),(440,'Luke','Hochevar','P',9),(441,'Jeremy','Jeffress','P',9),(442,'Sean','O\'Sullivan','P',9),(443,'Joakim','Soria','P',9),(444,'Blake','Wood','P',9),(445,'Brayan','Pena','C',9),(446,'Matt','Treanor','C',9),(447,'Mike','Aviles','2B',9),(448,'Wilson','Betemit','3B',9),(449,'Alcides','Escobar','SS',9),(450,'Chris','Getz','2B',9),(451,'Kila','Ka\'aihue','1B',9),(452,'Melky','Cabrera','CF',9),(453,'Jarrod','Dyson','CF',9),(454,'Jeff','Francoeur','RF',9),(455,'Alex','Gordon','LF',9),(456,'Mitch','Maier','CF',9),(457,'Billy','Butler','DH',9),(458,'Jason','Kendall','C',9),(459,'Robinson','Tejeda','P',9),(460,'Noel','Arguelles','P',9),(461,'Lorenzo','Cain','CF',9),(462,'Jesse','Chavez','P',9),(463,'Greg','Holland','P',9),(464,'David','Lough','LF',9),(465,'Vin','Mazzaro','P',9),(466,'Manuel','Pina','C',9),(467,'Kevin','Pucetas','P',9),(468,'Clint','Robinson','1B',9),(469,'Derrick','Robinson','LF',9),(470,'Everett','Teaford','P',9),(471,'Kanekoa','Texeira','P',9),(472,'Trevor','Bell','P',11),(473,'Jason','Bulger','P',11),(474,'Tyler','Chatwood','P',11),(475,'Dan','Haren','P',11),(476,'Matt','Palmer','P',11),(477,'Fernando','Rodney','P',11),(478,'Francisco','Rodriguez','P',11),(479,'Ervin','Santana','P',11),(480,'Hisanori','Takahashi','P',11),(481,'Rich','Thompson','P',11),(482,'Jordan','Walden','P',11),(483,'Jered','Weaver','P',11),(484,'Hank','Conger','C',11),(485,'Jeff','Mathis','C',11),(486,'Bobby','Wilson','C',11),(487,'Erick','Aybar','SS',11),(488,'Alberto','Callaspo','3B',11),(489,'Maicer','Izturis','3B',11),(490,'Howard','Kendrick','2B',11),(491,'Mark','Trumbo','1B',11),(492,'Bobby','Abreu','RF',11),(493,'Peter','Bourjos','CF',11),(494,'Torii','Hunter','RF',11),(495,'Vernon','Wells','LF',11),(496,'Reggie','Willits','LF',11),(497,'Scott','Downs','P',11),(498,'Scott','Kazmir','P',11),(499,'Kendrys','Morales','1B',11),(500,'Joel','Pineiro','P',11),(501,'Freddy','Sandoval','3B',11),(502,'Ysmael','Carmona','P',11),(503,'Bobby','Cassevah','P',11),(504,'Kevin','Jepsen','P',11),(505,'Michael','Kohn','P',11),(506,'Jeremy','Moore','RF',11),(507,'Anthony','Ortega','P',11),(508,'Chris','Pettit','LF',11),(509,'Andrew','Romine','SS',11),(510,'Brett','Anderson','P',12),(511,'Grant','Balfour','P',12),(512,'Jerry','Blevins','P',12),(513,'Craig','Brewslow','P',12),(514,'Trevor','Cahill','P',12),(515,'Bobby','Cramer','P',12),(516,'Brian','Fuentes','P',12),(517,'Gio','Gonzalez','P',12),(518,'Brandon','McCarthy','P',12),(519,'David','Purcey','P',12),(520,'Tyson','Ross','P',12),(521,'Brad','Ziegler','P',12),(522,'Landon','Powell','C',12),(523,'Kurt','Suzuki','C',12),(524,'Daric','Barton','1B',12),(525,'Mark','Ellis','2B',12),(526,'Kevin','Kouzmanoff','3B',12),(527,'Andy','LaRoche','SS',12),(528,'Cliff','Pennington','SS',12),(529,'Coco','Crisp','CF',12),(530,'David','DeJesus','RF',12),(531,'Conor','Jackson','LF',12),(532,'Ryan','Sweeney','RF',12),(533,'Josh','Willingham','LF',12),(534,'Hideki','Matsui','DH',12),(535,'Andrew','Bailey','P',12),(536,'Dallas','Braden','P',12),(537,'Michael','Wuertz','P',12),(538,'Adrian','Cardenas','SS',12),(539,'Chris','Carter','LF',12),(540,'Fautino','De Los Santos','P',12),(541,'Joey','Devine','P',12),(542,'Josh','Donaldson','C',12),(543,'Sean','Doolittle','1B',12),(544,'Pedro','Figueroa','P',12),(545,'Trystan','Magnuson','P',12),(546,'Guillermo','Moscoso','P',12),(547,'Josh','Outman','P',12),(548,'Eric','Sogard','2B',12),(549,'Michael','Taylor','CF',12),(550,'Eric','Bedard','P',13),(551,'Doug','Fister','P',13),(552,'Felix','Hernandez','P',13),(553,'Aaron','Laffey','P',13),(554,'Brandon','League','P',13),(555,'Josh','Lueke','P',13),(556,'David','Pauley','P',13),(557,'Michael','Pineda','P',13),(558,'Chris','Ray','P',13),(559,'Jason','Vargas','P',13),(560,'Tom','Wilhelmsen','P',13),(561,'Jamey','Wright','P',13),(562,'Chris','Gimenez','C',13),(563,'Miguel','Olivo','C',13),(564,'Chone','Figgins','3B',13),(565,'Adam','Kennedy','2B',13),(566,'Luis','Rodriguez','SS',13),(567,'Brendan','Ryan','SS',13),(568,'Jack','Wilson','2B',13),(569,'Milton','Bradley','LF',13),(570,'Jack','Cust','LF',13),(571,'Ryan','Langerhans','CF',13),(572,'Carlos','Peguero','RF',13),(573,'Michael','Saunders','LF',13),(574,'Ichiro','Suzuki','RF',13),(575,'David','Aardsma','P',13),(576,'Franklin','Gutierrez','CF',13),(577,'Dustin','Ackley','2B',13),(578,'Mike','Carp','1B',13),(579,'Johermyn','Chavez','RF',13),(580,'Dan','Cortes','P',13),(581,'Luke','French','P',13),(582,'Greg','Halman','CF',13),(583,'Alex','Liddi','3B',13),(584,'Matt','Mangini','3B',13),(585,'Yoervis','Medina','P',13),(586,'Edward','Paredes','P',13),(587,'Chaz','Roe','P',13),(588,'Matt','Tuiasosopo','1B',13),(589,'Justin','Smoak','1B',13),(590,'Dave','Bush','P',14),(591,'Cody','Eppley','P',14),(592,'Matt','Harrison','P',14),(593,'Derek','Holland','P',14),(594,'Colby','Lewis','P',14),(595,'Darren','O\'Day','P',14),(596,'Alexi','Ogando','P',14),(597,'Darren','Oliver','P',14),(598,'Arthur','Rhodes','P',14),(599,'Pedro','Strop','P',14),(600,'Brett','Tomko','P',14),(601,'C.J.','Wilson','P',14),(602,'Taylor','Teagarden','C',14),(603,'Yorvit','Torrealba','C',14),(604,'Elvis','Andrus','SS',14),(605,'Adrian','Beltre','3B',14),(606,'Andres','Blanco','2B',14),(607,'Chris','Davis','1B',14),(608,'Ian','Kinsler','2B',14),(609,'Mitch','Moreland','1B',14),(610,'Mike','Napoli','1B',14),(611,'Julio','Borbon','CF',14),(612,'Nelson','Cruz','RF',14),(613,'David','Murphy','LF',14),(614,'Michael','Young','DH',14),(615,'Scott','Feldman','P',14),(616,'Neftali','Feliz','P',14),(617,'Josh','Hamilton','LF',14),(618,'Tommy','Hunter','P',14),(619,'Brandon','Webb','P',14),(620,'Ramon','Aguero','P',14),(621,'Engel','Beltre','CF',14),(622,'Fabio','Castillo','P',14),(623,'Miguel','De Los Santos','P',14),(624,'Wilmer','Font','P',14),(625,'Craig','Gentry','CF',14),(626,'Eric','Hurley','P',14),(627,'Michael','Kirkman','P',14),(628,'Mark','Lowe','P',14),(629,'Zach','Phillips','P',14),(630,'Yoshinori','Tateyama','P',14),(631,'Miguel','Batista','P',25),(632,'Mitchell','Boggs','P',25),(633,'Chris','Carpenter','P',25),(634,'Ryan','Franklin','P',25),(635,'Jaime','Garcia','P',25),(636,'Kyle','Lohse','P',25),(637,'Kyle','McClellan','P',25),(638,'Trever','Miller','P',25),(639,'Jason','Motte','P',25),(640,'Fernando','Salas','P',25),(641,'Eduardo','Sanchez','P',25),(642,'Jake','Westbrook','P',25),(643,'Gerald','Laird','C',25),(644,'Yadier','Molina','C',25),(645,'Daniel','Descalso','3B',25),(646,'David','Freese','3B',25),(647,'Tyler','Greene','SS',25),(648,'Mark','Hamilton','1B',25),(649,'Albert','Pujols','1B',25),(650,'Nick','Punto','3B',25),(651,'Ryan','Theriot','SS',25),(652,'Lance','Berkman','RF',25),(653,'Matt','Holliday','LF',25),(654,'Jon','Jay','RF',25),(655,'Colby','Rasmus','CF',25),(656,'Bryan','Augenstein','P',25),(657,'Allen','Craig','LF',25),(658,'Skip','Schumaker','2B',25),(659,'Brian','Tallet','P',25),(660,'Bryan','Anderson','C',25),(661,'Maikel','Cleto','P',25),(662,'Zack','Cox','3B',25),(663,'Blake','King','P',25),(664,'David','Kopp','P',25),(665,'Pete','Kozma','SS',25),(666,'Adam','Reifer','P',25),(667,'Francisco','Samuel','P',25),(668,'P.J.','Walters','P',25),(669,'Matt','Antonelli','2B',NULL),(670,'Brad','Ausmus','C',NULL),(671,'Willy','Aybar','DH',NULL),(672,'Rocco','Baldelli','DH',NULL),(673,'Kris','Benson','P',NULL),(674,'Jeremy','Bonderman','P',NULL),(675,'Russell','Branyan','1B',NULL),(676,'Brian','Burres','P',NULL),(677,'Ryan','Church','RF',NULL),(678,'Lance','Cormier','P',NULL),(679,'Doug','Davis','P',NULL),(680,'Chad','Durbin','P',NULL),(681,'David','Eckstein','2B',NULL),(682,'Kelvim','Escobar','P',NULL),(683,'Randy','Flores','P',NULL),(684,'Sammy','Gervacio','RP',NULL),(685,'Troy','Glaus','1B',NULL),(686,'Jose','Guillen','RF',NULL),(687,'Cristian','Guzman','2B',NULL),(688,'Mike','Hampton','P',NULL),(689,'Trevor','Hoffman','P',NULL),(690,'Joe','Inglett','2B',NULL),(691,'Hisashi','Iwakuma','P',NULL),(692,'Nick','Johnson','1B',NULL),(693,'Andy','LaRoche','3B',NULL),(694,'Jason','LaRue','C',NULL),(695,'Mike','Lincoln','P',NULL),(696,'Mike','Lowell','1B',NULL),(697,'Julio','Lugo','2B',NULL),(698,'Mike','MacDougal','P',NULL),(699,'John','Maine','P',NULL),(700,'Kevin','Mench','LF',NULL),(701,'Kevin','Millwood','P',NULL),(702,'Brian','Moehler','P',NULL),(703,'Chad','Moeller','C',NULL),(704,'Bengie','Molina','C',NULL),(705,'Dustin','Nipper','P',NULL),(706,'Chan Ho','Park','P',NULL),(707,'Andy','Pettitte','P',NULL),(708,'Scott','Podsednik','LF',NULL),(709,'Bobby','Seay','P',NULL),(710,'Ben','Sheets','P',NULL),(711,'Jorge','Sosa','P',NULL),(712,'Russ','Springer','P',NULL),(713,'Mike','Sweeney','1B',NULL),(714,'Fernando','Tatis','1B',NULL),(715,'Erick','Threets','P',NULL),(716,'Chad','Tracy','3B',NULL),(717,'Donnie','Veal','P',NULL),(718,'Jeff','Weaver','P',NULL),(719,'Chris','Woodward','3B',NULL),(723,'Barry','Bonds','LF',NULL),(724,'Randy','Choate','P',16);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `playerteams`
--

DROP TABLE IF EXISTS `playerteams`;
/*!50001 DROP VIEW IF EXISTS `playerteams`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `playerteams` (
  `team_name` varchar(30),
  `player_firstname` varchar(15),
  `player_lastname` varchar(25),
  `position` char(2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_no` char(3) NOT NULL,
  `row_no` char(2) NOT NULL,
  `seat_no` char(2) NOT NULL,
  `stad_id` int(11) NOT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `seats_fk` (`stad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,'1','7','1',24),(2,'1','7','2',24),(3,'1','7','3',24),(4,'1','7','4',24),(5,'1','7','5',24),(6,'1','7','6',24),(7,'1','7','7',24),(8,'1','7','8',24),(9,'1','7','9',24),(10,'1','7','10',24),(11,'1','7','11',24),(12,'8','1','1',24),(13,'8','1','2',24),(14,'8','1','3',24),(15,'8','1','4',24),(16,'8','1','5',24),(17,'8','1','6',24),(18,'8','1','7',24),(19,'113','15','1',24),(20,'113','15','2',24),(21,'113','15','3',24),(22,'113','15','4',24),(23,'113','15','5',24),(24,'113','15','6',24),(25,'113','15','7',24),(26,'113','15','8',24),(27,'113','15','9',24),(28,'113','15','10',24),(29,'113','15','11',24),(30,'113','15','12',24),(31,'325','10','1',24),(32,'325','10','2',24),(33,'325','10','3',24),(34,'325','10','4',24),(35,'325','10','5',24),(36,'325','10','6',24),(37,'325','10','7',24),(38,'325','10','8',24),(39,'325','10','9',24),(40,'325','10','11',24),(41,'325','10','11',24),(42,'325','10','12',24),(43,'325','10','13',24),(44,'325','10','14',24),(45,'325','10','15',24),(46,'230','12','1',24),(47,'230','12','2',24),(48,'230','12','3',24),(49,'230','12','4',24),(50,'237','9','3',24),(51,'237','9','4',24),(52,'237','9','5',24),(53,'101','4','3',24),(54,'101','4','4',24),(55,'101','4','5',24),(56,'101','4','6',24);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadia`
--

DROP TABLE IF EXISTS `stadia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stadia` (
  `stad_id` int(11) NOT NULL AUTO_INCREMENT,
  `stad_name` varchar(30) NOT NULL,
  `stad_city` varchar(20) NOT NULL,
  `stad_state` char(2) NOT NULL,
  `capacity` int(5) DEFAULT NULL,
  PRIMARY KEY (`stad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadia`
--

LOCK TABLES `stadia` WRITE;
/*!40000 ALTER TABLE `stadia` DISABLE KEYS */;
INSERT INTO `stadia` VALUES (1,'Dodger Stadium','Los Angeles','CA',57099),(2,'Coors Field','Denver','CO',51267),(3,'Turner Field','Atlanta','GA',54357),(4,'Yankee Stadium','New York City','NY',52325),(5,'Rogers Centre','Toronto','ON',52383),(6,'Rangers Ballpark in Arlington','Arlington','TX',49170),(7,'Chase Field','Phoenix','AZ',49033),(8,'Oriole Park at Camden Yards','Baltimore','MD',45971),(9,'Safeco Field','Seattle','WA',47116),(10,'Progressive Field','Cleveland','OH',45199),(11,'Angel Stadium of Anaheim','Anaheim','CA',45050),(12,'Busch Stadium','St. Louis','MO',43975),(13,'Citizens Bank Park','Philadelphia','PA',43647),(14,'PETCO Park','San Diego','CA',42445),(15,'Great American Ball Park','Cincinnati','OH',42271),(16,'AT&T Park','San Francisco','CA',41915),(17,'Miller Park','Milwaukee','WI',41900),(18,'Nationals Park','Washington','DC',41888),(19,'Citi Field','New York City','NY',41800),(20,'Comerica Park','Detroit','MI',41782),(21,'Wrigley Field','Chicago','IL',41160),(22,'Minute Maid Park','Houston','TX',40950),(23,'U.S. Cellular Field','Chicago','IL',40615),(24,'Target Field','Minneapolis','MN',39504),(25,'Kauffman Stadium','Kansas City','MO',39000),(26,'Sun Life Stadium','Miami','FL',38560),(27,'PNC Park','Pittsburgh','PA',38496),(28,'Fenway Park','Boston','MA',37402),(29,'Tropicana Field','St. Petersburg','FL',36973),(30,'Oakland-Alameda County Coliseu','Oakland','CA',35067);
/*!40000 ALTER TABLE `stadia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(30) NOT NULL,
  `div_id` int(11) DEFAULT NULL,
  `stad_id` int(11) NOT NULL,
  PRIMARY KEY (`team_id`),
  KEY `teams_fk1` (`div_id`),
  KEY `teams_fk2` (`stad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Baltimore Orioles',1,8),(2,'Boston Red Sox',1,28),(3,'New York Yankees',1,4),(4,'Tampa Bay Rays',1,29),(5,'Toronto Blue Jays',1,5),(6,'Chicago White Sox',2,23),(7,'Cleveland Indians',2,10),(8,'Detroit Tigers',2,20),(9,'Kansas City Royals',2,25),(10,'Minnesota Twins',2,24),(11,'Los Angeles Angels',3,11),(12,'Oakland Athletics',3,30),(13,'Seattle Mariners',3,9),(14,'Texas Rangers',3,6),(15,'Atlanta Braves',4,3),(16,'Florida Marlins',4,26),(17,'New York Mets',4,19),(18,'Philadelphia Phillies',4,13),(19,'Washington Nationals',4,18),(20,'Chicago Cubs',5,21),(21,'Cincinnati Reds',5,15),(22,'Houston Astros',5,22),(23,'Milwaukee Brewers',5,17),(24,'Pittsburgh Pirates',5,27),(25,'St. Louis Cardinals',5,12),(26,'Arizona Diamondbacks',6,7),(27,'Colorado Rockies',6,2),(28,'Los Angeles Dodgers',6,1),(29,'San Diego Padres',6,14),(30,'San Francisco Giants',6,16);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ticketholders`
--

DROP TABLE IF EXISTS `ticketholders`;
/*!50001 DROP VIEW IF EXISTS `ticketholders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ticketholders` (
  `ticket_id` int(11),
  `ticket_price` decimal(5,2),
  `cust_firstname` varchar(15),
  `cust_lastname` varchar(25),
  `game_datetime` datetime,
  `hometeam` varchar(30),
  `awayteam` varchar(30),
  `stad_name` varchar(30),
  `section_no` char(3),
  `row_no` char(2),
  `seat_no` char(2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ticketprices`
--

DROP TABLE IF EXISTS `ticketprices`;
/*!50001 DROP VIEW IF EXISTS `ticketprices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ticketprices` (
  `ticket_price` decimal(5,2),
  `section_no` char(3)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_price` decimal(5,2) NOT NULL,
  `game_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `tickets_fk1` (`game_id`),
  KEY `tickets_fk2` (`seat_id`),
  KEY `tickets_fk3` (`cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'80.00',55,1,2),(2,'80.00',55,2,2),(3,'80.00',55,3,2),(4,'80.00',55,4,9),(5,'80.00',55,5,9),(6,'80.00',55,6,10),(7,'80.00',55,7,NULL),(8,'80.00',55,8,NULL),(9,'80.00',55,9,NULL),(10,'80.00',55,10,12),(11,'80.00',55,11,11),(12,'80.00',56,1,2),(13,'80.00',56,2,2),(14,'80.00',56,3,2),(15,'80.00',56,4,9),(16,'80.00',56,5,9),(17,'80.00',56,6,NULL),(18,'80.00',56,7,NULL),(19,'80.00',56,8,NULL),(20,'80.00',56,9,NULL),(21,'80.00',56,10,NULL),(22,'80.00',56,11,NULL),(23,'80.00',57,1,2),(24,'80.00',57,2,2),(25,'80.00',57,3,2),(26,'80.00',57,4,9),(27,'80.00',57,5,9),(28,'80.00',57,6,NULL),(29,'80.00',57,7,13),(30,'80.00',57,8,13),(31,'80.00',57,9,NULL),(32,'80.00',57,10,NULL),(33,'80.00',57,11,NULL),(34,'285.00',57,12,5),(35,'285.00',57,13,5),(36,'285.00',57,14,14),(37,'285.00',57,15,14),(38,'285.00',57,16,14),(39,'285.00',57,17,14),(40,'285.00',57,18,NULL),(41,'285.00',56,12,5),(42,'285.00',56,13,5),(43,'285.00',56,14,15),(44,'285.00',56,15,15),(45,'285.00',56,16,15),(46,'285.00',56,17,NULL),(47,'285.00',56,18,NULL),(48,'285.00',55,12,5),(49,'285.00',55,13,5),(50,'285.00',55,14,NULL),(51,'285.00',55,15,NULL),(52,'285.00',55,16,NULL),(53,'285.00',55,17,NULL),(54,'285.00',55,18,NULL),(55,'65.00',55,19,4),(56,'65.00',55,20,NULL),(57,'65.00',55,21,NULL),(58,'65.00',55,22,NULL),(59,'65.00',55,23,NULL),(60,'65.00',55,24,NULL),(61,'65.00',55,25,NULL),(62,'65.00',55,26,NULL),(63,'65.00',55,27,NULL),(64,'65.00',55,28,NULL),(65,'65.00',55,29,7),(66,'65.00',55,30,7),(67,'65.00',56,19,18),(68,'65.00',56,20,18),(69,'65.00',56,21,18),(70,'65.00',56,22,18),(71,'65.00',56,23,18),(72,'65.00',56,24,18),(73,'65.00',56,25,18),(74,'65.00',56,26,18),(75,'65.00',56,27,18),(76,'65.00',56,28,18),(77,'65.00',56,29,8),(78,'65.00',56,30,8),(79,'65.00',57,19,NULL),(80,'65.00',57,20,NULL),(81,'65.00',57,21,NULL),(82,'65.00',57,22,NULL),(83,'65.00',57,23,NULL),(84,'65.00',57,24,NULL),(85,'65.00',57,25,NULL),(86,'65.00',57,26,NULL),(87,'65.00',57,27,NULL),(88,'65.00',57,28,NULL),(89,'65.00',57,29,NULL),(90,'65.00',57,30,NULL),(91,'19.00',57,31,17),(92,'19.00',57,32,17),(93,'19.00',57,33,17),(94,'19.00',57,34,17),(95,'19.00',57,35,17),(96,'19.00',57,36,17),(97,'19.00',57,37,17),(98,'19.00',57,38,17),(99,'19.00',57,39,17),(100,'19.00',57,40,17),(101,'19.00',57,41,17),(102,'19.00',57,42,NULL),(103,'19.00',57,43,19),(104,'19.00',57,44,19),(105,'19.00',57,45,19),(106,'19.00',56,31,NULL),(107,'19.00',56,32,NULL),(108,'19.00',56,33,NULL),(109,'19.00',56,34,NULL),(110,'19.00',56,35,NULL),(111,'19.00',56,36,NULL),(112,'19.00',56,37,NULL),(113,'19.00',56,38,NULL),(114,'19.00',56,39,NULL),(115,'19.00',56,40,NULL),(116,'19.00',56,41,1),(117,'19.00',56,42,1),(118,'19.00',56,43,1),(119,'19.00',56,44,1),(120,'19.00',56,45,1),(121,'19.00',55,31,6),(122,'19.00',55,32,NULL),(123,'19.00',55,33,NULL),(124,'19.00',55,34,NULL),(125,'19.00',55,35,NULL),(126,'19.00',55,36,NULL),(127,'19.00',55,37,NULL),(128,'19.00',55,38,NULL),(129,'19.00',55,39,NULL),(130,'19.00',55,40,NULL),(131,'19.00',55,41,NULL),(132,'19.00',55,42,NULL),(133,'19.00',55,43,NULL),(134,'19.00',55,44,NULL),(135,'19.00',55,45,NULL),(136,'27.00',55,46,NULL),(137,'27.00',55,47,NULL),(138,'27.00',55,48,NULL),(139,'27.00',55,49,NULL),(140,'24.00',55,50,NULL),(141,'24.00',55,51,NULL),(142,'24.00',55,52,NULL),(143,'39.00',55,53,NULL),(144,'39.00',55,54,NULL),(145,'39.00',55,55,NULL),(146,'39.00',55,56,NULL),(147,'27.00',56,46,NULL),(148,'27.00',56,47,NULL),(149,'27.00',56,48,NULL),(150,'27.00',56,49,NULL),(151,'24.00',56,50,NULL),(152,'24.00',56,51,NULL),(153,'24.00',56,52,NULL),(154,'39.00',56,53,NULL),(155,'39.00',56,54,NULL),(156,'39.00',56,55,NULL),(157,'39.00',56,56,NULL),(158,'27.00',57,46,NULL),(159,'27.00',57,47,NULL),(160,'27.00',57,48,3),(161,'27.00',57,49,3),(162,'24.00',57,50,NULL),(163,'24.00',57,51,NULL),(164,'24.00',57,52,NULL),(165,'39.00',57,53,NULL),(166,'39.00',57,54,NULL),(167,'39.00',57,55,16),(168,'39.00',57,56,16);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `umpcrewleagues`
--

DROP TABLE IF EXISTS `umpcrewleagues`;
/*!50001 DROP VIEW IF EXISTS `umpcrewleagues`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `umpcrewleagues` (
  `ump_firstname` varchar(15),
  `ump_lastname` varchar(25),
  `crew_id` int(11),
  `league_name` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `umpcrews`
--

DROP TABLE IF EXISTS `umpcrews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umpcrews` (
  `crew_id` int(11) NOT NULL AUTO_INCREMENT,
  `league_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`crew_id`),
  KEY `umpcrews_fk` (`league_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpcrews`
--

LOCK TABLES `umpcrews` WRITE;
/*!40000 ALTER TABLE `umpcrews` DISABLE KEYS */;
INSERT INTO `umpcrews` VALUES (1,2),(2,1),(3,1),(4,1),(5,2),(6,1),(7,1),(8,1),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,1),(17,2);
/*!40000 ALTER TABLE `umpcrews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umpires`
--

DROP TABLE IF EXISTS `umpires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umpires` (
  `ump_id` int(11) NOT NULL AUTO_INCREMENT,
  `ump_firstname` varchar(15) NOT NULL,
  `ump_lastname` varchar(25) NOT NULL,
  `crew_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ump_id`),
  KEY `umpires_fk` (`crew_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpires`
--

LOCK TABLES `umpires` WRITE;
/*!40000 ALTER TABLE `umpires` DISABLE KEYS */;
INSERT INTO `umpires` VALUES (1,'Gerry','Davis',1),(2,'Bill','Hohn',1),(3,'Greg','Gibson',1),(4,'Sam','Holbrook',1),(5,'Dana','DeMuth',2),(6,'Kerwin','Danley',2),(7,'Doug','Eddings',2),(8,'Paul','Nauert',2),(9,'Tim','McClelland',3),(10,'Ted','Barrett',3),(11,'Brian','Runge',3),(12,'Marvin','Hudson',3),(13,'John','Hirschbeck',4),(14,'Wally','Bell',4),(15,'Lazaro','Diaz',4),(16,'Barry','Scott',4),(17,'Tim','Welke',5),(18,'Jim','Reynolds',5),(19,'Mike','DiMuro',5),(20,'Andy','Fletcher',5),(21,'Dale','Scott',6),(22,'Jerry','Meals',6),(23,'CB','Bucknor',6),(24,'Dan','Iassogna',6),(25,'Joe','West',7),(26,'Angel','Hernandez',7),(27,'Paul','Schrieber',7),(28,'Chad','Fairchild',7),(29,'Gary','Darling',8),(30,'Bruce','Dreckman',8),(31,'Paul','Emmel',8),(32,'Rob','Drake',8),(33,'Tim','Tschida',9),(34,'Jeff','Nelson',9),(35,'Marty','Foster',9),(36,'Bill','Welke',9),(37,'Derryl','Cousins',10),(38,'Jim','Joyce',10),(39,'Ron','Kulpa',10),(40,'Jim','Wolf',10),(41,'Gary','Cederstrom',11),(42,'Fieldin','Culbreth',11),(43,'Adrian','Johnson',11),(44,'Jerry','Layne',12),(45,'Bob','Davidson',12),(46,'Hunter','Wendelstedt',12),(47,'Brian','Gorman',13),(48,'Larry','Vanover',13),(49,'Tony','Randazzo',13),(50,'Jeff','Kellogg',14),(51,'Eric','Cooper',14),(52,'Mark','Carlson',14),(53,'Tim','Timmons',14),(54,'Tom','Hallion',15),(55,'Bill','Miller',15),(56,'Phil','Cuzzi',15),(57,'James','Hoye',15),(58,'Mike','Winters',16),(59,'Mike','Everitt',16),(60,'Mark','Wegner',16),(61,'Chris','Guccione',16),(62,'Ed','Rapuano',17),(63,'Brian','O\'Nora',17),(64,'Alfonso','Marquez',17),(65,'Ed','Hickox',17),(66,'Brian','Knight',12),(67,'Lance','Barksdale',11),(68,'Dan','Bellino',13);
/*!40000 ALTER TABLE `umpires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `umpschedule`
--

DROP TABLE IF EXISTS `umpschedule`;
/*!50001 DROP VIEW IF EXISTS `umpschedule`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `umpschedule` (
  `game_datetime` datetime,
  `stad_name` varchar(30),
  `crew_id` int(11),
  `ump_firstname` varchar(15),
  `ump_lastname` varchar(25),
  `hometeam` varchar(30),
  `awayteam` varchar(30)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `freeagents`
--

/*!50001 DROP TABLE IF EXISTS `freeagents`*/;
/*!50001 DROP VIEW IF EXISTS `freeagents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `freeagents` AS select `players`.`player_id` AS `player_id`,`players`.`player_firstname` AS `player_firstname`,`players`.`player_lastname` AS `player_lastname`,`players`.`position` AS `position`,`players`.`team_id` AS `team_id` from `players` where isnull(`players`.`team_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gameschedule`
--

/*!50001 DROP TABLE IF EXISTS `gameschedule`*/;
/*!50001 DROP VIEW IF EXISTS `gameschedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gameschedule` AS select `games`.`game_id` AS `game_id`,`games`.`game_datetime` AS `game_datetime`,`hometeam`.`team_name` AS `hometeam`,`awayteam`.`team_name` AS `awayteam`,`stadia`.`stad_name` AS `stad_name` from (((`games` join `teams` `hometeam` on((`games`.`hometeam_id` = `hometeam`.`team_id`))) join `teams` `awayteam` on((`games`.`awayteam_id` = `awayteam`.`team_id`))) join `stadia` on((`stadia`.`stad_id` = `games`.`stad_id`))) order by `games`.`game_datetime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `playerteams`
--

/*!50001 DROP TABLE IF EXISTS `playerteams`*/;
/*!50001 DROP VIEW IF EXISTS `playerteams`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `playerteams` AS select `teams`.`team_name` AS `team_name`,`players`.`player_firstname` AS `player_firstname`,`players`.`player_lastname` AS `player_lastname`,`players`.`position` AS `position` from (`players` join `teams`) where (`players`.`team_id` = `teams`.`team_id`) order by `teams`.`team_name`,`players`.`position`,`players`.`player_lastname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ticketholders`
--

/*!50001 DROP TABLE IF EXISTS `ticketholders`*/;
/*!50001 DROP VIEW IF EXISTS `ticketholders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ticketholders` AS select `tickets`.`ticket_id` AS `ticket_id`,`tickets`.`ticket_price` AS `ticket_price`,`customers`.`cust_firstname` AS `cust_firstname`,`customers`.`cust_lastname` AS `cust_lastname`,`games`.`game_datetime` AS `game_datetime`,`hometeam`.`team_name` AS `hometeam`,`awayteam`.`team_name` AS `awayteam`,`stadia`.`stad_name` AS `stad_name`,`seats`.`section_no` AS `section_no`,`seats`.`row_no` AS `row_no`,`seats`.`seat_no` AS `seat_no` from ((((((`customers` join `tickets` on((`customers`.`cust_id` = `tickets`.`cust_id`))) join `seats` on((`tickets`.`seat_id` = `seats`.`seat_id`))) join `games` on((`tickets`.`game_id` = `games`.`game_id`))) join `teams` `hometeam` on((`games`.`hometeam_id` = `hometeam`.`team_id`))) join `teams` `awayteam` on((`games`.`awayteam_id` = `awayteam`.`team_id`))) join `stadia` on((`hometeam`.`stad_id` = `stadia`.`stad_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ticketprices`
--

/*!50001 DROP TABLE IF EXISTS `ticketprices`*/;
/*!50001 DROP VIEW IF EXISTS `ticketprices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ticketprices` AS select distinct `tickets`.`ticket_price` AS `ticket_price`,`seats`.`section_no` AS `section_no` from (`tickets` join `seats` on((`tickets`.`seat_id` = `seats`.`seat_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `umpcrewleagues`
--

/*!50001 DROP TABLE IF EXISTS `umpcrewleagues`*/;
/*!50001 DROP VIEW IF EXISTS `umpcrewleagues`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `umpcrewleagues` AS select `umpires`.`ump_firstname` AS `ump_firstname`,`umpires`.`ump_lastname` AS `ump_lastname`,`umpires`.`crew_id` AS `crew_id`,`leagues`.`league_name` AS `league_name` from ((`umpires` join `umpcrews`) join `leagues` on(((`umpires`.`crew_id` = `umpcrews`.`crew_id`) and (`umpcrews`.`league_id` = `leagues`.`league_id`)))) order by `umpires`.`crew_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `umpschedule`
--

/*!50001 DROP TABLE IF EXISTS `umpschedule`*/;
/*!50001 DROP VIEW IF EXISTS `umpschedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `umpschedule` AS select `games`.`game_datetime` AS `game_datetime`,`stadia`.`stad_name` AS `stad_name`,`games`.`crew_id` AS `crew_id`,`ucl`.`ump_firstname` AS `ump_firstname`,`ucl`.`ump_lastname` AS `ump_lastname`,`hometeam`.`team_name` AS `hometeam`,`awayteam`.`team_name` AS `awayteam` from ((((`games` join `umpcrewleagues` `ucl` on((`ucl`.`crew_id` = `games`.`crew_id`))) join `teams` `hometeam` on((`games`.`hometeam_id` = `hometeam`.`team_id`))) join `teams` `awayteam` on((`games`.`awayteam_id` = `awayteam`.`team_id`))) join `stadia` on((`stadia`.`stad_id` = `games`.`stad_id`))) order by `games`.`game_datetime`,`games`.`crew_id`,`ucl`.`ump_lastname` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-05-07 22:57:28
