-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2026 at 03:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beautysecrets`
--

-- --------------------------------------------------------

--
-- Table structure for table `bandingan`
--

CREATE TABLE `bandingan` (
  `idbandingan` int(3) NOT NULL,
  `idpembeli` varchar(4) NOT NULL,
  `idproduk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bandingan`
--

INSERT INTO `bandingan` (`idbandingan`, `idpembeli`, `idproduk`) VALUES
(29, 'Z007', 'S102'),
(30, 'Z007', 'S107'),
(31, '1234', 'S101');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `idpembeli` varchar(4) NOT NULL,
  `namapembeli` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`idpembeli`, `namapembeli`, `password`) VALUES
('0001', 'hani', '1234'),
('1234', '1234', '1234'),
('Z001', 'Lucas', '123'),
('Z002', 'Sofea', 'sofeaa'),
('Z003', 'Rose', '123'),
('Z004', 'Mary', '123'),
('Z005', 'Riana', '123'),
('Z006', 'Daniel', '123'),
('Z007', 'Jennie', 'jennie06'),
('Z009', 'Syakirah', 'syakirah03');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `idpengurus` varchar(4) NOT NULL,
  `namapengurus` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`idpengurus`, `namapengurus`, `password`) VALUES
('A002', 'Danish', '123'),
('A003', 'Alysha', '123');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` varchar(4) NOT NULL,
  `namaproduk` varchar(40) DEFAULT NULL,
  `gambar` varchar(20) DEFAULT NULL,
  `harga` decimal(6,2) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `idpengurus` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `namaproduk`, `gambar`, `harga`, `keterangan`, `idpengurus`) VALUES
('S101', 'Axis-X AHA + BHA set', 'S101.png', 119.07, 'Skin type :oily & acne prone skin <br>\r\nMain ingredients : Tea tree,\r\nCentella Asiatica', 'A002'),
('S102', 'Axis-X Snail Truecica Set', 'S102.png', 129.00, 'Skin type : oily <br> Main ingredients : Snail Secretion Filtrate, C12-14 Pareth-12, <br> C12-14 Pareth-7', 'A002'),
('S103', 'SkinLab Advanced Snail Mucin Set', 'S103.png', 118.60, 'Skin type : dry <br>\r\nMain ingredients : Snail Secretion Filtrate,\r\nBetaine, Panthenol', 'A003'),
('S104', 'J-Beauty Premium Hydrating Set', 'S104.png', 129.81, 'Skin type : dry & sensitive <br>\r\nMain ingredients : 7 types of Hyaluronic Acid, Saccharide Isomerate', 'A002'),
('S105', 'J-Beauty Premium Brightening Set', 'S105.png', 120.43, 'Skin type : all <br> \r\nMain ingredients : Niacinamide, α-Arbutin,\r\nVitamin C\r\n', 'A003'),
('S106', 'J-Beauty Blemish & Oil-Control Set', 'S106.png', 124.51, ' Skin type : oily & acne-prone skin <br>\r\nMain ingredients : Hatomugi, Houttuynia Cordata, Chamomile Flower', 'A003'),
('S107', 'SkinLab Full Fit Propolis Set', 'S107.png', 199.00, 'Skin type : dry & sensitive <br>\r\nMain ingredients : 72.6% Black Bee Propolis, Propolis Extracts, <br> Honey Extract', 'A002'),
('S108', 'Axix-X Glow Set', 'S108.png', 112.90, 'Skin type : all <br>\r\nMain ingredients : Vitamin B3, Hippophae Rhamnoides Fruit, <br> Rice Bran', 'A003'),
('S109', 'SkinLab Japan Sakura Set', 'S109.png', 110.00, 'Skin type : all <br>\r\nMain ingredients : Prunus Lannesiana Flower Extract, Prunus Mume Fruit Extract', 'A002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bandingan`
--
ALTER TABLE `bandingan`
  ADD PRIMARY KEY (`idbandingan`),
  ADD KEY `idpembeli` (`idpembeli`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`idpembeli`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`idpengurus`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idpengurus` (`idpengurus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bandingan`
--
ALTER TABLE `bandingan`
  MODIFY `idbandingan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bandingan`
--
ALTER TABLE `bandingan`
  ADD CONSTRAINT `bandingan_pembeli` FOREIGN KEY (`idpembeli`) REFERENCES `pembeli` (`idpembeli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bandingan_produk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_pengurus` FOREIGN KEY (`idpengurus`) REFERENCES `pengurus` (`idpengurus`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
