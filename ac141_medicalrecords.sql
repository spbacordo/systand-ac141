-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2016 at 03:58 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ac141_medicalrecords`
--

-- --------------------------------------------------------

--
-- Table structure for table `demographic`
--

CREATE TABLE IF NOT EXISTS `demographic` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `mobile_number` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demographic`
--

INSERT INTO `demographic` (`id`, `name`, `age`, `gender`, `birthday`, `address`, `nationality`, `marital_status`, `mobile_number`) VALUES
(1, 'Bweth', 17, 'Female', '1997-12-02', 'Taguig', 'Filipino', 'Single ', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `main_information`
--

CREATE TABLE IF NOT EXISTS `main_information` (
  `id` int(11) NOT NULL,
  `demographic_id` int(11) NOT NULL,
  `chief_complaint` varchar(255) NOT NULL,
  `present_illness` varchar(255) NOT NULL,
  `evaluation_summary` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_information`
--

INSERT INTO `main_information` (`id`, `demographic_id`, `chief_complaint`, `present_illness`, `evaluation_summary`, `start_date`, `end_date`) VALUES
(6, 0, 'headache', 'fever', 'high fever', '2015-12-16 00:00:00', '2015-12-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vitals`
--

CREATE TABLE IF NOT EXISTS `vitals` (
  `id` int(11) NOT NULL,
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `temperature` varchar(255) NOT NULL,
  `pulse` varchar(255) NOT NULL,
  `respiration` varchar(255) NOT NULL,
  `bmi` varchar(255) NOT NULL,
  `bmi_status` varchar(255) NOT NULL,
  `blood_pressure` varchar(255) NOT NULL,
  `demographic_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vitals`
--

INSERT INTO `vitals` (`id`, `height`, `weight`, `temperature`, `pulse`, `respiration`, `bmi`, `bmi_status`, `blood_pressure`, `demographic_id`) VALUES
(1, '5''6''''', '55 ', '39', '80/min', '25/min', '19.5', 'normal', '140/90', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demographic`
--
ALTER TABLE `demographic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_information`
--
ALTER TABLE `main_information`
  ADD PRIMARY KEY (`id`), ADD KEY `demographic_id` (`demographic_id`);

--
-- Indexes for table `vitals`
--
ALTER TABLE `vitals`
  ADD PRIMARY KEY (`id`), ADD KEY `demographic_id` (`demographic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demographic`
--
ALTER TABLE `demographic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `main_information`
--
ALTER TABLE `main_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vitals`
--
ALTER TABLE `vitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `vitals`
--
ALTER TABLE `vitals`
ADD CONSTRAINT `vitals_ibfk_1` FOREIGN KEY (`demographic_id`) REFERENCES `demographic` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
