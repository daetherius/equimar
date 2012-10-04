-- Adminer 3.6.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `autor` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `postimgs`;
CREATE TABLE `postimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) DEFAULT '0',
  `descripcion` text,
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `layout` enum('Izquierda','Derecha','Centro') DEFAULT 'Derecha',
  `descripcion` text,
  `activo` tinyint(1) DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `postimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `productimgs`;
CREATE TABLE `productimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) DEFAULT '0',
  `descripcion` text,
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT '',
  `nombre` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `src` varchar(255) DEFAULT '',
  `video` varchar(255) DEFAULT '',
  `enlace` varchar(255) DEFAULT '',
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(10) unsigned DEFAULT '0',
  `productimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `category`, `nombre`, `slug`, `descripcion`, `src`, `video`, `enlace`, `activo`, `orden`, `productimg_count`, `created`) VALUES
(1,	'Motores 2 Tiempos',	'2CMHS',	'1_2cmhs',	'',	'',	'',	'',	1,	1,	0,	'2012-10-02 13:44:13'),
(2,	'Motores 2 Tiempos',	'5CSMHS',	'2_5csmhs',	'',	'',	'',	'',	1,	2,	0,	'2012-10-02 14:27:54'),
(3,	'Motores 2 Tiempos',	'5CSMHL',	'3_5csmhl',	'',	'',	'',	'',	1,	3,	0,	'2012-10-02 14:28:01'),
(4,	'Motores 2 Tiempos',	'E8DMHS',	'4_e8dmhs',	'',	'',	'',	'',	1,	4,	0,	'2012-10-02 14:28:08'),
(5,	'Motores 2 Tiempos',	'E8DMHL',	'5_e8dmhl',	'',	'',	'',	'',	1,	5,	0,	'2012-10-02 14:28:14'),
(6,	'Motores 2 Tiempos',	'E15DMHS',	'6_e15dmhs',	'',	'',	'',	'',	1,	6,	0,	'2012-10-02 14:28:20'),
(7,	'Motores 2 Tiempos',	'E15DMHL',	'7_e15dmhl',	'',	'',	'',	'',	1,	7,	0,	'2012-10-02 14:28:29'),
(8,	'Motores 2 Tiempos',	'E25BMHS',	'8_e25bmhs',	'',	'',	'',	'',	1,	8,	0,	'2012-10-02 14:28:36'),
(9,	'Motores 2 Tiempos',	'E25BMHL',	'9_e25bmhl',	'',	'',	'',	'',	1,	9,	0,	'2012-10-02 14:28:42'),
(10,	'Motores 2 Tiempos',	'E40JMHL',	'10_e40jmhl',	'',	'',	'',	'',	1,	10,	0,	'2012-10-02 14:28:48'),
(11,	'Motores 2 Tiempos',	'E48CMHL',	'11_e48cmhl',	'',	'',	'',	'',	1,	11,	0,	'2012-10-02 14:28:55'),
(12,	'Motores 2 Tiempos',	'E60HMHDL',	'12_e60hmhdl',	'',	'',	'',	'',	1,	12,	0,	'2012-10-02 14:30:56'),
(13,	'Motores 2 Tiempos',	'E75BMHDY',	'13_e75bmhdy',	'',	'',	'',	'',	1,	13,	0,	'2012-10-02 14:31:01'),
(14,	'Motores 2 Tiempos',	'85AEHDY',	'14_85aehdy',	'',	'',	'',	'',	1,	14,	0,	'2012-10-02 14:31:10'),
(15,	'Motores 2 Tiempos',	'85AETL',	'15_85aetl',	'',	'',	'',	'',	1,	15,	0,	'2012-10-02 14:31:18'),
(16,	'Motores 2 Tiempos',	'E115AWHY',	'16_e115awhy',	'',	'',	'',	'',	1,	16,	0,	'2012-10-02 14:31:23'),
(17,	'Motores 2 Tiempos',	'150AETX',	'17_150aetx',	'',	'',	'',	'',	1,	17,	0,	'2012-10-02 14:31:28'),
(18,	'Motores 2 Tiempos',	'L150AETX',	'18_l150aetx',	'',	'',	'',	'',	1,	18,	0,	'2012-10-02 14:31:33'),
(19,	'Motores 2 Tiempos',	'200AETX',	'19_200aetx',	'',	'',	'',	'',	1,	19,	0,	'2012-10-02 14:31:38'),
(20,	'Motores 2 Tiempos',	'L200AETX',	'20_l200aetx',	'',	'',	'',	'',	1,	20,	0,	'2012-10-02 14:31:43'),
(21,	'Motores 2 Tiempos',	'250GETOX',	'21_250getox',	'',	'',	'',	'',	1,	21,	0,	'2012-10-02 14:31:49'),
(22,	'Motores 2 Tiempos',	'L250GETOX',	'22_l250getox',	'',	'',	'',	'',	1,	22,	0,	'2012-10-02 14:31:54'),
(23,	'Motores 4 Tiempos',	'F4BMHS',	'23_f4bmhs',	'',	'',	'',	'',	1,	23,	0,	'2012-10-02 14:34:50'),
(24,	'Motores 4 Tiempos',	'F4BMHL',	'24_f4bmhl',	'',	'',	'',	'',	1,	24,	0,	'2012-10-02 14:34:56'),
(25,	'Motores 4 Tiempos',	'F6CMHS',	'25_f6cmhs',	'',	'',	'',	'',	1,	25,	0,	'2012-10-02 14:35:18'),
(26,	'Motores 4 Tiempos',	'F6CMHL',	'26_f6cmhl',	'',	'',	'',	'',	1,	26,	0,	'2012-10-02 14:35:23'),
(27,	'Motores 4 Tiempos',	'F8CMHS',	'27_f8cmhs',	'',	'',	'',	'',	1,	27,	0,	'2012-10-02 14:35:28'),
(28,	'Motores 4 Tiempos',	'F8CMHL',	'28_f8cmhl',	'',	'',	'',	'',	1,	28,	0,	'2012-10-02 14:35:34'),
(29,	'Motores 4 Tiempos',	'F9.9FMHS',	'29_f99fmhs',	'',	'',	'',	'',	1,	29,	0,	'2012-10-02 14:35:42'),
(30,	'Motores 4 Tiempos',	'F9.9FMHL',	'30_f99fmhl',	'',	'',	'',	'',	1,	30,	0,	'2012-10-02 14:35:47'),
(31,	'Motores 4 Tiempos',	'F15SMH',	'31_f15smh',	'',	'',	'',	'',	1,	31,	0,	'2012-10-02 14:35:52'),
(32,	'Motores 4 Tiempos',	'F15LMH',	'32_f15lmh',	'',	'',	'',	'',	1,	32,	0,	'2012-10-02 14:35:57'),
(33,	'Motores 4 Tiempos',	'F15SMHA',	'33_f15smha',	'',	'',	'',	'',	1,	33,	0,	'2012-10-02 14:36:01'),
(34,	'Motores 4 Tiempos',	'F15LMHA',	'34_f15lmha',	'',	'',	'',	'',	1,	34,	0,	'2012-10-02 14:36:06'),
(35,	'Motores 4 Tiempos',	'F20CMHL',	'35_f20cmhl',	'',	'',	'',	'',	1,	35,	0,	'2012-10-02 14:36:11'),
(36,	'Motores 4 Tiempos',	'F20CMHS',	'36_f20cmhs',	'',	'',	'',	'',	1,	36,	0,	'2012-10-02 14:36:16'),
(37,	'Motores 4 Tiempos',	'F25DEHTL',	'37_f25dehtl',	'',	'',	'',	'',	1,	37,	0,	'2012-10-02 14:36:21'),
(38,	'Motores 4 Tiempos',	'F25LMHA',	'38_f25lmha',	'',	'',	'',	'',	1,	38,	0,	'2012-10-02 14:37:23'),
(39,	'Motores 4 Tiempos',	'F30LEHA',	'39_f30leha',	'',	'',	'',	'',	1,	39,	0,	'2012-10-02 14:37:28'),
(40,	'Motores 4 Tiempos',	'F40FEHDL',	'40_f40fehdl',	'',	'',	'',	'',	1,	40,	0,	'2012-10-02 14:37:33'),
(41,	'Motores 4 Tiempos',	'FT50CETL',	'41_ft50cetl',	'',	'',	'',	'',	1,	41,	0,	'2012-10-02 14:37:37'),
(42,	'Motores 4 Tiempos',	'FT50CEHDL',	'42_ft50cehdl',	'',	'',	'',	'',	1,	42,	0,	'2012-10-02 14:37:41'),
(43,	'Motores 4 Tiempos',	'FT50CEHDX',	'43_ft50cehdx',	'',	'',	'',	'',	1,	43,	0,	'2012-10-02 14:37:45'),
(44,	'Motores 4 Tiempos',	'FT60DEHTL',	'44_ft60dehtl',	'',	'',	'',	'',	1,	44,	0,	'2012-10-02 14:37:50'),
(45,	'Motores 4 Tiempos',	'FT60DEHDL',	'45_ft60dehdl',	'',	'',	'',	'',	1,	45,	0,	'2012-10-02 14:37:55'),
(46,	'Motores 4 Tiempos',	'T60TLR',	'46_t60tlr',	'',	'',	'',	'',	1,	46,	0,	'2012-10-02 14:37:59'),
(47,	'Motores 4 Tiempos',	'FT60BEHTL',	'47_ft60behtl',	'',	'',	'',	'',	1,	47,	0,	'2012-10-02 14:38:04'),
(48,	'Motores 4 Tiempos',	'F75CEHDX',	'48_f75cehdx',	'',	'',	'',	'',	1,	48,	0,	'2012-10-02 14:38:12'),
(49,	'Motores 4 Tiempos',	'F90X',	'49_f90x',	'',	'',	'',	'',	1,	49,	0,	'2012-10-02 14:38:17'),
(50,	'Motores 4 Tiempos',	'F90XA',	'50_f90xa',	'',	'',	'',	'',	1,	50,	0,	'2012-10-02 14:38:22'),
(51,	'Motores 4 Tiempos',	'F100BETL',	'51_f100betl',	'',	'',	'',	'',	1,	51,	0,	'2012-10-02 14:38:26'),
(52,	'Motores 4 Tiempos',	'F100BETX',	'52_f100betx',	'',	'',	'',	'',	1,	52,	0,	'2012-10-02 14:38:31'),
(53,	'Motores 4 Tiempos',	'F100BEHDX',	'53_f100behdx',	'',	'',	'',	'',	1,	53,	0,	'2012-10-02 14:38:35'),
(54,	'Motores 4 Tiempos',	'F115AETL',	'54_f115aetl',	'',	'',	'',	'',	1,	54,	0,	'2012-10-02 14:38:40'),
(55,	'Motores 4 Tiempos',	'F115AETX',	'55_f115aetx',	'',	'',	'',	'',	1,	55,	0,	'2012-10-02 14:38:44'),
(56,	'Motores 4 Tiempos',	'F115AEHTX',	'56_f115aehtx',	'',	'',	'',	'',	1,	56,	0,	'2012-10-02 14:38:50'),
(57,	'Motores 4 Tiempos',	'FL115AETX',	'57_fl115aetx',	'',	'',	'',	'',	1,	57,	0,	'2012-10-02 14:38:54'),
(58,	'Motores 4 Tiempos',	'F150BETX',	'58_f150betx',	'',	'',	'',	'',	1,	58,	0,	'2012-10-02 14:39:05'),
(59,	'Motores 4 Tiempos',	'FL150BETX',	'59_fl150betx',	'',	'',	'',	'',	1,	59,	0,	'2012-10-02 14:40:36'),
(60,	'Motores 4 Tiempos',	'F200BETX',	'60_f200betx',	'',	'',	'',	'',	1,	60,	0,	'2012-10-02 14:40:41'),
(61,	'Motores 4 Tiempos',	'FL200BETX',	'61_fl200betx',	'',	'',	'',	'',	1,	61,	0,	'2012-10-02 14:40:45'),
(62,	'Motores 4 Tiempos',	'F225AETX',	'62_f225aetx',	'',	'',	'',	'',	1,	62,	0,	'2012-10-02 14:40:50'),
(63,	'Motores 4 Tiempos',	'FL225AETX',	'63_fl225aetx',	'',	'',	'',	'',	1,	63,	0,	'2012-10-02 14:40:55'),
(64,	'Motores 4 Tiempos',	'F250BETX',	'64_f250betx',	'',	'',	'',	'',	1,	64,	0,	'2012-10-02 14:41:00'),
(65,	'Motores 4 Tiempos',	'FL250BETX',	'65_fl250betx',	'',	'',	'',	'',	1,	65,	0,	'2012-10-02 14:41:06'),
(66,	'Motores 4 Tiempos',	'F300BETX',	'66_f300betx',	'',	'',	'',	'',	1,	66,	0,	'2012-10-02 14:41:14'),
(67,	'Motores 4 Tiempos',	'FL300BETX',	'67_fl300betx',	'',	'',	'',	'',	1,	67,	0,	'2012-10-02 14:41:21'),
(68,	'Lujo y Alto rendimiento',	'FX SHO CRUISER 2012',	'68_fx-sho-cruiser-2012',	'',	'',	'',	'',	1,	68,	0,	'2012-10-02 16:17:59'),
(69,	'Lujo y Alto rendimiento',	'FX SHO 2012',	'69_fx-sho-2012',	'',	'',	'',	'',	1,	69,	0,	'2012-10-02 16:18:05'),
(70,	'Lujo y Alto rendimiento',	'FX HO CRUISER 2012',	'70_fx-ho-cruiser-2012',	'',	'',	'',	'',	1,	70,	0,	'2012-10-02 16:18:10'),
(71,	'Lujo y Alto rendimiento',	'FX HO 2012',	'71_fx-ho-2012',	'',	'',	'',	'',	1,	71,	0,	'2012-10-02 16:18:16'),
(72,	'Rendimiento Deportivo',	'FZS 2012',	'72_fzs-2012',	'',	'',	'',	'',	1,	72,	0,	'2012-10-02 16:18:21'),
(73,	'Rendimiento Deportivo',	'FZR 2012',	'73_fzr-2012',	'',	'',	'',	'',	1,	73,	0,	'2012-10-02 16:19:11'),
(74,	'Rendimiento Deportivo',	'VXR 2012',	'74_vxr-2012',	'',	'',	'',	'',	1,	74,	0,	'2012-10-02 16:19:17'),
(75,	'Rendimiento Deportivo',	'VXS 2012',	'75_vxs-2012',	'',	'',	'',	'',	1,	75,	0,	'2012-10-02 16:19:23'),
(76,	'Recreaci&oacute;n',	'VX CRUISER 2012',	'76_vx-cruiser-2012',	'',	'',	'',	'',	1,	76,	0,	'2012-10-02 16:19:43'),
(77,	'Recreaci&oacute;n',	'VX DELUXE 2012',	'77_vx-deluxe-2012',	'',	'',	'',	'',	1,	77,	0,	'2012-10-02 16:21:08'),
(78,	'Recreaci&oacute;n',	'VX SPORT 2012',	'78_vx-sport-2012',	'',	'',	'',	'',	1,	78,	0,	'2012-10-02 16:21:13'),
(79,	'2 Tiempos',	'VX700s',	'79_vx700s',	'',	'',	'',	'',	1,	79,	0,	'2012-10-02 16:21:18'),
(80,	'2 Tiempos',	'SUPER JET',	'80_super-jet',	'',	'',	'',	'',	1,	80,	0,	'2012-10-02 16:21:22'),
(81,	'Remolques Aquamotos',	'PWC CRUISE ON',	'81_pwc-cruise-on',	'',	'',	'',	'',	1,	81,	0,	'2012-10-02 17:18:54'),
(82,	'Remolques Aquamotos',	'PWC II DOBLE',	'82_pwc-ii-doble',	'',	'',	'',	'',	1,	82,	0,	'2012-10-02 17:19:12'),
(83,	'Remolques Aquamotos',	'PWC CRUISE ON 12',	'83_pwc-cruise-on-12',	'',	'',	'',	'',	1,	83,	0,	'2012-10-02 17:19:18'),
(84,	'Remolques Aquamotos',	'PWC4 CRUISE ON',	'84_pwc4-cruise-on',	'',	'',	'',	'',	1,	84,	0,	'2012-10-02 17:19:23'),
(85,	'Remolques Aquamotos',	'PWC6 CRUISE ON',	'85_pwc6-cruise-on',	'',	'',	'',	'',	1,	85,	0,	'2012-10-02 17:19:28'),
(86,	'Borda Regular',	'W-14',	'86_w-14',	'',	'',	'',	'',	1,	86,	0,	'2012-10-02 17:20:53'),
(87,	'Motores 2 Tiempos',	'W-16',	'87_w-16',	'',	'',	'',	'',	1,	87,	0,	'2012-10-02 17:21:00'),
(88,	'Motores 2 Tiempos',	'J-18',	'88_j-18',	'',	'',	'',	'',	1,	88,	0,	'2012-10-02 17:21:06'),
(89,	'Motores 2 Tiempos',	'W-22',	'89_w-22',	'',	'',	'',	'',	1,	89,	0,	'2012-10-02 17:21:28'),
(90,	'Motores 2 Tiempos',	'W-23 II',	'90_w-23-ii',	'',	'',	'',	'',	1,	90,	0,	'2012-10-02 17:21:34'),
(91,	'Motores 2 Tiempos',	'W-25',	'91_w-25',	'',	'',	'',	'',	1,	91,	0,	'2012-10-02 17:21:38'),
(92,	'Motores 2 Tiempos',	'W-26',	'92_w-26',	'',	'',	'',	'',	1,	92,	0,	'2012-10-02 17:21:43'),
(93,	'Motores 2 Tiempos',	'W-29',	'93_w-29',	'',	'',	'',	'',	1,	93,	0,	'2012-10-02 17:21:48'),
(94,	'Motores 2 Tiempos',	'W-33',	'94_w-33',	'',	'',	'',	'',	1,	94,	0,	'2012-10-02 17:21:54'),
(95,	'Borda Alta',	'W-22 B/A',	'95_w-22-ba',	'',	'',	'',	'',	1,	95,	0,	'2012-10-02 17:23:36'),
(96,	'Borda Alta',	'W-25 B/A',	'96_w-25-ba',	'',	'',	'',	'',	1,	96,	0,	'2012-10-02 17:23:55'),
(97,	'Borda Alta',	'W-26 B/A',	'97_w-26-ba',	'',	'',	'',	'',	1,	97,	0,	'2012-10-02 17:24:05'),
(98,	'Hieleras de Fibra de Vidrio',	'500 Lt',	'98_500-lt',	'',	'',	'',	'',	1,	98,	0,	'2012-10-02 17:26:49'),
(99,	'Hieleras de Fibra de Vidrio',	'330 Lt',	'99_330-lt',	'',	'',	'',	'',	1,	99,	0,	'2012-10-02 17:27:01'),
(100,	'Hieleras de Fibra de Vidrio',	'215 Lt',	'100_215-lt',	'',	'',	'',	'',	1,	100,	0,	'2012-10-02 17:27:16'),
(101,	'Remolques',	'T21A',	'101_t21a',	'',	'',	'',	'',	1,	101,	0,	'2012-10-02 17:27:36'),
(102,	'Remolques',	'T2370',	'102_t2370',	'',	'',	'',	'',	1,	102,	0,	'2012-10-02 17:27:43'),
(103,	'Remolques',	'T2670',	'103_t2670',	'',	'',	'',	'',	1,	103,	0,	'2012-10-02 17:27:48'),
(104,	'Remolques',	'T3210',	'104_t3210',	'',	'',	'',	'',	1,	104,	0,	'2012-10-02 17:27:53'),
(105,	'Generadores 2 Tiempos',	'ET 650',	'105_et-650',	'',	'',	'',	'',	1,	105,	0,	'2012-10-02 17:29:50'),
(106,	'Generadores 2 Tiempos',	'ET 950',	'106_et-950',	'',	'',	'',	'',	1,	106,	0,	'2012-10-02 17:29:56'),
(107,	'Generadores 4 Tiempos Inverter',	'EF 1000 iS',	'107_ef-1000-is',	'',	'',	'',	'',	1,	107,	0,	'2012-10-02 17:30:20'),
(108,	'Generadores 4 Tiempos Inverter',	'EF 2000 iS',	'108_ef-2000-is',	'',	'',	'',	'',	1,	108,	0,	'2012-10-02 17:30:30'),
(109,	'Generadores 4 Tiempos Inverter',	'EF 2400 iS',	'109_ef-2400-is',	'',	'',	'',	'',	1,	109,	0,	'2012-10-02 17:30:36'),
(110,	'Generadores 4 Tiempos Premium',	'EF 1000FW',	'110_ef-1000fw',	'',	'',	'',	'',	1,	110,	0,	'2012-10-02 17:31:16'),
(111,	'Generadores 4 Tiempos Premium',	'EF 2600FW',	'111_ef-2600fw',	'',	'',	'',	'',	1,	111,	0,	'2012-10-02 17:40:22'),
(112,	'Generadores 4 Tiempos Premium',	'EF 4000DFW',	'112_ef-4000dfw',	'',	'',	'',	'',	1,	112,	0,	'2012-10-02 17:40:29'),
(113,	'Generadores 4 Tiempos Premium',	'EF 5200DFW',	'113_ef-5200dfw',	'',	'',	'',	'',	1,	113,	0,	'2012-10-02 17:40:34'),
(114,	'Generadores 4 Tiempos Premium',	'EF 6600DE',	'114_ef-6600de',	'',	'',	'',	'',	1,	114,	0,	'2012-10-02 17:40:57'),
(115,	'Generadores Diesel',	'EDL 11000DE',	'115_edl-11000de',	'',	'',	'',	'',	1,	115,	0,	'2012-10-02 17:41:38'),
(116,	'Generadores Diesel',	'EDL 13000TE',	'116_edl-13000te',	'',	'',	'',	'',	1,	116,	0,	'2012-10-02 17:41:42'),
(117,	'Generadores Diesel',	'EDL 16000DE',	'117_edl-16000de',	'',	'',	'',	'',	1,	117,	0,	'2012-10-02 17:41:47'),
(118,	'Generadores Diesel',	'EDL 20000TE',	'118_edl-20000te',	'',	'',	'',	'',	1,	118,	0,	'2012-10-02 17:41:52'),
(119,	'Generadores Diesel',	'EDL 21000DE',	'119_edl-21000de',	'',	'',	'',	'',	1,	119,	0,	'2012-10-02 17:41:56'),
(120,	'Generadores Diesel',	'EDL 26000TE',	'120_edl-26000te',	'',	'',	'',	'',	1,	120,	0,	'2012-10-02 17:42:00'),
(121,	'Bombas de Riego',	'YP 20 GY',	'121_yp-20-gy',	'',	'',	'',	'',	1,	121,	0,	'2012-10-02 17:42:09'),
(122,	'Bombas de Riego',	'YP 30 GY',	'122_yp-30-gy',	'',	'',	'',	'',	1,	122,	0,	'2012-10-02 17:42:16'),
(123,	'Motores Multiuso',	'MZ125',	'123_mz125',	'',	'',	'',	'',	1,	123,	0,	'2012-10-02 17:43:07'),
(124,	'Motores Multiuso',	'MZ125 G1',	'124_mz125-g1',	'',	'',	'',	'',	1,	124,	0,	'2012-10-02 17:43:11'),
(125,	'Motores Multiuso',	'MZ175A1',	'125_mz175a1',	'',	'',	'',	'',	1,	125,	0,	'2012-10-02 17:43:16'),
(126,	'Motores Multiuso',	'MZ175H2',	'126_mz175h2',	'',	'',	'',	'',	1,	126,	0,	'2012-10-02 17:43:21'),
(127,	'Motores Multiuso',	'MZ200 A2B',	'127_mz200-a2b',	'',	'',	'',	'',	1,	127,	0,	'2012-10-02 17:43:26'),
(128,	'Motores Multiuso',	'MZ250 A2',	'128_mz250-a2',	'',	'',	'',	'',	1,	128,	0,	'2012-10-02 17:43:30'),
(129,	'Motores Multiuso',	'MZ250 H2',	'129_mz250-h2',	'',	'',	'',	'',	1,	129,	0,	'2012-10-02 17:43:35'),
(130,	'Motores Multiuso',	'MZ300 A2B',	'130_mz300-a2b',	'',	'',	'',	'',	1,	130,	0,	'2012-10-02 17:43:39'),
(131,	'Motores Multiuso',	'MZ300 K4',	'131_mz300-k4',	'',	'',	'',	'',	1,	131,	0,	'2012-10-02 17:43:44'),
(132,	'Motores Multiuso',	'MZ360 A2B',	'132_mz360-a2b',	'',	'',	'',	'',	1,	132,	0,	'2012-10-02 17:43:49'),
(133,	'Motores Multiuso',	'MZ360 K5',	'133_mz360-k5',	'',	'',	'',	'',	1,	133,	0,	'2012-10-02 17:43:54'),
(134,	'Pesca Deportiva',	'ALETAS',	'134_aletas',	'',	'',	'',	'',	1,	134,	0,	'2012-10-02 17:50:52'),
(135,	'Pesca Deportiva',	'VISORES',	'135_visores',	'',	'',	'',	'',	1,	135,	0,	'2012-10-02 17:51:00'),
(136,	'Pesca Deportiva',	'CHALECOS',	'136_chalecos',	'',	'',	'',	'',	1,	136,	0,	'2012-10-02 17:51:05'),
(137,	'Pesca Deportiva',	'REGULADORES',	'137_reguladores',	'',	'',	'',	'',	1,	137,	0,	'2012-10-02 17:51:10'),
(138,	'Pesca Deportiva',	'ARPONES',	'138_arpones',	'',	'',	'',	'',	1,	138,	0,	'2012-10-02 17:51:14'),
(139,	'Pesca Deportiva',	'TANQUES AUXILIARES',	'139_tanques-auxiliares',	'',	'',	'',	'',	1,	139,	0,	'2012-10-02 17:51:19'),
(140,	'Pesca Comercial',	'COMPRESORES DE AIRE',	'140_compresores-de-aire',	'',	'',	'',	'',	1,	140,	0,	'2012-10-02 17:51:46'),
(141,	'Pesca Comercial',	'MANGUERAS',	'141_mangueras',	'',	'',	'',	'',	1,	141,	0,	'2012-10-02 17:51:53'),
(142,	'Pesca Comercial',	'ALETAS',	'142_aletas',	'',	'',	'',	'',	1,	142,	0,	'2012-10-02 17:51:58'),
(143,	'Pesca Comercial',	'ARPONES',	'143_arpones',	'',	'',	'',	'',	1,	143,	0,	'2012-10-02 17:52:03');

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `master` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `apellidos`, `master`, `created`) VALUES
(1,	'pulsem',	'327d3429df2c4512edc07ed9e948aa75f5d14f50',	'Master',	NULL,	1,	'2010-01-01 00:00:00'),
(2,	'admin',	'd033e22ae348aeb5660fc2140aec35850c4da997',	'Master',	NULL,	1,	'2010-01-01 00:00:00');

-- 2012-10-03 23:12:33
