-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-11-2024 a las 01:17:10
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mutants_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mutant`
--

CREATE TABLE `mutant` (
  `id_dna` bigint(20) NOT NULL,
  `dna` varbinary(255) DEFAULT NULL,
  `mutant_or_human` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `mutant`
--

INSERT INTO `mutant` (`id_dna`, `dna`, `mutant_or_human`) VALUES
(1, 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000006740006415447434741740006434147544743740006545441544754740006414741414747740006434343435441740006544341435447, b'0'),
(2, 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000006740006415447434741740006434147544743740006545441545454740006414741434747740006474347544341740006544341435447, b'1'),
(3, 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000006740006415447434741740006434147544743740006545441544754740006414741414747740006434343435441740006544341435447, b'0'),
(4, 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000006740006415447434741740006434147544743740006545441544754740006414741414747740006434343435441740006544341435447, b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stats`
--

CREATE TABLE `stats` (
  `id_stats` bigint(20) NOT NULL,
  `count_human_dna` int(11) NOT NULL,
  `count_mutant_dna` int(11) NOT NULL,
  `ratio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `stats`
--

INSERT INTO `stats` (`id_stats`, `count_human_dna`, `count_mutant_dna`, `ratio`) VALUES
(1, 3, 1, 0.3333333333333333);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mutant`
--
ALTER TABLE `mutant`
  ADD PRIMARY KEY (`id_dna`);

--
-- Indices de la tabla `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id_stats`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mutant`
--
ALTER TABLE `mutant`
  MODIFY `id_dna` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `stats`
--
ALTER TABLE `stats`
  MODIFY `id_stats` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
