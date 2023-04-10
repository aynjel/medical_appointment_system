-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 10:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_as`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `appointment_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_specialization` varchar(100) NOT NULL,
  `appointment_consultancy_fee` varchar(100) NOT NULL,
  `appointment_datetime` datetime NOT NULL,
  `appointment_status` varchar(100) NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctors`
--

CREATE TABLE `tbl_doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_specialization` varchar(255) NOT NULL,
  `doctor_clinic_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_doctors`
--

INSERT INTO `tbl_doctors` (`doctor_id`, `doctor_specialization`, `doctor_clinic_address`) VALUES
(58, 'Rerum eos hic ratio', 'Maiores qui ad dolor'),
(68, 'Enim modi illo qui t', 'Qui sint sed duis om'),
(69, 'Occaecat ipsa volup', 'Consectetur assumend'),
(70, 'Vero cupidatat delen', 'Cumque a officiis al'),
(71, 'Dentist', 'Toledo'),
(72, 'Ad in molestias vero', 'Qui adipisicing elit'),
(73, 'Ipsum inventore illo', 'Sunt praesentium qu'),
(74, 'Odio non aperiam lab', 'Omnis eveniet quis '),
(77, 'A vel odio voluptatu', 'Quas aute unde facer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medicals`
--

CREATE TABLE `tbl_medicals` (
  `medical_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `blood_pressure` varchar(100) NOT NULL,
  `blood_sugar` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `body_temperature` varchar(100) NOT NULL,
  `prescription` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otps`
--

CREATE TABLE `tbl_otps` (
  `otp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `otp_code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_otps`
--

INSERT INTO `tbl_otps` (`otp_id`, `user_id`, `otp_code`, `created_at`) VALUES
(11, 66, '805793', '2023-04-10 09:01:43'),
(12, 67, '960555', '2023-04-10 09:02:35'),
(13, 68, '910290', '2023-04-10 09:05:24'),
(14, 69, '628520', '2023-04-10 09:10:25'),
(15, 70, '620967', '2023-04-10 09:35:59'),
(16, 71, '909468', '2023-04-10 09:39:15'),
(17, 72, '357021', '2023-04-10 09:53:13'),
(18, 73, '641902', '2023-04-10 09:56:23'),
(19, 74, '282904', '2023-04-10 09:58:30'),
(20, 75, '925019', '2023-04-10 10:00:16'),
(21, 76, '430889', '2023-04-10 10:06:54'),
(22, 77, '459491', '2023-04-10 10:13:27'),
(23, 78, '966629', '2023-04-10 10:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_status` varchar(100) NOT NULL DEFAULT 'inactive',
  `session_login_time` datetime NOT NULL,
  `session_logout_time` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `user_first_name` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL,
  `user_name` text NOT NULL,
  `user_email` text NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_number` varchar(100) NOT NULL,
  `user_is_verify` varchar(50) NOT NULL DEFAULT 'pending',
  `user_roles` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_first_name`, `user_last_name`, `user_name`, `user_email`, `user_password`, `user_gender`, `user_number`, `user_is_verify`, `user_roles`, `created_at`) VALUES
(1, 'John', 'Doe', 'admin', 'admin@gmail.com', 'asd', 'Male', '09123456789', 'verified', 'admin', '2023-04-09 22:57:18'),
(77, 'Leahe4', 'Barron', 'zufeju', 'givun@mailinator.com', '$2y$10$ZbEqjK.oGjX2wvehk04WkuhhJeyXrVw6DSasSTjOMkopc5hsu1UWG', 'Male', '372', 'pending', 'doctor', '2023-04-10 16:13:27'),
(78, 'Wesley', 'Moran', 'wemykynef', 'bixagiry@mailinator.com', '$2y$10$xsCK9cHpOYFP8QeiHQI9.uk3SGJ1fQFkqBRtYCVX/nlPbkTy4Vd92', 'Female', '105', 'pending', 'patient', '2023-04-10 16:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `tbl_doctors`
--
ALTER TABLE `tbl_doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `tbl_medicals`
--
ALTER TABLE `tbl_medicals`
  ADD PRIMARY KEY (`medical_id`);

--
-- Indexes for table `tbl_otps`
--
ALTER TABLE `tbl_otps`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_doctors`
--
ALTER TABLE `tbl_doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_medicals`
--
ALTER TABLE `tbl_medicals`
  MODIFY `medical_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_otps`
--
ALTER TABLE `tbl_otps`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
