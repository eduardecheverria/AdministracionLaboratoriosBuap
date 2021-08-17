-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2019 a las 22:41:26
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `idactividad` int(20) NOT NULL,
  `matricula_modulador` int(9) NOT NULL,
  `articulo_idarticulo` int(10) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(6) NOT NULL,
  `actividad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`idactividad`, `matricula_modulador`, `articulo_idarticulo`, `fecha`, `hora`, `actividad`) VALUES
(7, 201309505, 11, '09.01.19', '01:26 ', 'gfhfu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(5) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `nombre`) VALUES
(11, 'pc3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idsolicitud` int(100) NOT NULL,
  `matricula` int(9) NOT NULL,
  `url_local` varchar(250) NOT NULL,
  `url_descargar` varchar(250) NOT NULL,
  `notas` varchar(250) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idsolicitud`, `matricula`, `url_local`, `url_descargar`, `notas`, `nombre`, `status`) VALUES
(1, 201309506, '', 'rytyhiujoi', 'rtyuiop', 'tgyhiuoijpkolp', 'En espera'),
(2, 201309506, '', 'edrthfygju', 'etr', 'wqewr', 'En espera'),
(3, 201309506, '', 'etrytf', 'etyrtuy', 'wteyrtyg', 'En espera'),
(9, 201409505, '', 'dfytkgulihÃ±oj', 'jhghggjhg', 'riyftgulhiÃ±jokp', 'Completada'),
(10, 201409505, '', 'google.com', 'n', 'yhuj', 'En espera'),
(11, 201409505, '', 'https://www.google.com/', 'uhijkll', 'fhgjlkl', 'En espera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `matricula` int(9) NOT NULL,
  `apellidop` varchar(30) NOT NULL,
  `apellidom` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contra` varchar(8) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `tipo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`matricula`, `apellidop`, `apellidom`, `nombre`, `email`, `contra`, `carrera`, `tipo`) VALUES
(201309505, 'algo', 'algo', 'eduardo', 'obi_22@hotmail.com', '12345678', 'ITI', 'modulador'),
(201409505, 'profesor', 'profesor', 'profesor', 'obi_22@hotmail.com', '12345678', 'ITI', 'profesor'),
(201309506, 'fyguhjiklÃ±Ã±', 'fghjjkkllÃ±Ã±', 'erguhijok', 'obi_22@hotmail.com', '12345678', 'Ingenieria', 'profesor'),
(202012345, 'gihjkl{', 'hjklÃ±', 'yuioui', 'omar@buap.com', '12345678', 'Ingenieria', 'estudiante'),
(201209506, 'hnjmkl.{Ã±', 'hjklÃ±', 'e5drftgyuhijokp', 'obi_22@hotmail.com', '12345678', 'ITI', 'estudiante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`idactividad`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idsolicitud`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `idactividad` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idsolicitud` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
