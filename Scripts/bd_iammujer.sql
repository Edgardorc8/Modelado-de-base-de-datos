-- Grupo #3 Instituto IAMMUJER
-- Integrantes: Edgardo Rangel CI: 24571601 
-- Ivan Vera CI: 28093033
-- Versión 1.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_iammujer`
--
create database  bd_iammujer;
  use bd_iammujer;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id_comunas` int(11) NOT NULL COMMENT 'Identificador único de la comuna',
  `nombre_comunas` varchar(255) DEFAULT NULL COMMENT 'Nombre de la comuna'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id_comunas`, `nombre_comunas`) VALUES
(1, 'ARBOL DE LAS TRES RAICES'),
(2, 'YUSBELYS RAMOS'),
(3, 'SEMILLAS DEL COMANDANTE'),
(6, 'COMUNA PENSAMIENTOS Y SUEÑOS DE BOLIVAR'),
(7, 'NUEVA BATALLA BICENTENARIO'),
(8, 'COMUNA GRANDES ILUSTRES'),
(9, 'LA VICTORIA'),
(10, 'LA TRINIDAD 19-13'),
(11, 'PATRIA EN REVOLUCION'),
(12, 'TIERRA DE LIBERTADORES Y PRODUCTORES'),
(13, 'TENIENTE CORONEL JULIAN MELLADO'),
(14, 'FUNDO LA ESPERANZA\n\n'),
(15, 'GIGANTE DE AMERICA'),
(16, 'NUEVA BATALLA DE CARABOBO'),
(17, 'COMUNA BRISAS DEL CAMPO'),
(18, 'FABRICIO OJEDA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidad`
--

CREATE TABLE `comunidad` (
  `id_comunidad` int(11) NOT NULL COMMENT 'Identificador único de la comunidad',
  `id_comunas` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla comuna',
  `nombre_comunidad` varchar(255) DEFAULT NULL COMMENT 'Nombre de la comunidad'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunidad`
--

INSERT INTO `comunidad` (`id_comunidad`, `id_comunas`, `nombre_comunidad`) VALUES
(1, 1, 'EL MAIZAL'),
(2, 1, 'VALLE DE JUCALITO'),
(3, 1, 'BRISAS POPULAR DEL PARAISO'),
(4, 1, 'SANTA BARBARA'),
(5, 1, 'JUNCALITO'),
(6, 1, 'LOMAS DE JUNCALITO'),
(7, 1, 'NEGRA MATEA'),
(8, 1, 'ALTOS DE USLAR'),
(9, 1, 'LAS VEGAS DEL TORITO'),
(10, 1, 'SECTOR ZANJÓN DULCE'),
(11, 1, 'VILLA JARDÍN'),
(12, 2, 'LA GUASIMA SECTOR BICENTENARIO'),
(13, 2, 'LA GUASIMA, SECTOR I'),
(14, 2, 'LA GUASÍMA, SECTOR II'),
(15, 2, 'LA GUASIMA CERRO LA CRUZ'),
(16, 2, 'COLINAS DE LA GUÁSIMA'),
(17, 2, 'LA GUASIMA SECTOR EL CHARAL'),
(18, 2, 'LA GUASIMA SECTOR 23 DE ENERO'),
(19, 2, 'LA PICA'),
(20, 3, 'LA PEDRERA'),
(21, 3, 'LA VEGA'),
(22, 3, 'EL VIGIA'),
(23, 3, 'VILLA VALENCIA'),
(24, 3, 'BRISAS DE GUATAPARO'),
(25, 3, 'LOS CHAGUARAMOS'),
(26, 3, 'ALEXIS CRAVO'),
(27, 3, 'NUEVA VILLA'),
(82, 9, 'SIMÓN BOLÍVAR'),
(83, 9, 'RÓMULO BETANCOURT'),
(84, 9, '9 DE DICIEMBRE'),
(85, 9, 'LAS PALMAS'),
(86, 9, 'HONDA NORTE'),
(87, 9, 'LA HONDA I'),
(88, 9, 'ALTOS DE LA HONDA II'),
(89, 9, '12 DE OCTUBRE'),
(90, 9, 'SANTA BARBARA 21'),
(91, 9, 'LA BENDICIÓN DE DIOS'),
(92, 9, 'EL NARANJAL SECTOR I'),
(93, 9, 'POCATERRA 2'),
(94, 9, 'POCATERRA 3'),
(126, 10, 'BUENA VISTA II'),
(127, 10, 'EL ROSARIO'),
(128, 10, 'COLINAS DEL ROSARIO'),
(129, 10, 'ASENT. CAMPESINO LA TRINIDAD'),
(130, 10, 'CHAGUAS'),
(131, 10, 'EL ROSAL'),
(132, 10, 'CAJA DE AGUA'),
(133, 10, 'LA BENDICIÓN DEL ROSARIO'),
(134, 10, 'LOS ROSALES'),
(135, 10, 'LA GRAN SABANA'),
(136, 10, 'CAMPO SOLO'),
(137, 10, 'CASCO TOCUYITO'),
(138, 10, 'LOS 300'),
(139, 10, 'EL BAJÍO'),
(140, 10, 'VILLA DE TOCUYITO'),
(141, 10, 'VALLES DE SAN FRANCISCO'),
(142, 10, 'SANTA PAULA'),
(143, 10, 'LA TRINIDAD II'),
(144, 11, 'SAGRADO CORAZÓN DE JESÚS 1 Y 2'),
(145, 11, 'LA PERSEVERANCIA'),
(146, 11, 'BELLA VISTA'),
(147, 11, 'BELLA CRUZ LOS MANGOS'),
(148, 11, 'SANTA EDUVIGES'),
(149, 11, 'HERREREÑA'),
(150, 11, 'LIBERTADOR SECTOR 1'),
(151, 11, 'LIBERTADOR 2 PROVI'),
(152, 11, 'LIBERTADOR SECTOR 3'),
(153, 11, 'LIBERTADOR SECTOR 4'),
(154, 11, 'LIBERTADOR SECTOR 5 1ERA ETAPA'),
(155, 11, 'LIBERTADOR SECTOR 6'),
(156, 11, 'LIBERTADOR SECTOR 7'),
(157, 11, 'LIBERTADOR SECTOR 8'),
(158, 11, 'LIBERTADOR 1ERA ETAPA SECTOR 2'),
(159, 11, 'LIBERTADOR 2 ETAPA IVEC -A'),
(160, 11, 'SECTOR IVEC -AMBITO B'),
(161, 11, 'BATALLA DE SANTA MARTA'),
(162, 11, 'SAN PABLO LA BALVINERA'),
(163, 11, 'ENMANUEL'),
(164, 12, 'CANAPOSARE'),
(165, 12, 'LA INDIA'),
(166, 12, 'EZEQUIEL ZAMORA'),
(167, 12, 'MONT VERNONLA LORA'),
(168, 12, 'LAGUNITA'),
(169, 12, 'BUENA VISTA I'),
(170, 12, 'ANDRES BELLO'),
(171, 12, 'TREPADORA'),
(172, 12, 'SINAI'),
(173, 12, 'LAS DOS BOCAS'),
(174, 12, 'VALLES DE BARRERA'),
(175, 12, 'JOSE RAFAEL'),
(176, 12, 'EL PALMAR'),
(177, 12, 'CAMBURITO'),
(178, 12, 'LA CHIVERA'),
(179, 12, 'LIBRO ABIERTO'),
(180, 13, 'TERRAZAS LA ESTANCIA SECTOR 1'),
(181, 13, 'TERRAZAS LA ESTANCIA 2'),
(182, 13, 'TERRAZAS LA ESTANCIA SECTOR III'),
(183, 13, 'SAN RAFAEL'),
(184, 13, 'BRISAS DE SANTA ISABEL'),
(185, 13, 'ALTOS DE LA YAGUARA SECTOR LA ESCALERITA'),
(186, 13, 'BATALLA CARABOBO SECTOR 4-1'),
(187, 13, 'ALTOS DE BARRERA'),
(188, 13, 'ANIMA DE LA YAGUARA SECTOR 4-B'),
(189, 13, 'YAGUARA VIEJA'),
(190, 13, 'EL SAFARI'),
(191, 13, 'BARRERA NORTE'),
(192, 14, 'FUNDO LA ESPERANZA'),
(193, 14, 'FUNDO LA ESPERANZA SECTOR I- A Y SANTA BARBARA'),
(194, 14, 'FUNDO LA ESPERANZA SECTOR II'),
(195, 14, 'LOMAS DE LA ESPERANZA'),
(196, 14, 'YAGUARA SECTOR 3'),
(197, 14, 'LA YAGUARA SECTOR 3 AMBITO B RURAL'),
(198, 14, 'LOS CARACAROS'),
(199, 14, 'MI PEQUEÑA VENECIA'),
(200, 14, 'SANTA ISABEL'),
(201, 15, 'ASENTAMIENTO CAMPESINO EL OASIS'),
(202, 15, 'SAN PABLO VALLEY'),
(203, 15, 'EL OASIS'),
(204, 15, 'EL TRIANGULO'),
(205, 15, 'EZEQUIEL ZAMORA'),
(206, 15, 'COLINAS DE CARRIZALES'),
(207, 15, 'VILLA DE COLINA'),
(208, 15, 'LAS NARANJAS'),
(209, 15, 'EL ENCANTO III AGRARIO'),
(210, 15, 'ELOHIM'),
(211, 15, 'EL ENCANTO'),
(212, 15, 'AGRICOLA LA NUEVA ESPERANZA'),
(213, 15, 'AGRARIO EL OASIS'),
(214, 15, 'LASTORRES'),
(215, 15, 'EL MOLINO'),
(216, 15, 'LA ESPERANZA'),
(217, 16, 'HÉCTOR PEREDA'),
(218, 16, 'COLINAS DE CARABOBO'),
(219, 16, 'EL PANAL'),
(220, 16, 'LAS MANZANAS I'),
(221, 16, 'MANZANA 2'),
(222, 16, 'MANZANA 3'),
(223, 16, 'PUEBLO NUEVO SECTOR 1 Y LAS MINAS'),
(224, 16, 'ALGARROBAL'),
(225, 16, 'PALMA BONITA Y CAMBUR DE MORICHAL'),
(226, 16, 'NUEVO CARABOBO'),
(227, 16, 'SABANA DEL MEDIO'),
(228, 16, 'BARRERA SUR'),
(229, 16, 'BARRERA CENTRO'),
(230, 16, 'JOSÉ LUIS MARTINES A'),
(231, 16, 'JOSÉ LUIS MARTINES B'),
(232, 16, 'LA ALEGRÍA'),
(233, 16, 'LAS AMERICAS'),
(234, 16, 'EL SUM SUM'),
(235, 16, 'EL NAIPE II'),
(236, 16, 'EL NAIPE I'),
(237, 16, 'EL BARNIZ'),
(238, 16, 'GUALEMBE'),
(239, 16, 'CHIRGUITA'),
(240, 16, 'EL PARADERO DEL NAIPE'),
(241, 16, 'EL CHAPARRAL'),
(242, 16, 'EL MORRO'),
(262, 17, 'VALENCEY'),
(263, 17, 'CHAGUARAMOS'),
(264, 17, 'AMBROCIO PLAZA'),
(265, 17, 'SECTOR LA PICA'),
(266, 17, 'LOS ALABARET'),
(267, 17, 'EL RINCÓN'),
(268, 17, 'BARRIO SUCRE'),
(269, 17, 'BRISAS DE AGUA FRÍA'),
(270, 17, 'MALLORAL'),
(271, 17, 'LAGUNA DE PIEDRA'),
(272, 17, 'RINCONCITO'),
(273, 17, 'CERRO NEGRO'),
(274, 17, 'BRISAS DEL CAMPO'),
(275, 17, 'AGUA LINDA, LA Y, QUINTANA, CACHINCE'),
(276, 17, 'CACHINCHE'),
(277, 17, 'CANTILOTE'),
(278, 18, 'PALMAROTE'),
(279, 18, 'PIRA-PIRA'),
(280, 18, 'PIRA PIRA'),
(281, 18, 'EL TIGRE DE LA ARENOSA'),
(282, 18, 'LA CUEVA'),
(283, 18, 'LA DOMINGA'),
(284, 18, 'ARENOSA II'),
(285, 18, 'PERRO SECO'),
(286, 18, 'BARRERITA I'),
(287, 18, 'BARRERITA II'),
(288, 18, 'LA ARENOSA I'),
(289, 18, 'ARENOSA CARAMACATAL'),
(290, 18, 'ARENOSA CARAMACATAL AGRICOLA'),
(291, 18, 'EL MESTIZO'),
(292, 18, 'SABANITA'),
(293, 18, 'PALMARITO'),
(294, 18, 'CORTADORA Y MOSQUITERO'),
(295, 18, 'Y DE PAYA'),
(296, 18, 'SAN PEDRO LAS PALMAS'),
(325, 8, 'ARTURO USLAR PIETRI'),
(326, 8, 'BAJOS DE GUATAPARO'),
(327, 8, 'ARTURO MICHELENA'),
(328, 8, 'ANDRÉS BELLO'),
(329, 8, 'ANDRÉS E. BLANCO'),
(330, 8, 'RÓMULO GALLEGOS'),
(331, 8, 'LOS CARDONES'),
(332, 8, 'TERESA CARREÑO SECTOR 1'),
(333, 8, 'TERESA CARREÑO SECTOR 2'),
(334, 8, 'LOS CARDONES NUEVOS POBLADORES'),
(335, 8, 'LA BANERA'),
(336, 8, 'BRISAS POPULAR DE SAN LUIS'),
(337, 8, 'VALLES DE LOS CAOBA'),
(338, 6, 'NVA VALENCIA SECTOR 1º D'),
(339, 6, 'NVA VALENCIA SECTOR 1º C'),
(340, 6, 'NVA VALENCIA SECTOR 1 E'),
(341, 6, 'NVA VALENCIA SECTOR 2  A'),
(342, 6, 'NVA VALENCIA SECTOR 2 B'),
(343, 6, 'NVA VALENCIA SECTOR 3'),
(344, 6, 'MANUELITA SAENZ'),
(345, 6, 'SAN LUÍS SECTOR LA CANCHA'),
(346, 6, 'SAN LUIS SECTOR LA CARBONERA'),
(347, 6, 'SAN LUIS SECTOR LA CRUZ'),
(348, 6, 'JARDINES DE SAN LUIS'),
(349, 6, 'FUNDACION C.A.P. SECTOR 1 AMBITO A'),
(350, 6, 'FUNDACION C.A.P. SECTOR 1 AMBITO B'),
(351, 6, 'FUNDACION C.A.P. SECTOR 1 AMBITO C'),
(352, 6, 'FUNDACION C.A.P. SECTOR  2 AMBITO A'),
(353, 6, 'FUNDACION C.A.P. SECTOR 2 AMBITO B'),
(354, 6, 'FUNDACION C.A.P. SECTOR 2'),
(355, 6, 'FUNDACIÓN C.A.P. 7. AMBITO A'),
(356, 6, 'FUNDACIÓN C.A.P. 7. AMBITO B'),
(357, 6, 'PEDRO CAMEJO'),
(358, 7, 'FUNDACION C.A.P. SECTOR 3 A'),
(359, 7, 'FUNDACION C.A.P. SECTOR 3 B'),
(360, 7, 'FUNDACIÓN C.A.P. SECTOR 4'),
(361, 7, 'FUNDACION C.A.P. SECTOR 5'),
(362, 7, 'BARRIO BUENO'),
(363, 7, 'FUNDACIÓN C.A.P. SECTOR 6 - AMBITO A'),
(364, 7, 'FUNDACION C.A.P. SECTOR 6- AMBITO B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consolidado_asesoria_legal`
--

CREATE TABLE `consolidado_asesoria_legal` (
  `id` int(11) NOT NULL COMMENT 'Identificador único del registro',
  `id_datos_personal` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla datos personales',
  `fecha_registro` date NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación del registro',
  `n_expediente` varchar(256) NOT NULL COMMENT 'Numero de expediente del registro',
  `id_forma_violencia` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla formas_violencia',
  `id_tipo_asesoria` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla tipo_asesoria',
  `nombre_citado` varchar(256) DEFAULT NULL COMMENT 'Nombre del citado',
  `cedula_citado` varchar(256) DEFAULT NULL COMMENT 'Cedula del citado',
  `edad_citado` int(11) DEFAULT NULL COMMENT 'Edad del citado',
  `comperencia` int(11) DEFAULT NULL COMMENT 'Indica si hubo comparecencia o no',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Indica si el registro está activo (1) o inactivo (0)',
  `remisiones` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla remisiones',
  `asesorado_defensor` int(11) NOT NULL COMMENT 'Indica quien fue el asesor o defensor del caso',
  `id_status_consol_legal` int(11) NOT NULL DEFAULT 1 COMMENT 'Clave foránea que referencia al ID de la tabla status_consol_legal',
  `fecha_cita` date NOT NULL COMMENT 'Fecha de la cita',
  `observaciones` varchar(256) NOT NULL COMMENT 'Observaciones del caso',
  `img` varchar(256) DEFAULT NULL COMMENT 'Imagen de la persona afectada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consolidado_asesoria_legal`
--

INSERT INTO `consolidado_asesoria_legal` (`id`, `id_datos_personal`, `fecha_registro`, `n_expediente`, `id_forma_violencia`, `id_tipo_asesoria`, `nombre_citado`, `cedula_citado`, `edad_citado`, `comperencia`, `status`, `remisiones`, `asesorado_defensor`, `id_status_consol_legal`, `fecha_cita`, `observaciones`, `img`) VALUES
(1, 1, '2025-07-31', 'IAM-2025-1', 5, 1, NULL, NULL, NULL, 1, 1, 10, 2, 1, '2025-08-14', 'Se observaron moretones en algunas partes del cuerpo', 'evidencia.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `id` int(11) NOT NULL COMMENT 'Identificador unico de datos personales',
  `tipo_documento` varchar(10) NOT NULL COMMENT 'Tipo de documento de la persona si es V o E ',
  `cedula` int(50) NOT NULL COMMENT 'Cedula de la persona',
  `nombres_apellidos` varchar(256) NOT NULL COMMENT 'Nombre y apellido de la persona',
  `direccion` varchar(256) NOT NULL COMMENT 'Direccion de la persona',
  `email` varchar(256) NOT NULL COMMENT 'Correo electronico de la persona',
  `telefono` varchar(256) NOT NULL COMMENT 'Telefono de la persona',
  `otro_curso` varchar(256) DEFAULT NULL COMMENT 'Indica si la persona eligio otro curso',
  `edad` int(11) NOT NULL COMMENT 'Edad de la persona',
  `fecha_registro` date NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creacion del registro',
  `fecha_nacimiento` date NOT NULL COMMENT 'Fecha de nacimiento de la persona',
  `id_remitente` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla remitente',
  `id_parroquia` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla de parroquia',
  `id_comuna` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla comuna',
  `id_comunidad` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla comunidad',
  `id_rol` int(11) DEFAULT 0 COMMENT 'Clave foránea que referencia al ID de la tabla rol',
  `id_usuario_registra` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla usuarios para indicar cual fue el usuario que hizo el registro',
  `status_datos` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Indica si el registro está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_personales`
--

INSERT INTO `datos_personales` (`id`, `tipo_documento`, `cedula`, `nombres_apellidos`, `direccion`, `email`, `telefono`, `otro_curso`, `edad`, `fecha_registro`, `fecha_nacimiento`, `id_remitente`, `id_parroquia`, `id_comuna`, `id_comunidad`, `id_rol`, `id_usuario_registra`, `status_datos`) VALUES
(1, 'V', 30195942, 'WIRNELY ESTHEL RODRIGUEZ', 'libertador el molino', 'wirlerodriguez10@gmail.com', '42123242', NULL, 54, '2025-05-01', '1995-01-07', 3, 1, 6, 342, 4, 1, 1),
(2, 'V', 28093033, 'IVAN JOSE VERA CAMPOS', 'santa rosa barrio el carmen sur', 'ivanjosevera@gmail.com', '412967852', NULL, 24, '2025-05-01', '2001-05-30', 3, 1, 6, 0, 4, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formas_violencia`
--

CREATE TABLE `formas_violencia` (
  `id_forma` int(11) NOT NULL COMMENT 'Identificador unico de formas de violencia',
  `nombre_forma` varchar(100) NOT NULL COMMENT 'Nombre de formas de violencia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formas_violencia`
--

INSERT INTO `formas_violencia` (`id_forma`, `nombre_forma`) VALUES
(9, 'Acoso Sexual'),
(2, 'Acoso u Hostigamiento'),
(3, 'Amenazas'),
(11, 'Esclavitud Sexual'),
(15, 'Esterilización Forzada'),
(24, 'Femicidio'),
(25, 'Inducción o Ayuda al Suicidio'),
(7, 'Prostitución Forzada'),
(22, 'Tráfico de Mujeres, niñas y  adolescentes '),
(23, 'Trata de Mujeres, niñas y adolescentes'),
(5, 'Violencia Familiar'),
(4, 'Violencia Física'),
(20, 'Violencia Ginecológica'),
(18, 'Violencia Informática'),
(16, 'Violencia Institucional'),
(13, 'Violencia Laboral'),
(12, 'Violencia Mediática'),
(21, 'Violencia Multicausal'),
(14, 'Violencia Obstétrica'),
(10, 'Violencia Patrimonial y Económica'),
(19, 'Violencia Política'),
(1, 'Violencia Psicológica'),
(6, 'Violencia Sexual '),
(8, 'Violencia Sexual en Pareja'),
(17, 'Violencia Simbólica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_asesoria_legal`
--

CREATE TABLE `forma_asesoria_legal` (
  `id` int(11) NOT NULL COMMENT 'Identificador unico de formas de asesoria legal',
  `descripcion` varchar(256) NOT NULL COMMENT 'Descripcion de la forma de asesoria legal',
  `id_tipo` int(11) NOT NULL COMMENT 'Clave foránea que referencia al ID de la tabla tipo_asesoria',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Indica si el registro está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `forma_asesoria_legal`
--

INSERT INTO `forma_asesoria_legal` (`id`, `descripcion`, `id_tipo`, `status`) VALUES
(1, 'Divorcio', 1, 1),
(2, 'Separación de Cuerpo', 1, 1),
(3, 'Union estable de derecho y de hecho', 1, 1),
(4, 'División de Bienes \"comunidad con de los bienes de la propiedad y sus modificaciones', 1, 1),
(5, 'Testamento', 1, 1),
(6, 'Herencia', 1, 1),
(7, 'Testamento', 1, 1),
(8, 'Obligaciones', 1, 1),
(9, 'Del concepto de la tutela', 1, 1),
(10, 'Contrato', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organismo`
--

CREATE TABLE `organismo` (
  `id` int(11) NOT NULL COMMENT '	Identificador unico del organismo',
  `nombre_organismo` varchar(256) NOT NULL COMMENT 'Nombre del organismo',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '	Indica si el registro está activo (1) o inactivo (0)	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organismo`
--

INSERT INTO `organismo` (`id`, `nombre_organismo`, `status`) VALUES
(1, 'Físcalia', 1),
(2, 'Polícia', 1),
(3, 'Defensa Pública', 1),
(4, 'Consejo de Protección del niño', 1),
(5, 'Defensoría NNA', 1),
(6, 'CICPC', 1),
(7, 'Inspectoría del Trabajo', 1),
(8, 'INPSASEL', 1),
(9, 'Clínica Juridica', 1),
(10, 'Defensoria del Pueblo', 1),
(11, 'Superintendencia Nacional Arrendamientos', 1),
(12, 'Sindicatura Municipal', 1),
(13, 'IAGESAN', 1),
(14, 'Psicologa de IAMMUJER Lcda. Claudia Pereira', 1),
(15, 'CESADE PSICOLOGIA', 1),
(16, 'SEPNA', 1),
(17, 'SIPEL', 1),
(18, 'LOPNNA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

CREATE TABLE `parroquia` (
  `id_parroquia` int(11) NOT NULL COMMENT 'Identificador unico de la parroquia',
  `nombre_parroquia` varchar(256) NOT NULL COMMENT 'Nombre de la parroquia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`id_parroquia`, `nombre_parroquia`) VALUES
(1, 'Tocuyito'),
(2, 'Independencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pensum_curso`
--

CREATE TABLE `pensum_curso` (
  `id` int(11) NOT NULL COMMENT 'Identificador unico del pensum del curso',
  `descripcion` text DEFAULT NULL COMMENT 'Descripcion del pensum',
  `modulo` varchar(20) NOT NULL COMMENT 'Modulo del pensum',
  `id_tipo_curso` int(11) DEFAULT NULL COMMENT 'Clave foránea que referencia al ID de la tabla tipo_curso',
  `status` tinyint(4) DEFAULT 1 COMMENT 'Indica si el registro está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pensum_curso`
--

INSERT INTO `pensum_curso` (`id`, `descripcion`, `modulo`, `id_tipo_curso`, `status`) VALUES
(1, 'RESEÑA HISTÓRICA,CONOCIMIENTO MATERIALES Y HERRAMIENTAS SOSTENIBLE', 'I', 1, 1),
(2, 'CONOCIMIENTO DE LOS TIPOS DE ROSTROS PARA CONOCER QUE SARCILLO Y COLLAR PUEDE USAR CADA ROSTRO', 'I', 1, 1),
(3, 'PREPARACION DE MATERIALES NATURALES Y SOSTENIBLE', 'I', 1, 1),
(4, 'TÉCNICAS DE TEJIDO VARIADOS DE MACRAMÉ Y CROCHET', 'II', 1, 1),
(5, 'REALIZACIÓN DE VARIAS TIPOS DE PULCERAS', 'II', 1, 1),
(6, 'REALIZACIÓN DE ANILLOS', 'II', 1, 1),
(7, 'REALIZACIÓN DE SARCILLOS', 'II', 1, 1),
(8, 'REALIZACIÓN COLLARES MATERIALES NATURALES Y SOSTENIBLE', 'III', 1, 1),
(9, 'TOBILLERAS VARIADAS', 'III', 1, 1),
(10, 'CUIDADOS DE LAS JOYERÍA', 'III', 1, 1),
(11, 'EXPOSICIÓN', 'III', 1, 1),
(12, 'RESEÑA HISTÓRICA,CONOCIMIENTO DE MATERIALES Y HERRAMIENTAS SOSTENIBLE, CONOCIMIENTO DE LOS TIPOS DE CUERPOS Y COLOR DE PIEL DE LA PERSONA, QUE TIPO DE MODA LE QUEDA MEJOR', 'I', 2, 1),
(13, 'TÉCNICAS DE PATRONES QUE VAMOS A ELABORAR: a)LA BLUSA SIN PINZA b)LA BLUSA CON PINZA c)LA FALDA d)EL VESTIDO e) EL PANTALON', 'II', 2, 1),
(14, 'REALIZACIÓN DE PATRONAJE CON MATERIAL SOSTENIBLE:CÓMO ROPA QUE YA NO UTILIZAMOS, RETAZO DE TELA, PAPEL PERIÓDICO, PAPEL BOND Y OTROS.', 'III', 2, 1),
(15, 'HISTORIA DEL CALZADO (SANDALIAS)', 'I', 3, 1),
(16, 'CONOCIMIENTO Y USO DE LOS MATERIALES', 'I', 3, 1),
(17, 'MOLDES PARA HACER CORTES POR TALLAS', 'I', 3, 1),
(18, 'RENOVACIÓN DE UNA SANDALIA', 'II', 3, 1),
(19, 'ELABORACIÓN DE PLANTILLAS', 'II', 3, 1),
(20, 'ELABORACIÓN DE MODELOS BÁSICOS DE SANDALIAS PARA DAMAS PLANAS (3 MODELOS)', 'II', 3, 1),
(21, 'ELABORACIÓN DE MODELOS BÁSICOS PARA NIÑAS (3 MODELOS)', 'II', 3, 1),
(22, 'SANDALIAS DE PLAYAS', 'III', 3, 1),
(23, 'SANDALIAS DE TACON Y CUÑAS', 'III', 3, 1),
(24, 'TÉCNICAS DE SOLETEADO Y MONTAJE', 'III', 3, 1),
(25, 'ELABORACIÓN DE TALONES', 'III', 3, 1),
(53, 'MATERIALES A UTILIZAR:SUELAS,FORROS,HEBILLAS,ADORNOS VARIOS,TIJERA Y BROCHA,PEGA AMARILLA,PEGA TRANSPARENTE,COCINA ELECTRICA,TIRAS VARIAS,HORMAS DE ZAPATERIA', 'III', 3, 1),
(65, 'B', 'I', 20, 1),
(66, 'A', 'II', 20, 1),
(67, 'DFINO', 'III', 20, 1),
(68, 'j', 'VI', 21, 1),
(69, 'fd', 'IV', 21, 1),
(70, 's', 'IX', 21, 1),
(71, 'l1', 'I', 17, 1),
(72, 'l2', 'II', 17, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitente`
--

CREATE TABLE `remitente` (
  `id_remitente` int(11) NOT NULL COMMENT 'Identificador unico del remitente',
  `nombre_remitente` varchar(256) NOT NULL COMMENT 'Nombre del remitente',
  `status_remitente` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Indica si el registro está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `remitente`
--

INSERT INTO `remitente` (`id_remitente`, `nombre_remitente`, `status_remitente`) VALUES
(1, 'INFORMACION', 1),
(2, 'REPORTE PH', 1),
(3, 'ASESORIA LEGAL', 1),
(4, 'REPORTE P.P.H', 1),
(5, 'CREDI MUJER', 1),
(6, 'PH GESTANTE', 1),
(7, 'ESCUELA MATERNO FETAL', 1),
(8, 'BIO MUJER', 1),
(9, 'ACOMPAÑANTE', 1),
(10, 'EMPRENDIMIENTO', 1),
(11, 'REUNION VM', 1),
(12, 'CARABOBO SOSTENIBLE', 1),
(13, 'PSICOLOGIA', 1),
(14, 'RETIRO DE CITOLOGIA', 1),
(15, 'SNATA EDUVIGES', 1),
(16, 'PRESIDENCIA', 1),
(17, 'PH LACTANTE', 1),
(18, 'SOLICITUD DE TALLER PSICOLOGICO', 1),
(19, 'COSTURERA ASESORIA LEGAL', 1),
(20, 'PSICOLOGIA BIO MUJER', 1),
(21, 'CITA PSICOLOGICA', 1),
(22, 'BAILO TERAPIA', 1),
(23, 'ALCALDIA', 1),
(24, 'INFORMACION PH BIO MUJER', 1),
(25, 'PH BIO MUJER', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL COMMENT 'Identificador unico del rol',
  `rol` varchar(256) NOT NULL COMMENT 'Nombre del rol',
  `status_rol` tinyint(4) NOT NULL DEFAULT 1 COMMENT '	Indica si el rol está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `rol`, `status_rol`) VALUES
(1, 'administrador', 1),
(2, 'recepcionista', 1),
(3, 'fisioterapia', 1),
(4, 'psicologia', 1),
(5, 'participante', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_participantes`
--

CREATE TABLE `solicitud_participantes` (
  `id` int(11) NOT NULL COMMENT '	Identificador unico de la solicitud de cada participantes ',
  `id_civil` int(11) DEFAULT NULL COMMENT '	Clave foránea que referencia al ID de la tabla datos_personales',
  `id_tipo_curso` int(11) DEFAULT NULL COMMENT '	Clave foránea que referencia al ID de la tabla tipo_curso',
  `status` tinyint(4) DEFAULT 1 COMMENT 'Indica si el registro está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_participantes`
--

INSERT INTO `solicitud_participantes` (`id`, `id_civil`, `id_tipo_curso`, `status`) VALUES
(1, 1, 2, 1),
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_consol_legal`
--

CREATE TABLE `status_consol_legal` (
  `id` int(11) NOT NULL COMMENT 'Identificador unico del status consolidado asesoria legal',
  `nombre` varchar(256) NOT NULL COMMENT 'Nombre del status',
  `descripcion` varchar(256) NOT NULL COMMENT 'Descripcion del status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_nopad_ci;

--
-- Volcado de datos para la tabla `status_consol_legal`
--

INSERT INTO `status_consol_legal` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Pendiente', 'Cita creada pero no confirmada'),
(2, 'Confirmada', 'Cliente confirmó asistencia'),
(3, 'En proceso', 'Se realizó la cita pero el caso sigue abierto'),
(4, 'Resuelta', 'Caso concluido satisfactoriamente'),
(5, 'Cancelada', ' Cita cancelada por alguna razón'),
(6, 'No presentado', 'Cliente no asistió a la cita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_asesoria`
--

CREATE TABLE `tipo_asesoria` (
  `id_tipo_asesoria` int(11) NOT NULL COMMENT 'Identificador unico de tipo_aseroria',
  `nombre_tipo` varchar(256) NOT NULL COMMENT 'Nombre del tipo de asesoria'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_asesoria`
--

INSERT INTO `tipo_asesoria` (`id_tipo_asesoria`, `nombre_tipo`) VALUES
(1, 'Materia Civil'),
(2, 'Materia LOPNA'),
(3, 'Constitución'),
(4, 'Materia Penal'),
(5, 'Materia Ley de Tierra y desarrollo Agrario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_curso`
--

CREATE TABLE `tipo_curso` (
  `id` int(11) NOT NULL COMMENT 'Identificador unico del tipo_curso',
  `tipo` varchar(250) DEFAULT NULL COMMENT 'tipo del curso ejm si es curso o taller',
  `descripcion_tipo` text DEFAULT NULL COMMENT 'Descripcion del tipo',
  `status` tinyint(4) DEFAULT 1 COMMENT '	Indica si el registro está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_curso`
--

INSERT INTO `tipo_curso` (`id`, `tipo`, `descripcion_tipo`, `status`) VALUES
(1, 'CURSO', 'BISUTERÍA Y ALAMBRISMO', 1),
(2, 'CURSO', 'PATRONAJE(CONFECCIÓN SOSTENIBLE)', 0),
(3, 'TALLER', 'FABRICACIÓN DE SANDALIAS', 1),
(15, 'TALLER', 'AMILCAR', 1),
(16, 'TALLER', 'FDCFBD', 1),
(17, 'CURSO', 'utlimaprueba', 1),
(18, 'CURSO', 'probandooodenuevo', 1),
(19, 'TALLER', 'amilcars', 0),
(20, 'TALLER', 'PREUBAA', 1),
(21, 'CURSO', 'yalisto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL COMMENT '	Identificador unico de usuarios',
  `id_datos_personales` int(11) NOT NULL COMMENT '	Clave foránea que referencia al ID de la tabla datos personales',
  `usuario` varchar(15) DEFAULT NULL COMMENT 'Nombre del usuario',
  `clave` varchar(100) DEFAULT NULL COMMENT 'Clave del usuario',
  `status` tinyint(4) DEFAULT 1 COMMENT 'Indica si el usuario está activo (1) o inactivo (0)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_datos_personales`, `usuario`, `clave`, `status`) VALUES
(1, 1, 'admin', '25d55ad283aa400af464c76d713c07ad', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id_comunas`);

--
-- Indices de la tabla `comunidad`
--
ALTER TABLE `comunidad`
  ADD PRIMARY KEY (`id_comunidad`),
  ADD KEY `id_comunas` (`id_comunas`);

--
-- Indices de la tabla `consolidado_asesoria_legal`
--
ALTER TABLE `consolidado_asesoria_legal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_datos_personal` (`id_datos_personal`),
  ADD KEY `id_forma_violencia` (`id_forma_violencia`),
  ADD KEY `id_tipo_asesoria` (`id_tipo_asesoria`),
  ADD KEY `id_status_consol_legal` (`id_status_consol_legal`),
  ADD KEY `remisiones` (`remisiones`);

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parroquia` (`id_parroquia`),
  ADD KEY `id_comuna` (`id_comuna`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_remitente` (`id_remitente`),
  ADD KEY `id_usuario_registra` (`id_usuario_registra`);

--
-- Indices de la tabla `formas_violencia`
--
ALTER TABLE `formas_violencia`
  ADD PRIMARY KEY (`id_forma`),
  ADD UNIQUE KEY `nombre_forma` (`nombre_forma`);

--
-- Indices de la tabla `forma_asesoria_legal`
--
ALTER TABLE `forma_asesoria_legal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `organismo`
--
ALTER TABLE `organismo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD PRIMARY KEY (`id_parroquia`);

--
-- Indices de la tabla `pensum_curso`
--
ALTER TABLE `pensum_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipo_curso` (`id_tipo_curso`);

--
-- Indices de la tabla `remitente`
--
ALTER TABLE `remitente`
  ADD PRIMARY KEY (`id_remitente`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitud_participantes`
--
ALTER TABLE `solicitud_participantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_civil` (`id_civil`),
  ADD KEY `fk_id_tipo_curso` (`id_tipo_curso`);

--
-- Indices de la tabla `status_consol_legal`
--
ALTER TABLE `status_consol_legal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_asesoria`
--
ALTER TABLE `tipo_asesoria`
  ADD PRIMARY KEY (`id_tipo_asesoria`);

--
-- Indices de la tabla `tipo_curso`
--
ALTER TABLE `tipo_curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_datos_personales` (`id_datos_personales`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id_comunas` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la comuna', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `comunidad`
--
ALTER TABLE `comunidad`
  MODIFY `id_comunidad` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la comunidad', AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT de la tabla `consolidado_asesoria_legal`
--
ALTER TABLE `consolidado_asesoria_legal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del registro', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de datos personales', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `formas_violencia`
--
ALTER TABLE `formas_violencia`
  MODIFY `id_forma` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de formas de violencia', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `forma_asesoria_legal`
--
ALTER TABLE `forma_asesoria_legal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de formas de asesoria legal', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `organismo`
--
ALTER TABLE `organismo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	Identificador unico del organismo', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  MODIFY `id_parroquia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de la parroquia', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pensum_curso`
--
ALTER TABLE `pensum_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del pensum del curso', AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `remitente`
--
ALTER TABLE `remitente`
  MODIFY `id_remitente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del remitente', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del rol', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `solicitud_participantes`
--
ALTER TABLE `solicitud_participantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	Identificador unico de la solicitud de cada participantes ', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `status_consol_legal`
--
ALTER TABLE `status_consol_legal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del status consolidado asesoria legal', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_asesoria`
--
ALTER TABLE `tipo_asesoria`
  MODIFY `id_tipo_asesoria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de tipo_aseroria', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_curso`
--
ALTER TABLE `tipo_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico del tipo_curso', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '	Identificador unico de usuarios', AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunidad`
--
ALTER TABLE `comunidad`
  ADD CONSTRAINT `comunidad_ibfk_1` FOREIGN KEY (`id_comunas`) REFERENCES `comunas` (`id_comunas`);

--
-- Filtros para la tabla `consolidado_asesoria_legal`
--
ALTER TABLE `consolidado_asesoria_legal`
  ADD CONSTRAINT `id_datos_personal` FOREIGN KEY (`id_datos_personal`) REFERENCES `datos_personales` (`id`),
  ADD CONSTRAINT `id_forma_violencia` FOREIGN KEY (`id_forma_violencia`) REFERENCES `formas_violencia` (`id_forma`),
  ADD CONSTRAINT `id_status_consol_legal` FOREIGN KEY (`id_status_consol_legal`) REFERENCES `status_consol_legal` (`id`),
  ADD CONSTRAINT `id_tipo_asesoria` FOREIGN KEY (`id_tipo_asesoria`) REFERENCES `tipo_asesoria` (`id_tipo_asesoria`),
  ADD CONSTRAINT `remisiones` FOREIGN KEY (`remisiones`) REFERENCES `organismo` (`id`);

--
-- Filtros para la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD CONSTRAINT `id_comuna` FOREIGN KEY (`id_comuna`) REFERENCES `comunas` (`id_comunas`),
  ADD CONSTRAINT `id_parroquia` FOREIGN KEY (`id_parroquia`) REFERENCES `parroquia` (`id_parroquia`),
  ADD CONSTRAINT `id_remitente` FOREIGN KEY (`id_remitente`) REFERENCES `remitente` (`id_remitente`),
  ADD CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `id_usuario_registra` FOREIGN KEY (`id_usuario_registra`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `forma_asesoria_legal`
--
ALTER TABLE `forma_asesoria_legal`
  ADD CONSTRAINT `id_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_asesoria` (`id_tipo_asesoria`);

--
-- Filtros para la tabla `pensum_curso`
--
ALTER TABLE `pensum_curso`
  ADD CONSTRAINT `fk_tipo_curso` FOREIGN KEY (`id_tipo_curso`) REFERENCES `tipo_curso` (`id`);

--
-- Filtros para la tabla `solicitud_participantes`
--
ALTER TABLE `solicitud_participantes`
  ADD CONSTRAINT `fk_id_civil` FOREIGN KEY (`id_civil`) REFERENCES `datos_personales` (`id`),
  ADD CONSTRAINT `fk_id_tipo_curso` FOREIGN KEY (`id_tipo_curso`) REFERENCES `tipo_curso` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `id_datos_personales` FOREIGN KEY (`id_datos_personales`) REFERENCES `datos_personales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
