-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 05:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(2, 'king', 'king123', 'king@gmail.com'),
(3, 'admin', 'admin123', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendant`
--

CREATE TABLE `attendant` (
  `id_attendant` int(200) NOT NULL,
  `Fname` varchar(200) NOT NULL,
  `Lname` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendant`
--

INSERT INTO `attendant` (`id_attendant`, `Fname`, `Lname`, `mobile_no`, `location`, `username`, `password`) VALUES
(5, 'Amresh', 'Kumar', '345666667', 'Hydrabad', 'Amresh', '$2y$10$U0G7jO1U9jrTZGTzpl507OXEKmC29Faownmbq.larojk9pYBikIEq');

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slot` int(200) NOT NULL,
  `remaining_slots` varchar(50) NOT NULL,
  `attendant` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkings`
--

INSERT INTO `parkings` (`id`, `location`, `street`, `name`, `slot`, `remaining_slots`, `attendant`, `date`, `price`) VALUES
(1, 'India', 'Hydrabad', 'Hydrabad(Gachibowli)', 152, '152', 'Amresh', '2021-01-20 12:25:29', '500'),
(2, 'India', 'Bangalore', 'Bangalore(magistic)', 153, '152', 'Amresh', '2021-01-20 19:11:39', '250'),
(3, 'India', 'Delhi', 'Delhi(Gokalpur)', 193, '103', 'Amresh', '2021-01-20 17:28:51', '125'),
(4, 'India', 'Mumbai', 'Mumbai(Colaba)', 238, '238', 'Amresh', '2021-01-20 17:08:34', '500'),
(5, 'India', 'Hydrabad', 'Hydrabad(Hi-Tech city)', 152, '152', 'Labh', '2021-01-20 17:36:27', '500'),
(6, 'India', 'Bangalore', 'Bangalore(Happle)', 153, '151', 'Amresh', '2021-01-20 17:22:56', '250'),
(7, 'India', 'Delhi', 'Delhi(Jaitpur)', 193, '103', 'Amresh', '2021-01-20 17:29:23', '125'),
(8, 'India', 'Mumbai', 'Mumbai(Bendra)', 238, '238', 'Amresh', '2021-01-17 23:51:34', '500'),
(9, 'India', 'Hydrabad', 'Hydrabad(Mallapur)', 152, '152', 'Amresh', '2021-01-20 17:35:17', '500'),
(10, 'India', 'Bangalore', 'Bangalore(Airport)', 153, '151', 'Amresh', '2021-01-20 17:23:29', '250'),
(11, 'India', 'Delhi', 'Delhi(Gharoli)', 193, '103', 'Amresh', '2021-01-20 17:45:29', '125'),
(12, 'India', 'Mumbai', 'Mumbai(Juhu Beach)', 238, '238', 'Amresh', '2021-01-20 17:17:40', '500'),
(13, 'India', 'Hydrabad', 'Hydrabad(Attapur)', 152, '152', 'Labh', '2021-01-20 17:37:04', '500'),
(14, 'India', 'Bangalore', 'Bangalore(Lalbagh garden)', 153, '151', 'Amresh', '2021-01-20 17:24:03', '250'),
(15, 'India', 'Delhi', 'Delhi(Burari)', 193, '103', 'Amresh', '2021-01-20 17:30:27', '125'),
(16, 'India', 'Mumbai', 'Mumbai(Hanging Garden)', 238, '238', 'Amresh', '2021-01-20 17:18:14', '500'),
(17, 'India', 'Hydrabad', 'Hydrabad(Autonagar)', 152, '152', 'Amresh', '2021-01-20 17:37:26', '500'),
(18, 'India', 'Bangalore', 'Bangalore(Cubbon-Park)', 153, '151', 'Amresh', '2021-01-20 17:24:37', '250'),
(19, 'India', 'Delhi', 'Delhi(veg-Deoli)', 193, '103', 'Amresh', '2021-01-20 17:30:51', '125'),
(20, 'India', 'Mumbai', 'Mumbai(Elephant Caves)', 238, '238', 'Amresh', '2021-01-20 17:18:59', '500'),
(21, 'India', 'Hydrabad', 'Hydrabad(Ballapur)', 152, '152', 'Labh', '2021-01-20 17:37:53', '500'),
(22, 'India', 'Bangalore', 'Bangalore(Ulsoor Lake)', 153, '151', 'Amresh', '2021-01-20 17:25:14', '250'),
(23, 'India', 'Delhi', 'Delhi(Chilla Saroda)', 193, '103', 'Amresh', '2021-01-20 17:31:19', '125'),
(24, 'India', 'Mumbai', 'Mumbai(Essel-World)', 238, '238', 'Amresh', '2021-01-20 17:19:32', '500'),
(25, 'India', 'Hydrabad', 'Hydrabad(Bharat-nagar)', 152, '152', 'Amresh', '2021-01-20 17:38:34', '500'),
(26, 'India', 'Bangalore', 'Bangalore(Attara kacheri)', 153, '151', 'Amresh', '2021-01-20 17:25:55', '250'),
(27, 'India', 'Delhi', 'Delhi(Mustafabad)', 193, '103', 'Amresh', '2021-01-20 17:31:57', '125'),
(28, 'India', 'Mumbai', 'Mumbai(ChhatraPati)', 238, '238', 'Amresh', '2021-01-20 17:20:07', '500'),
(29, 'India', 'Hydrabad', 'Hydrabad(Bolaram)', 152, '152', 'Labh', '2021-01-20 17:39:26', '500'),
(30, 'India', 'Bangalore', 'Bangalore(KR Market)', 153, '151', 'Amresh', '2021-01-20 17:26:32', '250'),
(31, 'India', 'Delhi', 'Delhi(Dallopura)', 193, '103', 'Amresh', '2021-01-20 17:32:36', '125'),
(32, 'India', 'Mumbai', 'Mumbai(Goregaon)', 238, '238', 'Amresh', '2021-01-20 17:20:43', '500'),
(33, 'India', 'Hydrabad', 'Hydrabad(Boyiguda)', 152, '152', 'Amresh', '2021-01-20 17:40:15', '500'),
(34, 'India', 'Bangalore', 'Bangalore(Tin Factory)', 153, '151', 'Amresh', '2021-01-20 17:27:15', '250'),
(35, 'India', 'Delhi', 'Delhi(Najafgarh)', 193, '103', 'Amresh', '2021-01-20 17:33:18', '125'),
(36, 'India', 'Mumbai', 'Mumbai(Dharavi Slum)', 238, '238', 'Amresh', '2021-01-20 17:21:20', '500'),
(37, 'India', 'Hydrabad', 'Hydrabad(Chintal Basti)', 152, '152', 'Labh', '2021-01-20 17:41:00', '500'),
(38, 'India', 'Bangalore', 'Bangalore(Tipusultan)', 153, '151', 'Amresh', '2021-01-20 17:28:03', '250'),
(39, 'India', 'Delhi', 'Delhi(Binodnagar)', 193, '103', 'Amresh', '2021-01-20 17:33:41', '125'),
(40, 'India', 'Mumbai', 'Mumbai(Red Carpet)', 238, '238', 'Amresh', '2021-01-20 17:21:57', '500');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(255) NOT NULL,
  `parking_id` int(25) NOT NULL,
  `slots` varchar(25) NOT NULL,
  `hours` int(25) NOT NULL,
  `cost` int(25) NOT NULL,
  `customer` varchar(25) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `parking_id`, `slots`, `hours`, `cost`, `customer`, `time`, `status`) VALUES
(15, 1, '1', 2, 1000, 'Labh@gmail.com', '2021-01-14 17:47:16', 'Completed'),
(16, 4, '1', 2, 1000, 'AKM@GMAIL.COM', '2021-01-15 11:47:07', 'Completed'),
(17, 2, '1', 5, 1250, 'Labh@gmail.com', '2021-01-18 05:21:48', 'Completed'),
(18, 2, '1', 22, 5500, 'amreesh@gmail.com', '2021-01-20 16:59:50', 'Completed'),
(19, 11, '1', 3, 375, 'Labh@gmail.com', '2021-01-20 23:14:11', 'Completed'),
(20, 2, '1', 3, 750, 'Labh@gmail.com', '2021-01-21 00:41:39', 'requested');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_confirm`) VALUES
(12, 'Labh Kumar', 'Labh@gmail.com', '$2y$10$GU6yEG2/ZH48FiwhpsCGDembWkEX4P9S5rJZ0ssQmDfWT25Ij6SzO', '$2y$10$2hh18XB/MlwKgOxiip8H7uCbQsEaWJl6Q35t2Avqn5T3atlisyJ1W'),
(13, 'Amresh Kumar Mahato', 'AKM@GMAIL.COM', '$2y$10$nwHjyo7BEhLIV3ASxw8xJ.fNAv0ueeWEIZ.5l1gre5/Ou1hFYdHOG', '$2y$10$QpNceCmmy53v/S7vToukQumpnmUca4/jB2G1s3kUZX8s0REfB9Y0a'),
(14, 'amreesh', 'amreesh@gmail.com', '$2y$10$7JyE46cp5qBI87IdjIjrfOb694PWuTWQsLHI/jBgWLggGSSOGg116', '$2y$10$Uif0u1fgV3YaqiCYPwCZ8u0CWv.Zps1F96PjMkYL5rucQ.gT3uI9.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendant`
--
ALTER TABLE `attendant`
  ADD PRIMARY KEY (`id_attendant`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendant`
--
ALTER TABLE `attendant`
  MODIFY `id_attendant` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
