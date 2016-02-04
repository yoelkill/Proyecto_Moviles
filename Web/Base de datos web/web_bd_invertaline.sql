SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- TABLA DE NUEVO USUARIO
--

CREATE TABLE IF NOT EXISTS `user` (
  `cod_user` varchar(30) NOT NULL PRIMARY KEY,
  `name` char(50) NOT NULL,
  `pass` varchar(50) NOT NULL
);

-- --------------------------------------------------------

--
-- TABLA DE PRODUCTOS
--

CREATE TABLE IF NOT EXISTS `product` (
  `cod_pro` varchar(30) NOT NULL PRIMARY KEY,
  `cod_user` varchar(30) NOT NULL,
  `name_pro` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,  
  `price` int(25) NOT NULL
);
-- --------------------------------------------------------


--
-- TABLA DE  TIPOS DE PRODUCTOS
--

CREATE TABLE IF NOT EXISTS `type_product` (
  `cod_pro` varchar(30) NOT NULL,
  `type_pro` varchar(100) NOT NULL PRIMARY KEY,
  `cantidad` varchar(50) NOT NULL,
  `tall` varchar(30) NOT NULL,
  `colour` char(50) NOT NULL
  );
-- --------------------------------------------------------

--
-- TABLA DE  TIPOS DE PRODUCTOS
--

CREATE TABLE IF NOT EXISTS `report` (
  `cod_user` varchar(30) NOT NULL,
  `report_pro` varchar(50) NOT NULL PRIMARY KEY,
  `type_pro` varchar(100) NOT NULL
  );
-- --------------------------------------------------------
