-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: database_controledeestudos
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `desempenho`
--

DROP TABLE IF EXISTS `desempenho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desempenho` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_materia` int unsigned NOT NULL,
  `nota` decimal(5,2) DEFAULT NULL,
  `tipo_nota` varchar(100) DEFAULT NULL COMMENT 'A nota se refere a que atividade?',
  `avaliando_nota` varchar(1000) DEFAULT NULL COMMENT 'A nota foi abaixo, média ou acima?',
  `data_registro` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `desempenho_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desempenho`
--

LOCK TABLES `desempenho` WRITE;
/*!40000 ALTER TABLE `desempenho` DISABLE KEYS */;
INSERT INTO `desempenho` VALUES (1,3,0.66,'Teste avaliativo sobre conceitos fundamentais de Java','Baixo \ndesempenho 0.66/1.5','2026-03-23'),(2,3,1.65,'Teste avaliativo sobre Array list e repositórios em JAVA','Bom \ndesempenho 1.65/2.0','2026-04-09'),(3,2,7.00,'Teste avaliativo sobre combinatória e princípios fundamentais\nda contagem','Desempenho mediano 7.0/10.0','2026-04-10'),(4,5,NULL,'Teste avaliativo sobre algoritmos: pilhas e listas',NULL,'2026-04-10'),(5,3,1.80,'Teste avaliativo sobre Herança e Polimorfismo em JAVA','Bom \ndesempenho 1.8/2.0','2026-04-23'),(6,4,7.60,'VA1 de MCAC','Desempenho mediano 7.6/10','2026-05-16'),(7,5,NULL,'Teste avaliativo: faltei ',NULL,'2026-05-12'),(8,1,2.00,'VA1 de CN2','Muito abaixo da média - 2.0/10.0','2026-05-11');
/*!40000 ALTER TABLE `desempenho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-22 15:07:47
