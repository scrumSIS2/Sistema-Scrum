/*
Navicat MySQL Data Transfer

Source Server         : wendy
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : scrumsistema

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2016-06-06 16:24:00
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
  `Requiero` varchar(100) NOT NULL,
  `Tal_que` varchar(100) NOT NULL,
  `Condiciones_de_Satisfaccion` varchar(100) NOT NULL,
  `Importancia` int(11) NOT NULL,
  `Complejidad` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of historias
-- ----------------------------
INSERT INTO `historias` VALUES ('6', 'documentos', 'miembro', 'organizar documentos', 'los encuentre', 'busqueda rapida', '21', '12');

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
-- Table structure for `hu_aceptadas`
-- ----------------------------
DROP TABLE IF EXISTS `hu_aceptadas`;
CREATE TABLE `hu_aceptadas` (
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
-- Records of hu_aceptadas
-- ----------------------------

-- ----------------------------
-- Table structure for `hu_rechazadas`
-- ----------------------------
DROP TABLE IF EXISTS `hu_rechazadas`;
CREATE TABLE `hu_rechazadas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Yo_como` varchar(100) NOT NULL,
  `Requiero` varchar(100) NOT NULL,
  `Tal_que` varchar(100) NOT NULL,
  `Condiciones_de_Satisfaccion` varchar(100) NOT NULL,
  `Importancia` int(11) NOT NULL,
  `Complejidad` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hu_rechazadas
-- ----------------------------
INSERT INTO `hu_rechazadas` VALUES ('4', 'Horarios', 'miembro', 'ver los horarios	', 'pueda estar al tanto de las reuniones', 'muy visible', '4', '5');
INSERT INTO `hu_rechazadas` VALUES ('5', 'tareas', 'alguien', 'algo		', 'se cumpla', 'exelente', '45', '1');

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
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of info_usuarios
-- ----------------------------
INSERT INTO `info_usuarios` VALUES ('1', 'juan daniel', 'sanchez montaño', '60398621', 'juandanielsanchez20130@gmail.com', 'petrolera', 'miembro');
INSERT INTO `info_usuarios` VALUES ('2', 'favio cesar', 'torihuano', '61619012', 'favio@gmailk.com', 'ffdsacabajhghj', 'scrum_master');
INSERT INTO `info_usuarios` VALUES ('5', 'Kevin ', 'Lopez', '72238321', 'kevin.caca@hotmail.com', 'Quillacollo 2.5', 'miembro');
INSERT INTO `info_usuarios` VALUES ('9', 'frukogt', 'pendiente', '72255426', 'fryko.kaka@gmail.com', 'sacaba', 'miembro');
INSERT INTO `info_usuarios` VALUES ('10', 'Alvaro', 'moral', '78964', 'alv@hoti', 'calle no se', 'miembro');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_usuarios
-- ----------------------------
INSERT INTO `login_usuarios` VALUES ('1', 'daniel', '123', 'miembro');
INSERT INTO `login_usuarios` VALUES ('2', 'favio', '123', 'scrum_master');
INSERT INTO `login_usuarios` VALUES ('5', 'Kevin', '123', 'miembro');
INSERT INTO `login_usuarios` VALUES ('9', 'fruko', '123', 'miembro');
INSERT INTO `login_usuarios` VALUES ('10', 'alvaro', '123', 'miembro');

-- ----------------------------
-- Table structure for `tareas`
-- ----------------------------
DROP TABLE IF EXISTS `tareas`;
CREATE TABLE `tareas` (
  `id_tareas` int(10) NOT NULL AUTO_INCREMENT,
  `nombreT` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `encargado` varchar(50) DEFAULT NULL,
  `id_historias` varchar(25) NOT NULL,
  `id_encargado` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_tareas`),
  KEY `id_historias` (`id_historias`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tareas
-- ----------------------------
INSERT INTO `tareas` VALUES ('6', 'base datos', 'para guardar informacion biografica', 'done', 'favio', '6', '2');
INSERT INTO `tareas` VALUES ('7', 'cambiar info', 'cambiar datos de mi perfil', 'in process', 'daniel', '6', '1');
INSERT INTO `tareas` VALUES ('8', 'ver tarea', 'ver tareas', 'done', 'favio', '6', '2');
INSERT INTO `tareas` VALUES ('9', 'tarea 1', 'hacer interfas', 'in process', 'daniel', '6', '1');
INSERT INTO `tareas` VALUES ('10', 'tarea 2', 'hacer bds', 'done', 'Kevin', '6', '5');
INSERT INTO `tareas` VALUES ('11', 'contar empleado', 'contar la cantidad de empleados actuales', 'to do', null, '6', null);
INSERT INTO `tareas` VALUES ('12', 'registrar empleado', 'saber la puntualidad', 'to do', null, '6', null);
INSERT INTO `tareas` VALUES ('13', 'puntual', 'asignar hora de llegada', 'to do', null, '6', null);
