-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2019 at 12:00 PM
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
-- Table structure for table `seznam`
--

CREATE TABLE `seznam` (
  `id` int(11) NOT NULL,
  `Uporabnik_id` int(11) NOT NULL,
  `Clanek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seznam`
--
ALTER TABLE `seznam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Uporabnik` (`Uporabnik_id`),
  ADD KEY `fk_Clanek` (`Clanek_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seznam`
--
ALTER TABLE `seznam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seznam`
--
ALTER TABLE `seznam`
  ADD CONSTRAINT `fk_Clanek` FOREIGN KEY (`Clanek_id`) REFERENCES `clanek` (`idClanek`),
  ADD CONSTRAINT `fk_Uporabnik` FOREIGN KEY (`Uporabnik_id`) REFERENCES `uporabnik` (`idUporabnik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
