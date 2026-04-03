-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2026 at 04:23 PM
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
-- Database: `lab_asset_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(30) NOT NULL,
  `equipment_name` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `purchase_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `equipment_name`, `category`, `brand`, `model`, `purchase_date`) VALUES
(8, 'asder', 'Input Devices', 'asd', 'asf', 'asfdd'),
(9, 'asder', 'Input Devices', 'asd', 'asf', 'asfdd'),
(11, 'asder', 'Input Devices', 'asd', 'asf', 'asfdd'),
(14, 'asder', 'Input Devices', 'asd', 'asf', 'asfdd'),
(16, 'asder', 'Input Devices', 'asd', 'asf', 'asfdd'),
(17, 'asder', 'Input Devices', 'asd', 'asf', 'asfdd'),
(18, 'asder', 'Input Devices', 'asd', 'asf', 'asfdd'),
(19, 'Gaming Mouse', 'Input Devices', 'AttackShark', 'X11', 'asfdd'),
(20, 'Mechanical Keyboard', 'Input Devices', 'Aula', 'F75', 'Jan 21, 2026'),
(21, 'asd', 'Input Devices', 'asd', 'asd', 'asd'),
(24, 'Logitech Mouse', 'Input Devices', 'Logitech', '', ''),
(25, 'mech.keyboard', 'Input Devices', 'Zeus', 'f11', 'april, 4 2026'),
(26, 'Samsung LED Monitor', 'Output Devices', 'MSI', 'Samsung', 'april, 4 2026'),
(27, 'Monitor', 'Input Devices', 'MSI', 'Fy1', 'april, 4 2026'),
(28, 'Keyboard', 'Input Devices', 'inplay', 'rwer', 'april 4 2026'),
(29, 'CPU', 'Input Devices', 'dsfs', 'f66', 'april 4 2026');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintenance_id` int(50) NOT NULL,
  `equipment_id` int(30) NOT NULL,
  `issue_description` varchar(200) NOT NULL,
  `date_reported` varchar(20) NOT NULL,
  `date_repaired` varchar(20) NOT NULL,
  `receipt_no` varchar(20) NOT NULL,
  `remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`maintenance_id`, `equipment_id`, `issue_description`, `date_reported`, `date_repaired`, `receipt_no`, `remarks`) VALUES
(1, 5, 'wqeqw', 'efsdf', 'sdga', 'gdfsg', 'dsh'),
(2, 12, 'Broken', 'May 12, 2026', 'May 15, 2026', '1234', 'Goods'),
(3, 4, 'Low Power', 'March 31, 2026', 'April 1, 2026', '85103', 'Bad');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `condition_state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `equipment_id`, `location`, `condition_state`) VALUES
(1, 18, 'fas', 'cxz'),
(2, 19, 'asf', 'dsg'),
(3, 20, 'PC 10', 'Brand New'),
(4, 21, 'asd', 'asd'),
(7, 24, 'Lab 1', 'Working'),
(8, 25, 'gensan', 'working'),
(9, 26, 'Lab 1 - Station 5', 'Good Condition'),
(10, 27, 'gensan', 'Working'),
(11, 28, 'gensan', 'goods'),
(12, 29, 'apopong', 'working');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_logs`
--

CREATE TABLE `transaction_logs` (
  `log_id` int(11) NOT NULL,
  `action_performed` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `log_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_logs`
--

INSERT INTO `transaction_logs` (`log_id`, `action_performed`, `details`, `log_date`) VALUES
(1, 'ADD_ASSET', 'Added: Samsung LED Monitor at Lab 1 - Station 5', '2026-04-03 14:14:35'),
(2, 'ADD_ASSET', 'Added: Monitor at gensan', '2026-04-03 14:18:24'),
(3, 'ADD_ASSET', 'Added: Keyboard at gensan', '2026-04-03 14:19:28'),
(4, 'ADD_ASSET', 'Added: CPU at apopong', '2026-04-03 14:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin123@gmail.com', 'admin', 'USER', 'gmail');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintenance_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
