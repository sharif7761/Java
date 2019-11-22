-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 12:20 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Eid` int(10) NOT NULL,
  `FullName` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `Salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Eid`, `FullName`, `Address`, `Phone`, `Position`, `Salary`) VALUES
(17001, 'Rahim Ahmed', 'Bashundhara', '01819271374', 'Farmer', 10000),
(17002, 'Md.Salah', 'Badda', '01716327634', 'Driver', 7000),
(17003, 'Messi Rahman', 'Kuril', '01619271374', 'Porter', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `Frid` int(5) NOT NULL,
  `FrName` varchar(20) NOT NULL,
  `Description` varchar(40) NOT NULL,
  `Quantity(kg)` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`Frid`, `FrName`, `Description`, `Quantity(kg)`) VALUES
(1, 'Nitrogen', 'increase growth and protein levels', 10),
(2, 'phosphorus', 'activate enzymes required in growth', 5),
(3, 'Potassium', 'build cellulose photosynthesis', 4);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Fid` int(5) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Tid` int(5) NOT NULL,
  `Quantity(kg)` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Fid`, `Fname`, `Tid`, `Quantity(kg)`) VALUES
(1, 'Rice', 2, 50),
(2, 'Potato', 1, 30),
(3, 'Mango', 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `foodtype`
--

CREATE TABLE `foodtype` (
  `FTid` int(5) NOT NULL,
  `FTname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodtype`
--

INSERT INTO `foodtype` (`FTid`, `FTname`) VALUES
(1, 'Vegetable'),
(2, 'Crop'),
(3, 'Fruit');

-- --------------------------------------------------------

--
-- Table structure for table `pesticide`
--

CREATE TABLE `pesticide` (
  `Pid` int(5) NOT NULL,
  `Pname` varchar(20) NOT NULL,
  `PTid` int(5) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesticide`
--

INSERT INTO `pesticide` (`Pid`, `Pname`, `PTid`, `Description`, `Quantity`) VALUES
(1, 'Herbicide', 1, 'destroy plants bearing diseases', '10L'),
(2, 'Fungicide', 2, 'Prevent the growth of fungi on plants', '4L'),
(3, 'Rodenticide', 3, 'eliminate rat and mice populations', '1KG');

-- --------------------------------------------------------

--
-- Table structure for table `presticidetype`
--

CREATE TABLE `presticidetype` (
  `PTid` int(5) NOT NULL,
  `PTname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presticidetype`
--

INSERT INTO `presticidetype` (`PTid`, `PTname`) VALUES
(1, 'Liquid'),
(2, 'Gas'),
(3, 'Solid');

-- --------------------------------------------------------

--
-- Table structure for table `seed`
--

CREATE TABLE `seed` (
  `Sid` int(5) NOT NULL,
  `Sname` varchar(20) NOT NULL,
  `Tid` int(5) NOT NULL,
  `Rate(tk)` int(10) NOT NULL,
  `Quantity(kg)` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seed`
--

INSERT INTO `seed` (`Sid`, `Sname`, `Tid`, `Rate(tk)`, `Quantity(kg)`) VALUES
(1, 'Rice', 2, 300, 50),
(2, 'Potato', 1, 100, 30),
(3, 'Mango', 3, 90, 40);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRid` int(5) NOT NULL,
  `TRname` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `Price(tk)` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRid`, `TRname`, `Description`, `Price(tk)`) VALUES
(1, 'salary', 'debit', 25000),
(2, 'seeds', 'debit', 10000),
(3, 'crops', 'credit', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `Tid` int(5) NOT NULL,
  `Tname` varchar(20) NOT NULL,
  `Symptom` varchar(50) NOT NULL,
  `Pid` int(5) NOT NULL,
  `Frid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`Tid`, `Tname`, `Symptom`, `Pid`, `Frid`) VALUES
(1, 'Blight', 'sudden spotting or dying leaves', 1, 3),
(2, 'Black knot', 'twigs and branches infected by fungus', 2, 1),
(3, 'Crown Gall', 'plants lose vigour and may eventually die', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Uid` int(5) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Uid`, `Uname`, `Phone`, `Email`, `Address`, `Password`) VALUES
(11001, 'Mina Jahan', '01819274474', 'mina77@gmail.com', 'Baridhara', 'mina123'),
(11003, 'Mithu Hasan', '01619272274', 'mithu70@gmail.com', 'Niketon', 'mithu321'),
(110002, 'Raju Ahmed', '01716327664', 'raju55@gmail.com', 'Gulshan', 'raju555');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `Wid` int(5) NOT NULL,
  `Wname` varchar(20) NOT NULL,
  `FoodName` varchar(20) NOT NULL,
  `Quantity(kg)` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`Wid`, `Wname`, `FoodName`, `Quantity(kg)`) VALUES
(1, 'Wellmart', 'Mango', 200),
(2, 'Foodcrate', 'Rice', 1000),
(3, 'Redix', 'Brinjal', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`Frid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `foodtype`
--
ALTER TABLE `foodtype`
  ADD PRIMARY KEY (`FTid`);

--
-- Indexes for table `pesticide`
--
ALTER TABLE `pesticide`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `presticidetype`
--
ALTER TABLE `presticidetype`
  ADD PRIMARY KEY (`PTid`);

--
-- Indexes for table `seed`
--
ALTER TABLE `seed`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Uid`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`Wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17004;
--
-- AUTO_INCREMENT for table `fertilizer`
--
ALTER TABLE `fertilizer`
  MODIFY `Frid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `Fid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `foodtype`
--
ALTER TABLE `foodtype`
  MODIFY `FTid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pesticide`
--
ALTER TABLE `pesticide`
  MODIFY `Pid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `presticidetype`
--
ALTER TABLE `presticidetype`
  MODIFY `PTid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `seed`
--
ALTER TABLE `seed`
  MODIFY `Sid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `Wid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
