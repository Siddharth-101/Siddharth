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
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`CustomerID`, `FirstName`, `LastName`, `City`, `State`, `Zip`) VALUES
(1, 'Chintan', 'Patel', 'Anand', 'GJ', '388001'),
(2, 'Paresh', 'Prajapati', 'Nadiad', 'GJ', '387001'),
(3, 'Pragnesh', 'Patel', 'Surat', 'GJ', '395008'),
(4, 'Nilesh', 'Dharsandia', 'Mumbai', 'MH', '400002'),
(5, 'Sonal', 'Patel', 'Mumbai', 'MH', '400002'),
(6, 'Harshal', 'Patel', 'Mogri', 'GJ', '388345'),
(7, 'Prakash', 'Rathod', 'Mogri', 'GJ', '388345'),
(8, 'Aarzoo', 'Dodhiya', 'Rajkot', 'GJ', '360003'),
(9, 'Heta', 'Dave', 'Varanasi', 'UP', '221002'),
(10, 'Nikita', 'Dave', 'Varanasi', 'UP', '221002'),
(11, 'Vaibhav', 'Dave', 'Varanasi', 'UP', '221002'),
(12, 'Paresh', 'Patel', 'Pune', 'MH', '411001'),
(13, 'Prakash', 'Patel', 'Pune', 'MH', '411001'),
(14, 'Sandhya', 'Patel', 'Hyedrabad', 'AP', '500031'),
(15, 'Divesh', 'Patel', 'Hyedrabad', 'KA', '560002'),
(16, 'Payal', 'Shah', 'Banglore', 'KA', '560002'),
(17, 'Priyanka', 'Rana', 'Banglore', 'GJ', '388121'),
(18, 'Sanket', 'Dhebar', 'Anand', 'GJ', '388121'),
(19, 'Puja', 'Shah', 'V.V.Nagar', 'UP', '388122'),
(20, 'Priya', 'Shah', 'Varanasi', 'UP', '221002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
