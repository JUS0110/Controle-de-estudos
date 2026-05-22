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
-- Table structure for table `controle`
--

DROP TABLE IF EXISTS `controle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controle` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_materia` int unsigned NOT NULL,
  `data_registro` date NOT NULL,
  `minutos_de_estudo` int unsigned NOT NULL,
  `turno_de_estudo` varchar(15) NOT NULL,
  `atividade_realizada` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `controle_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controle`
--

LOCK TABLES `controle` WRITE;
/*!40000 ALTER TABLE `controle` DISABLE KEYS */;
INSERT INTO `controle` VALUES (1,3,'2026-03-10',49,'manhã','Teoria: 2 video aulas sobre programação orientada a objetos'),(2,5,'2026-03-13',80,'manhã','Teoria: 2 video aulas sobre introdução a algoritmo e complexidade, entendendo os conteúdos do módulo e anotações'),(3,3,'2026-03-16',180,'tarde','Prática: preparação de ambiente para Java no vscode, parte de um exercício sobre escopo básico em java. Teoria: 1 video aula sobre classes'),(4,5,'2026-03-16',45,'manhã','Teoria: anotações e leitura sobre listas lineares sequenciais'),(5,2,'2026-03-18',30,'manhã','Exercícios sobre regra do produto'),(6,3,'2026-03-19',130,'manhã','Exercício 1 sobre classes e associações simples'),(7,5,'2026-03-20',108,'noite','Exercícios sobre introdução a algoritmos'),(8,3,'2026-03-21',103,'noite','Exercícios teóricos e teoria em vídeos sobre conceitos básicos de Java'),(9,3,'2026-03-22',184,'noite','Exercícios teóricos e teoria em vídeos sobre conceitos básicos de Java'),(10,1,'2026-03-25',192,'tarde-noite','25 exercícios de revisão de técnicas de derivação'),(11,5,'2026-03-27',188,'tarde','Exercícios da lista 1'),(12,2,'2026-03-30',150,'manhã','Exercícios de fatorial e binômio de Newton'),(13,2,'2026-03-31',121,'tarde','Exercícios de combinação e permutação'),(14,2,'2026-03-31',85,'noite','Exercícios de princípio da casa dos pombos'),(15,5,'2026-04-03',237,'tarde-noite','Exercícios da lista 1'),(16,5,'2026-04-04',360,'tarde-noite','Revisão e entrega da lista de exercícios 1, conteúdo teórico'),(17,4,'2026-04-05',210,'tarde','Pesquisa de artigos científicos relacionados ao tema, problema de pesquisa, escrita do protocolo e refinamento'),(18,3,'2026-04-06',199,'manhã','Aula teórica sobre ArrayList, pacotes e repositórios, exercícios práticos'),(19,5,'2026-04-06',150,'noite','Teoria de pilhas e exercícios sobre insertion sort'),(20,2,'2026-04-08',270,'manhã','Teoria e exercícios sobre princípios de contagem e recorrências'),(21,3,'2026-04-09',240,'manhã','Revisão dos conteúdos: ArrayList, array, métodos de acessibilidade, conversão de tipos'),(22,5,'2026-04-10',230,'manhã','Exercícios sobre pilhas'),(23,2,'2026-04-10',60,'manhã-tarde','Revisão de exercícios de recorrências e teorema binomial'),(24,3,'2026-04-20',150,'noite','Introdução à herança e revisão de UML'),(25,3,'2026-04-21',150,'tarde','Revisão de herança e polimorfismo em UML'),(26,3,'2026-04-21',60,'tarde','Herança e polimorfismo em JAVA'),(27,4,'2026-04-22',360,'tarde-noite','Pesquisa e preparação de apresentação'),(28,3,'2026-04-23',30,'tarde','Herança e polimorfismo em JAVA'),(29,1,'2026-05-01',300,'noite','Revisão de técnicas de derivação para diferentes funções'),(30,5,'2026-05-02',150,'tarde','AT de algoritmos e estudo para teste avaliativo'),(31,5,'2026-05-03',344,'noite','AT de algoritmos e estudo para teste avaliativo'),(32,1,'2026-05-06',251,'tarde-noite','22 exercícios da Lista de primitivas + revisão de substituição e teoria de integração por partes.'),(33,3,'2026-05-06',37,'noite','Teoria + prática: GitHub'),(34,3,'2026-05-09',300,'tarde-noite','Proj CineManager: modelo navegacional + reunião em grupo'),(35,1,'2026-05-10',120,'tarde','Exercícios: provinha antiga'),(36,1,'2026-05-10',97,'noite','Exercícios: provinha antiga'),(37,1,'2026-05-11',243,'manhã-tarde','Exercícios: provinha antiga'),(38,4,'2026-05-12',420,'tarde-noite','Atividades de metodologia: projeto de pesquisa'),(39,2,'2026-05-13',103,'manhã','Teoria - Vídeo aula de Introdução à grupos + pdf + anotações'),(40,4,'2026-05-14',97,'manhã','AT - metodologia: fichamento de artigos'),(41,4,'2026-05-15',130,'noite','AT - metodologia: escrita da justificativa e referências do projeto'),(42,3,'2026-05-16',300,'tarde-noite','Teoria sobre versionamento de código, preparação de ambiente e reunião levantamento de exceções do projeto'),(43,2,'2026-05-17',67,'noite','Teoria de homomorfismo e isomorfismo, grupos cíclicos'),(44,2,'2026-05-18',25,'tarde-noite','Exercícios sobre grupos'),(45,2,'2026-05-20',120,'manhã','10 Exercícios gerais da lista'),(46,1,'2026-05-20',80,'noite','10 exercícios de CN2'),(47,4,'2026-05-21',60,'manhã','Escrita dos fundamentos básicos'),(48,3,'2026-05-21',300,'tarde-noite','Atualização do modelo navegacional e commit no github + pdf sobre exceções');
/*!40000 ALTER TABLE `controle` ENABLE KEYS */;
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
