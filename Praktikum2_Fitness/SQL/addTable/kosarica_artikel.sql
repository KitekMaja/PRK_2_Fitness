-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2019 at 10:38 AM
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
-- Table structure for table `kosarica_artikel`
--

CREATE TABLE `kosarica_artikel` (
  `tk_kosarica` int(11) NOT NULL,
  `tk_artikel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kosarica_artikel`
--
ALTER TABLE `kosarica_artikel`
  ADD KEY `fk_kosarica` (`tk_kosarica`),
  ADD KEY `fk_artikel` (`tk_artikel`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kosarica_artikel`
--
ALTER TABLE `kosarica_artikel`
  ADD CONSTRAINT `fk_artikel` FOREIGN KEY (`tk_artikel`) REFERENCES `artikel` (`idArtikel`),
  ADD CONSTRAINT `fk_kosarica` FOREIGN KEY (`tk_kosarica`) REFERENCES `kosarica` (`idKosarica`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
