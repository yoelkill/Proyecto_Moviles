--
-- Estructura de tabla para la tabla `brand`
--
CREATE TABLE `brand` (
  `id`          int(10)           NOT NULL        PRIMARY KEY  AUTO_INCREMENT,
  `name`        varchar(50)       NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `category`
--
CREATE TABLE `category` (
  `id`            int(10)         NOT NULL     PRIMARY KEY AUTO_INCREMENT, 
  `description`   varchar(50)     NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `id`          int(10)           NOT NULL      PRIMARY KEY   AUTO_INCREMENT,
  `name`        varchar(50)       NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `employee`
--
CREATE TABLE `employee` (
  `id`          int(10)         NOT NULL    PRIMARY KEY   AUTO_INCREMENT,
  `name`        varchar(50)     NOT NULL,
  `lastname`    varchar(50)     NOT NULL,
  `mail`        varchar(80)     NOT NULL,
  `dni`         int(8)          NOT NULL,
  `dateborn`    date            NOT NULL,
  `datestart`   date            NOT NULL,
  `city`        char(50)        NOT NULL,
  `address`     varchar(50)     NOT NULL,
  `idFkLogin`   int(10)         NOT NULL,
  `idFkRole`    int(10)         NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `login`
--
CREATE TABLE `login` (
  `id`          int(10)           NOT NULL    PRIMARY KEY  AUTO_INCREMENT,
  `username`    varchar(20)       NOT NULL,
  `password`    varchar(20)       NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `product`
--
CREATE TABLE `product` (
  `id`            int(10)         NOT NULL    PRIMARY KEY   AUTO_INCREMENT,
  `description`   varchar(50)     NOT NULL,
  `name`          varchar(50)     NOT NULL,
  `price`         float           NOT NULL,
  `stock`         int(10)         NOT NULL,
  `idFkCategory`  int(10)         NOT NULL,
  `idFkBrand`     int(10)         NOT NULL,
  `idFkSize`      int(10)         NOT NULL,
  `idFkColor`     int(10)         NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `role`
--
CREATE TABLE `role` (
  `id`            int(10)         NOT NULL    PRIMARY KEY AUTO_INCREMENT,
  `description`   varchar(50)     NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `size`
--

CREATE TABLE `size` (
  `id`            int(10)         NOT NULL    PRIMARY KEY AUTO_INCREMENT,
  `name`          varchar(3)      NOT NULL,
  `description`   varchar(50)     NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaction`
--

CREATE TABLE `transaction` (
  `id`                  int(10)          NOT NULL   PRIMARY KEY   AUTO_INCREMENT,
  `typetransaction`     varchar(20)      NOT NULL,
  `datetransaction`     date             NOT NULL,
  `idFkEmployee`        int(10)          NOT NULL,
  `idFkProduct`         int(10)          NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `employee_ibfk_1` (`idFkLogin`),
  ADD KEY `employee_ibfk_2` (`idFkRole`);

--
-- Indices de la tabla `login`
--
  ALTER TABLE `login`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD KEY `product_ibfk_1` (`idFkBrand`),
  ADD KEY `product_ibfk_2` (`idFkCategory`),
  ADD KEY `product_ibfk_3` (`idFkSize`),
  ADD KEY `product_ibfk_4` (`idFkColor`);

--
-- Indices de la tabla `transaction`
--
ALTER TABLE `transaction`
  ADD KEY `transaction_ibfk_1` (`idFkEmployee`),
  ADD KEY `transaction_ibfk_2` (`idFkProduct`);



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
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`idFkEmployee`) REFERENCES `employee`  (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`idFkProduct`) REFERENCES `product`    (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;




-- ****************************************************************************************************************
                                                    DATOS
-- ****************************************************************************************************************