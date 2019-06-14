-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2019 at 11:28 AM
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
-- Table structure for table `kategorija_artikel`
--

CREATE TABLE `kategorija_artikel` (
  `idKategorijaArtikel` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorija_artikel`
--

INSERT INTO `kategorija_artikel` (`idKategorijaArtikel`, `naziv`) VALUES
(1, 'Ženska obla?ila'),
(2, 'Moška obla?ila'),
(3, 'Beljakovinski napitki'),
(4, 'Energijske ?okoladice'),
(5, 'Igre na prostem'),
(6, 'Pohodništvo'),
(7, 'Pripomo?ki za boks'),
(8, 'Gimnastika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategorija_artikel`
--
ALTER TABLE `kategorija_artikel`
  ADD PRIMARY KEY (`idKategorijaArtikel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorija_artikel`
--
ALTER TABLE `kategorija_artikel`
  MODIFY `idKategorijaArtikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
