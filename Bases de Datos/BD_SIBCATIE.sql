-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2018 a las 22:35:01
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_sibcatie`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `idColor` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE `continente` (
  `idContinente` int(11) NOT NULL,
  `nombre_continente` varchar(45) DEFAULT NULL,
  `ZonaCardinal_idZonaCardinal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `determinadapor`
--

CREATE TABLE `determinadapor` (
  `idDeterminadaPor` int(11) NOT NULL,
  `nombre_determinada` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epiteto`
--

CREATE TABLE `epiteto` (
  `idEpiteto` int(11) NOT NULL,
  `nombre_epiteto` varchar(45) DEFAULT NULL,
  `referencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadosalud`
--

CREATE TABLE `estadosalud` (
  `idEstadoSalud` int(11) NOT NULL,
  `nombre_estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

CREATE TABLE `familia` (
  `idFamilia` int(11) NOT NULL,
  `nombre_familia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma`
--

CREATE TABLE `forma` (
  `idForma` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `caracteristicas` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE `foto` (
  `idFoto` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `latitud` int(11) DEFAULT NULL,
  `longitud` int(11) DEFAULT NULL,
  `Planta_idPlanta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombrecomun`
--

CREATE TABLE `nombrecomun` (
  `idNombreComun` int(11) NOT NULL,
  `nombre_comun` varchar(45) DEFAULT NULL,
  `lengua` varchar(45) DEFAULT NULL,
  `Planta_idPlanta` int(11) NOT NULL,
  `Planta_Forma_idForma` int(11) NOT NULL,
  `Planta_EstadoSalud_idEstadoSalud` int(11) NOT NULL,
  `Planta_Color_idColor` int(11) NOT NULL,
  `Planta_TipoHoja_idTipoHoja` int(11) NOT NULL,
  `Planta_Genero_idGenero` int(11) NOT NULL,
  `Planta_Epiteto_idEpiteto` int(11) NOT NULL,
  `Planta_Continente_idContinente` int(11) NOT NULL,
  `Planta_ZonaCardinal_idZonaCardinal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta`
--

CREATE TABLE `planta` (
  `idPlanta` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fuente_informacion` varchar(45) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `altura` int(11) DEFAULT NULL,
  `reproduccion` tinyint(4) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `Forma_idForma` int(11) NOT NULL,
  `EstadoSalud_idEstadoSalud` int(11) NOT NULL,
  `Color_idColor` int(11) NOT NULL,
  `TipoHoja_idTipoHoja` int(11) NOT NULL,
  `Genero_idGenero` int(11) NOT NULL,
  `Epiteto_idEpiteto` int(11) NOT NULL,
  `Continente_idContinente` int(11) NOT NULL,
  `ZonaCardinal_idZonaCardinal` int(11) NOT NULL,
  `Familia_idFamilia` int(11) NOT NULL,
  `DeterminadaPor_idDeterminadaPor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta_has_uso`
--

CREATE TABLE `planta_has_uso` (
  `Planta_idPlanta` int(11) NOT NULL,
  `Planta_Forma_idForma` int(11) NOT NULL,
  `Planta_EstadoSalud_idEstadoSalud` int(11) NOT NULL,
  `Planta_Color_idColor` int(11) NOT NULL,
  `Planta_TipoHoja_idTipoHoja` int(11) NOT NULL,
  `Planta_Genero_idGenero` int(11) NOT NULL,
  `Uso_idUso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohoja`
--

CREATE TABLE `tipohoja` (
  `idTipoHoja` int(11) NOT NULL,
  `nombre_hoja` varchar(45) DEFAULT NULL,
  `forma` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uso`
--

CREATE TABLE `uso` (
  `idUso` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `activo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `email`, `password`, `fecha_registro`, `activo`) VALUES
(1, 'luisSolano', 'luis82007@hotmail.com', 'admin123', '2018-05-07 00:00:00', 1),
(2, 'oscarDuarte', 'oscar@hotmail.com', 'admin123', '2018-05-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonacardinal`
--

CREATE TABLE `zonacardinal` (
  `idZonaCardinal` int(11) NOT NULL,
  `nombre_cardinal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`idColor`);

--
-- Indices de la tabla `continente`
--
ALTER TABLE `continente`
  ADD PRIMARY KEY (`idContinente`,`ZonaCardinal_idZonaCardinal`),
  ADD KEY `fk_Continente_ZonaCardinal1_idx` (`ZonaCardinal_idZonaCardinal`);

--
-- Indices de la tabla `determinadapor`
--
ALTER TABLE `determinadapor`
  ADD PRIMARY KEY (`idDeterminadaPor`);

--
-- Indices de la tabla `epiteto`
--
ALTER TABLE `epiteto`
  ADD PRIMARY KEY (`idEpiteto`);

--
-- Indices de la tabla `estadosalud`
--
ALTER TABLE `estadosalud`
  ADD PRIMARY KEY (`idEstadoSalud`);

--
-- Indices de la tabla `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`idFamilia`);

--
-- Indices de la tabla `forma`
--
ALTER TABLE `forma`
  ADD PRIMARY KEY (`idForma`);

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`idFoto`,`Planta_idPlanta`),
  ADD KEY `fk_Foto_Planta_idx` (`Planta_idPlanta`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `nombrecomun`
--
ALTER TABLE `nombrecomun`
  ADD PRIMARY KEY (`idNombreComun`,`Planta_idPlanta`,`Planta_Forma_idForma`,`Planta_EstadoSalud_idEstadoSalud`,`Planta_Color_idColor`,`Planta_TipoHoja_idTipoHoja`,`Planta_Genero_idGenero`,`Planta_Epiteto_idEpiteto`,`Planta_Continente_idContinente`,`Planta_ZonaCardinal_idZonaCardinal`),
  ADD KEY `fk_NombreComun_Planta1_idx` (`Planta_idPlanta`,`Planta_Forma_idForma`,`Planta_EstadoSalud_idEstadoSalud`,`Planta_Color_idColor`,`Planta_TipoHoja_idTipoHoja`,`Planta_Genero_idGenero`,`Planta_Epiteto_idEpiteto`,`Planta_Continente_idContinente`,`Planta_ZonaCardinal_idZonaCardinal`);

--
-- Indices de la tabla `planta`
--
ALTER TABLE `planta`
  ADD PRIMARY KEY (`idPlanta`,`Forma_idForma`,`EstadoSalud_idEstadoSalud`,`Color_idColor`,`TipoHoja_idTipoHoja`,`Genero_idGenero`,`Epiteto_idEpiteto`,`Continente_idContinente`,`ZonaCardinal_idZonaCardinal`,`Familia_idFamilia`,`DeterminadaPor_idDeterminadaPor`),
  ADD KEY `fk_Planta_Forma1_idx` (`Forma_idForma`),
  ADD KEY `fk_Planta_EstadoSalud1_idx` (`EstadoSalud_idEstadoSalud`),
  ADD KEY `fk_Planta_Color1_idx` (`Color_idColor`),
  ADD KEY `fk_Planta_TipoHoja1_idx` (`TipoHoja_idTipoHoja`),
  ADD KEY `fk_Planta_Genero1_idx` (`Genero_idGenero`),
  ADD KEY `fk_Planta_Epiteto1_idx` (`Epiteto_idEpiteto`),
  ADD KEY `fk_Planta_Continente1_idx` (`Continente_idContinente`),
  ADD KEY `fk_Planta_ZonaCardinal1_idx` (`ZonaCardinal_idZonaCardinal`),
  ADD KEY `fk_Planta_Familia1_idx` (`Familia_idFamilia`),
  ADD KEY `fk_Planta_DeterminadaPor1_idx` (`DeterminadaPor_idDeterminadaPor`);

--
-- Indices de la tabla `planta_has_uso`
--
ALTER TABLE `planta_has_uso`
  ADD PRIMARY KEY (`Planta_idPlanta`,`Planta_Forma_idForma`,`Planta_EstadoSalud_idEstadoSalud`,`Planta_Color_idColor`,`Planta_TipoHoja_idTipoHoja`,`Planta_Genero_idGenero`,`Uso_idUso`),
  ADD KEY `fk_Planta_has_Uso_Uso1_idx` (`Uso_idUso`),
  ADD KEY `fk_Planta_has_Uso_Planta1_idx` (`Planta_idPlanta`,`Planta_Forma_idForma`,`Planta_EstadoSalud_idEstadoSalud`,`Planta_Color_idColor`,`Planta_TipoHoja_idTipoHoja`,`Planta_Genero_idGenero`);

--
-- Indices de la tabla `tipohoja`
--
ALTER TABLE `tipohoja`
  ADD PRIMARY KEY (`idTipoHoja`);

--
-- Indices de la tabla `uso`
--
ALTER TABLE `uso`
  ADD PRIMARY KEY (`idUso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zonacardinal`
--
ALTER TABLE `zonacardinal`
  ADD PRIMARY KEY (`idZonaCardinal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `continente`
--
ALTER TABLE `continente`
  ADD CONSTRAINT `fk_Continente_ZonaCardinal1` FOREIGN KEY (`ZonaCardinal_idZonaCardinal`) REFERENCES `zonacardinal` (`idZonaCardinal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `fk_Foto_Planta` FOREIGN KEY (`Planta_idPlanta`) REFERENCES `planta` (`idPlanta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nombrecomun`
--
ALTER TABLE `nombrecomun`
  ADD CONSTRAINT `fk_NombreComun_Planta1` FOREIGN KEY (`Planta_idPlanta`,`Planta_Forma_idForma`,`Planta_EstadoSalud_idEstadoSalud`,`Planta_Color_idColor`,`Planta_TipoHoja_idTipoHoja`,`Planta_Genero_idGenero`,`Planta_Epiteto_idEpiteto`,`Planta_Continente_idContinente`,`Planta_ZonaCardinal_idZonaCardinal`) REFERENCES `planta` (`idPlanta`, `Forma_idForma`, `EstadoSalud_idEstadoSalud`, `Color_idColor`, `TipoHoja_idTipoHoja`, `Genero_idGenero`, `Epiteto_idEpiteto`, `Continente_idContinente`, `ZonaCardinal_idZonaCardinal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planta`
--
ALTER TABLE `planta`
  ADD CONSTRAINT `fk_Planta_Color1` FOREIGN KEY (`Color_idColor`) REFERENCES `color` (`idColor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Continente1` FOREIGN KEY (`Continente_idContinente`) REFERENCES `continente` (`idContinente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_DeterminadaPor1` FOREIGN KEY (`DeterminadaPor_idDeterminadaPor`) REFERENCES `determinadapor` (`idDeterminadaPor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Epiteto1` FOREIGN KEY (`Epiteto_idEpiteto`) REFERENCES `epiteto` (`idEpiteto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_EstadoSalud1` FOREIGN KEY (`EstadoSalud_idEstadoSalud`) REFERENCES `estadosalud` (`idEstadoSalud`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Familia1` FOREIGN KEY (`Familia_idFamilia`) REFERENCES `familia` (`idFamilia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Forma1` FOREIGN KEY (`Forma_idForma`) REFERENCES `forma` (`idForma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Genero1` FOREIGN KEY (`Genero_idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_TipoHoja1` FOREIGN KEY (`TipoHoja_idTipoHoja`) REFERENCES `tipohoja` (`idTipoHoja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_ZonaCardinal1` FOREIGN KEY (`ZonaCardinal_idZonaCardinal`) REFERENCES `zonacardinal` (`idZonaCardinal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planta_has_uso`
--
ALTER TABLE `planta_has_uso`
  ADD CONSTRAINT `fk_Planta_has_Uso_Planta1` FOREIGN KEY (`Planta_idPlanta`,`Planta_Forma_idForma`,`Planta_EstadoSalud_idEstadoSalud`,`Planta_Color_idColor`,`Planta_TipoHoja_idTipoHoja`,`Planta_Genero_idGenero`) REFERENCES `planta` (`idPlanta`, `Forma_idForma`, `EstadoSalud_idEstadoSalud`, `Color_idColor`, `TipoHoja_idTipoHoja`, `Genero_idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_has_Uso_Uso1` FOREIGN KEY (`Uso_idUso`) REFERENCES `uso` (`idUso`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
