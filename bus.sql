-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 10:42 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--
CREATE DATABASE IF NOT EXISTS `bus` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bus`;

-- --------------------------------------------------------

--
-- Table structure for table `bus_layout`
--

CREATE TABLE `bus_layout` (
  `busID` int(11) NOT NULL,
  `totalSeat` int(11) NOT NULL,
  `backSeat` int(11) NOT NULL,
  `frontSeat` int(11) NOT NULL,
  `format` varchar(3) NOT NULL,
  `totalRows` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus_layout`
--

INSERT INTO `bus_layout` (`busID`, `totalSeat`, `backSeat`, `frontSeat`, `format`, `totalRows`) VALUES
(1, 40, 5, 3, '2x2', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bus_layout_record`
--

CREATE TABLE `bus_layout_record` (
  `recordID` int(11) NOT NULL,
  `seatName` varchar(3) NOT NULL,
  `busID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus_layout_record`
--

INSERT INTO `bus_layout_record` (`recordID`, `seatName`, `busID`) VALUES
(1, '3er', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `ID` int(11) NOT NULL,
  `name` varchar(2) NOT NULL,
  `busID` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`ID`, `name`, `busID`, `status`) VALUES
(1, 'A1', 1, 'empty'),
(2, 'A2', 1, 'staff'),
(3, 'A3', 1, 'empty'),
(4, 'A4', 1, 'empty'),
(5, 'B1', 1, 'empty'),
(6, 'B2', 1, 'empty'),
(7, 'B3', 1, 'empty'),
(8, 'B4', 1, 'empty'),
(9, 'C1', 1, 'empty'),
(10, 'C2', 1, 'empty'),
(11, 'C3', 1, 'empty'),
(12, 'C4', 1, 'empty'),
(13, 'D1', 1, 'empty'),
(14, 'D2', 1, 'pizza'),
(15, 'D3', 1, 'empty'),
(16, 'D4', 1, 'empty'),
(18, 'E1', 1, 'empty'),
(19, 'E2', 1, 'test'),
(20, 'E3', 1, 'empty'),
(21, 'E4', 1, 'empty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_layout`
--
ALTER TABLE `bus_layout`
  ADD PRIMARY KEY (`busID`);

--
-- Indexes for table `bus_layout_record`
--
ALTER TABLE `bus_layout_record`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `busID` (`busID`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_layout`
--
ALTER TABLE `bus_layout`
  MODIFY `busID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bus_layout_record`
--
ALTER TABLE `bus_layout_record`
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_layout_record`
--
ALTER TABLE `bus_layout_record`
  ADD CONSTRAINT `fk_bus` FOREIGN KEY (`busID`) REFERENCES `bus_layout` (`busID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
