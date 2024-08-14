-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.34 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para trooper_stay
CREATE DATABASE IF NOT EXISTS `trooper_stay` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trooper_stay`;

-- Volcando estructura para tabla trooper_stay.hospedajes
CREATE TABLE IF NOT EXISTS `hospedajes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tipo` int DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  `localizacion` varchar(50) DEFAULT NULL,
  `precio_por_noche` float DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_usuario_inquilino` int DEFAULT NULL,
  `inicio_estadia` date DEFAULT NULL,
  `estadia` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla trooper_stay.hospedajes: ~230 rows (aproximadamente)
DELETE FROM `hospedajes`;
INSERT INTO `hospedajes` (`id`, `nombre`, `tipo`, `capacidad`, `localizacion`, `precio_por_noche`, `estado`, `id_usuario`, `id_usuario_inquilino`, `inicio_estadia`, `estadia`) VALUES
	(1, 'Hospedaje1', 1, 15, 'buenos aires', 1500, 0, 5, NULL, NULL, NULL),
	(2, 'Hospedaje2', 2, 10, 'buenos aires', 1800, 0, 10, NULL, NULL, NULL),
	(3, 'Hospedaje3', 3, 5, 'buenos aires', 1200, 0, 15, NULL, NULL, NULL),
	(4, 'Hospedaje4', 1, 12, 'buenos aires', 1600, 0, 20, NULL, NULL, NULL),
	(5, 'Hospedaje5', 2, 8, 'buenos aires', 1900, 0, 25, NULL, NULL, NULL),
	(6, 'Hospedaje6', 3, 7, 'buenos aires', 1700, 0, 30, NULL, NULL, NULL),
	(7, 'Hospedaje7', 1, 18, 'buenos aires', 1400, 0, 35, NULL, NULL, NULL),
	(8, 'Hospedaje8', 2, 11, 'buenos aires', 2000, 0, 40, NULL, NULL, NULL),
	(9, 'Hospedaje9', 3, 9, 'buenos aires', 1750, 0, 45, NULL, NULL, NULL),
	(10, 'Hospedaje10', 1, 14, 'buenos aires', 1300, 0, 50, NULL, NULL, NULL),
	(11, 'Hospedaje1', 1, 15, 'catamarca', 1500, 0, 5, NULL, NULL, NULL),
	(12, 'Hospedaje2', 2, 10, 'catamarca', 1800, 0, 10, NULL, NULL, NULL),
	(13, 'Hospedaje3', 3, 5, 'catamarca', 1200, 0, 15, NULL, NULL, NULL),
	(14, 'Hospedaje4', 1, 12, 'catamarca', 1600, 0, 20, NULL, NULL, NULL),
	(15, 'Hospedaje5', 2, 8, 'catamarca', 1900, 0, 25, NULL, NULL, NULL),
	(16, 'Hospedaje6', 3, 7, 'catamarca', 1700, 0, 30, NULL, NULL, NULL),
	(17, 'Hospedaje7', 1, 18, 'catamarca', 1400, 0, 35, NULL, NULL, NULL),
	(18, 'Hospedaje8', 2, 11, 'catamarca', 2000, 0, 40, NULL, NULL, NULL),
	(19, 'Hospedaje9', 3, 9, 'catamarca', 1750, 0, 45, NULL, NULL, NULL),
	(20, 'Hospedaje10', 1, 14, 'catamarca', 1300, 0, 50, NULL, NULL, NULL),
	(21, 'Hospedaje1', 1, 15, 'chaco', 1500, 0, 5, NULL, NULL, NULL),
	(22, 'Hospedaje2', 2, 10, 'chaco', 1800, 0, 10, NULL, NULL, NULL),
	(23, 'Hospedaje3', 3, 5, 'chaco', 1200, 0, 15, NULL, NULL, NULL),
	(24, 'Hospedaje4', 1, 12, 'chaco', 1600, 0, 20, NULL, NULL, NULL),
	(25, 'Hospedaje5', 2, 8, 'chaco', 1900, 0, 25, NULL, NULL, NULL),
	(26, 'Hospedaje6', 3, 7, 'chaco', 1700, 0, 30, NULL, NULL, NULL),
	(27, 'Hospedaje7', 1, 18, 'chaco', 1400, 0, 35, NULL, NULL, NULL),
	(28, 'Hospedaje8', 2, 11, 'chaco', 2000, 0, 40, NULL, NULL, NULL),
	(29, 'Hospedaje9', 3, 9, 'chaco', 1750, 0, 45, NULL, NULL, NULL),
	(30, 'Hospedaje10', 1, 14, 'chaco', 1300, 0, 50, NULL, NULL, NULL),
	(31, 'Hospedaje1', 1, 15, 'chubut', 1500, 0, 5, NULL, NULL, NULL),
	(32, 'Hospedaje2', 2, 10, 'chubut', 1800, 0, 10, NULL, NULL, NULL),
	(33, 'Hospedaje3', 3, 5, 'chubut', 1200, 0, 15, NULL, NULL, NULL),
	(34, 'Hospedaje4', 1, 12, 'chubut', 1600, 0, 20, NULL, NULL, NULL),
	(35, 'Hospedaje5', 2, 8, 'chubut', 1900, 0, 25, NULL, NULL, NULL),
	(36, 'Hospedaje6', 3, 7, 'chubut', 1700, 0, 30, NULL, NULL, NULL),
	(37, 'Hospedaje7', 1, 18, 'chubut', 1400, 0, 35, NULL, NULL, NULL),
	(38, 'Hospedaje8', 2, 11, 'chubut', 2000, 0, 40, NULL, NULL, NULL),
	(39, 'Hospedaje9', 3, 9, 'chubut', 1750, 0, 45, NULL, NULL, NULL),
	(40, 'Hospedaje10', 1, 14, 'chubut', 1300, 0, 50, NULL, NULL, NULL),
	(41, 'Hospedaje1', 1, 15, 'córdoba', 1500, 0, 5, NULL, NULL, NULL),
	(42, 'Hospedaje2', 2, 10, 'córdoba', 1800, 0, 10, NULL, NULL, NULL),
	(43, 'Hospedaje3', 3, 5, 'córdoba', 1200, 0, 15, NULL, NULL, NULL),
	(44, 'Hospedaje4', 1, 12, 'córdoba', 1600, 0, 20, NULL, NULL, NULL),
	(45, 'Hospedaje5', 2, 8, 'córdoba', 1900, 0, 25, NULL, NULL, NULL),
	(46, 'Hospedaje6', 3, 7, 'córdoba', 1700, 0, 30, NULL, NULL, NULL),
	(47, 'Hospedaje7', 1, 18, 'córdoba', 1400, 0, 35, NULL, NULL, NULL),
	(48, 'Hospedaje8', 2, 11, 'córdoba', 2000, 0, 40, NULL, NULL, NULL),
	(49, 'Hospedaje9', 3, 9, 'córdoba', 1750, 0, 45, NULL, NULL, NULL),
	(50, 'Hospedaje10', 1, 14, 'córdoba', 1300, 0, 50, NULL, NULL, NULL),
	(51, 'Hospedaje1', 1, 15, 'corrientes', 1500, 0, 5, NULL, NULL, NULL),
	(52, 'Hospedaje2', 2, 10, 'corrientes', 1800, 0, 10, NULL, NULL, NULL),
	(53, 'Hospedaje3', 3, 5, 'corrientes', 1200, 0, 15, NULL, NULL, NULL),
	(54, 'Hospedaje4', 1, 12, 'corrientes', 1600, 0, 20, NULL, NULL, NULL),
	(55, 'Hospedaje5', 2, 8, 'corrientes', 1900, 0, 25, NULL, NULL, NULL),
	(56, 'Hospedaje6', 3, 7, 'corrientes', 1700, 0, 30, NULL, NULL, NULL),
	(57, 'Hospedaje7', 1, 18, 'corrientes', 1400, 0, 35, NULL, NULL, NULL),
	(58, 'Hospedaje8', 2, 11, 'corrientes', 2000, 0, 40, NULL, NULL, NULL),
	(59, 'Hospedaje9', 3, 9, 'corrientes', 1750, 0, 45, NULL, NULL, NULL),
	(60, 'Hospedaje10', 1, 14, 'corrientes', 1300, 0, 50, NULL, NULL, NULL),
	(61, 'Hospedaje1', 1, 15, 'entre ríos', 1500, 0, 5, NULL, NULL, NULL),
	(62, 'Hospedaje2', 2, 10, 'entre ríos', 1800, 0, 10, NULL, NULL, NULL),
	(63, 'Hospedaje3', 3, 5, 'entre ríos', 1200, 0, 15, NULL, NULL, NULL),
	(64, 'Hospedaje4', 1, 12, 'entre ríos', 1600, 0, 20, NULL, NULL, NULL),
	(65, 'Hospedaje5', 2, 8, 'entre ríos', 1900, 0, 25, NULL, NULL, NULL),
	(66, 'Hospedaje6', 3, 7, 'entre ríos', 1700, 0, 30, NULL, NULL, NULL),
	(67, 'Hospedaje7', 1, 18, 'entre ríos', 1400, 0, 35, NULL, NULL, NULL),
	(68, 'Hospedaje8', 2, 11, 'entre ríos', 2000, 0, 40, NULL, NULL, NULL),
	(69, 'Hospedaje9', 3, 9, 'entre ríos', 1750, 0, 45, NULL, NULL, NULL),
	(70, 'Hospedaje10', 1, 14, 'entre ríos', 1300, 0, 50, NULL, NULL, NULL),
	(71, 'Hospedaje1', 1, 15, 'formosa', 1500, 0, 5, NULL, NULL, NULL),
	(72, 'Hospedaje2', 2, 10, 'formosa', 1800, 0, 10, NULL, NULL, NULL),
	(73, 'Hospedaje3', 3, 5, 'formosa', 1200, 0, 15, NULL, NULL, NULL),
	(74, 'Hospedaje4', 1, 12, 'formosa', 1600, 0, 20, NULL, NULL, NULL),
	(75, 'Hospedaje5', 2, 8, 'formosa', 1900, 0, 25, NULL, NULL, NULL),
	(76, 'Hospedaje6', 3, 7, 'formosa', 1700, 0, 30, NULL, NULL, NULL),
	(77, 'Hospedaje7', 1, 18, 'formosa', 1400, 0, 35, NULL, NULL, NULL),
	(78, 'Hospedaje8', 2, 11, 'formosa', 2000, 0, 40, NULL, NULL, NULL),
	(79, 'Hospedaje9', 3, 9, 'formosa', 1750, 0, 45, NULL, NULL, NULL),
	(80, 'Hospedaje10', 1, 14, 'formosa', 1300, 0, 50, NULL, NULL, NULL),
	(81, 'Hospedaje1', 1, 15, 'jujuy', 1500, 0, 5, NULL, NULL, NULL),
	(82, 'Hospedaje2', 2, 10, 'jujuy', 1800, 0, 10, NULL, NULL, NULL),
	(83, 'Hospedaje3', 3, 5, 'jujuy', 1200, 0, 15, NULL, NULL, NULL),
	(84, 'Hospedaje4', 1, 12, 'jujuy', 1600, 0, 20, NULL, NULL, NULL),
	(85, 'Hospedaje5', 2, 8, 'jujuy', 1900, 0, 25, NULL, NULL, NULL),
	(86, 'Hospedaje6', 3, 7, 'jujuy', 1700, 0, 30, NULL, NULL, NULL),
	(87, 'Hospedaje7', 1, 18, 'jujuy', 1400, 0, 35, NULL, NULL, NULL),
	(88, 'Hospedaje8', 2, 11, 'jujuy', 2000, 0, 40, NULL, NULL, NULL),
	(89, 'Hospedaje9', 3, 9, 'jujuy', 1750, 0, 45, NULL, NULL, NULL),
	(90, 'Hospedaje10', 1, 14, 'jujuy', 1300, 0, 50, NULL, NULL, NULL),
	(91, 'Hospedaje1', 1, 15, 'la pampa', 1500, 0, 5, NULL, NULL, NULL),
	(92, 'Hospedaje2', 2, 10, 'la pampa', 1800, 0, 10, NULL, NULL, NULL),
	(93, 'Hospedaje3', 3, 5, 'la pampa', 1200, 0, 15, NULL, NULL, NULL),
	(94, 'Hospedaje4', 1, 12, 'la pampa', 1600, 0, 20, NULL, NULL, NULL),
	(95, 'Hospedaje5', 2, 8, 'la pampa', 1900, 0, 25, NULL, NULL, NULL),
	(96, 'Hospedaje6', 3, 7, 'la pampa', 1700, 0, 30, NULL, NULL, NULL),
	(97, 'Hospedaje7', 1, 18, 'la pampa', 1400, 0, 35, NULL, NULL, NULL),
	(98, 'Hospedaje8', 2, 11, 'la pampa', 2000, 0, 40, NULL, NULL, NULL),
	(99, 'Hospedaje9', 3, 9, 'la pampa', 1750, 0, 45, NULL, NULL, NULL),
	(100, 'Hospedaje10', 1, 14, 'la pampa', 1300, 0, 50, NULL, NULL, NULL),
	(101, 'Hospedaje1', 1, 15, 'jujuy', 1500, 0, 5, NULL, NULL, NULL),
	(102, 'Hospedaje2', 2, 10, 'la rioja', 1800, 0, 10, NULL, NULL, NULL),
	(103, 'Hospedaje3', 3, 5, 'la rioja', 1200, 0, 15, NULL, NULL, NULL),
	(104, 'Hospedaje4', 1, 12, 'la rioja', 1600, 0, 20, NULL, NULL, NULL),
	(105, 'Hospedaje5', 2, 8, 'la rioja', 1900, 0, 25, NULL, NULL, NULL),
	(106, 'Hospedaje6', 3, 7, 'la rioja', 1700, 0, 30, NULL, NULL, NULL),
	(107, 'Hospedaje7', 1, 8, 'la rioja', 1400, 0, 35, NULL, NULL, NULL),
	(108, 'Hospedaje8', 2, 1, 'la rioja', 2000, 0, 40, NULL, NULL, NULL),
	(109, 'Hospedaje9', 3, 9, 'la rioja', 1750, 0, 45, NULL, NULL, NULL),
	(110, 'Hospedaje10', 1, 12, 'la rioja', 1300, 0, 50, NULL, NULL, NULL),
	(111, 'Hospedaje1', 1, 15, 'mendoza', 1500, 0, 5, NULL, NULL, NULL),
	(112, 'Hospedaje2', 2, 10, 'mendoza', 1800, 0, 10, NULL, NULL, NULL),
	(113, 'Hospedaje3', 3, 5, 'mendoza', 1200, 0, 15, NULL, NULL, NULL),
	(114, 'Hospedaje4', 1, 12, 'mendoza', 1600, 0, 20, NULL, NULL, NULL),
	(115, 'Hospedaje5', 2, 8, 'mendoza', 1900, 0, 25, NULL, NULL, NULL),
	(116, 'Hospedaje6', 3, 7, 'mendoza', 1700, 0, 30, NULL, NULL, NULL),
	(117, 'Hospedaje7', 1, 8, 'mendoza', 1400, 0, 35, NULL, NULL, NULL),
	(118, 'Hospedaje8', 2, 1, 'mendoza', 2000, 0, 40, NULL, NULL, NULL),
	(119, 'Hospedaje9', 3, 9, 'mendoza', 1750, 0, 45, NULL, NULL, NULL),
	(120, 'Hospedaje10', 1, 12, 'mendoza', 1300, 0, 50, NULL, NULL, NULL),
	(121, 'Hospedaje1', 1, 15, 'misiones', 1500, 0, 5, NULL, NULL, NULL),
	(122, 'Hospedaje2', 2, 10, 'misiones', 1800, 0, 10, NULL, NULL, NULL),
	(123, 'Hospedaje3', 3, 5, 'misiones', 1200, 0, 15, NULL, NULL, NULL),
	(124, 'Hospedaje4', 1, 12, 'misiones', 1600, 0, 20, NULL, NULL, NULL),
	(125, 'Hospedaje5', 2, 8, 'misiones', 1900, 0, 25, NULL, NULL, NULL),
	(126, 'Hospedaje6', 3, 7, 'misiones', 1700, 0, 30, NULL, NULL, NULL),
	(127, 'Hospedaje7', 1, 8, 'misiones', 1400, 0, 35, NULL, NULL, NULL),
	(128, 'Hospedaje8', 2, 1, 'misiones', 2000, 0, 40, NULL, NULL, NULL),
	(129, 'Hospedaje9', 3, 9, 'misiones', 1750, 0, 45, NULL, NULL, NULL),
	(130, 'Hospedaje10', 1, 12, 'misiones', 1300, 0, 50, NULL, NULL, NULL),
	(131, 'Hospedaje1', 1, 15, 'neuquén', 1500, 0, 5, NULL, NULL, NULL),
	(132, 'Hospedaje2', 2, 10, 'neuquén', 1800, 0, 10, NULL, NULL, NULL),
	(133, 'Hospedaje3', 3, 5, 'neuquén', 1200, 0, 15, NULL, NULL, NULL),
	(134, 'Hospedaje4', 1, 12, 'neuquén', 1600, 0, 20, NULL, NULL, NULL),
	(135, 'Hospedaje5', 2, 8, 'neuquén', 1900, 0, 25, NULL, NULL, NULL),
	(136, 'Hospedaje6', 3, 7, 'neuquén', 1700, 0, 30, NULL, NULL, NULL),
	(137, 'Hospedaje7', 1, 8, 'neuquén', 1400, 0, 35, NULL, NULL, NULL),
	(138, 'Hospedaje8', 2, 1, 'neuquén', 2000, 0, 40, NULL, NULL, NULL),
	(139, 'Hospedaje9', 3, 9, 'neuquén', 1750, 0, 45, NULL, NULL, NULL),
	(140, 'Hospedaje10', 1, 12, 'neuquén', 1300, 0, 50, NULL, NULL, NULL),
	(141, 'Hospedaje1', 1, 15, 'río negro', 1500, 0, 5, NULL, NULL, NULL),
	(142, 'Hospedaje2', 2, 10, 'río negro', 1800, 0, 10, NULL, NULL, NULL),
	(143, 'Hospedaje3', 3, 5, 'río negro', 1200, 0, 15, NULL, NULL, NULL),
	(144, 'Hospedaje4', 1, 12, 'río negro', 1600, 0, 20, NULL, NULL, NULL),
	(145, 'Hospedaje5', 2, 8, 'río negro', 1900, 0, 25, NULL, NULL, NULL),
	(146, 'Hospedaje6', 3, 7, 'río negro', 1700, 0, 30, NULL, NULL, NULL),
	(147, 'Hospedaje7', 1, 18, 'río negro', 1400, 0, 35, NULL, NULL, NULL),
	(148, 'Hospedaje8', 2, 11, 'río negro', 2000, 0, 40, NULL, NULL, NULL),
	(149, 'Hospedaje9', 3, 9, 'río negro', 1750, 0, 45, NULL, NULL, NULL),
	(150, 'Hospedaje10', 1, 14, 'río negro', 1300, 0, 50, NULL, NULL, NULL),
	(151, 'Hospedaje1', 1, 15, 'salta', 1500, 0, 5, NULL, NULL, NULL),
	(152, 'Hospedaje2', 2, 10, 'salta', 1800, 0, 10, NULL, NULL, NULL),
	(153, 'Hospedaje3', 3, 5, 'salta', 1200, 0, 15, NULL, NULL, NULL),
	(154, 'Hospedaje4', 1, 12, 'salta', 1600, 0, 20, NULL, NULL, NULL),
	(155, 'Hospedaje5', 2, 8, 'salta', 1900, 0, 25, NULL, NULL, NULL),
	(156, 'Hospedaje6', 3, 7, 'salta', 1700, 0, 30, NULL, NULL, NULL),
	(157, 'Hospedaje7', 1, 18, 'salta', 1400, 0, 35, NULL, NULL, NULL),
	(158, 'Hospedaje8', 2, 11, 'salta', 2000, 0, 40, NULL, NULL, NULL),
	(159, 'Hospedaje9', 3, 9, 'salta', 1750, 0, 45, NULL, NULL, NULL),
	(160, 'Hospedaje10', 1, 14, 'salta', 1300, 0, 50, NULL, NULL, NULL),
	(161, 'Hospedaje1', 1, 15, 'san juan', 1500, 0, 5, NULL, NULL, NULL),
	(162, 'Hospedaje2', 2, 10, 'san juan', 1800, 0, 10, NULL, NULL, NULL),
	(163, 'Hospedaje3', 3, 5, 'san juan', 1200, 0, 15, NULL, NULL, NULL),
	(164, 'Hospedaje4', 1, 12, 'san juan', 1600, 0, 20, NULL, NULL, NULL),
	(165, 'Hospedaje5', 2, 8, 'san juan', 1900, 0, 25, NULL, NULL, NULL),
	(166, 'Hospedaje6', 3, 7, 'san juan', 1700, 0, 30, NULL, NULL, NULL),
	(167, 'Hospedaje7', 1, 18, 'san juan', 1400, 0, 35, NULL, NULL, NULL),
	(168, 'Hospedaje8', 2, 11, 'san juan', 2000, 0, 40, NULL, NULL, NULL),
	(169, 'Hospedaje9', 3, 9, 'san juan', 1750, 0, 45, NULL, NULL, NULL),
	(170, 'Hospedaje10', 1, 14, 'san juan', 1300, 0, 50, NULL, NULL, NULL),
	(171, 'Hospedaje1', 1, 15, 'san luis', 1500, 0, 5, NULL, NULL, NULL),
	(172, 'Hospedaje2', 2, 10, 'san luis', 1800, 0, 10, NULL, NULL, NULL),
	(173, 'Hospedaje3', 3, 5, 'san luis', 1200, 0, 15, NULL, NULL, NULL),
	(174, 'Hospedaje4', 1, 12, 'san luis', 1600, 0, 20, NULL, NULL, NULL),
	(175, 'Hospedaje5', 2, 8, 'san luis', 1900, 0, 25, NULL, NULL, NULL),
	(176, 'Hospedaje6', 3, 7, 'san luis', 1700, 0, 30, NULL, NULL, NULL),
	(177, 'Hospedaje7', 1, 18, 'san luis', 1400, 0, 35, NULL, NULL, NULL),
	(178, 'Hospedaje8', 2, 11, 'san luis', 2000, 0, 40, NULL, NULL, NULL),
	(179, 'Hospedaje9', 3, 9, 'san luis', 1750, 0, 45, NULL, NULL, NULL),
	(180, 'Hospedaje10', 1, 14, 'san luis', 1300, 0, 50, NULL, NULL, NULL),
	(181, 'Hospedaje1', 1, 15, 'santa cruz', 1500, 0, 5, NULL, NULL, NULL),
	(182, 'Hospedaje2', 2, 10, 'santa cruz', 1800, 0, 10, NULL, NULL, NULL),
	(183, 'Hospedaje3', 3, 5, 'santa cruz', 1200, 0, 15, NULL, NULL, NULL),
	(184, 'Hospedaje4', 1, 12, 'santa cruz', 1600, 0, 20, NULL, NULL, NULL),
	(185, 'Hospedaje5', 2, 8, 'santa cruz', 1900, 0, 25, NULL, NULL, NULL),
	(186, 'Hospedaje6', 3, 7, 'santa cruz', 1700, 0, 30, NULL, NULL, NULL),
	(187, 'Hospedaje7', 1, 18, 'santa cruz', 1400, 0, 35, NULL, NULL, NULL),
	(188, 'Hospedaje8', 2, 11, 'santa cruz', 2000, 0, 40, NULL, NULL, NULL),
	(189, 'Hospedaje9', 3, 9, 'santa cruz', 1750, 0, 45, NULL, NULL, NULL),
	(190, 'Hospedaje10', 1, 14, 'santa cruz', 1300, 0, 50, NULL, NULL, NULL),
	(191, 'Hospedaje1', 1, 15, 'santa fe', 1500, 0, 5, NULL, NULL, NULL),
	(192, 'Hospedaje2', 2, 10, 'santa fe', 1800, 0, 10, NULL, NULL, NULL),
	(193, 'Hospedaje3', 3, 5, 'santa fe', 1200, 0, 15, NULL, NULL, NULL),
	(194, 'Hospedaje4', 1, 12, 'santa fe', 1600, 0, 20, NULL, NULL, NULL),
	(195, 'Hospedaje5', 2, 8, 'santa fe', 1900, 0, 25, NULL, NULL, NULL),
	(196, 'Hospedaje6', 3, 7, 'santa fe', 1700, 0, 30, NULL, NULL, NULL),
	(197, 'Hospedaje7', 1, 18, 'santa fe', 1400, 0, 35, NULL, NULL, NULL),
	(198, 'Hospedaje8', 2, 11, 'santa fe', 2000, 0, 40, NULL, NULL, NULL),
	(199, 'Hospedaje9', 3, 9, 'santa fe', 1750, 0, 45, NULL, NULL, NULL),
	(200, 'Hospedaje10', 1, 14, 'santa fe', 1300, 0, 50, NULL, NULL, NULL),
	(201, 'Hospedaje1', 1, 15, 'santiago del estero', 1500, 0, 5, NULL, NULL, NULL),
	(202, 'Hospedaje2', 2, 10, 'santiago del estero', 1800, 0, 10, NULL, NULL, NULL),
	(203, 'Hospedaje3', 3, 5, 'santiago del estero', 1200, 0, 15, NULL, NULL, NULL),
	(204, 'Hospedaje4', 1, 12, 'santiago del estero', 1600, 0, 20, NULL, NULL, NULL),
	(205, 'Hospedaje5', 2, 8, 'santiago del estero', 1900, 0, 25, NULL, NULL, NULL),
	(206, 'Hospedaje6', 3, 7, 'santiago del estero', 1700, 0, 30, NULL, NULL, NULL),
	(207, 'Hospedaje7', 1, 18, 'santiago del estero', 1400, 0, 35, NULL, NULL, NULL),
	(208, 'Hospedaje8', 2, 11, 'santiago del estero', 2000, 0, 40, NULL, NULL, NULL),
	(209, 'Hospedaje9', 3, 9, 'santiago del estero', 1750, 0, 45, NULL, NULL, NULL),
	(210, 'Hospedaje10', 1, 14, 'santiago del estero', 1300, 0, 50, NULL, NULL, NULL),
	(211, 'Hospedaje1', 1, 15, 'tierra del fuego', 1500, 0, 5, NULL, NULL, NULL),
	(212, 'Hospedaje2', 2, 10, 'tierra del fuego', 1800, 0, 10, NULL, NULL, NULL),
	(213, 'Hospedaje3', 3, 5, 'tierra del fuego', 1200, 0, 15, NULL, NULL, NULL),
	(214, 'Hospedaje4', 1, 12, 'tierra del fuego', 1600, 0, 20, NULL, NULL, NULL),
	(215, 'Hospedaje5', 2, 8, 'tierra del fuego', 1900, 0, 25, NULL, NULL, NULL),
	(216, 'Hospedaje6', 3, 7, 'tierra del fuego', 1700, 0, 30, NULL, NULL, NULL),
	(217, 'Hospedaje7', 1, 18, 'tierra del fuego', 1400, 0, 35, NULL, NULL, NULL),
	(218, 'Hospedaje8', 2, 11, 'tierra del fuego', 2000, 0, 40, NULL, NULL, NULL),
	(219, 'Hospedaje9', 3, 9, 'tierra del fuego', 1750, 0, 45, NULL, NULL, NULL),
	(220, 'Hospedaje10', 1, 14, 'tierra del fuego', 1300, 0, 50, NULL, NULL, NULL),
	(221, 'Hospedaje1', 1, 15, 'tucumán', 1500, 0, 5, NULL, NULL, NULL),
	(222, 'Hospedaje2', 2, 10, 'tucumán', 1800, 0, 10, NULL, NULL, NULL),
	(223, 'Hospedaje3', 3, 5, 'tucumán', 1200, 0, 15, NULL, NULL, NULL),
	(224, 'Hospedaje4', 1, 12, 'tucumán', 1600, 0, 20, NULL, NULL, NULL),
	(225, 'Hospedaje5', 2, 8, 'tucumán', 1900, 0, 25, NULL, NULL, NULL),
	(226, 'Hospedaje6', 3, 7, 'tucumán', 1700, 0, 30, NULL, NULL, NULL),
	(227, 'Hospedaje7', 1, 18, 'tucumán', 1400, 0, 35, NULL, NULL, NULL),
	(228, 'Hospedaje8', 2, 11, 'tucumán', 2000, 0, 40, NULL, NULL, NULL),
	(229, 'Hospedaje9', 3, 9, 'tucumán', 1750, 0, 45, NULL, NULL, NULL),
	(230, 'Hospedaje10', 1, 14, 'tucumán', 1300, 0, 50, NULL, NULL, NULL);

-- Volcando estructura para tabla trooper_stay.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_de_usuario` varchar(50) DEFAULT NULL,
  `contrasenia` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_de_usuario` (`nombre_de_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla trooper_stay.usuarios: ~50 rows (aproximadamente)
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`id`, `nombre_de_usuario`, `contrasenia`, `correo`, `edad`, `nombre`, `apellido`, `saldo`) VALUES
	(1, 'johndoe', 'test123', 'johndoe@gmail.com', 35, 'John', 'Doe', 1000000),
	(2, 'janedoe', 'test123', 'janedoe@hotmail.com', 30, 'Jane', 'Doe', 1000000),
	(3, 'bobsmith', 'test123', 'bob.smith@gmail.com', 28, 'Bob', 'Smith', 1000000),
	(4, 'lisajones', 'test123', 'lisa.jones@yahoo.com', 32, 'Lisa', 'Jones', 1000000),
	(5, 'michaelbrown', 'test123', 'michael.brown@gmail.com', 40, 'Michael', 'Brown', 1000000),
	(6, 'emilywilson', 'test123', 'emily.wilson@yahoo.com', 27, 'Emily', 'Wilson', 1000000),
	(7, 'davidlee', 'test123', 'david.lee@hotmail.com', 29, 'David', 'Lee', 1000000),
	(8, 'sarahadams', 'test123', 'sarah.adams@gmail.com', 33, 'Sarah', 'Adams', 1000000),
	(9, 'alexwilson', 'test123', 'alex.wilson@hotmail.com', 31, 'Alex', 'Wilson', 1000000),
	(10, 'lauramartin', 'test123', 'laura.martin@gmail.com', 36, 'Laura', 'Martin', 1000000),
	(11, 'williamwilkins', 'test123', 'william.wilkins@gmail.com', 45, 'William', 'Wilkins', 1000000),
	(12, 'elizabethsmith', 'test123', 'elizabeth.smith@hotmail.com', 29, 'Elizabeth', 'Smith', 1000000),
	(13, 'josephjackson', 'test123', 'joseph.jackson@yahoo.com', 37, 'Joseph', 'Jackson', 1000000),
	(14, 'olivialopez', 'test123', 'olivia.lopez@gmail.com', 28, 'Olivia', 'Lopez', 1000000),
	(15, 'matthewmiller', 'test123', 'matthew.miller@hotmail.com', 41, 'Matthew', 'Miller', 1000000),
	(16, 'charlotteharris', 'test123', 'charlotte.harris@gmail.com', 35, 'Charlotte', 'Harris', 1000000),
	(17, 'danielthompson', 'test123', 'daniel.thompson@yahoo.com', 33, 'Daniel', 'Thompson', 1000000),
	(18, 'ameliamartinez', 'test123', 'amelia.martinez@hotmail.com', 31, 'Amelia', 'Martinez', 1000000),
	(19, 'jameswilson', 'test123', 'james.wilson@gmail.com', 30, 'James', 'Wilson', 1000000),
	(20, 'gracewalker', 'test123', 'grace.walker@hotmail.com', 34, 'Grace', 'Walker', 1000000),
	(21, 'juanlopez', 'test123', 'juan.lopez@gmail.com', 28, 'Juan', 'López', 1000000),
	(22, 'mariaperez', 'test123', 'maria.perez@hotmail.com', 29, 'María', 'Pérez', 1000000),
	(23, 'carlosgarcia', 'test123', 'carlos.garcia@yahoo.com', 30, 'Carlos', 'García', 1000000),
	(24, 'sofiagonzalez', 'test123', 'sofia.gonzalez@gmail.com', 25, 'Sofía', 'González', 1000000),
	(25, 'pablorodriguez', 'test123', 'pablo.rodriguez@hotmail.com', 31, 'Pablo', 'Rodríguez', 1000000),
	(26, 'luciaramirez', 'test123', 'lucia.ramirez@yahoo.com', 33, 'Lucía', 'Ramírez', 1000000),
	(27, 'diegomartinez', 'test123', 'diego.martinez@gmail.com', 27, 'Diego', 'Martínez', 1000000),
	(28, 'lauravargas', 'test123', 'laura.vargas@hotmail.com', 26, 'Laura', 'Vargas', 1000000),
	(29, 'andresfernandez', 'test123', 'andres.fernandez@yahoo.com', 32, 'Andrés', 'Fernández', 1000000),
	(30, 'isabelgomez', 'test123', 'isabel.gomez@gmail.com', 30, 'Isabel', 'Gómez', 1000000),
	(32, 'miguelhernandez', 'test123', 'miguel.hernandez@gmail.com', 28, 'Miguel', 'Hernández', 1000000),
	(33, 'anamorales', 'test123', 'ana.morales@hotmail.com', 29, 'Ana', 'Morales', 1000000),
	(34, 'sergioortega', 'test123', 'sergio.ortega@yahoo.com', 30, 'Sergio', 'Ortega', 1000000),
	(35, 'rosaalvarez', 'test123', 'rosa.alvarez@gmail.com', 25, 'Rosa', 'Álvarez', 1000000),
	(36, 'javierrojas', 'test123', 'javier.rojas@hotmail.com', 31, 'Javier', 'Rojas', 1000000),
	(37, 'lilianacastro', 'test123', 'liliana.castro@yahoo.com', 33, 'Liliana', 'Castro', 1000000),
	(38, 'carlosherrera', 'test123', 'carlos.herrera@gmail.com', 27, 'Carlos', 'Herrera', 1000000),
	(39, 'veronicavasquez', 'test123', 'veronica.vasquez@hotmail.com', 26, 'Verónica', 'Vásquez', 1000000),
	(40, 'eduardoperez', 'test123', 'eduardo.perez@yahoo.com', 32, 'Eduardo', 'Pérez', 1020000),
	(41, 'anaclaraaguilar', 'test123', 'anaclara.aguilar@gmail.com', 30, 'Ana Clara', 'Aguilar', 1000000),
	(42, 'juanmanuelrodriguez', 'test123', 'juanmanuel.rodriguez@hotmail.com', 35, 'Juan Manuel', 'Rodríguez', 1000000),
	(43, 'marialauragomez', 'test123', 'marialaura.gomez@yahoo.com', 29, 'María Laura', 'Gómez', 1000000),
	(44, 'carlosalbertosanchez', 'test123', 'carlosalberto.sanchez@gmail.com', 40, 'Carlos Alberto', 'Sánchez', 1000000),
	(45, 'anaelenagonzalez', 'test123', 'anaelena.gonzalez@hotmail.com', 28, 'Ana Elena', 'González', 1000000),
	(46, 'rodrigomartinez', 'test123', 'rodrigo.martinez@yahoo.com', 33, 'Rodrigo', 'Martínez', 1000000),
	(47, 'marielagarcia', 'test123', 'mariela.garcia@gmail.com', 31, 'Mariela', 'García', 1000000),
	(48, 'joseantonioortiz', 'test123', 'joseantonio.ortiz@hotmail.com', 36, 'José Antonio', 'Ortiz', 1000000),
	(49, 'lucianavargas', 'test123', 'luciana.vargas@yahoo.com', 32, 'Luciana', 'Vargas', 1000000),
	(50, 'fernandocastro', 'test123', 'fernando.castro@gmail.com', 30, 'Fernando', 'Castro', 1000000),
	(53, 'test123', 'test123', 'miguel.hernandez@gmail.com', 28, 'Miguel', 'Hernández', 980000);

-- Volcando estructura para evento trooper_stay.Terminacion_alquileres
DELIMITER //
CREATE EVENT `Terminacion_alquileres` ON SCHEDULE EVERY 1 SECOND STARTS '2023-10-13 18:38:41' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	UPDATE hospedajes 
	
	SET 
		estado = 0, 
		inicio_estadia = NULL, 
		estadia = NULL, 
		id_usuario_inquilino = NULL 
	
	WHERE FROM_UNIXTIME(UNIX_TIMESTAMP(NOW())) >= estadia;
END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
