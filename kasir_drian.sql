-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 05:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_drian`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpejualan`
--

CREATE TABLE `detailpejualan` (
  `DetailID` varchar(15) NOT NULL,
  `ProdukID` varchar(15) NOT NULL,
  `Harga` int(11) NOT NULL DEFAULT 0,
  `JumlahProduk` int(11) NOT NULL DEFAULT 0,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpejualan`
--

INSERT INTO `detailpejualan` (`DetailID`, `ProdukID`, `Harga`, `JumlahProduk`, `Subtotal`) VALUES
('DIDP001', '1', 70000, 10, 700000),
('DIDP002', '2', 5000000, 5, 25000000),
('DIDP003', '1', 70000, 2, 140000),
('DIDP004', '1', 70000, 8, 560000),
('DIDP005', '3', 15000, 10, 150000),
('DIDP006', '6', 5000, 5, 25000),
('DIDP007', '7', 30000, 4, 120000),
('DIDP008', '4', 50000, 17, 850000),
('DIDP009', '4', 50000, 3, 150000),
('DIDP010', '7', 30000, 1, 30000),
('DIDP011', '1', 70000, 1, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LoginID` varchar(15) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `HakAkses` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LoginID`, `Username`, `Password`, `HakAkses`) VALUES
('1', 'Adrian', '1234', 'Petugas'),
('2', 'Rafli', '1234', 'Admin'),
('5', 'Azi', '1234', 'Admin'),
('7', 'Gina', '1234', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` varchar(15) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `Alamat`, `NomorTelepon`) VALUES
('2', 'Babayo', 'Jakarta', '00088665'),
('3', 'Susan', 'Bintaro', '07656576'),
('7', 'Gina Mila Hayati', 'Kp.Cibodas', '0864536485');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` varchar(15) NOT NULL,
  `DetailID` varchar(15) NOT NULL,
  `TanggalPenjualan` date DEFAULT NULL,
  `JamPenjualan` time DEFAULT NULL,
  `TotalHarga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `DetailID`, `TanggalPenjualan`, `JamPenjualan`, `TotalHarga`) VALUES
('IDP001', 'DIDP001', '2024-03-01', '10:11:48', 700000),
('IDP002', 'DIDP002', '2024-03-01', '10:12:17', 25000000),
('IDP003', 'DIDP003', '2024-03-14', '10:59:44', 140000),
('IDP004', 'DIDP004', '2024-03-15', '10:56:49', 560000),
('IDP005', 'DIDP005', '2024-03-18', '10:22:47', 150000),
('IDP006', 'DIDP006', '2024-03-18', '10:23:13', 25000),
('IDP007', 'DIDP007', '2024-03-21', '11:05:32', 120000),
('IDP008', 'DIDP008', '2024-03-21', '11:21:58', 850000),
('IDP009', 'DIDP009', '2024-03-21', '11:40:22', 150000),
('IDP010', 'DIDP010', '2024-03-21', '11:41:18', 30000),
('IDP011', 'DIDP011', '2024-03-21', '11:49:21', 70000),
('IDP012', 'DIDP012', '2024-03-21', '11:55:19', 250000),
('IDP013', 'DIDP013', '2024-03-21', '11:56:45', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukID` varchar(15) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`) VALUES
('1', 'Peci', 70000, 168),
('2', 'Sarung BHS Asli', 5000000, 50),
('3', 'Sajadah', 15000, 90),
('4', 'Kurma Azwa', 50000, 45),
('7', 'Paket  Lebaran', 30000, 95);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpejualan`
--
ALTER TABLE `detailpejualan`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
