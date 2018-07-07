-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2018 a las 04:28:33
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
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `idClase` int(11) NOT NULL,
  `nombre_clase` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`idClase`, `nombre_clase`) VALUES
(7, '11'),
(8, 'aaaa'),
(1, 'dfhsdgfhsfdg2'),
(4, 'fdghkjrfgsdfgh'),
(5, 'sdfghdtyhkfdghhjs'),
(2, 'sdfgsdfgsdfg'),
(3, 'sdfhsdfghdfgj'),
(6, 'sfgjfgjuhksewsfg'),
(9, 'sss');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `idColor` int(11) NOT NULL,
  `nombre_color` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`idColor`, `nombre_color`) VALUES
(1, 'dSYQgKg4cC2'),
(2, '3OCwiX6SIt'),
(3, 'hGGUmlfN71'),
(4, 'OHqTGwAB3R'),
(5, 'qAxZuC5nwX'),
(6, 'ZIsK3wM4Yr'),
(7, 'XMR8nqR55i'),
(8, 'TcVc7VxzkX'),
(9, '6SIrltk6YA'),
(10, '5LlrJ6lpFe'),
(11, '123'),
(12, 'Rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `consulta` text,
  `fecha_consulta` datetime NOT NULL,
  `url_foto` varchar(255) NOT NULL,
  `latitud` decimal(10,0) DEFAULT NULL,
  `longitud` decimal(10,0) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE `continente` (
  `idContinente` int(11) NOT NULL,
  `nombre_continente` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `continente`
--

INSERT INTO `continente` (`idContinente`, `nombre_continente`) VALUES
(1, 'America'),
(2, 'Africa'),
(3, 'Asia'),
(4, 'Europa'),
(5, 'Oceania');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `determinadapor`
--

CREATE TABLE `determinadapor` (
  `idDeterminadaPor` int(11) NOT NULL,
  `nombre_determinado` varchar(45) NOT NULL,
  `fecha_determinado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `determinadapor`
--

INSERT INTO `determinadapor` (`idDeterminadaPor`, `nombre_determinado`, `fecha_determinado`) VALUES
(1, 'XjFTXRDUSfPSzEX2', '0000-00-00'),
(2, '$nombre_determinado', '0000-00-00'),
(3, 'sfqRK5SC9dNbvYk', '0000-00-00'),
(4, '8feYCCUKOb5U3LX', '0000-00-00'),
(5, '0P4oVjhXfTcCoU5', '0000-00-00'),
(6, 'Pm8ivIvS5Fimn0j', '0000-00-00'),
(7, 'KqGSxduhIVLPzXP', '0000-00-00'),
(8, 'SongdYyKAyXMDUM', '0000-00-00'),
(9, 'Ih3Qt5CHxOXMInU', '0000-00-00'),
(10, 'YX6HQCCxC9lrqjF', '0000-00-00'),
(11, 'dIZ8L3w6OYAzjHf', '0000-00-00'),
(12, 'QyW5D0fTalNkmXB', '0000-00-00'),
(13, 'pb3h0oU4zXBCNFG', '0000-00-00'),
(14, 'F79b4Rt63vRHGEt', '0000-00-00'),
(15, '1oXllUsvaLjLrJU', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `idDivision` int(11) NOT NULL,
  `nombre_division` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `division`
--

INSERT INTO `division` (`idDivision`, `nombre_division`) VALUES
(11, '1'),
(7, '123'),
(12, '2'),
(13, '3'),
(3, 'asdfghsrtfghjwsrtgfh'),
(8, 'recargar'),
(9, 'recargar 2'),
(10, 'recargar 3'),
(21, 'recargar10'),
(22, 'recargar11'),
(14, 'recargar4'),
(15, 'recargar5'),
(17, 'recargar6'),
(18, 'recargar7'),
(19, 'recargar8'),
(20, 'recargar9'),
(2, 'sadfhdfgjhsfgh'),
(23, 'scagf'),
(4, 'sdfghsrftgyjhswrfgt'),
(6, 'sdfghswrtygszw'),
(1, 'sdfhdfghjsdgfhas2'),
(5, 'sdtghwrystghsz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epiteto`
--

CREATE TABLE `epiteto` (
  `idEpiteto` int(11) NOT NULL,
  `nombre_epiteto` varchar(45) NOT NULL,
  `referencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `epiteto`
--

INSERT INTO `epiteto` (`idEpiteto`, `nombre_epiteto`, `referencia`) VALUES
(1, 'gVI99mpHzh2', 'YW.wcLAd5bLeM'),
(2, 'LzeBU14ix0', 'vk.eXZrbyWIbt'),
(3, 'zEqOUaeJlV', 'ED.dSl5cwSjKp'),
(4, 'Hkkhzx6FSu', 'jY.B7lEz0bll5'),
(5, 'aig80DSiyK', '6b.1LbiAwqUjq'),
(6, 'cjBPxgi3Zs', 'H2.8GETeIIrBb'),
(7, 'lk51O9A6pC', 'YT.uyy0xlrkv6'),
(8, 'GXCN8yrvDW', 'yl.wqkyZutuUh'),
(9, 'sDiv570Kyr', 'hl.cuo8bB8kKT'),
(10, 'xcT5sAZDvJ', 'oo.LRW0Iynlgk'),
(11, 'UjUGSA8kaB', 'Rj.oUR2XVsYcq'),
(12, 'X3jQog15lo', '8s.B4qq4N537D'),
(13, 't7mSZ8ZpoT', '0a.YPcpwGfs1J'),
(14, '5SirhcCnOq', 'X9.Euu5u4xGHr'),
(15, 'zfETx5HjuA', 'LV.TvgWygKChe'),
(16, 'XfQcqrnn6L', 'yN.ad0wAviNfh'),
(17, 'zTYy9MdyC2', 'e6.9MSDPbP6Tq'),
(18, 'Ng4QdMQi21', 'l9.EB5ULW3Rr9'),
(19, 'E81rxnVDeO', 'aD.EybyA0puvV'),
(20, 'PlgltCUPp1', 'yA.gdMhlho0wm'),
(21, 'xHB4W8sALr', '6z.VBCLweS8yk'),
(22, 'PRGBOOpeGQ', 'xv.skmIfRvhol'),
(23, '7s5GjVDF2T', 'EW.YRI93Cr8od'),
(24, 'h2z59KZi2m', 'nV.p0d10d1of3'),
(25, 'gNA5ZDJsN9', 'jB.7dNIAp1sdS'),
(26, 'eJla3V5T6R', 'KH.IkRzXMd3dg'),
(27, 'MiqY1beFhW', '1t.qGV6PNvB9m'),
(28, 'aHjvJXKgi4', 'Z7.7TEmJQ8tY0'),
(29, 'NPk962AnQU', 'L1.By8W7ItWf7'),
(30, 'irAZI3ckTA', '3J.uM5nu2sbSA'),
(31, '123', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadosalud`
--

CREATE TABLE `estadosalud` (
  `idEstadoSalud` int(11) NOT NULL,
  `nombre_estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadosalud`
--

INSERT INTO `estadosalud` (`idEstadoSalud`, `nombre_estado`) VALUES
(1, '1- Apariencia muy saludable (80-100%)'),
(2, '2- Apariencia 60-80% saludable'),
(3, '3- Apariencia 40-60% saludable'),
(4, '4-Apariencia 20-40% saludable'),
(5, '5- Apariencia hasta un 29% saludable (poco saludable)'),
(6, '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exportar`
--

CREATE TABLE `exportar` (
  `Planta_idPlanta` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exportar`
--

INSERT INTO `exportar` (`Planta_idPlanta`, `Usuario_idUsuario`) VALUES
(15, 21),
(17, 22),
(25, 23),
(45, 26),
(51, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

CREATE TABLE `familia` (
  `idFamilia` int(11) NOT NULL,
  `nombre_familia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `familia`
--

INSERT INTO `familia` (`idFamilia`, `nombre_familia`) VALUES
(1, 'rieLL7xjeaC97Cy2'),
(2, 'WUvGGrzLfBqIZqk'),
(3, 'B6Wax4IsAXMedoA'),
(4, '5Lvd6nk04iQ5Ojb'),
(5, 'gZoSEOgYSOFSire'),
(6, 'SJovQBrJBGY4OKG'),
(7, 'PzPu7KdMN3fL11K'),
(8, 'SOgEj6BNsrj0RJE'),
(9, '4OXJpVA1M2msHYt'),
(10, '5QEUrgNPCFer2eL'),
(11, 'vQs4jcOaN9OliKr'),
(12, '1FQns40HPbRaRmt'),
(13, 'qUAuXgWz2i5WPXD'),
(14, 'XQqfhL3SWgWgjLg'),
(15, 'oz6CK9pUf4n5JVc'),
(16, 'CwBM2C7EixSNzrr'),
(17, 'YC3p9H3Z9Aix1hw'),
(18, 'JplDUffQ5KuRKVV'),
(19, 'iIWYLBvYi4rizaP'),
(20, 'XYY99woR5Y5q0js'),
(21, 'QTGEYtc6knc7fVr'),
(22, '99JOQU0Gm0cGxkh'),
(23, 'B94jpPp6juxsLrE'),
(24, 'MwqH47mMFLMsr0L'),
(25, 'u1bZsIJuYxqcWgc'),
(26, 'AMmFmKVhrISQosl'),
(27, 'RqDtjjUdf8cWIK0'),
(28, 'x6rcLzqx46qmBgx'),
(29, 'AFRG75FsIFcKHZT'),
(30, 'BdRTmVXzjej646B'),
(31, 'shx6eZfx25yWvvk'),
(32, 'H3Tzfz6ulr9R2GK'),
(33, 'SBRIS6yKAXYyc0L'),
(34, 'sbyICQT515FRnYZ'),
(35, 'EWXDaRLk3KIQkvj'),
(36, '2sHZyWlq1mCOynv'),
(37, 'w9cLwcUKFh7qPN5'),
(38, 'GfjRpm1vIpRvHYZ'),
(39, 'lYmX8BU7T3r0mJW'),
(40, 'RKet4KdT26aADXf'),
(41, 'gEoPOm2rxdfhWJj'),
(42, 'MatCLreioEdfJUd'),
(43, 'g0O9UcoW6x2moNi'),
(44, 'gp2hAOuvRx5QJh0'),
(45, 'xg3m6vih8WPlJ8c'),
(46, 'Sh876XMFA7JDUDy'),
(47, 'OtlU3EzQudh7Ohd'),
(48, 'pEXTyBJriPvkT7U'),
(49, 'eluyBShDB6KjbZl'),
(50, '4OTbfSnvJLQBlF2'),
(51, '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorito`
--

CREATE TABLE `favorito` (
  `Planta_idPlanta` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favorito`
--

INSERT INTO `favorito` (`Planta_idPlanta`, `Usuario_idUsuario`) VALUES
(1, 8),
(3, 39),
(26, 33),
(35, 31),
(59, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma`
--

CREATE TABLE `forma` (
  `idForma` int(11) NOT NULL,
  `nombre_forma` varchar(45) NOT NULL,
  `caracteristicas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `forma`
--

INSERT INTO `forma` (`idForma`, `nombre_forma`, `caracteristicas`) VALUES
(1, 'T3KkVPXfT82', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(2, 'GtjzOPNSFZ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(3, 'EjQPfrx3eQ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(4, 'EY8l5eem5o', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(5, 'r7v77lxTVG', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(6, 'TKgrunkM9D', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(7, 'IwyigfkREy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(8, 'Xy7u8dw20y', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(9, 'Oy6jfyaw3m', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(10, '8L5uvTQ4Eo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id tristique enim, vel venenatis erat.'),
(11, '123', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE `foto` (
  `idFoto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `latitud` decimal(10,0) DEFAULT NULL,
  `longitud` decimal(10,0) DEFAULT NULL,
  `Planta_idPlanta` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `EstadoSalud_idEstadoSalud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `nombre_genero` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idGenero`, `nombre_genero`) VALUES
(1, 'oYtopibFUVNNIbY2'),
(2, 'rgcytVKmupLXan5'),
(3, '5eAomkJWbzP8rI7'),
(4, 'GKhDWHR3bCf9Mns'),
(5, 'qHPwHVJJsUEkpMY'),
(6, 'K7Cz85ZrOTnLGRx'),
(7, 'mvBp7krCOhjgBUz'),
(8, 'tyeBCCqHzc4qWjx'),
(9, 'j7L5Z6tmWSXxPsN'),
(10, 'dE3dUugMne22ZU4'),
(11, '4sI4dH79LzH0bT8'),
(12, 'pPo9kD53wQuA6pC'),
(13, 'Z7Bjl0isOlzI3Ij'),
(14, '3gtIi9CsCiI1a1T'),
(15, 'DxzyN779YnvZC4H'),
(16, '2J1EO5fUzUrO0es'),
(17, 'Ywtt57LDtSPU0zF'),
(18, '3ya0AoisqqINIdf'),
(19, 'SZImGHXjjE4UUTI'),
(20, '57u0K4g10l14fvR'),
(21, 'cHynjaNVwjAMjbK'),
(22, 'JCUd1Kq7bEncIlg'),
(23, 'eo9CSLHnJJBQ9f4'),
(24, 'SWpCyf25gf7evyl'),
(25, 'G1poWWxPDnp5BlQ'),
(26, 'sYjrnYsolFwLb5n'),
(27, 'S2r5AzZFI125wCu'),
(28, 'QId5uVE481PzkMr'),
(29, 'hY3JYs12EBvOwzq'),
(30, '9LP2tNdqvFF3Op0'),
(31, '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `idActividad` int(11) NOT NULL,
  `fecha_historial` datetime NOT NULL,
  `accion` varchar(45) NOT NULL,
  `Planta_idPlanta` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`idActividad`, `fecha_historial`, `accion`, `Planta_idPlanta`, `Usuario_idUsuario`) VALUES
(1, '2018-06-18 01:11:45', 'RT2m5NyHuUBtFKL2SGMl', 48, 16),
(2, '2018-06-18 01:11:45', 'zc1sP0shaHGBDvhUgaMq', 17, 36),
(3, '2018-06-18 01:11:45', 'gxU1eO8ueQg6q6B044hL', 44, 22),
(4, '2018-06-18 01:11:45', 'upTt0WIYG9TDIt1VPCyR', 53, 28),
(5, '2018-06-18 01:11:45', 'g8WYYNsWizACnS3zeqpo', 55, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombrecomun`
--

CREATE TABLE `nombrecomun` (
  `idNombreComun` int(11) NOT NULL,
  `nombre_nombre_comun` varchar(45) NOT NULL,
  `lengua` varchar(45) DEFAULT NULL,
  `Planta_idPlanta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nombrecomun`
--

INSERT INTO `nombrecomun` (`idNombreComun`, `nombre_nombre_comun`, `lengua`, `Planta_idPlanta`) VALUES
(1, 'quMaqVHmR5', 'lp0tF', 38),
(2, '3DtANCxWqK', 'm6A2m', 43),
(3, 'ZWcPYKrrW5', 'h4BWg', 53),
(4, 'ySaa7JyQwP', 'BF1Ad', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `idOrden` int(11) NOT NULL,
  `nombre_orden` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`idOrden`, `nombre_orden`) VALUES
(7, '123'),
(1, 'asdgtjukwsyjgsw2'),
(5, 'sdfghjswtghaft'),
(4, 'sfgjswrdz'),
(6, 'srtgfhsdfg'),
(3, 'sryjstgjhsaz'),
(2, 'swyjgswgjsw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta`
--

CREATE TABLE `planta` (
  `idPlanta` int(11) NOT NULL,
  `idMascara` int(11) DEFAULT NULL,
  `Familia_idFamilia` int(11) DEFAULT NULL,
  `Genero_idGenero` int(11) DEFAULT NULL,
  `Epiteto_idEpiteto` int(11) DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `fuente_informacion` varchar(45) DEFAULT NULL,
  `altura` decimal(10,0) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `Forma_idForma` int(11) DEFAULT NULL,
  `Color_idColor` int(11) DEFAULT NULL,
  `TipoHoja_idTipoHoja` int(11) DEFAULT NULL,
  `Continente_idContinente` int(11) DEFAULT NULL,
  `ZonaCardinal_idZonaCardinal` int(11) DEFAULT NULL,
  `reproduccion` tinyint(4) DEFAULT NULL,
  `DeterminadaPor_idDeterminadaPor` int(11) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `revision` tinyint(4) NOT NULL DEFAULT '0',
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  `excel` tinyint(4) DEFAULT NULL,
  `orden_idOrden` int(11) DEFAULT NULL,
  `clase_idClase` int(11) DEFAULT NULL,
  `reino_idReino` int(11) DEFAULT NULL,
  `division_idDivision` int(11) DEFAULT NULL,
  `img_principal` varchar(45) DEFAULT NULL,
  `nombre_cientifico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planta`
--

INSERT INTO `planta` (`idPlanta`, `idMascara`, `Familia_idFamilia`, `Genero_idGenero`, `Epiteto_idEpiteto`, `fecha_ingreso`, `fuente_informacion`, `altura`, `autor`, `Forma_idForma`, `Color_idColor`, `TipoHoja_idTipoHoja`, `Continente_idContinente`, `ZonaCardinal_idZonaCardinal`, `reproduccion`, `DeterminadaPor_idDeterminadaPor`, `visible`, `revision`, `activo`, `excel`, `orden_idOrden`, `clase_idClase`, `reino_idReino`, `division_idDivision`, `img_principal`, `nombre_cientifico`) VALUES
(1, 1, 1, 1, 1, '2018-06-18', 'cXYsUTkhuItuJmSyldcl', '1', 'MTMdF0ewFmlKGAT', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 1, 1, 1, '2018-06-18', 'fwaB87LGjVVMwJpwDTiq', '1', 'SdUgUfctITI82RQ', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 1, 1, 1, '2018-06-18', '4uVBC5KegcjyaagPYbBn', '1', '4IHyMyMglDFkbmI', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 1, 1, 1, '2018-06-18', 'R5SwsMc3cDKPr9EFEER9', '1', 'BqX08AbBMASE44v', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 1, 1, 1, '2018-06-18', 'Tir4xLH3IZaZCHWWRFyt', '1', 'Yhcu9O95OAJV04o', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 1, 1, 1, '2018-06-18', 'VZXzUhCG01gKbAwB4F2d', '1', 'Xx6Vf7abIHLWLDp', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 1, 1, 1, '2018-06-18', 'Kp45ClwCp6Fh1CNa6BdP', '1', 'dWrNirOP52GtamN', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 1, 1, 1, '2018-06-18', 't4SiIG0KQJuG4OBgwpMx', '1', '0sXwW0TtcLY3Om0', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 1, 1, 1, '2018-06-18', 'OJ2OKSeAjkY1dDgijblR', '1', '9isVq8pNI1voM0H', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 1, 1, 1, '2018-06-18', 'FAlC6aUM5NGi9eZFEFMu', '1', 'zK7WcYWBfnPXdnp', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 1, 1, 1, '2018-06-18', 'Q7Tz4y7I8hWxgXOwsqSq', '1', 'xsxpKipxIdJjevl', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 1, 1, 1, '2018-06-18', 'EmJA6QJmv5E1al5V9G4J', '1', 'XOzhFxnF4rITgdY', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 1, 1, 1, '2018-06-18', 'M1JCwB9JZvV70XCWAPF4', '1', 'NvVVbOsC5hhdtn1', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 1, 1, 1, '2018-06-18', 'dCqcokoJmc2GmCOREkIP', '1', 'ZYzV8RF7rT4emxe', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 1, 1, 1, '2018-06-18', 'it3xR6Ad4cEGmJOWSU6k', '1', 'HwyDetkBZsXhORa', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 1, 1, 1, '2018-06-18', 'VuacVpZaKI1ajwrXEpmR', '1', 'ejp0xUCkTgBXuvc', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 1, 1, 1, '2018-06-18', 'CdXUUhQj6nztoMY38Xhc', '1', '3GRkpYEx1DnZRxW', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 1, 1, 1, '2018-06-18', 'ANFbvKqGtTN0SPAutyVS', '1', 'MHdCWsvsfwfCXDI', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 1, 1, 1, '2018-06-18', '9l7OI5mSGY532o5cGlVx', '1', 'J54VXU39UOvBiPw', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 1, 1, 1, '2018-06-18', 'R0KAaqI3j8v0xweMTk7A', '1', 'SAVD4GoCqroBIoS', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, 1, 1, 1, '2018-06-18', 'L4M6UogKSK8xAQ4LtEHu', '1', 'qFGdUSuQ2L8VUGd', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, 1, 1, 1, '2018-06-18', 'Cpayq60Iz1FPymByX0pD', '1', 'PS5sUzinzc8i08E', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, 1, 1, 1, '2018-06-18', 'WU1a95rKVbTCfBi5YAX9', '1', 'UVGVEHCDu4cscBE', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, 1, 1, 1, '2018-06-18', 'KPh1vMDzBoTg4g7G3Ujc', '1', 'IZzth6GjVGYBNPh', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, 1, 1, 1, '2018-06-18', 'I1x2wxMTSOVIF1QEb6lU', '1', 'NAmbNHMYZ0rkd3B', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1, 1, 1, 1, '2018-06-18', 'M20wKvczAYfNuslHIqW4', '1', 'nLpdz8s9zeSBOgS', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1, 1, 1, 1, '2018-06-18', 'GJoaBmxALkP3Bydgzmnn', '1', 'FCE2JNEXwUJWqYZ', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1, 1, 1, 1, '2018-06-18', 'hrYDpv13NNFxK3WykHf8', '1', 'IgLM3qVahBTSUKo', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 1, 1, 1, 1, '2018-06-18', 'tiJFDZzI28fjf9HMM1Ui', '1', 'CLPkU3rV8rzviQ3', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 1, 1, 1, 1, '2018-06-18', 'WgrdQxTuog4Yg9UvDGFy', '1', 'HKIAJCUeJ4LbmQT', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 1, 1, 1, 1, '2018-06-18', 'yykngMHBEs2TrOVmtPuT', '1', 'fzzoRCPw7S1g4EG', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 1, 1, 1, 1, '2018-06-18', '0Y4c5xiZH5k5NuykkYNV', '1', 'rerchTW5dpkXQnW', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 1, 1, 1, 1, '2018-06-18', 'W5FkQ1ORVRkqYkaSuxpf', '1', '6Doz0DkpybC0cIR', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1, 1, 1, 1, '2018-06-18', 'ITcT1cG554vIkSlMLU3g', '1', 'tItDauTS5iy0eyo', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 1, 1, 1, 1, '2018-06-18', 'xIIupg5tZkgDkJSj2B7F', '1', '5TJuhS63nxbnWOb', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1, 1, 1, 1, '2018-06-18', 'aMevCG4nYFHarmmhcM22', '1', '0EEZXAlM7N8pd3H', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 1, 1, 1, 1, '2018-06-18', 'PD2PBtrx4TFF8iZr9kjR', '1', '6b7pbeFP4fRhveY', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 1, 1, 1, 1, '2018-06-18', 'qYG4NSzseHHJT9wWRmdF', '1', '2OLziE37KZw8iyL', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 1, 1, 1, 1, '2018-06-18', 'WGeYIkxvJFqgyHB95HhU', '1', '2Fm8eqYiYXLmyTQ', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1, 1, 1, 1, '2018-06-18', '6nGlvKAKnzKulqKPlzfz', '1', 'FtCLV2k5L4fm2zU', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 1, 1, 1, 1, '2018-06-18', 'hq1eA67u9COusgNLLwKU', '1', '10UFvS2El9B7GXR', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 1, 1, 1, 1, '2018-06-18', 'Ig3g87pNUmRsd3z6ZMdw', '1', 'TRXCPM9vFFvRJ8Z', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 1, 1, 1, 1, '2018-06-18', 'oX7X5s9avILcuelRWxnt', '1', 'gsBo6fF69vtWppi', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 1, 1, 1, 1, '2018-06-18', '2FYDrzZrk3U7rlYWmXX8', '1', 'hysRtqnIJr6M4wl', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 1, 1, 1, 1, '2018-06-18', 'syZAVSvM3CwbGZouHXXX', '1', 'AyRe89ACcw4Pyve', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 1, 1, 1, 1, '2018-06-18', '0LoCz74BxNQ8QfqXTsAj', '1', '1PYcKvEJy0JUp69', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 1, 1, 1, 1, '2018-06-18', 'jKirdtDCl7E1J7RC3Frv', '1', 'RfnenKvB3JdwzEV', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 1, 1, 1, 1, '2018-06-18', '3egHiNg6au1ZCHZ1R3Cd', '1', 'bSnQYHirVJhODFh', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 1, 1, 1, 1, '2018-06-18', 'wqXONsMfU5Wlu8BUcOXm', '1', 'C5YLTbqjiBl33W5', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 1, 1, 1, 1, '2018-06-18', 'zZ8x3bbcWsZpOuBFcXEA', '1', 'R9isEGISFEqcp3s', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 1, 1, 1, 1, '2018-06-18', 'c2ecBwjXW1qAPTESzzqg', '1', '9Lo4abOTMv8NePf', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 1, 1, 1, 1, '2018-06-18', 'DvH5rsNMRQRbe2C4KP0n', '1', '9dSOeifhJz0JXb7', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 1, 1, 1, 1, '2018-06-18', 'ONyjNOJQ77zjVNPG4jq0', '1', 'Nya5zV2Cn4ORzvh', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 1, 1, 1, 1, '2018-06-18', 'ibZxFp8GQmF0gNvofsRc', '1', 'xlQoXE9M1C0Dl7m', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 1, 1, 1, 1, '2018-06-18', 'gDJO6ihfFNBuNf9Wlx87', '1', 'vszuqczGmHdUsv4', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 1, 1, 1, 1, '2018-06-18', 'qyWWhNOk0Q9EhAFCvkQK', '1', 'RQl6qnigUgDE54X', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 1, 1, 1, 1, '2018-06-18', '6X15HxEHK4FbmCSpUrwn', '1', 'aedX99RNoI29RH9', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 1, 1, 1, 1, '2018-06-18', '2fqrFBmZs2qN7xawezpc', '1', 'q2jxoisRb1w7mg5', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 1, 1, 1, 1, '2018-06-18', 'AZz5lmu5EXRmdpPEduOA', '1', 'E2qS6XY20avAbgz', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 1, 1, 1, 1, '2018-06-18', 'J5W5lpB2hdt2EmBR6Orv', '1', 'teQdqCp63P0kO78', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 2018061901, 18, 29, 24, '2018-06-20', 'Nueva fuente de informacion', '20', 'Nuevo Autor', 7, 9, 4, 1, 3, 1, 6, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 0, 29, 15, 4, '2018-06-20', 'asdff', '222', 'Nuevo Autor 2', 7, 8, 2, 3, 3, 1, 11, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 0, 29, 15, 4, '2018-06-20', 'asdff', '222', 'Nuevo Autor 2', 7, 8, 2, 3, 3, 1, 11, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 1, 2, 2, 2, '2018-06-21', 'asdgg', '12', 'asdgg', 2, 2, 2, 2, 2, 1, 2, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, 3, NULL, 6, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, 9, NULL, NULL, '2018-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, 16, 11, NULL, '2018-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, 23, 29, NULL, '2018-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, 41, 23, NULL, '2018-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta_has_uso`
--

CREATE TABLE `planta_has_uso` (
  `Planta_idPlanta` int(11) NOT NULL,
  `Uso_idUso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planta_has_uso`
--

INSERT INTO `planta_has_uso` (`Planta_idPlanta`, `Uso_idUso`) VALUES
(8, 14),
(15, 18),
(24, 9),
(51, 15),
(59, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reino`
--

CREATE TABLE `reino` (
  `idReino` int(11) NOT NULL,
  `nombre_reino` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reino`
--

INSERT INTO `reino` (`idReino`, `nombre_reino`) VALUES
(9, '$nombre_reino'),
(17, '122233'),
(1, 'actualizar datos211'),
(7, 'asdfgg'),
(13, 'asvbvv'),
(16, 'axfgbvbv'),
(14, 'hjlhkl'),
(10, 'nuevo reino'),
(8, 'nuevo1'),
(2, 'nuevoactualizar'),
(18, 'Reeeeinooo'),
(11, 'reino'),
(4, 'retyerhs'),
(12, 'rrr'),
(6, 'sdfgh4wse'),
(5, 'sdfghw4etrfg'),
(15, 'vvv'),
(3, 'wertywrety');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `nombre_rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `nombre_rol`) VALUES
(1, 'Admin'),
(2, 'Ayudante'),
(3, 'Publico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `idseccion` int(11) NOT NULL,
  `nombre_seccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`idseccion`, `nombre_seccion`) VALUES
(1, 'Cultivos'),
(2, 'Flora nativa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohoja`
--

CREATE TABLE `tipohoja` (
  `idTipoHoja` int(11) NOT NULL,
  `nombre_hoja` varchar(45) NOT NULL,
  `forma` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipohoja`
--

INSERT INTO `tipohoja` (`idTipoHoja`, `nombre_hoja`, `forma`) VALUES
(1, '3Xf8qHlXml', 'ZodCnWtH'),
(2, 'cJgumMopv3', 'V6rt4g3q'),
(3, 'HtSIFb7kYq', '9tgoCP4t'),
(4, 'mNGwnPRwti', '7m6R0qML'),
(5, 'WzH7BA0jTY', 'yU1bmNLF'),
(6, 'ncXwlARoOU', '9p5ZfiWr'),
(7, 'aoLCHWInUc', 't5RVf4ny'),
(8, 'T1eHieeaq7', 'MXrbxQ5P'),
(9, 'nY88f7O6ch', 'puB8ixJN'),
(10, 'z4xK0mjcIU', 'qAI3aoxM'),
(11, '123', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uso`
--

CREATE TABLE `uso` (
  `idUso` int(11) NOT NULL,
  `nombre_uso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `uso`
--

INSERT INTO `uso` (`idUso`, `nombre_uso`) VALUES
(1, 'hDnUftDpt32'),
(2, 'YWLdPHNXWo'),
(3, 'NOzBSLQdlJ'),
(4, 'WpbPN6jBk2'),
(5, 'I1GAUV9ifM'),
(6, 'MjnqmAQBue'),
(7, 'jqZDjtWGxD'),
(8, '68hT90KKz6'),
(9, 'SeavlLMvL7'),
(10, 'RzyGH9GTNf'),
(11, 'gDtNowXiRx'),
(12, 'b1EnyF9QIB'),
(13, 'Y2EbJH1ioi'),
(14, 'Dt2GmEE4vc'),
(15, '3E2Nlwz4NU'),
(16, 'N75BnXWA6N'),
(17, '5bXaWt1idq'),
(18, 'kCw7mrXY4u'),
(19, 'aDy3IEZNli'),
(20, '0SgKRjiuBY'),
(21, '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `nombre_usuario` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` date NOT NULL,
  `activo` tinyint(4) DEFAULT '1',
  `telefono` int(11) DEFAULT NULL,
  `rol_idrol` int(11) DEFAULT NULL,
  `seccion_idseccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `apellido`, `email`, `nombre_usuario`, `password`, `fecha_registro`, `activo`, `telefono`, `rol_idrol`, `seccion_idseccion`) VALUES
(1, 'O5CVXBsFHv', 'nmtYIsVJ', 'uFSTv@Atq.com', 'fHWDGr', '$2y$10$07CZByBkOjpRL157GwpSKuihxldztg0JB5QHtF3TI0WjUUV2dKuva', '2018-06-18', 1, 88888888, 0, 0),
(2, 'tuEKEDmbG3', 'HUjQxxB8', 'Xjm40@RzL.com', 'QJ2Ldt', '$2y$10$s5zaEDPQ1n/F2dGZmKje8.Gfcxgo6j0qhvk4/ATGupKWLiSQf.FES', '2018-06-18', 1, 88888888, 0, 0),
(3, 'XEAYZhLSi7', '8YjsfnXh', 'EBlte@wsG.com', 'E0tKi0', '$2y$10$kJlIB02VU4RuyFpyAlKOfuaAzp.nOQ1aRmn8KqguuUXLkfwOlQ.Uy', '2018-06-18', 1, 88888888, 0, 0),
(4, '19uojezJUp', 'IbOwnC20', 'U7fA7@oOy.com', 'ngKPAV', '$2y$10$QQCR6i15DQ3/rPJsFCdROeW4DbrQmIucCjZug/af.U5zuvjQSb7Ha', '2018-06-18', 1, 88888888, 0, 0),
(5, '8ThP2o507A', 'rEgS8zmQ', 'gRENS@ueL.com', 'A9meNX', '$2y$10$mL3X.QHhaDo0kK0nX5JRHO0FSFy9TOWptfSAqM9.4h9Bxw7VdKoRm', '2018-06-18', 1, 88888888, 0, 0),
(6, 'fOx5bMAeav', 'AWT3neZK', '5Yg51@aVE.com', 'osLdVb', '$2y$10$.pp8xRB3.SFSR8M0h/sYwuEvZ/ADLKuUpQ2GsUmUuC1k1YjnAR/kG', '2018-06-18', 1, 88888888, 0, 0),
(7, 'jX68gRjvo8', 'GgEcrrP8', 'gTjkj@tUX.com', 'tVsaaq', '$2y$10$XaqVlIYS9KlKQxUd4Gtmx.3NYnw1z94Ytnmwggw2cnE1KQjoRaSwG', '2018-06-18', 1, 88888888, 1, 1),
(8, 'PtfdoAZLHA', '3Pa4rjGN', 'mP8nH@wpf.com', '5wATXh', '$2y$10$ySnZen7GAnfNnunR3Yj79.I5xRyjX/9lql9VJ8fYprTz95zfKejWS', '2018-06-18', 1, 88888888, 0, 0),
(9, 'dPS90yaogF', 'A7bu3Z5J', 'j2g7V@6UD.com', 'vNishy', '$2y$10$dBpoR7NFvoQ2fLZX4Z/iM./D5QPbmJqj.fpB2DZELXGOr4NNz40ie', '2018-06-18', 1, 88888888, 0, 0),
(10, 'K4Cm2h3CNF', '2u5rEewm', 'wmVQs@SYJ.com', 'JOYCrI', '$2y$10$DYFu0HQvI0HGCEnrXVRt5OfLqN45pO.PfEhZgHfvG6LIUEPrM.FJO', '2018-06-18', 1, 88888888, 0, 0),
(11, 'A2w8DLxcjz', 'ZO3zkBFi', 'VVoCB@yZH.com', 'OtmJhI', '$2y$10$NVQOTLjI92frRk1Lo13YIulfiAUoXHU1bxYvz7fh099.BVsnDls8C', '2018-06-18', 1, 88888888, 0, 0),
(12, '4ucBQsZEcD', 'HNGSctiK', 'GFivW@cpQ.com', 'ltBbl9', '$2y$10$X9CH.xKb.EMjjYFOqBgIqujDc8nmS0oq8UhY.W.04xwiJJx6ShfQK', '2018-06-18', 1, 88888888, 0, 0),
(13, 'dFqUm2lJFH', 'HXskzKhN', 'inYAP@4pB.com', 'WIgUZB', '$2y$10$otGwPm6wuyALoGtW9u9fa.VQWeFP/3ZFKMBRT4rJps03AAU3GIceq', '2018-06-18', 1, 88888888, 1, 2),
(14, '3E2nayyelm', '8NX3PkuJ', 'm14zp@U6f.com', '6l7GiH', '$2y$10$k0e4H1CEVMqOZBvDVFiGUe9PmOqW0/BBl5PZm1kcyki2J8AHSMn3e', '2018-06-18', 1, 88888888, 0, 0),
(15, 'LeCinA04jS', 'vjBPcM7Z', 'z40gw@i9Z.com', '6DWz4U', '$2y$10$bcDw2YXtUeiVz/pqpcJIseI.Jrj1oik4oxtMWnDAZpCqNZKb/8Kfm', '2018-06-18', 1, 88888888, 0, 0),
(16, 'oOKY6VWGgL', 'P4uCPP7d', 'iu68M@yuh.com', 'UHmTGo', '$2y$10$KmHcM/5prGKOwOk515lKuO5qQL/RgMWDVB0kw7oOjx/FEyxDvOOWO', '2018-06-18', 1, 88888888, 0, 0),
(17, 'QNsjIbS8YX', 'vyzQRN9s', 'b2dkl@MaJ.com', '66CL4C', '$2y$10$NanNe5Vr7c4oM2Lqa4cGPOTL4Zrh2oubTbg/swzYg3O3U8ZFI3QqC', '2018-06-18', 1, 88888888, 0, 0),
(18, '5pUJLTTWpM', 'V7vsh3YL', '6gjEr@aXw.com', '3dKwqx', '$2y$10$k.K.FUvy/Affx8SSqP2yPeIPx9IvKDcxHextqkn5zTe/7UMip0WTK', '2018-06-18', 1, 88888888, 0, 0),
(19, 'EWlL79AssA', 'SeAutfpw', 'YkDuy@Po2.com', '1ou7AP', '$2y$10$ipNr31yZroB9Rh6uHYyC.eKFJ3.4X5xJQED6uJsHBYskQOO2HWXFC', '2018-06-18', 1, 88888888, 0, 0),
(20, 'vktAvrHgs5', 'O7FUSu1m', 'NXfja@O01.com', 'BHYSUQ', '$2y$10$fWQ59YAhupkz0yT/s9WpQuB3wBwSDBz59Xyk2qCgBLefrodrbJyF.', '2018-06-18', 1, 88888888, 0, 0),
(21, 'xwcdsNowhw', 'V11xM8qH', 'BpEyb@QgM.com', 'uwrfjE', '$2y$10$jX9gHvvmn5S3IF4J48j.D.0RnRHq5bSdBWn0fjedXOgDbAwsjwAdq', '2018-06-18', 1, 88888888, 0, 0),
(22, 'I7MaaE1MET', 'c8uJIckD', '1teQD@k2A.com', 'U5SSmx', '$2y$10$kaVCs.TtD..aGDJYYdat8uSatE6v7.po2yZD5E35BA5WkhijOi1xi', '2018-06-18', 1, 88888888, 0, 0),
(23, 'TblyEIXMoq', 'hzAEwGfK', 'TyFIw@TKv.com', 'labeqY', '$2y$10$kufMdaVUoEYJFYnIeIqwleH1u01PTm8liK//CxAfgVEuHK9dV1eCK', '2018-06-18', 1, 88888888, 2, 1),
(24, 'RRyhaHJkK4', 'HSmsdyy8', 'hAdAz@srA.com', 'TnZRP3', '$2y$10$gYry0yd5l0H6P6wMMtwl/eDGcp3fzivFaVZr7fNeVkc3tF2d4nq7a', '2018-06-18', 1, 88888888, 0, 0),
(25, 'forR4HCflk', 'o6wskcAj', 'LfRQY@ds8.com', 'gDXEGf', '$2y$10$MRks2ZKW0hXJ41hd4HAfJOTM04Gku8VcuVPDYJN4m8KTg/u9O3oBu', '2018-06-18', 1, 88888888, 0, 0),
(26, 'MGyAWQrlPj', 'rz2YuMYi', 'YodER@5k8.com', 'RvC5C7', '$2y$10$Pp1VoRTGpoVmrn3xqIfhnuWwYJYIqKJZdeqUoB8dzaxSu.zp7KxOG', '2018-06-18', 1, 88888888, 0, 0),
(27, 'OcemCvQIcv', '5YfRM9BL', 'Rr8Ea@pGl.com', 'p9Rx5R', '$2y$10$vCj24msa21OzJljPUjMoeeU3d37q5bQRHyO3JX/R1pQhbzwdR/4MO', '2018-06-18', 1, 88888888, 2, 1),
(28, '85sb2Uuw3T', 'COSokZ5o', 'bTSzG@snK.com', 'HxwggG', '$2y$10$HuqAA9/fozx9AIIbfOSCPunhR7z2u7S3u8i.D09vguEstuK/nR5fq', '2018-06-18', 1, 88888888, 0, 0),
(29, 'ezcqIcnuDg', 'dHrMWzuK', 'SVy8L@J9F.com', 'Z3UQvo', '$2y$10$D5/bXgCOMdzotgGglWgTPuF92X/r/3IQ/tADtZB0hwuq00Gf1doUS', '2018-06-18', 1, 88888888, 0, 0),
(30, 'GSslMxPLj2', '5rz190OS', 'SCPAs@FSb.com', 'GbfmNJ', '$2y$10$joSnGjd1wAOVnN4sbJ86oOHAuNyspbdcOngcpDNcIZplmmLGefj1m', '2018-06-18', 1, 88888888, 0, 0),
(31, 'rg5b1iZf9i', 'qir0G2rk', 'QFaka@BYM.com', '6aW7mj', '$2y$10$NW9HOK/IYA7C0fS6BbxgJ.nD1J2D.tucTp03EEMQvttMHektovlBy', '2018-06-18', 1, 88888888, 0, 0),
(32, 'CAvhVHBTuD', 'p4NqiGh4', 't76FR@xB3.com', 'RkIItA', '$2y$10$xH20knj3YweLG0fNVx7pieNhQ3x5WJcik3/iNB8XKLlrFBjjaLNtu', '2018-06-18', 1, 88888888, 0, 0),
(33, 'R5wDbl3fui', 'GBkZTGBi', 'L9ezE@Cav.com', 'rwCjtm', '$2y$10$Ua4W59AEKzMceI6m1twPyeq5lKadrouAi8THIQwzeYLJF1a4GZRBG', '2018-06-18', 1, 88888888, 0, 0),
(34, '6aDxefg8Sf', 'uT8QxADh', 'iADa9@LHT.com', 'knd4v0', '$2y$10$b31lrqb40Peju/sjwGRag.LKc3SdO.KEq1Af18kiQ69a230SVdIoW', '2018-06-18', 1, 88888888, 0, 0),
(35, 'XO8T5ObPkg', 'aOp2mjJx', 'OE2Ks@IU3.com', 'ZzYWLp', '$2y$10$i033tsPfABO/FQvRj6odsOkqZlvKXQHuD2QQ9nLrm2XRuLSLvIo1y', '2018-06-18', 1, 88888888, 0, 0),
(36, 'z40YO5zYJL', 'SGznu5Bq', '2JUuw@LDl.com', 'r5Nja8', '$2y$10$j4YWxQCJOlH/p6/vuimmiesq8GCEb9TZx72WbQiKlIEloeht7qKMG', '2018-06-18', 1, 88888888, 0, 0),
(37, 'hyoHEQfIwr', 'OkHERILX', 'skgpU@uLW.com', 'PrrRvm', '$2y$10$d/pv1UygKVT1JcOfQuHe7.YRVjbyZfiusnphluqD0W31qsWyvG5Na', '2018-06-18', 1, 88888888, 0, 0),
(38, '0TdfPotO8h', 'CWvwdisQ', 'ArKzn@5wa.com', '5yJ7TS', '$2y$10$nS8b27/.WZjtjD7npVbT7OmIfq4VZlXGYqlMLFf5OfvQSVXd1p2e.', '2018-06-18', 1, 88888888, 0, 0),
(39, '0xVbWJ9puD', 'UZ4rOWF9', 'a0rFu@crI.com', 'Qce0GV', '$2y$10$npCfjlvmTCSnFl4Js/5iVOxYSehDJtW9sveY29t7r2o3wf6iCo27u', '2018-06-18', 1, 88888888, 0, 0),
(40, 'NdPwKyn1F1', '1KpfBy8I', '5mDrN@Owt.com', 'WUgxzK', '$2y$10$vMnD36cf4L9Jl5xNICf8Nuc7q9/7Ub6rYvpmaLJPbuNE7W7l1FspO', '2018-06-18', 1, 88888888, 0, 0),
(41, 'BaJmqm7rMV', 'kPG2MuUe', 'D9VY9@LkO.com', 'BXxRK3', '$2y$10$FQ0Ubh.W7LX9Wj1J7I2CUuRY2DJKwJ.DxX1dXbv8PUu9TGyQ9eqh6', '2018-06-18', 1, 88888888, 1, 1),
(42, 'Qs02m9lBye', 'VotjdKce', 'fYS3g@Uyk.com', 'ojFSvM', '$2y$10$EoObmEbeTntTvrZLCcTJWuinQtN6QeogG6ZQzXf8jTqruA/C72pYO', '2018-06-18', 1, 88888888, 0, 0),
(43, 'en8C1FytMJ', 'dWr9JaOK', 'nQzJW@0CQ.com', 'QxwYjh', '$2y$10$2BLZCU3KdMVRPnqbt8qQ8ef7UYHOztpaHg2aSYm3V1lO2CJlctIzK', '2018-06-18', 1, 88888888, 0, 0),
(44, 'XgxxIKPqlO', 'EXPK1n6f', 'XGYan@c8A.com', 'hsBYAx', '$2y$10$7VUOwwGnbwREHVmDfS.lLuws6.1amwgJDgyhuHUnjGLDlwgwX8xPS', '2018-06-18', 1, 88888888, 1, 1),
(45, 'za875k3lkI', 'TFpQKc2O', 'xFbC8@JCq.com', '8vgZnt', '$2y$10$Cd0JWz743/mQZ4o/B5et5eGn5AeROLU0ptstRNDo05gbEVNvcE1iy', '2018-06-18', 1, 88888888, 0, 0),
(46, 'JwkGkGMBEO', 'EC1DpHuN', 'olB5M@Le5.com', 'L3nDtx', '$2y$10$8JWCrZ4jGuw1jqne6uaEy.MjbsT1ejuDIHq3nzIvzRCIWACwJKORi', '2018-06-18', 1, 88888888, 0, 0),
(47, 'jOHZ2EZfPh', 'YLmpoA95', 'eKGkS@NSD.com', '0KtjXM', '$2y$10$0nKUq/mHzICvjuDfq0kx7.lsK2k1A5nFL5yuoxt7hP6P/7ibNh2M.', '2018-06-18', 1, 88888888, 0, 0),
(48, 'yRDNhUdToI', 'tcYskolI', 'hpD34@eTU.com', 'qb3j1x', '$2y$10$2.gptBXqsm4z8mS6OevXvuA0vAiE9/Jhrm0xiegmBr1sdf6QsSMlS', '2018-06-18', 1, 88888888, 0, 0),
(49, 'w9q4voJwZb', 'JIBh1dOU', 'gfv6p@JQW.com', 'yRLauk', '$2y$10$H0NmPuEuQoBtkqkE8ID7kef5ge1Th2xjYMuF.WFLMJvCQQ/5PggA.', '2018-06-18', 1, 88888888, 0, 0),
(50, 'IYeOckrleL', 'UOQuvnuz', '5h1N9@Agu.com', 'NxZX5J', '$2y$10$1GZ5Po08g2FPxlXzxa3jCuXTZL2gF16qhUR3oJkBFNQF5y1xqooS6', '2018-06-18', 1, 88888888, 2, 2),
(52, 'asdf', 'asdf', 'asdf@', 'asdf', '1234', '2018-06-20', 1, 88888888, 0, 0),
(53, 'luisSolano', 'asdf', 'ggsdfsh@', 'gsdfghwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(59, 'asdffasga', 'asffddf', 'ggsddfsh@', 'gsdfgasdgghwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(60, 'asggasdo', 'asasdf', 'ggsdsfsh@', 'gsdfghasdfawsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(61, 'luiasdgagsno', 'afassdf', 'ggsdafsh@', 'gsdasdgasdfghwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(62, 'lasdfggno', 'asasddf', 'ggsdgfsh@', 'gsdfasdgfagghwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(66, 'asdffasga', 'asffddf', 'ggsddfaaassh@', 'gsdfgasdgg67hwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(67, 'asggasdo', 'asasdf', 'ggsdsdsfsh@', 'gsdfghasd43fawsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(69, 'lasdggo', 'asgasdadf', 'ggsaasddfsh@', 'gsdfgasghwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(70, 'asdgggano', 'aggasdsdf', 'ggsdfsasdgh@', 'gsdfggasdghwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(71, 'asdgg32no', 'asd34tf', 'ggs55dfsh@', 'gsdf32ghwsd', '1234', '2018-06-20', 1, 44556667, 0, 0),
(72, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(92, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(93, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(94, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(95, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(96, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(97, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(98, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(99, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(100, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(101, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(102, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(103, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(104, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(105, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(106, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(107, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(108, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(109, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(110, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(111, ':nombre', ':apellido', ':email', ':nombre_usuario', ':password', '2018-06-22', 0, 0, 0, 0),
(112, 'PGVkzDZc', 'gs3JeMyp', 'BibJ8@email.com', 'nA6mH7lc', '123456', '2018-06-22', 0, 25561234, 2, 2),
(113, 'K6pwrdpZ', 'huK59R4Y', 'FxYYY@email.com', 'KdqF8RGC', '123456', '2018-06-22', 1, 25561234, 3, 2),
(114, 'q1oi02k4', 'HeuMHZ4o', 'zpE7c@email.com', 'O81ahjoX', '123456', '2018-06-22', 0, 25561234, 1, 1),
(115, 'pcOyhS9D', 'cz8d2Wzj', '2XrOy@email.com', 'qlmzCAR1', '123456', '2018-06-22', 1, 25561234, 1, 2),
(116, 'Uz2I18wI', '8CuKzJgc', 'vj49y@email.com', 'e2PMQM7L', '123456', '2018-06-22', 1, 25561234, 1, 1),
(117, 'e6viCZD6', '9QSvh3XN', '41T5h@email.com', '9IfPOyX6', '123456', '2018-06-22', 1, 25561234, 3, 1),
(118, '9AsJjWvZ', 'FJtIayKa', 'ufF9R@email.com', 'IkIdOFtN', '123456', '2018-06-22', 1, 25561234, 1, 1),
(119, 'At9EBUTH', 'TemJ0pDq', '0PEy5@email.com', '7WMkVptE', '123456', '2018-06-22', 0, 25561234, 1, 2),
(120, 'xcSM8dW6', 'xAfiDwBs', 'hevTG@email.com', 'JaAmDSxY', '123456', '2018-06-22', 0, 25561234, 2, 1),
(121, 'w7Nj2gv5', 'BdOR3XCe', 'DFGAH@email.com', 'fGfUADfo', '123456', '2018-06-22', 0, 25561234, 2, 2),
(122, 'I2UVITy8', 'KuOjqSGo', 'EQnsh@email.com', 'nbuANiD5', '123456', '2018-06-22', 1, 25561234, 2, 1),
(123, 'L5jkIj9s', 'gW7U2Hln', 'cOnkG@email.com', 'rxOpscQa', '123456', '2018-06-22', 1, 25561234, 1, 1),
(124, 'TZuECkML', 'Ep8ln2DQ', 'BjkNS@email.com', 'KeSKroM9', '123456', '2018-06-22', 0, 25561234, 3, 2),
(125, 'VAMb62kM', 'ZwQW5nqh', 'lBdtc@email.com', '00wGX3HA', '123456', '2018-06-22', 1, 25561234, 1, 2),
(126, 'ta9jJ1WT', 'ab7K9p8S', 'rH1QG@email.com', 'OL81sIGz', '123456', '2018-06-22', 1, 25561234, 3, 1),
(127, 'ZYrWi5MS', 'c9zCnhEl', 'XDtIV@email.com', 'PXSLgX0D', '123456', '2018-06-22', 1, 25561234, 2, 1),
(128, 'pDgaQb5T', 'ax6ciW9q', 'o4qIB@email.com', 'hqzzT3Nl', '123456', '2018-06-22', 0, 25561234, 1, 1),
(129, 'zwWPwyAS', '1c0xD350', 'GbhL0@email.com', 'hwHjXHxs', '123456', '2018-06-22', 0, 25561234, 1, 2),
(130, 'J1DDnzcQ', 'i0JnAJ3R', 'JQtvC@email.com', '6cOzTNA3', '123456', '2018-06-22', 1, 25561234, 2, 2),
(131, 'RlAyjp9t', 'yb894vdn', 'wrmJG@email.com', 'U6E0638s', '123456', '2018-06-22', 0, 25561234, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonacardinal`
--

CREATE TABLE `zonacardinal` (
  `idZonaCardinal` int(11) NOT NULL,
  `nombre_cardinal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zonacardinal`
--

INSERT INTO `zonacardinal` (`idZonaCardinal`, `nombre_cardinal`) VALUES
(1, 'TPW9mH35WE'),
(2, 'Fv062DiqK6'),
(3, 'vzmGIDfugQ'),
(4, 'SxCQp2mdLf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`idClase`),
  ADD UNIQUE KEY `nombre_clase_UNIQUE` (`nombre_clase`);

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`idColor`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`),
  ADD KEY `fk_Consulta_Visitante1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `continente`
--
ALTER TABLE `continente`
  ADD PRIMARY KEY (`idContinente`);

--
-- Indices de la tabla `determinadapor`
--
ALTER TABLE `determinadapor`
  ADD PRIMARY KEY (`idDeterminadaPor`);

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`idDivision`),
  ADD UNIQUE KEY `nombre_division_UNIQUE` (`nombre_division`);

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
-- Indices de la tabla `exportar`
--
ALTER TABLE `exportar`
  ADD PRIMARY KEY (`Planta_idPlanta`,`Usuario_idUsuario`),
  ADD KEY `fk_Exportar_Planta1_idx` (`Planta_idPlanta`),
  ADD KEY `fk_Exportar_Usuario2_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`idFamilia`);

--
-- Indices de la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`Planta_idPlanta`,`Usuario_idUsuario`),
  ADD KEY `fk_Favorito_Planta1_idx` (`Planta_idPlanta`),
  ADD KEY `fk_Favorito_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `forma`
--
ALTER TABLE `forma`
  ADD PRIMARY KEY (`idForma`);

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `fk_Foto_Planta_idx` (`Planta_idPlanta`),
  ADD KEY `fk_Foto_idEstadoSalud_idx` (`EstadoSalud_idEstadoSalud`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`idActividad`),
  ADD KEY `fk_Historial_Planta1_idx` (`Planta_idPlanta`),
  ADD KEY `fk_Historial_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `nombrecomun`
--
ALTER TABLE `nombrecomun`
  ADD PRIMARY KEY (`idNombreComun`),
  ADD KEY `fk_NombreComun_idPlanta_idx` (`Planta_idPlanta`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`idOrden`),
  ADD UNIQUE KEY `nombre_orden_UNIQUE` (`nombre_orden`);

--
-- Indices de la tabla `planta`
--
ALTER TABLE `planta`
  ADD PRIMARY KEY (`idPlanta`),
  ADD KEY `fk_Planta_Forma1_idx` (`Forma_idForma`),
  ADD KEY `fk_Planta_Color1_idx` (`Color_idColor`),
  ADD KEY `fk_Planta_TipoHoja1_idx` (`TipoHoja_idTipoHoja`),
  ADD KEY `fk_Planta_Continente1_idx` (`Continente_idContinente`),
  ADD KEY `fk_Planta_ZonaCardinal1_idx` (`ZonaCardinal_idZonaCardinal`),
  ADD KEY `fk_Planta_Familia1_idx` (`Familia_idFamilia`),
  ADD KEY `fk_Planta_DeterminadaPor1_idx` (`DeterminadaPor_idDeterminadaPor`),
  ADD KEY `fk_Planta_Genero1_idx` (`Genero_idGenero`),
  ADD KEY `fk_Planta_Epiteto1_idx` (`Epiteto_idEpiteto`),
  ADD KEY `fk_planta_orden2_idx` (`orden_idOrden`),
  ADD KEY `fk_planta_clase2_idx` (`clase_idClase`),
  ADD KEY `fk_planta_reino2_idx` (`reino_idReino`),
  ADD KEY `fk_planta_division2_idx` (`division_idDivision`);

--
-- Indices de la tabla `planta_has_uso`
--
ALTER TABLE `planta_has_uso`
  ADD PRIMARY KEY (`Planta_idPlanta`,`Uso_idUso`),
  ADD KEY `fk_Planta_has_Uso_Planta1_idx` (`Planta_idPlanta`),
  ADD KEY `fk_Planta_has_Uso_Uso1_idx` (`Uso_idUso`);

--
-- Indices de la tabla `reino`
--
ALTER TABLE `reino`
  ADD PRIMARY KEY (`idReino`),
  ADD UNIQUE KEY `nombre_reino_UNIQUE` (`nombre_reino`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`idseccion`);

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
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `fk_usuario_rol1_idx` (`rol_idrol`),
  ADD KEY `fk_usuario_seccion1_idx` (`seccion_idseccion`);

--
-- Indices de la tabla `zonacardinal`
--
ALTER TABLE `zonacardinal`
  ADD PRIMARY KEY (`idZonaCardinal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `idClase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `idColor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `continente`
--
ALTER TABLE `continente`
  MODIFY `idContinente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `determinadapor`
--
ALTER TABLE `determinadapor`
  MODIFY `idDeterminadaPor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `division`
--
ALTER TABLE `division`
  MODIFY `idDivision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `epiteto`
--
ALTER TABLE `epiteto`
  MODIFY `idEpiteto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `estadosalud`
--
ALTER TABLE `estadosalud`
  MODIFY `idEstadoSalud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `familia`
--
ALTER TABLE `familia`
  MODIFY `idFamilia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `forma`
--
ALTER TABLE `forma`
  MODIFY `idForma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `foto`
--
ALTER TABLE `foto`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `idActividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `nombrecomun`
--
ALTER TABLE `nombrecomun`
  MODIFY `idNombreComun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `idOrden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `planta`
--
ALTER TABLE `planta`
  MODIFY `idPlanta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `planta_has_uso`
--
ALTER TABLE `planta_has_uso`
  MODIFY `Planta_idPlanta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `reino`
--
ALTER TABLE `reino`
  MODIFY `idReino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tipohoja`
--
ALTER TABLE `tipohoja`
  MODIFY `idTipoHoja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `uso`
--
ALTER TABLE `uso`
  MODIFY `idUso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `zonacardinal`
--
ALTER TABLE `zonacardinal`
  MODIFY `idZonaCardinal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `fk_Consulta_idUsuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `exportar`
--
ALTER TABLE `exportar`
  ADD CONSTRAINT `fk_Exportar_idPlanta` FOREIGN KEY (`Planta_idPlanta`) REFERENCES `planta` (`idPlanta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Exportar_idUsuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `fk_Favorito_idPlanta` FOREIGN KEY (`Planta_idPlanta`) REFERENCES `planta` (`idPlanta`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Favorito_idUsuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `fk_Foto_idEstadoSalud` FOREIGN KEY (`EstadoSalud_idEstadoSalud`) REFERENCES `estadosalud` (`idEstadoSalud`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Foto_idPlanta` FOREIGN KEY (`Planta_idPlanta`) REFERENCES `planta` (`idPlanta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `fk_Historial_idPlanta` FOREIGN KEY (`Planta_idPlanta`) REFERENCES `planta` (`idPlanta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Historial_idUsuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nombrecomun`
--
ALTER TABLE `nombrecomun`
  ADD CONSTRAINT `fk_NombreComun_idPlanta` FOREIGN KEY (`Planta_idPlanta`) REFERENCES `planta` (`idPlanta`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `planta`
--
ALTER TABLE `planta`
  ADD CONSTRAINT `fk_Planta_Clase` FOREIGN KEY (`clase_idClase`) REFERENCES `clase` (`idClase`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Color` FOREIGN KEY (`Color_idColor`) REFERENCES `color` (`idColor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Continente` FOREIGN KEY (`Continente_idContinente`) REFERENCES `continente` (`idContinente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_DeterminadaPor` FOREIGN KEY (`DeterminadaPor_idDeterminadaPor`) REFERENCES `determinadapor` (`idDeterminadaPor`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Planta_Division` FOREIGN KEY (`division_idDivision`) REFERENCES `division` (`idDivision`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Epiteto` FOREIGN KEY (`Epiteto_idEpiteto`) REFERENCES `epiteto` (`idEpiteto`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Planta_Familia` FOREIGN KEY (`Familia_idFamilia`) REFERENCES `familia` (`idFamilia`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Planta_Forma` FOREIGN KEY (`Forma_idForma`) REFERENCES `forma` (`idForma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_Genero` FOREIGN KEY (`Genero_idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Planta_Orden` FOREIGN KEY (`orden_idOrden`) REFERENCES `orden` (`idOrden`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Planta_Reino` FOREIGN KEY (`reino_idReino`) REFERENCES `reino` (`idReino`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_TipoHoja` FOREIGN KEY (`TipoHoja_idTipoHoja`) REFERENCES `tipohoja` (`idTipoHoja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_ZonaCardinal` FOREIGN KEY (`ZonaCardinal_idZonaCardinal`) REFERENCES `zonacardinal` (`idZonaCardinal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planta_has_uso`
--
ALTER TABLE `planta_has_uso`
  ADD CONSTRAINT `fk_Planta_has_Uso_idPlanta` FOREIGN KEY (`Planta_idPlanta`) REFERENCES `planta` (`idPlanta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planta_has_Uso_idUso` FOREIGN KEY (`Uso_idUso`) REFERENCES `uso` (`idUso`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
