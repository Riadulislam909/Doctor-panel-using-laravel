-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 12:00 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `word` varchar(100) NOT NULL,
  `bedno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`id`, `name`, `word`, `bedno`) VALUES
(1, 'Q', 'sdsddfdfdf', '777'),
(2, 'ddzfd', 'sdsdazsa', '77788'),
(3, 'abcd', 'dzdcsd', '777');

-- --------------------------------------------------------

--
-- Table structure for table `bloods`
--

CREATE TABLE `bloods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bloodgroup` varchar(100) NOT NULL,
  `donate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloods`
--

INSERT INTO `bloods` (`id`, `name`, `email`, `number`, `address`, `bloodgroup`, `donate`) VALUES
(3, 'riad', 'john@gmail.com', '123456', 'avzxax', 'B+', '2'),
(5, 'scazcz', 'scaca@gmail.com', 'cascasda', 'DHAKA', 'A-', '1 Beg');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `deptName` varchar(100) NOT NULL,
  `details` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `deptName`, `details`) VALUES
(2, 'Dr. Maria Williams', 'Dentistry', 'Dentistry, also known as Dental and Oral Medicine, is a branch of medicine that consists of the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity, commonly in the dentition but also the oral mucous, and of adjacent and related structures and tissue particularly.'),
(3, 'Dr. Rakib Williams', 'Cardiology', 'Cardiology is a branch of medicine that deals with the disorders of the heart as well as some parts of the circulatory system. The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease and electrophysiology.'),
(4, 'Dr. Xamiln Maillinaw', 'Critical Care', 'Critical Care is an online open access peer-reviewed medical journal covering intensive-care medicine published by BioMed Central.');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `subject`, `message`) VALUES
(1, 'Emergency', 'Need Help', 'A+ blood Needed');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `problem` varchar(500) NOT NULL,
  `prescrip` varchar(500) NOT NULL,
  `doctorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `name`, `problem`, `prescrip`, `doctorName`) VALUES
(2, 'Claire Smi', 'asdfgh', 'asdfghj', 'Dr.Christinne\r\n'),
(3, 'Q', 'dssdsdvs', 'svfdfbgdg', 'Dr.William Stan'),
(5, 'abcd', 'xczxczxc', 'czdscxasdada', 'Dr.Melissa Smith');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `details` varchar(100) NOT NULL,
  `doctorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `name`, `date`, `details`, `doctorName`) VALUES
(1, 'Q', '2020-04-09', 'sdasda', 'Dr.William Stan'),
(2, 'abcd', '2021-01-01', 'fsfzdfsdfsdfsdf', 'Dr.Melissa Smith'),
(3, 'ddzfd', '2021-02-02', 'asxdasdasda', 'Dr.Melissa Smith'),
(4, 'ddzfd', '2021-01-01', 'dagdaidjasnjdahdau', 'Dr.Melissa Smith');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `details`) VALUES
(1, 'RMI Services', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin.'),
(2, 'Screening Exams', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin.'),
(3, 'Neonatology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin.'),
(7, 'Blood', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ante leo finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin.'),
(8, 'Dentistry', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin.'),
(9, 'Biochemistry', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ante leo, finibus quis est ut, tempor tincidunt ipsum. Nam consequat semper sollicitudin.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `review` varchar(500) DEFAULT NULL,
  `validation` varchar(100) DEFAULT NULL,
  `problem` varchar(5000) DEFAULT NULL,
  `doctorName` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `number`, `email`, `address`, `username`, `password`, `department`, `review`, `validation`, `problem`, `doctorName`, `date`) VALUES
(3, 'Dr.Melissa Smith', 'doctor', '01472145873', 'smith@gmail.com', 'Dhaka', 'smith', '1234', 'Cardiology', '', 'valid', '', NULL, NULL),
(4, 'Dr.Josh Henderson', 'doctor', '12345', 'Josh@gmail.com', 'Dhaka', 'josh', '1234', 'Plastic Surgeon', '', 'valid', '', NULL, NULL),
(5, 'Dr.Christinne\r\n', 'doctor', '01236598748', 'Jones@gmail.com', 'Dhaka', 'jones', '1234', 'Pediatrist\r\n', '', 'valid', '', NULL, NULL),
(6, 'Dr.William Stan', 'doctor', '01478546984', 'Stan12@gmail.com', 'Dhaka', 'stan', '1234', 'Critical Care', '', 'valid', '', NULL, NULL),
(17, 'Q', 'admin', '01478523692', 'q@gmmail.com', 'DHAKAqqw', 'qwe', '1234', NULL, NULL, 'valid', 'helpdsdsd', 'Dr.William Stan', '17/25/2020'),
(18, 'abcd', 'patient', '123456', 'abcd@yopmail.com', 'basundhara', 'fahim12', '12345', NULL, NULL, 'valid', 'ytujufjhjghch', 'Dr.Melissa Smith', '18/25/2020'),
(19, 'ddzfd', 'patient', '123456', 'zz@fdfsd.com', 'asasa', 'aabbb123', '1234', NULL, NULL, 'valid', 'sadasdasdasd', 'Dr.Melissa Smith', NULL),
(20, 'abcdqqqqq', 'patient', '123345', 'john@gmail.com', 'asasa', 'x123', '1234', NULL, NULL, 'valid', 'sasasasa', 'Dr.Melissa Smith', NULL),
(22, 'abcd', 'doctor', '123456', 'abcd@yopmail.com', 'basundhara', 'abcd12', 'abcd1234', 'Plastic Surgeon', NULL, NULL, NULL, NULL, NULL),
(23, 'abcd121122121', 'patient', '123345', 'john@gmail.com', 'asasaqqqq', 'x3232132', 'qwe12333', NULL, NULL, 'valid', 'qsasa', 'Dr.Melissa Smith', '18/25/2020'),
(24, 'aza', 'patient', '123345', 'q@gmmail.com', 'assdsdSDasd', 'fahim33444432', '1234', NULL, NULL, 'valid', 'ASAdsSDasd', 'Dr.Melissa Smith', '18/25/2020'),
(25, 'abcd', 'doctor', '12334', 'abcd@yopmail.com', 'asasa', 'x12121', 'Riad1234', 'Anesthesiologists', NULL, NULL, NULL, NULL, NULL),
(26, 'abcd', 'doctor', '12334', 'abcd@yopmail.com', 'asasa', 'x12121', 'Riad1234', 'Anesthesiologists', NULL, NULL, NULL, NULL, NULL),
(27, 'abcd', 'doctor', '12334', 'abcd@yopmail.com', 'asasa', 'x12121', 'Riad1234', 'Anesthesiologists', NULL, 'valid', NULL, NULL, NULL),
(28, 'asasa', 'patient', '123456', 'abcd@yopmail.com', 'asasa', 'x9876655', 'qw1221', NULL, NULL, 'valid', 'fgsfgs', 'Dr.Melissa Smith', '17/25/2020'),
(29, 'tarif', 'patient', '123456', 'abcd@yopmail.com', 'DHAKA', 'x12222', '12345ad', NULL, NULL, 'valid', 'dfsfsadfsdf', 'Dr.Melissa Smith', '18/25/2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloods`
--
ALTER TABLE `bloods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bloods`
--
ALTER TABLE `bloods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
