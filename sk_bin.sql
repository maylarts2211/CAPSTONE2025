-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 08:07 AM
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
-- Database: `sk_bin`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `id` int(11) NOT NULL,
  `brgy_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`id`, `brgy_name`, `created_at`) VALUES
(1, 'Amontay', '2025-05-04 18:18:32'),
(2, 'Bagroy', '2025-05-04 18:18:32'),
(3, 'Bi-ao', '2025-05-04 18:19:13'),
(4, 'Canmoros', '2025-05-04 18:19:13'),
(5, 'Enclaro', '2025-05-04 18:19:56'),
(6, 'Marina', '2025-05-04 18:19:56'),
(7, 'Pagla-um', '2025-05-04 18:20:33'),
(8, 'Payao', '2025-05-04 18:20:33'),
(9, 'Progreso', '2025-05-04 18:21:14'),
(10, 'San Jose', '2025-05-04 18:21:14'),
(11, 'San Juan', '2025-05-04 18:21:46'),
(12, 'San Pedro', '2025-05-04 18:21:46'),
(13, 'San Teodoro', '2025-05-04 18:22:35'),
(14, 'San Vicente', '2025-05-04 18:22:35'),
(15, 'Santo Rosario', '2025-05-04 18:23:31'),
(16, 'Santol', '2025-05-04 18:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `brgy_amontay`
--

CREATE TABLE `brgy_amontay` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` text NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `term_start` date NOT NULL,
  `term_end` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brgy_amontay`
--

INSERT INTO `brgy_amontay` (`id`, `full_name`, `age`, `gender`, `address`, `contact_number`, `email`, `education`, `term_start`, `term_end`, `created_at`) VALUES
(1, 'Mayla Bayona', 21, 'Female', 'Amontay', '09123456789', 'maylabayona@gmail.com', 'college', '2022-05-07', '2025-05-07', '2025-05-06 19:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `sk_federation_officers`
--

CREATE TABLE `sk_federation_officers` (
  `id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `term_start` year(4) NOT NULL,
  `term_end` year(4) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$jhlOn75S1hlPAd2NH/FTOu.AM7CWQKl21d//R6e3o.1Ec9zqZWpMu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mom`
--

CREATE TABLE `tbl_mom` (
  `mom_id` int(11) NOT NULL,
  `meeting_type` varchar(255) NOT NULL,
  `meeting_datetime` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `presiding_officer` varchar(100) NOT NULL,
  `secretary` varchar(100) NOT NULL,
  `present_count` int(11) NOT NULL,
  `agenda_summary` text NOT NULL,
  `agenda_1` text NOT NULL,
  `agenda_2` text DEFAULT NULL,
  `agenda_3` text DEFAULT NULL,
  `agenda_4` text DEFAULT NULL,
  `other_matters` text DEFAULT NULL,
  `adjournment` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mom`
--

INSERT INTO `tbl_mom` (`mom_id`, `meeting_type`, `meeting_datetime`, `location`, `presiding_officer`, `secretary`, `present_count`, `agenda_summary`, `agenda_1`, `agenda_2`, `agenda_3`, `agenda_4`, `other_matters`, `adjournment`, `attachment`, `created_at`, `archived`) VALUES
(1, 'Incoming Youth activities', '2025-05-21 21:17:00', 'Brgy. biao', 'Jessica', 'Mayla', 5, 'chuchu', 'ddjd', 'dsf', 'dfds', 'sdfd', 'sdfd', '', '', '2025-05-22 05:18:37', 0),
(2, 'Incoming Youth activities', '2025-05-21 21:17:00', 'Brgy. biao', 'Jessica', 'Mayla', 5, 'chuchu', 'ddjd', 'dsf', 'dfds', 'sdfd', 'sdfd', '', '', '2025-05-22 05:29:53', 1),
(3, 'Incoming Youth activities', '2025-05-21 21:17:00', 'Brgy. biao', 'Jessica', 'Mayla', 5, 'chuchu', 'ddjd', 'dsf', 'dfds', 'sdfd', 'sdfd', '', '', '2025-05-22 05:30:24', 1),
(4, 'Incoming Youth activities', '2025-05-21 21:17:00', 'Brgy. biao', 'Jessica', 'Mayla', 5, 'chuchu', 'ddjd', 'dsf', 'dfds', 'sdfd', 'sdfd', '', '', '2025-05-22 05:30:37', 0),
(5, 'Incoming Youth activities', '2025-05-21 21:17:00', 'Brgy. biao', 'Jessica', 'Mayla', 5, 'chuchu', 'ddjd', 'dsf', 'dfds', 'sdfd', 'sdfd', '', '', '2025-05-22 05:33:46', 0),
(6, 'Incoming Youth activities', '2025-05-21 21:17:00', 'Brgy. biao', 'Jessica', 'Mayla', 5, 'chuchu', 'ddjd', 'dsf', 'dfds', 'sdfd', 'sdfd', '', '', '2025-05-22 05:44:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `youth`
--

CREATE TABLE `youth` (
  `id` int(11) NOT NULL,
  `youth_number` varchar(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangay`
--
ALTER TABLE `barangay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brgy_amontay`
--
ALTER TABLE `brgy_amontay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk_federation_officers`
--
ALTER TABLE `sk_federation_officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_mom`
--
ALTER TABLE `tbl_mom`
  ADD PRIMARY KEY (`mom_id`);

--
-- Indexes for table `youth`
--
ALTER TABLE `youth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `youth_number` (`youth_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangay`
--
ALTER TABLE `barangay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `brgy_amontay`
--
ALTER TABLE `brgy_amontay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sk_federation_officers`
--
ALTER TABLE `sk_federation_officers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_mom`
--
ALTER TABLE `tbl_mom`
  MODIFY `mom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `youth`
--
ALTER TABLE `youth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
