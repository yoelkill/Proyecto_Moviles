-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2016 a las 03:28:16
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdinvertiline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `description`) VALUES
(1, 'ATENCIÓN A CLIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`id`, `name`, `lastname`, `dni`, `dateborn`, `datestart`, `city`, `address`, `idFkLogin`, `idFkRole`) VALUES
(1, 'ELDER ', 'ALMORIN TORREJON', '07195806', '1982-04-05', '1951-09-28', 'LORETO', 'Calle Piura 336 - Punchana - Maynas', 1, 1),
(2, 'SEGUNDO ÓSCAR', ' ÁLVAREZ ROMERO', '07639874', '1992-03-25', '1964-01-17', 'LIBERTAD', 'Av.España872-3 -Trujillo', 2, 2),
(3, 'ERROL ', '3 APONTE GUERRERO', '18095992', '1985-03-06', '1963-06-26', 'PIURA', 'Av. San Ramon s/n Urb. El Chipe', 3, 3),
(4, 'LUZ GLORIA ', '4 AQUINO MOSQUERA', '07227131', '1989-02-14', '1964-05-17', 'JUNIN', 'Jr. Loreto 363 - Huancayo', 4, 4),
(5, 'RICARDO ANTONIO ', 'ARBAÑIL RIVADENEIRA', '07581065', '1987-12-06', '1963-10-10', 'MOQUEGUA', 'Av. Balta s/n - cruce con Calle Tacna', 5, 5),
(6, 'ISAAC', 'ARCE PÉREZ', '07185045', '1988-07-07', '1960-05-31', 'CITY-NO', 'Carretera Yurimaguas Nº 408 Banda Shilcayo - Tarap', 6, 6),
(7, ' JOSÉ PABLO', 'CASTRO LOPEZ', '10281383', '1988-06-06', '1963-10-14', 'PIURA', 'Urb. Leoncio elias Arbolera F11', 7, 7),
(8, 'SANTOS ', 'CCORAHUA AYTE', '09605223', '1986-04-01', '1962-11-21', 'APURIMAC', 'Plaza de Armas Tamburco s/n - Abancay', 8, 8),
(9, ' JOSÉ CARLOS ', 'ECHE LLENQUE', '09863166', '1984-10-20', '1960-01-05', 'CITY-NO', 'Av. Ricardo Angulo 695 - San isidro', 9, 9),
(10, 'SANTIAGO ', 'ELIZALDE DIOSES', '18032436', '1984-12-27', '1962-12-22', 'TUMBES', 'Av. Tupac Amaru 128 - Tumbes', 10, 10),
(11, ' JESUS MANUEL ', 'ESPINOZA LUGO', '06475266', '1985-01-04', '1962-12-11', 'HUANUCO', 'Jr. Junin 415 - Huanuco', 11, 11),
(12, 'ROGER ADRÍAN ', 'ESPINOZA PARADO', '07880663', '1985-02-26', '1963-07-07', 'AYACUCHO', 'Jr. Callao 122 - Huamanga', 12, 12),
(13, 'GIOVANA GICELLY', 'FALCON RUÍZ', '06147942', '1990-04-08', '1962-09-12', 'BARRANCO', 'Av. Petit Thouars 4698 - Miraflores', 13, 13),
(14, 'MIGUEL ÁNGEL ', 'FERRER RECARTE', '05200501', '1979-10-25', '1937-08-24', 'CITY.NO', 'Av. San Borja Sur 407 - San Borja', 14, 14),
(15, 'DOMINGO FRANCISCO ', 'FIGUEROA CORTEZ', '07258710', '1991-09-09', '1960-10-13', 'TUMBES', 'Av. Mariscal Castilla 957 - Tumbes', 15, 15),
(16, ' EMERSON ', 'FLORES FLORES', '07180571', '1978-02-02', '1954-06-02', 'AMAZONAS', 'Heroes del Cenepa 668 - Bagua - Amazonas', 16, 16),
(17, 'CARLOS', 'FLORES ZAMBRANO', '10553983', '1981-10-26', '1969-09-01', 'LIMA', 'Mz. D lote 21 Urb Sr. De Los Milagros - SMP', 17, 17),
(18, 'WASHINGTON GABINO ', 'GAMBOA VELAZCO', '06682306', '1993-01-01', '1969-05-19', 'MADRE DE DIOS', 'Fiztcarald 265 - Tambopat', 18, 18),
(19, 'BEBERLI ', 'GONZALES DE OLIVEIRA', '07223843', '1990-08-06', '1965-05-10', 'LORETO', 'Cornejo Portugal 2319 - Belen - Iquitos', 19, 19),
(20, 'LUIS ', 'GONZALES GUAYAN', '07189721', '1979-07-30', '1940-09-08', 'UCAYALI', 'Av. Primavera 2da Etapa Mz 11 lote 1', 20, 20),
(21, 'ELENIZ KARIN', 'GUILLEN ALVARO', '07237360', '1990-07-08', '1969-09-01', 'ICA', 'Av. Cutervo 920 - Ica', 21, 21),
(22, 'PABLO ERNESTO ', 'HERRERA ROSALES', '07212628', '1987-07-07', '1955-11-07', 'MOQUEGUA', 'Calle Ancash No 109 - Moquegua', 22, 22),
(23, 'MARIO ', 'HUAMAN SURCO', '08471154', '1984-09-06', '1954-09-05', 'MADRE DE DIOS', 'Jr. Las ponas a15 - Tambopata', 23, 23),
(24, 'MARÍA CRISTINA ', 'HUAMANCHUMO LEYTON', '07256252', '1986-11-12', '1958-03-23', 'LAMBAYEQUE', 'Calle Balta 412 - Pimentel - Chiclayo', 24, 24),
(25, 'MANUEL ', 'LARA LANDÍVAR', '07247805', '1989-03-04', '1969-08-17', 'TACNA', 'Calle Argentina 640 - Urb Villa Hermosa', 25, 25),
(26, 'LUIS EDGARDO ', 'LEÓN LEÓN', '10146729', '1980-06-05', '1967-09-26', 'CAJAMARCA', 'Urb. La alameda Santa Teresa de Journet ', 26, 26),
(27, 'ROBERT CLODOALDO ', 'LÓPEZ VALVERDE', '06080192', '1986-05-11', '1967-01-19', 'JUNIN', 'Jr. Loreto 363 - Huancayo', 27, 27),
(28, 'ROCÍO ZOILA ', 'LÓPEZ VERA', '10147652', '1989-06-20', '1969-05-28', 'CITY-NO', 'Av. San Borja Sur 406 - San Borja', 28, 28),
(29, 'JUAN ALEXIS ', 'LUQUE UCHUCHOQUE', '07185074', '1989-06-12', '1949-06-08', 'AREQUIPA', 'Av. Unión 200 - Urb. César Vallejo - Paucarpata', 29, 29),
(30, 'MARÍA DEL ROSARIO', 'MACARLUPÚ ESCOLÁSTICO', '07230626', '1984-12-26', '1956-04-14', 'LIMA', 'Jr. Tacna 540 - Huancayo', 30, 30),
(31, 'JOSE ALFONSO ', 'MARON VASQUEZ', '07183831', '1991-01-20', '1967-01-15', 'PUNO', 'Urb. Villa del lago H22 - Puno', 31, 31),
(32, 'PUBLIO ALEJANDRO ', 'MEDINA ABANTO', '07181148', '1990-01-21', '1965-10-23', 'CAJAMARCA', 'Jr. Jaime de Martines 208 - Bambamarca', 32, 32),
(33, 'MÓNICA MAGDALENA ', 'MENDIOLA CHAVEZ', '07190463', '1986-03-24', '1962-12-02', 'MIRAFLORES', 'Ernesto Cardenas 123 Dpto 201 - Surco', 33, 33),
(34, 'FREDY LUIS ', 'MONZÓN TORRES', '06792769', '1981-10-18', '1969-09-12', 'AREQUIPA', 'Av. Kennedy cdra 16 s/n Paucarpata', 34, 34),
(35, 'CARLOS WALTER ', 'NACARINO RODRIGUEZ', '10144756', '1985-01-03', '1966-04-03', 'SUR', 'Calle Colón Nº 122 Urb. Alas del Sur', 35, 35),
(36, 'EDGAR AMERICO', 'OLIVERA MAROCHO', '07231957', '1986-11-05', '1965-04-02', 'CITY-NO', 'Choquechaca 285 - Cusco', 36, 36),
(37, 'ROCKY', 'PADILLA RUIZ', '06218990', '1992-03-17', '1964-01-28', 'UCAYALI', 'Jr. Salaverry 660 - Pucallpa', 37, 37),
(38, 'JOSE RONALD ', 'PALOMINO ARONI', '08215991', '1983-03-11', '1959-05-08', 'ICA', 'Av. Cutervo 920 - Ica', 38, 38),
(39, 'FIDEL CIRILO', 'PALOMINO MORALES', '07938442', '1990-01-13', '1965-11-03', 'AYACUCHO', 'Av. Independencia 604 - Huamanga', 39, 39),
(40, 'CARLOS ANTONIO ', 'PAREDES ARANDA', '07220191', '1986-11-13', '1965-03-22', 'ANCASH', 'Jr. Villanueva 1017 - Huaraz', 40, 40),
(41, 'ROLANDO ', 'PAREDES GAMONAL', '07212762', '1984-05-15', '1958-09-21', 'ICA', 'Urb. San Miguel E-145 - Ica', 41, 41),
(42, 'JUAN CARLOS ', 'PINTO MALAGA', '23715129', '1986-02-03', '1964-11-21', 'AREQUIPA', 'Av. Ricardo Palma 324 - Paucarpata - arequipa', 42, 42),
(43, ' FREDDY YORIQUE', 'ROJAS ARANGO', '09296121', '1990-08-09', '1960-06-07', 'ANCASH', 'Urb. Bella Mar Mz M3 lote 7 ', 43, 43),
(44, ' MODESTO ', 'ROQUE ATENCIO', '10360268', '1978-02-10', '1954-05-22', 'PASCO', 'Edificio Estatal No 2 San Juan Pampa', 44, 44),
(45, 'JUAN HUGO ', 'RUIZ SOTO', '10146468', '1984-12-18', '1968-10-18', 'NORTE', 'Mz. 252 lote 3 Zona inustrial - Piura', 45, 45),
(46, 'LUIS VÍCTOR ', 'SALAZAR SEGURA', '07189370', '1982-10-16', '1965-09-26', 'LIMA METROP', 'Jr. Cailloma 124 - Lima', 46, 46),
(47, 'JOSÉ MARIA ', ' SONO CABRERA', '07251250', '1981-10-12', '1951-02-26', 'LAMBAYEQUE', 'Av. Juan Tomis Stack 975 - Chiclayo', 47, 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `name`, `password`) VALUES
(1, '07195806', 'ALTOEL'),
(2, '07639874', 'ALROOS'),
(3, '18095992', 'APGUEER'),
(4, '07227131', 'AQMOLU'),
(5, '07581065', 'ARRIRI'),
(6, '07185045', 'ARPEIS'),
(7, '10281383', 'CALOPA'),
(8, '09605223', 'CCAYSA'),
(9, '09863166', 'ECLLJO'),
(10, '18032436', 'ELDISA'),
(11, '06475266', 'ESLUMA'),
(12, '07880663', 'ESPAAD'),
(13, '06147942', 'FARUGI'),
(14, '05200501', 'FEREAN'),
(15, '07258710', 'FICOFR'),
(16, '07180571', 'FLFLEM'),
(17, '10553983', 'FLZACA'),
(18, '06682306', 'GAVEGA'),
(19, '07223843', 'GOOLBE'),
(20, '07189721', 'GOGULU'),
(21, '07237360', 'GUALKA'),
(22, '07212628', 'HEROER'),
(23, '08471154', 'HUSUMA'),
(24, '07256252', 'HULECR'),
(25, '07247805', 'LALAMA'),
(26, '10146729', 'LELEED'),
(27, '06080192', 'LOVACL'),
(28, '10147652', 'LOVEZO'),
(29, '07185074', 'LUUCAL'),
(30, '07230626', 'MAESMA'),
(31, '07183831', 'MAVAAL'),
(32, '07181148', 'MEABAL'),
(33, '07190463', 'MECHMA'),
(34, '06792769', 'MOTOLU'),
(35, '10144756', 'NAROWA'),
(36, '07231957', 'OLMAAM'),
(37, '06218990', 'PARURO'),
(38, '08215991', 'PAARRO'),
(39, '07938442', 'PAMOCI'),
(40, '07220191', 'PAARAN'),
(41, '07212762', 'PAGARO'),
(42, '23715129', 'PIMAJU'),
(43, '092961212', 'ROARFR'),
(44, '10360268', 'ROATMO'),
(45, '10146468', 'RUSOJU'),
(46, '07189370', 'SASELU'),
(47, '07251250', 'SOCAJO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
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

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `pay` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `description`, `pay`) VALUES
(1, 'ADMINISTRADOR', 750),
(2, 'USUARIO', 750),
(3, 'USUARIO', 750),
(4, 'USUARIO', 750),
(5, 'USUARIO', 750),
(6, 'USUARIO', 750),
(7, 'USUARIO', 750),
(8, 'USUARIO', 750),
(9, 'USUARIO', 750),
(10, 'USUARIO', 750),
(11, 'USUARIO', 750),
(12, 'USUARIO', 750),
(13, 'USUARIO', 750),
(14, 'USUARIO', 750),
(15, 'USUARIO', 750),
(16, 'USUARIO', 750),
(17, 'USUARIO', 750),
(18, 'USUARIO', 750),
(19, 'USUARIO', 750),
(20, 'USUARIO', 750),
(21, 'USUARIO', 750),
(22, 'USUARIO', 750),
(23, 'USUARIO', 750),
(24, 'USUARIO', 750),
(25, 'USUARIO', 750),
(26, 'USUARIO', 750),
(27, 'USUARIO', 750),
(28, 'USUARIO', 750),
(29, 'USUARIO', 750),
(30, 'USUARIO', 750),
(31, 'USUARIO', 750),
(32, 'USUARIO', 750),
(33, 'USUARIO', 750),
(34, 'USUARIO', 750),
(35, 'USUARIO', 750),
(36, 'USUARIO', 750),
(37, 'USUARIO', 750),
(38, 'USUARIO', 750),
(39, 'USUARIO', 750),
(40, 'USUARIO', 750),
(41, 'USUARIO', 750),
(42, 'USUARIO', 750),
(43, 'USUARIO', 750),
(44, 'USUARIO', 750),
(45, 'USUARIO', 750),
(46, 'USUARIO', 750),
(47, 'USUARIO', 750);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `id` int(10) NOT NULL,
  `name` varchar(3) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
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
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `dni` (`dni`), ADD KEY `employee_ibfk_1` (`idFkLogin`), ADD KEY `employee_ibfk_2` (`idFkRole`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`), ADD KEY `product_ibfk_2` (`idFkCategory`), ADD KEY `product_ibfk_1` (`idFkBrand`), ADD KEY `product_ibfk_3` (`idFkSize`), ADD KEY `product_ibfk_4` (`idFkColor`);

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
  ADD PRIMARY KEY (`id`), ADD KEY `transaction_ibfk_1` (`idFkEmployee`), ADD KEY `transaction_ibfk_2` (`idFkProduct`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `size`
--
ALTER TABLE `size`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
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
