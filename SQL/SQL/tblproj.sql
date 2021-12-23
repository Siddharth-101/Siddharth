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
-- Table structure for table `tblproj`
--

CREATE TABLE `tblproj` (
  `pno` varchar(10) NOT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `dno` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproj`
--

INSERT INTO `tblproj` (`pno`, `pname`, `budget`, `dno`) VALUES
('P1', 'Instruments', 150000, 'D1'),
('P2', 'DB Develop', 135000, 'D2'),
('P3', 'Budget', 250000, 'D3'),
('P4', 'Maintenance', 310000, 'D2'),
('P5', 'CAD/CAM', 500000, 'D2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblproj`
--
ALTER TABLE `tblproj`
  ADD PRIMARY KEY (`pno`),
  ADD KEY `dno` (`dno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblproj`
--
ALTER TABLE `tblproj`
  ADD CONSTRAINT `tblproj_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `tbldept` (`dno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
