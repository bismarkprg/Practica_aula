-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2025 a las 05:29:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliado`
--

CREATE TABLE `afiliado` (
  `cod_afiliado` int(4) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido1` varchar(150) DEFAULT NULL,
  `apellido2` varchar(150) DEFAULT NULL,
  `documento` varchar(200) DEFAULT NULL,
  `fechaNacimiento` varchar(10) DEFAULT NULL,
  `Telefono` varchar(25) DEFAULT NULL,
  `Direccion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `afiliado`
--

INSERT INTO `afiliado` (`cod_afiliado`, `nombre`, `apellido1`, `apellido2`, `documento`, `fechaNacimiento`, `Telefono`, `Direccion`) VALUES
(1, 'Juan', 'Pérez', 'López', 'DNI123', '1990-01-01', '123456789', 'Calle A'),
(2, 'Ana', 'García', 'Martínez', 'DNI456', '1985-05-10', '987654321', 'Calle B'),
(3, 'Luis', 'Rodríguez', 'Gómez', 'DNI789', '1992-07-20', '456123789', 'Calle C'),
(4, 'Carla', 'Fernández', 'Ruiz', 'DNI321', '1988-11-30', '321654987', 'Calle D'),
(5, 'Mario', 'López', 'Díaz', 'DNI654', '1995-03-15', '789456123', 'Calle E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `cod_area` int(4) NOT NULL,
  `area` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`cod_area`, `area`) VALUES
(1, 'Literatura'),
(2, 'Ciencias'),
(3, 'Educación'),
(4, 'Historia'),
(5, 'Arte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `cod_autor` int(4) NOT NULL,
  `autor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`cod_autor`, `autor`) VALUES
(1, 'Miguel de Cervantes'),
(2, 'Isaac Newton'),
(3, 'Albert Einstein'),
(4, 'Howard Zinn'),
(5, 'Pablo Picasso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `cod_editorial` int(4) NOT NULL,
  `editorial` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`cod_editorial`, `editorial`) VALUES
(1, 'Planeta'),
(2, 'Santillana'),
(3, 'Pearson'),
(4, 'McGraw-Hill'),
(5, 'Anaya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `cod_estado` int(1) NOT NULL,
  `estado` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`cod_estado`, `estado`) VALUES
(1, 'Disponible'),
(2, 'Prestado'),
(3, 'Dañado'),
(4, 'Perdido'),
(5, 'Reparación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoporexistencia`
--

CREATE TABLE `estadoporexistencia` (
  `cod_existencia` int(7) NOT NULL,
  `cod_estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadoporexistencia`
--

INSERT INTO `estadoporexistencia` (`cod_existencia`, `cod_estado`) VALUES
(10001, 1),
(10002, 2),
(10003, 3),
(10004, 4),
(10005, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `cod_libro` int(4) NOT NULL,
  `ISBN` varchar(500) DEFAULT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `cod_editorial` int(4) DEFAULT NULL,
  `cod_pais` int(4) DEFAULT NULL,
  `cod_tipolibro` int(4) DEFAULT NULL,
  `fechaLanzamiento` int(4) DEFAULT NULL,
  `edicion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`cod_libro`, `ISBN`, `Titulo`, `cod_editorial`, `cod_pais`, `cod_tipolibro`, `fechaLanzamiento`, `edicion`) VALUES
(1, 'ISBN001', 'El Quijote', 1, 1, 1, 1605, 'Primera'),
(2, 'ISBN002', 'La Ciencia Fácil', 2, 2, 2, 2010, 'Segunda'),
(3, 'ISBN003', 'Matemáticas 101', 3, 3, 3, 2015, 'Tercera'),
(4, 'ISBN004', 'Historia Universal', 4, 4, 4, 1999, 'Cuarta'),
(5, 'ISBN005', 'Arte Moderno', 5, 5, 5, 2005, 'Quinta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librosporarea`
--

CREATE TABLE `librosporarea` (
  `cod_libro` int(4) NOT NULL,
  `cod_area` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `librosporarea`
--

INSERT INTO `librosporarea` (`cod_libro`, `cod_area`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librosporautor`
--

CREATE TABLE `librosporautor` (
  `cod_libro` int(4) NOT NULL,
  `cod_autor` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `librosporautor`
--

INSERT INTO `librosporautor` (`cod_libro`, `cod_autor`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librosporexistencia`
--

CREATE TABLE `librosporexistencia` (
  `cod_existencia` int(7) NOT NULL,
  `cod_libro` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `librosporexistencia`
--

INSERT INTO `librosporexistencia` (`cod_existencia`, `cod_libro`) VALUES
(10001, 1),
(10002, 2),
(10003, 3),
(10004, 4),
(10005, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `cod_pais` int(4) NOT NULL,
  `pais` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`cod_pais`, `pais`) VALUES
(1, 'España'),
(2, 'México'),
(3, 'Argentina'),
(4, 'Colombia'),
(5, 'Chile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `cod_prestamo` int(4) NOT NULL,
  `cod_existencia` int(7) DEFAULT NULL,
  `cod_afiliado` int(4) DEFAULT NULL,
  `fechaPrestamo` varchar(10) DEFAULT NULL,
  `horaPrestamo` varchar(10) DEFAULT NULL,
  `cod_tipoPrestamo` char(1) DEFAULT NULL,
  `fechaEntrega` varchar(10) DEFAULT NULL,
  `horaEntrega` varchar(10) DEFAULT NULL,
  `estado` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`cod_prestamo`, `cod_existencia`, `cod_afiliado`, `fechaPrestamo`, `horaPrestamo`, `cod_tipoPrestamo`, `fechaEntrega`, `horaEntrega`, `estado`) VALUES
(1, 10001, 1, '2025-04-01', '09:00', 'A', '2025-04-10', '10:00', 'Devuelto'),
(2, 10002, 2, '2025-04-02', '10:30', 'B', '2025-04-20', '11:30', 'Pendiente'),
(3, 10003, 3, '2025-04-03', '08:15', 'C', '2025-04-03', '18:00', 'Devuelto'),
(4, 10004, 4, '2025-04-04', '11:45', 'D', '2025-04-11', '13:00', 'Pendiente'),
(5, 10005, 5, '2025-04-05', '12:00', 'E', '2025-04-15', '14:00', 'Retrasado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipolibro`
--

CREATE TABLE `tipolibro` (
  `cod_tipolibro` int(4) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipolibro`
--

INSERT INTO `tipolibro` (`cod_tipolibro`, `tipo`) VALUES
(1, 'Ficción'),
(2, 'Ciencia'),
(3, 'Educativo'),
(4, 'Historia'),
(5, 'Arte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoprestamo`
--

CREATE TABLE `tipoprestamo` (
  `cod_tipoPrestamo` char(1) NOT NULL,
  `tipoPrestamo` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoprestamo`
--

INSERT INTO `tipoprestamo` (`cod_tipoPrestamo`, `tipoPrestamo`) VALUES
('A', 'Corto Plazo'),
('B', 'Largo Plazo'),
('C', 'Referencia'),
('D', 'Interbibliotecario'),
('E', 'Especial');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliado`
--
ALTER TABLE `afiliado`
  ADD PRIMARY KEY (`cod_afiliado`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`cod_area`);

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`cod_autor`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`cod_editorial`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`cod_estado`);

--
-- Indices de la tabla `estadoporexistencia`
--
ALTER TABLE `estadoporexistencia`
  ADD PRIMARY KEY (`cod_existencia`,`cod_estado`),
  ADD KEY `cod_estado` (`cod_estado`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`cod_libro`),
  ADD KEY `cod_editorial` (`cod_editorial`),
  ADD KEY `cod_pais` (`cod_pais`),
  ADD KEY `cod_tipolibro` (`cod_tipolibro`);

--
-- Indices de la tabla `librosporarea`
--
ALTER TABLE `librosporarea`
  ADD PRIMARY KEY (`cod_libro`,`cod_area`),
  ADD KEY `cod_area` (`cod_area`);

--
-- Indices de la tabla `librosporautor`
--
ALTER TABLE `librosporautor`
  ADD PRIMARY KEY (`cod_libro`,`cod_autor`),
  ADD KEY `cod_autor` (`cod_autor`);

--
-- Indices de la tabla `librosporexistencia`
--
ALTER TABLE `librosporexistencia`
  ADD PRIMARY KEY (`cod_existencia`),
  ADD KEY `cod_libro` (`cod_libro`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`cod_pais`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`cod_prestamo`),
  ADD KEY `cod_existencia` (`cod_existencia`),
  ADD KEY `cod_afiliado` (`cod_afiliado`),
  ADD KEY `cod_tipoPrestamo` (`cod_tipoPrestamo`);

--
-- Indices de la tabla `tipolibro`
--
ALTER TABLE `tipolibro`
  ADD PRIMARY KEY (`cod_tipolibro`);

--
-- Indices de la tabla `tipoprestamo`
--
ALTER TABLE `tipoprestamo`
  ADD PRIMARY KEY (`cod_tipoPrestamo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estadoporexistencia`
--
ALTER TABLE `estadoporexistencia`
  ADD CONSTRAINT `estadoporexistencia_ibfk_1` FOREIGN KEY (`cod_existencia`) REFERENCES `librosporexistencia` (`cod_existencia`),
  ADD CONSTRAINT `estadoporexistencia_ibfk_2` FOREIGN KEY (`cod_estado`) REFERENCES `estado` (`cod_estado`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`cod_editorial`) REFERENCES `editorial` (`cod_editorial`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`),
  ADD CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`cod_tipolibro`) REFERENCES `tipolibro` (`cod_tipolibro`);

--
-- Filtros para la tabla `librosporarea`
--
ALTER TABLE `librosporarea`
  ADD CONSTRAINT `librosporarea_ibfk_1` FOREIGN KEY (`cod_libro`) REFERENCES `libro` (`cod_libro`),
  ADD CONSTRAINT `librosporarea_ibfk_2` FOREIGN KEY (`cod_area`) REFERENCES `area` (`cod_area`);

--
-- Filtros para la tabla `librosporautor`
--
ALTER TABLE `librosporautor`
  ADD CONSTRAINT `librosporautor_ibfk_1` FOREIGN KEY (`cod_libro`) REFERENCES `libro` (`cod_libro`),
  ADD CONSTRAINT `librosporautor_ibfk_2` FOREIGN KEY (`cod_autor`) REFERENCES `autor` (`cod_autor`);

--
-- Filtros para la tabla `librosporexistencia`
--
ALTER TABLE `librosporexistencia`
  ADD CONSTRAINT `librosporexistencia_ibfk_1` FOREIGN KEY (`cod_libro`) REFERENCES `libro` (`cod_libro`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`cod_existencia`) REFERENCES `librosporexistencia` (`cod_existencia`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`cod_afiliado`) REFERENCES `afiliado` (`cod_afiliado`),
  ADD CONSTRAINT `prestamo_ibfk_3` FOREIGN KEY (`cod_tipoPrestamo`) REFERENCES `tipoprestamo` (`cod_tipoPrestamo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
