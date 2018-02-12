-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2018 at 01:20 AM
-- Server version: 5.5.57-0+deb8u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `NxMD1W`
--
CREATE DATABASE IF NOT EXISTS `NxMD1W` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `NxMD1W`;

-- --------------------------------------------------------

--
-- Table structure for table `Alarm Records`
--

DROP TABLE IF EXISTS `Alarm Records`;
CREATE TABLE IF NOT EXISTS `Alarm Records` (
`RecordID` int(11) NOT NULL,
  `Error Type` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Date` date DEFAULT '0000-00-00',
  `Time` time DEFAULT '00:00:00',
  `Alarm Time` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Alarm Records`
--

TRUNCATE TABLE `Alarm Records`;
-- --------------------------------------------------------

--
-- Table structure for table `Anti Passback Group`
--

DROP TABLE IF EXISTS `Anti Passback Group`;
CREATE TABLE IF NOT EXISTS `Anti Passback Group` (
`ID` int(11) NOT NULL,
  `Local Door Name` varchar(50) DEFAULT NULL,
  `Anti PassBack Group Name` varchar(50) DEFAULT NULL,
  `Door Name` varchar(50) DEFAULT NULL,
  `Controller Name` varchar(50) DEFAULT NULL,
  `Controller ID` varchar(59) DEFAULT NULL,
  `Controller IP Address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Anti Passback Group`
--

TRUNCATE TABLE `Anti Passback Group`;
-- --------------------------------------------------------

--
-- Table structure for table `Antipassback Log`
--

DROP TABLE IF EXISTS `Antipassback Log`;
CREATE TABLE IF NOT EXISTS `Antipassback Log` (
`RecordID` int(11) NOT NULL,
  `UniqueID` varchar(10) DEFAULT NULL,
  `Employee ID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Employee Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Card Number` text CHARACTER SET utf8 COLLATE utf8_bin,
  `PIN` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Controller ID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Controller Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Door ID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Door Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Entry` tinyint(1) DEFAULT '0',
  `DateTimeEntry` datetime DEFAULT '0000-00-00 00:00:00',
  `Exit` tinyint(1) DEFAULT '0',
  `DateTimeExit` datetime DEFAULT '0000-00-00 00:00:00',
  `Closed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Antipassback Log`
--

TRUNCATE TABLE `Antipassback Log`;
-- --------------------------------------------------------

--
-- Table structure for table `Client Details`
--

DROP TABLE IF EXISTS `Client Details`;
CREATE TABLE IF NOT EXISTS `Client Details` (
`Client ID` int(11) NOT NULL,
  `Client Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Client Logo` blob,
  `Client Email` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Client Telephone` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Client Address` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Client Details`
--

TRUNCATE TABLE `Client Details`;
-- --------------------------------------------------------

--
-- Table structure for table `Controller Parameters`
--

DROP TABLE IF EXISTS `Controller Parameters`;
CREATE TABLE IF NOT EXISTS `Controller Parameters` (
`RecordID` int(11) NOT NULL,
  `Controller ID` varchar(25) DEFAULT NULL,
  `Controller Name` varchar(50) DEFAULT NULL,
  `Controller Type` tinyint(1) NOT NULL,
  `Fire Alarm Time` int(11) NOT NULL,
  `Aux Alarm Time` int(11) NOT NULL,
  `Retrytime` int(11) DEFAULT NULL,
  `Interlock` int(11) DEFAULT NULL,
  `IP Address` varchar(15) NOT NULL,
  `Subnet` varchar(15) NOT NULL,
  `Gateway` varchar(15) NOT NULL,
  `WiFi IP Address` varchar(15) NOT NULL,
  `WiFi Gateway` varchar(15) NOT NULL,
  `WiFi SSID` varchar(25) NOT NULL,
  `WiFi PWD` varchar(25) NOT NULL,
  `WiFi KeyManagement` varchar(10) NOT NULL,
  `Updated` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `Controller Parameters`
--

TRUNCATE TABLE `Controller Parameters`;
--
-- Dumping data for table `Controller Parameters`
--

INSERT INTO `Controller Parameters` (`RecordID`, `Controller ID`, `Controller Name`, `Controller Type`, `Fire Alarm Time`, `Aux Alarm Time`, `Retrytime`, `Interlock`, `IP Address`, `Subnet`, `Gateway`, `WiFi IP Address`, `WiFi Gateway`, `WiFi SSID`, `WiFi PWD`, `WiFi KeyManagement`, `Updated`) VALUES
(4, '', '', 0, 5, 3, 10, 0, '192.168.1.103', '255.255.255.0', '192.168.1.1', '192.168.1.105', '192.168.1.1', 'Pegasus Cable', '1234567890', 'WPA-PSK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Door Interlocking Log`
--

DROP TABLE IF EXISTS `Door Interlocking Log`;
CREATE TABLE IF NOT EXISTS `Door Interlocking Log` (
`ID` int(11) NOT NULL,
  `Card Number` int(11) DEFAULT '0',
  `PIN` int(11) DEFAULT '0',
  `Date` date DEFAULT '0000-00-00',
  `Time` time DEFAULT '00:00:00',
  `Entry` tinyint(1) DEFAULT '0',
  `Controller ID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Controller Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Door ID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Door Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Employee ID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Employee Name` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Door Interlocking Log`
--

TRUNCATE TABLE `Door Interlocking Log`;
-- --------------------------------------------------------

--
-- Table structure for table `Door Parameter`
--

DROP TABLE IF EXISTS `Door Parameter`;
CREATE TABLE IF NOT EXISTS `Door Parameter` (
`ID` int(11) NOT NULL,
  `Controller Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Controller ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Door No` int(1) DEFAULT '0',
  `Door Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Attendance` tinyint(4) DEFAULT NULL,
  `Lock Release Time` int(4) DEFAULT '0',
  `Lock Monitoring Time` int(4) DEFAULT '0',
  `Door Sensor` int(4) DEFAULT NULL,
  `Alarm Record Generation` tinyint(1) DEFAULT '0',
  `Activate Alarm` tinyint(1) DEFAULT '0',
  `Alarm Time` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Door Parameter`
--

TRUNCATE TABLE `Door Parameter`;
-- --------------------------------------------------------

--
-- Table structure for table `DT`
--

DROP TABLE IF EXISTS `DT`;
CREATE TABLE IF NOT EXISTS `DT` (
`RecordID` int(11) NOT NULL,
  `Request Set` varchar(7) NOT NULL,
  `CDT` varchar(30) NOT NULL,
  `Updated` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3276 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `DT`
--

TRUNCATE TABLE `DT`;
-- --------------------------------------------------------

--
-- Table structure for table `Emergency`
--

DROP TABLE IF EXISTS `Emergency`;
CREATE TABLE IF NOT EXISTS `Emergency` (
  `Door Number` int(1) DEFAULT '0',
  `Fire Open` tinyint(1) NOT NULL,
  `Fire Close` tinyint(1) NOT NULL,
  `Aux Open` tinyint(1) NOT NULL,
  `Aux Close` tinyint(1) NOT NULL,
`RowID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Emergency`
--

TRUNCATE TABLE `Emergency`;
-- --------------------------------------------------------

--
-- Table structure for table `Employee TimeZone`
--

DROP TABLE IF EXISTS `Employee TimeZone`;
CREATE TABLE IF NOT EXISTS `Employee TimeZone` (
`Record ID` int(11) NOT NULL,
  `Employee RecID` int(11) DEFAULT NULL,
  `Employee ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Employee Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Controller Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Controller ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Door Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Door Number` int(1) DEFAULT '0',
  `TimeZone ID` int(2) DEFAULT '0',
  `TimeZone Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Employee TimeZone`
--

TRUNCATE TABLE `Employee TimeZone`;
-- --------------------------------------------------------

--
-- Table structure for table `Enroll Info`
--

DROP TABLE IF EXISTS `Enroll Info`;
CREATE TABLE IF NOT EXISTS `Enroll Info` (
`ID` int(11) NOT NULL,
  `Employee RecID` int(11) DEFAULT NULL,
  `Employee ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Employee Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Card Number` int(11) DEFAULT '0',
  `UHF Card Number` int(11) DEFAULT NULL,
  `PIN` int(6) DEFAULT '0',
  `Validity` date DEFAULT '0000-00-00'
) ENGINE=InnoDB AUTO_INCREMENT=10235 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Enroll Info`
--

TRUNCATE TABLE `Enroll Info`;
-- --------------------------------------------------------

--
-- Table structure for table `Error Log`
--

DROP TABLE IF EXISTS `Error Log`;
CREATE TABLE IF NOT EXISTS `Error Log` (
`Record ID` int(11) NOT NULL,
  `Controller Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Controller ID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Door Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Door Number` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Card Number` int(11) DEFAULT '0',
  `PIN` int(11) DEFAULT '0',
  `Date` date DEFAULT '0000-00-00',
  `Time` time DEFAULT '00:00:00',
  `Verification Mode` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Error Type` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Updated Server 1` tinyint(1) DEFAULT '0',
  `Updated Server 2` tinyint(1) DEFAULT '0',
  `Updated Server 3` tinyint(1) DEFAULT '0',
  `Updated Server 4` tinyint(1) DEFAULT '0',
  `Updated Server 5` tinyint(1) DEFAULT '0',
  `Updated Server 6` tinyint(1) DEFAULT '0',
  `Updated Server 7` tinyint(1) DEFAULT '0',
  `Updated Server 8` tinyint(1) DEFAULT '0',
  `Updated Server 9` tinyint(1) DEFAULT '0',
  `Updated Server 10` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Error Log`
--

TRUNCATE TABLE `Error Log`;
-- --------------------------------------------------------

--
-- Table structure for table `FiUp`
--

DROP TABLE IF EXISTS `FiUp`;
CREATE TABLE IF NOT EXISTS `FiUp` (
`RecordID` int(11) NOT NULL,
  `File Update` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `FiUp`
--

TRUNCATE TABLE `FiUp`;
-- --------------------------------------------------------

--
-- Table structure for table `Holidays`
--

DROP TABLE IF EXISTS `Holidays`;
CREATE TABLE IF NOT EXISTS `Holidays` (
`Record ID` int(11) NOT NULL,
  `Holiday Date` date DEFAULT '0000-00-00',
  `Holiday Description` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Holidays`
--

TRUNCATE TABLE `Holidays`;
-- --------------------------------------------------------

--
-- Table structure for table `HTTP Error Txn`
--

DROP TABLE IF EXISTS `HTTP Error Txn`;
CREATE TABLE IF NOT EXISTS `HTTP Error Txn` (
`RecordID` int(11) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `userdata` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `HTTP Error Txn`
--

TRUNCATE TABLE `HTTP Error Txn`;
-- --------------------------------------------------------

--
-- Table structure for table `Installer Details`
--

DROP TABLE IF EXISTS `Installer Details`;
CREATE TABLE IF NOT EXISTS `Installer Details` (
`RecordID` int(11) NOT NULL,
  `Installer Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Installer Logo` blob,
  `Installer Email` varchar(75) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Installer Telephone` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Installer Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Installer Details`
--

TRUNCATE TABLE `Installer Details`;
-- --------------------------------------------------------

--
-- Table structure for table `Login Credentials`
--

DROP TABLE IF EXISTS `Login Credentials`;
CREATE TABLE IF NOT EXISTS `Login Credentials` (
`RecordID` int(11) NOT NULL,
  `Login Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Login Password` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `User Type` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Login Credentials`
--

TRUNCATE TABLE `Login Credentials`;
--
-- Dumping data for table `Login Credentials`
--

INSERT INTO `Login Credentials` (`RecordID`, `Login Name`, `Login Password`, `User Type`) VALUES
(1, 'Pegasus', 'Pegasus', 'Administrator'),
(2, 'Admin', 'Admin', 'Administrator'),
(3, 'User', 'User', 'User'),
(4, 'Pioneer', 'Pioneer', 'Administrator'),
(5, 'Vantage', 'Vantage', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `Login Log`
--

DROP TABLE IF EXISTS `Login Log`;
CREATE TABLE IF NOT EXISTS `Login Log` (
`ID` int(11) NOT NULL,
  `Login Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Log In Date` date DEFAULT '0000-00-00',
  `Log In Time` time DEFAULT '00:00:00',
  `Log Out Time` time DEFAULT '00:00:00',
  `Log Out Date` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Login Log`
--

TRUNCATE TABLE `Login Log`;
-- --------------------------------------------------------

--
-- Table structure for table `Management Log`
--

DROP TABLE IF EXISTS `Management Log`;
CREATE TABLE IF NOT EXISTS `Management Log` (
`Record ID` int(11) NOT NULL,
  `Table Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 1` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 1` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 1` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 2` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 2` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 2` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 3` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 3` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 3` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 4` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 4` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 4` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 5` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 5` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 5` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 6` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 6` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 6` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 7` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 7` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 7` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 8` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 8` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 8` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 9` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 9` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 9` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 10` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 10` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 10` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 11` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 11` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 11` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 12` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 12` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 12` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 13` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 13` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 13` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 14` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 14` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 14` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 15` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 15` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 15` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 16` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 16` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 16` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 17` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 17` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 17` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 18` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 18` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 18` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 19` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 19` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 19` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 20` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 20` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 20` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 21` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 21` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 21` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 22` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 22` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 22` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 23` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 23` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 23` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 24` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 24` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 24` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Field Name 25` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Old Value 25` text CHARACTER SET utf8 COLLATE utf8_bin,
  `New Value 25` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Login Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Server Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Date` date DEFAULT '0000-00-00',
  `Time` time DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Management Log`
--

TRUNCATE TABLE `Management Log`;
-- --------------------------------------------------------

--
-- Table structure for table `MSSQL`
--

DROP TABLE IF EXISTS `MSSQL`;
CREATE TABLE IF NOT EXISTS `MSSQL` (
`RecordID` int(11) NOT NULL,
  `Update Local MSSQL` tinyint(1) DEFAULT '0',
  `Hostname` text CHARACTER SET utf8 COLLATE utf8_bin,
  `InstanceName` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Port` text CHARACTER SET utf8 COLLATE utf8_bin,
  `UID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `PWD` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Database` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Table` text CHARACTER SET utf8 COLLATE utf8_bin,
  `MyServer` text CHARACTER SET utf8 COLLATE utf8_bin,
  `ServerDSN` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Updated` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `MSSQL`
--

TRUNCATE TABLE `MSSQL`;
-- --------------------------------------------------------

--
-- Table structure for table `MSSQL Error Txn`
--

DROP TABLE IF EXISTS `MSSQL Error Txn`;
CREATE TABLE IF NOT EXISTS `MSSQL Error Txn` (
`RecordID` int(11) NOT NULL,
  `connMSSQL` varchar(350) DEFAULT NULL,
  `sqlMSSQL` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `MSSQL Error Txn`
--

TRUNCATE TABLE `MSSQL Error Txn`;
-- --------------------------------------------------------

--
-- Table structure for table `MYSQL`
--

DROP TABLE IF EXISTS `MYSQL`;
CREATE TABLE IF NOT EXISTS `MYSQL` (
`RecordID` int(11) NOT NULL,
  `Update Local MYSQL` tinyint(1) DEFAULT '0',
  `Hostname` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Port` text CHARACTER SET utf8 COLLATE utf8_bin,
  `UID` text CHARACTER SET utf8 COLLATE utf8_bin,
  `PWD` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Database` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Table` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `MYSQL`
--

TRUNCATE TABLE `MYSQL`;
-- --------------------------------------------------------

--
-- Table structure for table `MYSQL Error Txn`
--

DROP TABLE IF EXISTS `MYSQL Error Txn`;
CREATE TABLE IF NOT EXISTS `MYSQL Error Txn` (
`RecordID` int(11) NOT NULL,
  `connMYSQL` varchar(350) DEFAULT NULL,
  `sqlMYSQL` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `MYSQL Error Txn`
--

TRUNCATE TABLE `MYSQL Error Txn`;
-- --------------------------------------------------------

--
-- Table structure for table `OEM Info`
--

DROP TABLE IF EXISTS `OEM Info`;
CREATE TABLE IF NOT EXISTS `OEM Info` (
`RecordID` int(11) NOT NULL,
  `Login Name` varchar(25) NOT NULL,
  `Login Pwd` varchar(25) NOT NULL,
  `User Type` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Website` varchar(50) NOT NULL,
  `LogoImg` blob NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `OEM Info`
--

TRUNCATE TABLE `OEM Info`;
--
-- Dumping data for table `OEM Info`
--

INSERT INTO `OEM Info` (`RecordID`, `Login Name`, `Login Pwd`, `User Type`, `Name`, `Address`, `Phone`, `Email`, `Website`, `LogoImg`) VALUES
(1, 'Pioneer', 'Pioneer', 'Admin', 'Pioneer Systems', 'E-21, Flatted Factory Complex, Jhandewalan, New Delhi. India', '+91 9810766866', 'gupta.manish@pioneersystems.co.in', 'https://www.pioneersystems.co.in', 0xffd8ffe000104a46494600010101006000600000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108005400df03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f56bb5d4f53f18ded841ae5f69d6b6d616b304b58a03b9e492e03126489cf489060103ad58ff00847b53ff00a1cb5cff00bf365ffc8f45a0c7c42d67fec1561ffa36eeb5351bf8b4eb37b9989dabd00ea4fa0a4da8abb1c62e4d28eecc87d0f518812fe34d695475261b21ff00b6f59d31107dff001f6b3e8764366dfcad8d616a5ac5d6a32b34b2111e7e58d4f03fc4d67f07a715e455cceced047b947264d5ea3fb8eca089ae4a88bc7bab963d018ac813f81b7abc340d4d86478cb5b23da1b2ff00e47ae03201f7f5c56ee83afdc59dcc704a5a581c850a4e4a9f6aba399293519a231393b845ce9bbd8e8ffe11ed4ffe872d73fefcd97ff23d2ffc23daa7fd0e7ae7fdf9b2ff00e47add07207bf4a757aa78a607fc23daa7fd0e7ae7fdf9b2ff00e47a3fe11ed53fe873d73fefcd97ff0023d6fd140181ff0008f6a9ff00439eb9ff007e6cbff91e8ff847b54ffa1cf5cffbf365ff00c8f5bf9c519a00c0ff00847b54ff00a1cf5cff00bf365ffc8f47fc23daa7fd0e7ae7fdf9b2ff00e47adfa4cd0060ff00c23daa7fd0e7ae7fdf9b2ffe47a3fe11ed53fe873d73fefcd97ff23d6f669d401cff00fc23daa7fd0e7ae7fdf9b2ff00e47a3fe11ed53fe873d73fefcd97ff0023d7414940181ff08f6a9ff439eb9ff7e6cbff0091e8ff00847b54ff00a1cf5cff00bf365ffc8f5bf9a33da8039fff00847b54ff00a1cf5cff00bf365ffc8f47fc23daa7fd0e5ae7fdf9b2ff00e47adfc9e99a4e7de816fb1ce4ba35fc119797c6daca28ea5a2b2007fe4bd2c5a2dfcc81e3f1aeb4cbea22b2ff00e47ac2f184d39d5bcb727c95405067839ea71f9fe54784679c6ae238b262604b8cf000e87f3c0fc6b83ebbfbef656d0f53fb37fd9bdbf31d0ffc23daa7fd0e5ae7fdf9b2ff00e47a5ff847b54ffa1cf5cffbf365ff00c8f5bdcf6a5cf6aef3cbbe8607fc23daa7fd0e5ae7fdf9b2ff00e47aab6a353d37c61636136bb7da8db5cd85d4cd1dd456e36bc7240aa54c71a1e92b75cf6aea6b9fbc1ff1707461ff0050abff00fd1b6940c2d3fe4a16b3ff0060ab0ffd1b77583e30be7b8d445a2b1db08e9fed1adeb4ff009285acff00d82ac3ff0046ddd719ac48d26b37acdd7ce65fc01c7f4af3b329b8d2b773d6ca29a956727d082d2d64bdb98ede100c8ed819e9f535dc5a78474e86102e51a693b92c401f4c62b0bc1caadad39600e21257eb915df76ce39acf2fc3c250e792b9ae6b8bab0abece0ec8e76f3c21612c47eca1a171d0ee2c3f5a8740f0cb594c6eaf369914e1117a01ea7deb7353bd7b0d3e5ba488cbe58076e71c66b9a1e3838ff9070cff00d76ffeb56b56385a55139e8ce7a33c6d7a4e30775ea7638c2e00aa3a86ab6ba6441ee640a4fdd41c96fa554d3b5cfb7695717d243e5a42cc0a86cf0141f4f7ae06faf25bebb92e65624b1c8c9fbabd80a3138d8d38a70d5bd89c265f2a9524aa68a3b9d5c9e37884804566ec9dc9700fe5cd69e9be26b2d4641102d14a7a249c67e86b013c173b5a891ee9165db9d9b3201f4ce6b9b9636b795e3ce1a362320f420d72bc5626934ea6ccef8e07075d38d17aa3d69e4548da463855049e3a015833f8c34d88663324a7d1531fcf152787efcea7a3b89b991331b7bf1c7f3af3cfae7b56f89c64a118ca1d4e6c1e5f1a95270a9bc4f4787c4966fa70bb99bc952480a4e5b838e82b31fc710ac8025a4863e849700fe5ff00d7ae52cf4fbbbf2c96d033edebce00fc4fd6a3b9b49ace7315c4652403a13d47d6b9678ec47229256476d3cb30aa6e2dddf63d274dd66d75542d0310cbc321e08ad06708a4b1000efe95e77e169597c416ea09c3ee0df4da4ff4ad8f186a8f16cb18d88debbe523d3a63f1fe95db4f1bfb87565d0f36b65fcb89f630eba972f7c5f656d218e20d3b2e72578507eb55adfc6f03362e2d5e319eaac1b8f5ed5ce68da349ac5c3a09046918059baf27dbf03536b5e1e934944905c09919b69214a9071e9cd72bc5629af68968777d4f05197b193f78f40b5bb86f6059ede40e8ddc76a75c5c25b40d34ce111064935e7be1ed4a4b1d4e35c9f2a6708ebefd8d6ef8d64956d2de35cf94ee771cf71d07f3fcabae18c53a2ea2dd1c3532f70c446937a32a6a1e339ccac96512aa03f7df927e82b4bc31aecba946f0ddb86b84f9830006e53edec78fcab89b48927ba82276da8f22ab1f404f5af45b2d0b4fb19567b688aca0637172739f6ce2b9f0952b56a9cd7d11d79851c350a4a9f2eafa99dad6aba5c772d6b7f652ca40077003a1f439151693ade9097315b58584b1b4a42eec0fd4eecd65f8d001ad4471ff002c14fe3b9aa9f870675fb4c7a93ff8e9a896224b15cb65b950c253960fda3bed7df43d1d9d638cbb90aa06493c002b92d4fc6452468ec6305471e63f7fa0feb5a3e2d9258f443e58215a40ae41e83ffd781f8d79f80318edf956b8ec4ce12f671d0cb2cc153ab1f6b3d75d8ed3c35e219ef6ededef1c333fcd19000c7aaff9f7ab979ff250b46ffb055fff00e8db3a974ef0fe9b6fe45c2465a55f98485cf27d700e2a2bcff9285a37fd82afff00f46d9d76e1a351535ed1dcf3b172a52a8dd2564169ff00250b59ff00b05587fe8dbbae63c516cd6dad4c48c2cb875f7ec6ba7b4ff9285acffd82ac3ff46ddd4fe20d186ab6bf2713c60943ebed518da2ead2b2dcd72fc42a159396cce1f47d44e97a8c7391941f2381d707bd7a3dadedbde42b2c12abab0e3079af2d9a196de678a6429229c1078a676c579387c5cb0feeb47b98bc04314d4d4accf4ad76e204d22ed2499159a260a0919271c015e683eb4a49fa8a69e99c56789c4fb79276b58db0583fab45c6f7b9d2e9a641e0ad4047d7cde78cf185cfe95cd8073d4fe15d9f84e34b8d06f6da4fbaee41fc500ae52face5b1ba7b79410cac719fe21d88f5ad2bc64e9539adac6385a9155ead37bdcbd15bebd790874fb63c64719720107f1a43e1bd61c9cd9b67be5d7fc6ad697e2ab8d3ad9609215991461096da47b679cd3ef7c5f7970365baadb83c93b8337ebda9db0d2827393b93cd8c8d46a108a5dcdaf0ce9775a6db5c7da9363ca4109b81c003db3eb5c1919af4dd23501a8e98970786230c0f63debcc89c03f4abc74631a5051d8cb2c9ce55aab9efa1dd78300fec89ce013e79edfecad6478cc01acc78ef02ff0036ad7f051ff8934c7bf9e7ff00415ac7f1ab7fc4e62c7fcf05ff00d09ab6adfee4be46187ff9194be653f0c0c7886d7eadff00a0b549e2adff00dbf2ef248c2edfa607f5cd33c31ff2315afd5bff00416adaf18696f26cbe894b6c1b64c7a7635cf4e9b9e0da5dceba95230c7ae6ea8e62c8df79cd1d934db9b19113119fae3eb571f43d6ae3996de6908e8647ce3f3354ac3509f4eba5b88082c38da790c3deba36f1bc8632058207c753271f962b3a5ec6506aa49af235c43c446a73518277ea675bf85f5569d035b9894b025cbafcbfad76fa8e9d16a564f6f28e0f2a7d0f635cce87e23b9bad57c9ba7ca4dc2607dd22b635ed6e6d1d63296cb2abf1bcbe029fa57a586546345c96c7938b789a95e30925ccb6b1c15e5a4963752dbca3e74383efdc7e95d9f84f5592f217b59db73c401563dd7ffad5c5dede497d7725cca4798e7271c01c63f95753e0ab17569af2452148f2d0904679049fd0570e0656af6a7f09e8e6314f0b7abf114fc69ceb310f4807fe84d54fc33ff2315a7fc087fe3ad53f8be40fad9c60948957f527fad54f0fbf97afdab13c6f23f3047f5a9a92ff006b6fccaa517f50b7f74f46bbb58af6da482650c8e3041af33d574e7d32fdeddbe651ca31fe2527ad77bae6a92e9368278e012aeec37cd8c67a5701a9ea336ab75f68982860bb542f4033d3f5aeacca54ac93f88e3c9e1593725f03fcce93c23aac8d29d3e56dca0168c93efc8ad1bcff009285a37fd82aff00ff0046d9d60f842c9e6d4bed454f9708386ed9231f8d6f5e7fc942d1bfec157fff00a36cebab00e4e8ae6387328c235da805a7fc943d67fec1561ffa36eeb7fbf4ac1b4ff9287acffd82ac3ff46ddd7418aed380cfbfd26cf514c4f08247461c11f8d614de08808062bc74ff007d437f857584715887c43109e68d6caf64114863678e1dca083f5ae5ad468b779a3aa86231304fd9b7a19f0f826d828f36ee563fec285ff1ab8de11d2cc3b02481b1f7f79cff00856bdbdcc7756e9342dbe371953ea2a60dce334e386a09691439e3312dfbd2665e91a3ae91e72a4cd2248c180618c7af3deacdfe9769a9c5b2e220d8e8dd08fa1aa773af456f7935b0b3bc9a48b1b8c31ee1c807d6a53acdb182de55decb34e2dc0dbcab9e390718e955fba51e4e843f6ee7ed3a98d2f82603cc378f18efbd41ff000a9adbc196711569a6965f551f2a9fcb9fd6b4aeb5b82d6e0dbac53cf2ae3788632db07a9a5b8d6ed60b282f725e199c2065ed9f5cf4c62b2fabe1d3e6b1d0f138c9251bbd4bf15bc56f088a140a8060015cfbf832c1989592e147f755c607e62b62e7508ad56d99b73adc4ab121419c16e87e9545bc429f689a28ec2fa611398d9a2872320fd6b4aaa93d25d0c294abc6f281734cd361d2ad0dbdb96605b73163924f4fe955b55f0fda6ab3acd3348b22aedca30e9d7a11ef4936ba90c76ccd6578649f76d8845971b4f3919fc7e94e8b5c5912777b1bc816189a52658f6838ec39eb43f64e3c8f6147db465ed13d4874ff000c59e9d789751c9333ae76ef6181918ec3deb6d9430c1008ee0d6227892164123595f245b77195a1c26319ce413c56c79c861f377811edddbbb63d6aa92a695a24d67564d3a9b9897be12b0ba90c91ee809e4843c7e46a8af81d037cf7cc63eca23c1fcf3fd2b5e2d7eda59550c7731c6c4059a484aa313c6335720bd49a49a3dae8f136195b19c763f4358ba187a8ef647447158aa6b95499534dd06cb4c6df1a9797fe7a39c9ab7a85845a8d9bdb4b9018751d41ec6ab3eb56eb6fe76d9583b9489517264c0e4a81db8ea69abadc52412ba4174648c0dd018bf79827190335a254547915ac62dd794bda3bdfb946cfc1f656f22c933bce41fbadc2fe55d12c6b1a0555000e800e9584be2547631ae9ba8974c6e5f2395c8cf3cd3cf88879f3451d85f4c22731b3470ee191f8d4c25469af74aabf58aaef3d6c2ea3e19b2d42edae64795247c6ed8c39c0c7706a2b4f09585add473ac933b46c194330c647d055897c41043f63135bdc446e890aaea015c103e604f1d6a6bdd621b1bcb6b67572f70c1576e303271cf3effa50e9d072e7b6a355312a3c89bb172e2de3b9b7920957723a9523dab9eb7f0659c72ee9a6925193f2fdd047a7afeb5a371aec10ced0ac37136d38778a22ca87dcd684134771124b1b064619523b8ab70a5565792bd88854af42368b6931d0c115bc6b1c48a883a051802b0ef3fe4a168dff0060abff00fd1b675d060573f79ff250b46ffb055fff00e8db3ad9249591cf76f562da7fc943d67fec1561ff00a36eeba0ae76d0e3e216b19efa5d87e3fbdbbae8b34c043d0d7196eee936a423d661b11f6b93f74ea873efc9c8ff00eb576754db49d3de4323d95bb3b1c9668c124fe55856a6e76b1d146b2a69a7d7faea73d6d98b4486e618f3fd9f2b00540fdec638623ea326b534865bebab8d480cc6e7cb84ff00b23a9fc4e7f2ab77b672cf682de09cdb29e18a20395ee0678153dadb25a5ac76f18f92350ab530a6d4d764554aaa516d6eff00239d4b6bcb9f116aa2d6f7ecdb7cadf8883eecaf1d7a743f9d3f51b25b0874e891cc85b514776206598e7f0ae856de1491e458903c98dec072d8e993de964822976f991a3ec60ebb8670c3a11ef47d5d24d09625dd76461d8dec16575a8c57b3a4729b832297f977210318f5e845673a96b2b476e619f561246a474524e3f0ea7f1aeae6b4b7b86569a08a42a72a5d41c1fc69cf6f0c8103c68c11832e46704742297b0d2dd8a8e222a5cd6dce635257b6b8b0b27cb462f63785c8cfcbce549f504fe447bd57b57912e35111eb50d88fb5c9fbb7446cfbf27fce2bae92de19767991a3ec60cbb86769f51ef503e93a74b23492595bb3b1c9668c127f4a99619f35d7ea5431494395afc9fe6737a8b3b5ce92e75588bfefbfd2f62ed1c7a671ed564c8ef657c1b5b8afbfd164c4491a0c71d783effad6e3e9961246b1bd9c0c8a4955280819e4e062963d36c610e23b48103a956da80641ea0fb53f612bdff562fac2b256dbc977b9cb343a847a2dac92dec92e9d244a2548e250c8854772391eb5d39584e9e555449079780abcee5c741ebc55910c422f2822f97b76ecc718f4c509147146b1a2aaa28c051c002b4a74790cead77535b7e9fd33913711416b18b6be8aea0665516338567196c6deb9efdf35a7ae4411ed1d32ad7132dac8578ca31e47f9f5ad71676cb3f9e218fcdc637ed1bb1f5a7cb0433ecf36347d8c19770ce08ee3dea5516a2d0fdbae64edb18fab416b0c7661cbdbf96d88668c71171d0f600f4a8f48b832ea92c6f3c179b21045d471807a9f9491fd2b75e28e5428e8aca7a83c834d86da0b74d90c51c6bd70800155ecbdfe65b10aafb9caf731f4d1ff00151eb1c0ff00963d3afdd359368f22dcea023d6a1b0ff4b90f96e88d9f7e4e7ffd55d7ac11248f22c68aef8dcc072d8e993deabbe95a7c92191ecadd9d8e4b18c124fe5532a0ddadbebe4690c4257badd2ecf6f539dd4236bbb8d2e17bb174654b85f390001be5ea00e38e3f2aaed3497f2595f4913479bd820e7b6dc93fa922baf8ecad611188ede24f2f3e5ed503667ae3d297ec96c5554c31e15fcc0368e1bd7eb532c3733bdca8e29455ac7393b4105f5d1b6bf16336fcbc3385db21c7de03af3ed5b1a2bf9ba55bc9e42c3b973b157007e1efd6adcb696f3b2b4b0c72153952ca0e0fb54a155400000056b4e972cae6352aa94794515cfde7fc942d1bfec157ff00fa36ceba0ae7af09ff008581a375ff009055ff006ffa6b695b1896b50f0c69ba9ea06fe637d1dd344b0b3daea1716db914b328223750705db93cf26abffc21ba5ffcfd6b9ff83dbdff00e3d4514007fc21ba5ffcfd6b9ff83dbdff00e3d47fc21ba5ff00cfd6b9ff0083dbdffe3d4514009ff086e97ff3f5ae7fe0f6f7ff008f51ff00087697ff003f5ae7fe0f6f7ff8f5145310bff086e97ff3f5ae7fe0f6f7ff008f51ff00086e97ff003f5ae7fe0f6f7ff8f51452187fc21ba5ff00cfd6b9ff0083dbdffe3d47fc21ba5ffcfd6b9ff83dbdff00e3d4514007fc21ba5ffcfd6b9ff83dbdff00e3d47fc21ba5ff00cfd6b9ff0083dbdffe3d4514007fc21ba5ff00cfd6b9ff0083dbdffe3d47fc21ba5ffcfd6b9ff83dbdff00e3d4514007fc21ba5ffcfd6b9ff83dbdff00e3d47fc21ba5ff00cfd6b9ff0083dbdffe3d4514007fc21ba5ff00cfd6b9ff0083dbdffe3d47fc21ba5ffcfd6b9ff83dbdff00e3d4514007fc21ba5ffcfd6b9ff83dbdff00e3d47fc21ba5ff00cfd6b9ff0083dbdffe3d4514007fc21ba5ff00cfd6b9ff0083dbdffe3d47fc21ba5ffcfd6b9ff83dbdff00e3d4514007fc21ba5ffcfd6b9ff83dbdff00e3d47fc21ba5ff00cfd6b9ff0083dbdffe3d4514007fc21ba5ff00cfd6b9ff0083dbdffe3d47fc21ba5ffcfd6b9ff83dbdff00e3d4514007fc21ba5ffcfd6b9ff83dbdff00e3d53e9fe17d334dd416fe1fb6cb72b1342af75a84f71b518a960048ec064a2f4f4a28a00fffd9);

-- --------------------------------------------------------

--
-- Table structure for table `Restart`
--

DROP TABLE IF EXISTS `Restart`;
CREATE TABLE IF NOT EXISTS `Restart` (
`RecordID` int(11) NOT NULL,
  `Restart` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `Restart`
--

TRUNCATE TABLE `Restart`;
-- --------------------------------------------------------

--
-- Table structure for table `Time Zone`
--

DROP TABLE IF EXISTS `Time Zone`;
CREATE TABLE IF NOT EXISTS `Time Zone` (
`ID` int(11) NOT NULL,
  `TimeZone ID` int(11) DEFAULT '0',
  `TimeZone Name` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Start Time` time DEFAULT '00:00:00',
  `End Time` time DEFAULT '00:00:00',
  `Sunday` tinyint(1) DEFAULT '0',
  `Monday` tinyint(1) DEFAULT '0',
  `Tuesday` tinyint(1) DEFAULT '0',
  `Wednesday` tinyint(1) DEFAULT '0',
  `Thursday` tinyint(1) DEFAULT '0',
  `Friday` tinyint(1) DEFAULT '0',
  `Saturday` tinyint(1) DEFAULT '0',
  `Holiday` tinyint(1) DEFAULT '0',
  `Anti Passback` tinyint(1) DEFAULT '0',
  `Verification Mode` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Validity Date` date DEFAULT '0000-00-00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `Time Zone`
--

TRUNCATE TABLE `Time Zone`;
-- --------------------------------------------------------

--
-- Table structure for table `Txn`
--

DROP TABLE IF EXISTS `Txn`;
CREATE TABLE IF NOT EXISTS `Txn` (
`Record ID` int(11) NOT NULL,
  `Employee RecID` int(11) DEFAULT NULL,
  `Employee ID` varchar(25) DEFAULT NULL,
  `Employee Name` varchar(50) DEFAULT NULL,
  `Controller Name` varchar(50) DEFAULT NULL,
  `Controller ID` varchar(25) DEFAULT NULL,
  `Door Name` varchar(50) DEFAULT NULL,
  `Door Number` varchar(25) DEFAULT NULL,
  `Card Number` int(11) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  `Verification Mode` varchar(25) DEFAULT NULL,
  `EXR` varchar(25) DEFAULT NULL,
  `Status` varchar(7) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Shown` tinyint(1) DEFAULT NULL,
  `Product Serial Number` varchar(25) DEFAULT NULL,
  `Model` varchar(10) DEFAULT NULL,
  `Attendance` tinyint(4) DEFAULT NULL,
  `Processed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `Txn`
--

TRUNCATE TABLE `Txn`;
-- --------------------------------------------------------

--
-- Table structure for table `URL`
--

DROP TABLE IF EXISTS `URL`;
CREATE TABLE IF NOT EXISTS `URL` (
`RecordID` int(11) NOT NULL,
  `Update Cloud` tinyint(1) DEFAULT '0',
  `url` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `URL`
--

TRUNCATE TABLE `URL`;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alarm Records`
--
ALTER TABLE `Alarm Records`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Anti Passback Group`
--
ALTER TABLE `Anti Passback Group`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Antipassback Log`
--
ALTER TABLE `Antipassback Log`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Client Details`
--
ALTER TABLE `Client Details`
 ADD PRIMARY KEY (`Client ID`);

--
-- Indexes for table `Controller Parameters`
--
ALTER TABLE `Controller Parameters`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Door Interlocking Log`
--
ALTER TABLE `Door Interlocking Log`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Door Parameter`
--
ALTER TABLE `Door Parameter`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `DT`
--
ALTER TABLE `DT`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Emergency`
--
ALTER TABLE `Emergency`
 ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `Employee TimeZone`
--
ALTER TABLE `Employee TimeZone`
 ADD PRIMARY KEY (`Record ID`);

--
-- Indexes for table `Enroll Info`
--
ALTER TABLE `Enroll Info`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Error Log`
--
ALTER TABLE `Error Log`
 ADD PRIMARY KEY (`Record ID`);

--
-- Indexes for table `FiUp`
--
ALTER TABLE `FiUp`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Holidays`
--
ALTER TABLE `Holidays`
 ADD PRIMARY KEY (`Record ID`);

--
-- Indexes for table `HTTP Error Txn`
--
ALTER TABLE `HTTP Error Txn`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Installer Details`
--
ALTER TABLE `Installer Details`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Login Credentials`
--
ALTER TABLE `Login Credentials`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Login Log`
--
ALTER TABLE `Login Log`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Management Log`
--
ALTER TABLE `Management Log`
 ADD PRIMARY KEY (`Record ID`);

--
-- Indexes for table `MSSQL`
--
ALTER TABLE `MSSQL`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `MSSQL Error Txn`
--
ALTER TABLE `MSSQL Error Txn`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `MYSQL`
--
ALTER TABLE `MYSQL`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `MYSQL Error Txn`
--
ALTER TABLE `MYSQL Error Txn`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `OEM Info`
--
ALTER TABLE `OEM Info`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Restart`
--
ALTER TABLE `Restart`
 ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `Time Zone`
--
ALTER TABLE `Time Zone`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Txn`
--
ALTER TABLE `Txn`
 ADD PRIMARY KEY (`Record ID`);

--
-- Indexes for table `URL`
--
ALTER TABLE `URL`
 ADD PRIMARY KEY (`RecordID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Alarm Records`
--
ALTER TABLE `Alarm Records`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Anti Passback Group`
--
ALTER TABLE `Anti Passback Group`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Antipassback Log`
--
ALTER TABLE `Antipassback Log`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Client Details`
--
ALTER TABLE `Client Details`
MODIFY `Client ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Controller Parameters`
--
ALTER TABLE `Controller Parameters`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Door Interlocking Log`
--
ALTER TABLE `Door Interlocking Log`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Door Parameter`
--
ALTER TABLE `Door Parameter`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `DT`
--
ALTER TABLE `DT`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3276;
--
-- AUTO_INCREMENT for table `Emergency`
--
ALTER TABLE `Emergency`
MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Employee TimeZone`
--
ALTER TABLE `Employee TimeZone`
MODIFY `Record ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Enroll Info`
--
ALTER TABLE `Enroll Info`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10235;
--
-- AUTO_INCREMENT for table `Error Log`
--
ALTER TABLE `Error Log`
MODIFY `Record ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FiUp`
--
ALTER TABLE `FiUp`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Holidays`
--
ALTER TABLE `Holidays`
MODIFY `Record ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `HTTP Error Txn`
--
ALTER TABLE `HTTP Error Txn`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Installer Details`
--
ALTER TABLE `Installer Details`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Login Credentials`
--
ALTER TABLE `Login Credentials`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Login Log`
--
ALTER TABLE `Login Log`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Management Log`
--
ALTER TABLE `Management Log`
MODIFY `Record ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `MSSQL`
--
ALTER TABLE `MSSQL`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `MSSQL Error Txn`
--
ALTER TABLE `MSSQL Error Txn`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `MYSQL`
--
ALTER TABLE `MYSQL`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `MYSQL Error Txn`
--
ALTER TABLE `MYSQL Error Txn`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `OEM Info`
--
ALTER TABLE `OEM Info`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Restart`
--
ALTER TABLE `Restart`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Time Zone`
--
ALTER TABLE `Time Zone`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Txn`
--
ALTER TABLE `Txn`
MODIFY `Record ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `URL`
--
ALTER TABLE `URL`
MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
