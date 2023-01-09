-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 09 jan. 2023 à 02:50
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `society`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptif` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepostal` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surface` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `typeachat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230108103227', '2023-01-08 11:32:41', 409),
('DoctrineMigrations\\Version20230108132058', '2023-01-08 14:21:04', 30),
('DoctrineMigrations\\Version20230108235114', '2023-01-09 00:51:24', 686);

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bien_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepostal` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `codepostal`, `email`, `roles`, `password`) VALUES
(1, 'Dem', 'Orient', '87000', 'demo@gmail.com', '[]', '$2y$13$/nR67ItSUypO16Af9/UX4eKoDU6kiEE4pODk4kchRHJcuodry7P7y'),
(2, 'Test', 'Toto', '35701', 'test@gmail.com', '[]', '$2y$13$87SFAxQhh1Cjux1aEZ3WKuXWa/CpQV1XVC7UhOPTw.HUUWqRZSdC6'),
(4, 'Jordan', 'Nathan', '75001', 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$S2al4jBUHmy7vBoh1tofxuj4FPJbujSPDebWdHTOgE4x1kBVO9v9m'),
(5, 'Titi', 'Stage', '87200', 'titi@gmail.com', '[\"ROLE_PORTEUR_PROJET\"]', '$2y$13$R5xp5PKH71/.B1xVy23xaej2z49SCaJOJbFLK7QMKLcsUjRZMhtGC'),
(13, 'Gambier', 'Benoit', '75001', 'admin@demofr', '[\"ROLE_ADMIN\"]', '$2y$13$x3fQ3sY6pDaTaE84Zze/VOp9z9yaf8fFPEvCQzxvZBiqFv4iJYgea'),
(14, 'Diaz', 'Caroline', '74425', 'kaubry@robin.fr', '[\"ROLE_USER\"]', '$2y$13$VkUJth8jQ8FLM29x8L2v3OwMnuv1fiYDiZa3TL1o3knDYgiq2vHEq'),
(15, 'Camus', 'Luc', '29357', 'frederic54@free.fr', '[\"ROLE_USER\"]', '$2y$13$K9b989C8W5upo1rRhWlbpenG62clMe70G0F3U5hXAuRl5348VPEny'),
(16, 'Denis', 'Susan', '90455', 'dossantos.marthe@aubert.fr', '[\"ROLE_USER\"]', '$2y$13$pg1mAKd86KGp.YnXDWnKEuevIEHBB8ogmsv28V3wCrtf.ejErLysq'),
(17, 'Bodin', 'Benoît', '06265', 'gros.richard@pasquier.org', '[\"ROLE_USER\"]', '$2y$13$z4UQG9RWXA6BkfHhvYEtDu/Hh/QOt85NY27flisj.cGO3QNgZ/wCK'),
(18, 'Fontaine', 'Thierry', '00880', 'bernier.olivie@duval.com', '[\"ROLE_PORTEUR_PROJET \"]', '$2y$13$09tAOAeEL6AgK6SQd07H3OJPCHIHtQT3SMcljQT3hnbus.W.LxRva');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_45EDC386BCF5E72D` (`categorie_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8933C432A76ED395` (`user_id`),
  ADD KEY `IDX_8933C432BD95B80F` (`bien_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `FK_45EDC386BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `FK_8933C432A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_8933C432BD95B80F` FOREIGN KEY (`bien_id`) REFERENCES `bien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
