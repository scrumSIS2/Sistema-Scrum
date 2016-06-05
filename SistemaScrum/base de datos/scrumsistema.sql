/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : scrumsistema

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

<<<<<<< HEAD
Date: 2016-06-05 20:17:37
=======
Date: 2016-06-04 19:57:52
>>>>>>> origin/master
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
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
=======
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
>>>>>>> origin/master

-- ----------------------------
-- Records of historias
-- ----------------------------
<<<<<<< HEAD
=======
INSERT INTO `historias` VALUES ('1', 'registro de datos', 'Favio', 'necesito decirle al kevin kaka', 'me pueda escuchar', 'experta', '4', '5');
INSERT INTO `historias` VALUES ('2', 'jaun', 'marcelo', 'modificar		', 'se pueda ver', 'q se muestre', '5', '2');
INSERT INTO `historias` VALUES ('3', 'fulll', 'miembro', 'una baseadministrar	', 'lo vea', 'rapido', '34', '14');
INSERT INTO `historias` VALUES ('4', 'interfas', 'alvaro', 'crear interfas', 'pueda ver', 'rapido', '12', '12');
INSERT INTO `historias` VALUES ('5', 'conexion', 'daniel', 'quiero ser kk		', 'no salga	', 'rapido', '5', '4');
INSERT INTO `historias` VALUES ('6', 'Daykor', 'soy kk', 'rapides', 'se vea', 'optimo', '3', '2');
INSERT INTO `historias` VALUES ('7', 'observar', 'miembro', 'observar info', 'los usuarios sepan', 'rapido', '4', '5');
>>>>>>> origin/master

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
  `Yo_como` varchar(30) NOT NULL,
  `Requiero` varchar(30) NOT NULL,
  `Tal_que` varchar(30) NOT NULL,
  `Condiciones_de_Satisfaccion` varchar(50) NOT NULL,
  `Importancia` int(11) NOT NULL,
  `Complejidad` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hu_rechazadas
-- ----------------------------
INSERT INTO `hu_rechazadas` VALUES ('1', 'Interfaz', 'miembro', 'ver mis trabajos', 'pueda organizarlos', 'debe poder ordenarse', '23', '12');

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
  `rol` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
=======
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
>>>>>>> origin/master

-- ----------------------------
-- Records of info_usuarios
-- ----------------------------
<<<<<<< HEAD
INSERT INTO `info_usuarios` VALUES ('1', 'Juan Daniel', 'Sanchez Montaño', '60398621', 'juandanielsanchez20130@gmail.com', 'Av.Petrolera km 2.5', 'miembro');
INSERT INTO `info_usuarios` VALUES ('2', 'Favio', 'Torihuano', '61619012', 'favio@hotmail.com', 'Quillacollo', 'scrummaster');
INSERT INTO `info_usuarios` VALUES ('8', 'fruko', 'villarroel', '288339493', 'fruko@gmail.com', 'callee 566', 'miembro');
=======
INSERT INTO `info_usuarios` VALUES ('1', 'Juan Daniel', 'Sanchez Montaño', '60398621', 'juandanielsanchez20130@gmail.com', 'Av.Petrolera km 2.5');
INSERT INTO `info_usuarios` VALUES ('2', 'Favio', 'Torihuano', '61619012', 'favio@hotmail.com', 'Quillacollo');
INSERT INTO `info_usuarios` VALUES ('3', 'roberto', 'ahenke', '456789456', 'dsfsk@gmail.com', '777nnskkkdl');
INSERT INTO `info_usuarios` VALUES ('4', 'david', 'valencia', '45164547', 'tresd@gmail.com', '11dfgd2f5');
>>>>>>> origin/master

-- ----------------------------
-- Table structure for `login_usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `login_usuarios`;
CREATE TABLE `login_usuarios` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `tipo_usuario` varchar(20) NOT NULL,
<<<<<<< HEAD
  PRIMARY KEY (`id_usuario`,`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
=======
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
>>>>>>> origin/master

-- ----------------------------
-- Records of login_usuarios
-- ----------------------------
INSERT INTO `login_usuarios` VALUES ('1', 'daniel', '123', 'miembro');
INSERT INTO `login_usuarios` VALUES ('2', 'favio', '123', 'scrum_master');
<<<<<<< HEAD
INSERT INTO `login_usuarios` VALUES ('8', 'fruko', '123', 'miembro');
=======
INSERT INTO `login_usuarios` VALUES ('3', 'roberto', '123', 'miembro');
INSERT INTO `login_usuarios` VALUES ('4', 'david', '123', 'miembro');
>>>>>>> origin/master

-- ----------------------------
-- Table structure for `tareas`
-- ----------------------------
DROP TABLE IF EXISTS `tareas`;
CREATE TABLE `tareas` (
  `id_tareas` int(10) NOT NULL AUTO_INCREMENT,
  `nombreT` varchar(25) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `encargado` varchar(50) DEFAULT NULL,
  `id_historias` varchar(25) NOT NULL,
  PRIMARY KEY (`id_tareas`),
  KEY `id_historias` (`id_historias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tareas
-- ----------------------------
INSERT INTO `tareas` VALUES ('2', 'holas', 'holas tareas', 'to do', null, '1');
