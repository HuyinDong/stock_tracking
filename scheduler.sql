-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2016 at 11:32 AM
-- Server version: 5.6.30-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.3

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
-- Table structure for table `addclasses`
--

CREATE TABLE IF NOT EXISTS `addclasses` (
  `id` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  `course_id` int(5) NOT NULL,
  `classroom_id` int(5) NOT NULL,
  `time_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE IF NOT EXISTS `classroom` (
  `classroom_id` int(5) NOT NULL,
  `building` varchar(5) COLLATE utf8_bin NOT NULL,
  `room` varchar(5) COLLATE utf8_bin NOT NULL,
  `capacity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(5) NOT NULL,
  `prefix` varchar(10) COLLATE utf8_bin NOT NULL,
  `code` int(5) NOT NULL,
  `credits` int(3) NOT NULL,
  `section_prefix` varchar(10) COLLATE utf8_bin NOT NULL,
  `numbers` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE IF NOT EXISTS `professor` (
  `pid` int(5) NOT NULL,
  `firstname` varchar(15) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(15) COLLATE utf8_bin NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE IF NOT EXISTS `time_slot` (
  `time_id` int(3) NOT NULL,
  `day` enum('Sunday','Monday','Tuesday','Wednsday','Thrusday','Friday','Saturday') COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addclasses`
--
ALTER TABLE `addclasses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`time_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `classroom_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `pid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `time_id` int(3) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
