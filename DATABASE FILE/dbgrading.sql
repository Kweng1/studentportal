-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 07:41 AM
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
-- Database: `dbgrading`
--

-- --------------------------------------------------------

--
-- Table structure for table `ay`
--

CREATE TABLE `ay` (
  `AY_ID` int(11) NOT NULL,
  `ACADYR` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASS_ID` int(11) NOT NULL,
  `CLASS_CODE` varchar(30) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(11) NOT NULL,
  `AY` varchar(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `C_TIME` varchar(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SECTION` varchar(30) NOT NULL DEFAULT 'NONE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_CODE`, `SUBJ_ID`, `INST_ID`, `SYID`, `AY`, `DAY`, `C_TIME`, `IDNO`, `SECTION`) VALUES
(3, 'Spiral Filipino', 438, 1, 0, '2013-2014', 'MWF', '7:30-8:30', 0, 'A'),
(4, 'Spiral English', 439, 1, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(5, 'Spiral Science', 441, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(6, 'Spiral T.L.E', 442, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(7, 'Spiral A.P', 443, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(8, 'Spiral Religion', 444, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(9, 'Spiral EsP.', 445, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(10, 'Spiral Mathematics', 440, 7, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(11, 'MAPEH', 447, 7, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(12, 'Spiral Science', 469, 5, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(13, 'Spiral T.L.E.', 471, 5, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(14, 'Spiral MAPEH', 472, 5, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(15, 'Values Education', 473, 5, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(16, 'CAT', 474, 5, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(17, 'Computer', 475, 5, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE'),
(18, 'W301', 477, 8, 0, '2019-2020', 'TTH', '10:30-11:30', 0, '3A'),
(19, 'HUM', 480, 9, 0, '2019-2020', 'MWF', '2:30-3:30', 0, '3A'),
(20, 'IT306', 482, 10, 0, '2019-2020', 'TTH', '1:30-2:30', 0, '3A'),
(21, 'IT307', 483, 10, 0, '2019-2020', 'TTH', '5:30-6:30', 0, '3A'),
(22, 'IM207', 487, 10, 0, '2019-2020', 'NONE', 'NONE', 0, 'NONE'),
(23, 'NATSCI1', 478, 11, 0, '2018-2019', 'NONE', 'NONE', 0, 'NONE'),
(24, 'SIA304', 479, 11, 0, '2019-2020', 'NONE', 'NONE', 0, 'NONE'),
(25, 'PT300', 484, 11, 0, '2019-2020', 'NONE', 'NONE', 0, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL DEFAULT 1,
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_LEVEL`, `COURSE_MAJOR`, `COURSE_DESC`, `DEPT_ID`) VALUES
(47, 'Grade 7', 7, '', 'Grade 7', 2),
(48, 'Grade 8', 8, '', 'Grade 8 ', 1),
(49, 'Grade 9', 9, '', 'Grade 9', 1),
(50, 'Grade 10', 10, '', 'Grade 10', 1),
(53, 'Grade 11', 11, '', 'Grade 11 ', 1),
(54, 'Grade 12', 0, '', '2nd year of Senior High', 2),
(55, 'BSIT 3', 0, '', 'BSIT 3B', 6),
(56, 'BSIT 2', 0, '', 'BSIT 2A', 6),
(57, 'BSIT 1', 0, '', 'BSIT 1A', 6),
(58, 'BSBA3', 0, '', 'BSBA 3A', 6);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPARTMENT_NAME`, `DEPARTMENT_DESC`) VALUES
(3, 'BSIT', 'Bachelor of Science and Technology'),
(4, 'BSCRIM', 'Bachelor of Science in Criminology'),
(5, 'BSBA', 'Bachelor of Science in Business Administration'),
(6, 'BSTM', 'Bachelor of Science in Tourism Management');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(30) NOT NULL,
  `FIRST` decimal(11,2) NOT NULL,
  `SECOND` decimal(11,2) NOT NULL,
  `THIRD` decimal(11,2) NOT NULL,
  `FOURTH` decimal(11,2) NOT NULL,
  `AVE` float NOT NULL,
  `DAY` varchar(30) NOT NULL,
  `G_TIME` time NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `INST_ID`, `SYID`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `AVE`, `DAY`, `G_TIME`, `REMARKS`, `COMMENT`) VALUES
(1, 20004277, 438, 1, 0, '30.00', '67.00', '0.00', '0.00', 3.85, 'NONE', '00:00:00', 'Failed', ''),
(2, 20004277, 439, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(3, 20004207, 438, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(4, 20004207, 439, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(5, 20004180, 438, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(6, 20004180, 439, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(7, 20004180, 440, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(8, 20004180, 441, 6, 0, '60.00', '78.00', '80.00', '90.00', 77, 'NONE', '00:00:00', 'Passed', ''),
(9, 20004180, 442, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(10, 20004180, 443, 6, 0, '90.00', '89.00', '78.00', '90.00', 87, 'NONE', '00:00:00', 'Passed', ''),
(11, 20004180, 444, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(12, 20004180, 445, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(13, 20004180, 447, 7, 0, '20.00', '55.00', '65.00', '40.00', 45, 'NONE', '00:00:00', 'Failed', ''),
(14, 20004623, 438, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(15, 20004623, 439, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(16, 20004623, 440, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(17, 20004623, 441, 6, 0, '80.00', '80.00', '78.00', '80.00', 80, 'NONE', '00:00:00', 'Passed', ''),
(18, 20004623, 442, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(19, 20004623, 443, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(20, 20004623, 444, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(21, 20004623, 445, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(22, 20004623, 447, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(23, 6231415, 438, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(24, 6231415, 439, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(25, 6231415, 440, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(55, 2100012897, 480, 9, 10, '1.45', '1.21', '1.20', '1.60', 0, 'NONE', '00:00:00', 'Failed', ''),
(60, 2100012897, 477, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(61, 2100012897, 478, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(62, 2100012897, 479, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(63, 2100012897, 482, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(64, 2100012897, 483, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(65, 2100012897, 484, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(66, 2100012897, 485, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(67, 2100012901, 478, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(68, 2100012901, 479, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(69, 2100012901, 480, 9, 11, '5.00', '5.00', '5.00', '5.00', 0, 'NONE', '00:00:00', 'Failed', ''),
(70, 2100012901, 482, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(71, 2100012901, 477, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(72, 2100012901, 483, 10, 11, '2.00', '2.00', '2.00', '2.00', 2, 'NONE', '00:00:00', 'Failed', ''),
(73, 2100012901, 484, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(74, 2100012901, 485, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(75, 2100012901, 486, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(76, 2100012901, 487, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(77, 2100012897, 487, 0, 9, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(78, 2100012897, 486, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(79, 2100012897, 488, 0, 10, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(80, 2100012901, 488, 0, 11, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(81, 12345, 477, 0, 13, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(82, 12345, 478, 0, 13, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(83, 12345, 479, 0, 13, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(84, 12345, 480, 9, 13, '1.80', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'Failed', ''),
(85, 12345, 482, 0, 13, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(86, 12345, 483, 0, 13, '0.00', '0.00', '0.00', '0.00', 0, 'NONE', '00:00:00', 'NONE', ''),
(87, 12345, 484, 11, 13, '34.00', '34.00', '34.00', '34.00', 0, 'NONE', '00:00:00', 'Failed', '');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `INST_ID` int(30) NOT NULL,
  `INST_FULLNAME` varchar(255) NOT NULL,
  `INST_ADDRESS` varchar(255) NOT NULL,
  `INST_SEX` varchar(20) NOT NULL DEFAULT 'Male',
  `INST_STATUS` varchar(20) NOT NULL DEFAULT 'Single',
  `SPECIALIZATION` text NOT NULL,
  `INST_EMAIL` varchar(255) NOT NULL,
  `EMPLOYMENT_STATUS` varchar(40) NOT NULL DEFAULT 'Probationary'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`INST_ID`, `INST_FULLNAME`, `INST_ADDRESS`, `INST_SEX`, `INST_STATUS`, `SPECIALIZATION`, `INST_EMAIL`, `EMPLOYMENT_STATUS`) VALUES
(8, 'Erickson ', 'Minglanilla', 'M', 'Single', 'Programming', 'erickson@gmail.com', ''),
(9, 'Archille Yu', 'Minglanilla', 'F', 'Single', '', 'yu@gmail.com', ''),
(10, 'Mike Bustamante', 'Minglanilla', 'M', 'Single', '', 'mike@gmail.com', ''),
(11, 'kyle', 'Minglanilla', 'M', 'Single', '', 'kyle@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `YR_ID` int(11) NOT NULL,
  `LEVEL` varchar(30) NOT NULL,
  `LEVEL_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `MAJOR_ID` int(11) NOT NULL,
  `MAJOR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`MAJOR_ID`, `MAJOR`) VALUES
(1, 'English'),
(2, 'General'),
(3, 'Marketing Management'),
(4, 'Financial Management'),
(5, 'Filipino'),
(6, 'Philosophy'),
(7, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `PHOTO_ID` int(11) NOT NULL,
  `FILENAME` text NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SIZE` int(30) NOT NULL,
  `CAPTION` varchar(255) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `PRIMARY` varchar(20) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyr`
--

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'ENROLLED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schoolyr`
--

INSERT INTO `schoolyr` (`SYID`, `AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`) VALUES
(1, '2013-2014', 'First', 47, 20004277, 'ENROLLED', '2014-03-12 02:10:03', '0000-00-00 00:00:00', 'New'),
(2, '2013-2014', 'First', 47, 20004207, 'ENROLLED', '2014-03-12 02:32:19', '0000-00-00 00:00:00', 'New'),
(3, '2014-2015', 'First', 48, 20004277, 'ENROLLED', '2014-03-13 03:18:56', '0000-00-00 00:00:00', 'Continuing'),
(4, '2013-2014', 'First', 47, 20004180, 'ENROLLED', '2014-03-24 08:28:35', '0000-00-00 00:00:00', 'New'),
(5, '2013-2014', 'First', 47, 20004623, 'ENROLLED', '2014-03-24 09:16:15', '0000-00-00 00:00:00', 'New'),
(6, '2018-2019', 'First', 47, 6231415, 'ENROLLED', '2021-01-28 07:34:09', '0000-00-00 00:00:00', 'New'),
(7, '2019-2020', 'First', 50, 696969, 'ENROLLED', '2021-03-23 06:45:55', '0000-00-00 00:00:00', 'New'),
(8, '2013-2014', 'First', 47, 696969, 'ENROLLED', '2021-03-23 06:55:09', '0000-00-00 00:00:00', 'New'),
(9, '2013-2014', 'First', 54, 2100012897, 'ENROLLED', '2024-01-31 07:32:55', '0000-00-00 00:00:00', 'New'),
(10, '2019-2020', 'First', 55, 2100012897, 'ENROLLED', '2024-01-31 08:28:14', '0000-00-00 00:00:00', 'New'),
(12, '2019-2020', 'First', 55, 2100012901, 'ENROLLED', '2024-01-31 13:59:32', '0000-00-00 00:00:00', 'New'),
(13, '2019-2020', 'First', 55, 12345, 'ENROLLED', '2024-01-31 14:03:26', '0000-00-00 00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `SEM_ID` int(11) NOT NULL,
  `SEM` varchar(15) NOT NULL DEFAULT 'First'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SEM_ID`, `SEM`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`STUDSUBJ_ID`, `IDNO`, `SUBJ_ID`, `LEVEL`, `SEMESTER`, `SY`) VALUES
(6, 20004207, 11, 1, 'First', '2013-2014'),
(8, 20004207, 13, 1, 'First', '2013-2014'),
(9, 20004207, 14, 1, 'First', '2013-2014'),
(10, 20004207, 15, 1, 'First', '2013-2014'),
(13, 20004277, 13, 1, 'First', '2013-2014'),
(14, 20004277, 14, 1, 'First', '2013-2014'),
(15, 20004277, 15, 1, 'First', '2013-2014');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `AY`, `SEMESTER`) VALUES
(476, 'hjgjhggh', 'gj', 3, '', 51, '2013-2014', 'First'),
(477, 'W301', 'Elective 1', 3, '', 55, '2013-2014', 'First'),
(478, 'NATSCI1', 'Physical Science', 3, '', 55, '2018-2019', 'First'),
(479, 'SIA304', 'System Integration and Architecture', 3, '', 55, '2019-2020', 'First'),
(480, 'HUM', 'Intro to Literature', 3, '', 55, '2013-2014', 'First'),
(482, 'IT306', 'Multimedia System', 3, '', 55, '2019-2020', 'First'),
(483, 'IT307', 'System Analysis and Design', 3, '', 55, '2019-2020', 'First'),
(484, 'PT300', 'Free Elective', 3, '', 55, '2019-2020', 'First'),
(485, 'REED 4', 'Christian Commitment & Responsibility', 3, '', 55, '2019-2020', 'First'),
(486, 'GE3', 'Reading in Philippine History', 3, '', 55, '2019-2020', 'First'),
(487, 'IM207', 'Fundamentals of  Database System', 3, '', 58, '2013-2014', 'First'),
(488, 'CAP 401', 'Capstone Project 2', 3, '', 55, '2023-2024', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirements`
--

CREATE TABLE `tblrequirements` (
  `REQ_ID` int(30) NOT NULL,
  `NSO` varchar(5) NOT NULL DEFAULT 'no',
  `BAPTISMAL` varchar(5) NOT NULL DEFAULT 'no',
  `ENTRANCE_TEST_RESULT` varchar(5) NOT NULL DEFAULT 'no',
  `MARRIAGE_CONTRACT` varchar(5) NOT NULL DEFAULT 'no',
  `CERTIFICATE_OF_TRANSFER` varchar(5) NOT NULL DEFAULT 'no',
  `IDNO` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblrequirements`
--

INSERT INTO `tblrequirements` (`REQ_ID`, `NSO`, `BAPTISMAL`, `ENTRANCE_TEST_RESULT`, `MARRIAGE_CONTRACT`, `CERTIFICATE_OF_TRANSFER`, `IDNO`) VALUES
(48, 'Yes', 'No', 'No', 'No', 'No', 20001550),
(61, 'Yes', 'Yes', 'Yes', 'No', 'No', 2100012897),
(63, 'No', 'No', 'No', 'No', 'No', 2100012901),
(64, 'No', 'No', 'No', 'No', 'No', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL,
  `FATHER` varchar(255) NOT NULL,
  `FATHER_OCCU` varchar(255) NOT NULL,
  `MOTHER` varchar(255) NOT NULL,
  `MOTHER_OCCU` varchar(255) NOT NULL,
  `BOARDING` varchar(5) NOT NULL DEFAULT 'no',
  `WITH_FAMILY` varchar(5) NOT NULL DEFAULT 'yes',
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `OTHER_PERSON_SUPPORT` varchar(255) NOT NULL,
  `ADDRESS` text NOT NULL,
  `IDNO` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `FATHER`, `FATHER_OCCU`, `MOTHER`, `MOTHER_OCCU`, `BOARDING`, `WITH_FAMILY`, `GUARDIAN`, `GUARDIAN_ADDRESS`, `OTHER_PERSON_SUPPORT`, `ADDRESS`, `IDNO`) VALUES
(48, 'BENIGNO B. CORTEZ', 'FARMER', 'TERESITA P. CORTEZ', 'HOUSE WIFE', 'Yes', 'No', 'BENIGNO B. CORTEZ', 'TABUGON,kABANKALAN CITY', 'NONE', 'NONE', 20001550),
(61, 'Wilfredo Villafuerte Jr.', 'Farmer', 'Prima Villafuerte', 'Mother', 'No', 'No', '', '', '', '', 2100012897),
(63, '', '', '', '', 'No', 'No', '', '', '', '', 2100012901),
(64, '', '', '', '', 'No', 'No', '', '', '', '', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `EMAIL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`S_ID`, `IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `STATUS`, `AGE`, `NATIONALITY`, `RELIGION`, `CONTACT_NO`, `HOME_ADD`, `EMAIL`) VALUES
(58, 2100012897, 'Aeron', 'Villafuerte', 'Geverola', 'F', '2024-01-31', 'Usmad, Argao, Cebu', 'Single', 20, 'Filipino', 'Roman Catholic', '09323987715', 'Usmad, Argao, Cebu', 'aeronvillafuerte20@gmail.com'),
(60, 2100012901, 'Krztel', 'Camello', 'Panerio', 'F', '2004-10-20', 'Usmad, Argao, Cebu', 'Single', 24, 'Filipino', 'Roman Catholic', '098765432', 'Usmad, Argao, Cebu', 'etil@gmail.com'),
(61, 12345, 'Jhon Paul', 'Cano', 'Xano', 'M', '2003-03-13', 'San Fernando', 'Single', 20, 'Filipino', 'Roman Catholic', '09876543123', 'San Fernando', 'cano@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(1, 'Logan Smith', 'adminlogan@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Administrator'),
(3, 'Joken Villanueva', 'joken@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator'),
(4, 'Hatch Villanueva', 'hatchvillanueva16@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Registrar'),
(6, 'joenin', 'joenin@yahoo.com', '25f3c6036a19460cd5d3f302fa7b99e5be56cb0e', 'Encoder'),
(8, 'joken', 'j@y.c', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Student'),
(9, 'Allan', 'allan@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Teacher'),
(10, 'sdfsdfsdg', 'joken@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Teacher'),
(11, 'George Wilson', 'gwilson@sample.com', 'e67a0311df4d7de4eb50c3fc1e012b4823a6917d', 'Teacher'),
(12, 'Harry Den', 'harryden@gmail.com', '23a0b5e4fb6c6e8280940920212ecd563859cb3c', 'Student'),
(13, 'demo', 'demo', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', 'Course In-charge'),
(14, 'Erickson ', 'erickson@gmail.com', 'b7b975da6a95a9e891efad76d30b43b75a267911', 'Teacher'),
(15, 'Archille Yu', 'yu@gmail.com', '6abf76e9ef2f373e4820779b26b6a591348cd3ba', 'Teacher'),
(16, 'Mike Bustamante', 'mike@gmail.com', 'c1dc284dcd36406fe50701ae6838f5d40ee724d0', 'Teacher'),
(17, 'kyle', 'kyle@gmail.com', '7e240de74fb1ed08fa08d38063f6a6a91462a815', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ay`
--
ALTER TABLE `ay`
  ADD PRIMARY KEY (`AY_ID`),
  ADD UNIQUE KEY `acadyr` (`ACADYR`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`INST_ID`),
  ADD UNIQUE KEY `INST_EMAIL` (`INST_EMAIL`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`YR_ID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`MAJOR_ID`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`PHOTO_ID`);

--
-- Indexes for table `schoolyr`
--
ALTER TABLE `schoolyr`
  ADD PRIMARY KEY (`SYID`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SEM_ID`);

--
-- Indexes for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD PRIMARY KEY (`STUDSUBJ_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`);

--
-- Indexes for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  ADD PRIMARY KEY (`REQ_ID`);

--
-- Indexes for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  ADD PRIMARY KEY (`DETAIL_ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `IDNO` (`IDNO`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ay`
--
ALTER TABLE `ay`
  MODIFY `AY_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `INST_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `YR_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `MAJOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `PHOTO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `SEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  MODIFY `REQ_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
