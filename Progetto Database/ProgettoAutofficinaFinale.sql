-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: progetto_autofficina1
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `(fattura) di`
--

DROP TABLE IF EXISTS `(fattura) di`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `(fattura) di` (
  `CODMANUTENZIONE` varchar(20) NOT NULL,
  `NUMFATTURA` int NOT NULL,
  PRIMARY KEY (`CODMANUTENZIONE`,`NUMFATTURA`),
  KEY `NUMFATTURA` (`NUMFATTURA`),
  CONSTRAINT `(fattura) di_ibfk_1` FOREIGN KEY (`CODMANUTENZIONE`) REFERENCES `manutenzione` (`CODMANUTENZIONE`),
  CONSTRAINT `(fattura) di_ibfk_2` FOREIGN KEY (`NUMFATTURA`) REFERENCES `fattura` (`NUMFATTURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `(fattura) di`
--

LOCK TABLES `(fattura) di` WRITE;
/*!40000 ALTER TABLE `(fattura) di` DISABLE KEYS */;
INSERT INTO `(fattura) di` VALUES ('MANUTENZIONE1',1),('MANUTENZIONE2',2),('MANUTENZIONE3',3),('MANUTENZIONE4',4),('MANUTENZIONE5',5),('MANUTENZIONE6',6);
/*!40000 ALTER TABLE `(fattura) di` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicazione`
--

DROP TABLE IF EXISTS `applicazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicazione` (
  `CODRICAMBIO` varchar(20) NOT NULL,
  `MODELLO` varchar(40) NOT NULL,
  `COSTRUTTORE` varchar(40) NOT NULL,
  PRIMARY KEY (`CODRICAMBIO`,`MODELLO`,`COSTRUTTORE`),
  KEY `MODELLO` (`MODELLO`,`COSTRUTTORE`),
  CONSTRAINT `applicazione_ibfk_1` FOREIGN KEY (`CODRICAMBIO`) REFERENCES `pezzidiricambio` (`CODRICAMBIO`),
  CONSTRAINT `applicazione_ibfk_2` FOREIGN KEY (`MODELLO`, `COSTRUTTORE`) REFERENCES `tipidiveicolo` (`MODELLO`, `COSTRUTTORE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicazione`
--

LOCK TABLES `applicazione` WRITE;
/*!40000 ALTER TABLE `applicazione` DISABLE KEYS */;
INSERT INTO `applicazione` VALUES ('19Z','125','SH'),('19D','FUSION','FORD'),('19B','NINJA','KAWASAKI'),('19A','PANDA','FIAT'),('19L','PANDA','FIAT'),('19C','Q5','AUDI'),('19E','Q5','AUDI'),('19F','Q5','AUDI'),('19H','Q5','AUDI');
/*!40000 ALTER TABLE `applicazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CF` varchar(40) NOT NULL,
  `COGNOME` varchar(30) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `INDIRIZZO` varchar(40) NOT NULL,
  PRIMARY KEY (`CF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('FFFA','RIETI','SEBASTIANO','VIA MILANO N 31 CATANIA (CT)'),('FFFC','ANASTASIO','FRANCESCA','VIALE LUNGHI N 87 CATANIA (CT)'),('MNNA','ATTARDO','CRISTAL','VIALE PAPA PAOLO VI N 34 FLORIDIA(SR)'),('MNNB','RANAURO','FRANCESCA','VIALE TISIA N 23 SIRACUSA(SR)'),('MNNC','MARRI','MASSIMILIANO','VIALE OSTIA N 21 SIRACUSA(SR)'),('MNND','SBERNA','DENNYS','VIALE RAGUSA IBLA N 45 SIRACUSA(SR)'),('MNNN','ATTARDO','NICHOLAS','VIA BERGAMO N 150 CATANIA(CT)');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `effettuata`
--

DROP TABLE IF EXISTS `effettuata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `effettuata` (
  `CODMANUTENZIONE` varchar(20) NOT NULL,
  `TARGA` varchar(20) NOT NULL,
  PRIMARY KEY (`CODMANUTENZIONE`,`TARGA`),
  KEY `TARGA` (`TARGA`),
  CONSTRAINT `effettuata_ibfk_1` FOREIGN KEY (`TARGA`) REFERENCES `veicolo` (`TARGA`),
  CONSTRAINT `effettuata_ibfk_2` FOREIGN KEY (`CODMANUTENZIONE`) REFERENCES `manutenzione` (`CODMANUTENZIONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `effettuata`
--

LOCK TABLES `effettuata` WRITE;
/*!40000 ALTER TABLE `effettuata` DISABLE KEYS */;
INSERT INTO `effettuata` VALUES ('MANUTENZIONE1','FFF12'),('MANUTENZIONE2','FFF13'),('MANUTENZIONE6','FFF14'),('MANUTENZIONE3','FFF15'),('MANUTENZIONE4','FFF15'),('MANUTENZIONE5','FFF15');
/*!40000 ALTER TABLE `effettuata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fattura`
--

DROP TABLE IF EXISTS `fattura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fattura` (
  `NUMFATTURA` int NOT NULL AUTO_INCREMENT,
  `DATA` date NOT NULL,
  `IMPORTO` int NOT NULL,
  `CF` varchar(40) NOT NULL,
  PRIMARY KEY (`NUMFATTURA`),
  KEY `FK_FATTURA_CLIENTE_idx` (`CF`),
  CONSTRAINT `FK_FATTURA_CLIENTE` FOREIGN KEY (`CF`) REFERENCES `cliente` (`CF`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fattura`
--

LOCK TABLES `fattura` WRITE;
/*!40000 ALTER TABLE `fattura` DISABLE KEYS */;
INSERT INTO `fattura` VALUES (1,'2021-03-19',400,'MNNN'),(2,'2021-02-18',479,'FFFC'),(3,'2020-02-19',289,'MNNB'),(4,'2019-02-18',193,'MNNB'),(5,'2021-03-18',394,'MNNB'),(6,'2021-04-01',319,'MNNB');
/*!40000 ALTER TABLE `fattura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impiego`
--

DROP TABLE IF EXISTS `impiego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impiego` (
  `CODMANUTENZIONE` varchar(20) NOT NULL,
  `CODRICAMBIO` varchar(20) NOT NULL,
  PRIMARY KEY (`CODMANUTENZIONE`,`CODRICAMBIO`),
  KEY `CODRICAMBIO` (`CODRICAMBIO`),
  CONSTRAINT `impiego_ibfk_1` FOREIGN KEY (`CODMANUTENZIONE`) REFERENCES `manutenzione` (`CODMANUTENZIONE`),
  CONSTRAINT `impiego_ibfk_2` FOREIGN KEY (`CODRICAMBIO`) REFERENCES `pezzidiricambio` (`CODRICAMBIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impiego`
--

LOCK TABLES `impiego` WRITE;
/*!40000 ALTER TABLE `impiego` DISABLE KEYS */;
INSERT INTO `impiego` VALUES ('MANUTENZIONE1','19A'),('MANUTENZIONE2','19B'),('MANUTENZIONE2','19D'),('MANUTENZIONE3','19E'),('MANUTENZIONE4','19H'),('MANUTENZIONE5','19H'),('MANUTENZIONE1','19L'),('MANUTENZIONE6','19Z');
/*!40000 ALTER TABLE `impiego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutenzione`
--

DROP TABLE IF EXISTS `manutenzione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutenzione` (
  `CODMANUTENZIONE` varchar(20) NOT NULL,
  `COSTOMAN` int NOT NULL,
  PRIMARY KEY (`CODMANUTENZIONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutenzione`
--

LOCK TABLES `manutenzione` WRITE;
/*!40000 ALTER TABLE `manutenzione` DISABLE KEYS */;
INSERT INTO `manutenzione` VALUES ('MANUTENZIONE1',100),('MANUTENZIONE10',95),('MANUTENZIONE2',150),('MANUTENZIONE3',140),('MANUTENZIONE4',14),('MANUTENZIONE5',164),('MANUTENZIONE6',169),('MANUTENZIONE7',19),('MANUTENZIONE8',19),('MANUTENZIONE9',89);
/*!40000 ALTER TABLE `manutenzione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pezzidiricambio`
--

DROP TABLE IF EXISTS `pezzidiricambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pezzidiricambio` (
  `CODRICAMBIO` varchar(20) NOT NULL,
  `COSTO` int NOT NULL,
  `NOME` varchar(50) NOT NULL,
  PRIMARY KEY (`CODRICAMBIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pezzidiricambio`
--

LOCK TABLES `pezzidiricambio` WRITE;
/*!40000 ALTER TABLE `pezzidiricambio` DISABLE KEYS */;
INSERT INTO `pezzidiricambio` VALUES ('19A',200,'MARMITTA FORD'),('19B',180,'FRENI KAWASAKI'),('19C',200,'MARMITTA AUDI'),('19D',149,'MOTORE KAWASAKI'),('19E',149,'PNEUMATICI MICHIELIN AUDI'),('19F',179,'COPERTONI AUDI'),('19H',230,'MOTORE AUDI'),('19L',100,'SPORTELLO FORD'),('19Z',150,'MOTORE SH');
/*!40000 ALTER TABLE `pezzidiricambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richiesta`
--

DROP TABLE IF EXISTS `richiesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `richiesta` (
  `CODMANUTENZIONE` varchar(20) NOT NULL,
  `CF` varchar(40) NOT NULL,
  PRIMARY KEY (`CODMANUTENZIONE`,`CF`),
  KEY `CF` (`CF`),
  CONSTRAINT `richiesta_ibfk_1` FOREIGN KEY (`CF`) REFERENCES `cliente` (`CF`),
  CONSTRAINT `richiesta_ibfk_2` FOREIGN KEY (`CODMANUTENZIONE`) REFERENCES `manutenzione` (`CODMANUTENZIONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richiesta`
--

LOCK TABLES `richiesta` WRITE;
/*!40000 ALTER TABLE `richiesta` DISABLE KEYS */;
INSERT INTO `richiesta` VALUES ('MANUTENZIONE1','FFFA'),('MANUTENZIONE2','FFFC'),('MANUTENZIONE3','MNNB'),('MANUTENZIONE4','MNNB'),('MANUTENZIONE5','MNNB'),('MANUTENZIONE6','MNNC'),('MANUTENZIONE7','MNND'),('MANUTENZIONE8','MNNN');
/*!40000 ALTER TABLE `richiesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono` (
  `NUMTELEFONO` varchar(10) NOT NULL,
  `CF` varchar(40) NOT NULL,
  PRIMARY KEY (`NUMTELEFONO`,`CF`),
  KEY `CF` (`CF`),
  CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`CF`) REFERENCES `cliente` (`CF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` VALUES ('3333333333','FFFA'),('3669920584','FFFC'),('3879421659','MNNA'),('4983953285','MNNB'),('4983953485','MNNC'),('3280155209','MNNN'),('3928758394','MNNN');
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipidiveicolo`
--

DROP TABLE IF EXISTS `tipidiveicolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipidiveicolo` (
  `MODELLO` varchar(40) NOT NULL,
  `COSTRUTTORE` varchar(40) NOT NULL,
  `CILINDRATA` int NOT NULL,
  `INFOTEC` varchar(100) NOT NULL,
  PRIMARY KEY (`MODELLO`,`COSTRUTTORE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipidiveicolo`
--

LOCK TABLES `tipidiveicolo` WRITE;
/*!40000 ALTER TABLE `tipidiveicolo` DISABLE KEYS */;
INSERT INTO `tipidiveicolo` VALUES ('125','SH',125,'MOTORE MOLTO UTILIZZATO'),('FUSION','FORD',1500,'AUTO UTILITARIA'),('NINJA','KAWASAKI',3600,'ALTEZZA 1.50 PESO 98KG'),('PANDA','FIAT',1000,'VELOCITA MASSIMA 155 KM/H'),('Q5','AUDI',3100,'466 CM LUNGHEZZA 190 CM LARGHEZZA'),('SH','HONDA',125,'PESO 133KG'),('X6','BMW',3000,'VELOCITA MASSIMA 248KM/H');
/*!40000 ALTER TABLE `tipidiveicolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veicolo`
--

DROP TABLE IF EXISTS `veicolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veicolo` (
  `TARGA` varchar(20) NOT NULL,
  `TIPOLOGIA` varchar(4) NOT NULL,
  `ANNOIMMATRICOLAZIONE` int NOT NULL,
  `CF` varchar(40) NOT NULL,
  `MODELLO` varchar(40) NOT NULL,
  `COSTRUTTORE` varchar(40) NOT NULL,
  PRIMARY KEY (`TARGA`),
  KEY `CF` (`CF`),
  KEY `MODELLO` (`MODELLO`,`COSTRUTTORE`),
  CONSTRAINT `veicolo_ibfk_1` FOREIGN KEY (`CF`) REFERENCES `cliente` (`CF`),
  CONSTRAINT `veicolo_ibfk_2` FOREIGN KEY (`MODELLO`, `COSTRUTTORE`) REFERENCES `tipidiveicolo` (`MODELLO`, `COSTRUTTORE`),
  CONSTRAINT `veicolo_chk_1` CHECK (((`TIPOLOGIA` = _utf8mb4'AUTO') or (`TIPOLOGIA` = _utf8mb4'MOTO')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veicolo`
--

LOCK TABLES `veicolo` WRITE;
/*!40000 ALTER TABLE `veicolo` DISABLE KEYS */;
INSERT INTO `veicolo` VALUES ('FFF11','AUTO',1998,'MNNN','PANDA','FIAT'),('FFF12','AUTO',2001,'FFFA','FUSION','FORD'),('FFF13','MOTO',2002,'FFFC','NINJA','KAWASAKI'),('FFF14','MOTO',2010,'MNNC','SH','HONDA'),('FFF15','AUTO',2012,'MNNB','Q5','AUDI'),('FFF16','AUTO',2012,'MNNC','X6','BMW');
/*!40000 ALTER TABLE `veicolo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 22:56:03
