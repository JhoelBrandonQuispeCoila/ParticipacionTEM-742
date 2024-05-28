/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : bd_ventas

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 28/05/2024 02:45:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of clientes
-- ----------------------------
BEGIN;
INSERT INTO `clientes` VALUES (1, 'Marcelo Perez Quiroga', 'marcelo@mail.com', '77712345'), (2, 'Caleb Benitez', 'benitez@mail.org', '70012345'), (3, 'Ursula Gonzales', 'nec@lacus.ca', '79112345'), (5, 'Juan Carlos Arce', 'conejo@mail.com', '71512345'), (6, 'Halee Kirby', 'tiam@tempor.com', '72012345'), (7, 'Marco Perez', 'marco@mail.com', '71526789'), (8, 'Pedro Marquez', 'peter@mail.com', '72054578'), (9, 'Juan de Arco', 'juanita@mail.com', '77112456'), (10, 'Luis Callejas', 'lucho@mial.com', '77122456'), (16, 'Marcelo Martins', 'marcelo@mail.com', '70012345'), (17, 'Juan Capriles', 'capri@mail.com', '78945612'), (18, 'mariela ', 'mariela@mail.com', '52525255'), (19, 'Nombre', 'correo@gmail.com', '12345678'), (20, 'CLIENTE', 'CLIENTE@GM.COM', '12345678');
COMMIT;

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of productos
-- ----------------------------
BEGIN;
INSERT INTO `productos` VALUES (1, 'iPhone 4s', 'Desde EEUU Y CHINA', 1000), (2, 'iPhone 5', 'iPhone 5 from Apple', 150), (3, 'iPhone 5s', 'iPhone 5s is too expensive.', 300.8), (5, 'HTC One', 'Best of 2013', 250), (6, 'God', 'God is not on sale. Sorry.', 132), (7, 'Lenovo 2020', 'This sword is so sharp that it can slice itself. Good for slicing jellies.', 2000), (8, 'Latitude e6420', 'Built by ultimate killing machines. For ultimate killing hobies.', 50), (9, 'Toshiba xd456', 'This jacket could save you from heart attack. And maybe heartbreaks.', 50000), (10, 'Dell vostro 456', 'This helps you brighten things in the dark.', 650), (74, 'Producto', 'Producto', 1000);
COMMIT;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nombres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
BEGIN;
INSERT INTO `usuarios` VALUES (1, 'admin@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'mari', 'mami'), (2, 'marco@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'marco', 'contreras'), (3, 'luis@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'luisa', 'quispe'), (5, 'pepito@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Pepito', 'Perez'), (6, 'CORREO@GM.COM', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'NOMBRE OTRO NOMBRE', 'APELLIDO');
COMMIT;

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `producto_id` int(0) NOT NULL,
  `cliente_id` int(0) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of ventas
-- ----------------------------
BEGIN;
INSERT INTO `ventas` VALUES (1, 1, 3, '2019-02-08'), (2, 10, 5, '2018-01-08'), (4, 7, 2, '2014-07-08'), (5, 5, 8, '2019-05-07'), (17, 3, 2, '2024-05-28');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
