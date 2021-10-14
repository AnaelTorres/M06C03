CREATE SCHEMA  `entregable_db` ;  

CREATE TABLE `usuarios`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `id_Notas` INT NOT NULL,
  `Email` VARCHAR(50) not NULL,
   PRIMARY KEY (id)
);

ALTER TABLE usuarios
ADD FOREIGN KEY (id_Notas) REFERENCES notas(idnotas);

INSERT INTO `usuarios` VALUES 
(DEFAULT, "Juan", 1,  "juan@gmail.com"),
(DEFAULT, "Roberto", 2, "roberto@gmail.com"),
(DEFAULT, "Pedro", 3, "pedro@gmail.com"),
(DEFAULT, "Miguel", 4,  "miguel@gmail.com"),
(DEFAULT, "Lorenzo", 5, "lorenzo@gmail.com"),
(DEFAULT, "Francisco", 6,  "francisco@gmail.com"),
(DEFAULT, "Micaela", 7,  "micaela@gmail.com"),
(DEFAULT, "Analia", 8,  "analia@gmail.com"),
(DEFAULT, "Pablo", 9,  "pablo@gmail.com"),
(DEFAULT, "Vanina", 10,  "vanina@gmail.com");

CREATE TABLE `notas`(
  `idnotas` INT NOT NULL AUTO_INCREMENT,
  `idCategorias` INT NOT NULL,
  `idNotascategorias` INT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `Fecha_Creacion` DATE NOT NULL,
  `Fecha_Ult_Mod` DATETIME NOT NULL,
  `descripcion` TEXT NOT NULL,
  `BorrarNoBorrar` TINYINT NOT NULL,
   PRIMARY KEY (idnotas)
   );
   
ALTER TABLE notas
ADD FOREIGN KEY (idNotascategorias) REFERENCES notascategorias(id);
ALTER TABLE notas
ADD FOREIGN KEY (idCategorias) REFERENCES categorias(id);
   
   INSERT INTO `notas` VALUES 
(DEFAULT, 1, 1, 'Nota1', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 2, 2, 'Nota2', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 3, 3, 'Nota3', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 4, 4, 'Nota4', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 5, 5, 'Nota5', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 6, 6, 'Nota6', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 7, 7, 'Nota7', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 8, 8, 'Nota8', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 9, 9, 'Nota9', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0'),
(DEFAULT, 10, 10, 'Nota10', '2021-10-13', '2021-10-13 00:00:00','Lorem ipsum dolor','0');

CREATE TABLE `notascategorias`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `idCategorias` INT NOT NULL,
  `id_Notas` INT NOT NULL,
   PRIMARY KEY (id)
);

ALTER TABLE notascategorias
ADD FOREIGN KEY (idCategorias) REFERENCES categorias(id);
ALTER TABLE notascategorias
ADD FOREIGN KEY (id_Notas) REFERENCES notas(idnotas);

INSERT INTO `notascategorias` VALUE
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,2,3),
(8,4,2),
(9,3,5),
(10,6,2);

CREATE TABLE `categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Categoria` VARCHAR(25) NOT NULL,
   PRIMARY KEY (id)
);


INSERT INTO `categorias` VALUES 
(1, 'Musica'),
(2, 'Lectura'),
(3, 'Cine'),
(4, 'Deporte'),
(5, 'Tecnoligua'),
(6, 'Redes'),
(7, 'Ciudades'),
(8, 'Arte'),
(9, 'Historia'),
(10, 'Clima');

   
