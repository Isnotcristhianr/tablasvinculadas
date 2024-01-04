-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-01-2024 a las 01:58:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_funciones_ventana`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estudiantes`
--

CREATE TABLE `tbl_estudiantes` (
  `est_id` int(11) NOT NULL,
  `est_nombre` varchar(50) NOT NULL,
  `est_nota` int(3) NOT NULL,
  `est_nota2` int(3) NOT NULL,
  `est_nota3` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_estudiantes`
--

INSERT INTO `tbl_estudiantes` (`est_id`, `est_nombre`, `est_nota`, `est_nota2`, `est_nota3`) VALUES
(1, 'maria', 6, 5, 7),
(2, 'roberto', 8, 5, 10),
(3, 'sandra', 7, 6, 7),
(4, 'PEDRO', 8, 8, 8),
(5, 'LUCAS', 7, 8, 10),
(6, 'ROSITA ', 10, 9, 8),
(7, 'LUIS', 9, 7, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_estudiantes`
--
ALTER TABLE `tbl_estudiantes`
  ADD PRIMARY KEY (`est_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_estudiantes`
--
ALTER TABLE `tbl_estudiantes`
  MODIFY `est_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
