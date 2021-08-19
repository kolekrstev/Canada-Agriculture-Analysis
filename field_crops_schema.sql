-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: field_crops
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `growing_region`
--

DROP TABLE IF EXISTS `growing_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `growing_region` (
  `CARUID` int NOT NULL,
  `province` enum('AB','BC','MB','NB','NL','NS','ON','PE','QC','SK','YT','NT','NU') NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `region` int NOT NULL,
  `boundary` mediumtext,
  PRIMARY KEY (`CARUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `observation`
--

DROP TABLE IF EXISTS `observation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `observation` (
  `observation_ID` int NOT NULL AUTO_INCREMENT,
  `climate_ID` char(7) DEFAULT NULL,
  `year` int unsigned DEFAULT NULL,
  `month` int unsigned DEFAULT NULL,
  `maximum_temperature` decimal(5,2) DEFAULT NULL,
  `minimum_temperature` decimal(5,2) DEFAULT NULL,
  `mean_temperature` decimal(5,2) DEFAULT NULL,
  `preciptiation` decimal(10,1) unsigned DEFAULT NULL,
  `solar_radiation` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`observation_ID`),
  KEY `observation_weather_station_fk_idx` (`climate_ID`),
  CONSTRAINT `observation_weather_station_fk` FOREIGN KEY (`climate_ID`) REFERENCES `weather_station` (`climate_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weather_station`
--

DROP TABLE IF EXISTS `weather_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_station` (
  `climate_ID` char(7) NOT NULL,
  `CARUID` int DEFAULT NULL,
  `wmo_ID` int unsigned DEFAULT NULL,
  `latitude` decimal(4,2) DEFAULT NULL,
  `longitude` decimal(5,2) DEFAULT NULL,
  `elevation` int unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`climate_ID`),
  UNIQUE KEY `climate_ID_UNIQUE` (`climate_ID`),
  UNIQUE KEY `wmo_ID_UNIQUE` (`wmo_ID`),
  KEY `weather_station_growing_region_fk_idx` (`CARUID`),
  CONSTRAINT `weather_station_growing_region_fk` FOREIGN KEY (`CARUID`) REFERENCES `growing_region` (`CARUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yield`
--

DROP TABLE IF EXISTS `yield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yield` (
  `yield_ID` int NOT NULL AUTO_INCREMENT,
  `CARUID` int DEFAULT NULL,
  `year` int unsigned DEFAULT NULL,
  `crop` varchar(45) DEFAULT NULL,
  `seeded` int DEFAULT NULL,
  `harvested` int DEFAULT NULL,
  `mass` int unsigned DEFAULT NULL,
  PRIMARY KEY (`yield_ID`),
  KEY `yield_growing_region_idx` (`CARUID`),
  CONSTRAINT `yield_growing_region_fk` FOREIGN KEY (`CARUID`) REFERENCES `growing_region` (`CARUID`)
) ENGINE=InnoDB AUTO_INCREMENT=10924 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-19 13:55:50
