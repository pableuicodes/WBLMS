-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2025 at 09:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dems`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leavecard`
--

CREATE TABLE `tbl_leavecard` (
  `lc_id` int(11) NOT NULL,
  `empNum` mediumint(7) UNSIGNED ZEROFILL NOT NULL,
  `lc_dateperiodStart` date NOT NULL,
  `lc_dateperiodEnd` date NOT NULL,
  `lc_particulars` text NOT NULL,
  `lc_type` enum('Vacation Leave','Sick Leave','Personal Leave','Special Privilege Leave','Maternity Leave','Solo Parent Leave','Rehabilitation Leave','Paternity Leave','Special Leave Benefits for Women','Terminal Leave','Adoption Leave','Calamity Leave','CTO/COC') NOT NULL,
  `lc_noOfDays` smallint(5) UNSIGNED NOT NULL,
  `lc_absenceStat` enum('With Pay','Without Pay') NOT NULL,
  `lc_pvpDays` smallint(6) NOT NULL,
  `lc_remarks` text NOT NULL,
  `lc_notes` text NOT NULL,
  `lc_datetimeAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_leavecard`
--

INSERT INTO `tbl_leavecard` (`lc_id`, `empNum`, `lc_dateperiodStart`, `lc_dateperiodEnd`, `lc_particulars`, `lc_type`, `lc_noOfDays`, `lc_absenceStat`, `lc_pvpDays`, `lc_remarks`, `lc_notes`, `lc_datetimeAdded`) VALUES
(1, 4190076, '2017-09-13', '2017-10-12', '', 'Sick Leave', 30, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(2, 4190076, '2025-10-29', '2025-11-11', '', 'Special Leave Benefits for Women', 14, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(3, 4190076, '2017-11-13', '2017-11-13', '', 'Sick Leave', 1, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(4, 4190076, '2024-03-14', '2024-03-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(5, 4190076, '2013-06-12', '2013-08-01', '', 'Sick Leave', 51, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(6, 4190076, '2012-07-09', '2012-09-16', '', 'Maternity Leave', 50, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(7, 4190076, '2017-07-05', '2017-08-11', '', 'Sick Leave', 37, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(8, 4190076, '2017-07-03', '2017-07-05', '', 'Sick Leave', 3, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(9, 4190076, '2014-01-20', '2014-01-22', '', 'Sick Leave', 3, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(10, 4190076, '2025-01-15', '2025-01-15', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(11, 4190076, '2013-01-07', '2013-03-07', '', 'Vacation Leave', 60, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(12, 4190076, '2017-08-14', '2017-09-12', '', 'Sick Leave', 30, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(13, 4190076, '2013-08-04', '2013-10-26', '', 'Maternity Leave', 60, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(14, 4190076, '2019-09-10', '2019-09-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(15, 4190076, '2019-10-14', '2019-10-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(16, 4190076, '2019-10-16', '2019-10-16', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(17, 4190076, '2022-06-01', '2022-06-01', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(18, 4190076, '2023-04-25', '2023-04-25', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(19, 4190076, '2023-09-11', '2023-09-11', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(20, 4190076, '2023-10-19', '2023-10-19', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(21, 4190076, '2024-01-04', '2024-01-04', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(22, 4190076, '2024-01-10', '2024-01-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-06 03:14:11'),
(23, 4190076, '2011-07-02', '2011-07-02', '', 'Sick Leave', 1, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(24, 4190076, '2013-06-03', '2013-06-11', '', 'Sick Leave', 9, 'Without Pay', 0, '', '', '2025-11-06 03:14:11'),
(27, 4106676, '2025-10-01', '2025-12-30', '', 'Terminal Leave', 56, 'With Pay', 11, 'with 11 PVP days earned (Dec 20, 2025 - Dec 30, 2025)', '', '2025-11-06 07:11:17'),
(28, 4106676, '2025-10-01', '2025-12-19', '', 'Terminal Leave', 56, 'With Pay', 11, 'with 11 PVP days earned (Dec 20, 2025 - Dec 30, 2025)', '', '2025-11-06 06:56:41'),
(29, 4106676, '2025-09-15', '2025-09-20', '', 'Sick Leave', 6, 'With Pay', 0, '', '', '2025-11-06 06:56:41'),
(32, 4194939, '2025-11-01', '2025-12-19', '', 'Sick Leave', 49, 'Without Pay', 12, 'with 12 PVP days earned (Dec 20, 2025 - Dec 31, 2025)', '', '2025-11-07 04:22:04'),
(33, 4194939, '2025-06-16', '2025-07-31', '', 'Sick Leave', 34, 'With Pay', 0, '', '', '2025-11-07 04:22:04'),
(34, 4207668, '2025-10-09', '2025-10-09', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-07 04:25:27'),
(35, 4207668, '2025-10-10', '2025-10-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-07 04:25:27'),
(36, 4207668, '2025-10-13', '2025-10-14', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-07 04:25:27'),
(37, 4113397, '2026-01-05', '2026-01-06', '', 'Vacation Leave', 2, 'Without Pay', 16, 'with 16 PVP days earned (Dec 20, 2025 - Jan 04, 2026)', '', '2025-11-12 01:25:41'),
(85, 0013930, '2025-11-10', '2025-12-09', '', 'Sick Leave', 21, 'With Pay', 0, '', '', '2025-11-13 03:11:46'),
(86, 4243228, '2025-10-20', '2025-10-21', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(87, 4220225, '2025-10-07', '2025-10-07', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(88, 4205603, '2025-10-21', '2025-10-21', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(89, 4204755, '2025-10-14', '2025-10-15', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(90, 4202387, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(91, 4191586, '2025-10-07', '2025-10-07', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(92, 4215874, '2025-10-20', '2025-10-20', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(93, 4241378, '2025-10-14', '2025-10-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(94, 4248448, '2025-10-21', '2025-10-21', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(95, 4239686, '2025-10-06', '2025-10-06', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(96, 0013930, '2025-10-14', '2025-10-17', '', 'Sick Leave', 4, 'With Pay', 0, '', '', '2025-11-13 04:08:23'),
(97, 0013930, '2025-10-21', '2025-10-21', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(98, 0013930, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(99, 4220224, '2025-10-10', '2025-10-10', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(100, 4203108, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(101, 4241960, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(102, 4212270, '2025-10-20', '2025-10-21', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(103, 4201096, '2025-10-02', '2025-10-02', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 04:41:19'),
(104, 4201096, '2025-10-09', '2025-10-09', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(105, 4197580, '2025-10-21', '2025-10-22', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(106, 4198872, '2025-10-02', '2025-10-02', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(107, 0006690, '2025-10-17', '2025-10-17', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(108, 4192289, '2025-10-06', '2025-10-06', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(109, 4119701, '2025-10-20', '2025-10-21', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(110, 4207649, '2025-10-09', '2025-10-09', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(111, 4189653, '2025-10-15', '2025-10-15', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(112, 4234883, '2025-10-14', '2025-10-14', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(113, 4192528, '2025-10-23', '2025-10-23', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(114, 4193653, '2025-10-24', '2025-10-24', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(115, 0019070, '2025-10-02', '2025-10-02', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(116, 4193920, '2025-10-20', '2025-10-23', '', 'Sick Leave', 4, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(117, 4213834, '2025-10-08', '2025-10-09', '', 'Sick Leave', 2, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(118, 4237099, '2025-10-23', '2025-10-23', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 04:41:20'),
(119, 4238722, '2025-10-30', '2025-12-28', '', 'Special Leave Benefits for Women', 60, 'Without Pay', 0, '', '', '2025-11-13 08:52:59'),
(120, 4241379, '2025-10-13', '2025-10-13', '', 'Sick Leave', 1, 'With Pay', 0, '', '', '2025-11-13 08:52:59'),
(121, 4202035, '2025-10-16', '2025-10-16', '', 'Sick Leave', 0, 'With Pay', 0, '', '', '2025-11-13 08:52:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_leavecard`
--
ALTER TABLE `tbl_leavecard`
  ADD PRIMARY KEY (`lc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_leavecard`
--
ALTER TABLE `tbl_leavecard`
  MODIFY `lc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
