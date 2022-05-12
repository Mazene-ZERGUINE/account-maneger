-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 12 mai 2022 à 11:08
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `java`
--

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `codeArticle` varchar(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `catégorie` varchar(255) NOT NULL,
  `prix` varchar(20) NOT NULL,
  `vendeur` varchar(255) NOT NULL,
  `quantité` int(11) NOT NULL,
  `entrepot` varchar(25) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'logo.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Entreprise`
--

CREATE TABLE `Entreprise` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `gérant` varchar(60) NOT NULL,
  `date_de_création` varchar(20) NOT NULL,
  `activité` varchar(255) NOT NULL,
  `siret` varchar(128) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `numéro_tel` varchar(20) NOT NULL,
  `adresse` varchar(128) NOT NULL,
  `ville` varchar(60) NOT NULL,
  `code_postal` varchar(12) NOT NULL,
  `pays` varchar(60) NOT NULL,
  `chiffre_daffaire` varchar(20) NOT NULL,
  `contrat` varchar(20) NOT NULL,
  `date_de_payement` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Prestation`
--

CREATE TABLE `Prestation` (
  `id` int(11) NOT NULL,
  `nom` varchar(69) NOT NULL,
  `catégorie` varchar(25) NOT NULL,
  `date_debut` varchar(12) NOT NULL,
  `date_fin` varchar(12) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'logo.png',
  `entreprise` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Prestation_clients`
--

CREATE TABLE `Prestation_clients` (
  `id` int(11) NOT NULL,
  `prestation` int(11) NOT NULL,
  `client` varchar(255) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
