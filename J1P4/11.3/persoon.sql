-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 05:46 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `persoon`
--
CREATE DATABASE IF NOT EXISTS `persoon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `persoon`;

-- --------------------------------------------------------

--
-- Table structure for table `persoon`
--

DROP TABLE IF EXISTS `persoon`;
CREATE TABLE `persoon` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `stad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persoon`
--

INSERT INTO `persoon` (`id`, `first_name`, `last_name`, `stad`) VALUES
(1, 'Jane', 'Collinson', 101),
(2, 'Mohamed', 'Lisram', 103),
(3, 'Leo', 'Thompson', 101),
(4, 'Montano', 'Drew', 104),
(5, 'Greg', 'Lewinky', 105);

-- --------------------------------------------------------

--
-- Table structure for table `stad`
--

DROP TABLE IF EXISTS `stad`;
CREATE TABLE `stad` (
  `id` int(11) NOT NULL,
  `naam` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stad`
--

INSERT INTO `stad` (`id`, `naam`) VALUES
(101, 'amsterdam'),
(102, 'Diemen'),
(103, 'Abcoude'),
(105, 'Utrecht'),
(106, 'Bovenkerk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persoon`
--
ALTER TABLE `persoon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persoon`
--
ALTER TABLE `persoon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
