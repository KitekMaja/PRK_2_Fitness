-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 04:05 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testzzzzz`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `idArtikel` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `koda` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `cena` double(10,2) NOT NULL,
  `tk_kategorija` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`idArtikel`, `naziv`, `koda`, `opis`, `cena`, `tk_kategorija`) VALUES
(1, 'Venum Challenger MMA rokavice', 'RokaviceVenum_1', 'Roèno izdelane na Tajskem', 44.00, 4),
(2, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_1', 'Zelena barva', 44.00, 2),
(3, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_2', 'Siva barva', 44.00, 2),
(4, 'Venum Challanger 2.0 rokavice', 'RokaviceVenum_2', 'Roèno izdelane na Tajskem', 47.99, 4),
(5, 'RSN - Whey Protein Isolate 1816g', 'RSNProteini_1', 'RSN Whey Protein Isolate je izdelek najvišje kakovosti narejen izkljuèno iz èistega sirotkinega izolata.', 49.99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clanek`
--

CREATE TABLE `clanek` (
  `idClanek` int(11) NOT NULL,
  `datumVnosa` date NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `vsebina` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `tk_clanek_uporabnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategorijavaje`
--

CREATE TABLE `kategorijavaje` (
  `idKategorijaVaje` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorijavaje`
--

INSERT INTO `kategorijavaje` (`idKategorijaVaje`, `naziv`) VALUES
(1, 'Cardio'),
(2, 'Rame'),
(3, 'Roke'),
(4, 'Prsa'),
(5, 'Trebuh'),
(6, 'Noge');

-- --------------------------------------------------------

--
-- Table structure for table `kategorije_artiklov`
--

CREATE TABLE `kategorije_artiklov` (
  `idKategorijeArtiklov` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `kategorije_artiklov`
--

INSERT INTO `kategorije_artiklov` (`idKategorijeArtiklov`, `naziv`) VALUES
(1, 'Prehrana'),
(2, 'Oblaèila'),
(3, 'Fitness oprema'),
(4, 'Borilne vešèine'),
(5, 'Gimnastika/Aerobika'),
(6, 'Indoor/Outdoor športi');

-- --------------------------------------------------------

--
-- Table structure for table `meritev`
--

CREATE TABLE `meritev` (
  `idMeritev` int(11) NOT NULL,
  `teza` double NOT NULL,
  `datum` date NOT NULL,
  `tk_meritev_uporabnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meritev`
--

INSERT INTO `meritev` (`idMeritev`, `teza`, `datum`, `tk_meritev_uporabnik`) VALUES
(1, 85, '2019-06-10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `meritve`
--

CREATE TABLE `meritve` (
  `idMeritve` int(11) NOT NULL,
  `teza` double NOT NULL,
  `visina` double NOT NULL,
  `datumVnosa` date NOT NULL,
  `tk_meritve_uporabnik` int(11) NOT NULL,
  `cilj` varchar(20) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `meritve`
--

INSERT INTO `meritve` (`idMeritve`, `teza`, `visina`, `datumVnosa`, `tk_meritve_uporabnik`, `cilj`) VALUES
(1, 85, 172, '2019-06-10', 3, 'hujsanje');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `idPlan` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `opisPlana` longtext NOT NULL,
  `tipPlana` varchar(50) NOT NULL,
  `ciljPlana` varchar(50) NOT NULL,
  `datumNastanka` varchar(45) NOT NULL,
  `tk_plan_uporabnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`idPlan`, `naziv`, `opisPlana`, `tipPlana`, `ciljPlana`, `datumNastanka`, `tk_plan_uporabnik`) VALUES
(28, 'qq', 'qq', 'public', 'hujsanje', '11.06.2019', 2),
(29, 'www', 'www', 'public', 'hujsanje', '11.06.2019', 2),
(30, 'javen1', 'd', 'public', 'kondicija', '11.06.2019', 2),
(31, 'public1', 'q', 'public', 'pridobivanje', '11.06.2019', 2),
(32, 'privatw1', 'q', 'privat', 'hujsanje', '11.06.2019', 2);

-- --------------------------------------------------------

--
-- Table structure for table `planvaja`
--

CREATE TABLE `planvaja` (
  `idPlanVaja` int(11) NOT NULL,
  `tk_planvaja_plan` int(11) NOT NULL,
  `tk_planvaja_vaja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planvaja`
--

INSERT INTO `planvaja` (`idPlanVaja`, `tk_planvaja_plan`, `tk_planvaja_vaja`) VALUES
(128, 29, 1),
(129, 29, 7),
(130, 29, 10),
(131, 28, 2),
(132, 28, 8),
(133, 30, 1),
(134, 30, 1),
(135, 30, 1),
(136, 30, 2),
(137, 30, 12),
(138, 30, 12),
(139, 31, 1),
(140, 32, 7),
(141, 32, 10);

-- --------------------------------------------------------

--
-- Table structure for table `seznam`
--

CREATE TABLE `seznam` (
  `id` int(11) NOT NULL,
  `Uporabnik_id` int(11) NOT NULL,
  `Clanek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE `slike` (
  `idSlike` int(11) NOT NULL,
  `imeSlike` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `tk_slike_clanek` int(11) DEFAULT NULL,
  `tk_slike_uporabnik` int(11) DEFAULT NULL,
  `tk_slike_vaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uporabnik`
--

CREATE TABLE `uporabnik` (
  `idUporabnik` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `priimek` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `geslo` varchar(255) NOT NULL,
  `spol` varchar(1) NOT NULL,
  `tip_uporabnika` varchar(255) NOT NULL,
  `google_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uporabnik`
--

INSERT INTO `uporabnik` (`idUporabnik`, `ime`, `priimek`, `email`, `geslo`, `spol`, `tip_uporabnika`, `google_id`) VALUES
(1, 'Maja', 'Kitek', 'maja.kitek@gmail.com', '926b021c23fbd4d79af4144cd5d9113d', 'Z', 'navadni', ''),
(2, 'toni', 'zunec', 'toni.zunec14@gmail.com', 'dce6345ea5b90d6ea53f0ef5c4b4c72c', 'm', 'u', ''),
(3, 'Toni', 'Žunec', 'toni.zunec@student.um.si', 'dce6345ea5b90d6ea53f0ef5c4b4c72c', 'm', 'navadni', '');

-- --------------------------------------------------------

--
-- Table structure for table `vaje`
--

CREATE TABLE `vaje` (
  `idVaje` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `video` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `cas` int(3) NOT NULL,
  `sets` int(3) NOT NULL,
  `rep` int(3) NOT NULL,
  `tk_vaje_uporabnik` int(11) NOT NULL,
  `tk_vaje_kategorijavaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `vaje`
--

INSERT INTO `vaje` (`idVaje`, `naziv`, `opis`, `video`, `cas`, `sets`, `rep`, `tk_vaje_uporabnik`, `tk_vaje_kategorijavaje`) VALUES
(1, 'Vaja1', 'Opis1', 'video1', 11, 1, 99, 1, 1),
(2, 'Vaja2', 'Opis2', 'video2', 22, 2, 88, 1, 2),
(3, 'Vaja3', 'Opis3', 'video3', 33, 3, 77, 1, 3),
(4, 'Vaja4', 'Opis4', 'video4', 44, 4, 66, 1, 4),
(5, 'Vaja5', 'Opis5', 'video5', 55, 5, 55, 1, 5),
(6, 'Vaja6', 'Opis6', 'video6', 66, 6, 44, 1, 6),
(7, 'Vaja7', 'Opis7', 'video7', 77, 7, 33, 1, 1),
(8, 'Vaja8', 'Opis8', 'video8', 88, 8, 22, 1, 2),
(9, 'Vaja9', 'Opis9', 'video9', 99, 9, 11, 1, 3),
(10, 'Vaja10', 'Opis10', 'video10', 100, 10, 222, 1, 1),
(11, 'Vaja11', 'Opis11', 'video11', 110, 11, 333, 1, 5),
(12, 'Vaja12', 'Opis12', 'video12', 120, 12, 444, 1, 6),
(13, 'Dogodek', 'èiglkc', 'https://www.youtube.com/embed/FjPvXMwTwQo', 15, 2, 12, 1, 5),
(14, 'weqweqeweqe', 'aweffefwefwe', 'https://www.youtube.com/embed/8kVI621fZug', 11, 22, 33, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`idArtikel`),
  ADD UNIQUE KEY `koda_artikla` (`koda`),
  ADD KEY `fk_artikel_kategorija` (`tk_kategorija`);

--
-- Indexes for table `clanek`
--
ALTER TABLE `clanek`
  ADD PRIMARY KEY (`idClanek`),
  ADD KEY `fk_clanek_uporabnik` (`tk_clanek_uporabnik`);

--
-- Indexes for table `kategorijavaje`
--
ALTER TABLE `kategorijavaje`
  ADD PRIMARY KEY (`idKategorijaVaje`);

--
-- Indexes for table `kategorije_artiklov`
--
ALTER TABLE `kategorije_artiklov`
  ADD PRIMARY KEY (`idKategorijeArtiklov`);

--
-- Indexes for table `meritev`
--
ALTER TABLE `meritev`
  ADD PRIMARY KEY (`idMeritev`),
  ADD KEY `fk_meritev_uporabnik` (`tk_meritev_uporabnik`) USING BTREE;

--
-- Indexes for table `meritve`
--
ALTER TABLE `meritve`
  ADD PRIMARY KEY (`idMeritve`),
  ADD KEY `fk_meritve_uporabnik` (`tk_meritve_uporabnik`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`idPlan`),
  ADD KEY `tk_plan_uporabnik` (`tk_plan_uporabnik`);

--
-- Indexes for table `planvaja`
--
ALTER TABLE `planvaja`
  ADD PRIMARY KEY (`idPlanVaja`),
  ADD KEY `tk_planvaja_plan` (`tk_planvaja_plan`),
  ADD KEY `tk_planvaja_vaja` (`tk_planvaja_vaja`);

--
-- Indexes for table `seznam`
--
ALTER TABLE `seznam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Uporabnik` (`Uporabnik_id`),
  ADD KEY `fk_Clanek` (`Clanek_id`);

--
-- Indexes for table `slike`
--
ALTER TABLE `slike`
  ADD PRIMARY KEY (`idSlike`),
  ADD KEY `fk_slike_clanek` (`tk_slike_clanek`),
  ADD KEY `fk_slike_uporabnik` (`tk_slike_uporabnik`),
  ADD KEY `fk_slike_vaje` (`tk_slike_vaje`);

--
-- Indexes for table `uporabnik`
--
ALTER TABLE `uporabnik`
  ADD PRIMARY KEY (`idUporabnik`);

--
-- Indexes for table `vaje`
--
ALTER TABLE `vaje`
  ADD PRIMARY KEY (`idVaje`),
  ADD KEY `fk_vaje_uporabnik` (`tk_vaje_uporabnik`),
  ADD KEY `tk_vaje_kategorijavaje` (`tk_vaje_kategorijavaje`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `idArtikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clanek`
--
ALTER TABLE `clanek`
  MODIFY `idClanek` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategorijavaje`
--
ALTER TABLE `kategorijavaje`
  MODIFY `idKategorijaVaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategorije_artiklov`
--
ALTER TABLE `kategorije_artiklov`
  MODIFY `idKategorijeArtiklov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meritev`
--
ALTER TABLE `meritev`
  MODIFY `idMeritev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meritve`
--
ALTER TABLE `meritve`
  MODIFY `idMeritve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `idPlan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `planvaja`
--
ALTER TABLE `planvaja`
  MODIFY `idPlanVaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `seznam`
--
ALTER TABLE `seznam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `idSlike` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uporabnik`
--
ALTER TABLE `uporabnik`
  MODIFY `idUporabnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vaje`
--
ALTER TABLE `vaje`
  MODIFY `idVaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategorija` FOREIGN KEY (`tk_kategorija`) REFERENCES `kategorije_artiklov` (`idKategorijeArtiklov`);

--
-- Constraints for table `clanek`
--
ALTER TABLE `clanek`
  ADD CONSTRAINT `fk_clanek_uporabnik` FOREIGN KEY (`tk_clanek_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `meritev`
--
ALTER TABLE `meritev`
  ADD CONSTRAINT `fk_meritev_uporabnik` FOREIGN KEY (`tk_meritev_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `meritve`
--
ALTER TABLE `meritve`
  ADD CONSTRAINT `fk_meritve_uporabnik` FOREIGN KEY (`tk_meritve_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`tk_plan_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `planvaja`
--
ALTER TABLE `planvaja`
  ADD CONSTRAINT `planvaja_ibfk_1` FOREIGN KEY (`tk_planvaja_plan`) REFERENCES `plan` (`idPlan`),
  ADD CONSTRAINT `planvaja_ibfk_2` FOREIGN KEY (`tk_planvaja_vaja`) REFERENCES `vaje` (`idVaje`);

--
-- Constraints for table `seznam`
--
ALTER TABLE `seznam`
  ADD CONSTRAINT `fk_Clanek` FOREIGN KEY (`Clanek_id`) REFERENCES `clanek` (`idClanek`),
  ADD CONSTRAINT `fk_Uporabnik` FOREIGN KEY (`Uporabnik_id`) REFERENCES `uporabnik` (`idUporabnik`);

--
-- Constraints for table `slike`
--
ALTER TABLE `slike`
  ADD CONSTRAINT `fk_slike_clanek` FOREIGN KEY (`tk_slike_clanek`) REFERENCES `clanek` (`idClanek`),
  ADD CONSTRAINT `fk_slike_uporabnik` FOREIGN KEY (`tk_slike_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`),
  ADD CONSTRAINT `fk_slike_vaje` FOREIGN KEY (`tk_slike_vaje`) REFERENCES `vaje` (`idVaje`);

--
-- Constraints for table `vaje`
--
ALTER TABLE `vaje`
  ADD CONSTRAINT `fk_vaje_uporabnik` FOREIGN KEY (`tk_vaje_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`),
  ADD CONSTRAINT `vaje_ibfk_1` FOREIGN KEY (`tk_vaje_kategorijavaje`) REFERENCES `kategorijavaje` (`idKategorijaVaje`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
