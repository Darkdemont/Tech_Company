-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 07:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistant`
--

CREATE TABLE `assistant` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) NOT NULL,
  `aaddress` varchar(255) NOT NULL,
  `qulification` varchar(255) NOT NULL,
  `number` varchar(11) NOT NULL,
  `ausername` varchar(45) NOT NULL,
  `apassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assistant`
--

INSERT INTO `assistant` (`aid`, `aname`, `aaddress`, `qulification`, `number`, `ausername`, `apassword`) VALUES
(10, 'Tharusha', 'pabasara panliyadda', 'HND', '778725846', 'tharu@23', '23331');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `did` int(11) NOT NULL,
  `dname` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`did`, `dname`, `date`) VALUES
(1, 'IT', '2023-09-13'),
(2, 'Design', '2023-08-12'),
(4, 'Marketing', '2023-06-22'),
(5, 'Finance', '2023-05-18'),
(6, 'UI/UX ', '2023-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `desid` int(11) NOT NULL,
  `desname` varchar(45) DEFAULT NULL,
  `desdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`desid`, `desname`, `desdate`) VALUES
(1, 'Software Engineer', '2020-01-01'),
(2, 'System Analyst', '2023-08-12'),
(3, 'Project Lead', '2023-07-05'),
(4, 'Program Manager', '2023-06-22'),
(5, 'Financial Analyst', '2023-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `epfno` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `epfno`, `gender`, `fname`, `lname`, `city`, `dob`, `address`, `email`, `department`, `designation`) VALUES
(0, 0, 'Male', 'Kasun', 'Perera', 'Colombo', '2002-08-04', '123 Sea Street', 'kasun.perera@example.com', 'IT', 'Software Engineer'),
(1, 101, 'Male', 'Kasun', 'Perera', 'Colombo', '2002-08-04', '123 Sea St', 'kasun.perera@example.com', 'IT', 'Software Engineer'),
(2, 102, 'Female', 'Nimali', 'Fernando', 'Kandy', '2002-05-15', '456 Mtn Rd', 'nimali.fernando@example.com', 'Finance', 'Financial Analyst'),
(3, 1234567893, 'Male', 'Eren', 'Yeager', 'Kurunegala', '2001-01-01', 'Kurunegala', 'Eren1234@gmail.com', 'IT', 'Software Engineer'),
(4, 1234567845, 'Female', 'Mikasa', 'Ackerman', 'Colombo', '2001-01-01', 'Colombo', 'Mikasa@gmail.com', 'Design', 'Software Engineer'),
(5, 105, 'Male', 'Rohan', 'Wijesinghe', 'Anuradhapura', '2002-09-07', '654 Forest Way', 'rohan.wijesinghe@example.com', 'Engineering', 'Mechanical Engineer'),
(6, 106, 'Female', 'Shalini', 'Kumarasinghe', 'Kurunegala', '2002-02-21', '135 Beach St', 'shalini.kumarasinghe@example.com', 'Sales', 'Sales Executive'),
(7, 107, 'Male', 'Nuwan', 'Ratnayake', 'Ratnapura', '2002-04-30', '246 Park Ave', 'nuwan.ratnayake@example.com', 'Logistics', 'Supply Chain Manager'),
(8, 108, 'Female', 'Priyanka', 'Mahesh', 'Badulla', '2002-07-15', '963 Garden Cir', 'priyanka.mahesh@example.com', 'Admin', 'Administrative Assistant'),
(9, 109, 'Male', 'Lahiru', 'Saman', 'Jaffna', '2002-12-06', '852 Hill Dr', 'lahiru.saman@example.com', 'Operations', 'Operations Manager'),
(10, 110, 'Female', 'Kumari', 'Dissanayake', 'Kegalle', '2002-10-25', '529 Sky View', 'kumari.dissanayake@example.com', 'IT', 'System Analyst'),
(11, 111, 'Male', 'Thilina', 'Wickramasinghe', 'Kalutara', '2002-11-20', '700 Ocean Blvd', 'thilina.wickramasinghe@example.com', 'Research', 'Data Scientist'),
(12, 112, 'Female', 'Nilusha', 'Peris', 'Trincomalee', '2002-06-18', '314 Spring Rd', 'nilusha.peris@example.com', 'Quality Assurance', 'QA Engineer'),
(13, 113, 'Male', 'Ajith', 'Karunaratne', 'Puttalam', '2002-05-04', '481 Cloud St', 'ajith.karunaratne@example.com', 'Legal', 'Legal Advisor'),
(14, 114, 'Female', 'Amara', 'De Silva', 'Monaragala', '2002-08-30', '169 Sunshine Ln', 'amara.desilva@example.com', 'Design', 'Graphic Designer'),
(15, 115, 'Male', 'Vishwa', 'Jayawardena', 'Polonnaruwa', '2002-04-10', '784 Moonlight Dr', 'vishwa.jayawardena@example.com', 'Business Development', 'Project Lead'),
(44, 103, 'Male', 'Sahan', 'Silva', 'Galle', '2002-01-12', '789 Lake Ave', 'sahan.silva@example.com', 'HR', 'HR Manager'),
(47, 104, 'Female', 'Dilini', 'Jayasuriya', 'Matara', '2002-03-23', '321 River Ln', 'dilini.jayasuriya@example.com', 'Marketing', 'Marketing Specialist'),
(56, 564, 'Male', 'fdhfd', 'hfgh', 'hfdxh', '2023-09-11', 'xg', 'xgh@', 'IT', 'Software Engineer'),
(89, 65, 'Male', 'kavi', 'wijesiri', 'polonnaruwa', '2002-07-22', 'sgvdf', 'sdfGZ', 'IT', 'Software Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `hrlogin`
--

CREATE TABLE `hrlogin` (
  `hid` int(11) NOT NULL,
  `husername` varchar(45) DEFAULT NULL,
  `hpassword` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hrlogin`
--

INSERT INTO `hrlogin` (`hid`, `husername`, `hpassword`) VALUES
(1, 'abcd', '1234'),
(2, 'asd', '1234'),
(8, 'Hemakumara', '123'),
(654, 'shb', 'fnj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistant`
--
ALTER TABLE `assistant`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `dname` (`dname`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`desid`),
  ADD UNIQUE KEY `desname` (`desname`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`),
  ADD UNIQUE KEY `epfno` (`epfno`);

--
-- Indexes for table `hrlogin`
--
ALTER TABLE `hrlogin`
  ADD PRIMARY KEY (`hid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
