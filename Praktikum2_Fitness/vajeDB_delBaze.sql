-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1:3307
-- Čas nastanka: 02. jun 2019 ob 19.30
-- Različica strežnika: 5.7.23
-- Različica PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `baza`
--
CREATE DATABASE IF NOT EXISTS `baza2` DEFAULT CHARACTER SET utf8 COLLATE utf8_slovenian_ci;
USE `baza2`;

-- --------------------------------------------------------

--
-- Struktura tabele `kategorijavaje`
--

DROP TABLE IF EXISTS `kategorijavaje`;
CREATE TABLE IF NOT EXISTS `kategorijavaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `kategorijavaje`
--

INSERT INTO `kategorijavaje` (`id`, `naziv`) VALUES
(1, 'Cardio'),
(2, 'Rame'),
(3, 'Roke'),
(4, 'Prsa'),
(5, 'Trebuh'),
(6, 'Noge');

-- --------------------------------------------------------

--
-- Struktura tabele `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `datumNastanka` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `Uporabnik_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Plan_Uporabnik1_idx` (`Uporabnik_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `plan`
--

INSERT INTO `plan` (`id`, `naziv`, `datumNastanka`, `Uporabnik_id`) VALUES
(1, 'w2ww', '02.06.2019', 2);

-- --------------------------------------------------------

--
-- Struktura tabele `planvaja`
--

DROP TABLE IF EXISTS `planvaja`;
CREATE TABLE IF NOT EXISTS `planvaja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Plan_id` int(11) NOT NULL,
  `Vaja_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_PlanVaja_Plan1_idx` (`Plan_id`),
  KEY `fk_PlanVaja_Vaja1_idx` (`Vaja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `uporabnik`
--
-- 
DROP TABLE IF EXISTS `uporabnik`;
CREATE TABLE IF NOT EXISTS `uporabnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `uporabnik`
--

INSERT INTO `uporabnik` (`id`, `ime`) VALUES
(1, 'Uporabnik1'),
(2, 'Uporabnik2'),
(3, 'Uporabnik3'),
(4, 'Uporabnik4'),
(5, 'Uporabnik5'),
(6, 'Uporabnik6'),
(7, 'Uporabnik7'),
(8, 'Uporabnik8');

-- --------------------------------------------------------

--
-- Struktura tabele `vaja`
--

DROP TABLE IF EXISTS `vaja`;
CREATE TABLE IF NOT EXISTS `vaja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(250) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `video` longtext COLLATE utf8_slovenian_ci,
  `cas` int(3) DEFAULT NULL,
  `set` int(3) DEFAULT NULL,
  `rep` int(3) DEFAULT NULL,
  `KategorijaVaje_id` int(11) NOT NULL,
  `Uporabnik_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Vaja_KategorijaVaje_idx` (`KategorijaVaje_id`),
  KEY `fk_Vaja_Uporabnik1_idx` (`Uporabnik_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `vaja`
--

INSERT INTO `vaja` (`id`, `naziv`, `opis`, `video`, `cas`, `set`, `rep`, `KategorijaVaje_id`, `Uporabnik_id`) VALUES
(4, 'wwssfsdfg', 'eefgh', 'https://www.youtube.com/watch?v=b0Ejuew2riA&t=1098s', 22, 33, 444, 1, 2),
(5, 'sasdasd', 'wewewe', 'https://www.youtube.com/watch?v=b0Ejuew2riA&t=1098s', 22, 33, 55, 6, 2),
(6, 'roke', 'rroke', 'rokewww', 23, 233, 44, 3, 2),
(7, 'roke', 'rroke', 'rokewww', 23, 233, 44, 4, 2),
(8, 'roke', 'rroke', 'rokewww', 23, 233, 44, 4, 2),
(9, 'rame', 'rame', 'sdfpo', 12, 23, 34, 2, 2),
(10, 'ramewwwww', 'rame', 'https://www.youtube.com/embed/xtjrYPPrNZE', 12, 23, 34, 2, 2),
(11, 'ramewwwww', 'rame', 'https://www.youtube.com/embed/xtjrYPPrNZE', 12, 23, 34, 2, 2),
(12, 'Vaja1', 'Opis1', 'video1', 11, 1, 99, 1, 1),
(13, 'Vaja2', 'Opis2', 'video2', 22, 2, 88, 2, 1),
(14, 'Vaja3', 'Opis3', 'video3', 33, 3, 77, 3, 1),
(15, 'Vaja4', 'Opis4', 'video4', 44, 4, 66, 4, 1),
(16, 'Vaja5', 'Opis5', 'video5', 55, 5, 55, 5, 1),
(17, 'Vaja6', 'Opis6', 'video6', 66, 6, 44, 6, 1),
(18, 'Vaja7', 'Opis7', 'video7', 77, 7, 33, 1, 1),
(19, 'Vaja8', 'Opis8', 'video8', 88, 8, 22, 2, 2),
(20, 'Vaja9', 'Opis9', 'video9', 99, 9, 11, 3, 2),
(21, 'Vaja10', 'Opis10', 'video10', 100, 10, 222, 4, 2),
(22, 'Vaja11', 'Opis11', 'video11', 110, 11, 333, 5, 2),
(23, 'Vaja12', 'Opis12', 'video12', 120, 12, 444, 6, 2);

--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `fk_Plan_Uporabnik1` FOREIGN KEY (`Uporabnik_id`) REFERENCES `uporabnik` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `planvaja`
--
ALTER TABLE `planvaja`
  ADD CONSTRAINT `fk_PlanVaja_Plan1` FOREIGN KEY (`Plan_id`) REFERENCES `plan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanVaja_Vaja1` FOREIGN KEY (`Vaja_id`) REFERENCES `vaja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omejitve za tabelo `vaja`
--
ALTER TABLE `vaja`
  ADD CONSTRAINT `fk_Vaja_KategorijaVaje` FOREIGN KEY (`KategorijaVaje_id`) REFERENCES `kategorijavaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vaja_Uporabnik1` FOREIGN KEY (`Uporabnik_id`) REFERENCES `uporabnik` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
