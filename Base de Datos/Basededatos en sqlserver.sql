



CREATE DATABASE inventarline  
go

USE inventarline  
go


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla roles
--

CREATE TABLE rol (
  id            numeric(20)       NOT NULL PRIMARY KEY ,
  description   varchar(50)       NOT NULL,
  pay           numeric(10)       NOT NULL
) 
go

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE logi (
  id        numeric(20)   NOT NULL     PRIMARY KEY,
  name      varchar(20)   NOT NULL,
  pass  varchar(20)   NOT NULL
) 
go

-- --------------------------------------------------------
--
-- TABLA tallas
--

CREATE TABLE size (
  id              numeric(20)       NOT NULL   PRIMARY KEY,
  size_product    varchar(100)      NOT NULL
)
go

-- --------------------------------------------------------
--
-- TABLA Colores
--
CREATE TABLE colour (
  id             numeric(20)     NOT NULL   PRIMARY KEY,
  name_colour    varchar(50)     NOT NULL
)
go

-- --------------------------------------------------------
--
-- TABLA categorias
--
CREATE TABLE category(
  id          numeric(20)     NOT NULL  PRIMARY KEY,
  type_cat    varchar(25)     NOT NULL 
)
go
-- --------------------------------------------------------
--
-- TABLA marca= brand (product name)
--
CREATE TABLE brand(
  id            numeric(20)     NOT NULL  PRIMARY KEY ,
  type_brand    varchar(25)     NOT NULL 
)
go


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla employee
--

CREATE TABLE employee (
  id          numeric(20)       NOT NULL     PRIMARY KEY,
  name        varchar(50)       NOT NULL,
  lastname    varchar(50)       NOT NULL,
  dni         char(8)           NOT NULL,
  dateborn    date              NOT NULL,
  datestart   date              NOT NULL,
  city        varchar(50)       NOT NULL,
  add_emp     varchar(50)       NOT NULL,
  id_login    numeric(20)       NOT NULL,
  id_role     numeric(20)       NOT NULL,

  FOREIGN KEY (id_login) References logi(id)  ON UPDATE CASCADE,
  FOREIGN KEY (id_role) References rol(id)  ON UPDATE CASCADE

) 
go

-- -----------------------------------------------------------
--
-- TABLA producto
--

CREATE TABLE prod (
  id          numeric(20)           NOT NULL,
  name_prod   char (100)            NOT NULL,
  precio      numeric(20)           NOT NULL,
  stock       numeric(20)           NOT NULL,
  id_size     numeric(20)           NOT NULL,
  id_colour   numeric(20)           NOT NULL,
  id_category numeric(20)           NOT NULL,
  id_brand    numeric(20)           NOT NULL,
 PRIMARY KEY (id), 

 FOREIGN KEY (id_size) References size(id)  ON UPDATE CASCADE,
 FOREIGN KEY (id_colour) References colour(id)  ON UPDATE CASCADE,
 FOREIGN KEY (id_category) References category(id) ON UPDATE CASCADE, 
 FOREIGN KEY (id_brand) References brand(id)

) 
go
-- -----------------------------------------------------------
--
-- TABLA tranferencia =  transfer 
--

CREATE TABLE transf(
  id              numeric(20)       NOT NULL,
  type_transfer   char(30)          NOT NULL,
  date_transfer   date              NOT NULL,
  id_employ       numeric(20)       NOT NULL,
  id_prod      numeric(20)       NOT NULL,
 PRIMARY KEY (id), 

 FOREIGN KEY (id_employ) REFERENCES employee (id) ON UPDATE CASCADe,
 FOREIGN KEY (id_prod) References prod(id)
)
go


select * from transf
select * from prod
select * from size
select * from colour
select * from employee
select * from rol
select * from category
select * from brand
select * from logi

