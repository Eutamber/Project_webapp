-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 08:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `imge` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `ฺbasket`
--

INSERT INTO `ฺbasket` (`ID`, `imge`, `topic`, `price`, `quantity`, `color`) VALUES
(100, 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F2%2F120025303_1695107648891PNPO.jpg&w=1200&q=75', 'ชุดห้องนอน รุ่นร็อตเตอร์ดัม', 19000, 1, NULL),
(111, 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F4%2F5%2F4504_fur_23001245_33332_bf.jpg&w=1200&q=75', 'ซื้อชุดห้องนอน รุ่นอิลลูชั่น พลัส ขนาด 6 ฟุต', 46000, 1, NULL);

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
