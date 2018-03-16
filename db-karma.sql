-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para karma
CREATE DATABASE IF NOT EXISTS `karma` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `karma`;

-- Volcando estructura para tabla karma.ciudad
CREATE TABLE IF NOT EXISTS `ciudad` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `id_departamento` smallint(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ciudad_departamento` (`id_departamento`),
  CONSTRAINT `FK_ciudad_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1121 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla karma.ciudad: ~1.120 rows (aproximadamente)
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
REPLACE INTO `ciudad` (`id`, `id_departamento`, `nombre`) VALUES
	(1, 5, 'Abejorral'),
	(2, 54, 'Abrego'),
	(3, 5, 'Abriaqui'),
	(4, 50, 'Acacias'),
	(5, 27, 'Acandi'),
	(6, 41, 'Acevedo'),
	(7, 13, 'Achi'),
	(8, 41, 'Agrado'),
	(9, 25, 'Agua de dios'),
	(10, 20, 'Aguachica'),
	(11, 68, 'Aguada'),
	(12, 17, 'Aguadas'),
	(13, 85, 'Aguazul'),
	(14, 20, 'Agustin codazzi'),
	(15, 41, 'Aipe'),
	(16, 25, 'Alban'),
	(17, 52, 'Alban'),
	(18, 18, 'Albania'),
	(19, 44, 'Albania'),
	(20, 68, 'Albania'),
	(21, 76, 'Alcala'),
	(22, 52, 'Aldana'),
	(23, 5, 'Alejandria'),
	(24, 47, 'Algarrobo'),
	(25, 41, 'Algeciras'),
	(26, 19, 'Almaguer'),
	(27, 15, 'Almeida'),
	(28, 73, 'Alpujarra'),
	(29, 41, 'Altamira'),
	(30, 27, 'Alto baudo'),
	(31, 13, 'Altos del rosario'),
	(32, 73, 'Alvarado'),
	(33, 5, 'Amaga'),
	(34, 5, 'Amalfi'),
	(35, 73, 'Ambalema'),
	(36, 25, 'Anapoima'),
	(37, 52, 'Ancuya'),
	(38, 76, 'Andalucia'),
	(39, 5, 'Andes'),
	(40, 5, 'Angelopolis'),
	(41, 5, 'Angostura'),
	(42, 25, 'Anolaima'),
	(43, 5, 'Anori'),
	(44, 17, 'Anserma'),
	(45, 76, 'Ansermanuevo'),
	(46, 5, 'Anza'),
	(47, 73, 'Anzoategui'),
	(48, 5, 'Apartado'),
	(49, 66, 'Apia'),
	(50, 25, 'Apulo'),
	(51, 15, 'Aquitania'),
	(52, 47, 'Aracataca'),
	(53, 17, 'Aranzazu'),
	(54, 68, 'Aratoca'),
	(55, 81, 'Arauca'),
	(56, 81, 'Arauquita'),
	(57, 25, 'Arbelaez'),
	(58, 52, 'Arboleda'),
	(59, 54, 'Arboledas'),
	(60, 5, 'Arboletes'),
	(61, 15, 'Arcabuco'),
	(62, 13, 'Arenal'),
	(63, 5, 'Argelia'),
	(64, 19, 'Argelia'),
	(65, 76, 'Argelia'),
	(66, 47, 'Ariguani'),
	(67, 13, 'Arjona'),
	(68, 5, 'Armenia'),
	(69, 63, 'Armenia'),
	(70, 73, 'Armero'),
	(71, 13, 'Arroyohondo'),
	(72, 20, 'Astrea'),
	(73, 73, 'Ataco'),
	(74, 27, 'Atrato'),
	(75, 23, 'Ayapel'),
	(76, 27, 'Bagado'),
	(77, 27, 'Bahia solano'),
	(78, 27, 'Bajo baudo'),
	(79, 19, 'Balboa'),
	(80, 66, 'Balboa'),
	(81, 8, 'Baranoa'),
	(82, 41, 'Baraya'),
	(83, 52, 'Barbacoas'),
	(84, 5, 'Barbosa'),
	(85, 68, 'Barbosa'),
	(86, 68, 'Barichara'),
	(87, 50, 'Barranca de upia'),
	(88, 68, 'Barrancabermeja'),
	(89, 44, 'Barrancas'),
	(90, 13, 'Barranco de loba'),
	(91, 94, 'Barranco minas'),
	(92, 8, 'Barranquilla'),
	(93, 20, 'Becerril'),
	(94, 17, 'Belalcazar'),
	(95, 15, 'Belen'),
	(96, 52, 'Belen'),
	(97, 18, 'Belen de los andaquies'),
	(98, 66, 'Belen de umbria'),
	(99, 5, 'Bello'),
	(100, 5, 'Belmira'),
	(101, 25, 'Beltran'),
	(102, 15, 'Berbeo'),
	(103, 5, 'Betania'),
	(104, 15, 'Beteitiva'),
	(105, 5, 'Betulia'),
	(106, 68, 'Betulia'),
	(107, 25, 'Bituima'),
	(108, 15, 'Boavita'),
	(109, 54, 'Bochalema'),
	(110, 11, 'Bogota, D.C.'),
	(111, 25, 'Bojaca'),
	(112, 27, 'Bojaya'),
	(113, 19, 'Bolivar'),
	(114, 68, 'Bolivar'),
	(115, 76, 'Bolivar'),
	(116, 20, 'Bosconia'),
	(117, 15, 'Boyaca'),
	(118, 5, 'Briceño'),
	(119, 15, 'Briceño'),
	(120, 68, 'Bucaramanga'),
	(121, 54, 'Bucarasica'),
	(122, 76, 'Buenaventura'),
	(123, 15, 'Buenavista'),
	(124, 23, 'Buenavista'),
	(125, 63, 'Buenavista'),
	(126, 70, 'Buenavista'),
	(127, 19, 'Buenos aires'),
	(128, 52, 'Buesaco'),
	(129, 76, 'Bugalagrande'),
	(130, 5, 'Buritica'),
	(131, 15, 'Busbanza'),
	(132, 25, 'Cabrera'),
	(133, 68, 'Cabrera'),
	(134, 50, 'Cabuyaro'),
	(135, 94, 'Cacahual'),
	(136, 5, 'Caceres'),
	(137, 25, 'Cachipay'),
	(138, 54, 'Cachira'),
	(139, 54, 'Cacota'),
	(140, 5, 'Caicedo'),
	(141, 76, 'Caicedonia'),
	(142, 70, 'Caimito'),
	(143, 73, 'Cajamarca'),
	(144, 19, 'Cajibio'),
	(145, 25, 'Cajica'),
	(146, 13, 'Calamar'),
	(147, 95, 'Calamar'),
	(148, 63, 'Calarca'),
	(149, 5, 'Caldas'),
	(150, 15, 'Caldas'),
	(151, 19, 'Caldono'),
	(152, 76, 'Cali'),
	(153, 68, 'California'),
	(154, 76, 'Calima'),
	(155, 19, 'Caloto'),
	(156, 5, 'Campamento'),
	(157, 8, 'Campo de la cruz'),
	(158, 41, 'Campoalegre'),
	(159, 15, 'Campohermoso'),
	(160, 23, 'Canalete'),
	(161, 8, 'Candelaria'),
	(162, 76, 'Candelaria'),
	(163, 13, 'Cantagallo'),
	(164, 5, 'Cañasgordas'),
	(165, 25, 'Caparrapi'),
	(166, 68, 'Capitanejo'),
	(167, 25, 'Caqueza'),
	(168, 5, 'Caracoli'),
	(169, 5, 'Caramanta'),
	(170, 68, 'Carcasi'),
	(171, 5, 'Carepa'),
	(172, 73, 'Carmen de apicala'),
	(173, 25, 'Carmen de carupa'),
	(174, 27, 'Carmen del darien'),
	(175, 5, 'Carolina'),
	(176, 13, 'Cartagena'),
	(177, 18, 'Cartagena del chaira'),
	(178, 76, 'Cartago'),
	(179, 97, 'Caruru'),
	(180, 73, 'Casabianca'),
	(181, 50, 'Castilla la nueva'),
	(182, 5, 'Caucasia'),
	(183, 68, 'Cepita'),
	(184, 23, 'Cerete'),
	(185, 15, 'Cerinza'),
	(186, 68, 'Cerrito'),
	(187, 47, 'Cerro san antonio'),
	(188, 27, 'Certegui'),
	(189, 52, 'Chachagsi'),
	(190, 25, 'Chaguani'),
	(191, 70, 'Chalan'),
	(192, 85, 'Chameza'),
	(193, 73, 'Chaparral'),
	(194, 68, 'Charala'),
	(195, 68, 'Charta'),
	(196, 25, 'Chia'),
	(197, 47, 'Chibolo'),
	(198, 5, 'Chigorodo'),
	(199, 23, 'Chima'),
	(200, 68, 'Chima'),
	(201, 20, 'Chimichagua'),
	(202, 54, 'Chinacota'),
	(203, 15, 'Chinavita'),
	(204, 17, 'Chinchina'),
	(205, 23, 'Chinu'),
	(206, 25, 'Chipaque'),
	(207, 68, 'Chipata'),
	(208, 15, 'Chiquinquira'),
	(209, 15, 'Chiquiza'),
	(210, 20, 'Chiriguana'),
	(211, 15, 'Chiscas'),
	(212, 15, 'Chita'),
	(213, 54, 'Chitaga'),
	(214, 15, 'Chitaraque'),
	(215, 15, 'Chivata'),
	(216, 15, 'Chivor'),
	(217, 25, 'Choachi'),
	(218, 25, 'Choconta'),
	(219, 13, 'Cicuco'),
	(220, 47, 'Cienaga'),
	(221, 23, 'Cienaga de oro'),
	(222, 15, 'Cienega'),
	(223, 68, 'Cimitarra'),
	(224, 63, 'Circasia'),
	(225, 5, 'Cisneros'),
	(226, 5, 'Ciudad bolivar'),
	(227, 13, 'Clemencia'),
	(228, 5, 'Cocorna'),
	(229, 73, 'Coello'),
	(230, 25, 'Cogua'),
	(231, 41, 'Colombia'),
	(232, 52, 'Colon'),
	(233, 86, 'Colon'),
	(234, 70, 'Coloso'),
	(235, 15, 'Combita'),
	(236, 5, 'Concepcion'),
	(237, 68, 'Concepcion'),
	(238, 5, 'Concordia'),
	(239, 47, 'Concordia'),
	(240, 27, 'Condoto'),
	(241, 68, 'Confines'),
	(242, 52, 'Consaca'),
	(243, 52, 'Contadero'),
	(244, 68, 'Contratacion'),
	(245, 54, 'Convencion'),
	(246, 5, 'Copacabana'),
	(247, 15, 'Coper'),
	(248, 13, 'Cordoba'),
	(249, 52, 'Cordoba'),
	(250, 63, 'Cordoba'),
	(251, 19, 'Corinto'),
	(252, 68, 'Coromoro'),
	(253, 70, 'Corozal'),
	(254, 15, 'Corrales'),
	(255, 25, 'Cota'),
	(256, 23, 'Cotorra'),
	(257, 15, 'Covarachia'),
	(258, 70, 'Coveñas'),
	(259, 73, 'Coyaima'),
	(260, 81, 'Cravo norte'),
	(261, 52, 'Cuaspud'),
	(262, 15, 'Cubara'),
	(263, 50, 'Cubarral'),
	(264, 15, 'Cucaita'),
	(265, 25, 'Cucunuba'),
	(266, 54, 'Cucuta'),
	(267, 54, 'Cucutilla'),
	(268, 15, 'Cuitiva'),
	(269, 50, 'Cumaral'),
	(270, 99, 'Cumaribo'),
	(271, 52, 'Cumbal'),
	(272, 52, 'Cumbitara'),
	(273, 73, 'Cunday'),
	(274, 18, 'Curillo'),
	(275, 68, 'Curiti'),
	(276, 20, 'Curumani'),
	(277, 5, 'Dabeiba'),
	(278, 76, 'Dagua'),
	(279, 44, 'Dibulla'),
	(280, 44, 'Distraccion'),
	(281, 73, 'Dolores'),
	(282, 5, 'Don matias'),
	(283, 66, 'Dosquebradas'),
	(284, 15, 'Duitama'),
	(285, 54, 'Durania'),
	(286, 5, 'Ebejico'),
	(287, 76, 'El aguila'),
	(288, 5, 'El bagre'),
	(289, 47, 'El banco'),
	(290, 76, 'El cairo'),
	(291, 50, 'El calvario'),
	(292, 27, 'El canton del san pablo'),
	(293, 54, 'El carmen'),
	(294, 27, 'El carmen de atrato'),
	(295, 13, 'El carmen de bolivar'),
	(296, 68, 'El carmen de chucuri'),
	(297, 5, 'El carmen de viboral'),
	(298, 50, 'El castillo'),
	(299, 76, 'El cerrito'),
	(300, 52, 'El charco'),
	(301, 15, 'El cocuy'),
	(302, 25, 'El colegio'),
	(303, 20, 'El copey'),
	(304, 18, 'El doncello'),
	(305, 50, 'El dorado'),
	(306, 76, 'El dovio'),
	(307, 91, 'El encanto'),
	(308, 15, 'El espino'),
	(309, 68, 'El guacamayo'),
	(310, 13, 'El guamo'),
	(311, 27, 'El litoral del san juan'),
	(312, 44, 'El molino'),
	(313, 20, 'El paso'),
	(314, 18, 'El paujil'),
	(315, 52, 'El peñol'),
	(316, 13, 'El peñon'),
	(317, 25, 'El peñon'),
	(318, 68, 'El peñon'),
	(319, 47, 'El piñon'),
	(320, 68, 'El playon'),
	(321, 47, 'El reten'),
	(322, 95, 'El retorno'),
	(323, 70, 'El roble'),
	(324, 25, 'El rosal'),
	(325, 52, 'El rosario'),
	(326, 5, 'El santuario'),
	(327, 52, 'El tablon de gomez'),
	(328, 19, 'El tambo'),
	(329, 52, 'El tambo'),
	(330, 54, 'El tarra'),
	(331, 54, 'El zulia'),
	(332, 41, 'Elias'),
	(333, 68, 'Encino'),
	(334, 68, 'Enciso'),
	(335, 5, 'Entrerrios'),
	(336, 5, 'Envigado'),
	(337, 73, 'Espinal'),
	(338, 25, 'Facatativa'),
	(339, 73, 'Falan'),
	(340, 17, 'Filadelfia'),
	(341, 63, 'Filandia'),
	(342, 15, 'Firavitoba'),
	(343, 73, 'Flandes'),
	(344, 18, 'Florencia'),
	(345, 19, 'Florencia'),
	(346, 15, 'Floresta'),
	(347, 68, 'Florian'),
	(348, 76, 'Florida'),
	(349, 68, 'Floridablanca'),
	(350, 25, 'Fomeque'),
	(351, 44, 'Fonseca'),
	(352, 81, 'Fortul'),
	(353, 25, 'Fosca'),
	(354, 52, 'Francisco pizarro'),
	(355, 5, 'Fredonia'),
	(356, 73, 'Fresno'),
	(357, 5, 'Frontino'),
	(358, 50, 'Fuente de oro'),
	(359, 47, 'Fundacion'),
	(360, 52, 'Funes'),
	(361, 25, 'Funza'),
	(362, 25, 'Fuquene'),
	(363, 25, 'Fusagasuga'),
	(364, 25, 'Gachala'),
	(365, 25, 'Gachancipa'),
	(366, 15, 'Gachantiva'),
	(367, 25, 'Gacheta'),
	(368, 68, 'Galan'),
	(369, 8, 'Galapa'),
	(370, 70, 'Galeras'),
	(371, 25, 'Gama'),
	(372, 20, 'Gamarra'),
	(373, 68, 'Gambita'),
	(374, 15, 'Gameza'),
	(375, 15, 'Garagoa'),
	(376, 41, 'Garzon'),
	(377, 63, 'Genova'),
	(378, 41, 'Gigante'),
	(379, 76, 'Ginebra'),
	(380, 5, 'Giraldo'),
	(381, 25, 'Girardot'),
	(382, 5, 'Girardota'),
	(383, 68, 'Giron'),
	(384, 5, 'Gomez plata'),
	(385, 20, 'Gonzalez'),
	(386, 54, 'Gramalote'),
	(387, 5, 'Granada'),
	(388, 25, 'Granada'),
	(389, 50, 'Granada'),
	(390, 68, 'Gsepsa'),
	(391, 15, 'Gsican'),
	(392, 68, 'Guaca'),
	(393, 15, 'Guacamayas'),
	(394, 76, 'Guacari'),
	(395, 19, 'Guachene'),
	(396, 25, 'Guacheta'),
	(397, 52, 'Guachucal'),
	(398, 76, 'Guadalajara de buga'),
	(399, 5, 'Guadalupe'),
	(400, 41, 'Guadalupe'),
	(401, 68, 'Guadalupe'),
	(402, 25, 'Guaduas'),
	(403, 52, 'Guaitarilla'),
	(404, 52, 'Gualmatan'),
	(405, 47, 'Guamal'),
	(406, 50, 'Guamal'),
	(407, 73, 'Guamo'),
	(408, 19, 'Guapi'),
	(409, 68, 'Guapota'),
	(410, 70, 'Guaranda'),
	(411, 5, 'Guarne'),
	(412, 25, 'Guasca'),
	(413, 5, 'Guatape'),
	(414, 25, 'Guataqui'),
	(415, 25, 'Guatavita'),
	(416, 15, 'Guateque'),
	(417, 66, 'Guatica'),
	(418, 68, 'Guavata'),
	(419, 25, 'Guayabal de siquima'),
	(420, 25, 'Guayabetal'),
	(421, 15, 'Guayata'),
	(422, 25, 'Gutierrez'),
	(423, 54, 'Hacari'),
	(424, 13, 'Hatillo de loba'),
	(425, 68, 'Hato'),
	(426, 85, 'Hato corozal'),
	(427, 44, 'Hatonuevo'),
	(428, 5, 'Heliconia'),
	(429, 54, 'Herran'),
	(430, 73, 'Herveo'),
	(431, 5, 'Hispania'),
	(432, 41, 'Hobo'),
	(433, 73, 'Honda'),
	(434, 73, 'Ibague'),
	(435, 73, 'Icononzo'),
	(436, 52, 'Iles'),
	(437, 52, 'Imues'),
	(438, 94, 'Inirida'),
	(439, 19, 'Inza'),
	(440, 52, 'Ipiales'),
	(441, 41, 'Iquira'),
	(442, 41, 'Isnos'),
	(443, 27, 'Istmina'),
	(444, 5, 'Itagui'),
	(445, 5, 'Ituango'),
	(446, 15, 'Iza'),
	(447, 19, 'Jambalo'),
	(448, 76, 'Jamundi'),
	(449, 5, 'Jardin'),
	(450, 15, 'Jenesano'),
	(451, 5, 'Jerico'),
	(452, 15, 'Jerico'),
	(453, 25, 'Jerusalen'),
	(454, 68, 'Jesus maria'),
	(455, 68, 'Jordan'),
	(456, 8, 'Juan de acosta'),
	(457, 25, 'Junin'),
	(458, 27, 'Jurado'),
	(459, 23, 'La apartada'),
	(460, 41, 'La argentina'),
	(461, 68, 'La belleza'),
	(462, 25, 'La calera'),
	(463, 15, 'La capilla'),
	(464, 5, 'La ceja'),
	(465, 66, 'La celia'),
	(466, 91, 'La chorrera'),
	(467, 52, 'La cruz'),
	(468, 76, 'La cumbre'),
	(469, 17, 'La dorada'),
	(470, 54, 'La esperanza'),
	(471, 5, 'La estrella'),
	(472, 52, 'La florida'),
	(473, 20, 'La gloria'),
	(474, 94, 'La guadalupe'),
	(475, 20, 'La jagua de ibirico'),
	(476, 44, 'La jagua del pilar'),
	(477, 52, 'La llanada'),
	(478, 50, 'La macarena'),
	(479, 17, 'La merced'),
	(480, 25, 'La mesa'),
	(481, 18, 'La montañita'),
	(482, 25, 'La palma'),
	(483, 20, 'La paz'),
	(484, 68, 'La paz'),
	(485, 91, 'La pedrera'),
	(486, 25, 'La peña'),
	(487, 5, 'La pintada'),
	(488, 41, 'La plata'),
	(489, 54, 'La playa'),
	(490, 99, 'La primavera'),
	(491, 85, 'La salina'),
	(492, 19, 'La sierra'),
	(493, 63, 'La tebaida'),
	(494, 52, 'La tola'),
	(495, 5, 'La union'),
	(496, 52, 'La union'),
	(497, 70, 'La union'),
	(498, 76, 'La union'),
	(499, 15, 'La uvita'),
	(500, 19, 'La vega'),
	(501, 25, 'La vega'),
	(502, 15, 'La victoria'),
	(503, 76, 'La victoria'),
	(504, 91, 'La victoria'),
	(505, 66, 'La virginia'),
	(506, 54, 'Labateca'),
	(507, 15, 'Labranzagrande'),
	(508, 68, 'Landazuri'),
	(509, 68, 'Lebrija'),
	(510, 86, 'Leguizamo'),
	(511, 52, 'Leiva'),
	(512, 50, 'Lejanias'),
	(513, 25, 'Lenguazaque'),
	(514, 73, 'Lerida'),
	(515, 91, 'Leticia'),
	(516, 73, 'Libano'),
	(517, 5, 'Liborina'),
	(518, 52, 'Linares'),
	(519, 27, 'Lloro'),
	(520, 19, 'Lopez'),
	(521, 23, 'Lorica'),
	(522, 52, 'Los andes'),
	(523, 23, 'Los cordobas'),
	(524, 70, 'Los palmitos'),
	(525, 54, 'Los patios'),
	(526, 68, 'Los santos'),
	(527, 54, 'Lourdes'),
	(528, 8, 'Luruaco'),
	(529, 15, 'Macanal'),
	(530, 68, 'Macaravita'),
	(531, 5, 'Maceo'),
	(532, 25, 'Macheta'),
	(533, 25, 'Madrid'),
	(534, 13, 'Magangue'),
	(535, 52, 'Magsi'),
	(536, 13, 'Mahates'),
	(537, 44, 'Maicao'),
	(538, 70, 'Majagual'),
	(539, 68, 'Malaga'),
	(540, 8, 'Malambo'),
	(541, 52, 'Mallama'),
	(542, 8, 'Manati'),
	(543, 20, 'Manaure'),
	(544, 44, 'Manaure'),
	(545, 85, 'Mani'),
	(546, 17, 'Manizales'),
	(547, 25, 'Manta'),
	(548, 17, 'Manzanares'),
	(549, 50, 'Mapiripan'),
	(550, 94, 'Mapiripana'),
	(551, 13, 'Margarita'),
	(552, 13, 'Maria la baja'),
	(553, 5, 'Marinilla'),
	(554, 15, 'Maripi'),
	(555, 73, 'Mariquita'),
	(556, 17, 'Marmato'),
	(557, 17, 'Marquetalia'),
	(558, 66, 'Marsella'),
	(559, 17, 'Marulanda'),
	(560, 68, 'Matanza'),
	(561, 5, 'Medellin'),
	(562, 25, 'Medina'),
	(563, 27, 'Medio atrato'),
	(564, 27, 'Medio baudo'),
	(565, 27, 'Medio san juan'),
	(566, 73, 'Melgar'),
	(567, 19, 'Mercaderes'),
	(568, 50, 'Mesetas'),
	(569, 18, 'Milan'),
	(570, 15, 'Miraflores'),
	(571, 95, 'Miraflores'),
	(572, 19, 'Miranda'),
	(573, 91, 'Miriti - parana'),
	(574, 66, 'Mistrato'),
	(575, 97, 'Mitu'),
	(576, 86, 'Mocoa'),
	(577, 68, 'Mogotes'),
	(578, 68, 'Molagavita'),
	(579, 23, 'Momil'),
	(580, 13, 'Mompos'),
	(581, 15, 'Mongua'),
	(582, 15, 'Mongui'),
	(583, 15, 'Moniquira'),
	(584, 5, 'Montebello'),
	(585, 13, 'Montecristo'),
	(586, 23, 'Montelibano'),
	(587, 63, 'Montenegro'),
	(588, 23, 'Monteria'),
	(589, 85, 'Monterrey'),
	(590, 23, 'Moñitos'),
	(591, 13, 'Morales'),
	(592, 19, 'Morales'),
	(593, 18, 'Morelia'),
	(594, 94, 'Morichal'),
	(595, 70, 'Morroa'),
	(596, 25, 'Mosquera'),
	(597, 52, 'Mosquera'),
	(598, 15, 'Motavita'),
	(599, 73, 'Murillo'),
	(600, 5, 'Murindo'),
	(601, 5, 'Mutata'),
	(602, 54, 'Mutiscua'),
	(603, 15, 'Muzo'),
	(604, 5, 'Nariño'),
	(605, 25, 'Nariño'),
	(606, 52, 'Nariño'),
	(607, 41, 'Nataga'),
	(608, 73, 'Natagaima'),
	(609, 5, 'Nechi'),
	(610, 5, 'Necocli'),
	(611, 17, 'Neira'),
	(612, 41, 'Neiva'),
	(613, 25, 'Nemocon'),
	(614, 25, 'Nilo'),
	(615, 25, 'Nimaima'),
	(616, 15, 'Nobsa'),
	(617, 25, 'Nocaima'),
	(618, 17, 'Norcasia'),
	(619, 13, 'Norosi'),
	(620, 27, 'Novita'),
	(621, 47, 'Nueva granada'),
	(622, 15, 'Nuevo colon'),
	(623, 85, 'Nunchia'),
	(624, 27, 'Nuqui'),
	(625, 76, 'Obando'),
	(626, 68, 'Ocamonte'),
	(627, 54, 'Ocaña'),
	(628, 68, 'Oiba'),
	(629, 15, 'Oicata'),
	(630, 5, 'Olaya'),
	(631, 52, 'Olaya herrera'),
	(632, 68, 'Onzaga'),
	(633, 41, 'Oporapa'),
	(634, 86, 'Orito'),
	(635, 85, 'Orocue'),
	(636, 73, 'Ortega'),
	(637, 52, 'Ospina'),
	(638, 15, 'Otanche'),
	(639, 70, 'Ovejas'),
	(640, 15, 'Pachavita'),
	(641, 25, 'Pacho'),
	(642, 97, 'Pacoa'),
	(643, 17, 'Pacora'),
	(644, 19, 'Padilla'),
	(645, 15, 'Paez'),
	(646, 19, 'Paez'),
	(647, 41, 'Paicol'),
	(648, 20, 'Pailitas'),
	(649, 25, 'Paime'),
	(650, 15, 'Paipa'),
	(651, 15, 'Pajarito'),
	(652, 41, 'Palermo'),
	(653, 17, 'Palestina'),
	(654, 41, 'Palestina'),
	(655, 68, 'Palmar'),
	(656, 8, 'Palmar de varela'),
	(657, 68, 'Palmas del socorro'),
	(658, 76, 'Palmira'),
	(659, 70, 'Palmito'),
	(660, 73, 'Palocabildo'),
	(661, 54, 'Pamplona'),
	(662, 54, 'Pamplonita'),
	(663, 94, 'Pana pana'),
	(664, 25, 'Pandi'),
	(665, 15, 'Panqueba'),
	(666, 97, 'Papunaua'),
	(667, 68, 'Paramo'),
	(668, 25, 'Paratebueno'),
	(669, 25, 'Pasca'),
	(670, 52, 'Pasto'),
	(671, 19, 'Patia'),
	(672, 15, 'Pauna'),
	(673, 15, 'Paya'),
	(674, 85, 'Paz de ariporo'),
	(675, 15, 'Paz de rio'),
	(676, 5, 'Peðol'),
	(677, 47, 'Pedraza'),
	(678, 20, 'Pelaya'),
	(679, 17, 'Pensilvania'),
	(680, 5, 'Peque'),
	(681, 66, 'Pereira'),
	(682, 15, 'Pesca'),
	(683, 19, 'Piamonte'),
	(684, 68, 'Piedecuesta'),
	(685, 73, 'Piedras'),
	(686, 19, 'Piendamo'),
	(687, 63, 'Pijao'),
	(688, 47, 'Pijiño del carmen'),
	(689, 68, 'Pinchote'),
	(690, 13, 'Pinillos'),
	(691, 8, 'Piojo'),
	(692, 15, 'Pisba'),
	(693, 41, 'Pital'),
	(694, 41, 'Pitalito'),
	(695, 47, 'Pivijay'),
	(696, 73, 'Planadas'),
	(697, 23, 'Planeta rica'),
	(698, 47, 'Plato'),
	(699, 52, 'Policarpa'),
	(700, 8, 'Polonuevo'),
	(701, 8, 'Ponedera'),
	(702, 19, 'Popayan'),
	(703, 85, 'Pore'),
	(704, 52, 'Potosi'),
	(705, 76, 'Pradera'),
	(706, 73, 'Prado'),
	(707, 52, 'Providencia'),
	(708, 88, 'Providencia'),
	(709, 20, 'Pueblo bello'),
	(710, 23, 'Pueblo nuevo'),
	(711, 66, 'Pueblo rico'),
	(712, 5, 'Pueblorrico'),
	(713, 47, 'Puebloviejo'),
	(714, 68, 'Puente nacional'),
	(715, 52, 'Puerres'),
	(716, 91, 'Puerto alegria'),
	(717, 91, 'Puerto arica'),
	(718, 86, 'Puerto asis'),
	(719, 5, 'Puerto berrio'),
	(720, 15, 'Puerto boyaca'),
	(721, 86, 'Puerto caicedo'),
	(722, 99, 'Puerto carreño'),
	(723, 8, 'Puerto colombia'),
	(724, 94, 'Puerto colombia'),
	(725, 50, 'Puerto concordia'),
	(726, 23, 'Puerto escondido'),
	(727, 50, 'Puerto gaitan'),
	(728, 86, 'Puerto guzman'),
	(729, 23, 'Puerto libertador'),
	(730, 50, 'Puerto lleras'),
	(731, 50, 'Puerto lopez'),
	(732, 5, 'Puerto nare'),
	(733, 91, 'Puerto nariño'),
	(734, 68, 'Puerto parra'),
	(735, 18, 'Puerto rico'),
	(736, 50, 'Puerto rico'),
	(737, 81, 'Puerto rondon'),
	(738, 25, 'Puerto salgar'),
	(739, 54, 'Puerto santander'),
	(740, 91, 'Puerto santander'),
	(741, 19, 'Puerto tejada'),
	(742, 5, 'Puerto triunfo'),
	(743, 68, 'Puerto wilches'),
	(744, 25, 'Puli'),
	(745, 52, 'Pupiales'),
	(746, 19, 'Purace'),
	(747, 73, 'Purificacion'),
	(748, 23, 'Purisima'),
	(749, 25, 'Quebradanegra'),
	(750, 25, 'Quetame'),
	(751, 27, 'Quibdo'),
	(752, 63, 'Quimbaya'),
	(753, 66, 'Quinchia'),
	(754, 15, 'Quipama'),
	(755, 25, 'Quipile'),
	(756, 54, 'Ragonvalia'),
	(757, 15, 'Ramiriqui'),
	(758, 15, 'Raquira'),
	(759, 85, 'Recetor'),
	(760, 13, 'Regidor'),
	(761, 5, 'Remedios'),
	(762, 47, 'Remolino'),
	(763, 8, 'Repelon'),
	(764, 50, 'Restrepo'),
	(765, 76, 'Restrepo'),
	(766, 5, 'Retiro'),
	(767, 25, 'Ricaurte'),
	(768, 52, 'Ricaurte'),
	(769, 20, 'Rio de oro'),
	(770, 27, 'Rio iro'),
	(771, 27, 'Rio quito'),
	(772, 13, 'Rio viejo'),
	(773, 73, 'Rioblanco'),
	(774, 76, 'Riofrio'),
	(775, 44, 'Riohacha'),
	(776, 5, 'Rionegro'),
	(777, 68, 'Rionegro'),
	(778, 17, 'Riosucio'),
	(779, 27, 'Riosucio'),
	(780, 17, 'Risaralda'),
	(781, 41, 'Rivera'),
	(782, 52, 'Roberto payan'),
	(783, 76, 'Roldanillo'),
	(784, 73, 'Roncesvalles'),
	(785, 15, 'Rondon'),
	(786, 19, 'Rosas'),
	(787, 73, 'Rovira'),
	(788, 68, 'Sabana de torres'),
	(789, 8, 'Sabanagrande'),
	(790, 5, 'Sabanalarga'),
	(791, 8, 'Sabanalarga'),
	(792, 85, 'Sabanalarga'),
	(793, 47, 'Sabanas de san angel'),
	(794, 5, 'Sabaneta'),
	(795, 15, 'Saboya'),
	(796, 85, 'Sacama'),
	(797, 15, 'Sachica'),
	(798, 23, 'Sahagun'),
	(799, 41, 'Saladoblanco'),
	(800, 17, 'Salamina'),
	(801, 47, 'Salamina'),
	(802, 54, 'Salazar'),
	(803, 73, 'Saldaña'),
	(804, 63, 'Salento'),
	(805, 5, 'Salgar'),
	(806, 15, 'Samaca'),
	(807, 17, 'Samana'),
	(808, 52, 'Samaniego'),
	(809, 70, 'Sampues'),
	(810, 41, 'San agustin'),
	(811, 20, 'San alberto'),
	(812, 68, 'San andres'),
	(813, 88, 'San andres'),
	(814, 5, 'San andres de cuerquia'),
	(815, 52, 'San andres de tumaco'),
	(816, 23, 'San andres sotavento'),
	(817, 23, 'San antero'),
	(818, 73, 'San antonio'),
	(819, 25, 'San antonio del tequendama'),
	(820, 68, 'San benito'),
	(821, 70, 'San benito abad'),
	(822, 25, 'San bernardo'),
	(823, 52, 'San bernardo'),
	(824, 23, 'San bernardo del viento'),
	(825, 54, 'San calixto'),
	(826, 5, 'San carlos'),
	(827, 23, 'San carlos'),
	(828, 50, 'San carlos de guaroa'),
	(829, 25, 'San cayetano'),
	(830, 54, 'San cayetano'),
	(831, 13, 'San cristobal'),
	(832, 20, 'San diego'),
	(833, 15, 'San eduardo'),
	(834, 13, 'San estanislao'),
	(835, 94, 'San felipe'),
	(836, 13, 'San fernando'),
	(837, 5, 'San francisco'),
	(838, 25, 'San francisco'),
	(839, 86, 'San francisco'),
	(840, 68, 'San gil'),
	(841, 13, 'San jacinto'),
	(842, 13, 'San jacinto del cauca'),
	(843, 5, 'San jeronimo'),
	(844, 68, 'San joaquin'),
	(845, 17, 'San jose'),
	(846, 5, 'San jose de la montaña'),
	(847, 68, 'San jose de miranda'),
	(848, 15, 'San jose de pare'),
	(849, 18, 'San jose del fragua'),
	(850, 95, 'San jose del guaviare'),
	(851, 27, 'San jose del palmar'),
	(852, 50, 'San juan de arama'),
	(853, 70, 'San juan de betulia'),
	(854, 25, 'San juan de rio seco'),
	(855, 5, 'San juan de uraba'),
	(856, 44, 'San juan del cesar'),
	(857, 13, 'San juan nepomuceno'),
	(858, 50, 'San juanito'),
	(859, 52, 'San lorenzo'),
	(860, 5, 'San luis'),
	(861, 73, 'San luis'),
	(862, 15, 'San luis de gaceno'),
	(863, 85, 'San luis de palenque'),
	(864, 70, 'San luis de since'),
	(865, 70, 'San marcos'),
	(866, 20, 'San martin'),
	(867, 50, 'San martin'),
	(868, 13, 'San martin de loba'),
	(869, 15, 'San mateo'),
	(870, 68, 'San miguel'),
	(871, 86, 'San miguel'),
	(872, 15, 'San miguel de sema'),
	(873, 70, 'San onofre'),
	(874, 13, 'San pablo'),
	(875, 52, 'San pablo'),
	(876, 15, 'San pablo de borbur'),
	(877, 5, 'San pedro'),
	(878, 70, 'San pedro'),
	(879, 76, 'San pedro'),
	(880, 52, 'San pedro de cartago'),
	(881, 5, 'San pedro de uraba'),
	(882, 23, 'San pelayo'),
	(883, 5, 'San rafael'),
	(884, 5, 'San roque'),
	(885, 19, 'San sebastian'),
	(886, 47, 'San sebastian de buenavista'),
	(887, 5, 'San vicente'),
	(888, 68, 'San vicente de chucuri'),
	(889, 18, 'San vicente del caguan'),
	(890, 47, 'San zenon'),
	(891, 52, 'Sandona'),
	(892, 47, 'Santa ana'),
	(893, 5, 'Santa barbara'),
	(894, 52, 'Santa barbara'),
	(895, 68, 'Santa barbara'),
	(896, 47, 'Santa barbara de pinto'),
	(897, 13, 'Santa catalina'),
	(898, 68, 'Santa helena del opon'),
	(899, 73, 'Santa isabel'),
	(900, 8, 'Santa lucia'),
	(901, 15, 'Santa maria'),
	(902, 41, 'Santa maria'),
	(903, 47, 'Santa marta'),
	(904, 13, 'Santa rosa'),
	(905, 19, 'Santa rosa'),
	(906, 66, 'Santa rosa de cabal'),
	(907, 5, 'Santa rosa de osos'),
	(908, 15, 'Santa rosa de viterbo'),
	(909, 13, 'Santa rosa del sur'),
	(910, 99, 'Santa rosalia'),
	(911, 15, 'Santa sofia'),
	(912, 52, 'Santacruz'),
	(913, 5, 'Santafe de antioquia'),
	(914, 15, 'Santana'),
	(915, 19, 'Santander de quilichao'),
	(916, 54, 'Santiago'),
	(917, 86, 'Santiago'),
	(918, 70, 'Santiago de tolu'),
	(919, 5, 'Santo domingo'),
	(920, 8, 'Santo tomas'),
	(921, 66, 'Santuario'),
	(922, 52, 'Sapuyes'),
	(923, 81, 'Saravena'),
	(924, 54, 'Sardinata'),
	(925, 25, 'Sasaima'),
	(926, 15, 'Sativanorte'),
	(927, 15, 'Sativasur'),
	(928, 5, 'Segovia'),
	(929, 25, 'Sesquile'),
	(930, 76, 'Sevilla'),
	(931, 15, 'Siachoque'),
	(932, 25, 'Sibate'),
	(933, 86, 'Sibundoy'),
	(934, 54, 'Silos'),
	(935, 25, 'Silvania'),
	(936, 19, 'Silvia'),
	(937, 68, 'Simacota'),
	(938, 25, 'Simijaca'),
	(939, 13, 'Simiti'),
	(940, 70, 'Sincelejo'),
	(941, 27, 'Sipi'),
	(942, 47, 'Sitionuevo'),
	(943, 25, 'Soacha'),
	(944, 15, 'Soata'),
	(945, 15, 'Socha'),
	(946, 68, 'Socorro'),
	(947, 15, 'Socota'),
	(948, 15, 'Sogamoso'),
	(949, 18, 'Solano'),
	(950, 8, 'Soledad'),
	(951, 18, 'Solita'),
	(952, 15, 'Somondoco'),
	(953, 5, 'Sonson'),
	(954, 5, 'Sopetran'),
	(955, 13, 'Soplaviento'),
	(956, 25, 'Sopo'),
	(957, 15, 'Sora'),
	(958, 15, 'Soraca'),
	(959, 15, 'Sotaquira'),
	(960, 19, 'Sotara'),
	(961, 68, 'Suaita'),
	(962, 8, 'Suan'),
	(963, 19, 'Suarez'),
	(964, 73, 'Suarez'),
	(965, 41, 'Suaza'),
	(966, 25, 'Subachoque'),
	(967, 19, 'Sucre'),
	(968, 68, 'Sucre'),
	(969, 70, 'Sucre'),
	(970, 25, 'Suesca'),
	(971, 25, 'Supata'),
	(972, 17, 'Supia'),
	(973, 68, 'Surata'),
	(974, 25, 'Susa'),
	(975, 15, 'Susacon'),
	(976, 15, 'Sutamarchan'),
	(977, 25, 'Sutatausa'),
	(978, 15, 'Sutatenza'),
	(979, 25, 'Tabio'),
	(980, 27, 'Tado'),
	(981, 13, 'Talaigua nuevo'),
	(982, 20, 'Tamalameque'),
	(983, 85, 'Tamara'),
	(984, 81, 'Tame'),
	(985, 5, 'Tamesis'),
	(986, 52, 'Taminango'),
	(987, 52, 'Tangua'),
	(988, 97, 'Taraira'),
	(989, 91, 'Tarapaca'),
	(990, 5, 'Taraza'),
	(991, 41, 'Tarqui'),
	(992, 5, 'Tarso'),
	(993, 15, 'Tasco'),
	(994, 85, 'Tauramena'),
	(995, 25, 'Tausa'),
	(996, 41, 'Tello'),
	(997, 25, 'Tena'),
	(998, 47, 'Tenerife'),
	(999, 25, 'Tenjo'),
	(1000, 15, 'Tenza'),
	(1001, 54, 'Teorama'),
	(1002, 41, 'Teruel'),
	(1003, 41, 'Tesalia'),
	(1004, 25, 'Tibacuy'),
	(1005, 15, 'Tibana'),
	(1006, 15, 'Tibasosa'),
	(1007, 25, 'Tibirita'),
	(1008, 54, 'Tibu'),
	(1009, 23, 'Tierralta'),
	(1010, 41, 'Timana'),
	(1011, 19, 'Timbio'),
	(1012, 19, 'Timbiqui'),
	(1013, 15, 'Tinjaca'),
	(1014, 15, 'Tipacoque'),
	(1015, 13, 'Tiquisio'),
	(1016, 5, 'Titiribi'),
	(1017, 15, 'Toca'),
	(1018, 25, 'Tocaima'),
	(1019, 25, 'Tocancipa'),
	(1020, 15, 'Togsi'),
	(1021, 5, 'Toledo'),
	(1022, 54, 'Toledo'),
	(1023, 70, 'Tolu viejo'),
	(1024, 68, 'Tona'),
	(1025, 15, 'Topaga'),
	(1026, 25, 'Topaipi'),
	(1027, 19, 'Toribio'),
	(1028, 76, 'Toro'),
	(1029, 15, 'Tota'),
	(1030, 19, 'Totoro'),
	(1031, 85, 'Trinidad'),
	(1032, 76, 'Trujillo'),
	(1033, 8, 'Tubara'),
	(1034, 76, 'Tulua'),
	(1035, 15, 'Tunja'),
	(1036, 15, 'Tunungua'),
	(1037, 52, 'Tuquerres'),
	(1038, 13, 'Turbaco'),
	(1039, 13, 'Turbana'),
	(1040, 5, 'Turbo'),
	(1041, 15, 'Turmeque'),
	(1042, 15, 'Tuta'),
	(1043, 15, 'Tutaza'),
	(1044, 25, 'Ubala'),
	(1045, 25, 'Ubaque'),
	(1046, 76, 'Ulloa'),
	(1047, 15, 'Umbita'),
	(1048, 25, 'Une'),
	(1049, 27, 'Unguia'),
	(1050, 27, 'Union panamericana'),
	(1051, 5, 'Uramita'),
	(1052, 50, 'Uribe'),
	(1053, 44, 'Uribia'),
	(1054, 5, 'Urrao'),
	(1055, 44, 'Urumita'),
	(1056, 8, 'Usiacuri'),
	(1057, 25, 'Utica'),
	(1058, 5, 'Valdivia'),
	(1059, 23, 'Valencia'),
	(1060, 68, 'Valle de san jose'),
	(1061, 73, 'Valle de san juan'),
	(1062, 86, 'Valle del guamuez'),
	(1063, 20, 'Valledupar'),
	(1064, 5, 'Valparaiso'),
	(1065, 18, 'Valparaiso'),
	(1066, 5, 'Vegachi'),
	(1067, 68, 'Velez'),
	(1068, 73, 'Venadillo'),
	(1069, 5, 'Venecia'),
	(1070, 25, 'Venecia'),
	(1071, 15, 'Ventaquemada'),
	(1072, 25, 'Vergara'),
	(1073, 76, 'Versalles'),
	(1074, 68, 'Vetas'),
	(1075, 25, 'Viani'),
	(1076, 17, 'Victoria'),
	(1077, 5, 'Vigia del fuerte'),
	(1078, 76, 'Vijes'),
	(1079, 54, 'Villa caro'),
	(1080, 15, 'Villa de leyva'),
	(1081, 25, 'Villa de san diego de ubate'),
	(1082, 54, 'Villa del rosario'),
	(1083, 19, 'Villa rica'),
	(1084, 86, 'Villagarzon'),
	(1085, 25, 'Villagomez'),
	(1086, 73, 'Villahermosa'),
	(1087, 17, 'Villamaria'),
	(1088, 13, 'Villanueva'),
	(1089, 44, 'Villanueva'),
	(1090, 68, 'Villanueva'),
	(1091, 85, 'Villanueva'),
	(1092, 25, 'Villapinzon'),
	(1093, 73, 'Villarrica'),
	(1094, 50, 'Villavicencio'),
	(1095, 41, 'Villavieja'),
	(1096, 25, 'Villeta'),
	(1097, 25, 'Viota'),
	(1098, 15, 'Viracacha'),
	(1099, 50, 'Vistahermosa'),
	(1100, 17, 'Viterbo'),
	(1101, 25, 'Yacopi'),
	(1102, 52, 'Yacuanquer'),
	(1103, 41, 'Yaguara'),
	(1104, 5, 'Yali'),
	(1105, 5, 'Yarumal'),
	(1106, 97, 'Yavarate'),
	(1107, 5, 'Yolombo'),
	(1108, 5, 'Yondo'),
	(1109, 85, 'Yopal'),
	(1110, 76, 'Yotoco'),
	(1111, 76, 'Yumbo'),
	(1112, 13, 'Zambrano'),
	(1113, 68, 'Zapatoca'),
	(1114, 47, 'Zapayan'),
	(1115, 5, 'Zaragoza'),
	(1116, 76, 'Zarzal'),
	(1117, 15, 'Zetaquira'),
	(1118, 25, 'Zipacon'),
	(1119, 25, 'Zipaquira'),
	(1120, 47, 'Zona bananera');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;

-- Volcando estructura para tabla karma.concursante
CREATE TABLE IF NOT EXISTS `concursante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `celular` varchar(30) NOT NULL,
  `id_departamento` smallint(6) NOT NULL,
  `id_ciudad` smallint(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `habeas_data` varchar(3) DEFAULT NULL,
  `ganador` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_concursante_departamento` (`id_departamento`),
  KEY `FK_concursante_ciudad` (`id_ciudad`),
  CONSTRAINT `FK_concursante_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `FK_concursante_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla karma.concursante: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `concursante` DISABLE KEYS */;
/*!40000 ALTER TABLE `concursante` ENABLE KEYS */;

-- Volcando estructura para tabla karma.departamento
CREATE TABLE IF NOT EXISTS `departamento` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla karma.departamento: ~33 rows (aproximadamente)
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
REPLACE INTO `departamento` (`id`, `nombre`) VALUES
	(5, 'Antioquia'),
	(8, 'Atlantico'),
	(11, 'Bogota'),
	(13, 'Bolivar'),
	(15, 'Boyaca'),
	(17, 'Caldas'),
	(18, 'Caqueta'),
	(19, 'Cauca'),
	(20, 'Cesar'),
	(23, 'Cordoba'),
	(25, 'Cundinamarca'),
	(27, 'Choco'),
	(41, 'Huila'),
	(44, 'La guajira'),
	(47, 'Magdalena'),
	(50, 'Meta'),
	(52, 'Nariño'),
	(54, 'N. de santander'),
	(63, 'Quindio'),
	(66, 'Risaralda'),
	(68, 'Santander'),
	(70, 'Sucre'),
	(73, 'Tolima'),
	(76, 'Valle del cauca'),
	(81, 'Arauca'),
	(85, 'Casanare'),
	(86, 'Putumayo'),
	(88, 'San andres'),
	(91, 'Amazonas'),
	(94, 'Guainia'),
	(95, 'Guaviare'),
	(97, 'Vaupes'),
	(99, 'Vichada');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
