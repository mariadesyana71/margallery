-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 02:23 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifotoz`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar_foto`
--

CREATE TABLE `komentar_foto` (
  `komentarID` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal_komentar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar_foto`
--

INSERT INTO `komentar_foto` (`komentarID`, `image_id`, `admin_id`, `admin_name`, `isi_komentar`, `tanggal_komentar`) VALUES
(1, 43, 3, 'Ucup', 'tutor hapus komen\r\n', '2024-01-24 01:28:23'),
(2, 43, 3, 'Ucup', 'dddd', '2024-01-24 01:51:44'),
(3, 43, 3, 'Ucup', 'p', '2024-01-24 02:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'M.ZIDAN FIRDAUS', 'zidannn', '12345', '081385565539', 'zidandoso9@gmail.com', 'Cikeuik Pandeglang-Banten'),
(2, 'muin', 'muin', 'nyampelima', '98067765', 'fdsaass@gmail.com', 'cilongok'),
(3, 'Ucup', 'ucup', 'nyampe5', '08372743', 'ucup@gmail.com', 'Cikuya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(14, 'Perjalanan'),
(15, 'Bawah Air'),
(16, 'Hewan Peliharaan'),
(17, 'Satwa Liar'),
(18, 'Makanan'),
(19, 'Olahraga'),
(20, 'Fashion'),
(21, 'Seni Rupa'),
(22, 'Dokumenter'),
(23, 'Arsitektur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(43, 16, 'Hewan Peliharaan', 1, 'M.ZIDAN FIRDAUS', 'KUCING FERSIA', 'BAGUSSSS SAYA SUKA', 'foto1705370927.jpg', 1, '2024-01-16 02:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_like`
--

CREATE TABLE `tb_like` (
  `like_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `suka` int(11) NOT NULL,
  `tanggal_like` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_like`
--

INSERT INTO `tb_like` (`like_id`, `image_id`, `admin_name`, `suka`, `tanggal_like`) VALUES
(4, 43, 'M.ZIDAN FIRDAUS', 1, '2024-01-24 01:23:40'),
(8, 43, 'Ucup', 1, '2024-01-24 07:11:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentar_foto`
--
ALTER TABLE `komentar_foto`
  ADD PRIMARY KEY (`komentarID`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `admin_name` (`admin_name`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `tb_like`
--
ALTER TABLE `tb_like`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `admin_name` (`admin_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar_foto`
--
ALTER TABLE `komentar_foto`
  MODIFY `komentarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_like`
--
ALTER TABLE `tb_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar_foto`
--
ALTER TABLE `komentar_foto`
  ADD CONSTRAINT `komentar_foto_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `tb_image` (`image_id`),
  ADD CONSTRAINT `komentar_foto_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`);

--
-- Constraints for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`),
  ADD CONSTRAINT `tb_image_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`);

--
-- Constraints for table `tb_like`
--
ALTER TABLE `tb_like`
  ADD CONSTRAINT `tb_like_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `tb_image` (`image_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
