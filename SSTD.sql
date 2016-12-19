-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2016 at 04:25 PM
-- Server version: 5.6.31-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SSTD`
--

-- --------------------------------------------------------

--
-- Table structure for table `Detail`
--

CREATE TABLE IF NOT EXISTS `Detail` (
  `ID` int(11) NOT NULL,
  `code` varchar(6) COLLATE utf8_bin NOT NULL,
  `After_Date` varchar(10) COLLATE utf8_bin NOT NULL,
  `Open` float NOT NULL,
  `High` float NOT NULL,
  `Low` float NOT NULL,
  `Close` float NOT NULL,
  `Rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Detail`
--

INSERT INTO `Detail` (`ID`, `code`, `After_Date`, `Open`, `High`, `Low`, `Close`, `Rate`) VALUES
(17, '300325', '2016-12-19', 6.85, 7.2, 6.85, 7.07, 2.76),
(18, '000635', '2016-12-19', 29.98, 31.38, 28.61, 29.26, -3.02),
(19, '002273', '2016-12-19', 20.1, 20.19, 19.72, 19.74, -1.79),
(20, '300356', '2016-12-19', 34.5, 34.7, 33.61, 33.79, -2.93),
(17, '300325', '2016-12-19', 6.85, 7.2, 6.85, 7.07, 2.76),
(18, '000635', '2016-12-19', 29.98, 31.38, 28.61, 29.26, -3.02),
(19, '002273', '2016-12-19', 20.1, 20.19, 19.72, 19.74, -1.79),
(20, '300356', '2016-12-19', 34.5, 34.7, 33.61, 33.79, -2.93);

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE IF NOT EXISTS `History` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `Code` varchar(6) COLLATE utf8_bin NOT NULL,
  `Name` varchar(16) COLLATE utf8_bin NOT NULL,
  `Enter_Date` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `History`
--

INSERT INTO `History` (`ID`, `Code`, `Name`, `Enter_Date`) VALUES
(17, '300325', '德威新材', '2016-12-19'),
(18, '000635', '英力特', '2016-12-19'),
(19, '002273', '水晶光电', '2016-12-19'),
(20, '300356', '光一科技', '2016-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `Stack_Pool`
--

CREATE TABLE IF NOT EXISTS `Stack_Pool` (
  `ID` int(5) NOT NULL,
  `Code` varchar(6) COLLATE utf8_bin NOT NULL,
  `Name` varchar(16) COLLATE utf8_bin NOT NULL,
  `Enter_Date` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Stack_Pool`
--

INSERT INTO `Stack_Pool` (`ID`, `Code`, `Name`, `Enter_Date`) VALUES
(21, '300104', '乐视网', '2016-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `Code` varchar(6) COLLATE utf8_bin NOT NULL,
  `Name` varchar(16) COLLATE utf8_bin NOT NULL,
  `Enter_Date` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`ID`, `Code`, `Name`, `Enter_Date`) VALUES
(3, '600633', '浙报传媒', '2016-12-19'),
(4, '601579', '会稽山', '2016-12-19'),
(5, '000716', '黑芝麻', '2016-12-19'),
(6, '002481', '双塔食品', '2016-12-19'),
(7, '600609', '金杯汽车', '2016-12-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Stack_Pool`
--
ALTER TABLE `Stack_Pool`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Stack_Pool`
--
ALTER TABLE `Stack_Pool`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
