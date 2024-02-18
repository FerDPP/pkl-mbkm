-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 09:00 AM
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
-- Database: `db_sipadis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diagnosis`
--

CREATE TABLE `tbl_diagnosis` (
  `id_diagnosis` int(11) NOT NULL,
  `tanggal_diagnosis` date NOT NULL,
  `nama_balita` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `usia` int(11) NOT NULL,
  `bb` decimal(5,2) NOT NULL,
  `tb` decimal(5,2) NOT NULL,
  `imt` decimal(5,2) NOT NULL,
  `status_gizi` enum('Gizi Buruk','Gizi Kurang','Gizi Baik','Berisiko Gizi Lebih','Gizi Lebih','Obesitas') NOT NULL,
  `hasil_diagnosis` enum('Stunting Berat','Stunting Ringan','Tidak Stunting') NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_diagnosis`
--

INSERT INTO `tbl_diagnosis` (`id_diagnosis`, `tanggal_diagnosis`, `nama_balita`, `jenis_kelamin`, `usia`, `bb`, `tb`, `imt`, `status_gizi`, `hasil_diagnosis`, `id_pengguna`) VALUES
(1, '2024-01-25', 'Shelline', 'P', 48, 5.00, 11.00, 413.22, 'Obesitas', 'Stunting Berat', 2),
(3, '2024-01-26', 'da', 'L', 2, 12.00, 12.00, 833.33, 'Obesitas', 'Stunting Berat', 1),
(5, '2024-01-29', 'ferd', 'L', 46, 11.00, 11.00, 909.09, 'Obesitas', 'Stunting Berat', 1),
(7, '2024-01-29', 'ferdy', 'L', 46, 1.00, 1.00, 999.99, 'Obesitas', 'Stunting Berat', 1),
(8, '2024-01-29', 'Ferdy', 'P', 46, 11.00, 11.00, 909.09, 'Obesitas', 'Stunting Berat', 1),
(11, '2024-01-29', 'dfdsf', 'L', 12, 1.00, 1.00, 999.99, 'Obesitas', 'Stunting Berat', 1),
(12, '2024-01-29', 'Endang', 'L', 48, 5.00, 20.00, 125.00, 'Obesitas', 'Stunting Berat', 1),
(13, '2024-02-01', 'dss', 'L', 12, 11.00, 11.00, 909.09, 'Obesitas', 'Stunting Berat', 2),
(15, '2024-02-16', 'Sidik Riski', 'L', 6, 6.00, 30.00, 66.67, 'Obesitas', 'Stunting Berat', 1),
(16, '2024-02-16', 'sada', 'L', 12, 11.00, 11.00, 909.09, 'Obesitas', 'Stunting Berat', 1),
(17, '2024-02-16', 'saas', 'L', 12, 11.00, 11.00, 909.09, 'Obesitas', 'Stunting Berat', 1),
(18, '2024-02-17', 'Yuhu', 'P', 12, 11.00, 11.00, 909.09, 'Obesitas', 'Stunting Berat', 29),
(19, '2024-02-17', 'Komeng', 'L', 12, 1.00, 1.00, 999.99, 'Obesitas', 'Stunting Berat', 40),
(20, '2024-02-17', 'Ferdy', 'L', 11, 7.00, 70.00, 14.29, 'Gizi Kurang', 'Tidak Stunting', 40);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `email`, `no_telepon`) VALUES
(1, 'Umcpenting321@gmail.com', '0812345678121');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `status_pengguna` enum('admin','user') NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `reset_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id_pengguna`, `nama`, `jenis_kelamin`, `status_pengguna`, `email`, `no_telepon`, `kata_sandi`, `reset_token`) VALUES
(1, 'Mahasiswa Penting', 'L', 'admin', 'mahasiswapentingumc@gmdail.com', '08812212846', 'ae047667150512e98fe61d2378ac71769b9600622f6fee4c3ba078a6509fd3b8', ''),
(2, 'Ferdy Pradana Putra', 'L', 'user', 'ferdy@gmail.com', '081222731048', '1ebf236a36a3729ec8b9de29566bf74a9bb1a789a718bf82ced149d76e885876', ''),
(29, 'Ferdy PP', 'L', 'admin', 'ferdypp@gmail.com', '0982323123', '1ebf236a36a3729ec8b9de29566bf74a9bb1a789a718bf82ced149d76e885876', ''),
(36, 'Bryan Ferdy PP', NULL, 'admin', 'bf12@gmail.com', NULL, '1ebf236a36a3729ec8b9de29566bf74a9bb1a789a718bf82ced149d76e885876', ''),
(39, 'Uhuy', NULL, 'user', 'komeng@gmail.com', NULL, '1ebf236a36a3729ec8b9de29566bf74a9bb1a789a718bf82ced149d76e885876', ''),
(40, 'Mahasiswa Penting', 'L', 'admin', 'mapenting123@gmail.com', '0812323232', '1ebf236a36a3729ec8b9de29566bf74a9bb1a789a718bf82ced149d76e885876', ''),
(41, 'Ferio', NULL, 'admin', 'ferdio@gmail.com', NULL, 'ef7fbd1aa3542068ef03bf7ced629bbf3acc26b1c91bb49741487892465c0b78', ''),
(42, 'Wulan', NULL, 'admin', 'wulan@gmail.com', NULL, '7cadfc3f33f4afdd9c5f694a6b81497a0682023c6da79e416a4eb5034892fe8c', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posyandu`
--

CREATE TABLE `tbl_posyandu` (
  `nm_posyandu` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_posyandu`
--

INSERT INTO `tbl_posyandu` (`nm_posyandu`) VALUES
('Durian'),
('Rambutan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  ADD PRIMARY KEY (`id_diagnosis`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `no_telepon` (`no_telepon`);
ALTER TABLE `tbl_pengguna` ADD FULLTEXT KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  MODIFY `id_diagnosis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  ADD CONSTRAINT `tbl_diagnosis_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
