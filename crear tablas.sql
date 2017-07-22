-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2017 a las 23:12:01
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actos`
--

CREATE TABLE `actos` (
  `id_acto` int(11) NOT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `descripccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actos`
--

INSERT INTO `actos` (`id_acto`, `clave`, `descripccion`) VALUES
(1, '10-0', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bomberos`
--

CREATE TABLE `bomberos` (
  `id_bomberos` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `cargo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bomberos`
--

INSERT INTO `bomberos` (`id_bomberos`, `Nombre`, `ApellidoP`, `ApellidoM`, `cargo`) VALUES
(1, 'William', 'vera', 'romero', 'Bomberos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carros`
--

CREATE TABLE `carros` (
  `id_carro` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combustible`
--

CREATE TABLE `combustible` (
  `id_combustible` int(11) NOT NULL,
  `id_carro` varchar(45) DEFAULT NULL,
  `nro_boleta` varchar(45) DEFAULT NULL,
  `litros` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `combustible` varchar(45) DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_carro` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `id_salida` int(11) NOT NULL,
  `id_acto` int(11) DEFAULT NULL,
  `id_carro` int(11) DEFAULT NULL,
  `hora_salida` varchar(45) DEFAULT NULL,
  `hora_llegada` varchar(45) DEFAULT NULL,
  `km_salida` varchar(45) DEFAULT NULL,
  `km_llegada` varchar(45) DEFAULT NULL,
  `dir` varchar(45) DEFAULT NULL,
  `Comuna` varchar(45) DEFAULT NULL,
  `Conductor` varchar(45) DEFAULT NULL,
  `obac` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salida`
--

INSERT INTO `salida` (`id_salida`, `id_acto`, `id_carro`, `hora_salida`, `hora_llegada`, `km_salida`, `km_llegada`, `dir`, `Comuna`, `Conductor`, `obac`) VALUES
(1, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'bob', '9a618248b64db62d15b300a07b00580b'),
(2, 'admin', '202cb962ac59075b964b07152d234b70'),
(3, 'jorge', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actos`
--
ALTER TABLE `actos`
  ADD PRIMARY KEY (`id_acto`),
  ADD UNIQUE KEY `id_acto` (`id_acto`);

--
-- Indices de la tabla `bomberos`
--
ALTER TABLE `bomberos`
  ADD PRIMARY KEY (`id_bomberos`);

--
-- Indices de la tabla `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id_carro`);

--
-- Indices de la tabla `combustible`
--
ALTER TABLE `combustible`
  ADD PRIMARY KEY (`id_combustible`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`id_salida`),
  ADD KEY `id_salida` (`id_salida`),
  ADD KEY `FK_actosasalidas` (`id_acto`),
  ADD KEY `FK_bomberosasalidas` (`obac`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actos`
--
ALTER TABLE `actos`
  MODIFY `id_acto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `bomberos`
--
ALTER TABLE `bomberos`
  MODIFY `id_bomberos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `salida`
--
ALTER TABLE `salida`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `FK_actosasalidas` FOREIGN KEY (`id_acto`) REFERENCES `actos` (`id_acto`),
  ADD CONSTRAINT `FK_bomberosasalidas` FOREIGN KEY (`obac`) REFERENCES `bomberos` (`id_bomberos`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
