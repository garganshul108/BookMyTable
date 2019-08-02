-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2019 at 04:40 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BookMyTable`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `reference_no` varchar(1000) DEFAULT NULL,
  `size_ten` int(11) DEFAULT '0',
  `size_eight` int(11) DEFAULT '0',
  `size_six` int(11) DEFAULT '0',
  `size_four` int(11) DEFAULT '0',
  `size_two` int(11) DEFAULT '0',
  `size_one` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `id` int(11) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `locality_verbose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `average_cost` int(11) DEFAULT NULL,
  `cuisines` varchar(1000) DEFAULT NULL,
  `timings` varchar(100) DEFAULT NULL,
  `establishment` varchar(1000) DEFAULT NULL,
  `thumb` varchar(1000) DEFAULT NULL,
  `phone_numbers` varchar(1000) DEFAULT NULL,
  `size_ten` int(11) DEFAULT '0',
  `size_eight` int(11) DEFAULT '0',
  `size_six` int(11) DEFAULT '0',
  `size_four` int(11) DEFAULT '0',
  `size_two` int(11) DEFAULT '0',
  `size_one` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Slot`
--

CREATE TABLE `Slot` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` date NOT NULL,
  `size_ten` int(11) DEFAULT '0',
  `size_eight` int(11) DEFAULT '0',
  `size_six` int(11) DEFAULT '0',
  `size_four` int(11) DEFAULT '0',
  `size_two` int(11) DEFAULT '0',
  `size_one` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `phone_no` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slot_id` (`slot_id`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `Slot`
--
ALTER TABLE `Slot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Slot`
--
ALTER TABLE `Slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`slot_id`) REFERENCES `Slot` (`id`);

--
-- Constraints for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD CONSTRAINT `Restaurant_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`id`);

--
-- Constraints for table `Slot`
--
ALTER TABLE `Slot`
  ADD CONSTRAINT `Slot_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
