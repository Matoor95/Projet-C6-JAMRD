-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 27 Avril 2019 à 16:36
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestionecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `Nom_cl` varchar(15) NOT NULL,
  `Nom_Ser` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `classes`
--

INSERT INTO `classes` (`Nom_cl`, `Nom_Ser`) VALUES
('S10', 'T1');

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

CREATE TABLE `eleves` (
  `id` int(10) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(15) NOT NULL,
  `adresse` varchar(15) NOT NULL,
  `Nom_cl` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `eleves`
--

INSERT INTO `eleves` (`id`, `Nom`, `Prenom`, `adresse`, `Nom_cl`) VALUES
(4, 'Cheikh', 'Thioub', 'Dakar', 'S10');

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `Nom_Ser` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `serie`
--

INSERT INTO `serie` (`Nom_Ser`) VALUES
('G'),
('L1'),
('L2'),
('S1'),
('S2'),
('S3'),
('T1'),
('T2');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`Nom_cl`),
  ADD KEY `fk_Classes_Serie` (`Nom_Ser`);

--
-- Index pour la table `eleves`
--
ALTER TABLE `eleves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Eleves_Classes` (`Nom`),
  ADD KEY `fk_Eleves_Class` (`Nom_cl`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`Nom_Ser`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_Classes_Serie` FOREIGN KEY (`Nom_Ser`) REFERENCES `serie` (`Nom_Ser`);

--
-- Contraintes pour la table `eleves`
--
ALTER TABLE `eleves`
  ADD CONSTRAINT `fk_Eleves_Class` FOREIGN KEY (`Nom_cl`) REFERENCES `classes` (`Nom_cl`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
