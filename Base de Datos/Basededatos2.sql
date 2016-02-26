
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla roles
--

CREATE TABLE IF NOT EXISTS `role` (
  `id`            int(20)       NOT NULL  AUTO_INCREMENT PRIMARY KEY ,
  `description`   varchar(50)   NOT NULL,
  `pay`           float         NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id`        int(20)       NOT NULL   AUTO_INCREMENT     PRIMARY KEY,
  `name`      varchar(20)   NOT NULL,
  `password`  varchar(20)   NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- TABLA tallas
--

CREATE TABLE IF NOT EXISTS `size` (
  `id`              int(20)       NOT NULL   AUTO_INCREMENT         PRIMARY KEY,
  `size_product`    varchar(100)      NOT NULL
)ENGINE=INNODB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- TABLA Colores
--
CREATE TABLE IF NOT EXISTS `colour` (
  `id`             int(20)     NOT NULL      AUTO_INCREMENT  PRIMARY KEY,
  `name_colour`    varchar(50)     NOT NULL
)ENGINE=INNODB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- TABLA categorias
--
CREATE TABLE IF NOT EXISTS `category`(
  `id`          int(20)      NOT NULL      AUTO_INCREMENT     PRIMARY KEY,
  `type_cat`    varchar(25)     NOT NULL 
)ENGINE=INNODB DEFAULT CHARSET=utf8;
-- --------------------------------------------------------
--
-- TABLA marca= brand (product name)
--
CREATE TABLE IF NOT EXISTS `brand`(
  `id`            int(20)      NOT NULL    AUTO_INCREMENT PRIMARY KEY ,
  `type_brand`    varchar(25)     NOT NULL 
)ENGINE=INNODB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla employee
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id`          int(20)       NOT NULL      AUTO_INCREMENT      PRIMARY KEY,
  `name`        varchar(50)   NOT NULL,
  `lastname`    varchar(50)   NOT NULL,
  `dni`         char(8)       NOT NULL,
  `dateborn`    date          NOT NULL,
  `datestart`   date          NOT NULL,
  `city`        varchar(50)   NOT NULL,
  `address`     varchar(50)   NOT NULL,
  `id_login`    int(20)       NOT NULL,
  `id_role`     int(20)       NOT NULL,

  constraint FOREIGN KEY (id_login) References login(id)  ON UPDATE CASCADE,
  constraint FOREIGN KEY (id_role) References role(id)  ON UPDATE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------
--
-- TABLA producto
--

CREATE TABLE if NOT EXISTS `product` (
  `id`          int(20)   NOT NULL        AUTO_INCREMENT,
  `name_prod`   char (100)    NOT NULL,
  `precio`      int           NOT NULL,
  `stock`       int           NOT NULL,
  `id_size`     int(20)   NOT NULL,
  `id_colour`   int(20)   NOT NULL,
  `id_category` int(20)   NOT NULL,
  `id_brand`    int(20)   NOT NULL,
 PRIMARY KEY (id), 

 FOREIGN KEY (id_size) References size(id)  ON UPDATE CASCADE,
 FOREIGN KEY (id_colour) References colour(id)  ON UPDATE CASCADE,
 FOREIGN KEY (id_category) References category(id) ON UPDATE CASCADE, 
 FOREIGN KEY (id_brand) References brand(id)

) ENGINE=INNODB DEFAULT CHARSET=utf8;
-- -----------------------------------------------------------
--
-- TABLA tranferencia =  transfer 
--

CREATE TABLE IF NOT EXISTS `transfer`(
  `id`              int(20)       NOT NULL    AUTO_INCREMENT,
  `type_transfer`   char(30)          NOT NULL,
  `date_transfer`   date              NOT NULL,
  `id_employ`       int(20)          NOT NULL,
  `id_product`      int(20)           NOT NULL,
 PRIMARY KEY (id), 

 FOREIGN KEY (id_employ) REFERENCES employee (id) ON UPDATE CASCADE ON DELETE RESTRICT,
 FOREIGN KEY (id_product) References product(id)
)ENGINE=INNODB DEFAULT CHARSET=utf8;
