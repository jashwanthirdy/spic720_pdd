-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2025 at 12:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `career_suggestion`
--

CREATE TABLE `career_suggestion` (
  `id` int(11) NOT NULL,
  `cal` enum('10th completed','10th appearing','','') NOT NULL,
  `prelang` enum('English','Telugu','Hindi','Others') NOT NULL,
  `subpre` enum('Mathematics','Physics','Biology','Computers','Social Studies','Languages') NOT NULL,
  `difficultSubjects` longtext NOT NULL,
  `workpre` enum('Problem Solving','Working with People','Hands-on Work','Creative Activities') NOT NULL,
  `Dream` longtext NOT NULL,
  `doi` enum('technology','health','engineering','government','business','undecided') NOT NULL,
  `studydur` enum('2 yr','3 yr','4+ yr','') NOT NULL,
  `pcr` enum('Direct job via technical/vocational path','Long-term professional education','Explore both and decide later','') NOT NULL,
  `otee` enum('yes','no','maybe','') NOT NULL,
  `techcomfrot` enum('Expert','Moderate','Beginner','') NOT NULL,
  `prelearn` enum('Watching Videos','Reading Notes','hands-on projects','One-on-one Guidance') NOT NULL,
  `futureinsights` enum('Highest paying jobs after B.Tech','In-demand skills in each stream','Interships during college','Govt vs Private sector comparisons') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `career_suggestion`
--

INSERT INTO `career_suggestion` (`id`, `cal`, `prelang`, `subpre`, `difficultSubjects`, `workpre`, `Dream`, `doi`, `studydur`, `pcr`, `otee`, `techcomfrot`, `prelearn`, `futureinsights`) VALUES
(1, '10th completed', 'English', 'Mathematics', 'all', 'Problem Solving', 'not found', 'technology', '2 yr', 'Direct job via technical/vocational path', 'yes', 'Beginner', 'hands-on projects', 'In-demand skills in each stream'),
(2, '10th completed', 'English', 'Mathematics', 'none', 'Problem Solving', 'Ai', 'technology', '4+ yr', 'Direct job via technical/vocational path', 'yes', 'Moderate', 'Watching Videos', ''),
(3, '10th completed', 'English', 'Mathematics', 'none', 'Problem Solving', 'Ai', 'technology', '4+ yr', 'Direct job via technical/vocational path', 'yes', 'Moderate', 'Watching Videos', ''),
(4, '10th completed', 'English', 'Mathematics', 'none', 'Problem Solving', 'Ai', 'technology', '4+ yr', 'Direct job via technical/vocational path', 'yes', 'Moderate', 'Watching Videos', ''),
(5, '10th completed', 'English', 'Mathematics', 'none', 'Problem Solving', 'Ai', 'technology', '4+ yr', 'Direct job via technical/vocational path', 'yes', 'Moderate', 'Watching Videos', ''),
(6, '10th completed', 'English', 'Mathematics', 'none', 'Problem Solving', 'Ai', 'technology', '4+ yr', 'Direct job via technical/vocational path', 'yes', 'Moderate', 'Watching Videos', ''),
(8, '10th completed', 'English', 'Mathematics', 'none', 'Problem Solving', 'Ai', 'technology', '4+ yr', 'Direct job via technical/vocational path', 'yes', 'Moderate', 'Watching Videos', '');

-- --------------------------------------------------------

--
-- Table structure for table `edit_profile`
--

CREATE TABLE `edit_profile` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ambition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `edit_profile`
--

INSERT INTO `edit_profile` (`id`, `name`, `email`, `ambition`) VALUES
(1, 'Jashwanthi Reddy', 'jashwanthireddy004@gmail.com', ' found'),
(2, 'Sujatha Reddy', 'sujathareddy003@gmail.com', 'explore');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'jashwanthireddy004@gmail.com', '123@jR'),
(2, 'sujathareddy003@gmail.com', '$2y$10$ILu3i8AY0Faugj4Sw9F71OTbTYhaqV4UGXUuNNmQiM3nblzFFZJey'),
(3, 'bhaskarreddy003@gmail.com', '$2y$10$8mrqdkZS7T3P0B20wTQBuO82s3ubfWZ/cj85y.NhyYSL4WfO5miAG');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ambition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`, `ambition`) VALUES
(1, 'Jashwanthi Reddy', 'jashwanthireddy004@gmail.com', '123@jR', 'not found'),
(2, 'Sujatha Reddy', 'sujathareddy003@gmail.com', '$2y$10$Zn9j4Q8yfkRX1pZnlUM6.eHdJ3wPcxRe8kFz4ZwOjs4upW3hE/sZC', 'to care'),
(3, 'Sujatha Reddy', 'sujathareddy003@gmail.com', '$2y$10$4aVpcdH3F1Dr91gQKKxFO.x5NTz2PHWT74Hxdgsz5Bcpv6.2ed2WW', 'to care'),
(4, 'BhaskarReddy', 'bhaskareddy003@gmail.com', '$2y$10$u.OYWAQVicJkMYBVdCY6m.9asF0gjDl/WGoTjAugYH6/IYZLcXT8O', 'to admire');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career_suggestion`
--
ALTER TABLE `career_suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edit_profile`
--
ALTER TABLE `edit_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `career_suggestion`
--
ALTER TABLE `career_suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `edit_profile`
--
ALTER TABLE `edit_profile`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
