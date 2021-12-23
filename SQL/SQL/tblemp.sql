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
-- Table structure for table `tblemp`
--

CREATE TABLE `tblemp` (
  `eno` varchar(10) NOT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `supereno` varchar(10) DEFAULT NULL,
  `dno` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemp`
--

INSERT INTO `tblemp` (`eno`, `ename`, `bdate`, `title`, `salary`, `supereno`, `dno`) VALUES
('E1', 'J.Doe', '1975-01-05', 'EE', 30000, 'E2', NULL),
('E2', 'M.Smith', '1966-06-04', 'SA', 50000, 'E5', 'D3'),
('E3', 'A.Lee', '1966-07-05', 'EE', 40000, 'E7', 'D2'),
('E4', 'J.Miller', '1950-09-01', 'PR', 20000, 'E6', 'D3'),
('E5', 'B.Casey', '1971-12-25', 'SA', 50000, 'E8', 'D3'),
('E6', 'L.Chu', '1965-11-30', 'EE', 30000, 'E7', 'D2'),
('E7', 'R.Davis', '1977-09-08', 'ME', 40000, 'E8', 'D1'),
('E8', 'J.Jones', '1972-10-11', 'SA', 50000, 'NULL', 'D1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblemp`
--
ALTER TABLE `tblemp`
  ADD PRIMARY KEY (`eno`),
  ADD KEY `dno` (`dno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblemp`
--
ALTER TABLE `tblemp`
  ADD CONSTRAINT `tblemp_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `tbldept` (`dno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
