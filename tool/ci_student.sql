-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 11:08 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `class` varchar(50) NOT NULL,
  `division` int(10) NOT NULL,
  `b_group` varchar(5) NOT NULL,
  `shift` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `profile_image` varchar(500) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `s_name`, `g_name`, `contact`, `email`, `address`, `class`, `division`, `b_group`, `shift`, `gender`, `profile_image`, `dateTime`) VALUES
(1, 'Tahmid Nishat', 'Abul Khasem Khan', '01683302276', 'tahmid.ni7@gmail.com', 'Maheshkhali', '10', 1, 'A+', 1, 'M', 'http://localhost/ci-student/uploads/image/PP-update.png', '2019-05-05 06:48:35'),
(2, 'Tahmid Nishat', 'Abul Khasem Khan', '01822597379', 'mssuser@gmail.com', 'Dhaka', '12', 1, 'A+', 1, 'M', 'http://localhost/ci-student/uploads/image/PPI_300-300.jpg', '2019-05-05 08:36:31'),
(3, 'Izaz Mahmud Tahur', 'Abul Khasem Khan', '01822597379', 'izaz@gmail.com', 'Maheshkhali', '6', 1, 'A+', 2, 'M', 'http://localhost/ci-student/uploads/image/15910054_1358594817525281_616707721_n.jpg', '2019-05-05 08:46:11'),
(4, 'Abid Mahud Abrar', 'Abul Khasem Khan', '01683302276', 'abid@gmail.com', 'Cox&#039;s Bazar', '8', 4, 'A+', 2, 'M', 'http://localhost/ci-student/uploads/image/Logo_13.png', '2019-05-05 08:48:52'),
(10, 'Tahmid Uddin Mahmud Nishat', 'Abul Khasem Khan', '01822597379', 'tahmid.ni7@gmail.com', 'Uttara, Dhaka', '10', 1, 'A+', 1, 'M', 'http://localhost/ci-student/uploads/image/Sight_2018_03_24_223118_489.jpg', '2019-05-05 16:20:17'),
(11, 'Mahmud Nishat', 'Abul Khasem Khan', '01845001048', 'tahmid.ni7@gmail.com', 'Uttara, sector#10, Dhaka', '10', 2, 'A+', 1, 'M', 'http://localhost/ci-student/uploads/image/389427_273320546052719_1606860900_n.jpg', '2019-05-05 20:28:20'),
(13, 'Hares Uddin Mahmud Shakil', 'Abul Khasem Khan', '01675020014', 'mssuser@gmail.com', 'Maheshkhali', '9', 1, 'o+', 2, 'M', 'http://localhost/ci-student/uploads/image/BCS_SKL_300-300.jpg', '2019-05-05 20:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin_name`, `email`, `contact`, `password`) VALUES
(1, 'Tahmid', 'tahmid.ni7@gmail.com', '01683302276', '$2y$12$BlQKV1nWpTE6U3kuKf7Zve/kEKuRuey6iFliZ61xbeLdVRzmmnEOm'),
(2, 'Tahmid Nishat', 'admin@gmail.com', '', '$2y$12$l2tmJS3yDkSAueke8WElbedC0a931qn7xYTCBLpmrpv1nYlX0AF0.'),
(5, 'MR. Admin', 'admin@system.com', '', '$2y$12$/ijKWQuC6Zsj7I4jWL6IleP06Xchvl.13sWqSzzLhYTEjiH5XcEAq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
