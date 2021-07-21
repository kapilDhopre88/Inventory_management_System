-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 12:58 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventoryonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `itemaddtable`
--

CREATE TABLE `itemaddtable` (
  `id` int(11) NOT NULL,
  `invoisenumber` int(11) NOT NULL,
  `vendorname` text NOT NULL,
  `vendortype` text NOT NULL,
  `date` text NOT NULL,
  `itemname` text NOT NULL,
  `itemprice` int(11) NOT NULL,
  `itemquantity` int(11) NOT NULL,
  `itemtotal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemaddtable`
--

INSERT INTO `itemaddtable` (`id`, `invoisenumber`, `vendorname`, `vendortype`, `date`, `itemname`, `itemprice`, `itemquantity`, `itemtotal`) VALUES
(1, 169516, 'Rita', 'Seller', '2021-04-11T13:07', 'Chair  ', 400, 4, 1600),
(2, 169516, 'Rita', 'Seller', '2021-04-11T13:07', 'Table  ', 500, 3, 1500),
(1, 112117, 'Praful basewar', 'Purchaser', '2021-04-11T13:17', 'Table  ', 500, 3, 1500),
(2, 112117, 'Praful basewar', 'Purchaser', '2021-04-11T13:17', 'Chair  ', 400, 2, 800),
(1, 186838, 'Kapil Dhopre', 'Purchaser', '2021-04-11T13:26', 'Chair  ', 400, 2, 800),
(2, 186838, 'Kapil Dhopre', 'Purchaser', '2021-04-11T13:26', 'Window  ', 1000, 3, 3000),
(1, 185132, '', 'default', '', 'Table  ', 500, 1, 500),
(1, 132016, '', 'default', '', 'Table  ', 500, 2, 1000),
(1, 166595, 'Praful basewar', 'Purchaser', '2021-04-11T13:31', 'Table  ', 500, 1, 500),
(1, 179355, '', 'default', '', 'Table  ', 500, 3, 1500),
(1, 152579, 'Rita', 'Seller', '2021-04-11T19:44', 'Chair  ', 400, 1, 400),
(2, 152579, 'Rita', 'Seller', '2021-04-11T19:44', 'Table  ', 500, 1, 500),
(1, 157169, 'Praful basewar', 'Purchaser', '2021-04-12T18:38', 'Chair  ', 400, 3, 1200),
(1, 191561, 'Nikhil donge', 'Seller', '2021-04-27T21:58', 'Chair  ', 400, 5, 2000),
(3, 157169, 'Praful basewar', 'Purchaser', '2021-04-12T18:38', 'Window  ', 1000, 4, 4000),
(2, 191561, 'Nikhil donge', 'Seller', '2021-04-27T21:58', 'Table  ', 500, 2, 1000),
(1, 179571, 'Dipti', 'Seller', '2021-04-29T18:15', 'Window  ', 1000, 4, 4000),
(2, 141013, 'mrunal', 'Purchaser', '2021-04-27T22:13', 'chair  ', 100, 2, 200),
(3, 141013, 'mrunal', 'Purchaser', '2021-04-27T22:13', 'Window  ', 1000, 4, 4000),
(2, 179571, 'Dipti', 'Seller', '2021-04-29T18:15', 'table  ', 1000, 3, 3000),
(1, 165629, '', 'default', '', 'chair  ', 100, 4, 400);

-- --------------------------------------------------------

--
-- Table structure for table `itemform`
--

CREATE TABLE `itemform` (
  `id` int(11) NOT NULL,
  `itemname` text NOT NULL,
  `itemprice` int(11) NOT NULL,
  `itemtype` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemform`
--

INSERT INTO `itemform` (`id`, `itemname`, `itemprice`, `itemtype`) VALUES
(1, 'Table', 500, 'Furniture'),
(2, 'Chair', 400, 'Furniture'),
(3, 'Window', 1000, 'Glass'),
(4, 'table', 1000, 'Glass'),
(5, 'chair', 100, 'plastic');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`id`, `name`, `email`, `username`, `password`, `status`, `otp`) VALUES
(3, 'RITA SHANKAR JADHAV', 'ritajadhav09@gmail.com', 'ritajadhav', '123', 1, 251324),
(2, 'Dipti', 'diptithool11@gmail.com', 'dipti', '123', 1, 796866);

-- --------------------------------------------------------

--
-- Table structure for table `unitform`
--

CREATE TABLE `unitform` (
  `id` int(11) NOT NULL,
  `unitname` text NOT NULL,
  `unittquantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitform`
--

INSERT INTO `unitform` (`id`, `unitname`, `unittquantity`) VALUES
(1, 'Furniture', 5),
(2, 'Glass', 5),
(3, 'Steel', 10),
(4, 'plastic', 15),
(5, 'foam', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vendorform`
--

CREATE TABLE `vendorform` (
  `id` int(11) NOT NULL,
  `vendorname` text NOT NULL,
  `vendoraddress` text NOT NULL,
  `vendormob` text NOT NULL,
  `vendoremail` text NOT NULL,
  `vendortype` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorform`
--

INSERT INTO `vendorform` (`id`, `vendorname`, `vendoraddress`, `vendormob`, `vendoremail`, `vendortype`) VALUES
(6, 'Praful basewar', 'omkar laun', '9587415555', 'prafulbasewar@gmail.com', 'Purchaser'),
(3, 'Rita', 'plot no. 206\r\naaradhana nagar dighori ring road', '7887510952', 'ritajadhav09@gmail.com', 'Seller'),
(5, 'Kapil Dhopre', 'Nagpur', '6363336929', 'ritajadhav09@gmail.com', 'Purchaser'),
(7, 'Dipti', 'omkar nagar', '9763482387', 'diptithool11@gmail.com', 'Seller'),
(8, 'Nikhil donge', 'mahal', '6363336929', 'ritajadhav09@gmail.com', 'Seller'),
(9, 'mrunal', 'jam', '7887510952', 'ritajadhav09@gmail.com', 'Purchaser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemform`
--
ALTER TABLE `itemform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unitform`
--
ALTER TABLE `unitform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendorform`
--
ALTER TABLE `vendorform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itemform`
--
ALTER TABLE `itemform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `unitform`
--
ALTER TABLE `unitform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vendorform`
--
ALTER TABLE `vendorform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
