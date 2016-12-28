-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2016 at 02:22 PM
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
-- Table structure for table `CYB`
--

CREATE TABLE IF NOT EXISTS `CYB` (
  `Date` varchar(10) COLLATE utf8_bin NOT NULL,
  `Open` float NOT NULL,
  `Close` float NOT NULL,
  `High` float NOT NULL,
  `Low` float NOT NULL,
  `Rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `CYB`
--

INSERT INTO `CYB` (`Date`, `Open`, `Close`, `High`, `Low`, `Rate`) VALUES
('2016-12-22', 1993.04, 1986.27, 1993.04, 1978.74, -0.27223),
('2016-12-28', 1968.15, 1957.16, 1971.51, 1954.96, -0.582388);

-- --------------------------------------------------------

--
-- Table structure for table `SH`
--

CREATE TABLE IF NOT EXISTS `SH` (
  `Date` varchar(10) COLLATE utf8_bin NOT NULL,
  `Open` float NOT NULL,
  `Close` float NOT NULL,
  `High` float NOT NULL,
  `Low` float NOT NULL,
  `Rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `SH`
--

INSERT INTO `SH` (`Date`, `Open`, `Close`, `High`, `Low`, `Rate`) VALUES
('2016-12-28', 3113.77, 3102.24, 3118.78, 3094.55, -0.399025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CYB`
--
ALTER TABLE `CYB`
  ADD PRIMARY KEY (`Date`);

--
-- Indexes for table `SH`
--
ALTER TABLE `SH`
  ADD PRIMARY KEY (`Date`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
