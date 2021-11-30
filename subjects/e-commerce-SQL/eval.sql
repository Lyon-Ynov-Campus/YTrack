-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 29 nov. 2021 à 21:31
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e-co-eval`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `AddressId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Address` varchar(800) NOT NULL,
  `country` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`AddressId`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`AddressId`, `Address`, `country`) VALUES
(1, '0247 Helga Plains\nNorth Terry, DC 02609-6793', 'Yemen'),
(2, '434 Agustina Oval\nSouth Amiyamouth, UT 32497-7954', 'Fiji'),
(3, '299 Russel Union Apt. 981\nThaddeuschester, ME 76964-4665', 'Timor-Leste'),
(4, '776 Donnelly Glens\nLake Orlostad, KY 27311', 'El Salvador'),
(5, '25055 Devan Mission\nAlexabury, SD 23995', 'Turkmenistan'),
(6, '914 Kris Spur Apt. 174\nBrayanhaven, MN 66329-9162', 'Israel'),
(7, '654 Demarco Mount\nNorth Charlesburgh, OH 31100-0108', 'Malaysia'),
(8, '80311 Gaylord Course\nEast Ross, VA 13237', 'Faroe Islands'),
(9, '1748 Cronin Terrace Suite 491\nLake Angelica, WI 51784-3868', 'Puerto Rico'),
(10, '98098 Monahan Square\nPort Braintown, WA 60982', 'Myanmar'),
(11, '589 Romaguera Crossing Apt. 770\nPort Madaline, ND 62003', 'Moldova'),
(12, '18017 Devante Burgs Suite 770\nShayneland, NE 77609-9076', 'Iceland'),
(13, '6254 Runolfsdottir Trail\nMorarburgh, ND 61110', 'Bouvet Island (Bouvetoya)'),
(14, '936 Hyatt Overpass Apt. 425\nJunechester, IN 88358', 'Sao Tome and Principe'),
(15, '34679 Edyth Meadow Suite 640\nEast Reymundo, DC 52866-5634', 'Greenland'),
(16, '4308 Chesley Forges Suite 288\nSkilestown, RI 04245', 'Mauritania'),
(17, '686 Crona Pines\nYundtberg, MN 17774-9368', 'British Indian Ocean Territory '),
(18, '682 Osinski Center Apt. 976\nLebsackburgh, NC 81353-4056', 'Kiribati'),
(19, '33814 Maggio Streets\nKulaschester, CA 85184', 'Argentina'),
(20, '07173 Kiehn Meadows Suite 328\nYasmeenbury, OK 40940', 'Poland'),
(21, '8086 Roob Inlet Apt. 628\nSouth Jeramychester, WY 52177', 'United Kingdom'),
(22, '44814 Ashlee Locks Apt. 588\nPort Mozell, NV 30369-3087', 'Estonia'),
(23, '838 Orn Well Suite 956\nWillmsbury, NH 86136', 'Malta'),
(24, '09138 Friesen Turnpike Suite 745\nOndrickaland, ME 78305-2546', 'Guyana'),
(25, '3470 Eulah Roads Apt. 447\nLake Rowenahaven, WV 23763', 'Saint Pierre and Miquelon\r\n'),
(26, '5692 Keira Squares\nWildermanside, MA 20904', 'Kyrgyz Republic'),
(27, '1169 Cassie Fall Suite 932\nNew Adela, MD 40878-8522', 'French Guiana'),
(28, '17058 Amie Passage\nJakubowskihaven, GA 04032', 'Greenland'),
(29, '90057 Dickens Plain Suite 745\nFrederickborough, OH 43323', 'Monaco'),
(30, '636 Konopelski Burg Apt. 171\nEast Franciscochester, SC 51113-9099', 'Chad'),
(31, '075 Karianne Lakes Apt. 434\nPort Tobymouth, CA 19848', 'Bulgaria'),
(32, '65237 Steuber Ridge\nReichelborough, LA 99746-9569', 'Jamaica'),
(33, '6180 Johnathan Road Apt. 452\nSonyabury, PA 43807', 'Chile'),
(34, '674 Davis Vista\nSouth Nash, OR 34564-4477', 'San Marino'),
(35, '96693 Hartmann Path Suite 038\nMorissetteberg, ID 48201-3896', 'Poland'),
(36, '5960 Zboncak Course\nGuyberg, VT 85743-4415', 'Bouvet Island (Bouvetoya)'),
(37, '002 Camylle Fort\nSouth Adriennechester, VT 86613', 'Romania'),
(38, '39126 Bailey Cape\nAmaniburgh, NM 30436', 'Malta'),
(39, '868 Trey Glens Apt. 669\nWest Reilly, RI 06903', 'United Arab Emirates'),
(40, '113 Olson Alley\nWest Baby, IL 97028', 'Reunion'),
(41, '763 Meda Way\nEphraimview, TX 13734', 'Eritrea'),
(42, '5065 Winston Rapids\nWest Art, SD 65940', 'Cyprus'),
(43, '65237 Steuber Ridge\nReichelborough, LA 99746-9569', 'Estonia'),
(44, '316 Gutmann Gardens\nWilbertberg, WA 13707', 'Rwanda'),
(45, '503 Lemuel Crossroad Suite 949\nPort Orie, IA 89950', 'Panama'),
(46, '06137 Gail Gateway Suite 790\nAddisonmouth, TN 88377', 'Saint Martin'),
(47, '27845 Pfeffer Fords\nEast Joyce, WA 60505', 'Serbia'),
(48, '578 Schaden Prairie Suite 667\nWest Anthony, CT 67435-6248', 'Mauritius'),
(49, '696 Austen Plain\nNew Gudrun, OR 79794', 'Puerto Rico'),
(50, '9118 Orrin Ferry Suite 163\nNorth Eladioview, WI 04030', 'Guadeloupe'),
(51, '8997 Adaline Pines Apt. 431\nLucyton, NE 79576', 'Lesotho'),
(52, '355 Boyer Rest Apt. 661\nIsadoreborough, NV 99435-1657', 'Slovenia'),
(53, '177 Kuvalis Club\nHegmannfort, NC 45858-2409', 'Austria'),
(54, '1634 Orn Islands\nEast Brennastad, FL 87082-1958', 'France'),
(55, '4689 Cassin Vista Suite 769\nSouth Carlee, IA 03045', 'Honduras'),
(56, '37359 Sadye Underpass Suite 277\nSouth Geovany, RI 88551-4354', 'Libyan Arab Jamahiriya'),
(57, '7780 Bergnaum Lodge\nGreggburgh, UT 01885', 'Saint Lucia'),
(58, '19262 Mayert Place Suite 621\nPfannerstillhaven, VA 35555', 'Georgia'),
(59, '164 Zakary Stream\nNelliehaven, AR 85483-6500', 'Haiti'),
(60, '6128 Libbie Road\nWest Marcusshire, AL 23636', 'Antigua and Barbuda'),
(61, '88348 Valentin Cliffs\nDamarisbury, VA 70926', 'Singapore'),
(62, '96739 McDermott Forks Suite 933\nNew Rossburgh, CO 06210-3490', 'Germany'),
(63, '596 Cummings Garden\nWest Reidport, AZ 38398', 'Uruguay'),
(64, '202 Gino Village\nPort Keithmouth, OK 46283-7628', 'Reunion'),
(65, '818 Devon Turnpike Apt. 226\nLarsonchester, MS 30218-7961', 'Reunion'),
(66, '25727 Meggie Estate\nNew Beulah, DC 43186-0206', 'Tunisia'),
(67, '31077 Beier Valleys\nNew Alvah, VT 75809-5133', 'Italy'),
(68, '68294 Douglas Fords Suite 367\nGussieview, MD 93517', 'Kuwait'),
(69, '788 Ebert Stravenue Apt. 597\nHollieville, MT 89505', 'Costa Rica'),
(70, '1477 Spencer Trail Apt. 000\nEast Thelma, UT 01815', 'Bhutan'),
(71, '526 Tamara Park\nKunzeborough, IN 70861-1774', 'Pakistan'),
(72, '7194 Keaton Oval Apt. 335\nJedmouth, MN 88936-1978', 'Turkmenistan'),
(73, '0897 Schuster Flat\nOrtizchester, NV 71486-0163', 'Finland'),
(74, '9103 Tillman Shoal Suite 371\nLake Stefanberg, NV 11596-2046', 'Anguilla'),
(75, '9176 Lois Groves\nSouth Jaredton, PA 26910', 'United States of America'),
(76, '144 Weissnat Mountain\nLake Virginieville, VT 82270-5603', 'Belarus'),
(77, '01086 Runolfsson Lodge\nLake Matteotown, OK 78498-6972', 'Yemen'),
(78, '2091 Roxane Shores Suite 851\nGustville, MD 68247', 'Ecuador'),
(79, '70337 Cheyanne Rue\nJacynthemouth, TN 23834', 'Svalbard & Jan Mayen Islands'),
(80, '0640 Monahan Oval Apt. 978\nNew Kiannaburgh, WY 21718', 'Afghanistan'),
(81, '46082 Quinn Tunnel Suite 311\nEast Kelliefort, VA 42625', 'Iceland'),
(82, '7067 Judy Mission\nSouth Charleyville, IL 26744', 'Zambia'),
(83, '3963 Timmothy Meadows Suite 526\nDevonshire, HI 21849', 'Uzbekistan'),
(84, '268 Lucile Crossroad Suite 559\nEast Sofia, WY 67791', 'Madagascar'),
(85, '4255 Kayley Pines Apt. 542\nWildermanstad, TN 76478', 'Singapore'),
(86, '10544 Jamie Stravenue Apt. 670\nOpalshire, NM 45444', 'France'),
(87, '8662 Robel Station\nBeaulahburgh, VT 78278-7403', 'Sao Tome and Principe'),
(88, '77700 Schinner Drives Suite 118\nTurcottetown, KS 51938', 'Cape Verde'),
(89, '66070 Joshua Mountains\nEast Shawna, TN 60009-9338', 'Israel'),
(90, '0436 Swift Harbor\nWuckertchester, SD 80764-1153', 'Mongolia'),
(91, '106 Lucio Oval\nKirstenside, UT 48729', 'Seychelles'),
(92, '99576 Casandra Pass\nAstridville, FL 37213-1666', 'Burundi'),
(93, '2261 Louisa Bypass Suite 205\nEast Maribelshire, MN 98253', 'Andorra'),
(94, '8047 Considine Divide\nGreenholthaven, NC 60801', 'Trinidad and Tobago'),
(95, '8641 Herzog Island Apt. 166\nWest Addisonfurt, MI 42862', 'Belize'),
(96, '05208 Sporer Brooks\nNorth Luella, TX 13165-1401', 'Guadeloupe'),
(97, '9887 Kenton Ridge Apt. 119\nNorth Oda, OH 28950-5884', 'Saudi Arabia');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `UserId` int(11) UNSIGNED DEFAULT NULL,
  `CartId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CartId`),
  KEY `yes` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`UserId`, `CartId`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(12, 13),
(12, 14),
(13, 15),
(14, 16),
(15, 17),
(16, 18),
(17, 19),
(18, 20),
(19, 21),
(20, 22),
(21, 23),
(22, 24),
(23, 25),
(24, 26),
(25, 27),
(26, 28),
(27, 29),
(28, 30),
(29, 31),
(30, 32),
(31, 33),
(32, 34),
(33, 35),
(34, 36),
(35, 37),
(36, 38),
(37, 39),
(38, 40),
(39, 41),
(40, 42),
(41, 43),
(42, 44),
(43, 45),
(44, 46),
(45, 47),
(46, 48),
(47, 49),
(48, 50),
(49, 51),
(50, 52),
(51, 53),
(52, 54),
(53, 55),
(54, 56),
(55, 57),
(56, 58),
(57, 59),
(58, 60),
(59, 61),
(60, 62),
(61, 63),
(62, 64),
(63, 65),
(64, 66),
(65, 67),
(66, 68),
(67, 69),
(68, 70),
(69, 71),
(70, 72),
(71, 73),
(72, 74),
(73, 75),
(74, 76),
(75, 77),
(76, 78),
(77, 79),
(78, 80),
(79, 81),
(80, 82),
(81, 83),
(82, 84),
(83, 85),
(84, 86),
(85, 87),
(86, 88),
(87, 89),
(88, 90),
(89, 91),
(90, 92),
(91, 93),
(92, 94),
(93, 95),
(94, 96),
(95, 97),
(96, 98),
(97, 99);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `Date` varchar(200) NOT NULL,
  `Informations` varchar(2000) NOT NULL,
  `UserId` int(11) UNSIGNED DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`Date`, `Informations`, `UserId`) VALUES
('17-05-2002', 'ut', 1),
('25-11-1995', 'eum', 2),
('14-05-1985', 'eligendi', 3),
('06-11-1987', 'et', 4),
('10-01-1998', 'et', 5),
('07-05-1990', 'inventore', 6),
('01-06-1996', 'est', 7),
('09-04-2007', 'laudantium', 8),
('05-12-1980', 'dicta', 9),
('11-04-2005', 'placeat', 10),
('21-07-1991', 'occaecati', 11),
('12-02-1997', 'ipsa', 12),
('26-10-2021', 'vel', 12),
('10-02-1974', 'minima', 12),
('09-04-2004', 'necessitatibus', 13),
('09-06-1990', 'dolorum', 14),
('21-02-1976', 'voluptas', 15),
('17-11-1996', 'hic', 16),
('04-01-2013', 'exercitationem', 17),
('14-10-2013', 'odio', 18),
('23-06-1980', 'sed', 19),
('04-12-1987', 'et', 20),
('18-05-2010', 'fuga', 21),
('28-01-1996', 'ab', 22),
('03-07-2001', 'quae', 23),
('21-09-1994', 'libero', 24),
('02-05-1971', 'mollitia', 25),
('13-12-1992', 'est', 26),
('25-06-2012', 'aut', 27),
('26-03-2007', 'sit', 28),
('02-10-1984', 'recusandae', 29),
('15-01-1984', 'consequatur', 30),
('06-09-1996', 'eum', 31),
('05-10-1978', 'molestiae', 32),
('11-09-1996', 'minima', 33),
('13-06-1993', 'sed', 34),
('27-06-1983', 'qui', 35),
('25-02-1992', 'tenetur', 36),
('08-02-2014', 'exercitationem', 37),
('27-06-1980', 'doloribus', 38),
('04-09-1978', 'aut', 39),
('06-02-1972', 'possimus', 40),
('24-10-1998', 'asperiores', 41),
('29-11-1970', 'et', 42),
('06-09-1985', 'consequatur', 43),
('11-10-2016', 'doloremque', 44),
('12-09-1988', 'unde', 45),
('09-01-2012', 'cupiditate', 46),
('24-04-2018', 'placeat', 47),
('05-07-1981', 'eos', 48),
('06-02-2016', 'fugiat', 49),
('09-01-2001', 'explicabo', 50),
('18-02-1974', 'numquam', 51),
('17-02-1977', 'culpa', 52),
('05-10-1972', 'laboriosam', 53),
('13-12-1984', 'deserunt', 54),
('09-06-1986', 'sint', 55),
('30-08-2002', 'quisquam', 56),
('15-01-1981', 'ea', 57),
('27-08-2012', 'error', 58),
('23-01-2019', 'quaerat', 59),
('03-06-2008', 'est', 60),
('25-02-1993', 'sunt', 61),
('08-05-2015', 'et', 62),
('31-03-2012', 'aliquam', 63),
('04-04-1987', 'qui', 64),
('20-12-1978', 'animi', 65),
('06-04-2004', 'nisi', 66),
('01-10-1995', 'facere', 67),
('19-04-1970', 'inventore', 68),
('26-12-2017', 'tenetur', 69),
('05-06-1986', 'sed', 70),
('12-05-1977', 'est', 71),
('04-04-2002', 'adipisci', 72),
('05-01-1972', 'ipsum', 73),
('05-01-2016', 'impedit', 74),
('07-07-2010', 'quis', 75),
('30-06-2009', 'illum', 76),
('01-08-2014', 'qui', 77),
('02-12-1978', 'iste', 78),
('15-05-1972', 'reprehenderit', 79),
('10-09-1992', 'pariatur', 80),
('30-04-2014', 'enim', 81),
('06-07-2018', 'sunt', 82),
('30-10-1983', 'voluptatum', 83),
('11-03-1984', 'repellat', 84),
('26-08-2013', 'est', 85),
('08-06-1973', 'ea', 86),
('27-11-1997', 'consequatur', 87),
('17-08-1976', 'sit', 88),
('28-07-1995', 'architecto', 89),
('04-02-1985', 'modi', 90),
('13-11-2012', 'nam', 91),
('20-12-2006', 'mollitia', 92),
('13-02-2006', 'architecto', 93),
('13-03-1971', 'totam', 94),
('09-11-2009', 'facere', 95),
('25-06-2003', 'omnis', 96),
('14-04-2004', 'quidem', 97);

-- --------------------------------------------------------

--
-- Structure de la table `commandline`
--

DROP TABLE IF EXISTS `commandline`;
CREATE TABLE IF NOT EXISTS `commandline` (
  `CommandlineId` int(11) NOT NULL AUTO_INCREMENT,
  `CartId` int(11) UNSIGNED DEFAULT NULL,
  `ProductId` int(11) UNSIGNED DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`CommandlineId`),
  KEY `CartId` (`CartId`,`ProductId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commandline`
--

INSERT INTO `commandline` (`CommandlineId`, `CartId`, `ProductId`, `Quantity`) VALUES
(1, 1, 3, 1),
(2, 2, 4, 1),
(3, 3, 5, 1),
(4, 4, 6, 1),
(5, 5, 7, 3),
(6, 6, 8, 2),
(7, 7, 9, 1),
(8, 8, 10, 1),
(9, 9, 11, 1),
(10, 10, 12, 1),
(11, 11, 13, 1),
(12, 12, 14, 1),
(13, 13, 15, 1),
(14, 14, 16, 1),
(15, 15, 17, 1),
(16, 16, 18, 1),
(17, 17, 19, 4),
(18, 18, 20, 11),
(19, 19, 21, 1),
(20, 20, 22, 1),
(21, 21, 23, 1),
(22, 22, 24, 3),
(23, 23, 25, 2),
(24, 24, 26, 1),
(25, 25, 27, 1),
(26, 26, 28, 5),
(27, 27, 29, 1),
(28, 28, 30, 6),
(29, 29, 31, 1),
(30, 30, 32, 1),
(31, 31, 33, 2),
(32, 32, 34, 2),
(33, 33, 35, 2),
(34, 34, 36, 1),
(35, 35, 37, 1),
(36, 36, 38, 7),
(37, 37, 39, 1),
(38, 38, 40, 25),
(39, 39, 41, 1),
(40, 40, 42, 1),
(41, 41, 43, 1),
(42, 42, 44, 1),
(43, 43, 45, 1),
(44, 44, 46, 100),
(45, 45, 47, 3),
(46, 46, 48, 3),
(47, 47, 49, 4),
(48, 48, 50, 9),
(49, 49, 51, 1),
(50, 50, 52, 1),
(51, 51, 53, 1),
(52, 52, 54, 1),
(53, 53, 55, 1),
(54, 54, 56, 1),
(55, 55, 57, 1),
(56, 56, 58, 1),
(57, 57, 59, 1),
(58, 58, 60, 1),
(59, 59, 61, 1),
(60, 60, 62, 11),
(61, 61, 63, 5),
(62, 62, 64, 4),
(63, 63, 65, 1),
(64, 64, 66, 1),
(65, 65, 67, 1),
(66, 66, 68, 2),
(67, 67, 69, 1),
(68, 68, 70, 1),
(69, 69, 71, 1),
(70, 70, 72, 2),
(71, 71, 73, 4),
(72, 72, 74, 1),
(73, 73, 75, 1),
(74, 74, 76, 7),
(75, 75, 77, 1),
(76, 75, 78, 1),
(77, 77, 79, 7),
(78, 78, 80, 2),
(79, 79, 81, 22),
(80, 80, 82, 1),
(81, 81, 83, 1),
(82, 82, 84, 2),
(83, 83, 85, 3),
(84, 84, 86, 4),
(85, 85, 87, 1),
(86, 86, 88, 1),
(87, 87, 89, 7),
(88, 88, 90, 1),
(89, 89, 91, 1),
(90, 90, 92, 1),
(91, 91, 93, 1),
(92, 92, 94, 3),
(93, 93, 95, 6),
(94, 94, 96, 1),
(95, 95, 97, 1),
(96, 96, 98, 1),
(97, 97, 99, 1),
(98, 98, 100, 7);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `filename` varchar(200) NOT NULL,
  `photoId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`photoId`),
  KEY `photoId` (`photoId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`filename`, `photoId`) VALUES
('morar.brett.jpg', 1),
('sheridan21.jpg', 2),
('henry58.jpg', 3),
('lhoeger.jpg', 4),
('franecki.simone.jpg', 5),
('kory37.jpg', 6),
('gutmann.bert.jpg', 7),
('pwilkinson.jpg', 8),
('qhodkiewicz.jpg', 9),
('shirley27.jpg', 10),
('woconner.jpg', 11),
('donnelly.mylene.jpg', 12),
('torphy.prince.jpg', 13),
('sydney.osinski.jpg', 14),
('sally16.jpg', 15),
('pherzog.jpg', 16),
('bertram18.jpg', 17),
('wstark.jpg', 18),
('alivia09.jpg', 19),
('cbeer.jpg', 20),
('talia75.jpg', 21),
('torp.tyshawn.jpg', 22),
('mateo22.jpg', 23),
('wilkinson.alia.jpg', 24),
('marty61.jpg', 25),
('emmerich.emory.jpg', 26),
('brad73.jpg', 27),
('yundt.kaleigh.jpg', 28),
('chloe92.jpg', 29),
('zlemke.jpg', 30),
('zdamore.jpg', 31),
('wuckert.willis.jpg', 32),
('rutherford.adrianna.jpg', 33),
('bartoletti.delfina.jpg', 34),
('hosea30.jpg', 35),
('kamron.predovic.jpg', 36),
('janis51.jpg', 37),
('hegmann.conor.jpg', 38),
('ddaniel.jpg', 39),
('gerhold.sydni.jpg', 40),
('yanderson.jpg', 41),
('oda27.jpg', 42),
('crawford39.jpg', 43),
('amanda55.jpg', 44),
('kuvalis.maud.jpg', 45),
('irodriguez.jpg', 46),
('schinner.reginald.jpg', 47),
('batz.deanna.jpg', 48),
('russel.emory.jpg', 49),
('rohan.jerrod.jpg', 50),
('kiarra80.jpg', 51),
('runolfsson.cicero.jpg', 52),
('stewart.okon.jpg', 53),
('schumm.vita.jpg', 54),
('agutkowski.jpg', 55),
('velda66.jpg', 56),
('leila32.jpg', 57),
('kaylin.smith.jpg', 58),
('carlotta.klocko.jpg', 59),
('albina.terry.jpg', 60),
('jessika03.jpg', 61),
('runolfsdottir.genesis.jpg', 62),
('beatty.cindy.jpg', 63),
('blynch.jpg', 64),
('schuppe.brenda.jpg', 65),
('rempel.korey.jpg', 66),
('schultz.ashlee.jpg', 67),
('marquardt.amiya.jpg', 68),
('cassin.nicklaus.jpg', 69),
('violette.conroy.jpg', 70),
('lhilll.jpg', 71),
('lindsay.metz.jpg', 72),
('america47.jpg', 73),
('mariano91.jpg', 74),
('armstrong.amira.jpg', 75),
('gayle33.jpg', 76),
('mconsidine.jpg', 77),
('kristoffer60.jpg', 78),
('sporer.maximus.jpg', 79),
('ben.ledner.jpg', 80),
('reagan75.jpg', 81),
('travis17.jpg', 82),
('idell.swift.jpg', 83),
('trevion.schmeler.jpg', 84),
('ari.rowe.jpg', 85),
('jacynthe89.jpg', 86),
('amelie92.jpg', 87),
('heller.conrad.jpg', 88),
('brando14.jpg', 89),
('kaycee.mclaughlin.jpg', 90),
('alexandrine.rowe.jpg', 91),
('colton35.jpg', 92),
('virgie.bode.jpg', 93),
('jalyn64.jpg', 94),
('ngreenholt.jpg', 95),
('gideon.hyatt.jpg', 96),
('xswift.jpg', 97),
('khodkiewicz.jpg', 98),
('sking.jpg', 99),
('edyth63.jpg', 100);

-- --------------------------------------------------------

--
-- Structure de la table `photo_product`
--

DROP TABLE IF EXISTS `photo_product`;
CREATE TABLE IF NOT EXISTS `photo_product` (
  `ProductId` int(11) UNSIGNED DEFAULT NULL,
  `PhotoId` int(11) UNSIGNED DEFAULT NULL,
  KEY `productId` (`ProductId`),
  KEY `photoId` (`PhotoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `photo_product`
--

INSERT INTO `photo_product` (`ProductId`, `PhotoId`) VALUES
(2, 2),
(4, 4),
(6, 6),
(8, 8),
(10, 10),
(12, 12),
(14, 14),
(16, 16),
(18, 18),
(20, 20),
(22, 22),
(24, 24),
(26, 26),
(28, 28),
(30, 30),
(32, 32),
(34, 34),
(36, 36),
(38, 38),
(40, 40),
(42, 42),
(44, 44),
(46, 46),
(48, 48),
(50, 50),
(52, 52),
(54, 54),
(56, 56),
(58, 58),
(60, 60),
(62, 62),
(64, 64),
(66, 66),
(68, 68),
(70, 70),
(72, 72),
(74, 74),
(76, 76),
(78, 78),
(80, 80),
(82, 82),
(84, 84),
(86, 86),
(88, 88),
(90, 90),
(92, 92),
(94, 94),
(96, 96),
(98, 98),
(100, 100);

-- --------------------------------------------------------

--
-- Structure de la table `photo_user`
--

DROP TABLE IF EXISTS `photo_user`;
CREATE TABLE IF NOT EXISTS `photo_user` (
  `UserId` int(11) UNSIGNED NOT NULL,
  `PhotoId` int(11) UNSIGNED NOT NULL,
  KEY `UserId` (`UserId`),
  KEY `PhotoId` (`PhotoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `photo_user`
--

INSERT INTO `photo_user` (`UserId`, `PhotoId`) VALUES
(2, 3),
(4, 5),
(6, 7),
(8, 9),
(10, 11),
(12, 13),
(12, 15),
(14, 17),
(16, 19),
(18, 21),
(20, 23),
(22, 25),
(24, 27),
(26, 29),
(28, 31),
(30, 33),
(32, 35),
(34, 37),
(36, 39),
(38, 41),
(40, 43),
(42, 45),
(44, 47),
(46, 49),
(48, 51),
(50, 53),
(52, 55),
(54, 57),
(56, 59),
(58, 61),
(60, 63),
(62, 65),
(64, 67),
(66, 69),
(68, 71),
(70, 73),
(72, 75),
(74, 77),
(76, 79),
(78, 81),
(80, 83),
(82, 85),
(84, 87),
(86, 89),
(88, 91),
(90, 93),
(92, 95),
(94, 97),
(96, 99);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ProductId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ProductId`),
  UNIQUE KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`ProductId`, `Name`, `Price`, `Quantity`) VALUES
(1, 'molestiae', 79, 755),
(2, 'reiciendis', 76, 177),
(3, 'veritatis', 23, 226),
(4, 'laudantium', 93, 194),
(5, 'aut', 61, 540),
(6, 'id', 85, 688),
(7, 'quas', 21, 251),
(8, 'repudiandae', 76, 401),
(9, 'voluptates', 25, 644),
(10, 'vitae', 57, 786),
(11, 'aut', 7, 839),
(12, 'aut', 38, 309),
(13, 'quia', 40, 741),
(14, 'omnis', 44, 350),
(15, 'velit', 34, 878),
(16, 'consequatur', 60, 111),
(17, 'qui', 23, 969),
(18, 'minima', 28, 187),
(19, 'non', 30, 885),
(20, 'facilis', 64, 37),
(21, 'voluptatem', 1, 626),
(22, 'maxime', 9, 61),
(23, 'illo', 76, 808),
(24, 'eos', 42, 273),
(25, 'similique', 50, 702),
(26, 'praesentium', 79, 931),
(27, 'quis', 58, 292),
(28, 'eligendi', 3, 818),
(29, 'facilis', 70, 121),
(30, 'nihil', 27, 625),
(31, 'error', 88, 977),
(32, 'quam', 53, 517),
(33, 'quidem', 3, 42),
(34, 'qui', 74, 18),
(35, 'ea', 18, 168),
(36, 'omnis', 25, 978),
(37, 'soluta', 94, 493),
(38, 'vero', 4, 627),
(39, 'dolores', 89, 160),
(40, 'consequatur', 71, 893),
(41, 'optio', 96, 429),
(42, 'dolor', 87, 256),
(43, 'sunt', 19, 711),
(44, 'tempore', 56, 397),
(45, 'culpa', 46, 185),
(46, 'vitae', 76, 314),
(47, 'cum', 6, 119),
(48, 'quisquam', 79, 661),
(49, 'sunt', 46, 635),
(50, 'maxime', 51, 587),
(51, 'numquam', 5, 763),
(52, 'et', 16, 658),
(53, 'est', 51, 360),
(54, 'sed', 24, 157),
(55, 'dolores', 96, 683),
(56, 'perferendis', 73, 357),
(57, 'rerum', 88, 783),
(58, 'sed', 73, 776),
(59, 'beatae', 76, 825),
(60, 'eaque', 66, 549),
(61, 'dignissimos', 92, 178),
(62, 'quia', 50, 831),
(63, 'quo', 39, 602),
(64, 'quis', 62, 867),
(65, 'repellat', 89, 568),
(66, 'rem', 14, 991),
(67, 'quibusdam', 89, 783),
(68, 'molestiae', 73, 115),
(69, 'minima', 9, 248),
(70, 'omnis', 82, 986),
(71, 'molestiae', 81, 138),
(72, 'asperiores', 15, 112),
(73, 'quia', 22, 233),
(74, 'nobis', 54, 397),
(75, 'accusamus', 60, 219),
(76, 'inventore', 7, 36),
(77, 'doloribus', 82, 508),
(78, 'voluptatem', 35, 542),
(79, 'accusantium', 21, 895),
(80, 'qui', 72, 701),
(81, 'qui', 19, 240),
(82, 'odit', 25, 103),
(83, 'eveniet', 35, 596),
(84, 'reiciendis', 5, 131),
(85, 'ea', 52, 471),
(86, 'itaque', 82, 925),
(87, 'expedita', 16, 265),
(88, 'veniam', 49, 17),
(89, 'facilis', 48, 414),
(90, 'sunt', 38, 73),
(91, 'nihil', 80, 11),
(92, 'exercitationem', 60, 532),
(93, 'eum', 31, 578),
(94, 'quae', 22, 18),
(95, 'qui', 56, 156),
(96, 'nesciunt', 49, 955),
(97, 'culpa', 52, 77),
(98, 'sed', 56, 736),
(99, 'autem', 77, 313),
(100, 'qui', 78, 613);

-- --------------------------------------------------------

--
-- Structure de la table `rate`
--

DROP TABLE IF EXISTS `rate`;
CREATE TABLE IF NOT EXISTS `rate` (
  `UserId` int(11) UNSIGNED DEFAULT NULL,
  `ProductId` int(11) UNSIGNED DEFAULT NULL,
  `Rate` int(11) NOT NULL,
  KEY `UserId` (`UserId`,`ProductId`),
  KEY `ProductId` (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rate`
--

INSERT INTO `rate` (`UserId`, `ProductId`, `Rate`) VALUES
(1, 2, 5),
(2, 3, 3),
(3, 4, 4),
(4, 5, 2),
(5, 6, 1),
(6, 7, 5),
(7, 8, 5),
(8, 9, 5),
(9, 10, 2),
(10, 11, 3),
(11, 12, 4),
(12, 13, 5),
(12, 14, 2),
(12, 15, 5),
(13, 16, 1),
(14, 17, 2),
(15, 18, 5),
(16, 19, 5),
(17, 20, 4),
(18, 21, 0),
(19, 22, 0),
(20, 23, 0),
(21, 24, 5),
(22, 25, 1),
(23, 26, 4),
(24, 27, 4),
(25, 28, 2),
(26, 29, 0),
(27, 30, 3),
(28, 31, 2),
(29, 32, 3),
(30, 33, 2),
(31, 34, 5),
(32, 35, 2),
(33, 36, 5),
(34, 37, 1),
(35, 38, 0),
(36, 39, 1),
(37, 40, 2),
(38, 41, 4),
(39, 42, 4),
(40, 43, 0),
(41, 44, 0),
(42, 45, 1),
(43, 46, 3),
(44, 47, 3),
(45, 48, 2),
(46, 49, 2),
(47, 50, 2),
(48, 51, 4),
(49, 52, 4),
(50, 53, 5),
(51, 54, 3),
(52, 55, 1),
(53, 56, 1),
(54, 57, 1),
(55, 58, 1),
(56, 59, 0),
(57, 60, 2),
(58, 61, 1),
(59, 62, 2),
(60, 63, 5),
(61, 64, 1),
(62, 65, 4),
(63, 66, 2),
(64, 67, 1),
(65, 68, 2),
(66, 69, 2),
(67, 70, 5),
(68, 71, 3),
(69, 72, 2),
(70, 73, 0),
(71, 74, 1),
(72, 75, 3),
(73, 76, 0),
(74, 77, 1),
(75, 78, 2),
(76, 79, 1),
(77, 80, 2),
(78, 81, 3),
(79, 82, 0),
(80, 83, 1),
(81, 84, 2),
(82, 85, 5),
(83, 86, 0),
(84, 87, 4),
(85, 88, 3),
(86, 89, 5),
(87, 90, 4),
(88, 91, 0),
(89, 92, 5),
(90, 93, 3),
(91, 94, 3),
(92, 95, 1),
(93, 96, 5),
(94, 97, 5),
(95, 98, 1),
(96, 99, 3),
(97, 100, 0),
(28, 100, 1),
(1, 100, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `PhoneNumber` varchar(100) NOT NULL,
  `Mail` varchar(200) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `Id` (`userId`),
  KEY `Id_2` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`userId`, `FirstName`, `LastName`, `PhoneNumber`, `Mail`) VALUES
(1, 'Alfred', 'Larkin', '1-567-674-0837x080', 'jcremin@hotmail.com'),
(2, 'Mariana', 'Ziemann', '1-946-724-0553', 'pinkie.leuschke@baumbach.com'),
(3, 'Vernon', 'Stoltenberg', '07038476323', 'runolfsson.carmen@keeling.com'),
(4, 'Mia', 'Swift', '566-418-3450x598', 'wgottlieb@yahoo.com'),
(5, 'Sabrina', 'Runte', '991-511-9454x0048', 'minnie42@gmail.com'),
(6, 'Connor', 'Rau', '+57(4)3021227633', 'ray00@hotmail.com'),
(7, 'Bernhard', 'Torp', '746.433.0771x41137', 'runolfsdottir.wanda@nikolaus.biz'),
(8, 'Milton', 'Larson', '815-006-8362x286', 'vergie62@effertz.com'),
(9, 'Bernadette', 'Ortiz', '1-954-254-5111', 'mina.damore@hotmail.com'),
(10, 'Pinkie', 'Beahan', '939.219.5418x72140', 'witting.marjory@hotmail.com'),
(11, 'Jeremie', 'Cummings', '1-777-753-0808', 'ahaley@fahey.com'),
(12, 'Elvera', 'Stanton', '07677466243', 'carlos.feest@hotmail.com'),
(13, 'Rickie', 'Gorczany', '684-653-7527', 'lucinda.purdy@gmail.com'),
(14, 'Jarrett', 'Stokes', '06565452308', 'vbergstrom@hotmail.com'),
(15, 'Ellsworth', 'Donnelly', '(326)517-4106x4042', 'wkoss@hotmail.com'),
(16, 'Trudie', 'Turner', '1-912-700-7163x769', 'idubuque@ankunding.com'),
(17, 'Rowland', 'Pfannerstill', '198-753-0695', 'fisher.corrine@schimmel.org'),
(18, 'Ralph', 'Kuvalis', '01553923056', 'lkuphal@kub.com'),
(19, 'Aileen', 'Runolfsson', '768-977-8633', 'vernon.walsh@gmail.com'),
(20, 'Dejah', 'Rath', '498.320.9959', 'russel.reggie@yahoo.com'),
(21, 'Ila', 'Bins', '114-040-8515', 'shemar.bradtke@yahoo.com'),
(22, 'Newell', 'Homenick', '443.519.4784x71973', 'ifahey@gmail.com'),
(23, 'Adriana', 'Russel', '799-439-7983x28968', 'ada.marks@harber.net'),
(24, 'Della', 'Marks', '00249907064', 'walker.eunice@gmail.com'),
(25, 'Horace', 'Ziemann', '(046)901-9394x5160', 'eula33@kuhlman.com'),
(26, 'Reggie', 'Schowalter', '605-166-5569x570', 'predovic.edward@gmail.com'),
(27, 'Hoyt', 'Senger', '(545)323-1646x365', 'chloe84@ebert.com'),
(28, 'Aubrey', 'Jacobs', '1-620-818-5486', 'sonia.ferry@hotmail.com'),
(29, 'Ericka', 'Stamm', '141-379-8908x1866', 'dashawn.price@yahoo.com'),
(30, 'Garrick', 'Bergnaum', '(364)180-6842', 'larkin.jeanette@goyette.org'),
(31, 'Anissa', 'Bogisich', '+77(2)3112940630', 'marcelo.kemmer@gmail.com'),
(32, 'Amparo', 'Hansen', '961-837-8593x5301', 'eparker@bernier.biz'),
(33, 'Jackson', 'Weber', '984.016.3758x9627', 'zvonrueden@altenwerth.net'),
(34, 'Amelia', 'Corkery', '+95(3)9327356324', 'tillman.anita@yahoo.com'),
(35, 'Maximilian', 'Reinger', '(050)623-1963', 'maud96@yahoo.com'),
(36, 'Domenic', 'Powlowski', '197.761.6124x88353', 'waltenwerth@hotmail.com'),
(37, 'Madisyn', 'Veum', '05155515838', 'letitia54@yahoo.com'),
(38, 'Delfina', 'Kuhic', '1-116-563-5071x170', 'hills.shanie@yahoo.com'),
(39, 'Russ', 'Conn', '985-732-2578', 'jessica42@gmail.com'),
(40, 'Tre', 'Brakus', '270.240.9127x55409', 'kerluke.cierra@wolf.net'),
(41, 'Blaise', 'Howe', '1-699-357-9653', 'eino.russel@gmail.com'),
(42, 'Ignacio', 'Douglas', '170-865-3551', 'runolfsson.stacey@bechtelar.net'),
(43, 'Concepcion', 'Treutel', '472-274-8109x72332', 'norene.cummings@gmail.com'),
(44, 'Lilly', 'Schmeler', '867-151-1649x66060', 'ruby26@larkin.com'),
(45, 'Alexandra', 'Rolfson', '+56(2)7955856543', 'wauer@hotmail.com'),
(46, 'Lew', 'Schulist', '1-706-238-7961', 'cwyman@koss.com'),
(47, 'Samir', 'Bradtke', '254.542.0643x831', 'gwintheiser@reinger.com'),
(48, 'Jordan', 'Kulas', '121.761.4721x9518', 'wintheiser.hunter@botsford.com'),
(49, 'Aracely', 'Moen', '140.457.7798', 'nova.schiller@feest.com'),
(50, 'Newton', 'Schultz', '929-542-5006x02163', 'jimmy12@oconnell.com'),
(51, 'Amely', 'Hyatt', '1-147-668-2919', 'ashleigh.oberbrunner@gmail.com'),
(52, 'Geoffrey', 'Stanton', '201-297-4414', 'rdach@walsh.com'),
(53, 'Peyton', 'Tromp', '190-390-4345x58637', 'leichmann@lehner.com'),
(54, 'Moriah', 'Fahey', '+73(2)8132412110', 'parker.josh@yahoo.com'),
(55, 'Beverly', 'Boehm', '02126971751', 'ndickens@moore.com'),
(56, 'Waylon', 'Terry', '1-796-622-8818x2279', 'thiel.mazie@yahoo.com'),
(57, 'Noemy', 'Murray', '361-716-9619x42129', 'breanne76@kshlerin.net'),
(58, 'Jessika', 'Stiedemann', '(832)897-9845', 'hstark@yahoo.com'),
(59, 'Marisol', 'Will', '(973)510-1948', 'rudolph.erdman@gmail.com'),
(60, 'Alford', 'Toy', '1-348-943-5852x6687', 'gladyce.sipes@gleason.com'),
(61, 'Eloisa', 'Bashirian', '507.174.9411x17871', 'runolfsson.marcellus@abernathy.biz'),
(62, 'Mavis', 'Donnelly', '(302)686-2224', 'kailee.dicki@jenkins.org'),
(63, 'Laurie', 'Ferry', '041.117.1041x98456', 'mrice@hotmail.com'),
(64, 'Monty', 'Feil', '649.277.8877', 'aubrey.leannon@hotmail.com'),
(65, 'Edgar', 'Treutel', '1-736-134-4328x6667', 'sidney.prohaska@hotmail.com'),
(66, 'Savanna', 'Pfeffer', '912.972.2721x6473', 'mdaugherty@yahoo.com'),
(67, 'Johnny', 'Rempel', '(649)781-2988x9915', 'wilfrid.rempel@gutkowski.com'),
(68, 'Clarissa', 'Fisher', '+42(9)2225977840', 'rnolan@ferry.biz'),
(69, 'Jackie', 'Luettgen', '1-440-544-6896x5123', 'nova.treutel@greenfelder.com'),
(70, 'Camille', 'Beier', '1-198-295-1225x672', 'connelly.wilson@yahoo.com'),
(71, 'Elmer', 'Sawayn', '1-315-483-2136x6768', 'carlos.crist@gerlach.info'),
(72, 'Arianna', 'Conn', '1-836-281-7956x581', 'hilpert.nestor@hotmail.com'),
(73, 'Mossie', 'Schmidt', '606-922-3279x60207', 'gorczany.mariela@hotmail.com'),
(74, 'Arthur', 'Dickinson', '(526)582-6465x88248', 'rubye.goldner@kerluke.biz'),
(75, 'Jamar', 'Feest', '1-845-279-8433', 'verdie.walker@murphy.com'),
(76, 'Diego', 'Hammes', '662-932-9229x266', 'sleannon@hotmail.com'),
(77, 'Cassandra', 'Keebler', '159.767.8007', 'adella.borer@gulgowski.com'),
(78, 'Juliet', 'Quigley', '02590859446', 'achristiansen@yahoo.com'),
(79, 'Kaden', 'Jenkins', '891.346.5119x4017', 'casper08@denesik.info'),
(80, 'Lucy', 'Kerluke', '+91(1)9638472987', 'collin.cruickshank@towne.com'),
(81, 'Hallie', 'Sauer', '368.345.3649', 'eunice.konopelski@turcotte.org'),
(82, 'Solon', 'Torp', '725-840-0590x858', 'carli.witting@hauck.com'),
(83, 'Rico', 'Haley', '1-413-923-6312x36589', 'hgreenholt@hotmail.com'),
(84, 'Percy', 'Labadie', '128-585-9873', 'nbuckridge@von.info'),
(85, 'Lera', 'Waelchi', '09634774919', 'mariane55@welch.net'),
(86, 'Velma', 'Gislason', '01149095607', 'zgibson@yahoo.com'),
(87, 'Shayna', 'Hirthe', '879.274.1969', 'wilton.boehm@gmail.com'),
(88, 'Jermey', 'Bogan', '103.549.0398', 'gdubuque@hotmail.com'),
(89, 'Luisa', 'Gerlach', '039-026-9387x659', 'morissette.watson@yahoo.com'),
(90, 'Zelma', 'Anderson', '400.157.5686', 'ian95@wiegand.com'),
(91, 'Thad', 'Borer', '350.070.4792x86404', 'hokon@schoen.com'),
(92, 'Arch', 'Gibson', '(628)803-5271x607', 'fwill@wiza.com'),
(93, 'Kade', 'Rogahn', '790-279-8225x87496', 'shania.grady@greenfelder.info'),
(94, 'Arden', 'Mann', '983.466.2845x44111', 'nathen.smitham@hotmail.com'),
(95, 'Ernie', 'Quitzon', '748-417-3952x08725', 'isabella10@gmail.com'),
(96, 'Fiona', 'Altenwerth', '(254)596-6334', 'ralph.gorczany@pfeffer.com'),
(97, 'Charity', 'Armstrong', '649.220.3193x400', 'lfarrell@strosin.biz');

-- --------------------------------------------------------

--
-- Structure de la table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE IF NOT EXISTS `user_address` (
  `AddressId` int(11) UNSIGNED NOT NULL,
  `UserId` int(11) UNSIGNED NOT NULL,
  KEY `AddressId` (`AddressId`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_address`
--

INSERT INTO `user_address` (`AddressId`, `UserId`) VALUES
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 12),
(14, 12),
(15, 13),
(16, 14),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(23, 21),
(24, 22),
(25, 23),
(26, 24),
(27, 25),
(28, 26),
(29, 27),
(30, 28),
(31, 29),
(31, 30),
(32, 31),
(33, 32),
(34, 33),
(35, 34),
(36, 35),
(37, 36),
(38, 37),
(39, 38),
(40, 39),
(41, 40),
(42, 41),
(43, 42),
(44, 43),
(45, 44),
(46, 45),
(47, 46),
(48, 47),
(49, 48),
(50, 49),
(51, 50),
(52, 51),
(53, 52),
(54, 53),
(55, 54),
(56, 55),
(57, 56),
(58, 57),
(59, 58),
(60, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `yes` FOREIGN KEY (`UserId`) REFERENCES `user` (`userId`);

--
-- Contraintes pour la table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `command_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commandline`
--
ALTER TABLE `commandline`
  ADD CONSTRAINT `LaClés` FOREIGN KEY (`CartId`) REFERENCES `cart` (`CartId`),
  ADD CONSTRAINT `commandline_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `photo_product`
--
ALTER TABLE `photo_product`
  ADD CONSTRAINT `photo_product_ibfk_1` FOREIGN KEY (`PhotoId`) REFERENCES `photo` (`photoId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `photo_product_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `photo_user`
--
ALTER TABLE `photo_user`
  ADD CONSTRAINT `photo_user_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `photo_user_ibfk_2` FOREIGN KEY (`PhotoId`) REFERENCES `photo` (`photoId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_address_ibfk_2` FOREIGN KEY (`AddressId`) REFERENCES `address` (`AddressId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
