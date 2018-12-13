CREATE TABLE `maxirepuestos`.`inventario` (
  `codArticulo` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `nombreArticulo` VARCHAR(100) NOT NULL,
  `precioArticulo` DOUBLE NOT NULL,
  `cantidadStock` BIGINT(10) NOT NULL,
  `marcaArticulo` VARCHAR(100) NOT NULL,
  `categoriaArticulo` VARCHAR(100) NOT NULL,
  `codMarcaCarro` BIGINT(10) NOT NULL,
  `codModelo` BIGINT(10) NOT NULL,
  `Año` BIGINT(10) NOT NULL,
  `Imagen` VARCHAR(500) NOT NULL,
  `Inventariocol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codArticulo`));

  CREATE TABLE `maxirepuestos`.`marca_carro` (
  `codMarca` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `nombreMarca` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codMarca`));

CREATE TABLE `maxirepuestos`.`modelo_carro` (
  `codModelo` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `nombreModelo` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codModelo`));

CREATE TABLE `maxirepuestos`.`categoria_articulo` (
  `codCategoria` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `nombreCategoria` VARCHAR(100) NOT NULL,
  `categoria_articulocol` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`codCategoria`));

CREATE TABLE `maxirepuestos`.`estados` (
  `codEstado` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `nombreEstado` VARCHAR(100) NOT NULL,
  `descripcionEstado` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`codEstado`));

CREATE TABLE `maxirepuestos`.`usuario` (
  `usercod` bigint(10) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(80) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `userpswd` varchar(128) DEFAULT NULL,
  `userfching` datetime DEFAULT NULL,
  `userpswdest` char(3) DEFAULT NULL,
  `userpswdexp` datetime DEFAULT NULL,
  `userest` char(3) DEFAULT NULL,
  `useractcod` varchar(128) DEFAULT NULL,
  `userpswdchg` varchar(128) DEFAULT NULL,
  `usertipo` char(3) DEFAULT NULL COMMENT 'Tipo de Usuario, Normal, Consultor o Cliente',
  PRIMARY KEY (`usercod`),
  UNIQUE KEY `useremail_UNIQUE` (`useremail`),
  KEY `usertipo` (`usertipo`,`useremail`,`usercod`,`userest`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `maxirepuestos`.`roles` (
  `rolescod` varchar(15) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL,
  PRIMARY KEY (`rolescod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `maxirepuestos` `roles_usuarios` (
  `usercod` bigint(10) NOT NULL,
  `rolescod` varchar(15) NOT NULL,
  `roleuserest` char(3) DEFAULT NULL,
  `roleuserfch` datetime DEFAULT NULL,
  `roleuserexp` datetime DEFAULT NULL,
  PRIMARY KEY (`usercod`,`rolescod`),
  KEY `rol_usuario_key_idx` (`rolescod`),
  CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `maxirepuestos`.`resumen_ventas` (
  `codVentas` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `codUsuario` BIGINT(10) NOT NULL,
  `codEstado` BIGINT(10) NOT NULL,
  `precioTotal` DOUBLE NOT NULL,
  PRIMARY KEY (`codVentas`));

CREATE TABLE `maxirepuestos`.`detalle_ventas` (
  `codVenta` BIGINT(10) NOT NULL,
  `codArticulo` BIGINT(10) NOT NULL,
  `horaReservacion` DATETIME NOT NULL,
  `precioActual` BIGINT(10) NOT NULL,
  `cantidad` BIGINT(10) NOT NULL,
  `oferta` BIGINT(10) NOT NULL,
  PRIMARY KEY (`codVenta`, `codArticulo`));


ALTER TABLE `maxirepuestos`.`resumen_ventas` 
ADD INDEX `fk_codUsuario_idx` (`codUsuario` ASC);
;
ALTER TABLE `maxirepuestos`.`resumen_ventas` 
ADD CONSTRAINT `fk_codUsuario`
  FOREIGN KEY (`codUsuario`)
  REFERENCES `maxirepuestos`.`usuario` (`usercod`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_codEstado`
  FOREIGN KEY (`codEstado`)
  REFERENCES `maxirepuestos`.`estados` (`codEstado`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `maxirepuestos`.`detalle_ventas` 
ADD CONSTRAINT `fk_codVentas`
  FOREIGN KEY (`codVenta`)
  REFERENCES `maxirepuestos`.`resumen_ventas` (`codVentas`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_codArticulo`
  FOREIGN KEY (`codArticulo`)
  REFERENCES `maxirepuestos`.`inventario` (`codArticulo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



ALTER TABLE `maxirepuestos`.`inventario` 
ADD INDEX `fk_codCategoria_idx` (`codCategoria` ASC),
ADD INDEX `fk_codModelo_idx` (`codModelo` ASC);
;
ALTER TABLE `maxirepuestos`.`inventario` 
ADD CONSTRAINT `fk_codCategoria`
  FOREIGN KEY (`codCategoria`)
  REFERENCES `maxirepuestos`.`categoria_articulo` (`codCategoria`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_codMarcaCarro`
  FOREIGN KEY (`codMarcaCarro`)
  REFERENCES `maxirepuestos`.`marca_carro` (`codMarca`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_codModelo`
  FOREIGN KEY (`codModelo`)
  REFERENCES `maxirepuestos`.`modelo_carro` (`codModelo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


