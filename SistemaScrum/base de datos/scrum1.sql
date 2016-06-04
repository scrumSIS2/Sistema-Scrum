CREATE TABLE `historias_usuario` (
`id_historia` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`yo_como` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`requiero` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`complejidad` int(25) NOT NULL,
`importancia` int(25) NOT NULL,
`con_satis` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
PRIMARY KEY (`id_historia`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `horarios` (
`id_horarios` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`dia` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`dayli` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`sprint` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
PRIMARY KEY (`id_horarios`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `info_usuarios` (
`id_usuario` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`nombre` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
`apellido` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
`telefono` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
`email` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
`direccion` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
`tipo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
PRIMARY KEY (`id_usuario`) 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `login_usuarios` (
`id_usuario` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`usuario` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`pass` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`tipo_usuario` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
PRIMARY KEY (`id_usuario`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `tareas` (
`id_tareas` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`num_tarea` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`estado` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`encargado` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`id_historias` varchar(25) NOT NULL,
PRIMARY KEY (`id_tareas`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `usuarios` (
`Id` int(11) NOT NULL AUTO_INCREMENT,
`Username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
`password` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
PRIMARY KEY (`Id`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=3;


ALTER TABLE `tareas` ADD CONSTRAINT `id_historias` FOREIGN KEY (`id_historias`) REFERENCES `historias_usuario` (`id_historia`);

