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
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `idArtikel` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `cena` float(10,2) NOT NULL,
  `opis` text NOT NULL,
  `slika` varchar(255) NOT NULL,
  `kolicina` int(255) DEFAULT NULL,
  `tk_kategorija` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`idArtikel`, `naziv`, `cena`, `opis`, `slika`, `kolicina`, `tk_kategorija`) VALUES
(1, 'PROZIS - ENERGY CAKE 100 G', 2.00, 'Energijske beljakovinske ploš?icei', 'cokolada1.jpg', 20, 4),
(2, 'JED NORTH - DEXTER PERFORMANCE KRATKE HLA?E', 32.50, 'Material: 100% Performance poliester', 'hlace1.jpg', 50, 2),
(3, 'JED NORTH - PATRIOT KRATKE HLA?E', 33.99, 'Material: 95% bombaž, 5% elastan', 'hlace2.jpg', 5, 2),
(4, 'OSTROVIT - MICELLAR CASEIN 700G', 14.99, 'Micelarni kazein', 'kazein.jpg', 25, 3),
(5, 'MAGNEZIJ ZA ROKE', 4.20, 'Gimnastika', 'magnezij.jpg', 30, 8),
(6, 'TUNTURI MINI MEDICINKA 1.5 KG', 7.50, 'Tunturi', 'medicinka.jpg', 10, 8),
(7, 'VENUM MMA ROKAVICE', 44.99, 'Boksarske rokavice', 'mmarokavice.jpg', 45, 7),
(9, 'OSTROVIT - WHEY PROTEIN ISOLATE 700 G', 14.99, 'Proteini', 'napitek.jpg', 19, 3),
(10, 'OSTROVIT – WHEY PROTEIN 700 G', 13.99, 'Proteini', 'napitek2.jpg', 12, 3),
(11, 'JED NORTH - LUXE KOMPLET NAVY', 24.99, 'Pajkice', 'pajkice1.jpg', 45, 1),
(12, 'JED NORTH - WILLOW PAJKICE- ?RNA', 30.88, 'Pajkice', 'pajkice2.jpg', 1, 1),
(13, 'POHODNE PALICE ARDEN', 18.62, 'Pohodne palice', 'palce1.jpg', 4, 6),
(14, 'POHODNE PALICE FOSTER', 16.91, 'Pohodne palice', 'palce2.jpg', 6, 6),
(15, 'BOOSTER AIR - ROKAVICE ZA VRE?O', 15.67, 'Boksarske rokavice', 'rokavicezavreco.jpg', 68, 7),
(17, 'JED NORTH - MICROFIBER DRI-FIT STRINGER', 22.00, 'Moski top', 'tanktop1.jpg', 66, 2),
(18, 'JED NORTH - MICROFIBER DRI-FIT STRINGER', 22.00, 'Moski top', 'tanktop2.jpg', 11, 2),
(19, 'JED NORTH - SUPPLE SEAMLESS TOP- ZELENA', 13.99, 'Zenski top', 'top1.jpg', 33, 1),
(20, 'JED NORTH - SUPPLE SEAMLESS TOP- BORDO', 13.99, 'Zenski top', 'top3.jpg', 52, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`idArtikel`),
  ADD KEY `fk_kategorija_artikel` (`tk_kategorija`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `idArtikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_kategorija_artikel` FOREIGN KEY (`tk_kategorija`) REFERENCES `kategorija_artikel` (`idKategorijaArtikel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
