-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 10:52 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courierdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adlogin`
--

CREATE TABLE `adlogin` (
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adlogin`
--

INSERT INTO `adlogin` (`email`, `password`, `a_id`) VALUES
('admin1@gmail.com', '12345', 1),
('admin2@gmail.com', '12345', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pnumber` int(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `email`, `name`, `pnumber`) VALUES
(1, 'admin1@gmail.com', 'Admin1', 12345),
(2, 'admin2@gmail.com', 'Admin2', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `msg` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `subject`, `msg`) VALUES
(4, 'ravi@gmail.com', 'delay', 'delay in product delivery '),
(5, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `c_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `semail` varchar(50) DEFAULT NULL,
  `remail` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `rname` varchar(50) DEFAULT NULL,
  `sphone` varchar(20) DEFAULT NULL,
  `rphone` varchar(20) DEFAULT NULL,
  `saddress` varchar(50) DEFAULT NULL,
  `raddress` varchar(50) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `billno` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`c_id`, `u_id`, `semail`, `remail`, `sname`, `rname`, `sphone`, `rphone`, `saddress`, `raddress`, `weight`, `billno`, `image`, `date`) VALUES
(72, 35, 'ravi@gmail.com', 'kiran@gmail.com', 'ravi', 'kiran', '1111122222', '2222233333', 'hassan', 'belagavi', 2, 1114442221, 'headphone.jpeg', '2023-02-04'),
(73, 35, 'ravi@gmail.com', 'chethan@gmail.com', 'ravi', 'chethan', '1111122222', '2222244444', 'hassan', 'hubli', 2, 1232345456, 'mobile.jpeg', '1970-01-01'),
(74, 36, 'chandan@gmail.com', 'chandan@gmail.com', 'chandan', 'chandan', '1111133333', '2222244444', 'bengalore', 'mysore', 3, 1454563636, 'book.jpeg', '2023-02-07'),
(77, 36, 'chandan@gmail.com', 'chandan@gmail.com', 'chandan', 'kumar', '1111133333', '2222256565', 'hassan', 'bengalore', 3, 123123123, 'headphone.jpeg', '2023-02-07'),
(79, 38, 'rajani@gmail.com', 'rangu@gmail.com', 'rajani', 'rangu', '1111144444', '2222266666', 'belagavi', 'hubli', 3, 963963963, 'laptop.png', '2023-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `u_id`) VALUES
('ravi@gmail.com', 'ravi', 35),
('chandan@gmail.com', 'chandan', 36),
('rajani@gmail.com', 'rajani', 38),
('yash@gmail.com', 'yash', 39);

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `u_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`u_id`, `c_id`) VALUES
(36, 0),
(38, 0),
(38, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pnumber` int(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `email`, `name`, `pnumber`) VALUES
(35, 'ravi@gmail.com', 'ravi', 1111122222),
(36, 'chandan@gmail.com', 'chandan', 1111133333),
(38, 'rajani@gmail.com', 'rajani', 1111144444),
(39, 'yash@gmail.com', 'yash', 1111155555);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adlogin`
--
ALTER TABLE `adlogin`
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `billno` (`billno`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adlogin`
--
ALTER TABLE `adlogin`
  ADD CONSTRAINT `adlogin_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`);

--
-- Constraints for table `courier`
--
ALTER TABLE `courier`
  ADD CONSTRAINT `courier_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
