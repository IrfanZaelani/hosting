-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 03:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('selesai','belum selesai') NOT NULL,
  `prioritas` enum('penting','tidak penting') NOT NULL,
  `deadline` date NOT NULL,
  `dibuat_tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `judul`, `deskripsi`, `status`, `prioritas`, `deadline`, `dibuat_tgl`) VALUES
(22, 'risma', 'nguli\r\n', 'belum selesai', 'penting', '2025-03-01', '2025-02-18 17:00:00'),
(23, 'salsa', 'ngoding', 'selesai', 'penting', '2025-02-06', '2025-02-18 17:00:00'),
(24, 'ujikom', 'ngoding sampe meninggal', 'belum selesai', 'penting', '2025-02-24', '2025-02-18 17:00:00'),
(25, 'ujikom', 'ngoding sampe meninggal', 'belum selesai', 'penting', '2025-02-24', '2025-02-18 17:00:00'),
(26, 'adD', 'DDDDD', 'belum selesai', 'penting', '2025-02-22', '2025-02-19 17:00:00'),
(27, 'dd', 'EEEEE', 'belum selesai', 'penting', '2025-02-16', '2025-02-19 17:00:00'),
(28, 'C', 'C', 'belum selesai', 'penting', '2025-02-14', '2025-02-19 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no.hp` int(13) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
