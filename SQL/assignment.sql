-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 02:19 PM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deptwisesalary` ()  SELECT Department, MAX(Salary) FROM employee GROUP BY Department$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cnm` int(11) NOT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `sno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cnm`, `cname`, `city`, `rating`, `sno`) VALUES
(201, 'Hoffman', 'London', 100, 1001),
(202, 'Giovanne', 'Rome', 200, 1003),
(203, 'Liu', 'San Jose', 300, 1002),
(204, 'Grass', 'Bercelona', 100, 1002),
(206, 'Clemes', 'London', 300, 1007),
(207, 'Pereira', 'Rome', 100, 1004);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(30) DEFAULT NULL,
  `Lastname` varchar(30) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Joiningdate` date DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Firstname`, `Lastname`, `Salary`, `Joiningdate`, `Department`) VALUES
(1, 'John', 'Abrahm', 1000000, '2013-01-01', 'Banking'),
(2, 'Micheal', 'Clerk', 800000, '2013-01-01', 'Insurance'),
(3, 'Roy', 'Thomas', 700000, '2013-02-01', 'Bnking'),
(4, 'Tom', 'Jose', 600000, '2013-02-01', 'Insurance'),
(5, 'Jerry', 'Pinto', 650000, '2013-01-01', 'Insurance'),
(6, 'philip', 'Mathew', 750000, '2013-01-01', 'Services'),
(7, 'Tastename1', '123', 650000, '2013-01-01', 'Services'),
(8, 'Testname2', 'Lname%', 600000, '2013-02-01', 'Insurance');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employeeview`
-- (See below for the actual view)
--
CREATE TABLE `employeeview` (
`Firstname` varchar(30)
,`Lastname` varchar(30)
,`Salary` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `incentive`
--

CREATE TABLE `incentive` (
  `Id` int(11) NOT NULL,
  `Emp_ref_id` int(11) DEFAULT NULL,
  `Incentive_date` date DEFAULT NULL,
  `Incentive_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incentive`
--

INSERT INTO `incentive` (`Id`, `Emp_ref_id`, `Incentive_date`, `Incentive_amount`) VALUES
(1, 1, '2013-02-01', 5000),
(2, 2, '2013-02-01', 3000),
(3, 3, '2013-02-01', 4000),
(4, 1, '2013-01-01', 4500),
(5, 2, '2013-01-01', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `onm` int(11) NOT NULL,
  `amt` decimal(11,2) DEFAULT NULL,
  `ode` date DEFAULT NULL,
  `cnm` int(11) DEFAULT NULL,
  `sno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`onm`, `amt`, `ode`, `cnm`, `sno`) VALUES
(3001, '18.69', '1994-10-03', 201, 1007),
(3002, '1900.1', '1994-10-03', 207, 1004),
(3003, '767.19', '1994-10-03', 201, 1001),
(3005, '3005', '1994-10-03', 203, 1002),
(3006, '3006', '1994-10-04', 201, 1007),
(3007, '3007', '1994-10-05', 204, 1002),
(3008, '3008', '1994-10-05', 206, 1001),
(3009, '3009', '1994-10-04', 203, 1003),
(3010, '3010', '1994-10-06', 204, 1002),
(3011, '3011', '1994-10-06', 206, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `sno` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `comm` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`sno`, `sname`, `city`, `comm`) VALUES
(1001, 'Peel', 'London', '0.12'),
(1002, 'Serres', 'San jose', '0.13'),
(1003, 'Axelrode', 'New York', '0.10'),
(1004, 'Motika', 'London', '0.11'),
(1007, 'Rafkin', 'Bercelona', '0.15');

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

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `tID` int(11) NOT NULL,
  `ProductName` varchar(20) DEFAULT NULL,
  `RecommendedPrice` decimal(11,2) DEFAULT NULL,
  `Category` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`tID`, `ProductName`, `RecommendedPrice`, `Category`) VALUES
(1, 'DVD', '105.00', 'LivingRoom'),
(2, 'MICROWAVE', '98.00', 'Kitchen'),
(3, 'MONITOR', '200.00', 'Office'),
(4, 'Speakers', '85.00', 'Office'),
(5, 'Refrigerator', '900.00', 'Kitchen'),
(6, 'VCR', '165.00', 'LivingRoom'),
(7, 'CoffeePot', '35.00', 'Kitchen');

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

-- --------------------------------------------------------

--
-- Structure for view `employeeview`
--
DROP TABLE IF EXISTS `employeeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeeview`  AS SELECT `employee`.`Firstname` AS `Firstname`, `employee`.`Lastname` AS `Lastname`, `employee`.`Salary` AS `Salary` FROM `employee` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cnm`),
  ADD KEY `sno` (`sno`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `incentive`
--
ALTER TABLE `incentive`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Emp_ref_id` (`Emp_ref_id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`onm`),
  ADD KEY `cnm` (`cnm`),
  ADD KEY `sno` (`sno`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`tID`);

--
-- Indexes for table `tblsales`
--
ALTER TABLE `tblsales`
  ADD PRIMARY KEY (`SalesID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cnm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `incentive`
--
ALTER TABLE `incentive`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salesperson`
--
ALTER TABLE `salesperson`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `tID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsales`
--
ALTER TABLE `tblsales`
  MODIFY `SalesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `salesperson` (`sno`);

--
-- Constraints for table `incentive`
--
ALTER TABLE `incentive`
  ADD CONSTRAINT `incentive_ibfk_1` FOREIGN KEY (`Emp_ref_id`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `order1`
--
ALTER TABLE `order1`
  ADD CONSTRAINT `order1_ibfk_1` FOREIGN KEY (`cnm`) REFERENCES `customer` (`cnm`),
  ADD CONSTRAINT `order1_ibfk_2` FOREIGN KEY (`sno`) REFERENCES `salesperson` (`sno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
