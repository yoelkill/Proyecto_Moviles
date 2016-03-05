-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2016 a las 06:00:11
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdinventarline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand`
--

CREATE TABLE `brand` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `description`) VALUES
(1, 'Polo'),
(2, 'Pantalón'),
(3, 'Zapatillas'),
(4, 'Zapatos'),
(5, 'Camiseta'),
(6, 'Medias'),
(7, 'Gorro'),
(8, 'Rodilleras'),
(9, 'Chandal'),
(10, 'Bikini'),
(11, 'Bermuda'),
(12, 'Pantaloneta'),
(13, 'Boxer'),
(14, 'Top'),
(15, 'Bañador'),
(16, 'Guantes'),
(17, 'Sudadera'),
(18, 'Ballerinas'),
(19, 'Gafas de Sol'),
(20, 'Jersey'),
(21, 'Mallas'),
(22, 'Chubasquero'),
(23, 'Parkas'),
(24, 'Chaqueta'),
(25, 'Casadora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'NINGUNO'),
(2, 'BLANCO'),
(3, 'NEGRO'),
(4, 'PLOMO'),
(5, 'AZUL'),
(6, 'ROJO'),
(7, 'ROSADO'),
(8, 'AMARILLO'),
(9, 'VERDE'),
(10, 'MORADO'),
(11, 'CELESTE'),
(12, 'TURQUESA'),
(13, 'MARRÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `dni` char(8) NOT NULL,
  `dateborn` date NOT NULL,
  `datestart` date NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `idFkLogin` int(10) NOT NULL,
  `idFkRole` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`id`, `name`, `lastname`, `dni`, `dateborn`, `datestart`, `city`, `address`, `idFkLogin`, `idFkRole`) VALUES
(1, 'ELDER', 'ALMORIN TORREJON', '07195806', '1982-04-05', '1951-09-28', 'LORETO', 'Calle Piura 336 - Punchana - Maynas', 1, 1),
(2, 'SEGUNDO ÓSCAR', 'ÁLVAREZ ROMERO', '07639874', '1992-03-25', '1964-01-17', 'LIBERTAD', 'Av.España872-3 -Trujillo', 2, 2),
(3, 'ERROL', 'APONTE GUERRERO', '18095992', '1985-03-06', '1963-06-26', 'PIURA', 'Av. San Ramon s/n Urb. El Chipe', 3, 2),
(4, 'LUZ GLORIA ', 'AQUINO MOSQUERA', '07227131', '1989-02-14', '1964-05-17', 'JUNIN', 'Jr. Loreto 363 - Huancayo', 4, 2),
(5, 'RICARDO ANTONIO ', 'ARBAÑIL RIVADENEIRA', '07581065', '1987-12-06', '1963-10-10', 'MOQUEGUA', 'Av. Balta s/n - cruce con Calle Tacna', 5, 2),
(6, 'ISAAC', 'ARCE PÉREZ', '07185045', '1988-07-07', '1960-05-31', 'CITY-NO', 'Carretera Yurimaguas Nº 408 Banda Shilcayo - Tarap', 6, 2),
(7, 'JOSÉ PABLO', 'CASTRO LOPEZ', '10281383', '1988-06-06', '1963-10-14', 'PIURA', 'Urb. Leoncio elias Arbolera F11', 7, 2),
(8, 'SANTOS', 'CCORAHUA AYTE', '09605223', '1986-04-01', '1962-11-21', 'APURIMAC', 'Plaza de Armas Tamburco s/n - Abancay', 8, 2),
(9, ' JOSÉ CARLOS ', 'ECHE LLENQUE', '09863166', '1984-10-20', '1960-01-05', 'CITY-NO', 'Av. Ricardo Angulo 695 - San isidro', 9, 2),
(10, 'SANTIAGO', 'ELIZALDE DIOSES', '18032436', '1984-12-27', '1962-12-22', 'TUMBES', 'Av. Tupac Amaru 128 - Tumbes', 10, 2),
(11, 'JESUS MANUEL', 'ESPINOZA LUGO', '06475266', '1985-01-04', '1962-12-11', 'HUANUCO', 'Jr. Junin 415 - Huanuco', 11, 2),
(12, 'ROGER ADRÍAN', 'ESPINOZA PARADO', '07880663', '1985-02-26', '1963-07-07', 'AYACUCHO', 'Jr. Callao 122 - Huamanga', 12, 2),
(13, 'GIOVANA GICELLY', 'FALCON RUÍZ', '06147942', '1990-04-08', '1962-09-12', 'BARRANCO', 'Av. Petit Thouars 4698 - Miraflores', 13, 2),
(14, 'MIGUEL ÁNGEL', 'FERRER RECARTE', '05200501', '1979-10-25', '1937-08-24', 'CITY.NO', 'Av. San Borja Sur 407 - San Borja', 14, 2),
(15, 'DOMINGO FRANCISCO ', 'FIGUEROA CORTEZ', '07258710', '1991-09-09', '1960-10-13', 'TUMBES', 'Av. Mariscal Castilla 957 - Tumbes', 15, 2),
(16, ' EMERSON', 'FLORES FLORES', '07180571', '1978-02-02', '1954-06-02', 'AMAZONAS', 'Heroes del Cenepa 668 - Bagua - Amazonas', 16, 2),
(17, 'CARLOS', 'FLORES ZAMBRANO', '10553983', '1981-10-26', '1969-09-01', 'LIMA', 'Mz. D lote 21 Urb Sr. De Los Milagros - SMP', 17, 2),
(18, 'WASHINGTON GABINO ', 'GAMBOA VELAZCO', '06682306', '1993-01-01', '1969-05-19', 'MADRE DE DIOS', 'Fiztcarald 265 - Tambopat', 18, 2),
(19, 'BEBERLI', 'GONZALES DE OLIVEIRA', '07223843', '1990-08-06', '1965-05-10', 'LORETO', 'Cornejo Portugal 2319 - Belen - Iquitos', 19, 2),
(20, 'LUIS', 'GONZALES GUAYAN', '07189721', '1979-07-30', '1940-09-08', 'UCAYALI', 'Av. Primavera 2da Etapa Mz 11 lote 1', 20, 2),
(21, 'ELENIZ KARIN', 'GUILLEN ALVARO', '07237360', '1990-07-08', '1969-09-01', 'ICA', 'Av. Cutervo 920 - Ica', 21, 2),
(22, 'PABLO ERNESTO ', 'HERRERA ROSALES', '07212628', '1987-07-07', '1955-11-07', 'MOQUEGUA', 'Calle Ancash No 109 - Moquegua', 22, 2),
(23, 'MARIO', 'HUAMAN SURCO', '08471154', '1984-09-06', '1954-09-05', 'MADRE DE DIOS', 'Jr. Las ponas a15 - Tambopata', 23, 2),
(24, 'MARÍA CRISTINA ', 'HUAMANCHUMO LEYTON', '07256252', '1986-11-12', '1958-03-23', 'LAMBAYEQUE', 'Calle Balta 412 - Pimentel - Chiclayo', 24, 2),
(25, 'MANUEL', 'LARA LANDÍVAR', '07247805', '1989-03-04', '1969-08-17', 'TACNA', 'Calle Argentina 640 - Urb Villa Hermosa', 25, 2),
(26, 'LUIS EDGARDO ', 'LEÓN LEÓN', '10146729', '1980-06-05', '1967-09-26', 'CAJAMARCA', 'Urb. La alameda Santa Teresa de Journet ', 26, 2),
(27, 'ROBERT CLODOALDO ', 'LÓPEZ VALVERDE', '06080192', '1986-05-11', '1967-01-19', 'JUNIN', 'Jr. Loreto 363 - Huancayo', 27, 2),
(28, 'ROCÍO ZOILA', 'LÓPEZ VERA', '10147652', '1989-06-20', '1969-05-28', 'CITY-NO', 'Av. San Borja Sur 406 - San Borja', 28, 2),
(29, 'JUAN ALEXIS', 'LUQUE UCHUCHOQUE', '07185074', '1989-06-12', '1949-06-08', 'AREQUIPA', 'Av. Unión 200 - Urb. César Vallejo - Paucarpata', 29, 2),
(30, 'MARÍA DEL ROSARIO', 'MACARLUPÚ ESCOLÁSTICO', '07230626', '1984-12-26', '1956-04-14', 'LIMA', 'Jr. Tacna 540 - Huancayo', 30, 2),
(31, 'JOSE ALFONSO', 'MARON VASQUEZ', '07183831', '1991-01-20', '1967-01-15', 'PUNO', 'Urb. Villa del lago H22 - Puno', 31, 2),
(32, 'PUBLIO ALEJANDRO', 'MEDINA ABANTO', '07181148', '1990-01-21', '1965-10-23', 'CAJAMARCA', 'Jr. Jaime de Martines 208 - Bambamarca', 32, 2),
(33, 'MÓNICA MAGDALENA', 'MENDIOLA CHAVEZ', '07190463', '1986-03-24', '1962-12-02', 'MIRAFLORES', 'Ernesto Cardenas 123 Dpto 201 - Surco', 33, 2),
(34, 'FREDY LUIS', 'MONZÓN TORRES', '06792769', '1981-10-18', '1969-09-12', 'AREQUIPA', 'Av. Kennedy cdra 16 s/n Paucarpata', 34, 2),
(35, 'CARLOS WALTER', 'NACARINO RODRIGUEZ', '10144756', '1985-01-03', '1966-04-03', 'SUR', 'Calle Colón Nº 122 Urb. Alas del Sur', 35, 2),
(36, 'EDGAR AMERICO', 'OLIVERA MAROCHO', '07231957', '1986-11-05', '1965-04-02', 'CITY-NO', 'Choquechaca 285 - Cusco', 36, 2),
(37, 'ROCKY', 'PADILLA RUIZ', '06218990', '1992-03-17', '1964-01-28', 'UCAYALI', 'Jr. Salaverry 660 - Pucallpa', 37, 2),
(38, 'JOSE RONALD', 'PALOMINO ARONI', '08215991', '1983-03-11', '1959-05-08', 'ICA', 'Av. Cutervo 920 - Ica', 38, 2),
(39, 'FIDEL CIRILO', 'PALOMINO MORALES', '07938442', '1990-01-13', '1965-11-03', 'AYACUCHO', 'Av. Independencia 604 - Huamanga', 39, 2),
(40, 'CARLOS ANTONIO', 'PAREDES ARANDA', '07220191', '1986-11-13', '1965-03-22', 'ANCASH', 'Jr. Villanueva 1017 - Huaraz', 40, 2),
(41, 'ROLANDO', 'PAREDES GAMONAL', '07212762', '1984-05-15', '1958-09-21', 'ICA', 'Urb. San Miguel E-145 - Ica', 41, 2),
(42, 'JUAN CARLOS ', 'PINTO MALAGA', '23715129', '1986-02-03', '1964-11-21', 'AREQUIPA', 'Av. Ricardo Palma 324 - Paucarpata - arequipa', 42, 2),
(43, 'FREDDY YORIQUE', 'ROJAS ARANGO', '09296121', '1990-08-09', '1960-06-07', 'ANCASH', 'Urb. Bella Mar Mz M3 lote 7 ', 43, 2),
(44, 'MODESTO', 'ROQUE ATENCIO', '10360268', '1978-02-10', '1954-05-22', 'PASCO', 'Edificio Estatal No 2 San Juan Pampa', 44, 2),
(45, 'JUAN HUGO', 'RUIZ SOTO', '10146468', '1984-12-18', '1968-10-18', 'NORTE', 'Mz. 252 lote 3 Zona inustrial - Piura', 45, 2),
(46, 'LUIS VÍCTOR', 'SALAZAR SEGURA', '07189370', '1982-10-16', '1965-09-26', 'LIMA METROP', 'Jr. Cailloma 124 - Lima', 46, 2),
(47, 'JOSÉ MARIA', ' SONO CABRERA', '07251250', '1981-10-12', '1951-02-26', 'LAMBAYEQUE', 'Av. Juan Tomis Stack 975 - Chiclayo', 47, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'ALTOEL', 'intelcore2duo'),
(2, 'ALROOS', 'intelcore2duo'),
(3, 'APGUEER', 'intelcore2duo'),
(4, 'AQMOLU', 'intelcore2duo'),
(5, 'ARRIRI', 'intelcore2duo'),
(6, 'ARPEIS', 'intelcore2duo'),
(7, 'CALOPA', 'intelcore2duo'),
(8, 'CCAYSA', 'intelcore2duo'),
(9, 'ECLLJO', 'intelcore2duo'),
(10, 'ELDISA', 'intelcore2duo'),
(11, 'ESLUMA', 'intelcore2duo'),
(12, 'ESPAAD', 'intelcore2duo'),
(13, 'FARUGI', 'intelcore2duo'),
(14, 'FEREAN', 'intelcore2duo'),
(15, 'FICOFR', 'intelcore2duo'),
(16, 'FLFLEM', 'intelcore2duo'),
(17, 'FLZACA', 'intelcore2duo'),
(18, 'GAVEGA', 'intelcore2duo'),
(19, 'GOOLBE', 'intelcore2duo'),
(20, 'GOGULU', 'intelcore2duo'),
(21, 'GUALKA', 'intelcore2duo'),
(22, 'HEROER', 'intelcore2duo'),
(23, 'HUSUMA', 'intelcore2duo'),
(24, 'HULECR', 'intelcore2duo'),
(25, 'LALAMA', 'intelcore2duo'),
(26, 'LELEED', 'intelcore2duo'),
(27, 'LOVACL', 'intelcore2duo'),
(28, 'LOVEZO', 'intelcore2duo'),
(29, 'LUUCAL', 'intelcore2duo'),
(30, 'MAESMA', 'intelcore2duo'),
(31, 'MAVAAL', 'intelcore2duo'),
(32, 'MEABAL', 'intelcore2duo'),
(33, 'MECHMA', 'intelcore2duo'),
(34, 'MOTOLU', 'intelcore2duo'),
(35, 'NAROWA', 'intelcore2duo'),
(36, 'OLMAAM', 'intelcore2duo'),
(37, 'PARURO', 'intelcore2duo'),
(38, 'PAARRO', 'intelcore2duo'),
(39, 'PAMOCI', 'intelcore2duo'),
(40, 'PAARAN', 'intelcore2duo'),
(41, 'PAGARO', 'intelcore2duo'),
(42, 'PIMAJU', 'intelcore2duo'),
(43, 'ROARFR', 'intelcore2duo'),
(44, 'ROATMO', 'intelcore2duo'),
(45, 'RUSOJU', 'intelcore2duo'),
(46, 'SASELU', 'intelcore2duo'),
(47, 'SOCAJO', 'intelcore2duo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `stock` int(10) NOT NULL,
  `idFkCategory` int(10) NOT NULL,
  `idFkBrand` int(10) NOT NULL,
  `idFkSize` int(10) NOT NULL,
  `idFkColor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id` int(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `pay` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `description`, `pay`) VALUES
(1, 'ADMINISTRADOR', 5000),
(2, 'USUARIO', 1200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `size`
--

CREATE TABLE `size` (
  `id` int(10) NOT NULL,
  `name` varchar(3) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `size`
--

INSERT INTO `size` (`id`, `name`, `description`) VALUES
(1, 'S', 'Talla Small'),
(2, 'M', 'Talla Medium'),
(3, 'L', 'Talla Large'),
(4, 'XL', 'Talla Xtra-Large'),
(5, '38', 'Talla 38'),
(6, '40', 'Talla 40'),
(7, '42', 'Talla 42'),
(8, '44', 'Talla 44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) NOT NULL,
  `datetransaction` date NOT NULL,
  `idFkEmployee` int(10) NOT NULL,
  `idFkProduct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `employee_ibfk_1` (`idFkLogin`),
  ADD KEY `employee_ibfk_2` (`idFkRole`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_1` (`idFkBrand`),
  ADD KEY `product_ibfk_2` (`idFkCategory`),
  ADD KEY `product_ibfk_3` (`idFkSize`),
  ADD KEY `product_ibfk_4` (`idFkColor`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_ibfk_1` (`idFkEmployee`),
  ADD KEY `transaction_ibfk_2` (`idFkProduct`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `size`
--
ALTER TABLE `size`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`idFkLogin`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`idFkRole`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idFkBrand`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idFkCategory`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`idFkSize`) REFERENCES `size` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`idFkColor`) REFERENCES `color` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`idFkEmployee`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`idFkProduct`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
