/*
Navicat MySQL Data Transfer

Source Server         : PRUEBAS
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : scrumsistema

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2016-06-04 19:16:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `historias`
-- ----------------------------
DROP TABLE IF EXISTS `historias`;
CREATE TABLE `historias` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Yo_como` varchar(30) NOT NULL,
  `Requiero` varchar(30) NOT NULL,
  `Tal_que` varchar(30) NOT NULL,
  `Condiciones_de_Satisfaccion` varchar(50) NOT NULL,
  `Importancia` int(11) NOT NULL,
  `Complejidad` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of historias
-- ----------------------------
INSERT INTO `historias` VALUES ('1', 'registro de datos', 'Favio', 'necesito decirle al kevin kaka', 'me pueda escuchar', 'experta', '4', '5');
INSERT INTO `historias` VALUES ('2', 'jaun', 'marcelo', 'modificar		', 'se pueda ver', 'q se muestre', '5', '2');
INSERT INTO `historias` VALUES ('3', 'fulll', 'miembro', 'una baseadministrar	', 'lo vea', 'rapido', '34', '14');
INSERT INTO `historias` VALUES ('4', 'interfas', 'alvaro', 'crear interfas', 'pueda ver', 'rapido', '12', '12');
INSERT INTO `historias` VALUES ('5', 'conexion', 'daniel', 'quiero ser kk		', 'no salga	', 'rapido', '5', '4');
INSERT INTO `historias` VALUES ('6', 'Daykor', 'soy kk', 'rapides', 'se vea', 'optimo', '3', '2');

-- ----------------------------
-- Table structure for `horarios`
-- ----------------------------
DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios` (
  `id_horarios` varchar(25) NOT NULL,
  `dia` varchar(25) NOT NULL,
  `dayli` varchar(25) NOT NULL,
  `sprint` varchar(25) NOT NULL,
  PRIMARY KEY (`id_horarios`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of horarios
-- ----------------------------

-- ----------------------------
-- Table structure for `info_usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `info_usuarios`;
CREATE TABLE `info_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of info_usuarios
-- ----------------------------
INSERT INTO `info_usuarios` VALUES ('1', 'Juan Daniel', 'Sanchez Montaño', '60398621', 'juandanielsanchez20130@gmail.com', 'Av.Petrolera km 2.5');
INSERT INTO `info_usuarios` VALUES ('2', 'Favio', 'Torihuano', '61619012', 'favio@hotmail.com', 'Quillacollo');
INSERT INTO `info_usuarios` VALUES ('3', 'Kevin', 'Lopez', '72727273', 'kevin_kaka@gmail.com', 'Quillacollo');
INSERT INTO `info_usuarios` VALUES ('4', 'Juan KK', 'Sanchez Montaño', '60398621', 'juandanielsanchez20130@gmail.com', 'Av.Petrolera km 2.5');
INSERT INTO `info_usuarios` VALUES ('5', 'Favio 123', 'Torihuano', '61619012', 'favio@hotmail.com', 'Quillacollo');
INSERT INTO `info_usuarios` VALUES ('6', 'Favioyugyugyugtf', 'Torihuano', '61619012', 'favio@hotmail.com', 'Quillacollo');

-- ----------------------------
-- Table structure for `login_usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `login_usuarios`;
CREATE TABLE `login_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) NOT NULL,
  `pass` int(11) NOT NULL,
  `tipo_usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_usuarios
-- ----------------------------
INSERT INTO `login_usuarios` VALUES ('1', 'daniel', '123', 'miembro');
INSERT INTO `login_usuarios` VALUES ('2', 'favio', '123', 'scrum_master');

-- ----------------------------
-- Table structure for `tareas`
-- ----------------------------
DROP TABLE IF EXISTS `tareas`;
CREATE TABLE `tareas` (
  `id_tareas` varchar(25) NOT NULL,
  `num_tarea` varchar(25) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `encargado` varchar(50) NOT NULL,
  `id_historias` varchar(25) NOT NULL,
  PRIMARY KEY (`id_tareas`),
  KEY `id_historias` (`id_historias`),
  CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`id_historias`) REFERENCES `historias_usuario` (`id_historia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tareas
-- ----------------------------
INSERT INTO `tareas` VALUES ('t001', 'tarea1', 'to do', 'favio', 'h001');
