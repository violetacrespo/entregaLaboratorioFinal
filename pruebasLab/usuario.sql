-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2023 a las 19:04:55
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
-- Base de datos: `samsung`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `login` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `primerApellido` varchar(30) NOT NULL,
  `segundoApellido` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`login`, `nombre`, `primerApellido`, `segundoApellido`, `email`, `contraseña`) VALUES
('ajdajsd', 'svpalksdnvoand', 'kjvnakdvnland', 'nvasdlvnñlasdn', 'dsjvkjdvnajsnv@gmail.com', 'ncxnvk'),
('apsjdvpqoecn', 'djvnaskdvnkqn', 'kdvnasjvnajn', 'dnvkajsnvjned', 'pkjnvkajvnkadn@gmail.com', 'acasd'),
('brandy', 'nramdy', 'vadskjvn', 'kdvnadnv', 'dvnajsdnvowr@gmail.com', 'violeta'),
('dagnanvpoa', 'dsjvnapsodnvon', 'jvnakdnvpoasdvn', 'aosdnvpoasdvnadpkbb', 'holiwisquetal@gmail.com', 'holaq'),
('ferfe', 'ferf', 'ferfr', 'fref', 'ferf@gmail.com', 'fertryt'),
('gerg', 'gergr', 'gergr', 'greg', 'grg@gmail.com', '3456788'),
('gwpiaevp', 'jasdjvnidn', 'fvajnvjsdih', 'jrvajdovjwriojd', 'jfovjasdojvaoi@gmail.com', 'adjvoa'),
('holi', 'holi', 'holi', 'holi', 'holi@gmail.com', 'dfjoèan'),
('holiwis', 'dfvasdnv', 'dncapsdfnv', 'jncaisdvn', 'aposdfhoiweq@gmail.com', 'dfjoaa'),
('joaquin', 'Joaquin', 'crespo', 'martinez', 'jcrespo2002@hotmail.com', 'joaquin'),
('juanito', 'juanito', 'juanito', 'juanito', 'juanito@gmail.com', 'pepeto'),
('marta', 'marta', 'lopez', 'alamo', 'martalopez@gmail', 'marta'),
('messi', 'messi', 'messi', 'messi', 'messi@gmail.com', 'mmesso'),
('paco', 'merte', 'merte', 'merte', 'mertepaco@gmail.com', 'asdfae'),
('pepe', 'perex', 'padvoi', 'dvjapdg', 'adifjaoijae@gmail.com', 'violeta'),
('pepitodelospalotes', 'pepito', 'delos', 'pelotes', 'pepitodelospalotes@gmail.com', 'pepito'),
('pwpw', 'foavo', 'dnvandvon', 'nvanvdn', 'holi@gmial.com', 'holis'),
('violet', 'Violeta', 'cobas', 'MARTINEZ', 'violeta@gmail.com', 'holis');


ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
