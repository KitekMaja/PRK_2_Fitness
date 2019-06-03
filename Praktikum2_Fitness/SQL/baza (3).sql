-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 02:14 AM
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
-- Database: `baza`
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
(1, 'Venum Challenger MMA rokavice', 'RokaviceVenum_1', 'Ročno izdelane na Tajskem', 44.00, 4),
(2, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_1', 'Zelena barva', 44.00, 2),
(3, 'Jed North - Koko Lounge Pajkice', 'KokoPajkice_2', 'Siva barva', 44.00, 2),
(4, 'Venum Challanger 2.0 rokavice', 'RokaviceVenum_2', 'Ročno izdelane na Tajskem', 47.99, 4),
(5, 'RSN - Whey Protein Isolate 1816g', 'RSNProteini_1', 'RSN Whey Protein Isolate je izdelek najvišje kakovosti narejen izključno iz čistega sirotkinega izolata.', 49.99, 1);

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
(2, 'Oblačila'),
(3, 'Fitness oprema'),
(4, 'Borilne veščine'),
(5, 'Gimnastika/Aerobika'),
(6, 'Indoor/Outdoor športi');

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
  `cilj` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

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
  `tip_uporabnika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uporabnik`
--

INSERT INTO `uporabnik` (`idUporabnik`, `ime`, `priimek`, `email`, `geslo`, `spol`, `tip_uporabnika`) VALUES
(1, 'Maja', 'Kitek', 'maja.kitek@gmail.com', '926b021c23fbd4d79af4144cd5d9113d', 'Z', 'navadni');

-- --------------------------------------------------------

--
-- Table structure for table `vaje`
--

CREATE TABLE `vaje` (
  `idVaje` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` longtext COLLATE utf8_slovenian_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `tk_meritve_uporabnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

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
-- Indexes for table `kategorije_artiklov`
--
ALTER TABLE `kategorije_artiklov`
  ADD PRIMARY KEY (`idKategorijeArtiklov`);

--
-- Indexes for table `meritve`
--
ALTER TABLE `meritve`
  ADD PRIMARY KEY (`idMeritve`),
  ADD KEY `fk_meritve_uporabnik` (`tk_meritve_uporabnik`);

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
  ADD KEY `fk_vaje_uporabnik` (`tk_meritve_uporabnik`);

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
-- AUTO_INCREMENT for table `kategorije_artiklov`
--
ALTER TABLE `kategorije_artiklov`
  MODIFY `idKategorijeArtiklov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meritve`
--
ALTER TABLE `meritve`
  MODIFY `idMeritve` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `idSlike` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uporabnik`
--
ALTER TABLE `uporabnik`
  MODIFY `idUporabnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaje`
--
ALTER TABLE `vaje`
  MODIFY `idVaje` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `meritve`
--
ALTER TABLE `meritve`
  ADD CONSTRAINT `fk_meritve_uporabnik` FOREIGN KEY (`tk_meritve_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);

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
  ADD CONSTRAINT `fk_vaje_uporabnik` FOREIGN KEY (`tk_meritve_uporabnik`) REFERENCES `uporabnik` (`idUporabnik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
