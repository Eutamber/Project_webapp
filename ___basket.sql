-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2023 at 02:46 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ฺbasket`
--

CREATE TABLE `ฺbasket` (
  `ID` int(11) NOT NULL,
  `ID_product` int(11) NOT NULL,
  `types` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ฺbasket`
--
ALTER TABLE `ฺbasket`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
