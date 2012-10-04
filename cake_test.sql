-- Adminer 3.5.1 MySQL dump

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

INSERT INTO `about` (`id`, `descripcion`, `created`) VALUES
(2,	'<p>Texto Nosotros</p>',	'2012-04-02 13:54:14');

DROP TABLE IF EXISTS `albumimgs`;
CREATE TABLE `albumimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) NOT NULL DEFAULT '0',
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `albumimgs` (`id`, `album_id`, `src`, `portada`, `descripcion`, `created`) VALUES
(3,	1,	'upload/img11.jpg',	0,	NULL,	'2010-08-27 13:43:27'),
(8,	1,	'upload/img201283473827.jpg',	1,	NULL,	'2010-09-02 19:30:27'),
(4,	2,	'upload/img07.jpg',	1,	NULL,	'2010-09-02 19:08:57'),
(5,	2,	'upload/img081283472537.jpg',	0,	NULL,	'2010-09-02 19:08:57'),
(6,	2,	'upload/img091283472537.jpg',	0,	NULL,	'2010-09-02 19:08:57'),
(7,	2,	'upload/img10.jpg',	0,	NULL,	'2010-09-02 19:08:57'),
(9,	1,	'upload/img031283473827.jpg',	0,	NULL,	'2010-09-02 19:30:27'),
(10,	1,	'upload/img121283473842.jpg',	0,	NULL,	'2010-09-02 19:30:27'),
(11,	1,	'upload/img161283474024.jpg',	0,	NULL,	'2010-09-02 19:33:44'),
(13,	1,	'upload/img02.jpg',	0,	NULL,	'2010-09-02 19:36:28');

DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  `descripcion` text NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `albumimg_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `albums` (`id`, `nombre`, `descripcion`, `activo`, `comment_count`, `albumimg_count`, `created`) VALUES
(1,	'Colecci&oacute;n 1 Power shot',	'<p>Esta es la descripci&oacute;n, ahora un poquito m&aacute;s decente.</p>',	1,	0,	6,	'2010-08-27 13:43:26'),
(2,	'Album power',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.<br />Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc., li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilit&aacute; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.<br />Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental: in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.<br /><br /></p>',	1,	0,	4,	'2010-09-02 19:08:57');

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  `src` varchar(255) NOT NULL,
  `enlace` varchar(255) DEFAULT NULL,
  `tipo` enum('carrusel','lateral') DEFAULT 'lateral',
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(11) DEFAULT '0',
  `caducidad` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `banners` (`id`, `nombre`, `src`, `enlace`, `tipo`, `activo`, `orden`, `caducidad`, `created`) VALUES
(17,	'banner&quot; onclick=&quot;alert(&#039;BOOM&#039;);&quot; &lt;s&gt;2&lt;/s&gt; some',	'upload/img47.jpg',	'',	'lateral',	1,	2,	NULL,	'2012-03-10 15:23:01'),
(16,	'&lt;span&gt;banner 1&lt;/span&gt;',	'upload/img12.jpg',	'',	'lateral',	1,	1,	NULL,	'2012-03-10 15:22:47'),
(18,	'',	'',	NULL,	'lateral',	1,	0,	NULL,	'2012-05-10 17:11:42');

DROP TABLE IF EXISTS `buyers`;
CREATE TABLE `buyers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT '',
  `apellidos` varchar(255) DEFAULT '',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `carousels`;
CREATE TABLE `carousels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `enlace` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `orden` int(10) unsigned DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `carousels` (`id`, `src`, `enlace`, `descripcion`, `orden`, `activo`, `created`) VALUES
(26,	'upload/04.jpg',	NULL,	NULL,	4,	0,	'2012-04-03 16:33:08'),
(24,	'upload/02.jpg',	NULL,	NULL,	2,	0,	'2012-04-03 16:33:08'),
(25,	'upload/03.jpg',	NULL,	NULL,	3,	0,	'2012-04-03 16:33:08'),
(23,	'upload/01.jpg',	NULL,	NULL,	1,	0,	'2012-04-03 16:33:08');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `nombre` varchar(120) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rght` int(10) unsigned DEFAULT NULL,
  `orden` int(10) unsigned DEFAULT NULL,
  `master` tinyint(1) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `parent_id`, `nombre`, `slug`, `lft`, `rght`, `orden`, `master`, `created`) VALUES
(1,	NULL,	'Nivel 2',	'1_nivel-2',	1,	12,	11,	0,	'2011-01-05 14:06:03'),
(2,	NULL,	'Nivel 1',	'2_nivel-1',	13,	20,	6,	1,	'2011-11-24 14:55:49'),
(4,	NULL,	'Nivel 3 mod',	'4_nivel-3-mod',	21,	32,	10,	0,	'2012-07-23 19:00:12'),
(5,	NULL,	'Nivel 4',	'5_nivel-4',	33,	40,	9,	0,	'2012-07-23 19:00:12'),
(6,	NULL,	'Nivel 5',	'6_nivel-5',	41,	46,	7,	0,	'2012-07-23 19:00:12'),
(7,	NULL,	'Nivel 6',	'7_nivel-6',	47,	56,	4,	0,	'2012-07-23 19:00:12'),
(10,	NULL,	'Nivel 9',	'10_nivel-9',	57,	60,	13,	0,	'2012-07-23 19:00:12'),
(11,	NULL,	'Nivel 10',	'11_nivel-10',	61,	66,	2,	0,	'2012-07-23 19:00:12'),
(57,	NULL,	'Nivel 17',	'57_nivel-17',	77,	78,	8,	0,	'2012-08-05 00:36:32'),
(13,	NULL,	'Nivel 12',	'13_nivel-12',	67,	74,	1,	0,	'2012-07-23 19:00:12'),
(15,	2,	'Nivel 1.1',	'15_nivel-11',	14,	15,	2,	0,	'2012-07-23 19:11:45'),
(16,	2,	'Nivel 1.2',	'16_nivel-12',	16,	17,	1,	0,	'2012-07-23 19:11:46'),
(17,	2,	'Nivel 1.3',	'17_nivel-13',	18,	19,	0,	0,	'2012-07-23 19:11:46'),
(18,	1,	'Nivel 2.1',	'18_nivel-21',	2,	3,	4,	0,	'2012-07-23 19:12:15'),
(19,	1,	'Nivel 2.2',	'19_nivel-22',	4,	5,	3,	0,	'2012-07-23 19:12:15'),
(20,	1,	'Nivel 2.3',	'20_nivel-23',	6,	7,	2,	0,	'2012-07-23 19:12:15'),
(21,	1,	'Nivel 2.4',	'21_nivel-24',	8,	9,	1,	0,	'2012-07-23 19:12:15'),
(22,	1,	'Nivel 2.5',	'22_nivel-25',	10,	11,	0,	0,	'2012-07-23 19:12:16'),
(23,	4,	'Nivel 3.1',	'23_nivel-31',	22,	23,	4,	0,	'2012-07-23 19:40:45'),
(24,	4,	'Nivel 3.2',	'24_nivel-32',	24,	25,	3,	0,	'2012-07-23 19:40:45'),
(25,	4,	'Nivel 3.3',	'25_nivel-33',	26,	27,	2,	0,	'2012-07-23 19:40:45'),
(26,	4,	'Nivel 3.4',	'26_nivel-34',	28,	29,	1,	0,	'2012-07-23 19:40:45'),
(27,	4,	'Nivel 3.5',	'27_nivel-35',	30,	31,	0,	0,	'2012-07-23 19:40:45'),
(28,	5,	'Nivel 4.1',	'28_nivel-41',	34,	35,	3,	0,	'2012-07-23 19:41:12'),
(29,	5,	'Nivel 4.2',	'29_nivel-42',	36,	37,	2,	0,	'2012-07-23 19:41:12'),
(30,	5,	'Nivel 4.3',	'30_nivel-43',	38,	39,	1,	0,	'2012-07-23 19:41:12'),
(31,	6,	'Nivel 5.2',	'31_nivel-52',	42,	43,	1,	0,	'2012-07-23 19:41:57'),
(32,	6,	'Nivel 5.3',	'32_nivel-53',	44,	45,	0,	0,	'2012-07-23 19:41:57'),
(33,	7,	'Nivel 6.1',	'33_nivel-61',	48,	49,	3,	0,	'2012-07-23 19:42:28'),
(34,	7,	'Nivel 6.2',	'34_nivel-62',	50,	51,	2,	0,	'2012-07-23 19:42:28'),
(35,	7,	'Nivel 6.3',	'35_nivel-63',	52,	53,	1,	0,	'2012-07-23 19:42:28'),
(36,	7,	'Nivel 6.4',	'36_nivel-64',	54,	55,	0,	0,	'2012-07-23 19:42:28'),
(43,	10,	'Nivel 9.1',	'43_nivel-91',	58,	59,	0,	0,	'2012-07-23 19:43:23'),
(44,	11,	'Nivel 10.1',	'44_nivel-101',	62,	63,	1,	0,	'2012-07-23 19:43:39'),
(45,	11,	'Nivel 10.2',	'45_nivel-102',	64,	65,	0,	0,	'2012-07-23 19:43:39'),
(60,	NULL,	'Nivel 14',	'60_nivel-14',	83,	84,	3,	0,	'2012-08-05 00:36:32'),
(59,	NULL,	'Nivel 15',	'59_nivel-15',	81,	82,	5,	0,	'2012-08-05 00:36:32'),
(58,	NULL,	'Nivel 16',	'58_nivel-16',	79,	80,	12,	0,	'2012-08-05 00:36:32'),
(53,	13,	'Nivel 12.1',	'53_nivel-121',	68,	69,	2,	0,	'2012-07-23 19:44:35'),
(54,	13,	'Nivel 12.2',	'54_nivel-122',	70,	71,	1,	0,	'2012-07-23 19:44:35'),
(55,	13,	'Nivel 12.3',	'55_nivel-123',	72,	73,	0,	0,	'2012-07-23 19:44:35'),
(56,	NULL,	'Nivel 13',	'56_nivel-13',	75,	76,	0,	0,	'2012-08-05 00:19:58');

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` varchar(30) NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `autor` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `web` varchar(80) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `comments` (`id`, `parent`, `parent_id`, `autor`, `email`, `web`, `descripcion`, `created`) VALUES
(10,	'',	2,	'FULLY CHANGED 2',	'mi@correo.com',	'power.com',	'&lt;p&gt;&amp;lt;p&amp;gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.&amp;lt;/p&amp;gt;&lt;/p&gt;',	'2010-08-26 15:00:36'),
(9,	'',	2,	'&lt;s&gt;LOL&lt;/s&gt;',	'mi@correo.com',	'',	'&lt;s&gt;LOL&lt;/s&gt;\n&lt;s&gt;LOLOLOL&lt;/s&gt;\n&lt;s&gt;LOLOLOLOLOLOLOLO&lt;/s&gt;\n\n&lt;s&gt;TROLOL&Oacute;&lt;/s&gt;',	'2010-08-26 14:14:51'),
(11,	'',	3,	'daetherius',	'daetherius@live.com.mx',	'pulsem.mx',	'PIMEDO!!',	'2010-09-03 13:27:35'),
(12,	'',	3,	'El trolleador',	'dan@pulsem.mx',	'',	'SEGUDO!!\n..\nTECERO!\n..\nCUATO!',	'2010-09-03 13:28:28'),
(13,	'',	NULL,	'Prueba nl2br',	'mi@correo.com',	'',	'Este es un &lt;s&gt;p&aacute;rrafo&lt;/s&gt; en un comentario que se supone debe ser lo suficientemente largo como para que alguien pueda hacer la prueba de como se ver&iacute;a este texto sin aplicar la transformaci&oacute;n de nl2br. Este es un &lt;s&gt;p&aacute;rrafo&lt;/s&gt; en un comentario que se supone debe ser lo suficientemente largo como para que alguien pueda hacer la prueba de como se ver&iacute;a este texto sin aplicar la transformaci&oacute;n de nl2br.\n\nEspero que el ejemplo lo deje suficientemente claro como para saber si es necesario hacer alg&uacute;n cambio. &lt;p&gt;P&aacute;rrafo&lt;/p&gt; Espero que el ejemplo lo deje suficientemente claro como para saber si es necesario hacer alg&uacute;n cambio. &lt;p&gt;P&aacute;rrafo&lt;/p&gt;\n\nGracias.',	'2010-09-03 13:38:37'),
(14,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mail@power.com',	'http://pulsem.mx#&quot;',	'Mi coment &quot;poderoso&quot; y con &lt;a href=&quot;#&quot;&gt;enlaces&lt;/a&gt;',	'2010-09-07 14:53:46'),
(15,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mail@power.com',	'http://pulsem.mx#,',	'Mi coment &quot;poderoso&quot; y con &lt;a href=&quot;#&quot;&gt;enlaces&lt;/a&gt;',	'2010-09-07 14:53:52'),
(16,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mail@power.com',	'http://pulsem.mx#,',	'Mi coment &quot;poderoso&quot; y con &lt;a href=&quot;#&quot;&gt;enlaces&lt;/a&gt;',	'2010-09-07 14:53:56'),
(17,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mail@power.com',	'http://pulsem.mx#',	'Mi coment &quot;poderoso&quot; y con &lt;a href=&quot;#&quot;&gt;enlaces&lt;/a&gt;',	'2010-09-07 14:54:01'),
(18,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mail@power.com',	'http://pulsem.mx',	'Mi coment &quot;poderoso&quot; y con &lt;a href=&quot;#&quot;&gt;enlaces&lt;/a&gt;',	'2010-09-07 14:54:05'),
(19,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mail@power.com',	'http://pulsem.mx',	'Mi coment &quot;poderoso&quot; y con &lt;a href=&quot;#&quot;&gt;enlaces&lt;/a&gt;',	'2010-09-07 14:54:08'),
(20,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mail@power.com',	'http://pulsem.mx',	'Mi coment &quot;poderoso&quot; y con &lt;a href=&quot;#&quot;&gt;enlaces&lt;/a&gt;',	'2010-09-07 14:54:17'),
(21,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mi@correo.com',	'http://pulsem.mx',	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'2010-09-07 14:54:42'),
(22,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mi@correo.com',	'http://pulsem.mx',	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'2010-09-07 14:55:14'),
(23,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mi@correo.com',	'http://pulsem.mx',	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'2010-09-07 14:55:29'),
(24,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mi@correo.com',	'http://pulsem.mx#&quot;',	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'2010-09-07 14:55:50'),
(25,	'Product',	9,	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'mi@correo.com',	'http://pulsem.mx#&quot;',	'&lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt; &lt;a href=&quot;#&quot;&gt;Enlace&lt;/a&gt;',	'2010-09-07 15:00:12'),
(26,	'Product',	9,	'&lt;s class=&quot;error&quot;&gt;Enlace&lt;/s&gt;',	'mi@correo.com',	'',	'&lt;s class=&quot;error&quot;&gt;Enlace&lt;/s&gt;',	'2010-09-07 15:05:17'),
(27,	'Product',	9,	'&lt;s class=&quot;error&quot;&gt;Enlace&lt;/s&gt;',	'mi@correo.com',	'http://pulsem.mx#&quot;,&amp;',	'&lt;s class=&quot;error&quot;&gt;Enlace&lt;/s&gt;\n&lt;s class=&quot;error&quot;&gt;Enlace&lt;/s&gt;\n&lt;s class=&quot;error&quot;&gt;Enlace&lt;/s&gt;',	'2010-09-07 15:06:34'),
(28,	'Post',	7,	'Daniel Portales',	'mi@correo.com',	NULL,	'&Eacute;ste es mi comentario maloso',	'2012-03-10 18:07:48'),
(29,	'Post',	7,	'Curabitur faucibus dapibus erat',	'este@mipoder.com',	NULL,	'Curabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio Curabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent.\n\nvel odio Curabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio Curabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio.\n\nCurabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio.',	'2012-03-10 18:08:28'),
(30,	'Post',	7,	'dapibus erat, sit amet',	'hol@power.com',	NULL,	'Curabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio Curabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio.\n\nCurabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio.',	'2012-03-10 18:08:54'),
(31,	'Post',	7,	'dapibus erat, sit amet',	'micorreo@electronico.com',	NULL,	'dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.\n\ndapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.',	'2012-03-10 19:03:35'),
(32,	'Post',	7,	'dapibus erat, sit amet',	'micorreo@electronico.com',	NULL,	'dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.\n\ndapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.',	'2012-03-10 19:06:06'),
(33,	'Post',	7,	'dapibus erat, sit amet',	'micorreo@electronico.com',	NULL,	'dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.\n\ndapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.',	'2012-03-10 19:07:13'),
(34,	'Post',	7,	'dapibus erat, sit amet',	'micorreo@electronico.com',	NULL,	'dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.\n\ndapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio sit amet sem porta sagittis.',	'2012-03-10 19:07:21'),
(35,	'Post',	7,	'vfgcfcfgcfgc',	'x@lolwut.com',	NULL,	'uhybuyububububu',	'2012-03-10 19:07:46'),
(36,	'Post',	7,	'vfgcfcfgcfgc',	'x@lolwut.com',	NULL,	'uhybuyububububu',	'2012-03-10 19:08:28'),
(37,	'Post',	7,	'vfgcfcfgcfgc',	'x@lolwut.com',	NULL,	'uhybuyububububu',	'2012-03-10 19:08:36'),
(38,	'Post',	7,	'asdmkasmdkla',	'micorreo@electronico.com',	NULL,	'comment',	'2012-03-10 19:09:29'),
(39,	'Post',	7,	'asdmkasmdkla',	'micorreo@electronico.com',	NULL,	'comment',	'2012-03-10 19:10:03'),
(40,	'Post',	7,	'asdmkasmdkla',	'micorreo@electronico.com',	NULL,	'comment',	'2012-03-10 19:10:07'),
(41,	'Post',	7,	'asdmkasmdkla',	'micorreo@electronico.com',	NULL,	'comment',	'2012-03-10 19:13:55'),
(42,	'Post',	7,	'dasdasdas',	'micorreo@electronico.com',	NULL,	'xasasasasas',	'2012-03-10 19:14:07'),
(43,	'Post',	7,	'dasdasdas',	'micorreo@electronico.com',	NULL,	'xasasasasas',	'2012-03-10 19:16:06'),
(44,	'Post',	7,	'dasdasdas',	'micorreo@electronico.com',	NULL,	'xasasasasas',	'2012-03-10 19:16:11'),
(45,	'Post',	7,	'dasdasdas',	'micorreo@electronico.com',	NULL,	'xasasasasas',	'2012-03-10 19:16:31'),
(46,	'Post',	7,	'dasdasdas',	'micorreo@electronico.com',	NULL,	'xasasasasas',	'2012-03-10 19:17:55'),
(47,	'Post',	7,	'ddsadsadas',	'x@lolwut.com',	NULL,	'xasdadsasddsadsa',	'2012-03-10 19:21:18'),
(48,	'Post',	7,	'adaddas',	'x@lolwut.com',	NULL,	'asdasdadas',	'2012-03-10 19:23:05'),
(49,	'Post',	7,	'dasdsa',	'micorreo@electronico.com',	NULL,	'asdasd as',	'2012-03-10 19:24:53'),
(50,	'Post',	7,	'asdasdasd',	'micorreo@electronico.com',	NULL,	'asdadadsads',	'2012-03-10 19:25:29'),
(51,	'Post',	7,	'adsadsasd',	'micorreo@electronico.com',	NULL,	'asdadsads',	'2012-03-10 19:28:49'),
(52,	'Post',	7,	'sdasdasads',	'x@lolwut.com',	NULL,	'azzzzzzzzzzzzzzzz',	'2012-03-10 19:33:33'),
(53,	'Post',	7,	'cewe',	'my@correo.com',	NULL,	'asdsadasadxczx',	'2012-03-10 19:33:57');

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(3) NOT NULL,
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `currencies` (`id`, `nombre`, `orden`, `created`) VALUES
(1,	'MXN',	1,	'2012-07-23 20:19:19'),
(2,	'USD',	2,	'2012-07-23 20:19:26');

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `layout` enum('Izquierda','Derecha','Centro') DEFAULT 'Derecha',
  `descripcion` text,
  `activo` tinyint(1) DEFAULT '1',
  `fecha` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(10) unsigned DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `faqs` (`id`, `nombre`, `descripcion`, `orden`, `activo`, `created`) VALUES
(1,	'&iquest;Esta es una pregunta?',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>',	2,	1,	'2010-09-03 14:53:29'),
(2,	'&iquest;Deber&iacute;a dedicarse m&aacute;s tiempo a la mejora de la plantilla de econositios?',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>',	0,	1,	'2010-09-03 14:56:30'),
(9,	'Las Forettes',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam  nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat  volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation  ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.  Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse  molestie consequat.</p>',	3,	1,	'2010-09-03 16:36:14'),
(10,	'test',	'<p>addassaddasdsa</p>',	NULL,	1,	'2012-02-25 12:20:22'),
(11,	'ordename!',	'<p>asdsadsasd</p>',	NULL,	1,	'2012-02-25 12:20:44'),
(12,	'asdadsdasdsa',	'<p>dasadsdsadsadsa</p>',	NULL,	1,	'2012-02-25 12:21:08'),
(13,	'ahora si?',	'<p>asdasdsad</p>',	4,	1,	'2012-02-25 12:31:28'),
(14,	'sadasdsa',	'<p>asdasdas</p>',	5,	1,	'2012-02-25 13:35:45'),
(15,	'asddasdsaads',	'<p>asddasadsads</p>',	NULL,	1,	'2012-02-25 13:36:00');

DROP TABLE IF EXISTS `nodeimgs`;
CREATE TABLE `nodeimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) NOT NULL DEFAULT '0',
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nodeimgs` (`id`, `node_id`, `src`, `portada`, `descripcion`, `created`) VALUES
(1,	7,	'upload/img05.jpg',	1,	NULL,	'2011-04-09 20:44:20'),
(2,	7,	'upload/img09.jpg',	0,	NULL,	'2011-04-09 20:44:20'),
(3,	7,	'upload/img14.jpg',	0,	NULL,	'2011-04-09 20:44:20');

DROP TABLE IF EXISTS `nodes`;
CREATE TABLE `nodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `nombre` varchar(120) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `externo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enlace` varchar(255) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `layout` enum('left','right','full') NOT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rght` int(10) unsigned DEFAULT NULL,
  `orden` int(10) unsigned DEFAULT NULL,
  `master` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `nombre` (`nombre`,`descripcion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `nodes` (`id`, `parent_id`, `nombre`, `slug`, `externo`, `enlace`, `descripcion`, `layout`, `lft`, `rght`, `orden`, `master`, `created`) VALUES
(12,	7,	'Ice',	'12_ice',	0,	NULL,	'',	'left',	6,	7,	2,	0,	'2011-04-09 20:39:28'),
(11,	7,	'Water',	'11_water',	0,	NULL,	'',	'left',	4,	5,	1,	0,	'2011-04-09 20:39:28'),
(10,	7,	'Fire',	'10_fire',	0,	NULL,	'',	'left',	2,	3,	0,	0,	'2011-04-09 20:39:28'),
(9,	NULL,	'Bravery',	'9_bravery',	0,	NULL,	'',	'left',	23,	24,	2,	0,	'2011-04-09 20:38:57'),
(8,	NULL,	'Power',	'8_power',	0,	'',	'',	'left',	9,	22,	1,	0,	'2011-04-09 20:38:57'),
(7,	NULL,	'Spirit',	'7_spirit',	0,	'',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>',	'left',	1,	8,	0,	0,	'2011-04-09 20:38:57'),
(13,	8,	'Black',	'13_black',	0,	NULL,	'',	'left',	10,	11,	0,	0,	'2011-04-09 20:39:49'),
(14,	8,	'White',	'14_white',	0,	'',	'',	'left',	12,	19,	1,	0,	'2011-04-09 20:39:49'),
(15,	8,	'Blue',	'15_blue',	0,	NULL,	'',	'left',	20,	21,	2,	0,	'2011-04-09 20:39:49'),
(16,	14,	'Cure',	'16_cure',	0,	NULL,	'',	'left',	13,	14,	0,	0,	'2011-04-09 20:40:06'),
(17,	14,	'Cura',	'17_cura',	0,	NULL,	'',	'left',	15,	16,	1,	0,	'2011-04-09 20:40:06'),
(18,	14,	'Curaga',	'18_curaga',	0,	NULL,	'',	'left',	17,	18,	2,	0,	'2011-04-09 20:40:06');

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `cantidad` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` varchar(255) DEFAULT NULL,
  `status` enum('Pendiente','Pagada','Devolución') DEFAULT 'Pendiente',
  `total` decimal(10,2) DEFAULT NULL,
  `ultimo_movimiento` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `podcasts`;
CREATE TABLE `podcasts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `src` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(80) NOT NULL,
  `activo` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `polls` (`id`, `pregunta`, `activo`, `created`) VALUES
(2,	'&iquest;Cree usted en los &quot;fantasmas&quot;?',	0,	'2010-07-15 12:33:55'),
(3,	'Cree que la vida es injusta y cruel?',	1,	'2010-09-05 16:01:50'),
(4,	'Question?',	0,	'2010-09-05 16:45:13');

DROP TABLE IF EXISTS `poptions`;
CREATE TABLE `poptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL,
  `opcion` varchar(80) NOT NULL,
  `votos` int(10) unsigned DEFAULT '0',
  `orden` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `poptions` (`id`, `poll_id`, `opcion`, `votos`, `orden`) VALUES
(6,	2,	'Pues, &quot;poquito&quot;',	456,	1),
(7,	2,	'Mas &lt;o&gt; menos',	5554,	0),
(18,	3,	'power 2',	1,	3),
(20,	4,	'superpower',	0,	1),
(17,	3,	'All brand new mod',	975,	2),
(19,	4,	'power',	0,	0),
(13,	3,	'&quot;first&quot;',	222,	0);

DROP TABLE IF EXISTS `postimgs`;
CREATE TABLE `postimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `descripcion` text,
  `portada` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `postimgs` (`id`, `post_id`, `src`, `descripcion`, `portada`, `created`) VALUES
(4,	2,	'upload/img13.jpg',	NULL,	1,	'2010-07-15 12:42:23'),
(5,	2,	'upload/img151279215743.jpg',	NULL,	0,	'2010-07-15 12:42:23'),
(6,	2,	'upload/img24.jpg',	NULL,	0,	'2010-07-15 12:42:23'),
(7,	3,	'upload/img061283538414.jpg',	NULL,	1,	'2010-09-03 13:26:54'),
(8,	3,	'upload/img161283538414.jpg',	NULL,	0,	'2010-09-03 13:26:54'),
(9,	3,	'upload/img21.jpg',	NULL,	0,	'2010-09-03 13:26:54'),
(10,	4,	'upload/img021283793508.jpg',	NULL,	0,	'2010-09-06 12:18:28'),
(11,	4,	'upload/img05.jpg',	NULL,	0,	'2010-09-06 12:18:28'),
(12,	4,	'upload/img061283793508.jpg',	NULL,	1,	'2010-09-06 12:18:28'),
(13,	4,	'upload/img101283793573.jpg',	NULL,	0,	'2010-09-06 12:19:33'),
(14,	4,	'upload/img201283793573.jpg',	NULL,	0,	'2010-09-06 12:19:33'),
(15,	7,	'upload/img01.jpg',	NULL,	1,	'2012-02-16 19:20:14'),
(16,	7,	'upload/img02.jpg',	NULL,	0,	'2012-02-16 19:20:14'),
(17,	7,	'upload/img03.jpg',	NULL,	0,	'2012-02-16 19:20:14');

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `layout` enum('Izquierda','Derecha','Centro') DEFAULT 'Izquierda',
  `descripcion` text NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `postimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `posts` (`id`, `nombre`, `slug`, `layout`, `descripcion`, `activo`, `comment_count`, `postimg_count`, `created`) VALUES
(2,	'Prueba &quot;poderosa&quot;',	'prueba-poderosa',	'Izquierda',	'<p>&lt;s&gt;LOL&lt;/s&gt;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>',	1,	2,	3,	'2010-07-15 12:42:23'),
(3,	'Este elemento',	'este-elemento',	'Derecha',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>',	1,	0,	3,	'2010-09-03 13:26:54'),
(4,	'Corrupto y asesino',	'corrupto-y-asesino',	'Centro',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\r\n<p>Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.</p>\r\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc., li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilit&aacute; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\r\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental: in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.<br /><br /></p>',	1,	0,	5,	'2010-09-06 12:18:28'),
(5,	'Power',	'power',	'Derecha',	'<p>LOL</p>',	1,	0,	0,	'2010-09-06 12:24:09'),
(7,	'Curabitur faucibus dapibus erat, sit amet fermentum sem malesuada id. Praesent vel odio',	'7_curabitur-faucibus-dapibus-erat-sit-amet-fermentum-sem-malesuada-id-praesent-vel-odio',	'Izquierda',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br /><br />Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex. Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>',	1,	26,	3,	'2012-02-16 19:20:14');

DROP TABLE IF EXISTS `posts_tags`;
CREATE TABLE `posts_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `productimgs`;
CREATE TABLE `productimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) NOT NULL DEFAULT '0',
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `productimgs` (`id`, `product_id`, `src`, `portada`, `descripcion`, `created`) VALUES
(113,	6,	'upload/img211283814800.jpg',	1,	NULL,	'2010-09-06 18:13:20'),
(114,	6,	'upload/img25.jpg',	0,	NULL,	'2010-09-06 18:13:20'),
(112,	9,	'upload/img27.jpg',	0,	NULL,	'2010-09-06 18:12:50'),
(111,	9,	'upload/img201283814770.jpg',	0,	NULL,	'2010-09-06 18:12:50'),
(92,	8,	'upload/img12.jpg',	1,	NULL,	'2010-07-14 18:04:47'),
(93,	8,	'upload/img23.jpg',	0,	NULL,	'2010-07-14 18:04:47'),
(94,	8,	'upload/img29.jpg',	0,	NULL,	'2010-07-14 18:04:47'),
(110,	9,	'upload/img101283814770.jpg',	1,	NULL,	'2010-09-06 18:12:50'),
(89,	7,	'upload/img14.jpg',	1,	NULL,	'2010-07-14 18:04:12'),
(90,	7,	'upload/img15.jpg',	0,	NULL,	'2010-07-14 18:04:12'),
(91,	7,	'upload/img16.jpg',	0,	NULL,	'2010-07-14 18:04:12'),
(115,	6,	'upload/img241283814800.jpg',	0,	NULL,	'2010-09-06 18:13:20'),
(116,	11,	'upload/img07.jpg',	1,	NULL,	'2012-01-28 17:59:26');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `currency_id` varchar(255) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `stock` int(11) DEFAULT '0',
  `tipo_etiqueta` varchar(255) DEFAULT '',
  `descripcion` text,
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(10) unsigned DEFAULT '0',
  `productimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `nombre`, `category_id`, `slug`, `currency_id`, `precio`, `stock`, `tipo_etiqueta`, `descripcion`, `activo`, `orden`, `productimg_count`, `created`) VALUES
(1,	'Aliquam sit amet ipsum lorem',	20,	'1_aliquam-sit-amet-ipsum-lorem',	'1',	200.00,	300,	'Tama&ntilde;o',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	1,	0,	'2012-07-27 18:16:13'),
(2,	'Nunc vel magna mattis quam',	24,	'2_nunc-vel-magna-mattis-quam',	'1',	350.00,	120,	'Tama&ntilde;o',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	2,	0,	'2012-07-27 18:18:12'),
(3,	'Praesent dolor purus, aliquam volutpat',	20,	'3_praesent-dolor-purus-aliquam-volutpat',	'1',	200.00,	150,	'Tama&ntilde;o',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	3,	0,	'2012-07-27 18:22:44'),
(4,	'Mauris justo libero, varius pretium congue a, posuere consectetur leo.',	21,	'4_mauris-justo-libero-varius-pretium-congue-a-posuere-consectetur-leo',	'1',	500.00,	500,	'Tama&ntilde;o',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	4,	0,	'2012-07-27 18:52:24'),
(5,	'Fusce quis lorem eget purus',	21,	'5_fusce-quis-lorem-eget-purus',	'1',	300.00,	50,	'Tama&ntilde;o',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	5,	0,	'2012-07-27 18:53:34'),
(6,	'Vivamus facilisis tristique augue',	20,	'6_vivamus-facilisis-tristique-augue',	'1',	120.00,	800,	'Tama&ntilde;o',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	6,	0,	'2012-07-27 18:54:37'),
(7,	'Aenean sagittis; libero ut placerat fringilla',	17,	'7_aenean-sagittis-libero-ut-placerat-fringilla',	'1',	200.00,	50,	'Tama&ntilde;o',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	7,	0,	'2012-08-05 02:04:35');

DROP TABLE IF EXISTS `seccategories`;
CREATE TABLE `seccategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `nombre` varchar(120) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rght` int(10) unsigned DEFAULT NULL,
  `orden` int(10) unsigned DEFAULT NULL,
  `master` tinyint(1) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `seccategories` (`id`, `parent_id`, `nombre`, `slug`, `lft`, `rght`, `orden`, `master`, `created`) VALUES
(1,	NULL,	'Power',	'1_power',	1,	2,	1,	0,	'2012-01-28 17:59:26');

DROP TABLE IF EXISTS `serviceimgs`;
CREATE TABLE `serviceimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned DEFAULT NULL,
  `src` varchar(255) NOT NULL,
  `portada` tinyint(1) NOT NULL DEFAULT '0',
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `serviceimgs` (`id`, `service_id`, `src`, `portada`, `descripcion`, `created`) VALUES
(8,	3,	'upload/img03.jpg',	1,	NULL,	'2010-07-14 18:07:23'),
(9,	3,	'upload/img06.jpg',	0,	NULL,	'2010-07-14 18:07:23'),
(10,	3,	'upload/img18.jpg',	0,	NULL,	'2010-07-14 18:07:23'),
(14,	5,	'upload/img17.jpg',	1,	NULL,	'2010-07-14 18:15:08'),
(15,	5,	'upload/img19.jpg',	0,	NULL,	'2010-07-14 18:15:08'),
(16,	5,	'upload/img20.jpg',	0,	NULL,	'2010-07-14 18:15:08'),
(17,	6,	'upload/img09.jpg',	0,	NULL,	'2010-09-06 14:03:57'),
(18,	6,	'upload/img101283799838.jpg',	1,	NULL,	'2010-09-06 14:03:58'),
(19,	6,	'upload/img171283799838.jpg',	0,	NULL,	'2010-09-06 14:03:58'),
(20,	6,	'upload/img181283799838.jpg',	0,	NULL,	'2010-09-06 14:03:58'),
(21,	6,	'upload/img021283799866.jpg',	0,	NULL,	'2010-09-06 14:04:26'),
(22,	6,	'upload/img201283799866.jpg',	0,	NULL,	'2010-09-06 14:04:26');

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(10) unsigned DEFAULT NULL,
  `serviceimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `services` (`id`, `nombre`, `slug`, `descripcion`, `activo`, `orden`, `serviceimg_count`, `created`) VALUES
(3,	'Servicio ejemplo',	'3_servicio-ejemplo',	'<p>&Eacute;ste es un servicio de ejemplo por lo cual no es real.</p>',	1,	1,	0,	'2010-07-14 18:07:23'),
(5,	'Un &lt;a href=&quot;javascript:alert(&quot;BAM! Youre dead&quot;);&quot;&gt;enla',	'5_un-a-hrefjavascriptalertbam-youre-deadenla',	'<p>&iquest;Qu&eacute; cree? Adivin&oacute;! &Eacute;ste servicio tampoco existe!</p>',	1,	7,	0,	'2010-07-14 18:15:08'),
(6,	'Superpoder',	'6_superpoder',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>',	1,	9,	6,	'2010-09-06 14:03:57');

DROP TABLE IF EXISTS `suscriptors`;
CREATE TABLE `suscriptors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `suscriptors` (`id`, `email`, `created`) VALUES
(1,	'dan@pulsem.mx',	'2010-09-06 16:16:38'),
(2,	'pepe@pulsem.mx',	'2010-09-06 16:16:42'),
(3,	'karen@pulsem.mx',	'2010-09-06 16:16:48'),
(4,	'power@station.com',	'2010-09-06 16:16:50'),
(5,	'melissa@pulsem.mx',	'2010-09-06 16:16:25'),
(6,	'antonio@pulsem.mx',	'2010-09-06 16:16:38'),
(7,	'felipe@pulsem.mx',	'2010-09-06 16:16:42'),
(8,	'yolanda@pulsem.mx',	'2010-09-06 16:16:48'),
(9,	'marisela@station.com',	'2010-09-06 16:16:50'),
(10,	'roberto@station.com',	'2010-09-06 16:16:50'),
(11,	'carlos@station.com',	'2010-09-06 16:16:50'),
(12,	'federico@station.com',	'2010-09-06 16:16:50'),
(13,	'mafer@station.com',	'2010-09-06 16:16:50'),
(14,	'agustina@station.com',	'2010-09-06 16:16:50'),
(15,	'carmen@station.com',	'2010-09-06 16:16:50'),
(16,	'arturo@pulsem.mx',	'2010-09-06 16:16:25');

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT '0',
  `orden` int(10) unsigned DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `types` (`id`, `product_id`, `nombre`, `slug`, `precio`, `stock`, `orden`, `created`) VALUES
(2,	1,	'small',	'2_small',	50.00,	0,	2,	'2012-07-27 18:16:14'),
(3,	1,	'medium',	'3_medium',	NULL,	0,	1,	'2012-07-27 18:16:14'),
(4,	1,	'large',	'4_large',	NULL,	0,	0,	'2012-07-27 18:16:14'),
(5,	2,	'small',	'5_small',	NULL,	0,	2,	'2012-07-27 18:18:12'),
(6,	2,	'medium',	'6_medium',	120.00,	0,	1,	'2012-07-27 18:18:12'),
(7,	2,	'large',	'7_large',	80.00,	0,	0,	'2012-07-27 18:18:12'),
(8,	3,	'small',	'8_small',	50.00,	200,	2,	'2012-07-27 18:22:44'),
(9,	3,	'medium',	'9_medium',	NULL,	150,	1,	'2012-07-27 18:22:44'),
(10,	3,	'large',	'10_large',	30.00,	0,	0,	'2012-07-27 18:22:44'),
(11,	4,	'small',	'11_small',	40.00,	80,	2,	'2012-07-27 18:52:24'),
(12,	4,	'medium',	'12_medium',	NULL,	50,	1,	'2012-07-27 18:52:24'),
(13,	4,	'large',	'13_large',	NULL,	0,	0,	'2012-07-27 18:52:24'),
(14,	5,	'small',	'14_small',	NULL,	80,	1,	'2012-07-27 18:53:34'),
(15,	5,	'medium',	'15_medium',	30.00,	0,	0,	'2012-07-27 18:53:34'),
(16,	6,	'small',	'16_small',	NULL,	450,	1,	'2012-07-27 18:54:37'),
(17,	6,	'medium',	'17_medium',	50.00,	0,	0,	'2012-07-27 18:54:37'),
(18,	7,	'small',	'18_small',	500.00,	0,	1,	'2012-08-05 02:04:35'),
(19,	7,	'medium',	'19_medium',	NULL,	555,	0,	'2012-08-05 02:04:35');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `master` tinyint(1) DEFAULT '0',
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `master`, `username`, `password`, `created`) VALUES
(1,	'Pulsem',	'',	1,	'pulsem',	'327d3429df2c4512edc07ed9e948aa75f5d14f50',	'2010-01-01 00:00:00'),
(2,	'Administrador',	NULL,	1,	'admin',	'd033e22ae348aeb5660fc2140aec35850c4da997',	NULL);

DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `url` varchar(255) NOT NULL,
  `descripcion` text,
  `activo` tinyint(1) DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `videos` (`id`, `slug`, `nombre`, `url`, `descripcion`, `activo`, `comment_count`, `created`) VALUES
(1,	'trance-power',	'Trance Power',	'http://www.youtube.com/watch?v=aqE1LInw3fg',	'<p><span class=\"Apple-style-span\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; text-align: left;\">If you like these tunes, welcome:<span class=\"Apple-converted-space\">&nbsp;</span><a href=\"http://www.youtube.com/user/ReverseMusicSound\">http://www.youtube.com/user/ReverseMu...</a><br /><br />You can download these tracks!<br /><br />Dj Quicksilver - Planet Love:<br /><a href=\"http://depositfiles.com/files/5vwb3lzqb\">http://depositfiles.com/files/5vwb3lzqb</a><br /><br />Robert Miles - In my dreams:<br /><a href=\"http://depositfiles.com/files/6m8bmlhcy\">http://depositfiles.com/files/6m8bmlhcy</a><br /><br />Paul Van Dyk - For an Angel:<br /><a href=\"http://depositfiles.com/files/osi01nukp\">http://depositfiles.com/files/osi01nukp</a></span></p>',	1,	0,	'2010-09-06 17:09:36');

-- 2012-09-14 19:10:49
