-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 09:12 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblsales`
--

CREATE TABLE `tblsales` (
  `SalesID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `SalesPrice` decimal(11,2) DEFAULT NULL,
  `SalesDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsales`
--

INSERT INTO `tblsales` (`SalesID`, `ProductID`, `CustomerID`, `SalesPrice`, `SalesDate`) VALUES
(1, 1, 1, '130.00', '2005-06-14'),
(2, 2, 2, '97.00', '2005-06-19'),
(3, 3, 3, '200.00', '2005-09-20'),
(4, 4, 4, '80.00', '2005-03-22'),
(5, 5, 5, '899.00', '2005-01-23'),
(6, 6, 6, '150.00', '2005-03-24'),
(7, 3, 7, '209.00', '2005-03-10'),
(8, 4, 8, '90.00', '2005-08-11'),
(9, 6, 9, '130.00', '2005-08-12'),
(10, 2, 14, '85.00', '2005-12-13'),
(11, 3, 15, '240.00', '2005-05-14'),
(12, 1, 17, '87.00', '2005-07-19'),
(13, 2, 18, '99.00', '2005-09-20'),
(14, 6, 19, '150.00', '2005-07-22'),
(15, 5, 5, '900.00', '2005-03-06'),
(16, 4, 6, '86.00', '2005-04-07'),
(17, 2, 7, '88.00', '2005-11-08'),
(18, 3, 8, '198.00', '2005-05-09'),
(19, 1, 9, '150.00', '2005-10-10'),
(20, 6, 14, '99.00', '2005-09-09'),
(21, 6, 15, '104.00', '2005-09-20'),
(22, 4, 14, '90.00', '2005-07-22'),
(23, 1, 1, '130.00', '2005-03-06'),
(24, 2, 2, '102.00', '2005-04-07'),
(25, 1, 3, '114.00', '2005-11-08'),
(26, 5, 4, '1000.00', '2005-05-09'),
(27, 5, 5, '1100.00', '2005-10-10'),
(28, 3, 6, '285.00', '2005-06-11'),
(29, 2, 7, '87.00', '2005-10-12'),
(30, 3, 8, '300.00', '2005-07-13'),
(31, 3, 20, '205.00', '2005-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblsales`
--
ALTER TABLE `tblsales`
  ADD PRIMARY KEY (`SalesID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblsales`
--
ALTER TABLE `tblsales`
  MODIFY `SalesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
