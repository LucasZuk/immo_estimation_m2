-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 25 Mai 2021 à 13:33
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `immo`
--

-- --------------------------------------------------------

--
-- Structure de la table `prix_immo`
--

CREATE TABLE IF NOT EXISTS `prix_immo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codePostal` tinytext NOT NULL,
  `ville` tinytext NOT NULL,
  `surface` int(11) NOT NULL,
  `prix` double NOT NULL,
  `flat` tinyint(1) NOT NULL,
  `viabilise` tinyint(1) NOT NULL,
  `nameVendor` text NOT NULL,
  `phoneVendor` text NOT NULL,
  `pub` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=335 ;

--
-- Contenu de la table `prix_immo`
--

INSERT INTO `prix_immo` (`id`, `codePostal`, `ville`, `surface`, `prix`, `flat`, `viabilise`, `nameVendor`, `phoneVendor`, `pub`) VALUES
(1, '69290', 'GrÃ©zieu-la-Varenne', 401, 249000, 1, 1, 'Julien Charderon', '0665404728', 1),
(2, '01990', 'Saint-Trivier-sur-Moignans', 400, 89000, 1, 1, 'Lorenzo', '0613792430', 1),
(3, '71570', 'La Chapelle-de-Guinchay', 1466, 105000, 1, 1, 'Saroli', '0611206603', 1),
(4, '69210', 'Sourcieux-les-Mines', 420, 120000, 1, 1, 'Orpi CD l''Arbresle', '0474711142', 1),
(5, '69380', 'Dommartin', 800, 399000, 1, 1, 'ERA Grand Ouest Azergues', '0481655430', 1),
(6, '69650', 'Quincieux', 800, 179000, 1, 1, 'La ForÃªt Jassans', '0474047404', 0),
(7, '69400', 'GleizÃ©', 800, 250000, 1, 1, 'Chantal Barbery', '0674062402', 1),
(8, '01700', 'Beynost', 850, 390000, 1, 1, 'Eric Bottaz', '0642508302', 0),
(9, '01600', 'Reyrieux', 300, 155000, 1, 1, 'Luigi (Lbc)', '0658755253', 0),
(10, '71570', 'RomanÃ¨che-Thorins', 655, 70500, 1, 1, 'Century 21 Coquillat', '0474663374', 0),
(11, '69270', 'Fontaines-sur-SaÃ´ne', 615, 430000, 1, 1, 'terrain.fontaines (Lbc)', '', 0),
(12, '69650', 'Quincieux', 1007, 285000, 1, 1, 'Anglade Notaire', '0624402114', 0),
(13, '69630', 'Chaponost', 634, 380000, 1, 1, 'Orpi Brignais', '0472319494', 0),
(14, '69340', 'Francheville', 1050, 520000, 1, 1, 'Mercier Immobilier', '0478473615', 0),
(15, '69126', 'Brindas', 500, 330000, 1, 1, 'SalomÃ© Mesguich', '0771599879', 0),
(16, '69380', 'Saint-Jean-des-Vignes', 800, 270000, 1, 1, 'Plaza Immobilier', '0437465050', 0),
(17, '69300', 'Caluire-et-Cuire', 1664, 960000, 1, 1, 'JC Gouillon', '0607493279', 0),
(18, '69630', 'Chaponost', 600, 300000, 1, 1, 'Guy Hoquet', '0478420286', 0),
(19, '69004', 'Lyon 4e Arrondissement', 500, 600000, 1, 1, 'TimothÃ©e (Lbc)', '', 0),
(20, '01390', 'Saint-AndrÃ©-de-Corcy', 740, 215000, 1, 1, 'Amandine AndrÃ©', '0625368643', 0),
(21, '01600', 'Reyrieux', 950, 350000, 1, 1, 'La ForÃªt Jassans', '0474047404', 0),
(22, '69450', 'Saint-Cyr-au-Mont-d''Or', 980, 649000, 1, 1, 'Julien Duvert', '0618645232', 0),
(23, '69290', 'Craponne', 450, 345000, 1, 1, 'Laurent (Lbc)', '0767933433', 0),
(24, '69380', 'Charnay', 848, 260000, 1, 1, 'Agence Didier Journoud', '0474721640', 0),
(25, '01990', 'Saint-Trivier-sur-Moignans', 308, 59000, 1, 1, 'Square Habitat Chatillon', '0428313683', 0),
(26, '69210', 'Lentilly', 1131, 495000, 1, 1, 'Avenir Investissement', '0465666955', 0),
(27, '01600', 'Reyrieux', 300, 155000, 1, 1, 'Luigi (Lbc)', '0681375545', 0),
(28, '69005', 'Lyon 5e Arrondissement', 536, 595000, 1, 1, 'Carole BuissonnniÃ¨re', '0631130985', 0),
(29, '69890', 'La Tour-de-Salvagny', 850, 472500, 1, 1, 'Jean FranÃ§ois Lize', '0769377674', 0),
(30, '69210', 'Saint-Pierre-la-Palud', 984, 235000, 1, 1, 'LM Promotion', '0783902148', 0),
(31, '69670', 'Vaugneray', 608, 280000, 1, 1, 'Selection Immobilier', '0437200582', 0),
(32, '69760', 'Limonest', 810, 500000, 1, 1, 'Jerem (Lbc)', '', 0),
(33, '69250', 'Neuville-sur-SaÃ´ne', 700, 300000, 1, 1, 'Anglade Notaire', '0624402114', 0),
(34, '69480', 'Lachassagne', 850, 275000, 1, 1, 'Cyril Labe', '066077296', 0),
(35, '69380', 'Lissieu', 694, 270000, 1, 1, 'Ptiiitemini (Lbc)', '0618492413', 0),
(36, '69480', 'Anse', 850, 205000, 1, 1, '', '', 0),
(37, '69380', 'Chazay-d''Azergues', 782, 296000, 1, 1, 'Fab (Lbc)', '0624403108', 0),
(38, '69290', 'Craponne', 520, 285000, 1, 1, 'SAS Acropole Transaction', '0478578862', 0),
(39, '69280', 'Marcy-l''Ã‰toile', 800, 390000, 1, 1, 'Muriel Perrier', '0676752488', 0),
(40, '69230', 'Saint-Genis-Laval', 700, 350000, 1, 1, 'Era Immobilier', '0422670723', 0),
(41, '69620', 'Le Breuil', 1300, 260000, 1, 1, 'Sand63 (Lbc)', '', 0),
(42, '69380', 'Civrieux-d''Azergues', 940, 235000, 1, 1, 'Era Immobilier', '0481655430', 0),
(43, '69460', 'Salles-Arbuissonnas-en-Beaujolais', 2489, 190000, 1, 1, 'Florence Debize', '0620814531', 0),
(44, '69530', 'Brignais', 1000, 320000, 1, 1, 'Century 21', '0422674219', 0),
(45, '01090', 'Montmerle-sur-SaÃ´ne', 470, 139000, 1, 1, 'Montmerle (Lbc)', '', 0),
(46, '69650', 'Saint-Germain-au-Mont-d''Or', 1824, 529000, 1, 1, 'ClÃ©ment Comas', '0683950777', 0),
(47, '69380', 'Lissieu', 749, 395000, 1, 1, 'SolÃ¨ne Escarabajal', '0682396116', 0),
(48, '01390', 'RancÃ©', 1229, 220000, 1, 1, 'Bernard Juan', '0611553472', 0),
(49, '01330', 'AmbÃ©rieux-en-Dombes', 650, 185000, 1, 1, 'Georges (Lbc)', '0631747557', 0),
(50, '69290', 'GrÃ©zieu-la-Varenne', 700, 360000, 1, 1, 'Pascal Escoffier', '0633338189', 0),
(51, '71570', 'La Chapelle-de-Guinchay', 295, 55000, 1, 1, '', '', 0),
(52, '69380', 'Lozanne', 423, 195000, 1, 1, 'Orpi Azergues Transactions', '0478338206', 0),
(53, '69450', 'Saint-Cyr-au-Mont-d''Or', 2995, 1200000, 1, 1, 'AurÃ©lie Sitruk', '0617991105', 0),
(54, '01290', 'Cormoranche-sur-SaÃ´ne', 1120, 94000, 1, 1, '', '', 0),
(55, '01380', 'Saint-Cyr-sur-Menthon', 1022, 85000, 1, 1, '', '', 0),
(56, '69280', 'Marcy-l''Ã‰toile', 1314, 419000, 1, 1, 'Corinne Dumonal', '0611147008', 0),
(57, '69380', 'Lissieu', 960, 280000, 1, 1, 'Vernay (Lbc)', '', 0),
(58, '01090', 'Genouilleux', 600, 120000, 1, 1, 'Josiane Gobet', '0699369768', 0),
(59, '69220', 'CerciÃ©', 636, 87000, 1, 1, 'LaforÃªt Villeffranche', '0474608608', 0),
(60, '69250', 'Neuville-sur-SaÃ´ne', 400, 255000, 1, 1, '', '', 0),
(61, '69480', 'Pommiers', 1676, 285000, 1, 1, 'Ericlbc (Lbc)', '', 1),
(62, '69270', 'Saint-Romain-au-Mont-d''Or', 817, 269000, 1, 1, 'SolÃ¨ne Escarabajal', '0682396116', 0),
(63, '69300', 'Caluire-et-Cuire', 700, 600000, 1, 1, 'Ariane Guimet', '0624452866', 0),
(64, '01480', 'Jassans-Riottier', 350, 177000, 1, 1, 'La Box Immo', '0428390141', 0),
(65, '01600', 'Massieux', 325, 175000, 1, 1, 'Ingrid Garacci', '0771573376', 0),
(66, '69400', 'GleizÃ©', 440, 189000, 1, 1, 'Hugues Descharmes', '0676839204', 0),
(67, '69400', 'GleizÃ©', 780, 270000, 1, 1, 'Hugues Descharmes', '0676839204', 0),
(68, '69400', 'GleizÃ©', 1000, 320000, 1, 1, 'Hugues Descharmes', '0676839204', 0),
(69, '69650', 'Saint-Germain-au-Mont-d''Or', 2800, 860000, 1, 1, 'Serr (Lbc)', '0669731496', 0),
(70, '69110', 'Sainte-Foy-lÃ¨s-Lyon', 1050, 670000, 1, 1, 'Ariane Chevalier', '0627251767', 1),
(71, '69230', 'Saint-Genis-Laval', 1946, 760000, 1, 1, 'Caroline Genevois', '0698183832', 0),
(72, '69450', 'Saint-Cyr-au-Mont-d''Or', 1100, 600000, 1, 1, 'Karine Immo', '0601772718', 0),
(73, '69450', 'Saint-Cyr-au-Mont-d''Or', 1100, 550000, 1, 1, 'Karine Immo', '0601772718', 0),
(74, '69110', 'Sainte-Foy-lÃ¨s-Lyon', 750, 640000, 1, 1, 'Ludovic Barraud', '0652385409', 0),
(75, '69260', 'CharbonniÃ¨res-les-Bains', 1500, 740000, 1, 1, 'FrÃ©dÃ©rique Guillerme', '0617180023', 0),
(76, '01600', 'Reyrieux', 780, 150000, 1, 1, 'Mathilde DufÃªtre', '0625951636', 0),
(77, '69160', 'Tassin-la-Demi-Lune', 636, 268000, 1, 1, 'Culturimmo', '0678439398', 0),
(78, '69480', 'Lachassagne', 750, 245000, 1, 1, 'Duchamp (Lbc)', '0671105644', 0),
(79, '69450', 'Saint-Cyr-au-Mont-d''Or', 1300, 730000, 1, 1, 'LM Promotion', '0783902148', 0),
(80, '69290', 'Saint-Genis-les-OlliÃ¨res', 528, 392000, 1, 1, 'ClÃ©ment Pocachard', '0649728561', 0),
(81, '01600', 'Toussieux', 467, 158000, 1, 1, 'Carole Sigal ', '0664433771', 0),
(82, '69210', 'Saint-Pierre-la-Palud', 787, 195000, 1, 1, 'LM Promotion', '0783902148', 0),
(83, '01480', 'Jassans-Riottier', 638, 195000, 1, 1, 'Laurence', '0680745629', 0),
(84, '69380', 'Civrieux-d''Azergues', 1350, 310000, 1, 1, 'AurÃ©lie (Lbc)', '', 0),
(85, '69490', 'Saint-Romain-de-Popey', 855, 188000, 1, 1, '', '', 0),
(86, '69450', 'Saint-Cyr-au-Mont-d''Or', 1521, 690000, 1, 1, 'Julien Michaud', '0660535695', 1),
(87, '69650', 'Quincieux', 961, 210000, 1, 1, 'Jonathan Pin', '0669302409', 0),
(88, '69400', 'Porte des Pierres DorÃ©es', 827, 160000, 1, 1, 'Jean Christophe LatuilÃ¨re', '0620082925', 0),
(89, '69160', 'Tassin-la-Demi-Lune', 843, 500000, 1, 1, 'ClÃ©ment Godet', '0685447140', 0),
(90, '69820', 'Fleurie', 607, 82000, 1, 1, 'David Lecompagnon', '0761044078', 1),
(91, '69820', 'Fleurie', 669, 75000, 1, 1, 'David Lecompagnon', '0761044078', 1),
(92, '69220', 'Saint-Lager', 750, 108000, 1, 1, 'Dalita Banamira', '0686751095', 0),
(93, '69400', 'Limas', 651, 199000, 1, 1, 'Laurent Goudard', '0474620313', 1),
(94, '69220', 'Belleville-en-Beaujolais', 585, 148000, 1, 1, 'Eva Bari', '0606646105', 1),
(95, '01600', 'Saint-Didier-de-Formans', 700, 200000, 1, 1, 'GrÃ©gory Moreaud', '0619594397', 0),
(96, '01090', 'Montmerle-sur-SaÃ´ne', 685, 135000, 1, 1, 'Raymond Althen', '0474693308', 0),
(97, '69660', 'Collonges-au-Mont-d''Or', 716, 312000, 1, 1, '', '', 0),
(98, '69210', 'Lentilly', 1250, 282000, 1, 1, 'Corinne Monneret', '0660693379', 0),
(99, '01600', 'Massieux', 236, 165000, 1, 1, 'Ingrid Garacci', '0771573376', 0),
(100, '01390', 'Saint-AndrÃ©-de-Corcy', 401, 175000, 1, 1, 'Christophe Pernet', '0633604206', 1),
(101, '01090', 'Montmerle-sur-SaÃ´ne', 800, 128000, 1, 1, 'Sandrine Althen', '0629853696', 1),
(102, '01090', 'Genouilleux', 713, 162000, 1, 1, 'Adeline Vailleau', '0625821961', 0),
(103, '69430', 'QuinciÃ©-en-Beaujolais', 636, 87000, 1, 1, '', '', 0),
(104, '01480', 'Jassans-Riottier', 538, 120000, 1, 1, 'Favrot', '0782380786', 0),
(105, '69890', 'La Tour-de-Salvagny', 906, 375000, 1, 1, '', '', 0),
(106, '69890', 'La Tour-de-Salvagny', 1076, 390000, 1, 1, '', '', 0),
(107, '69890', 'La Tour-de-Salvagny', 697, 345000, 1, 1, '', '', 0),
(108, '69380', 'Dommartin', 404, 283000, 1, 1, 'Orpi CD l''Arbresle', '0474711142', 0),
(109, '69380', 'Dommartin', 419, 283000, 1, 1, '', '', 0),
(110, '69380', 'Lissieu', 1000, 430000, 1, 1, 'Hugo Marques', '0633727698', 1),
(111, '69280', 'Marcy-l''Ã‰toile', 900, 460000, 1, 1, '', '', 0),
(112, '69270', 'RochetaillÃ©e-sur-SaÃ´ne', 600, 360000, 1, 1, 'Valentin Sanz Y Prast ', '0789281453', 0),
(113, '69250', 'Fleurieu-sur-SaÃ´ne', 575, 294000, 1, 1, 'Square Habitat Neuville', '0428314389', 0),
(114, '01480', 'Fareins', 306, 120000, 1, 1, 'Michel PlÃ¢tre', '0662587377', 0),
(115, '69830', 'Saint-Georges-de-Reneins', 493, 183500, 1, 1, 'Morgan Diaskot', '0609989998', 0),
(116, '01480', 'Ars-sur-Formans', 300, 125900, 1, 1, '', '', 0),
(117, '69630', 'Chaponost', 2148, 1150000, 1, 1, 'Fernand de Gasperis', '0646424278', 0),
(118, '69430', 'QuinciÃ©-en-Beaujolais', 593, 82000, 1, 1, '', '', 0),
(119, '69290', 'GrÃ©zieu-la-Varenne', 523, 200000, 1, 1, 'Mme Chamouton', '0478571817', 0),
(120, '69260', 'CharbonniÃ¨res-les-Bains', 801, 430000, 1, 1, 'SAS Acropole Transaction', '0478578862', 0),
(121, '01480', 'Frans', 460, 109000, 1, 1, '', '', 0),
(122, '69620', 'Frontenas', 1020, 225000, 1, 1, 'LÃ©o Chaix', '0631742200', 1),
(123, '69340', 'Francheville', 851, 319000, 1, 1, 'ImmobiliÃ¨re du Grand Lyon', '0472820517', 0),
(124, '69380', 'Chasselay', 1570, 570000, 1, 1, '', '', 0),
(125, '69570', 'Dardilly', 1586, 475000, 1, 1, 'FranÃ§oise Magnani', '0659780925', 0),
(126, '69380', 'Lissieu', 750, 400000, 1, 1, 'Hugo Marques', '0633727698', 1),
(127, '69380', 'Chasselay', 850, 310000, 1, 1, '', '', 0),
(128, '69380', 'Chasselay', 750, 310000, 1, 1, '', '', 0),
(129, '69280', 'Marcy-l''Ã‰toile', 700, 440000, 1, 1, 'Margaux Creuseveau', '0649125738', 1),
(130, '01600', 'Reyrieux', 938, 355500, 1, 1, 'VÃ©ronique Maldjian', '0614535069', 1),
(131, '01330', 'Sainte-Olive', 886, 197000, 1, 1, 'Edouard Zaffran', '0695134999', 1),
(132, '01480', 'Jassans-Riottier', 350, 177000, 1, 1, 'Cabinet Norbert Morin', '0474670487', 0),
(133, '69400', 'Porte des Pierres DorÃ©es', 720, 176000, 1, 1, 'Mathilde Bessy', '0680415478', 1),
(134, '69830', 'Saint-Georges-de-Reneins', 564, 195000, 1, 1, 'Thierry Chareyre', '0608855197', 1),
(135, '69210', 'Bully', 356, 149000, 1, 1, '', '', 0),
(136, '69830', 'Saint-Georges-de-Reneins', 442, 155000, 1, 1, 'Dominique Schieste', '', 0),
(137, '01600', 'TrÃ©voux', 400, 200000, 1, 1, 'Franck Renard', '0782604974', 1),
(138, '01480', 'Villeneuve', 341, 119000, 1, 1, '', '', 1),
(139, '69490', 'Saint-Romain-de-Popey', 495, 159000, 1, 1, '', '', 0),
(140, '01390', 'Mionnay', 674, 247900, 1, 1, 'Maguimmo', '', 0),
(141, '69220', 'Saint-Lager', 620, 89000, 1, 1, 'Lionel AllÃ©gatiÃ¨re', '', 0),
(142, '01480', 'Fareins', 513, 110000, 1, 1, 'Pascal Bridon', '', 1),
(143, '01600', 'Saint-Didier-de-Formans', 310, 110000, 1, 1, 'Primmo', '', 0),
(144, '01480', 'Fareins', 513, 150000, 1, 1, 'Pascal Bridon', '', 0),
(145, '69400', 'Porte des Pierres DorÃ©es', 1201, 126000, 1, 1, 'Camille Vouillat', '', 0),
(146, '69250', 'Albigny-sur-SaÃ´ne', 718, 285000, 1, 1, 'RÃ©mi Debord', '', 0),
(147, '69250', 'Montanay', 1045, 340000, 1, 1, '', '', 0),
(148, '01600', 'Toussieux', 1000, 270000, 1, 1, 'JED (Lbc)', '', 0),
(149, '01390', 'Saint-AndrÃ©-de-Corcy', 400, 165000, 1, 1, 'Pernet Immobilier', '', 1),
(150, '01390', 'Saint-AndrÃ©-de-Corcy', 600, 200000, 1, 1, 'Pernet Immobilier', '', 1),
(151, '01480', 'Fareins', 822, 179000, 1, 1, 'RhÃ´ne et SaÃ´ne Immobilier', '', 0),
(152, '69450', 'Saint-Cyr-au-Mont-d''Or', 1096, 660000, 1, 1, '', '', 1),
(153, '69450', 'Saint-Cyr-au-Mont-d''Or', 1124, 825000, 1, 1, '', '', 0),
(154, '01600', 'Reyrieux', 383, 131000, 1, 1, '', '', 0),
(155, '01600', 'Reyrieux', 336, 126000, 1, 1, '', '', 0),
(156, '69270', 'Cailloux-sur-Fontaines', 495, 220000, 1, 1, '', '', 0),
(157, '71570', 'La Chapelle-de-Guinchay', 2500, 189000, 1, 1, '', '', 0),
(158, '69830', 'Saint-Georges-de-Reneins', 493, 175000, 1, 1, 'Gabriel Prestat', '', 0),
(159, '69480', 'Marcy', 1000, 230000, 1, 1, 'Bauvais Christopher', '', 1),
(160, '69220', 'LanciÃ©', 391, 90000, 1, 1, 'Robert Sauvan', '', 0),
(161, '01480', 'Messimy-sur-SaÃ´ne', 490, 159000, 1, 1, 'Ibrahim Ceyla', '', 1),
(162, '69250', 'Albigny-sur-SaÃ´ne', 665, 312000, 1, 1, 'MarlÃ¨ne Hoarau', '', 0),
(163, '69220', 'Belleville-en-Beaujolais', 1408, 195000, 1, 1, '', '', 0),
(164, '69660', 'Collonges-au-Mont-d''Or', 631, 364000, 1, 1, '', '', 0),
(165, '69660', 'Collonges-au-Mont-d''Or', 1048, 468000, 1, 1, '', '', 0),
(166, '69220', 'LanciÃ©', 440, 90000, 1, 1, 'Didier Chalus', '', 0),
(167, '69380', 'Les ChÃ¨res', 736, 255000, 1, 1, 'Primmo', '', 0),
(168, '69290', 'GrÃ©zieu-la-Varenne', 800, 375000, 1, 1, 'Alexis Bhiri', '', 1),
(169, '01990', 'Baneins', 735, 75000, 1, 1, 'Astrid Vacher', '', 0),
(170, '69450', 'Saint-Cyr-au-Mont-d''Or', 1375, 490000, 1, 1, '', '', 0),
(171, '69370', 'Saint-Didier-au-Mont-d''Or', 506, 380000, 1, 1, 'Primmo Immbolier', '', 0),
(172, '69830', 'Saint-Georges-de-Reneins', 636, 152000, 1, 1, 'Virginia Vanetti', '', 0),
(173, '69830', 'Saint-Georges-de-Reneins', 682, 152000, 1, 1, 'Virginia Vanetti', '', 0),
(174, '69260', 'CharbonniÃ¨res-les-Bains', 579, 415000, 1, 1, 'Maitre Martin Foray', '', 0),
(175, '69280', 'Marcy-l''Ã‰toile', 581, 259900, 1, 1, 'Charles Franchequin', '', 0),
(176, '69300', 'Caluire-et-Cuire', 473, 575000, 1, 1, 'Anne Coquerel', '', 1),
(177, '69290', 'GrÃ©zieu-la-Varenne', 357, 240000, 1, 1, 'Victor Copin', '', 1),
(178, '01480', 'Chaleins', 375, 116000, 1, 1, '', '', 1),
(179, '69250', 'Montanay', 600, 300000, 1, 1, 'Laurent Buffard', '0687763340', 0),
(180, '69290', 'Craponne', 500, 240000, 1, 1, '', '', 0),
(181, '69280', 'Marcy-l''Ã‰toile', 935, 460000, 1, 1, '', '', 0),
(182, '69340', 'Francheville', 512, 290000, 1, 1, 'LaforÃªt Tassin la Demi Lune', '0426787810', 0),
(183, '69510', 'Thurins', 180, 144000, 1, 1, '', '', 0),
(184, '69220', 'DracÃ©', 558, 100000, 1, 1, 'Square Habitat Villefranche', '0428313472', 0),
(185, '69460', 'Salles-Arbuissonnas-en-Beaujolais', 555, 155000, 1, 1, '', '', 0),
(186, '69460', 'Le PerrÃ©on', 700, 140000, 1, 1, '', '', 0),
(187, '69430', 'LantigniÃ©', 1100, 69000, 1, 1, '', '', 0),
(188, '69430', 'RÃ©gniÃ©-Durette', 332, 67000, 1, 1, '', '', 0),
(189, '69400', 'Arnas', 2031, 200000, 1, 1, 'StÃ©phanie Perez', '0680423575', 0),
(190, '69460', 'Le PerrÃ©on', 735, 97000, 1, 1, 'Perr.ann (Lbc)', '0660912229', 0),
(191, '69840', 'JuliÃ©nas', 800, 70900, 1, 1, '', '', 0),
(192, '71570', 'La Chapelle-de-Guinchay', 442, 50000, 1, 1, '', '', 0),
(193, '71570', 'La Chapelle-de-Guinchay', 558, 55000, 1, 1, '', '', 0),
(194, '01090', 'GuÃ©reins', 265, 77000, 1, 1, '', '', 0),
(195, '69840', 'Ã‰meringes', 452, 54900, 1, 1, '', '', 0),
(196, '01090', 'GuÃ©reins', 400, 102000, 1, 1, '', '', 0),
(197, '01600', 'Reyrieux', 339, 155000, 1, 1, '', '', 0),
(198, '69640', 'DenicÃ©', 295, 85000, 1, 1, '', '', 0),
(199, '69640', 'Montmelas-Saint-Sorlin', 227, 75000, 1, 1, '', '', 0),
(200, '69640', 'Montmelas-Saint-Sorlin', 227, 75000, 1, 1, '', '', 0),
(201, '69640', 'Ville-sur-Jarnioux', 460, 149000, 1, 1, '', '', 0),
(202, '69640', 'DenicÃ©', 523, 145000, 1, 1, '', '', 0),
(203, '69260', 'CharbonniÃ¨res-les-Bains', 1000, 399000, 1, 1, 'Ouest Home', '0661482201', 0),
(204, '69260', 'CharbonniÃ¨res-les-Bains', 1620, 740000, 1, 1, '', '', 0),
(205, '69380', 'Lissieu', 700, 430000, 1, 1, '', '', 0),
(206, '69890', 'La Tour-de-Salvagny', 873, 375000, 1, 1, '', '', 0),
(207, '69430', 'Saint-Didier-sur-Beaujeu', 1137, 33000, 1, 1, 'J Verger', '0646662504', 0),
(208, '01390', 'RancÃ©', 390, 135000, 1, 1, 'Bernard Juan', '0611553472', 0),
(209, '01600', 'Massieux', 500, 239000, 1, 1, '', '', 0),
(210, '69340', 'Francheville', 894, 363000, 1, 1, 'Peggy De Gasperis', '0628782370', 0),
(211, '01480', 'Beauregard', 365, 105000, 1, 1, '', '', 0),
(212, '01480', 'Beauregard', 450, 150000, 1, 1, '', '', 0),
(213, '69220', 'Belleville-en-Beaujolais', 500, 145000, 1, 1, 'Charlaine (Lbc)', '0676283652', 0),
(214, '01090', 'Montmerle-sur-SaÃ´ne', 1000, 160000, 1, 1, 'Nunsuta (Lbc)', '0646192075', 0),
(215, '01390', 'RancÃ©', 910, 243000, 1, 1, 'Studios (Lbc)', '0610690789', 0),
(216, '01390', 'RancÃ©', 760, 228000, 1, 1, 'Studios (Lbc)', '0610690789', 0),
(217, '01390', 'RancÃ©', 750, 225000, 1, 1, 'Studios (Lbc)', '0610690789', 0),
(218, '01480', 'Frans', 570, 15000, 1, 1, '', '', 0),
(219, '01480', 'Frans', 600, 175000, 1, 1, '', '', 0),
(220, '01480', 'Frans', 482, 145000, 1, 1, '', '', 0),
(221, '01480', 'Frans', 570, 150000, 1, 1, '', '', 0),
(222, '01480', 'Frans', 430, 140000, 1, 1, '', '', 0),
(223, '69126', 'Brindas', 570, 320000, 1, 1, '', '', 0),
(224, '69250', 'Montanay', 600, 280000, 1, 1, '', '', 0),
(225, '69250', 'Montanay', 434, 220000, 1, 1, '', '', 0),
(226, '69250', 'Montanay', 366, 210000, 1, 1, '', '', 0),
(227, '69220', 'Belleville-en-Beaujolais', 708, 140000, 1, 1, 'Century 21 Coquillat', '0474663374', 0),
(228, '71570', 'La Chapelle-de-Guinchay', 1466, 110000, 1, 1, 'StÃ©phanie Patruno', '0658721115', 0),
(229, '69760', 'Limonest', 810, 489000, 1, 1, 'Jerem (Lbc)', '0666134784', 0),
(230, '69290', 'GrÃ©zieu-la-Varenne', 700, 345000, 1, 1, 'Caroline Bouvier', '0677008751', 0),
(231, '69290', 'Craponne', 550, 400000, 1, 1, 'MCA Promotion', '0472730045', 0),
(232, '69126', 'Brindas', 750, 360000, 1, 1, '', '', 0),
(233, '01480', 'Frans', 760, 180000, 1, 1, '', '', 0),
(234, '69260', 'CharbonniÃ¨res-les-Bains', 1618, 741000, 1, 1, '', '', 0),
(235, '69260', 'CharbonniÃ¨res-les-Bains', 1430, 700000, 1, 1, '', '', 0),
(236, '69400', 'Limas', 600, 180000, 1, 1, '', '', 0),
(237, '69210', 'Saint-Pierre-la-Palud', 700, 220000, 1, 1, 'Chrles (Lbc)', '0640352048', 0),
(238, '69430', 'Beaujeu', 600, 86000, 1, 1, 'Nestenn Belleville', '0474071010', 0),
(239, '69450', 'Saint-Cyr-au-Mont-d''Or', 1200, 588000, 1, 1, '', '', 0),
(240, '69250', 'Albigny-sur-SaÃ´ne', 1355, 609750, 1, 1, '', '', 0),
(241, '01480', 'Jassans-Riottier', 287, 120000, 1, 1, 'BLK (Lbc)', '0651743422', 0),
(242, '69250', 'Poleymieux-au-Mont-d''Or', 2219, 300000, 1, 1, 'Primmo', '0437496767', 0),
(243, '69210', 'Sourcieux-les-Mines', 489, 185000, 1, 1, 'FrÃ©dÃ©rique Barjhoux', '0688225490', 0),
(244, '69210', 'Saint-Pierre-la-Palud', 722, 230000, 1, 1, 'Corentin Thoinet', '0670653367', 0),
(245, '69210', 'Saint-Pierre-la-Palud', 741, 185000, 1, 1, 'Corentin Thoinet', '0670653367', 0),
(246, '69570', 'Dardilly', 1711, 390000, 1, 1, 'Yoann Sanchez', '0771576028', 0),
(247, '01700', 'Saint-Maurice-de-Beynost', 501, 276000, 1, 1, 'MS Miribel Immobilier', '0422678862', 0),
(248, '71570', 'La Chapelle-de-Guinchay', 427, 78000, 1, 1, 'AgnÃ¨s Cordier Gondcaille', '0616467165', 0),
(249, '71570', 'La Chapelle-de-Guinchay', 452, 82000, 1, 1, 'AgnÃ¨s Cordier Gondcaille', '0616467165', 0),
(250, '71570', 'La Chapelle-de-Guinchay', 1727, 98500, 1, 1, 'MBR Immobilier', '0474665781', 0),
(251, '71570', 'La Chapelle-de-Guinchay', 1110, 105000, 1, 1, 'AgnÃ¨s Cordier Gondcaille', '0616467165', 0),
(252, '01480', 'Messimy-sur-SaÃ´ne', 404, 150000, 1, 1, '', '', 0),
(253, '01480', 'Messimy-sur-SaÃ´ne', 372, 150000, 1, 1, '', '', 0),
(254, '01480', 'Messimy-sur-SaÃ´ne', 395, 155000, 1, 1, '', '', 0),
(255, '01480', 'Messimy-sur-SaÃ´ne', 400, 155000, 1, 1, '', '', 0),
(256, '01480', 'Villeneuve', 501, 143000, 1, 1, '', '', 0),
(257, '01390', 'Saint-Marcel', 215, 89000, 1, 1, 'GÃ©rard Aumonier', '0687326911', 0),
(258, '69290', 'Craponne', 450, 345000, 1, 1, '', '', 0),
(259, '69400', 'Limas', 400, 185000, 1, 1, 'Dupeleu', '0661761765', 0),
(260, '01480', 'Beauregard', 1077, 170000, 1, 1, '', '', 0),
(261, '01480', 'Beauregard', 1126, 165000, 1, 1, '', '', 0),
(262, '01480', 'Frans', 570, 146500, 1, 1, '', '', 0),
(263, '69160', 'Tassin-la-Demi-Lune', 840, 500000, 1, 1, '', '', 0),
(264, '69380', 'Lissieu', 1050, 425000, 1, 1, 'Clara Meary ', '0699388538', 0),
(265, '69480', 'Anse', 350, 199500, 1, 1, 'Mathilde (Lbc)', '0660597020', 0),
(266, '69270', 'Fontaines-Saint-Martin', 688, 399000, 1, 1, '', '', 0),
(267, '01480', 'Messimy-sur-SaÃ´ne', 500, 147000, 1, 1, '', '', 0),
(268, '01990', 'Chaneins', 700, 129500, 1, 1, 'Lucie Fournand', '0474554417', 1),
(269, '01990', 'Chaneins', 700, 129500, 1, 1, 'Lucie Fournand', '0474554417', 1),
(270, '69660', 'Collonges-au-Mont-d''Or', 750, 477000, 1, 1, 'Anne Marie Neuville', '0660391271', 0),
(271, '69250', 'Albigny-sur-SaÃ´ne', 900, 480000, 1, 1, 'Immo Saint Cyr', '0478478529', 0),
(272, '69290', 'GrÃ©zieu-la-Varenne', 451, 270000, 1, 1, '', '', 0),
(273, '69210', 'Lentilly', 668, 252500, 1, 1, '', '', 0),
(274, '69270', 'Cailloux-sur-Fontaines', 1500, 420000, 1, 1, 'Hemerys Immobilier ', '0760145338', 0),
(275, '69300', 'Caluire-et-Cuire', 851, 600000, 1, 1, 'Immobilier notaires', '0757469680', 0),
(276, '01140', 'Saint-Didier-sur-Chalaronne', 500, 85000, 1, 1, '', '', 0),
(277, '69830', 'Saint-Georges-de-Reneins', 400, 128000, 1, 1, '', '', 0),
(278, '69670', 'Vaugneray', 613, 280000, 1, 1, 'Immo RÃªve Conseil', '0478480933', 0),
(279, '01090', 'Montmerle-sur-SaÃ´ne', 654, 135000, 1, 1, 'David Agence immobiliÃ¨re du Val d''Or', '0623190524', 0),
(280, '69640', 'DenicÃ©', 450, 150010, 1, 1, '', '', 0),
(281, '01480', 'Jassans-Riottier', 287, 115000, 1, 1, 'BLK (Lbc)', '0651743422', 0),
(282, '01600', 'TrÃ©voux', 637, 180000, 1, 1, 'Orpi Direct Habitat', '0474003923', 0),
(283, '69820', 'Fleurie', 642, 78000, 1, 1, '', '', 0),
(284, '01480', 'Messimy-sur-SaÃ´ne', 500, 135000, 1, 1, 'PA (Lbc)', '0786479274', 0),
(285, '69630', 'Chaponost', 600, 300000, 1, 1, 'RÃ©seau Immo Diffusion', '0974531381', 0),
(286, '69160', 'Tassin-la-Demi-Lune', 820, 721000, 1, 1, 'Julie Deroche', '0625744464', 0),
(287, '01140', 'Saint-Didier-sur-Chalaronne', 506, 89000, 1, 1, 'Nicolas Mock', '0631538456', 0),
(288, '01390', 'Saint-AndrÃ©-de-Corcy', 400, 180000, 1, 1, '', '', 0),
(289, '01390', 'Saint-AndrÃ©-de-Corcy', 435, 183000, 1, 1, '', '', 0),
(290, '01390', 'Saint-AndrÃ©-de-Corcy', 479, 190000, 1, 1, '', '', 0),
(291, '69250', 'Albigny-sur-SaÃ´ne', 1350, 607500, 1, 1, 'Neuville (Lbc)', 'Message uniquement ', 0),
(292, '69640', 'DenicÃ©', 450, 180010, 1, 1, '', '', 0),
(293, '69820', 'Fleurie', 1230, 132500, 1, 1, 'Agence LaforÃªt Belleville', '0474666666', 0),
(294, '01600', 'Sainte-EuphÃ©mie', 358, 145000, 1, 1, '', '', 0),
(295, '69220', 'DracÃ©', 515, 120000, 1, 1, 'Nestenn Belleville', '0474071010', 0),
(296, '69530', 'Brignais', 626, 250000, 1, 1, 'Orpi Agence de la Place', '0422677427', 0),
(297, '69730', 'Genay', 800, 300000, 1, 1, 'Laurent Chotel', '0662903200', 0),
(298, '69380', 'Chazay-d''Azergues', 700, 258500, 1, 1, 'Sereno (Lbc)', 'Message uniquement ', 0),
(299, '69400', 'Porte des Pierres DorÃ©es', 800, 150000, 1, 1, 'Valerie69 (Lbc)', 'Message uniquement ', 0),
(300, '69210', 'Saint-Germain-Nuelles', 900, 240000, 1, 1, 'Valerie69 (Lbc)', 'Message uniquement ', 0),
(301, '69380', 'Chessy', 850, 315000, 1, 1, 'Nicolas Joly', '0619916597', 0),
(302, '01990', 'Saint-Trivier-sur-Moignans', 500, 110900, 1, 1, '', '', 0),
(303, '01480', 'Jassans-Riottier', 475, 167000, 1, 1, '', '', 0),
(304, '01480', 'Frans', 445, 125000, 1, 1, '', '', 0),
(305, '01480', 'Villeneuve', 497, 143000, 1, 1, 'Sabrina Salhi ', '0699882363', 0),
(306, '71570', 'La Chapelle-de-Guinchay', 900, 97000, 1, 1, '', '', 0),
(307, '69640', 'Ville-sur-Jarnioux', 550, 220000, 1, 1, 'JB (Lbc)', 'Message uniquement ', 0),
(308, '69126', 'Brindas', 656, 329000, 1, 1, 'CÃ©dric Franzetti', '0465665621', 0),
(309, '71680', 'CrÃªches-sur-SaÃ´ne', 1200, 105000, 1, 1, '', '', 0),
(310, '69210', 'Saint-Pierre-la-Palud', 839, 220000, 1, 1, 'Hugo Decavele', '0783902148', 0),
(311, '69290', 'Saint-Genis-les-OlliÃ¨res', 901, 460000, 1, 1, 'SÃ©verine Verdollin', '0613044242', 0),
(312, '69290', 'Saint-Genis-les-OlliÃ¨res', 760, 440000, 1, 1, 'SÃ©verine Verdollin', '0613044242', 0),
(313, '69830', 'Saint-Georges-de-Reneins', 528, 140000, 1, 1, '', '', 0),
(314, '69380', 'Chazay-d''Azergues', 756, 290000, 1, 1, 'LÃ©a Jacques (StÃ©phane Plaza)', '0437465050', 0),
(315, '69250', 'Fleurieu-sur-SaÃ´ne', 711, 318000, 1, 1, 'Square Habitat Neuville ', '0428314389', 0),
(316, '01600', 'Saint-Didier-de-Formans', 542, 250000, 1, 1, 'David (Lbc)', '0668649804', 0),
(317, '69380', 'Belmont-d''Azergues', 1193, 274000, 1, 1, 'Virgile Escallon', '0761070099', 0),
(318, '69430', 'Beaujeu', 600, 82000, 1, 1, 'Nestenn Belleville', '0474071010', 0),
(319, '69460', 'Vaux-en-Beaujolais', 1200, 140000, 1, 1, 'Century 21 Coquillat', '0474652000', 0),
(320, '01700', 'Beynost', 860, 370000, 1, 1, 'Ornella Ruet', '0465666955', 0),
(321, '69250', 'Fleurieu-sur-SaÃ´ne', 1604, 550000, 1, 1, 'Square Habitat Neuville', '0428314389', 0),
(322, '69830', 'Saint-Georges-de-Reneins', 500, 160000, 1, 1, 'Gaby (Lbc)', '0660155266', 0),
(323, '69640', 'Porte des Pierres DorÃ©es', 550, 173000, 1, 1, '', '', 0),
(324, '69115', 'Chiroubles', 1096, 109600, 1, 1, '', '', 0),
(325, '69115', 'Chiroubles', 900, 109900, 1, 1, '', '', 0),
(326, '69115', 'Chiroubles', 1060, 123500, 1, 1, '', '', 0),
(327, '69840', 'JuliÃ©nas', 970, 72900, 1, 1, '', '', 0),
(328, '69270', 'Couzon-au-Mont-d''Or', 890, 350000, 1, 1, 'Fanny (Lbc)', 'Message uniquement ', 0),
(329, '69620', 'Frontenas', 355, 135000, 1, 1, 'AgnÃ¨s AngÃ©lique Tozzoli', '0629558303', 0),
(330, '69380', 'Dommartin', 620, 455000, 1, 1, 'Cavali', '0614629978', 0),
(331, '69230', 'Saint-Genis-Laval', 720, 350000, 1, 1, 'Erwan Crouan', '0663040631', 0),
(332, '69280', 'Marcy-l''Ã‰toile', 700, 430000, 1, 1, 'StÃ©phane Durif', '0659403415', 0),
(333, '69230', 'Saint-Genis-Laval', 720, 390000, 1, 1, 'Erwan Crouan', '0663040631', 0),
(334, '69160', 'Tassin-la-Demi-Lune', 901, 460000, 1, 1, 'SÃ©verine Verdollin', '0613044242', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
