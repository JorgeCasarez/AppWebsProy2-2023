CREATE DATABASE  IF NOT EXISTS `quioscoapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quioscoapp`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: quioscoapp
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('2dcf3e8b-f79f-428a-8337-acfd3616713e','a95dec0fde2a69dae5501ef366105fe918bac2bba73a79a3418d17b6f891c38a','2023-03-29 22:47:35.428','20230329224735_orden',NULL,NULL,'2023-03-29 22:47:35.413',1),('556d3cf8-63f7-4b81-a940-04f6035855b0','e6e8cae43b67d8bb7d10215d78afce3586b7b6ff76020b0e9e324c4770151e9d','2023-03-29 22:40:58.615','20230329224058_categorias_y_productos',NULL,NULL,'2023-03-29 22:40:58.497',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Café','cafe'),(2,'Hamburguesas','hamburguesa'),(3,'Pizzas','pizza'),(4,'Donas','dona'),(5,'Pasteles','pastel'),(6,'Galletas','galletas');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden`
--

DROP TABLE IF EXISTS `orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `pedido` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoriaId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Producto_categoriaId_fkey` (`categoriaId`),
  CONSTRAINT `Producto_categoriaId_fkey` FOREIGN KEY (`categoriaId`) REFERENCES `categoria` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Café Caramel con Chocolate',59.9,'cafe_01',1),(2,'Paquete de 3 donas Glaseadas',39.9,'donas_02',4),(3,'Café Caramel con Chocolate',59.9,'cafe_01',1),(4,'Café Frio con Chocolate Grande',49.9,'cafe_02',1),(5,'CLatte Frio con Chocolate Grande',54.9,'cafe_03',1),(6,'CLatte Frio con Chocolate Grande',54.9,'cafe_03',1),(7,'Latte Frio con Chocolate Grande',54.9,'cafe_04',1),(8,'Malteada Fria con Chocolate Grande',54.9,'cafe_05',1),(9,'Café Mocha Caliente Grande con Chocolate',59.9,'cafe_07',1),(10,'Café Caliente Capuchino Grande',59.9,'cafe_08',1),(11,'Café Mocha Caliente Mediano',49.9,'cafe_09',1),(12,'Café Mocha Frio con Caramelo Mediano',49.9,'cafe_10',1),(13,'CCafé Mocha Frio con Chocolate Mediano',49.9,'cafe_11',1),(14,'Café Espresso',29.9,'cafe_12',1),(15,'Café Capuchino Grande con Caramelo',59.9,'cafe_13',1),(16,'Café Caramelo Grande',59.9,'cafe_14',1),(17,'Paquete de 3 donas de Chocolate',39.9,'donas_01',4),(18,'Dona de Fresa',19.9,'donas_03',4),(19,'Dona con Galleta de Chocolate',19.9,'donas_04',4),(20,'Dona glass con Chispas Sabor Fresa',19.9,'donas_05',4),(21,'Dona glass con Chocolate',19.9,'donas_06',4),(22,'Dona de Chocolate con MÁS Chocolate',19.9,'donas_07',4),(23,'Paquete de 3 donas de Chocolate',39.9,'donas_08',4),(24,'Paquete de 3 donas con Vainilla y Chocolate',39.9,'donas_09',4),(25,'Paquete de 6 Donas',69.9,'donas_10',4),(26,'Paquete de 3 Variadas',39.9,'donas_11',4),(27,'Dona Natural con Chocolate',19.9,'donas_12',4),(28,'Paquete de 3 Donas de Chocolate con Chispas',39.9,'donas_13',4),(29,'Dona Chocolate y Coco',19.9,'donas_14',4),(30,'Paquete Galletas de Chocolate',29.9,'galletas_01',6),(31,'Paquete Galletas de Chocolate y Avena',39.9,'galletas_02',6),(32,'Paquete de Muffins de Vainilla',39.9,'galletas_03',6),(33,'Paquete de 4 Galletas de Avena',24.9,'galletas_04',6),(34,'Galletas de Mantequilla Variadas',39.9,'galletas_05',6),(35,'Galletas de sabores frutales',39.9,'galletas_06',6),(36,'Hamburguesa Sencilla',59.9,'hamburguesas_01',2),(37,'Hamburguesa de Pollo',59.9,'hamburguesas_02',2),(38,'Hamburguesa de Pollo y Chili',59.9,'hamburguesas_03',2),(39,'Hamburguesa Queso y Pepinos',59.9,'hamburguesas_04',2),(40,'Hamburguesa Cuarto de Libra',59.9,'hamburguesas_05',2),(41,'Hamburguesa Doble Queso',69.9,'hamburguesas_06',2),(42,'Hot Dog Especial',49.9,'hamburguesas_07',2),(43,'Paquete 2 Hot Dogs',69.9,'hamburguesas_08',2),(44,'4 Rebanadas de Pay de Queso',69.9,'pastel_01',5),(45,'Waffle Especial',49.9,'pastel_02',5),(46,'Croissants De la casa',39.9,'pastel_03',5),(47,'Pay de Queso',19.9,'pastel_04',5),(48,'Pastel de Chocolate',29.9,'pastel_05',5),(49,'Rebanada Pastel de Chocolate',29.9,'pastel_06',5),(50,'Pizza Spicy con Doble Queso',69.9,'pizzas_01',3),(51,'Pizza Jamón y Queso',69.9,'pizzas_02',3),(52,'Pizza Doble Queso',69.9,'pizzas_03',3),(53,'Pizza Especial de la Casa',69.9,'pizzas_04',3),(54,'Pizza Chorizo',69.9,'pizzas_05',3),(55,'Pizza Hawaiana',69.9,'pizzas_06',3),(56,'Pizza Tocino',69.9,'pizzas_07',3),(57,'Pizza Vegetales y Queso',69.9,'pizzas_08',3),(58,'Pizza Pepperoni y Queso',69.9,'pizzas_09',3),(59,'Pizza Aceitunas y Queso',69.9,'pizzas_10',3),(60,'Pizza Queso, Jamón y Champiñones',69.9,'pizzas_11',3);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 22:40:18
