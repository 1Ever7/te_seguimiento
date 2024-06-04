/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : 127.0.0.1:3306
 Source Schema         : bd_seguimiento

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 04/06/2024 02:27:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for estudiantes
-- ----------------------------
DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE `estudiantes`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estudiantes
-- ----------------------------
INSERT INTO `estudiantes` VALUES (1, 'Moises', 'mayta', 'diman@gmail.com', '2000-04-25');
INSERT INTO `estudiantes` VALUES (2, 'Diman Rodrigo', 'Mendoza', 'rodrigo@gmail.com', '2024-06-13');
INSERT INTO `estudiantes` VALUES (3, 'Andres', 'Mamani', 'andres@gmail.com', '2000-06-15');
INSERT INTO `estudiantes` VALUES (4, 'Marcos', 'Chavez', 'marcos@gmail.com', '2001-02-14');
INSERT INTO `estudiantes` VALUES (5, 'Micaela', 'Sosa', 'mica@gmail.com', '1998-06-17');
INSERT INTO `estudiantes` VALUES (6, 'Fernando', 'Mendez', 'fernandomendez101@gmail.com', '2005-05-12');

SET FOREIGN_KEY_CHECKS = 1;
