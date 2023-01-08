-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 08 jan. 2023 à 23:02
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
  `surface` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `typeachat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id`, `titre`, `descriptif`, `codepostal`, `surface`, `prix`, `typeachat`, `categorie_id`) VALUES
('17.03.017', 'Activités Equestres, Apiculture, Chasse', 'Propriété Charente-Maritime', '17200', '17Ha', 330000, 'Vente', 5),
('19.07.118', 'FERME 100% HERBAGERE/ ELEVAGE LAITIER', 'Située à l\'orée d\'un bourg, à 10 minutes des services et commerces.', '34Ha', '950', 35200, 'Location', 5),
('23.16.104', 'Propriété Creuse', 'Dans un hameau à moins de 10 minutes d\'un bourg avec services et commerces, et d\'un village ayant un intérèt touristique sur les routes de St-Jacques-de-Compostelle.', '23320', '1Ha55', 860, 'Location', 4),
('30VI9700', 'Propriété Gard', 'Ensemble immobilier proche d\'un plan d\'eau aménagé', '34290', '29Ha', 2000, 'Location', 5),
('313453DR', 'Idéal société de chasse', 'Terrain boisé classé ONF', '22700', '35Ha', 120000, 'Vente', 3),
('344334UJ', 'Sapinière', 'Sapinière en cours de bail, cherche reprise', '35200', '1,8Ha', 800, 'Location', 3),
('345E7EG', 'Bois sur pied', 'Diverses essences sur place', '29510', '6Ha', 30000, 'Vente', 3),
('34AG10897', 'Tourisme rural-hébergement', 'Au nord de l\'Hérault, proche des axes routiers et à 45 minutes de Montpellier', '34070', '1Ha90', 1490000, 'Vente', 4),
('34VI6979', 'Propriété viticole et sa cave', 'Au coeur de l\'appellation Saint-Chinian', '34280', '30Ha', 1500000, 'Vente', 3),
('38TB22187', 'Vallons du Voironnais', '13 Ha de terrain', '38500', '13Ha', 2000, 'Location', 1),
('43LM220118', 'Prairies en pays glazik', 'Usage petits animaux type caprins', '29510', '1ha22', 15000, 'Vente', 2),
('44 22 AN 08', 'Bâtiments avicoles à transmettre', 'Site avicole à transmettre sur la commune de Nort-sur-Erdre, au nord de Nantes.', '44220', '2Ha', 200000, 'Vente', 4),
('47.06.098', 'PRET A USAGE sur 95 ha - PLAINE DES VOSGES ', ' A 5 min de Villeneuve-sur-Lot', '47300', '14Ha', 11000, 'Location', 1),
('48EL11345', 'Propriété Lozère', 'Ensemble bâti avec environ 1ha55', '48370', '1Ha55', 700, 'Location', 4),
('48RE11201', 'Situé à 15 minutes de Mende', 'idéal pour polyculture sur 14 ha', '30430', '10Ha', 1300, 'Location', 1),
('55VS', 'Propriété Meuse', 'FERME DE COURUPT : Secteur Sainte-Menehould / Clermont-en-Argonne / Revigny', '88340', '59Ha', 0, 'Location', 5),
('5667DB', 'Ancienne ferme équestre en ruine', 'Terrains actuellement loués', '29510', '12Ha', 156000, 'Vente', 1),
('64.02.59', 'Productions végétales', 'La parcelle se situe dans le Barn sur la commune de LAGOR.', '64150', '2Ha', 7700, 'Vente', 2),
('64.03.60', 'Propriété située dans un secteur vallonné', 'Propriété Pyrénées-Atlantiques', '23500', '6Ha', 650, 'Location', 4),
('65.23.876', 'Terrain classé T4', 'cloturé et partiellement boisé', '56500', '1,2Ha', 500, 'Location', 3),
('7629CA', 'Prairies sur les plateaux', 'Parcelle de terre labourable d\'environ 2 ha', '81090', '76Ha', 400000, 'Vente', 2),
('765DN', 'Prairies orientées nord ouest', 'Lot d\'un seul tenant', '56500', '11Ha', 113000, 'Vente', 2),
('76RZDC', 'Terrain proche cours d\'eau', 'Non accessible par la route, uniquement chemin d\'exploitation', '35200', '5,5Ha', 3000, 'Location', 2),
('81EL11100', 'Secteur du Ségala-Viaur', 'les secteurs les plus en pente sont empiérés', '12200', '54Ha', 400000, 'Vente', 3),
('88 FB ', 'Vittel Dombrot : Ouest vosgien, secteur de VITTEL', 'Terrains d\'environ 6,5 ha', '88170', '6,5Ha', 0, 'Vente', 1),
('9875RDC', 'Terrain avec abri', 'Pour propriétaire équin', '44110', '1,2Ha', 1200, 'Location', 2),
('AA 72 22 0088 R', 'Exploitation Agricole spécialisée en polyculture élevage', 'Exploitation située dans le Sud Est de La Sarthe, entre la commune d\'Ecommoy (72220) et Sarcé (72327)', '72220', '87Ha', 0, 'Vente', 5),
('MQ14170356 ', 'Propriété Calvados', 'JFD : Noue de Sienne (14)', '14380', '17Ha', 173, 'Vente', 5),
('QDSGF56', 'Bois domainial', 'Bois accessible avec sentiers', '44110', '32Ha', 12000, 'Location', 3),
('Z34.345.45', 'Légérement en Pente', 'Idéal paturage moutons', '22700', '3,4Ha', 2400, 'Location', 2);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'Terrain agricole'),
(2, 'Prairie'),
(3, 'Bois'),
(4, 'Bâtiments'),
(5, 'Exploitations');

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
('DoctrineMigrations\\Version20230108132058', '2023-01-08 14:21:04', 30);

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
(4, 'JORGAN', 'Nathan', '75001', 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$S2al4jBUHmy7vBoh1tofxuj4FPJbujSPDebWdHTOgE4x1kBVO9v9m');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
