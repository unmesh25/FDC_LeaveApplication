-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 02:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_sanction_data`
--

CREATE TABLE `admin_sanction_data` (
  `Faculty_Name` varchar(55) NOT NULL,
  `Faculty_Mail` varchar(555) NOT NULL,
  `Special_Ods` int(11) NOT NULL,
  `Special_Amount` int(11) NOT NULL,
  `Admin_Mail` varchar(55) NOT NULL,
  `Remark` varchar(55) NOT NULL,
  `Reason` varchar(555) NOT NULL,
  `Title` varchar(55) NOT NULL,
  `Start_Date` date NOT NULL,
  `Sanctioned_Ods` int(11) NOT NULL,
  `Sanctioned_Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_sanction_data`
--

INSERT INTO `admin_sanction_data` (`Faculty_Name`, `Faculty_Mail`, `Special_Ods`, `Special_Amount`, `Admin_Mail`, `Remark`, `Reason`, `Title`, `Start_Date`, `Sanctioned_Ods`, `Sanctioned_Amount`) VALUES
('shreejith', 'shree@somaiya.edu', 11, 5555, 'admin@gmail.com', 'Accepted', 'earergre', 'timepass', '2020-01-14', 10, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `application_data`
--

CREATE TABLE `application_data` (
  `Name` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Branch` varchar(55) NOT NULL,
  `Type` varchar(55) NOT NULL,
  `Title` varchar(55) NOT NULL,
  `Name_of_Organization` varchar(55) NOT NULL,
  `Address_of_organization` varchar(200) NOT NULL,
  `Other_Organizations` varchar(100) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Total_no_of_ods` int(11) NOT NULL,
  `Last_date_for_registration` date NOT NULL,
  `Period` varchar(55) NOT NULL,
  `Registration_fee` int(11) NOT NULL,
  `Amount_claimed` int(11) NOT NULL,
  `Purpose` varchar(500) NOT NULL,
  `Special_Request` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_data`
--

INSERT INTO `application_data` (`Name`, `Email`, `Branch`, `Type`, `Title`, `Name_of_Organization`, `Address_of_organization`, `Other_Organizations`, `Start_date`, `End_date`, `Total_no_of_ods`, `Last_date_for_registration`, `Period`, `Registration_fee`, `Amount_claimed`, `Purpose`, `Special_Request`) VALUES
('shreejith', 'shree@somaiya.edu', 'Comps', 'STTP', 'timepass', 'hug', 'huihui', 'hiuhiuh', '2020-01-14', '2020-01-25', 11, '2020-01-01', 'Non Vaction Period', 555, 5555, '	yreiuyueyr', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Name` varchar(55) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Date_of_Appoinment` date NOT NULL,
  `Employee_Code` varchar(55) NOT NULL,
  `Number` varchar(50) NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `MemberType` varchar(55) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Email`, `Date_of_Appoinment`, `Employee_Code`, `Number`, `Branch`, `MemberType`, `Password`) VALUES
('Admin', 'admin@gmail.com', '0000-00-00', 'one', '1234567890', 'IT', 'FDC Admin', 'aaa'),
('shreyansh', 'shreyans.k@somaiya.edu', '0000-00-00', '', '', '', 'Faculty', 'aaa'),
('shreejith', 'shree@somaiya.edu', '2020-01-22', 'asd', '7777777777', 'Comps', 'Faculty', 'aaaa'),
('tirth', 'tirth@somaiya.edu', '0000-00-00', '', '', '', 'Faculty', 'aaa'),
('ali', 'ali@somaiya.edu', '2020-01-06', 'gugu', '7777777777', 'Comps', 'HOD', 'aaa'),
('dhairya', 'dhairya@somaiya.edu', '0000-00-00', '', '', '', 'FDC Member', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `fdc_leave_data`
--

CREATE TABLE `fdc_leave_data` (
  `Branch` varchar(55) NOT NULL,
  `Faculty_Name` varchar(55) NOT NULL,
  `Faculty_Mailid` varchar(55) NOT NULL,
  `Number_of_ODs` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Reason` varchar(500) NOT NULL,
  `HOD_name` varchar(55) NOT NULL,
  `HOD_email` varchar(55) NOT NULL,
  `HOD_Remark` varchar(55) NOT NULL,
  `HOD_Remark_Reason` varchar(400) NOT NULL,
  `FDCM_name` varchar(55) NOT NULL,
  `FDCM_mail` varchar(55) NOT NULL,
  `FDCM_Remark` varchar(55) NOT NULL,
  `FDCM_Remark_Reason` varchar(500) NOT NULL,
  `Special_Request` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fdc_leave_data`
--

INSERT INTO `fdc_leave_data` (`Branch`, `Faculty_Name`, `Faculty_Mailid`, `Number_of_ODs`, `Amount`, `Reason`, `HOD_name`, `HOD_email`, `HOD_Remark`, `HOD_Remark_Reason`, `FDCM_name`, `FDCM_mail`, `FDCM_Remark`, `FDCM_Remark_Reason`, `Special_Request`) VALUES
('Comps', 'shreejith', 'shree@somaiya.edu', 11, 5555, '	yreiuyueyr', '', '', '', '', 'Admin', 'admin@gmail.com', 'Accepted', 'fdfdbfd', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `fdc_sanction_data`
--

CREATE TABLE `fdc_sanction_data` (
  `Faculty_Name` varchar(55) NOT NULL,
  `Faculty_Mail` varchar(55) NOT NULL,
  `Branch` varchar(55) NOT NULL,
  `FDCM_name` varchar(55) NOT NULL,
  `FDCM_mail` varchar(55) NOT NULL,
  `Date_of_Meeting` date NOT NULL,
  `Remark` varchar(55) NOT NULL,
  `Remark_Reason` varchar(255) NOT NULL,
  `Amount_Sanctioned` int(11) NOT NULL,
  `ODs_sanctioned` int(11) NOT NULL,
  `Special_Request` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fdc_sanction_data`
--

INSERT INTO `fdc_sanction_data` (`Faculty_Name`, `Faculty_Mail`, `Branch`, `FDCM_name`, `FDCM_mail`, `Date_of_Meeting`, `Remark`, `Remark_Reason`, `Amount_Sanctioned`, `ODs_sanctioned`, `Special_Request`) VALUES
('shreejith', 'shree@somaiya.edu', 'Comps', 'Admin', 'admin@gmail.com', '2020-01-10', 'Accepted', 'fdfdbfd', 5000, 10, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `leave_data`
--

CREATE TABLE `leave_data` (
  `Branch` varchar(10) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Number_of_ODs` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Reason` varchar(500) NOT NULL,
  `HOD_name` varchar(50) NOT NULL,
  `HOD_email` varchar(50) NOT NULL,
  `HOD_Remark` varchar(200) NOT NULL,
  `HOD_Remark_Reason` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_data`
--

INSERT INTO `leave_data` (`Branch`, `Name`, `Email`, `Number_of_ODs`, `Amount`, `Reason`, `HOD_name`, `HOD_email`, `HOD_Remark`, `HOD_Remark_Reason`) VALUES
('Comps', 'shreejith', 'shree@somaiya.edu', 11, 5555, '	yreiuyueyr', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_data_files`
--

CREATE TABLE `leave_data_files` (
  `id` int(11) NOT NULL,
  `Branch` varchar(25) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_mime` varchar(255) NOT NULL,
  `file_data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_data_files`
--

INSERT INTO `leave_data_files` (`id`, `Branch`, `Name`, `Email`, `file_name`, `file_mime`, `file_data`) VALUES
(1, 'Comps', 'shreejith', 'shree@somaiya.edu', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resource_data`
--

CREATE TABLE `resource_data` (
  `Name` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `ODs` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Special_Ods` int(11) NOT NULL,
  `Special_Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource_data`
--

INSERT INTO `resource_data` (`Name`, `Email`, `ODs`, `Amount`, `Special_Ods`, `Special_Amount`) VALUES
('shreyansh', 'shreyans.k@somaiya.edu', 12, 12000, 0, 0),
('shreejith', 'shree@somaiya.edu', 2, 12000, 10, 0),
('tirth', 'tirth@somaiya.edu', 12, 12000, 0, 0),
('ali', 'ali@somaiya.edu', 12, 12000, 0, 0),
('dhairya', 'dhairya@somaiya.edu', 12, 12000, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave_data_files`
--
ALTER TABLE `leave_data_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_data_files`
--
ALTER TABLE `leave_data_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
