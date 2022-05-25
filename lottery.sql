-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 04:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lottery`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_lottery`
--

CREATE TABLE `db_lottery` (
  `id` int(50) NOT NULL,
  `lottery_round` varchar(255) NOT NULL,
  `reward_one` varchar(255) NOT NULL,
  `reward_two` varchar(255) NOT NULL,
  `reward_three` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_lottery`
--

INSERT INTO `db_lottery` (`id`, `lottery_round`, `reward_one`, `reward_two`, `reward_three`) VALUES
(1, '16 กุมภาพันธ์ 2565', '737867', '737866, 737868', '349, 985'),
(2, '1 มีนาคม 2565', '061905', '061904, 061906', '236, 834'),
(3, '16 มีนาคม 2565', '737867', '737868, 737866', '985, 349');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_lottery`
--
ALTER TABLE `db_lottery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_lottery`
--
ALTER TABLE `db_lottery`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
