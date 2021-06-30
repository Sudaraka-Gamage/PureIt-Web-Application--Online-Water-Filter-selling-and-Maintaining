-- phpMyAdmin SQL Dump

-- version 4.7.0

-- https://www.phpmyadmin.net/

--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 07:46 PM

-- Server version: 10.1.26-MariaDB

-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT
=@@CHARACTER_SET_CLIENT */;
/*!
40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pureit`
--

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `callid` int(10) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `problemid` varchar(10) NOT NULL,
  `empid` varchar(10) NOT NULL,
  `custid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`callid`, `date`, `status`, `problemid`, `empid`, `custid`) VALUES
(5, '2018-01-01', 'Solved', 'PR003', 'E007', 'CU389'),
(6, '2018-01-01', 'Solved', 'PR010', 'E23', 'C563'),
(7, '2018-01-01', 'Unsolved', 'PR23', 'E002', 'CU325'),
(8, '2018-01-01', 'Unsolved', 'PR020', 'E013', 'C213');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` varchar(10) NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `model` varchar(20) NOT NULL,
  `contactnumber` date NOT NULL,
  `purchasedate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customersupporter`
--

CREATE TABLE `customersupporter` (
  `empid` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customersupporter`
--

INSERT INTO `customersupporter` (`empid`, `fname`, `lname`, `uname`, `pass`) VALUES
('E001', 'Savindu', 'Weerasinghe', 'savindu', 'abc'),
('E002', 'Ishara', 'Anupama', 'ishara', 'abc'),
('E003', 'Sudaraka', 'Chamli', 'sudaraka', 'abc'),
('E004', 'Avishka', 'Wijesinghe', 'avishka', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackid` int(10) NOT NULL,
  `noofstars` int(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `inquiryid` varchar(10) NOT NULL,
  `custid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackid`, `noofstars`, `description`, `inquiryid`, `custid`) VALUES
(6, 2, 'Good service!', 'IN567', 'CU632'),
(7, 1, 'Happy', 'IN23', 'CU320'),
(8, 1, 'Great service', 'IN654', 'CU85'),
(9, 1, 'Bad service', 'IN365', 'CU389');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inquiryid` int(11) NOT NULL,
  `status` varchar(10) DEFAULT 'Unsolved',
  `contactnumber` varchar(10) NOT NULL,
  `problemdescription` varchar(200) NOT NULL,
  `priority` varchar(10) NOT NULL,
  `empid` varchar(10) NOT NULL,
  `callid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inquiryid`, `status`, `contactnumber`, `problemdescription`, `priority`, `empid`, `callid`) VALUES
(141, 'Unsolved', '0716843765', 'Tap is not working', 'Medium', 'E50', NULL),
(142, 'Unsolved', '0778349315', 'Water filter is brocken', 'High', 'E56', NULL),
(143, 'Unsolved', '0765234695', 'Purifier is damaged', 'High', 'E45', NULL),
(144, 'Unsolved', '0776531485', 'Tap is brocken', 'Medium', 'E40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `problemid` varchar(10) NOT NULL,
  `category` varchar(20) NOT NULL,
  `subcategory` varchar(20) NOT NULL,
  `problem` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `problemid` varchar(10) NOT NULL,
  `solutiondescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

CREATE TABLE `technician` (
  `emp_id` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `birth_day` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technician`
--

INSERT INTO `technician` (`emp_id`, `first_name`, `last_name`, `gender`, `phoneno`, `nic`, `email`, `birth_day`, `Password`, `address`) VALUES
('Tech001', 'Ishara', 'Anupama', 'Male', '0770653412', '961820880V', 'isharaanupama2016@gmail.com', '1996-06-30', '123', '280,Uttalapura,Damanewela'),
('Tech002', 'Savindu', 'Weerasinghe', 'Male', '0712154685', '952357896V', 'savinduweerasinghe@gmail.com', '1995-03-19', '0000', '35/21D, Maladumpatha road,\r\nMatale.'),
('Tech003', 'Waruna', 'Wanninayake', 'Male', '0762587635', '962578965V', 'waruna555@gmail.com', '1996-03-02', '7895', '28,Matale'),
('Tech004', 'Sudaraka', 'Perera', 'Male', '0710256846', '94568796V', 'suda123@gmail.com', '1994-02-04', '145ad@', '245,Tissamaharamaya'),
('Tech005', 'Avishka', 'Nuwan', 'Male', '0765968789', '975687954V', 'aviQ@gmail.com', '1997-05-04', '456', '23,Katugastota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`callid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `customersupporter`
--
ALTER TABLE `customersupporter`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inquiryid`) USING BTREE;

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`problemid`);

--
-- Indexes for table `solution`
--
ALTER TABLE `solution`
  ADD PRIMARY KEY (`problemid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `callid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inquiryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
