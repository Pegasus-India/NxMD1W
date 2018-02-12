-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2018 at 12:04 AM
-- Server version: 5.5.57-0+deb8u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `PSN`
--
CREATE DATABASE IF NOT EXISTS `PSN` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `PSN`;

-- --------------------------------------------------------

--
-- Table structure for table `PSN`
--

DROP TABLE IF EXISTS `PSN`;
CREATE TABLE IF NOT EXISTS `PSN` (
`RecordID` int(11) NOT NULL,
  `PSN` varchar(25) DEFAULT NULL,
  `Manufacturer Name` varchar(50) NOT NULL,
  `Model` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `PSN`
--

TRUNCATE TABLE `PSN`;
--
-- Dumping data for table `PSN`
--

INSERT INTO `PSN` (`RecordID`, `PSN`, `Manufacturer Name`, `Model`) VALUES
(1, 'PEPL201709150140', 'Pegasus Equipments Pvt Ltd', 'NxMD1W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PSN`
--
ALTER TABLE `PSN`
 ADD PRIMARY KEY (`RecordID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PSN`
--
ALTER TABLE `PSN`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
