-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 02:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pass`, `fname`, `lname`, `email`) VALUES
(1, 'masum', 'masum1234', 'masum', 'hasan', 'mmasum181135@bscse.uiu.ac.bd');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1543698062, 434891862, 'hi'),
(2, 1543698062, 434891862, 'hello'),
(3, 1052068617, 972772043, 'kire choto'),
(4, 972772043, 1052068617, 'he bhai'),
(5, 1052068617, 972772043, 'salam de'),
(6, 972772043, 1052068617, 'vai sorry.. assalamualaikum'),
(7, 637336616, 615775990, 'hlw'),
(8, 615775990, 637336616, 'hi'),
(9, 1492484690, 1673374649, 'hlw bhai'),
(10, 1673374649, 1492484690, 'hlw'),
(11, 1492484690, 1673374649, 'fsdivbdsjvkb'),
(12, 1673374649, 1492484690, 'sadfhuifcbeikfc'),
(13, 1673374649, 1174922748, 'hi'),
(14, 1174922748, 1673374649, 'hello'),
(15, 1673374649, 1174922748, 'how are you'),
(16, 1174922748, 1673374649, 'fine');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `graduate` varchar(3) NOT NULL,
  `english` varchar(3) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `education`, `gender`, `phone`, `email`, `dob`, `graduate`, `english`, `subject`) VALUES
(1, 'masum choto', 'hcgkgvk', 'on', '01766993438', 'masum@gmail.com', '2023-04-12', 'yes', 'yes', '【DSA】');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1543698062, 'md', 'emon', 'emon@gmail.com', '6bac962066b17bd2375208fa34bf3279', '1679777019IMG_20191024_195803.jpg', 'Offline now'),
(2, 434891862, 'md', 'shihab', 'nadkjnakdsnl@gmail.com', '4297f44b13955235245b2497399d7a93', '1679777064IMG_20191025_151942.jpg', 'Offline now'),
(3, 1052068617, 'masum', 'choto', 'masum@gmail.com', '202cb962ac59075b964b07152d234b70', '1679777174IMG_20191024_195803.jpg', 'Active now'),
(4, 972772043, 'Emon', 'Boro', 'e@gmail.com', '4297f44b13955235245b2497399d7a93', '1679777202IMG_20191025_014349.jpg', 'Active now'),
(5, 615775990, 'masum', 'hasan', 'masum1@gmail.com', 'b59c67bf196a4758191e42f76670ceba', '1679821723IMG_20191114_211704.jpg', 'Active now'),
(6, 637336616, 'mehedi', 'hasan', 'mehede1@gmail.com', '934b535800b1cba8f96a5d72f72f1611', '1679821832IMG_20191024_205150.jpg', 'Active now'),
(7, 1492484690, 'masum', 'hasan', 'masum123@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '1680459299IMG_20191027_190908.jpg', 'Offline now'),
(8, 1673374649, 'tanvin', 'hasan', 'tanvin123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1680459465Screenshot (1).png', 'Active now'),
(9, 1174922748, 'sadman', 'akash', 'sdmnakash@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1680665063IMG_20191024_205150.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
