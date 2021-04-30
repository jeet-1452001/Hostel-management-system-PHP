-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 01:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2020-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardian_email` varchar(45) NOT NULL,
  `guardian_password` varchar(10) NOT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardian_email`, `guardian_password`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(6, 100, 5, 8000, 0, '2016-04-22', 5, 'Bachelor  of Technology', 10806121, 'Anuj', '', 'kumar', 'male', 8285703354, 'anuj.lpu1@gmail.com', 0, 'XYZ', 'abcd@gmail.com', 'zarana00', 'Mother', 8285703354, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2016-04-16 08:24:09', '20-02-2020 11:52:27'),
(7, 100, 5, 8000, 1, '2016-06-17', 4, 'Bachelor of Engineering', 108061211, 'Test', 'test', 'kumar', 'male', 8467067344, 'test@gmail.com', 123456789, 'test', 'cdef@gmail.com', 'zarana2606', 'test', 1236547890, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2016-06-23 11:54:35', '20-02-2020 11:38:28'),
(8, 112, 3, 4000, 0, '2016-06-27', 5, 'Bachelor  of Science', 102355, 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', 789632587, 'demo', 'ghijk@gmail.com', 'zarana2606', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', '20-02-2020 11:38:28'),
(9, 132, 5, 2000, 1, '2016-06-28', 6, 'Bachelor of Engineering', 586952, 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', 8285703354, 'demo', 'lmnop@gmail.com', 'zarana2606', 'demo', 8285703354, 'New Delhi India', 'Aligarh', 'Uttar Pradesh', 202001, 'New Delhi India', 'Delhi', 'Delhi (NCT)', 202001, '2016-06-26 16:40:07', '20-02-2020 11:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 5, 100, 8000, '2016-04-11 22:45:43'),
(2, 2, 201, 6000, '2016-04-12 01:30:47'),
(3, 2, 200, 6000, '2016-04-12 01:30:58'),
(4, 3, 112, 4000, '2016-04-12 01:31:07'),
(5, 5, 132, 2000, '2016-04-12 01:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:02:51'),
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 05:49:42'),
(9, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 07:17:32'),
(10, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-06-10 08:08:59'),
(11, 10, 'test@gmail.com', 0x3a3a31, '', '', '2020-02-15 10:11:30'),
(12, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-18 06:26:35'),
(13, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-18 06:41:14'),
(14, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-18 06:44:12'),
(15, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 07:41:03'),
(16, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 08:35:28'),
(17, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 08:46:42'),
(18, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 08:52:24'),
(19, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 08:53:26'),
(20, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:06:44'),
(21, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:25:43'),
(22, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:34:49'),
(23, 10, 'test@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:36:27'),
(24, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:44:40'),
(25, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:46:09'),
(26, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:48:13'),
(27, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:48:17'),
(28, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:51:57'),
(29, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 09:54:00'),
(30, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:21:23'),
(31, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:23:08'),
(32, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:23:09'),
(33, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:25:09'),
(34, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:32:29'),
(35, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:34:06'),
(36, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:34:09'),
(37, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:37:16'),
(38, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:38:14'),
(39, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:40:49'),
(40, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-18 10:54:11'),
(41, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:14:33'),
(42, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:16:35'),
(43, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:28:22'),
(44, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:29:56'),
(45, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:32:07'),
(46, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:41:11'),
(47, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:41:51'),
(48, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:48:38'),
(49, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:52:15'),
(50, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 05:56:19'),
(51, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 06:13:23'),
(52, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 06:27:18'),
(53, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 06:31:47'),
(54, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 06:41:55'),
(55, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 06:41:56'),
(56, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 06:45:06'),
(57, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:14:06'),
(58, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:15:13'),
(59, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:15:49'),
(60, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:16:03'),
(61, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:17:18'),
(62, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:19:09'),
(63, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:19:23'),
(64, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:24:18'),
(65, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:25:08'),
(66, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:26:21'),
(67, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:27:40'),
(68, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 07:44:44'),
(69, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 08:45:00'),
(70, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 08:58:36'),
(71, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 08:59:38'),
(72, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:01:38'),
(73, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:03:46'),
(74, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:07:28'),
(75, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:09:46'),
(76, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:10:31'),
(77, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:12:46'),
(78, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:17:09'),
(79, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:52:28'),
(80, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:53:43'),
(81, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 09:59:21'),
(82, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 13:15:17'),
(83, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 13:16:22'),
(84, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 15:49:43'),
(85, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 15:50:21'),
(86, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 15:52:45'),
(87, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 15:55:05'),
(88, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 16:13:24'),
(89, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 16:26:47'),
(90, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 16:40:15'),
(91, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 16:42:16'),
(92, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 17:00:38'),
(93, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 17:12:20'),
(94, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-20 17:30:43'),
(95, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 17:46:07'),
(96, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 17:46:41'),
(97, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 17:55:24'),
(98, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 18:02:16'),
(99, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 18:06:30'),
(100, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-20 18:16:37'),
(101, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-21 07:33:53'),
(102, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-21 07:37:32'),
(103, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-21 08:59:02'),
(104, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-21 08:59:34'),
(105, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-21 09:09:05'),
(106, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-21 09:13:09'),
(107, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-21 09:18:05'),
(108, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-21 09:23:56'),
(109, 6, 'abcd@gmail.com', 0x3a3a31, '', '', '2020-02-22 06:01:57'),
(110, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-22 06:07:02'),
(111, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-22 06:07:33'),
(112, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-25 08:38:52'),
(113, 21, 'jeetpandya1452001@gmail.com', 0x3a3a31, '', '', '2020-02-25 08:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'Test', 'test', 'kumar', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2016-06-22 04:21:33', '10-06-2019 12:48:13', NULL),
(19, '102355', 'rahul', 'kumar', 'Singh', 'male', 6786786786, 'rahul@gmail.com', '6786786786', '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Ajay', '', 'kumar', 'male', 8596185625, 'ajay@gmail.com', '8596185625', '2016-06-26 16:40:07', '', ''),
(21, '00562', 'jeet', 'rajubhai', 'pandya', 'male', 8733924685, 'jeetpandya1452001@gmail.com', 'jeet1234', '2020-02-18 06:26:09', '18-02-2020 02:55:17', '21-02-2020 02:34:00'),
(34, '00563', 'Zarana', 'Ghanshyam', 'Solanki', 'female', 6354151547, 'zaranasolanki41014@gmail.com', 'chaku26', '2020-02-21 06:49:44', NULL, NULL),
(45, '78945', 'bhafu', 'dhsdhk', 'lmnogji', 'others', 798515, 'weret@gmail.com', '4567', '2020-02-26 10:21:45', NULL, NULL),
(49, '789451', 'kdlsd', 'fdhfuke', 'dryiu', 'male', 7845613, 'reret@gmail.com', '6789', '2020-02-26 10:25:05', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guardian_email` (`guardian_email`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regNo` (`regNo`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
