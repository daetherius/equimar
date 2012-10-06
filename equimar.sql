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

INSERT INTO `about` (`id`, `descripcion`, `created`) VALUES
(1,	'<h1><span style=\"color: #000080;\"><strong>QUI&Eacute;NES SOMOS</strong></span></h1>\r\n<p><span style=\"color: #000080;\"><strong>Equipo Marino y Refacciones S.A. de C.V.</strong></span> es una empresa que nace de la necesidad en el sector pesquero en encontrar una empresa, que otorgue calidad, servicio y financiamiento para adquirir equipo pesquero con precios accesibles en todos nuestros productos.</p>\r\n<p>&nbsp;&nbsp;Considerando que la marca YAMAHA que distribuimos en toda la pen&iacute;nsula y de la cual somos lideres en el mercado, tanto en marca de producto como en la distribuci&oacute;n, aunado a que hemos tenido un importante crecimiento sostenido en el mercado, implementamos un Taller de Servicio y Asistencia T&eacute;cnica especializado en la marca YAMAHA contando con el aval de IMEMSA &ndash; YAMAHA, tambi&eacute;n contamos con t&eacute;cnicos calificados y especializados en la marca YAMAHA, as&iacute; como equipo y herramientas especializadas para la reparaci&oacute;n con la mayor precisi&oacute;n en los productos YAMAHA teniendo siempre satisfecho a nuestros clientes.</p>\r\n<p>&nbsp;&nbsp;Nos distinguimos en la atenci&oacute;n personalizada y orientaci&oacute;n para la adquisici&oacute;n de alg&uacute;n equipo, seg&uacute;n las necesidades del cliente, todos nuestros productos YAMAHA cuentan con Garant&iacute;a por Escrito.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MISION</strong><br /><br />&nbsp;&nbsp;Ser una empresa comprometida con el impulso y el desarrollo del sector pesquero en el sureste del pa&iacute;s, mediante el f&aacute;cil acceso a cr&eacute;ditos a los pescadores de la regi&oacute;n, para que puedan adquirir productos y servicios de mantenimiento y reparaci&oacute;n que Equipo Marino y Refacciones S.A. de C.V. ofrece.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>VISION</strong><br /><br />&nbsp;&nbsp;Ser l&iacute;deres en la distribuci&oacute;n de equipo en el sector pesquero, contando con una administraci&oacute;n, organizaci&oacute;n e infraestructura claramente definida, brindando un servicio de m&aacute;xima calidad.</p>',	'2012-10-04 21:37:55');

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

INSERT INTO `postimgs` (`id`, `post_id`, `src`, `portada`, `descripcion`, `orden`, `created`) VALUES
(9,	3,	'upload/img37.jpg',	0,	NULL,	9,	'2012-10-05 11:37:13'),
(8,	3,	'upload/img58.jpg',	0,	NULL,	8,	'2012-10-05 11:37:13'),
(7,	3,	'upload/img57.jpg',	1,	NULL,	7,	'2012-10-05 11:37:13'),
(4,	2,	'upload/img0513494549701.jpg',	1,	NULL,	4,	'2012-10-05 11:36:10'),
(5,	2,	'upload/img5213494549701.jpg',	0,	NULL,	5,	'2012-10-05 11:36:10'),
(6,	2,	'upload/img5413494549701.jpg',	0,	NULL,	6,	'2012-10-05 11:36:10'),
(10,	4,	'upload/img5613494550531.jpg',	1,	NULL,	10,	'2012-10-05 11:37:33'),
(11,	4,	'upload/img41.jpg',	0,	NULL,	11,	'2012-10-05 11:37:33'),
(12,	4,	'upload/img53.jpg',	0,	NULL,	12,	'2012-10-05 11:37:33'),
(13,	5,	'upload/img36.jpg',	1,	NULL,	13,	'2012-10-05 12:04:04'),
(14,	5,	'upload/img54.jpg',	0,	NULL,	14,	'2012-10-05 12:04:04'),
(15,	5,	'upload/img51.jpg',	0,	NULL,	15,	'2012-10-05 12:04:04'),
(16,	6,	'upload/img27.jpg',	1,	NULL,	16,	'2012-10-05 12:04:29'),
(17,	6,	'upload/img42.jpg',	0,	NULL,	17,	'2012-10-05 12:04:29'),
(18,	6,	'upload/img35.jpg',	0,	NULL,	18,	'2012-10-05 12:04:29'),
(19,	7,	'upload/img28.jpg',	1,	NULL,	19,	'2012-10-05 12:04:52'),
(20,	7,	'upload/img1713494566921.jpg',	0,	NULL,	20,	'2012-10-05 12:04:52'),
(21,	7,	'upload/img11.jpg',	0,	NULL,	21,	'2012-10-05 12:04:52');

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

INSERT INTO `posts` (`id`, `nombre`, `slug`, `layout`, `descripcion`, `activo`, `comment_count`, `postimg_count`, `created`) VALUES
(3,	'Ut vel ipsum enim, nec fringilla libero.',	'3_ut-vel-ipsum-enim-nec-fringilla-libero',	'Derecha',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	0,	3,	'2012-10-05 11:37:13'),
(2,	'Sed sit amet diam dolor. Quisque tempor gravida tellus',	'2_sed-sit-amet-diam-dolor-quisque-tempor-gravida-tellus',	'Izquierda',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	0,	3,	'2012-10-05 11:36:10'),
(4,	'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',	'4_lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit',	'Centro',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	0,	3,	'2012-10-05 11:37:33'),
(5,	'Aliquam et sem quis libero semper',	'5_aliquam-et-sem-quis-libero-semper',	'Derecha',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	0,	3,	'2012-10-05 12:04:04'),
(6,	'Proin nec mollis orci? Mauris venenatis tristique lacus sed pulvinar?',	'6_proin-nec-mollis-orci-mauris-venenatis-tristique-lacus-sed-pulvinar',	'Izquierda',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	0,	3,	'2012-10-05 12:04:29'),
(7,	'Pellentesque habitant morbi tristique senectus',	'7_pellentesque-habitant-morbi-tristique-senectus',	'Izquierda',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	1,	0,	3,	'2012-10-05 12:04:52');

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

INSERT INTO `productimgs` (`id`, `product_id`, `src`, `portada`, `descripcion`, `orden`, `created`) VALUES
(1,	143,	'upload/img21.jpg',	1,	'',	1,	'2012-10-04 16:34:14'),
(2,	143,	'upload/img13.jpg',	0,	'',	2,	'2012-10-04 16:34:14'),
(3,	143,	'upload/img4713493864541.jpg',	0,	'',	3,	'2012-10-04 16:34:14'),
(4,	142,	'upload/img1513493864961.jpg',	1,	NULL,	4,	'2012-10-04 16:34:56'),
(5,	142,	'upload/img31.jpg',	0,	NULL,	5,	'2012-10-04 16:34:56'),
(6,	142,	'upload/img38.jpg',	0,	NULL,	6,	'2012-10-04 16:34:56'),
(7,	143,	'upload/img64.jpg',	0,	NULL,	7,	'2012-10-04 21:32:51'),
(8,	143,	'upload/img0713494043711.jpg',	0,	NULL,	8,	'2012-10-04 21:32:51'),
(9,	143,	'upload/img56.jpg',	0,	NULL,	9,	'2012-10-04 21:32:51'),
(10,	71,	'upload/2012fxho_detail.jpg',	1,	'',	10,	'2012-10-05 12:42:48'),
(11,	71,	'upload/yamahafxhowaverunner2008.jpg',	0,	NULL,	11,	'2012-10-05 13:00:46'),
(12,	71,	'upload/cc993bb4f1e76999f94956f059470a2e.jpg',	0,	NULL,	12,	'2012-10-05 13:00:46'),
(13,	71,	'upload/fx_ho.jpg',	0,	NULL,	13,	'2012-10-05 13:00:46'),
(14,	71,	'upload/25577_2011_yamaha_waverunner_fx_ho.jpg',	0,	NULL,	14,	'2012-10-05 13:00:46');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT '',
  `nombre` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `intro` text,
  `descripcion` text,
  `video` varchar(255) DEFAULT '',
  `enlace` varchar(255) DEFAULT '',
  `activo` tinyint(1) DEFAULT '1',
  `orden` int(10) unsigned DEFAULT '0',
  `productimg_count` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `category`, `nombre`, `slug`, `intro`, `descripcion`, `video`, `enlace`, `activo`, `orden`, `productimg_count`, `created`) VALUES
(1,	'Motores 2 Tiempos',	'2CMHS',	'1_2cmhs',	NULL,	'',	'',	'',	1,	1,	0,	'2012-10-02 13:44:13'),
(2,	'Motores 2 Tiempos',	'5CSMHS',	'2_5csmhs',	NULL,	'',	'',	'',	1,	2,	0,	'2012-10-02 14:27:54'),
(3,	'Motores 2 Tiempos',	'5CSMHL',	'3_5csmhl',	NULL,	'',	'',	'',	1,	3,	0,	'2012-10-02 14:28:01'),
(4,	'Motores 2 Tiempos',	'E8DMHS',	'4_e8dmhs',	NULL,	'',	'',	'',	1,	4,	0,	'2012-10-02 14:28:08'),
(5,	'Motores 2 Tiempos',	'E8DMHL',	'5_e8dmhl',	NULL,	'',	'',	'',	1,	5,	0,	'2012-10-02 14:28:14'),
(6,	'Motores 2 Tiempos',	'E15DMHS',	'6_e15dmhs',	NULL,	'',	'',	'',	1,	6,	0,	'2012-10-02 14:28:20'),
(7,	'Motores 2 Tiempos',	'E15DMHL',	'7_e15dmhl',	NULL,	'',	'',	'',	1,	7,	0,	'2012-10-02 14:28:29'),
(8,	'Motores 2 Tiempos',	'E25BMHS',	'8_e25bmhs',	NULL,	'',	'',	'',	1,	8,	0,	'2012-10-02 14:28:36'),
(9,	'Motores 2 Tiempos',	'E25BMHL',	'9_e25bmhl',	NULL,	'',	'',	'',	1,	9,	0,	'2012-10-02 14:28:42'),
(10,	'Motores 2 Tiempos',	'E40JMHL',	'10_e40jmhl',	NULL,	'',	'',	'',	1,	10,	0,	'2012-10-02 14:28:48'),
(11,	'Motores 2 Tiempos',	'E48CMHL',	'11_e48cmhl',	NULL,	'',	'',	'',	1,	11,	0,	'2012-10-02 14:28:55'),
(12,	'Motores 2 Tiempos',	'E60HMHDL',	'12_e60hmhdl',	NULL,	'',	'',	'',	1,	12,	0,	'2012-10-02 14:30:56'),
(13,	'Motores 2 Tiempos',	'E75BMHDY',	'13_e75bmhdy',	NULL,	'',	'',	'',	1,	13,	0,	'2012-10-02 14:31:01'),
(14,	'Motores 2 Tiempos',	'85AEHDY',	'14_85aehdy',	NULL,	'',	'',	'',	1,	14,	0,	'2012-10-02 14:31:10'),
(15,	'Motores 2 Tiempos',	'85AETL',	'15_85aetl',	NULL,	'',	'',	'',	1,	15,	0,	'2012-10-02 14:31:18'),
(16,	'Motores 2 Tiempos',	'E115AWHY',	'16_e115awhy',	NULL,	'',	'',	'',	1,	16,	0,	'2012-10-02 14:31:23'),
(17,	'Motores 2 Tiempos',	'150AETX',	'17_150aetx',	NULL,	'',	'',	'',	1,	17,	0,	'2012-10-02 14:31:28'),
(18,	'Motores 2 Tiempos',	'L150AETX',	'18_l150aetx',	NULL,	'',	'',	'',	1,	18,	0,	'2012-10-02 14:31:33'),
(19,	'Motores 2 Tiempos',	'200AETX',	'19_200aetx',	NULL,	'',	'',	'',	1,	19,	0,	'2012-10-02 14:31:38'),
(20,	'Motores 2 Tiempos',	'L200AETX',	'20_l200aetx',	NULL,	'',	'',	'',	1,	20,	0,	'2012-10-02 14:31:43'),
(21,	'Motores 2 Tiempos',	'250GETOX',	'21_250getox',	NULL,	'',	'',	'',	1,	21,	0,	'2012-10-02 14:31:49'),
(22,	'Motores 2 Tiempos',	'L250GETOX',	'22_l250getox',	NULL,	'',	'',	'',	1,	22,	0,	'2012-10-02 14:31:54'),
(23,	'Motores 4 Tiempos',	'F4BMHS',	'23_f4bmhs',	NULL,	'',	'',	'',	1,	23,	0,	'2012-10-02 14:34:50'),
(24,	'Motores 4 Tiempos',	'F4BMHL',	'24_f4bmhl',	NULL,	'',	'',	'',	1,	24,	0,	'2012-10-02 14:34:56'),
(25,	'Motores 4 Tiempos',	'F6CMHS',	'25_f6cmhs',	NULL,	'',	'',	'',	1,	25,	0,	'2012-10-02 14:35:18'),
(26,	'Motores 4 Tiempos',	'F6CMHL',	'26_f6cmhl',	NULL,	'',	'',	'',	1,	26,	0,	'2012-10-02 14:35:23'),
(27,	'Motores 4 Tiempos',	'F8CMHS',	'27_f8cmhs',	NULL,	'',	'',	'',	1,	27,	0,	'2012-10-02 14:35:28'),
(28,	'Motores 4 Tiempos',	'F8CMHL',	'28_f8cmhl',	NULL,	'',	'',	'',	1,	28,	0,	'2012-10-02 14:35:34'),
(29,	'Motores 4 Tiempos',	'F9.9FMHS',	'29_f99fmhs',	NULL,	'',	'',	'',	1,	29,	0,	'2012-10-02 14:35:42'),
(30,	'Motores 4 Tiempos',	'F9.9FMHL',	'30_f99fmhl',	NULL,	'',	'',	'',	1,	30,	0,	'2012-10-02 14:35:47'),
(31,	'Motores 4 Tiempos',	'F15SMH',	'31_f15smh',	NULL,	'',	'',	'',	1,	31,	0,	'2012-10-02 14:35:52'),
(32,	'Motores 4 Tiempos',	'F15LMH',	'32_f15lmh',	NULL,	'',	'',	'',	1,	32,	0,	'2012-10-02 14:35:57'),
(33,	'Motores 4 Tiempos',	'F15SMHA',	'33_f15smha',	NULL,	'',	'',	'',	1,	33,	0,	'2012-10-02 14:36:01'),
(34,	'Motores 4 Tiempos',	'F15LMHA',	'34_f15lmha',	NULL,	'',	'',	'',	1,	34,	0,	'2012-10-02 14:36:06'),
(35,	'Motores 4 Tiempos',	'F20CMHL',	'35_f20cmhl',	NULL,	'',	'',	'',	1,	35,	0,	'2012-10-02 14:36:11'),
(36,	'Motores 4 Tiempos',	'F20CMHS',	'36_f20cmhs',	NULL,	'',	'',	'',	1,	36,	0,	'2012-10-02 14:36:16'),
(37,	'Motores 4 Tiempos',	'F25DEHTL',	'37_f25dehtl',	NULL,	'',	'',	'',	1,	37,	0,	'2012-10-02 14:36:21'),
(38,	'Motores 4 Tiempos',	'F25LMHA',	'38_f25lmha',	NULL,	'',	'',	'',	1,	38,	0,	'2012-10-02 14:37:23'),
(39,	'Motores 4 Tiempos',	'F30LEHA',	'39_f30leha',	NULL,	'',	'',	'',	1,	39,	0,	'2012-10-02 14:37:28'),
(40,	'Motores 4 Tiempos',	'F40FEHDL',	'40_f40fehdl',	NULL,	'',	'',	'',	1,	40,	0,	'2012-10-02 14:37:33'),
(41,	'Motores 4 Tiempos',	'FT50CETL',	'41_ft50cetl',	NULL,	'',	'',	'',	1,	41,	0,	'2012-10-02 14:37:37'),
(42,	'Motores 4 Tiempos',	'FT50CEHDL',	'42_ft50cehdl',	NULL,	'',	'',	'',	1,	42,	0,	'2012-10-02 14:37:41'),
(43,	'Motores 4 Tiempos',	'FT50CEHDX',	'43_ft50cehdx',	NULL,	'',	'',	'',	1,	43,	0,	'2012-10-02 14:37:45'),
(44,	'Motores 4 Tiempos',	'FT60DEHTL',	'44_ft60dehtl',	NULL,	'',	'',	'',	1,	44,	0,	'2012-10-02 14:37:50'),
(45,	'Motores 4 Tiempos',	'FT60DEHDL',	'45_ft60dehdl',	NULL,	'',	'',	'',	1,	45,	0,	'2012-10-02 14:37:55'),
(46,	'Motores 4 Tiempos',	'T60TLR',	'46_t60tlr',	NULL,	'',	'',	'',	1,	46,	0,	'2012-10-02 14:37:59'),
(47,	'Motores 4 Tiempos',	'FT60BEHTL',	'47_ft60behtl',	NULL,	'',	'',	'',	1,	47,	0,	'2012-10-02 14:38:04'),
(48,	'Motores 4 Tiempos',	'F75CEHDX',	'48_f75cehdx',	NULL,	'',	'',	'',	1,	48,	0,	'2012-10-02 14:38:12'),
(49,	'Motores 4 Tiempos',	'F90X',	'49_f90x',	NULL,	'',	'',	'',	1,	49,	0,	'2012-10-02 14:38:17'),
(50,	'Motores 4 Tiempos',	'F90XA',	'50_f90xa',	NULL,	'',	'',	'',	1,	50,	0,	'2012-10-02 14:38:22'),
(51,	'Motores 4 Tiempos',	'F100BETL',	'51_f100betl',	NULL,	'',	'',	'',	1,	51,	0,	'2012-10-02 14:38:26'),
(52,	'Motores 4 Tiempos',	'F100BETX',	'52_f100betx',	NULL,	'',	'',	'',	1,	52,	0,	'2012-10-02 14:38:31'),
(53,	'Motores 4 Tiempos',	'F100BEHDX',	'53_f100behdx',	NULL,	'',	'',	'',	1,	53,	0,	'2012-10-02 14:38:35'),
(54,	'Motores 4 Tiempos',	'F115AETL',	'54_f115aetl',	NULL,	'',	'',	'',	1,	54,	0,	'2012-10-02 14:38:40'),
(55,	'Motores 4 Tiempos',	'F115AETX',	'55_f115aetx',	NULL,	'',	'',	'',	1,	55,	0,	'2012-10-02 14:38:44'),
(56,	'Motores 4 Tiempos',	'F115AEHTX',	'56_f115aehtx',	NULL,	'',	'',	'',	1,	56,	0,	'2012-10-02 14:38:50'),
(57,	'Motores 4 Tiempos',	'FL115AETX',	'57_fl115aetx',	NULL,	'',	'',	'',	1,	57,	0,	'2012-10-02 14:38:54'),
(58,	'Motores 4 Tiempos',	'F150BETX',	'58_f150betx',	NULL,	'',	'',	'',	1,	58,	0,	'2012-10-02 14:39:05'),
(59,	'Motores 4 Tiempos',	'FL150BETX',	'59_fl150betx',	NULL,	'',	'',	'',	1,	59,	0,	'2012-10-02 14:40:36'),
(60,	'Motores 4 Tiempos',	'F200BETX',	'60_f200betx',	NULL,	'',	'',	'',	1,	60,	0,	'2012-10-02 14:40:41'),
(61,	'Motores 4 Tiempos',	'FL200BETX',	'61_fl200betx',	NULL,	'',	'',	'',	1,	61,	0,	'2012-10-02 14:40:45'),
(62,	'Motores 4 Tiempos',	'F225AETX',	'62_f225aetx',	NULL,	'',	'',	'',	1,	62,	0,	'2012-10-02 14:40:50'),
(63,	'Motores 4 Tiempos',	'FL225AETX',	'63_fl225aetx',	NULL,	'',	'',	'',	1,	63,	0,	'2012-10-02 14:40:55'),
(64,	'Motores 4 Tiempos',	'F250BETX',	'64_f250betx',	NULL,	'',	'',	'',	1,	64,	0,	'2012-10-02 14:41:00'),
(65,	'Motores 4 Tiempos',	'FL250BETX',	'65_fl250betx',	NULL,	'',	'',	'',	1,	65,	0,	'2012-10-02 14:41:06'),
(66,	'Motores 4 Tiempos',	'F300BETX',	'66_f300betx',	NULL,	'',	'',	'',	1,	66,	0,	'2012-10-02 14:41:14'),
(67,	'Motores 4 Tiempos',	'FL300BETX',	'67_fl300betx',	NULL,	'',	'',	'',	1,	67,	0,	'2012-10-02 14:41:21'),
(68,	'Lujo y Alto rendimiento',	'FX SHO CRUISER 2012',	'68_fx-sho-cruiser-2012',	NULL,	'',	'',	'',	1,	68,	0,	'2012-10-02 16:17:59'),
(69,	'Lujo y Alto rendimiento',	'FX SHO 2012',	'69_fx-sho-2012',	NULL,	'',	'',	'',	1,	69,	0,	'2012-10-02 16:18:05'),
(70,	'Lujo y Alto rendimiento',	'FX HO CRUISER 2012',	'70_fx-ho-cruiser-2012',	NULL,	'',	'',	'',	1,	70,	0,	'2012-10-02 16:18:10'),
(71,	'Lujo y Alto rendimiento',	'FX HO 2012',	'71_fx-ho-2012',	'<h2><span class=\"TIT\" style=\"color: #000080;\">FX HO 2012</span></h2>\r\n<p><strong><em>Comodidad, clase y rendimiento.&nbsp;</em></strong></p>\r\n<p>Compartimiento en popa de acceso r&aacute;pido&nbsp;<br />Para los que quieren modelos de lujo, ahorro de combustible, entusiastas de los deportes acu&aacute;ticos a una alta velocidad, los modelos HO que significa alta potencia son la mejor opci&oacute;n.</p>',	'<table style=\"width: 91%; height: 362px;\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#003399\" width=\"34%\"><span style=\"color: #ffffff;\">DESCRIPCI&Oacute;N</span></td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#333333\"><span style=\"color: #ffffff;\">FB1800-L (FX HO)</span></td>\r\n</tr>\r\n<tr style=\"background-color: #ffffff;\">\r\n<td class=\"tabla\" style=\"background-color: #ffffff; width: 34%; height: 25px;\" align=\"left\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p>Tipo de Motor</p>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">4 tiempos / 4 cilindros</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\" height=\"25\">\r\n<p>Cilindrada</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\">\r\n<p align=\"center\">1812 cm3</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#cccccc\" height=\"25\">\r\n<p>Potencia m&aacute;xima</p>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">180 HP &ndash; 7,500rpm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#cccccc\" height=\"25\">\r\n<p>Sistema de combustible</p>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">Inyecci&oacute;n electr&oacute;nica</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\" height=\"25\">\r\n<p>Sistema de lubricaci&oacute;n</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\">\r\n<p align=\"center\">Carter h&uacute;medo</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#cccccc\" height=\"25\">\r\n<p>Sistema de encendido</p>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">Electr&oacute;nico-TCI</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\" height=\"25\">\r\n<p>Consumo de combustible</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\">\r\n<p align=\"center\">48.6 l/h</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#cccccc\" height=\"25\">\r\n<p>Capacidad del tanque de combustible</p>\r\n</td>\r\n<td style=\"background-color: #ffffff;\" align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">70 lts.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\" height=\"25\">\r\n<p>Capacidad del deposito de aceite</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\">\r\n<p align=\"center\">4.3 lts.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" height=\"25\">\r\n<p>Peso en seco (kilogramos)</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">373</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\" height=\"25\">\r\n<p>Longitud (metros)</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\">\r\n<p align=\"center\">3.56</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\">\r\n<p>Ancho (metros)</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">1.23</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\" height=\"25\">\r\n<p>Alto (metros)</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\" bgcolor=\"#DEECED\">\r\n<p align=\"center\">1.23</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td align=\"left\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p>Capacidad de personas</p>\r\n</td>\r\n<td align=\"center\" valign=\"middle\" nowrap=\"nowrap\">\r\n<p align=\"center\">1 a 3</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',	'http://www.youtube.com/watch?v=ufQ0C-0gNpA',	'http://www.imemsa.com.mx/aquamotos2012/fxho_12.html',	1,	71,	5,	'2012-10-02 16:18:16'),
(72,	'Rendimiento Deportivo',	'FZS 2012',	'72_fzs-2012',	NULL,	'',	'',	'',	1,	72,	0,	'2012-10-02 16:18:21'),
(73,	'Rendimiento Deportivo',	'FZR 2012',	'73_fzr-2012',	NULL,	'',	'',	'',	1,	73,	0,	'2012-10-02 16:19:11'),
(74,	'Rendimiento Deportivo',	'VXR 2012',	'74_vxr-2012',	NULL,	'',	'',	'',	1,	74,	0,	'2012-10-02 16:19:17'),
(75,	'Rendimiento Deportivo',	'VXS 2012',	'75_vxs-2012',	NULL,	'',	'',	'',	1,	75,	0,	'2012-10-02 16:19:23'),
(76,	'Recreaci&oacute;n',	'VX CRUISER 2012',	'76_vx-cruiser-2012',	NULL,	'',	'',	'',	1,	76,	0,	'2012-10-02 16:19:43'),
(77,	'Recreaci&oacute;n',	'VX DELUXE 2012',	'77_vx-deluxe-2012',	NULL,	'',	'',	'',	1,	77,	0,	'2012-10-02 16:21:08'),
(78,	'Recreaci&oacute;n',	'VX SPORT 2012',	'78_vx-sport-2012',	NULL,	'',	'',	'',	1,	78,	0,	'2012-10-02 16:21:13'),
(79,	'2 Tiempos',	'VX700s',	'79_vx700s',	NULL,	'',	'',	'',	1,	79,	0,	'2012-10-02 16:21:18'),
(80,	'2 Tiempos',	'SUPER JET',	'80_super-jet',	NULL,	'',	'',	'',	1,	80,	0,	'2012-10-02 16:21:22'),
(81,	'Remolques Aquamotos',	'PWC CRUISE ON',	'81_pwc-cruise-on',	NULL,	'',	'',	'',	1,	81,	0,	'2012-10-02 17:18:54'),
(82,	'Remolques Aquamotos',	'PWC II DOBLE',	'82_pwc-ii-doble',	NULL,	'',	'',	'',	1,	82,	0,	'2012-10-02 17:19:12'),
(83,	'Remolques Aquamotos',	'PWC CRUISE ON 12',	'83_pwc-cruise-on-12',	NULL,	'',	'',	'',	1,	83,	0,	'2012-10-02 17:19:18'),
(84,	'Remolques Aquamotos',	'PWC4 CRUISE ON',	'84_pwc4-cruise-on',	NULL,	'',	'',	'',	1,	84,	0,	'2012-10-02 17:19:23'),
(85,	'Remolques Aquamotos',	'PWC6 CRUISE ON',	'85_pwc6-cruise-on',	NULL,	'',	'',	'',	1,	85,	0,	'2012-10-02 17:19:28'),
(86,	'Borda Regular',	'W-14',	'86_w-14',	NULL,	'',	'',	'',	1,	86,	0,	'2012-10-02 17:20:53'),
(87,	'Borda Regular',	'W-16',	'87_w-16',	NULL,	'',	'',	'',	1,	87,	0,	'2012-10-02 17:21:00'),
(88,	'Borda Regular',	'J-18',	'88_j-18',	NULL,	'',	'',	'',	1,	88,	0,	'2012-10-02 17:21:06'),
(89,	'Borda Regular',	'W-22',	'89_w-22',	NULL,	'',	'',	'',	1,	89,	0,	'2012-10-02 17:21:28'),
(90,	'Borda Regular',	'W-23 II',	'90_w-23-ii',	NULL,	'',	'',	'',	1,	90,	0,	'2012-10-02 17:21:34'),
(91,	'Borda Regular',	'W-25',	'91_w-25',	NULL,	'',	'',	'',	1,	91,	0,	'2012-10-02 17:21:38'),
(92,	'Borda Regular',	'W-26',	'92_w-26',	NULL,	'',	'',	'',	1,	92,	0,	'2012-10-02 17:21:43'),
(93,	'Borda Regular',	'W-29',	'93_w-29',	NULL,	'',	'',	'',	1,	93,	0,	'2012-10-02 17:21:48'),
(94,	'Borda Regular',	'W-33',	'94_w-33',	NULL,	'',	'',	'',	1,	94,	0,	'2012-10-02 17:21:54'),
(95,	'Borda Alta',	'W-22 B/A',	'95_w-22-ba',	NULL,	'',	'',	'',	1,	95,	0,	'2012-10-02 17:23:36'),
(96,	'Borda Alta',	'W-25 B/A',	'96_w-25-ba',	NULL,	'',	'',	'',	1,	96,	0,	'2012-10-02 17:23:55'),
(97,	'Borda Alta',	'W-26 B/A',	'97_w-26-ba',	NULL,	'',	'',	'',	1,	97,	0,	'2012-10-02 17:24:05'),
(98,	'Hieleras de Fibra de Vidrio',	'500 Lt',	'98_500-lt',	NULL,	'',	'',	'',	1,	98,	0,	'2012-10-02 17:26:49'),
(99,	'Hieleras de Fibra de Vidrio',	'330 Lt',	'99_330-lt',	NULL,	'',	'',	'',	1,	99,	0,	'2012-10-02 17:27:01'),
(100,	'Hieleras de Fibra de Vidrio',	'215 Lt',	'100_215-lt',	NULL,	'',	'',	'',	1,	100,	0,	'2012-10-02 17:27:16'),
(101,	'Remolques',	'T21A',	'101_t21a',	NULL,	'',	'',	'',	1,	101,	0,	'2012-10-02 17:27:36'),
(102,	'Remolques',	'T2370',	'102_t2370',	NULL,	'',	'',	'',	1,	102,	0,	'2012-10-02 17:27:43'),
(103,	'Remolques',	'T2670',	'103_t2670',	NULL,	'',	'',	'',	1,	103,	0,	'2012-10-02 17:27:48'),
(104,	'Remolques',	'T3210',	'104_t3210',	NULL,	'',	'',	'',	1,	104,	0,	'2012-10-02 17:27:53'),
(105,	'Generadores 2 Tiempos',	'ET 650',	'105_et-650',	NULL,	'',	'',	'',	1,	105,	0,	'2012-10-02 17:29:50'),
(106,	'Generadores 2 Tiempos',	'ET 950',	'106_et-950',	NULL,	'',	'',	'',	1,	106,	0,	'2012-10-02 17:29:56'),
(107,	'Generadores 4 Tiempos Inverter',	'EF 1000 iS',	'107_ef-1000-is',	NULL,	'',	'',	'',	1,	107,	0,	'2012-10-02 17:30:20'),
(108,	'Generadores 4 Tiempos Inverter',	'EF 2000 iS',	'108_ef-2000-is',	NULL,	'',	'',	'',	1,	108,	0,	'2012-10-02 17:30:30'),
(109,	'Generadores 4 Tiempos Inverter',	'EF 2400 iS',	'109_ef-2400-is',	NULL,	'',	'',	'',	1,	109,	0,	'2012-10-02 17:30:36'),
(110,	'Generadores 4 Tiempos Premium',	'EF 1000FW',	'110_ef-1000fw',	NULL,	'',	'',	'',	1,	110,	0,	'2012-10-02 17:31:16'),
(111,	'Generadores 4 Tiempos Premium',	'EF 2600FW',	'111_ef-2600fw',	NULL,	'',	'',	'',	1,	111,	0,	'2012-10-02 17:40:22'),
(112,	'Generadores 4 Tiempos Premium',	'EF 4000DFW',	'112_ef-4000dfw',	NULL,	'',	'',	'',	1,	112,	0,	'2012-10-02 17:40:29'),
(113,	'Generadores 4 Tiempos Premium',	'EF 5200DFW',	'113_ef-5200dfw',	NULL,	'',	'',	'',	1,	113,	0,	'2012-10-02 17:40:34'),
(114,	'Generadores 4 Tiempos Premium',	'EF 6600DE',	'114_ef-6600de',	NULL,	'',	'',	'',	1,	114,	0,	'2012-10-02 17:40:57'),
(115,	'Generadores Diesel',	'EDL 11000DE',	'115_edl-11000de',	NULL,	'',	'',	'',	1,	115,	0,	'2012-10-02 17:41:38'),
(116,	'Generadores Diesel',	'EDL 13000TE',	'116_edl-13000te',	NULL,	'',	'',	'',	1,	116,	0,	'2012-10-02 17:41:42'),
(117,	'Generadores Diesel',	'EDL 16000DE',	'117_edl-16000de',	NULL,	'',	'',	'',	1,	117,	0,	'2012-10-02 17:41:47'),
(118,	'Generadores Diesel',	'EDL 20000TE',	'118_edl-20000te',	NULL,	'',	'',	'',	1,	118,	0,	'2012-10-02 17:41:52'),
(119,	'Generadores Diesel',	'EDL 21000DE',	'119_edl-21000de',	NULL,	'',	'',	'',	1,	119,	0,	'2012-10-02 17:41:56'),
(120,	'Generadores Diesel',	'EDL 26000TE',	'120_edl-26000te',	NULL,	'',	'',	'',	1,	120,	0,	'2012-10-02 17:42:00'),
(121,	'Bombas de Riego',	'YP 20 GY',	'121_yp-20-gy',	NULL,	'',	'',	'',	1,	121,	0,	'2012-10-02 17:42:09'),
(122,	'Bombas de Riego',	'YP 30 GY',	'122_yp-30-gy',	NULL,	'',	'',	'',	1,	122,	0,	'2012-10-02 17:42:16'),
(123,	'Motores Multiuso',	'MZ125',	'123_mz125',	NULL,	'',	'',	'',	1,	123,	0,	'2012-10-02 17:43:07'),
(124,	'Motores Multiuso',	'MZ125 G1',	'124_mz125-g1',	NULL,	'',	'',	'',	1,	124,	0,	'2012-10-02 17:43:11'),
(125,	'Motores Multiuso',	'MZ175A1',	'125_mz175a1',	NULL,	'',	'',	'',	1,	125,	0,	'2012-10-02 17:43:16'),
(126,	'Motores Multiuso',	'MZ175H2',	'126_mz175h2',	NULL,	'',	'',	'',	1,	126,	0,	'2012-10-02 17:43:21'),
(127,	'Motores Multiuso',	'MZ200 A2B',	'127_mz200-a2b',	NULL,	'',	'',	'',	1,	127,	0,	'2012-10-02 17:43:26'),
(128,	'Motores Multiuso',	'MZ250 A2',	'128_mz250-a2',	NULL,	'',	'',	'',	1,	128,	0,	'2012-10-02 17:43:30'),
(129,	'Motores Multiuso',	'MZ250 H2',	'129_mz250-h2',	NULL,	'',	'',	'',	1,	129,	0,	'2012-10-02 17:43:35'),
(130,	'Motores Multiuso',	'MZ300 A2B',	'130_mz300-a2b',	NULL,	'',	'',	'',	1,	130,	0,	'2012-10-02 17:43:39'),
(131,	'Motores Multiuso',	'MZ300 K4',	'131_mz300-k4',	NULL,	'',	'',	'',	1,	131,	0,	'2012-10-02 17:43:44'),
(132,	'Motores Multiuso',	'MZ360 A2B',	'132_mz360-a2b',	NULL,	'',	'',	'',	1,	132,	0,	'2012-10-02 17:43:49'),
(133,	'Motores Multiuso',	'MZ360 K5',	'133_mz360-k5',	NULL,	'',	'',	'',	1,	133,	0,	'2012-10-02 17:43:54'),
(134,	'Pesca Deportiva',	'ALETAS',	'134_aletas',	NULL,	'',	'',	'',	1,	134,	0,	'2012-10-02 17:50:52'),
(135,	'Pesca Deportiva',	'VISORES',	'135_visores',	NULL,	'',	'',	'',	1,	135,	0,	'2012-10-02 17:51:00'),
(136,	'Pesca Deportiva',	'CHALECOS',	'136_chalecos',	NULL,	'',	'',	'',	1,	136,	0,	'2012-10-02 17:51:05'),
(137,	'Pesca Deportiva',	'REGULADORES',	'137_reguladores',	NULL,	'',	'',	'',	1,	137,	0,	'2012-10-02 17:51:10'),
(138,	'Pesca Deportiva',	'ARPONES',	'138_arpones',	NULL,	'',	'',	'',	1,	138,	0,	'2012-10-02 17:51:14'),
(139,	'Pesca Deportiva',	'TANQUES AUXILIARES',	'139_tanques-auxiliares',	NULL,	'',	'',	'',	1,	139,	0,	'2012-10-02 17:51:19'),
(140,	'Pesca Comercial',	'COMPRESORES DE AIRE',	'140_compresores-de-aire',	'<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'http://www.youtube.com/watch?v=5Qx5hf1zLmk',	'http://google.com',	1,	140,	0,	'2012-10-02 17:51:46'),
(141,	'Pesca Comercial',	'MANGUERAS',	'141_mangueras',	'<p>Luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'',	'http://google.com',	1,	141,	0,	'2012-10-02 17:51:53'),
(142,	'Pesca Comercial',	'ALETAS',	'142_aletas',	'<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'http://www.youtube.com/watch?v=-NYVSwB4C5w',	'',	1,	142,	3,	'2012-10-02 17:51:58'),
(143,	'Pesca Comercial',	'ARPONES',	'143_arpones',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>',	'<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Expetenda tincidunt in sed, ex partem placerat sea, porro commodo ex eam. His putant aeterno interesset at. Usu ea mundi tincidunt, omnium virtute aliquando ius ex.</p>\r\n<p>Ea aperiri sententiae duo. Usu nullam dolorum quaestio ei, sit vidit facilisis ea. Per ne impedit iracundia neglegentur. Consetetur neglegentur eum ut, vis animal legimus inimicus id.</p>\r\n<p>His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim omnis deseruisse id. Ullum deleniti vituperata at quo, insolens complectitur te eos, ea pri dico munere propriae. Vel ferri facilis ut, qui paulo ridens praesent ad. Possim alterum qui cu. Accusamus consulatu ius te, cu decore soleat appareat usu. Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et.</p>\r\n<p>Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectitur quo te, ut vide autem homero pro.</p>',	'http://www.youtube.com/watch?v=MfBMimsvTKI',	'',	1,	143,	6,	'2012-10-02 17:52:03');

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `services` (`id`, `descripcion`, `created`) VALUES
(1,	'<h1><span style=\"color: #000080;\"><strong>SERVICIOS</strong></span></h1>\r\n<ul>\r\n<li>Contamos con Taller de Servicio y Asistencia T&eacute;cnica avalado por IMEMSA &ndash; YAMAHA.</li>\r\n<li>T&eacute;cnicos especializados en la marca YAMAHA.</li>\r\n<li>Somos el mejor servicio Post-Venta del sureste.</li>\r\n<li>Damos servicio a todos los productos YAMAHA (Acuamotos, Motores fuera de Borda, Generadores, Bombas de riego).</li>\r\n</ul>\r\n<h3><strong>GARANTIA</strong></h3>\r\n<ul>\r\n<li>Otorgamos garant&iacute;a por escrito en productos YAMAHA.</li>\r\n</ul>\r\n<h3><strong>REFACCIONES</strong></h3>\r\n<ul>\r\n<li>Contamos con refacciones Genuinas Yamaha avalados por IMEMSA de CV en: Motores Fuera de Borda, Acuamotos, Generadores, Bombas de Riego.</li>\r\n</ul>',	'2012-10-04 21:45:51');

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

-- 2012-10-05 19:42:19
