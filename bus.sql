-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 03:23 PM
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
  `bus_stop` varchar(15) NOT NULL,
  `busID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus_layout_record`
--

INSERT INTO `bus_layout_record` (`recordID`, `seatName`, `bus_stop`, `busID`) VALUES
(1, '3er', '', 1),
(2, 'H3', 'magoza', 1),
(3, 'I3', 'gezaulole', 1),
(4, 'D3', 'kimara', 1),
(5, 'A1', 'chalinze', 1),
(6, 'B1', 'kibaha22', 1),
(7, 'C1', 'kibamba', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `ID` int(11) NOT NULL,
  `name` varchar(2) NOT NULL,
  `busID` int(11) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'empty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`ID`, `name`, `busID`, `status`) VALUES
(1, 'A1', 1, 'empty'),
(2, 'A2', 1, 'empty'),
(3, 'A3', 1, 'empty'),
(4, 'A4', 1, 'empty'),
(5, 'B1', 1, 'kibaha'),
(6, 'B2', 1, 'empty'),
(7, 'B3', 1, 'empty'),
(8, 'B4', 1, 'empty'),
(9, 'C1', 1, 'kibamba'),
(10, 'C2', 1, 'empty'),
(11, 'C3', 1, 'empty'),
(12, 'C4', 1, 'empty'),
(13, 'D1', 1, 'empty'),
(14, 'D2', 1, 'empty'),
(15, 'D3', 1, 'empty'),
(16, 'D4', 1, 'empty'),
(18, 'E1', 1, 'empty'),
(19, 'E2', 1, 'empty'),
(20, 'E3', 1, 'empty'),
(21, 'E4', 1, 'empty'),
(22, 'F1', 1, 'empty'),
(23, 'F2', 1, 'empty'),
(24, 'F3', 1, 'empty'),
(25, 'F4', 1, 'empty'),
(26, 'G1', 1, 'empty'),
(27, 'G2', 1, 'empty'),
(28, 'G3', 1, 'empty'),
(29, 'G4', 1, 'empty'),
(30, 'H1', 1, 'empty'),
(31, 'H2', 1, 'empty'),
(32, 'H3', 1, 'empty'),
(33, 'H4', 1, 'empty'),
(34, 'I1', 1, 'empty'),
(35, 'I2', 1, 'empty'),
(36, 'I3', 1, 'empty'),
(37, 'I4', 1, 'empty'),
(38, 'J1', 1, 'empty'),
(39, 'J2', 1, 'empty'),
(40, 'J3', 1, 'empty'),
(41, 'J4', 1, 'empty'),
(42, 'K1', 1, 'empty'),
(43, 'K2', 1, 'empty'),
(44, 'K3', 1, 'empty'),
(45, 'k4', 1, 'empty'),
(46, 'L1', 1, 'empty'),
(47, 'L2', 1, 'empty'),
(48, 'L3', 1, 'empty'),
(49, 'L4', 1, 'empty'),
(50, 'M1', 1, 'empty'),
(51, 'M2', 1, 'empty'),
(52, 'M3', 1, 'empty'),
(53, 'M4', 1, 'empty');

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
  ADD KEY `fk_seat` (`busID`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `busID` (`busID`);

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
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_layout_record`
--
ALTER TABLE `bus_layout_record`
  ADD CONSTRAINT `fk_seat` FOREIGN KEY (`busID`) REFERENCES `seats` (`busID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
