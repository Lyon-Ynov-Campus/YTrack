-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 15 nov. 2021 à 14:43
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eval`
--

-- --------------------------------------------------------

--
-- Structure de la table `adress`
--

DROP TABLE IF EXISTS `adress`;
CREATE TABLE IF NOT EXISTS `adress` (
  `adressId` int NOT NULL AUTO_INCREMENT,
  `country` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `adressLine1` varchar(128) NOT NULL,
  `adressLine2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`adressId`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adress`
--

INSERT INTO `adress` (`adressId`, `country`, `city`, `adressLine1`, `adressLine2`) VALUES
(1, 'France', 'Paris', '3 rue du port', 'etage 56 au fond fu couloir'),
(2, 'Londre', 'Manchester', '6 street dunno', NULL),
(3, 'France', 'Lyon', '27 rue saoul servant', NULL),
(4, 'France', 'strasbourd', '27 rue du globenktfh', 'etage 3 porte JOJO');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`cartId`),
  KEY `userId` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`cartId`, `productId`, `userId`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `commandId` int NOT NULL AUTO_INCREMENT,
  `cartId` int NOT NULL,
  PRIMARY KEY (`commandId`),
  KEY `cartId` (`cartId`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`commandId`, `cartId`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `photoId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`photoId`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`photoId`, `name`) VALUES
(1, 'oui.png'),
(2, 'nerjuEGEtrijezETYJ48RHea.jpg'),
(3, 'laPhoto.jpeg'),
(4, 'test.png'),
(5, 'moi.jfif'),
(6, 'non.png'),
(7, 'nerjzefzefea.jpg'),
(8, 'laPhoto2.jpeg'),
(9, 'tapetteAMouche.png'),
(10, 'lui.jfif');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `catagory` varchar(64) NOT NULL,
  `price` float NOT NULL,
  `weight` float NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`productId`, `name`, `catagory`, `price`, `weight`) VALUES
(1, 'Aspirateur pas fou', 'produit menager', 150.99, 20),
(2, 'Oculus beef', 'electronique', 700, 5),
(3, 'spaghetti', 'nourriture', 0.5, 1),
(4, 'Iphone 13 pro shiny', 'electronique', 2000, 1),
(5, 'Zebre', 'Animal', 99999, 264);

-- --------------------------------------------------------

--
-- Structure de la table `product_cart`
--

DROP TABLE IF EXISTS `product_cart`;
CREATE TABLE IF NOT EXISTS `product_cart` (
  `productId` int NOT NULL,
  `cartId` int NOT NULL,
  `quantity` int NOT NULL,
  KEY `productId` (`productId`),
  KEY `cartId` (`cartId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product_cart`
--

INSERT INTO `product_cart` (`productId`, `cartId`, `quantity`) VALUES
(0, 0, 3),
(1, 1, 1),
(2, 2, 10),
(3, 3, 1),
(4, 4, 1564);

-- --------------------------------------------------------

--
-- Structure de la table `product_photo`
--

DROP TABLE IF EXISTS `product_photo`;
CREATE TABLE IF NOT EXISTS `product_photo` (
  `productId` int NOT NULL,
  `photoId` int NOT NULL,
  KEY `productId` (`productId`),
  KEY `photoId` (`photoId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product_photo`
--

INSERT INTO `product_photo` (`productId`, `photoId`) VALUES
(0, 0),
(1, 4),
(2, 3),
(3, 2),
(4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rate`
--

DROP TABLE IF EXISTS `rate`;
CREATE TABLE IF NOT EXISTS `rate` (
  `rateId` int NOT NULL AUTO_INCREMENT,
  `mark` int NOT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `userId` int NOT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`rateId`),
  KEY `userId` (`userId`),
  KEY `productId` (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rate`
--

INSERT INTO `rate` (`rateId`, `mark`, `comment`, `userId`, `productId`) VALUES
(5, 5, 'Pas fou le produit', 0, 1),
(4, 1, 'Incroyable le produit', 1, 2),
(3, 5, 'Un produit de qualité, que dis-je ? un produit dexception, je lai recommandé à tout ma famille ! ', 2, 3),
(2, 3, 'Il manque les piles', 1, 4),
(1, 4, 'service après vente au top', 3, 5),
(6, 3, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_photo`
--

DROP TABLE IF EXISTS `user_photo`;
CREATE TABLE IF NOT EXISTS `user_photo` (
  `userId` int NOT NULL,
  `photoId` int NOT NULL,
  KEY `utilisateurId` (`userId`),
  KEY `photoId` (`photoId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_photo`
--

INSERT INTO `user_photo` (`userId`, `photoId`) VALUES
(1, 5),
(2, 6),
(3, 8),
(4, 7),
(5, 9);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(128) NOT NULL,
  `pseudo` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `adressId` int NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `adressId` (`adressId`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`userId`, `firstname`, `lastname`, `age`, `email`, `pseudo`, `password`, `adressId`) VALUES
(1, 'jojo', 'lerigolo', 23, 'jojo@lerigolo.com', 'jojoRigolo', 'azertyRigolo69', 0),
(2, 'Vincent', 'RIAMON', 24, 'v.riamon@ynov.com', 'redskin', '123456789', 1),
(3, 'Julie', 'larigolote', 28, 'juju.rigolote@ynov.com', 'JujuCandy', 'password', 2),
(4, 'Sean', 'Murphy', 23, 'Sean@ynov.com', 'Bontaaz', 'Bontaaz@ynov.com', 3),
(5, 'Felicien', 'Courdess', 11, 'felili@ynov.com', 'felili', 'noIdea', 4),
(6, 'jojo', 'grl', 23, 'Email@email.mail', 'jojo le rigolo !', '00000000', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
