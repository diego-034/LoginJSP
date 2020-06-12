-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2020 a las 20:56:01
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `qux`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(10) UNSIGNED NOT NULL,
  `Nombres` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellidos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Correo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Telefono` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Celular` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contrasena` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Nombres`, `Apellidos`, `Correo`, `Telefono`, `Celular`, `NIT`, `Contrasena`, `Estado`, `created_at`, `updated_at`) VALUES
(1, 'Pedro Pablo', 'Gomez Ordoñez', 'pedropablo@mail.com', '5803490', '3016580934', '232423432', 'PedroPablo123', 1, '2020-06-12 03:32:59', '2020-06-12 03:32:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
