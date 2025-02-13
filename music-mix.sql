-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 12 fév. 2025 à 10:53
-- Version du serveur : 8.4.3
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `music-mix`
--

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'Raï'),
(2, 'Chaâbi'),
(3, 'Tarteb'),
(4, 'Folk'),
(5, 'Pop');

-- --------------------------------------------------------

--
-- Structure de la table `music`
--

CREATE TABLE `music` (
  `music_id` int NOT NULL,
  `music_title` varchar(50) DEFAULT NULL,
  `music_artist` varchar(50) DEFAULT NULL,
  `music_published` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `music`
--

INSERT INTO `music` (`music_id`, `music_title`, `music_artist`, `music_published`) VALUES
(1, 'Didi', 'Cheb Khaled', '1992'),
(2, 'Abdel Kader', 'Cheb Mami', '1993'),
(3, 'Sidi Mansour', 'Sabah Fakhri', '1998'),
(4, 'Lella', 'Souad Massi', '2003'),
(5, 'Bent Bladi', 'Warda Al-Jazairia', '1970'),
(6, 'El Harba Win', 'Cheb Hasni', '1995'),
(7, 'C\'est la vie', 'Khaled', '2012'),
(8, 'Ya Rayah', 'Rachid Taha', '1997'),
(9, 'Ana Mazel', 'Chaba Fadela', '1998'),
(10, 'Mektoubi', 'Khaled', '2005'),
(11, 'Yemma', 'Ibtissem', '2018'),
(12, 'Zina', 'Babylone', '2013'),
(13, 'Mafia', 'Lbenj', '2016'),
(14, 'Mi Amor', 'Soolking', '2018'),
(15, 'Gharbi', 'Cheb Mami', '2000'),
(16, 'J\'me sens bien', 'Souad Massi', '2014'),
(17, 'Nedjma', 'Tawassoul', '2019'),
(18, 'Khaliha', 'Amine K', '2015'),
(19, 'Machi Hadi', 'Cheb Bilal', '2011'),
(20, 'Dounia', 'L\'Algérino', '2019');

-- --------------------------------------------------------

--
-- Structure de la table `music_genres`
--

CREATE TABLE `music_genres` (
  `music_id` int NOT NULL,
  `genre_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `music_genres`
--

INSERT INTO `music_genres` (`music_id`, `genre_id`) VALUES
(1, 1),
(2, 1),
(6, 1),
(7, 1),
(9, 1),
(3, 2),
(4, 2),
(5, 2),
(8, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(7, 5),
(11, 5),
(12, 5),
(16, 5);

-- --------------------------------------------------------

--
-- Structure de la table `playlists`
--

CREATE TABLE `playlists` (
  `playlist_id` int NOT NULL,
  `playlist_name` varchar(50) DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `playlists`
--

INSERT INTO `playlists` (`playlist_id`, `playlist_name`, `user_id`) VALUES
(1, 'Raï Vibes', 1),
(2, 'Chaâbi Mix', 1),
(3, 'Pop Algérienne', 2),
(4, 'Old School', 3);

-- --------------------------------------------------------

--
-- Structure de la table `playlists_music`
--

CREATE TABLE `playlists_music` (
  `music_id` int NOT NULL,
  `playlist_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `playlists_music`
--

INSERT INTO `playlists_music` (`music_id`, `playlist_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(9, 1),
(10, 1),
(14, 1),
(18, 1),
(1, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(13, 2),
(17, 2),
(1, 3),
(4, 3),
(6, 3),
(7, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(19, 3),
(2, 4),
(3, 4),
(7, 4),
(8, 4),
(12, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `user_mail`) VALUES
(1, 'jon.snow@winterfell.com'),
(2, 'daenerys.targaryen@dragonstone.com'),
(3, 'arya.stark@winterfell.com'),
(4, 'tyrion.lannister@casterlyrock.com'),
(5, 'sansa.stark@winterfell.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Index pour la table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`music_id`);

--
-- Index pour la table `music_genres`
--
ALTER TABLE `music_genres`
  ADD PRIMARY KEY (`music_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Index pour la table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`playlist_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `playlists_music`
--
ALTER TABLE `playlists_music`
  ADD PRIMARY KEY (`music_id`,`playlist_id`),
  ADD KEY `playlist_id` (`playlist_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `music`
--
ALTER TABLE `music`
  MODIFY `music_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `playlist_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `music_genres`
--
ALTER TABLE `music_genres`
  ADD CONSTRAINT `music_genres_ibfk_1` FOREIGN KEY (`music_id`) REFERENCES `music` (`music_id`),
  ADD CONSTRAINT `music_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Contraintes pour la table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `playlists_music`
--
ALTER TABLE `playlists_music`
  ADD CONSTRAINT `playlists_music_ibfk_1` FOREIGN KEY (`music_id`) REFERENCES `music` (`music_id`),
  ADD CONSTRAINT `playlists_music_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
