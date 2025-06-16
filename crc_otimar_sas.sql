-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2025 a las 03:45:55
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
-- Base de datos: `crc otimar sas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio sesión`
--

CREATE TABLE `inicio sesión` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inicio sesión`
--

INSERT INTO `inicio sesión` (`id`, `usuario`, `contraseña`, `created_at`, `updated_at`) VALUES
(1, 'evelynrodriguezfotografa@gmail.com', 'yuueheu34784r9', '2024-08-10 16:21:03', '2024-08-10 16:21:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(4) NOT NULL,
  `nombre completo` varchar(100) NOT NULL,
  `tipo de documento` varchar(25) NOT NULL,
  `número de documento` varchar(50) NOT NULL,
  `nacionalidad` varchar(25) NOT NULL,
  `celular` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha de nacimiento` date NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombre completo`, `tipo de documento`, `número de documento`, `nacionalidad`, `celular`, `email`, `fecha de nacimiento`, `usuario`, `contraseña`, `created_at`, `updated_at`) VALUES
(3, 'Evelyn Mercedes Rodríguez Ariza', 'CC', '37840916', 'Colombiana', '3127910006', 'evelynrodriguezfotografa@gmail.com', '1980-12-20', 'EvelynR', '37840916Mechis%2389', '2024-07-15 14:00:24', '2024-07-15 14:00:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inicio sesión`
--
ALTER TABLE `inicio sesión`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inicio sesión`
--
ALTER TABLE `inicio sesión`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
