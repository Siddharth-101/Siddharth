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
-- Table structure for table `tblworkson`
--

CREATE TABLE `tblworkson` (
  `eno` varchar(10) DEFAULT NULL,
  `pno` varchar(10) DEFAULT NULL,
  `resp` varchar(30) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblworkson`
--

INSERT INTO `tblworkson` (`eno`, `pno`, `resp`, `hours`) VALUES
('E1', 'P1', 'Manager', 12),
('E2', 'P1', 'Analyst', 24),
('E2', 'P2', 'Analyst', 6),
('E3', 'P3', 'Consultant', 10),
('E3', 'P4', 'Engineer', 48),
('E4', 'P2', 'Programmer', 18),
('E5', 'P2', 'Manager', 18),
('E6', 'P4', 'Manager', 48),
('E7', 'P3', 'Engineer', 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblworkson`
--
ALTER TABLE `tblworkson`
  ADD KEY `eno` (`eno`),
  ADD KEY `pno` (`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblworkson`
--
ALTER TABLE `tblworkson`
  ADD CONSTRAINT `tblworkson_ibfk_1` FOREIGN KEY (`eno`) REFERENCES `tblemp` (`eno`),
  ADD CONSTRAINT `tblworkson_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `tblproj` (`pno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
