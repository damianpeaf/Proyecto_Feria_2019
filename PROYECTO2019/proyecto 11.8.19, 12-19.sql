-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-08-2019 a las 20:19:06
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `idV` int(11) DEFAULT NULL,
  `comentario` varchar(350) DEFAULT NULL,
  `idC` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `idV`, `comentario`, `idC`) VALUES
(1, 17, 'sdasdas', '1234567890123'),
(2, 17, 'asdasd', '1234567890123'),
(3, 17, 'asdas', '1234567890123'),
(4, 17, 'dasdas', '1234567890123'),
(5, 1, 'sadas', '1234567890123'),
(6, 1, 'dasdas', '1234567890123'),
(7, 1, 'asdas', '1234567890123'),
(8, 1, 'wasdas', '1234567890123'),
(9, 1, 'sdasdad', '1234567890123'),
(10, 17, 'asda', '1234567890123'),
(11, 17, 'sadasda', '1234567890123'),
(12, 1, 'mdlksald', '1234567890123'),
(13, 17, 'asdasd', '1234567890123'),
(14, 17, 'asdasddasd', '1234567890123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `idC` varchar(13) DEFAULT NULL,
  `idV` int(11) DEFAULT NULL,
  `pedido` varchar(250) DEFAULT NULL,
  `respuesta` varchar(250) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `idCdelVendedor` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`idConsulta`, `idC`, `idV`, `pedido`, `respuesta`, `estado`, `rating`, `idCdelVendedor`) VALUES
(24, '1234567890123', 17, 'quiero un pantalon', 'si el vendedor sugiere un precio de 150', 5, 5, '1234567890123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `departamento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `departamento`) VALUES
(1, 'Alta Verapaz'),
(2, 'Baja Verapaz'),
(3, 'Chimaltenango'),
(4, 'Chiquimula'),
(5, 'Peten'),
(6, 'El Progreso'),
(7, 'Quiche'),
(8, 'Escuintla'),
(9, 'Guatemala'),
(10, 'Huehuetenango'),
(11, 'Izabal'),
(12, 'Jalapa'),
(13, 'Jutiapa'),
(14, 'Quetzaltenango'),
(15, 'Retalhuleu'),
(16, 'Sacatquez'),
(17, 'San Marcos'),
(18, 'Santa rosa'),
(19, 'Solola'),
(20, 'Suchitepequez'),
(21, 'totonicapan'),
(22, 'Zacapa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id` int(11) NOT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `id_municipio`, `municipio`) VALUES
(1, 1, 'Coban'),
(2, 1, 'Santa Cruz Verapaz'),
(3, 1, 'Tactic'),
(4, 1, 'Tamahu'),
(5, 1, 'Tucurú'),
(6, 1, 'Panzos'),
(7, 1, 'Senahú'),
(8, 1, 'San Pedro Carchá'),
(9, 1, 'San Juan Chamelco'),
(10, 1, 'Lanquín'),
(11, 1, 'Santa María Cahabón'),
(12, 1, 'Chisex'),
(13, 1, 'Chahal'),
(14, 1, 'Fray Bartolomé de las Casas'),
(15, 1, 'Santa Catalina La Tinta'),
(16, 1, 'Raxruha'),
(17, 2, 'Salama'),
(18, 2, 'Cubulco'),
(19, 2, 'Granados'),
(20, 2, 'Purulhá'),
(21, 2, 'Rabinal'),
(22, 2, 'San Jeronimo'),
(23, 2, 'Miguel Chicaj'),
(24, 2, 'Zruz El Chol'),
(25, 3, 'chimaltenango'),
(26, 3, 'Acatenango'),
(27, 3, 'El Tejar'),
(28, 3, 'Parramos'),
(29, 3, 'Patzicia'),
(30, 3, 'Patzun'),
(31, 3, 'San Andres Itzaltapa'),
(32, 3, 'San Jose Poaquil'),
(33, 3, 'Juan Comalapa'),
(34, 3, 'San Martin Jilotepeque'),
(35, 3, 'Micguel Pochuta'),
(36, 3, 'Pedro Yepocapa'),
(37, 3, 'Santa Apolonia'),
(38, 3, 'Santa Cruz Balanya'),
(39, 3, 'Tecpan'),
(40, 3, 'Zaragoza'),
(41, 4, 'Chiquimula'),
(42, 4, 'Camotan'),
(43, 4, 'Concepcion de las minas'),
(44, 4, 'Esquipulas'),
(45, 4, 'Ipala'),
(46, 4, 'Jocotan'),
(47, 4, 'Quezaltepeque'),
(48, 4, 'San Jacinto'),
(49, 4, 'San Jose La Arada'),
(50, 4, 'San Juan Ermita'),
(51, 5, 'Flores'),
(52, 5, 'Dolores'),
(53, 5, 'El Chal'),
(54, 5, 'Libertad'),
(55, 5, 'Melchor de Mencos'),
(56, 5, 'Poptun'),
(57, 5, 'San Andres'),
(58, 5, 'San Benito'),
(59, 5, 'San Francisco'),
(60, 5, 'San Jose'),
(61, 5, 'San Luis'),
(62, 5, 'Santa Ana'),
(63, 5, 'Sayaxche'),
(64, 6, 'Guastatoya'),
(65, 6, 'El Jicaro'),
(66, 6, 'Morazan'),
(67, 6, 'San Agustin acasagustlan'),
(68, 6, 'Antonio La Paz'),
(69, 6, 'Cristobal Acasaguastlan'),
(70, 6, 'Sanarate'),
(71, 6, 'Sansare'),
(72, 7, 'Cruz del chiche'),
(73, 7, 'canilla'),
(74, 7, 'chajul'),
(75, 7, 'chicaman'),
(76, 7, 'Chiche'),
(77, 7, 'Chichicastenango'),
(78, 7, 'Chinique'),
(79, 7, 'Cunen'),
(80, 7, 'Ixcan'),
(81, 7, 'Joyabaj'),
(82, 7, 'Pachalum'),
(83, 7, 'Patzite'),
(84, 7, 'sacapulas'),
(85, 7, 'Andres Sajcabaja'),
(86, 7, 'canilla'),
(87, 7, 'Antonio Ilotenango'),
(88, 7, 'Bartolome Jocotenango'),
(89, 7, 'Juan Cotzal'),
(90, 7, 'San Pedro Jocopilas'),
(91, 7, 'Maria Nebaj'),
(92, 7, 'Uspantan'),
(93, 7, 'zacualpa'),
(94, 8, 'escuintla'),
(95, 8, 'Guanagazapa'),
(96, 8, 'Iztapa'),
(97, 8, 'Democracia'),
(98, 8, 'Gomera'),
(99, 8, 'Masagua'),
(100, 8, 'Nueva Concepcion'),
(101, 8, 'Palin'),
(102, 8, 'San Jose'),
(103, 8, 'San Vicente Pacaya'),
(104, 8, 'Santa Lucia Cotzumalguapa'),
(105, 8, 'Sipacate'),
(106, 8, 'Siquinala'),
(107, 8, 'Tiquisate'),
(108, 9, 'San Juan Sacatepequez'),
(109, 9, 'San Raymundo'),
(110, 9, 'Chuarrancho'),
(111, 9, 'San Joose del Golfo'),
(112, 9, 'Sab Pedro Ayampuc'),
(113, 9, 'Chinautla'),
(114, 9, 'San Pedro Sacatequez'),
(115, 9, 'Mixco'),
(116, 9, 'Guatemala'),
(117, 9, 'Palencia'),
(118, 9, 'San Jose Pinula'),
(119, 9, 'Santa Catarina Pinula'),
(120, 9, 'Villa Nueva'),
(121, 9, 'Petapa'),
(122, 9, 'Frasijanes'),
(123, 9, 'Villa Canales'),
(124, 9, 'Amatitlan'),
(125, 10, 'Huehuetenango'),
(126, 10, 'San Aguacatan'),
(127, 10, 'Chiantla'),
(128, 10, 'Colotenango'),
(129, 10, 'Concepcion Huista'),
(130, 10, 'Cuilco'),
(131, 10, 'Jacaltenango'),
(132, 10, 'Libertad'),
(133, 10, 'Democracia'),
(134, 10, 'Malacatancito'),
(135, 10, 'Nenton'),
(136, 10, 'Antonio Huista'),
(137, 10, 'San Gaspar ixchil'),
(138, 10, 'San Ildefonso Ixtahuacan'),
(139, 10, 'San Juan Atitan'),
(140, 10, 'San Juan Ixcoy'),
(141, 10, 'San Mateo Ixtatan'),
(142, 10, 'San Miguel Acatan'),
(143, 10, 'San Pedro Necta'),
(144, 10, 'San Pedro Soloma'),
(145, 10, 'San Rafael La Independencia'),
(146, 10, 'San Rafael Petza'),
(147, 10, 'San Sebastian huehuetenango'),
(148, 10, 'Santa Ana Huista'),
(149, 10, 'Santa Barbara'),
(150, 10, 'San Cruz Barillas'),
(151, 10, 'Santa Eulalia'),
(152, 10, 'Santago Chimaltenango'),
(153, 10, 'San Tectitan'),
(154, 10, 'Todos los Santos Cuchumatan'),
(155, 10, 'Union Cantinil'),
(156, 11, 'Puerto Barrios'),
(157, 11, 'El Estor'),
(158, 11, 'Livingston'),
(159, 11, 'Amates'),
(160, 11, 'morales'),
(161, 12, 'Jalapa'),
(162, 12, 'Mataquescuintla'),
(163, 12, 'Monjas'),
(164, 12, 'San Carlos Alzatate'),
(165, 12, 'San Luis Jilotque'),
(166, 12, 'San Manuel Chaparron'),
(167, 12, 'San Pedro Pinula'),
(168, 13, 'Jutiapa'),
(169, 13, 'Agua Blanca'),
(170, 13, 'Asuncion Mita'),
(171, 13, 'Atescatempa'),
(172, 13, 'Comapa'),
(173, 13, 'Conguaco'),
(174, 13, 'El Adelanto'),
(175, 13, 'El Progreso'),
(176, 13, 'Jalpatagua'),
(177, 13, 'Jerez'),
(178, 13, 'Moyuta'),
(179, 13, 'Pasaco'),
(180, 13, 'Quesada'),
(181, 13, 'Jose Acatempa'),
(182, 13, 'Santa Catarina Mita'),
(183, 13, 'Yuplitepeque'),
(184, 13, 'Zapotitlan'),
(185, 14, 'Quetzaltenango'),
(186, 14, 'Almolonga'),
(187, 14, 'Cabrican'),
(188, 14, 'Cajola'),
(189, 14, 'Cantel'),
(190, 14, 'Coatepeque'),
(191, 15, 'El Asintal'),
(192, 15, 'Nuevo San Carlos'),
(193, 15, 'San Felipe'),
(194, 15, 'San Sebastian'),
(195, 15, 'San Martin Zapotitlan'),
(196, 15, 'San Andres Villa seca'),
(197, 15, 'Santa Cruz Mulua'),
(198, 15, 'Retalhuleu'),
(199, 15, 'Champerico'),
(200, 16, 'Antigua Guatemala'),
(201, 16, 'Ciudad Vieja'),
(202, 16, 'Jocotenango'),
(203, 16, 'Magdalena Milpas Altas'),
(204, 16, 'Pastores'),
(205, 16, 'San Antonio Aguas Calientes'),
(206, 16, 'San Bartolome Milpas Altas'),
(207, 16, 'San Juan Alotenango'),
(208, 16, 'San Lucas Sacatepequez'),
(209, 16, 'San Miguel Dueñas'),
(210, 16, 'Santa Catarina Barahona'),
(211, 16, 'Santa Lucia Milpas Altas'),
(212, 16, 'Santa Maria de Jesus'),
(213, 16, 'Santiago Sacatepequez'),
(214, 16, 'Santo Domingo Xenacoj'),
(215, 16, 'Sumpango'),
(216, 17, 'San Marcos'),
(217, 17, 'Ayutla'),
(218, 17, 'Catarina'),
(219, 17, 'Comitancillo'),
(220, 17, 'Concepcion Tutuapa'),
(221, 17, 'Municipio de El Quetzal'),
(222, 17, 'El Tumbador'),
(223, 17, 'Esquipulas Palo Gordo'),
(224, 17, 'Ixchiguacan'),
(225, 17, 'La Blanca'),
(226, 17, 'La Reforma'),
(227, 17, 'Malacatan'),
(228, 17, 'Nuevo Progreso'),
(229, 17, 'Ocos'),
(230, 17, 'Pajapita'),
(231, 17, 'Rio Blanco'),
(232, 17, 'San Antonio Sacatepequez'),
(233, 17, 'San Cristobal Cucho'),
(234, 17, 'San Jose El Rodeo'),
(235, 17, 'San Jose Ojetenam'),
(236, 17, 'San Lorenzo'),
(237, 17, 'San Miguel Ixtahuacan'),
(238, 17, 'San Pablo'),
(239, 17, 'San Pedro Sacatepequez'),
(240, 17, 'San Rafael Pie de Cuesta'),
(241, 17, 'Sibinal'),
(242, 17, 'Sipacapa'),
(243, 17, 'Tacana'),
(244, 17, 'Tajumulco'),
(245, 17, 'Tejutla'),
(246, 18, 'Cuilapa'),
(247, 18, 'Barberena'),
(248, 18, 'Casillas'),
(249, 18, 'Chiquimula'),
(250, 18, 'Guazacapan'),
(251, 18, 'Nueva Santa Rosa'),
(252, 18, 'Oratorio'),
(253, 18, 'Pueblo Nuevo Viñas'),
(254, 18, 'San Juan Tecuaco'),
(255, 18, 'San Rafael las Flores'),
(256, 18, 'Santa Cruz Naranjo'),
(257, 18, 'Santa Maria Ixhuatan'),
(258, 18, 'Santa Rosa de la Lima'),
(259, 18, 'Taxisco'),
(260, 19, 'Nahuala'),
(261, 19, 'Santa Clara La Laguna'),
(262, 19, 'Santa Visitacion'),
(263, 19, 'San Juan la Laguna'),
(264, 19, 'Santiago Atitlan'),
(265, 19, 'San Lucas Toliman'),
(266, 19, 'San Antonio Palopo'),
(267, 19, 'Santa Catarina Ixtahuacan'),
(268, 19, 'San ANdres Semetabaj'),
(269, 19, 'Panajachel'),
(270, 19, 'Concepcion'),
(271, 19, 'Solola'),
(272, 19, 'Santa Cruz La Laguna'),
(273, 19, 'San Marcos La Laguna'),
(274, 19, 'San Pablo la Laguna'),
(275, 19, 'Santa Caratina Palopo'),
(276, 19, 'Santa Lucia Utatlan'),
(277, 19, 'San Jose Chacaya'),
(278, 20, 'Mazatenango'),
(279, 20, 'Chicacao'),
(280, 20, 'Cuyotenango'),
(281, 20, 'Patulul'),
(282, 20, 'Pueblo Nuevo'),
(283, 20, 'Rio Bravo'),
(284, 20, 'Samayac'),
(285, 20, 'San Antonio Suchitepequez'),
(286, 20, 'San Bernanrdino'),
(287, 20, 'Francisco Zapotitlan'),
(288, 20, 'San Gabriel'),
(289, 20, 'San Jose El Idolo'),
(290, 20, 'San Jose La Maquina'),
(291, 20, 'San Juan Bautista'),
(292, 20, 'San Lorenzo'),
(293, 20, 'San Miguel Panan'),
(294, 20, 'San Pablo Jocopilas'),
(295, 20, 'Municipio de Santa Barbara'),
(296, 20, 'Santo Domingo Suchitepequez'),
(297, 20, 'Santo Tomas la Union'),
(298, 20, 'Zunilito'),
(299, 21, 'Santa Lucia la Reforma'),
(300, 21, 'San Bartolo'),
(301, 21, 'Momostenango'),
(302, 21, 'Santa Maria Chiquimula'),
(303, 21, 'San Francisco el Alto'),
(304, 21, 'Totonicapan'),
(305, 21, 'San Cristobal Totonicapan'),
(306, 21, 'San Andres Xecul'),
(307, 22, 'Zacapa'),
(308, 22, 'Cabañas'),
(309, 22, 'Estanzuela'),
(310, 22, 'Gualan'),
(311, 22, 'Huite'),
(312, 22, 'La Union'),
(313, 22, 'Rio Hondo'),
(314, 22, 'San Diego'),
(315, 22, 'San Jorge'),
(316, 22, 'Teculutan'),
(317, 22, 'Usumatlan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofi`
--

CREATE TABLE `ofi` (
  `idF` int(11) NOT NULL,
  `descrip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ofi`
--

INSERT INTO `ofi` (`idF`, `descrip`) VALUES
(1, 'Electricista'),
(2, 'Dentista'),
(3, 'Veterinario'),
(4, 'Carpintero'),
(5, 'Tutor'),
(6, 'Plomero'),
(7, 'Zapatero'),
(8, 'Albañil'),
(9, 'Sastre'),
(10, 'Diseñador Grafico'),
(11, 'Mecanico'),
(12, 'Editor'),
(13, 'Traductor'),
(14, 'Interprete'),
(15, 'Chofer'),
(16, 'Arquitecto'),
(17, 'Fotografo'),
(18, 'Organizador de eventos'),
(19, 'Panadero'),
(20, 'Pastelero'),
(21, 'Musico'),
(22, 'Guia Turistico'),
(23, 'DJ'),
(24, 'Cerrajero'),
(25, 'Pintor'),
(26, 'Exterminador de Plagas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajosrealizados`
--

CREATE TABLE `trabajosrealizados` (
  `idImagen` int(11) NOT NULL,
  `idV` int(11) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` varchar(350) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajosrealizados`
--

INSERT INTO `trabajosrealizados` (`idImagen`, `idV`, `imagen`, `descripcion`) VALUES
(1, 17, '17img.jpeg', 'tranajo 1'),
(2, 1, '1centro.jpg', 'sadasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioscliente`
--

CREATE TABLE `usuarioscliente` (
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombreUsuario` varchar(10) DEFAULT NULL,
  `contra` varchar(16) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `dpi` varchar(13) NOT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarioscliente`
--

INSERT INTO `usuarioscliente` (`nombres`, `apellidos`, `nombreUsuario`, `contra`, `correo`, `dpi`, `telefono`, `departamento`, `municipio`, `fechaNac`) VALUES
('Juan', 'García', 'chabelo', 'ruco123', 'jgarciaAC@netscape.net', '0000000001', '85743216', 'Pangea', 'Pangea', '1105-10-25'),
('Erick', 'García', 'ergar213', 'assfg', 'ergar2005@outlook.com', '003322461', '45852036', 'Huehuetenango', 'Huehuetenango', '2002-03-07'),
('Carlos', 'Godinez', 'gogucar', 'jlknvn', 'carlgodi@gmail.com', '0654916509', '00225548', 'Santa Rosa', 'Monterrico', '1960-11-03'),
('Alicia', 'Perez', 'AliceSkyes', 'NOTnullXD11', 'AliceSkyes@gmail.com', '1020306248975', '9246531', 'Quiche', 'Pachalum', '1986-07-01'),
('Damian', 'Peña', 'Usuario', 'SoyDios321', 'damianpeaf@gmail.com', '1234567890123', '12345678', 'Guatemala', 'Guatemala', '2003-01-12'),
('Natalia', 'Arevalo', 'Natycrack1', 'Natylover1111', 'Natylovercrack1@gmail.com', '1346798520192', '25486531', 'Guatemala', 'Guatemala', '2000-04-07'),
('flavio', 'galan', 'Dios', 'SoyDios321', 'klajsdflkjasdflkj@gmail.com', '1425364758697', '56996588', 'Izabal', 'Livingston', '2019-01-01'),
('Marissa', 'Aguilar', 'mariagui', 'fernion', 'marissagui@gmail.com', '1684615868', '63587412', 'Guatemala', 'Guatemala', '2000-05-03'),
('Valeria', 'Quinteros', 'ValeriQ2', 'IlleVale99', 'ValeriQ2@gmail.com', '1926354870526', '70230150', 'Quiche', 'canilla', '2001-12-01'),
('Fabio', 'Ortega', 'Fabga142', 'OrTeGa000', 'Fabga142@gmail.com', '2030654789410', '97864530', 'totonicapan', 'totonicapan', '1975-08-31'),
('Alberto', 'Ramirez', 'Rami001', 'Steman123', 'alramirez@gmail.com', '2136547896584', '39682517', 'Peten', 'Sayaxche', '2000-01-15'),
('Diego', 'Castro', 'DC2001', 'hpbtmi', 'castdiego@yahoo.com', '2314759652', '52418766', 'Alta Verapaz', 'Coban', '1985-02-26'),
('Nilrro', 'Alfaro', 'tromp1ja', 'nigpeta', 'alfaronilronilro@htomail.com', '2352010174', '96217830', 'Izabal', 'Livingston', '2001-09-23'),
('Sammy', 'Soto', 'ssoto', 'heyguys', 'samsoto@gmail.com', '2376116168', '59781264', 'Retalhuleu', 'Retalhuleu', '1981-02-09'),
('Inmanuel', 'Kanteras', 'InmKanter0', 'InmanuelKant1', 'InmKanter02@gmail.com', '2493568712658', '89785462', ' totonicapan', 'San Bartolo', '1986-11-18'),
('Luis', 'Masella', 'lupe', 'superlupe', 'luispemasella@hotmlail.com', '254984651', '45698231', 'Guatemala', 'Guatemala', '2000-01-25'),
('Alessandro', 'Calderón', 'wacb2003', 'a1e2i3o4u5', 'walesscb@gmail.com', '2589945723', '59229441', 'Guatemala', 'Guatemala', '2003-02-11'),
('Javier', 'Barrios', 'Elsayan', 'Contraseña123', 'elsayan1@gmail.com', '2957316482935', '17935642', 'Guatemala', 'Guatemala', '2001-04-09'),
('Sofia', 'Melgar', 'Sofi002', 'Sofocles13', 'Sofi002@gmail.com', '3049568710265', '20469087', 'Guatemala', 'Villa Nueva', '1982-06-30'),
('Rodrigo', 'Calderón', 'rc2004', 'bartorcalderon94', 'rcalderon947@gmail.com', '33475066520', '50191937', 'Guatemala', 'Guatemala', '2004-10-26'),
('Luis', 'Jimenez', 'wichoj', 'afihof', 'luisjim@gmail.com', '35816848916', '02153698', 'Guatemala', 'Guatemala', '2001-12-01'),
('Yahaira', 'Flores', 'Yahares13', 'Flowerskyes19', 'Yahares13@gmail.com', '3789654201569', '28520136', 'Escuintla', 'Palin', '1969-02-24'),
('Javier', 'Chang', 'jch28', 'qwert', 'jchang28@gmail.com', '4132657888', '12369685', 'Escuintla', 'Amatitlan', '2000-01-12'),
('Alejandro', 'Luncey', 'busquets', 'pianopro', 'aluncey@gmail.com', '416703195', '66529874', 'Guatemala', 'GUatemala', '1990-05-21'),
('Alex', 'Casas', 'Alexsasytp', 'Ytphislive1', 'Alexsasytph@gmail.com', '4682159370258', '45678912', 'Huehuetenango', 'Union Cantinil', '1972-12-24'),
('Marcelo', 'Hernandez', 'chelo', 'asdfrg', 'hmarcelo@gmail.com', '521040963', '85203691', 'Chiquimula', 'Chiquimula', '2003-04-29'),
('Elizabeth', 'Arevalo', 'eare225', 'gwagon', 'earevalo@hotmail.com', '52369702202', '25413678', 'Guatemala', 'Guatemala', '2001-11-12'),
('Javier', 'Juarez', 'javiei12', 'pojuroe', 'jjuarez@maildrop.cc', '552233667788', '55220011', 'Jalapa', 'Jalapa', '1996-04-04'),
('Jose', 'Santizo', 'santish', 'qwerty', 'jsantizo2000@gmail.com', '559874231', '96524177', 'Gutemala', 'Villa Nueva', '2000-06-12'),
('Enrrique', 'paniagua', 'panikike1', 'Secretpass12', 'panikike1@gmail.com', '5632147896325', '12345609', 'Guatemala', 'Guatemala', '1986-01-16'),
('Aldo', 'Garcia', 'Aldgarc01', 'Aldonerometro12', 'Aldgarc01@gmail.com', '5731926840255', '30789620', 'Solola', 'Solola', '1995-06-29'),
('Cristian', 'De Leon', 'Cristileon', 'AberSilencio10', 'Cristileon10@gmail.com', '5825645915375', '97864502', 'Jalapa', 'Monjas', '1978-08-27'),
('Carlos', 'Martinez', 'Calres12', 'Nelson102', 'Calres12@gmail.com', '5937164829764', '56897412', 'Chiquimula', 'Jocotan', '1995-07-07'),
('Andres', 'Benitez', 'Benides41', 'Benitepaca12', 'Benides41@gmail.com', '6014785223269', '19760524', 'Zacapa', 'Gualan', '1987-03-24'),
('Maria', 'Del Valle', 'vallesM2', 'olaKase100', 'vallesM2@gmail.com', '6180527930502', '20106986', 'Huehuetenango', 'Cuilco', '1992-04-11'),
('Ivan', 'Gomez', 'Ivanez12', 'NOlaSabras0k', 'Ivanez12@gmail.com', '6325896321478', '94632581', 'Santa rosa', 'Guazacapan', '1979-01-02'),
('Marcos', 'Tobías', 'choco', 'wishigbeingwhite', 'mtobias@gmail.com', '636395987841', '32147896', 'Izabal', 'Izabal', '2003-06-09'),
('Kevin', 'Duque', 'kd2122', 'bmogof', 'kduqueleon@hotmail.com', '64849854', '12368599', 'Quiche', 'Santa Cruz del Quiche', '2002-07-04'),
('Emilio', 'Reinos', 'EmilPos10', 'Posadasad3', 'EmilPos10@gmail.com', '7172737679785', '16235908', 'Guatemala', 'Mixco', '0000-00-00'),
('Phineas', 'Flinn', 'pflinn', 'queharemoshoy', 'pflinn@hotmail.com', '7416162684', '45821479', 'Jutiapa', 'Jutiapa', '1995-12-25'),
('Sergio', 'Barrera', 'chejo', 'nosetoquelacabez', 'sbarrera@gmail.com', '762646544321', '35471026', 'Baja Verapaz', 'Salamá', '1985-04-15'),
('Agustin', 'Posadas', 'Agustpos', 'Agustineitor1', 'Agustpos@gmail.com', '7682134925024', '63256985', 'Guatemala', 'Guatemala', '1985-10-06'),
('Diego', 'Cruz', 'diegocruzx', 'heilhall', 'cuquecruz@hotmail.com', '7802301456', '58620622', 'Totonicapan', 'Totonicapan', '2002-11-30'),
('Fernando', 'Samayoa', 'lufe', 'superlufe', 'lfersama@gmail.com', '7891546645', '56214789', 'Peten', 'Flores', '1986-03-09'),
('Arturo', 'Vidalero', 'Vidalerox9', 'Vidalfcv11', 'Vidalerox99@gmail.com', '7946130258439', '23605048', 'Huehuetenango', 'Santa Ana Huista', '1985-11-04'),
('Josué', 'Guamuch', 'joguach', 'Hlonburt', 'jguamuch@gmail.com', '85647212347', '45889966', 'Totonicapan', 'Totonicapan', '1995-04-25'),
('Tatiana', 'Baldizón', 'tatiii', 'zxcddfe', 'tatibal@gmail.com', '8741869846', '78911245', 'Guatemala', 'Guatemala', '2003-01-25'),
('Ana', 'Gutierrez', 'AnaMonkey', 'MonkeY1', 'AnaMonkey@gmail.com', '9083462517902', '58595320', 'Solola', 'Concepcion', '2001-02-15'),
('Erick', 'Mazariegos', 'ErickKing1', 'Mazarick0', 'ErickKing1@gmail.com', '9173826457913', '20907065', 'Jalapa', 'Mataquescuintla', '1984-02-18'),
('Daniel', 'Ipiña', 'dip23', 'defflepard', 'dipina15@hotmail.com', '96258012414', '25479632', 'San Juan Sacatepequez', 'Antigua Guatemala', '1974-03-02'),
('Ernesto', 'Valmarillo', 'Valmarille', 'Sequedasad34', 'Valmarilles_1@gmail.com', '9713054862049', '32165090', 'Chiquimula', 'San Jacinto', '1977-10-30'),
('Samuel', 'Maldonado', 'Samdonado1', 'CoNtRa12', 'Samdonado11@gmail.com', '9764312580549', '82546591', 'Escuintla', 'Siquinala', '1979-07-21'),
('Isabel', 'Contreras', 'Isacont1', 'ibMasas10', 'Isacont1@gmail.com', '9764325813952', '20905084', 'Zacapa', 'Teculutan', '1995-09-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vend`
--

CREATE TABLE `vend` (
  `idV` int(11) NOT NULL,
  `idC` varchar(13) DEFAULT NULL,
  `oficio` varchar(100) DEFAULT NULL,
  `descrip` varchar(200) DEFAULT NULL,
  `cv` varchar(50) DEFAULT NULL,
  `trabajosRealizados` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vend`
--

INSERT INTO `vend` (`idV`, `idC`, `oficio`, `descrip`, `cv`, `trabajosRealizados`, `rating`, `avatar`) VALUES
(1, '1234567890123', 'Electricista', 'Hago Magia', 'cv.docx', 16, 3, 'avatar.jpg'),
(2, '2136547896584', 'Editor', 'todo tipo de ediciones', 'cv.docx', 12, 2, 'avatar2.jpg'),
(3, '2136547896584', 'Musico', 'musica de mi para el mundo', 'cv.docx', 76, 5, 'avatar3.jpg'),
(4, '5937164829764', 'Pintor', 'pinto todo tipo de cosas', 'cv.docx', 10, 3, 'avatar4.jpg'),
(5, '2493568712658', 'Exterminador de Plagas', 'hasta la ultima hormiga', 'cv.docx', 30, 4, 'avatar5.jpg'),
(6, '9764312580549', 'Dentista', 'dentista profecional', 'cv.docx', 20, 2, 'avatar6.jpg'),
(7, '2030654789410', 'Zapatero', 'arreglo zapatos y tennis', 'cv.docx', 45, 2, 'avatar7.jpg'),
(8, '3049568710265', 'Albañil', 'el mejor para construir tus sueños', 'cv.docx', 21, 4, 'avatar8.jpg'),
(9, '3789654201569', 'Cerrajero', 'usa la llave del alma', 'cv.docx', 11, 1, 'avatar9.jpg'),
(10, '1926354870526', 'Guia Turistico', 'por toda guatemala', 'cv.docx', 47, 3, 'avatar10.jpg'),
(11, '1346798520192', 'Musico', 'musica que sale del alma', 'cv.docx', 68, 5, 'avatar11.jpg'),
(12, '9083462517902', 'Tutor', 'todo tipo de materias ', 'cv.docx', 10, 2, 'avatar12.jpg'),
(13, '6180527930502', 'Chofer', 'te llevo a donde tu quieras', 'cv.docx', 40, 4, 'avatar12.jpg'),
(14, '1020306248975', 'Interprete', 'sesde mandarin hasta ingles', 'cv.docx', 30, 3, 'avatar14.jpg'),
(15, '9764325813952', 'Plomero', 'arreglo todo', 'cv.docx', 26, 5, 'avatar15.jpg'),
(16, '9713054862049', 'Sastre', 'hago trajes de calidad', 'cv.docx', 54, 4, 'avatar16.jpg'),
(17, '1234567890123', 'Sastre', 'trajes', '1234567890123abstract fisica.docx', 7, 5, '1234567890123img.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `idV` (`idV`),
  ADD KEY `idC` (`idC`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`),
  ADD KEY `idC` (`idC`),
  ADD KEY `idV` (`idV`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofi`
--
ALTER TABLE `ofi`
  ADD PRIMARY KEY (`idF`);

--
-- Indices de la tabla `trabajosrealizados`
--
ALTER TABLE `trabajosrealizados`
  ADD PRIMARY KEY (`idImagen`),
  ADD KEY `idV` (`idV`);

--
-- Indices de la tabla `usuarioscliente`
--
ALTER TABLE `usuarioscliente`
  ADD PRIMARY KEY (`dpi`);

--
-- Indices de la tabla `vend`
--
ALTER TABLE `vend`
  ADD PRIMARY KEY (`idV`),
  ADD KEY `idC` (`idC`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de la tabla `ofi`
--
ALTER TABLE `ofi`
  MODIFY `idF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `trabajosrealizados`
--
ALTER TABLE `trabajosrealizados`
  MODIFY `idImagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vend`
--
ALTER TABLE `vend`
  MODIFY `idV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idV`) REFERENCES `vend` (`idV`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idC`) REFERENCES `usuarioscliente` (`dpi`);

--
-- Filtros para la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `usuarioscliente` (`dpi`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`idV`) REFERENCES `vend` (`idV`);

--
-- Filtros para la tabla `trabajosrealizados`
--
ALTER TABLE `trabajosrealizados`
  ADD CONSTRAINT `trabajosrealizados_ibfk_1` FOREIGN KEY (`idV`) REFERENCES `vend` (`idV`);

--
-- Filtros para la tabla `vend`
--
ALTER TABLE `vend`
  ADD CONSTRAINT `vend_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `usuarioscliente` (`dpi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
