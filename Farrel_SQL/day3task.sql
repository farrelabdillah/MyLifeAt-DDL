-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2024 at 07:10 AM
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
-- Database: `day3task`
--

-- --------------------------------------------------------

--
-- Table structure for table `tableorder`
--

CREATE TABLE `tableorder` (
  `TableOrderId` int(11) NOT NULL,
  `TableId` varchar(36) NOT NULL,
  `MenuName` varchar(75) NOT NULL,
  `QuantityOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tableorder`
--

INSERT INTO `tableorder` (`TableOrderId`, `TableId`, `MenuName`, `QuantityOrder`) VALUES
(1, '123e4567-e89b-12d3-a456-426614174001', 'Burger', 2),
(2, '123e4567-e89b-12d3-a456-426614174002', 'Pizza', 1),
(3, '123e4567-e89b-12d3-a456-426614174003', 'Pasta', 3),
(4, '123e4567-e89b-12d3-a456-426614174004', 'Salad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tablespecification`
--

CREATE TABLE `tablespecification` (
  `TableId` varchar(36) NOT NULL,
  `TableNumber` int(11) DEFAULT NULL,
  `ChairNumber` int(11) DEFAULT NULL,
  `TablePic` varchar(75) NOT NULL,
  `TableType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tablespecification`
--

INSERT INTO `tablespecification` (`TableId`, `TableNumber`, `ChairNumber`, `TablePic`, `TableType`) VALUES
('123e4567-e89b-12d3-a456-426614174001', 1, 4, 'table_pic1.jpg', 'Square'),
('123e4567-e89b-12d3-a456-426614174002', 2, 6, 'table_pic2.jpg', 'Round'),
('123e4567-e89b-12d3-a456-426614174003', 3, 8, 'table_pic3.jpg', 'Rectangle'),
('123e4567-e89b-12d3-a456-426614174004', 4, 2, 'table_pic4.jpg', 'Circle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tableorder`
--
ALTER TABLE `tableorder`
  ADD PRIMARY KEY (`TableOrderId`),
  ADD KEY `TableId` (`TableId`);

--
-- Indexes for table `tablespecification`
--
ALTER TABLE `tablespecification`
  ADD PRIMARY KEY (`TableId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tableorder`
--
ALTER TABLE `tableorder`
  ADD CONSTRAINT `tableorder_ibfk_1` FOREIGN KEY (`TableId`) REFERENCES `tablespecification` (`TableId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
