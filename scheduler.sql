-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2016 at 09:21 AM
-- Server version: 5.6.31-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE IF NOT EXISTS `classroom` (
  `classroom_id` int(5) NOT NULL,
  `building` varchar(5) COLLATE utf8_bin NOT NULL,
  `room` varchar(5) COLLATE utf8_bin NOT NULL,
  `capacity` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classroom_id`, `building`, `room`, `capacity`) VALUES
(3, '42', '114A', 35),
(4, '42', '115B', 30);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(5) NOT NULL,
  `prefix` varchar(10) COLLATE utf8_bin NOT NULL,
  `code` int(5) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `credits` int(3) NOT NULL,
  `section_prefix` varchar(10) COLLATE utf8_bin NOT NULL,
  `assigned` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB AUTO_INCREMENT=4842 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `prefix`, `code`, `name`, `credits`, `section_prefix`, `assigned`) VALUES
(4837, 'APCT', 408, 'Database', 3, 'sss-1', 'Y'),
(4838, 'APCT', 408, 'Database', 3, 'sss-2', 'Y'),
(4839, 'APCT', 407, 'Network', 3, 'ddd-1', 'Y'),
(4841, 'APCT', 407, 'Network', 3, 'ddd-3', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE IF NOT EXISTS `professor` (
  `pid` int(5) NOT NULL,
  `firstname` varchar(15) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(15) COLLATE utf8_bin NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`pid`, `firstname`, `lastname`, `type`) VALUES
(19, 'Briana', 'Wellman', 'Full Time'),
(20, 'Lily', 'Liang', 'Full Time'),
(26, 'Anthony', 'Benitez', 'Adjunct'),
(34, 'Li', 'Chen', 'Full Time');

-- --------------------------------------------------------

--
-- Table structure for table `take`
--

CREATE TABLE IF NOT EXISTS `take` (
  `id` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  `course_id` int(5) NOT NULL,
  `cid` int(5) NOT NULL,
  `sid` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `take`
--

INSERT INTO `take` (`id`, `pid`, `course_id`, `cid`, `sid`) VALUES
(11, 19, 4837, 3, 50),
(13, 34, 4838, 4, 49),
(15, 26, 0, 3, 52),
(17, 34, 4841, 3, 52),
(18, 20, 4839, -1, 51);

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE IF NOT EXISTS `time_slot` (
  `slot_id` int(3) NOT NULL,
  `day` set('Su','M','T','W','TR','F','Sa') COLLATE utf8_bin NOT NULL,
  `start` varchar(20) COLLATE utf8_bin NOT NULL,
  `end` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`slot_id`, `day`, `start`, `end`) VALUES
(49, 'M,T,W', '10:00 AM', '11:30 AM'),
(50, 'F', '2:00 PM', '3:30 PM'),
(51, 'TR', '6:00 PM', '8:45 PM'),
(52, 'T', '11:00 AM', '12:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `take`
--
ALTER TABLE `take`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`slot_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `classroom_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4842;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `pid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `take`
--
ALTER TABLE `take`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `slot_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
