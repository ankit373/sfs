-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2016 at 05:31 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `cm_feed`
--

CREATE TABLE IF NOT EXISTS `cm_feed` (
  `u_id` int(4) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `year` varchar(10) NOT NULL,
  `Punctuality` int(1) NOT NULL,
  `Knowledge of the subject` int(1) NOT NULL,
  `Presentation skill` int(1) NOT NULL,
  `Interaction with the students` int(1) NOT NULL,
  `Difficuilty attitude` int(1) NOT NULL,
  `Use of teaching aids` int(1) NOT NULL,
  `Ability to maintain the discipline` int(1) NOT NULL,
  `Overall Performance` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cm_subject`
--

CREATE TABLE IF NOT EXISTS `cm_subject` (
  `s_id` int(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cm_subject`
--

INSERT INTO `cm_subject` (`s_id`, `name`, `year`) VALUES
(1, 'Math1', 'FY'),
(2, 'Basic Chem', 'FY'),
(3, 'Bacic Phy', 'FY'),
(6, 'Linux', 'TY'),
(7, 'OOP', 'SY');

-- --------------------------------------------------------

--
-- Table structure for table `if_feed`
--

CREATE TABLE IF NOT EXISTS `if_feed` (
  `u_id` int(4) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `year` varchar(10) NOT NULL,
  `Punctuality` int(1) NOT NULL,
  `Knowledge of the subject` int(1) NOT NULL,
  `Presentation skill` int(1) NOT NULL,
  `Interaction with the students` int(1) NOT NULL,
  `Difficuilty attitude` int(1) NOT NULL,
  `Use of teaching aids` int(1) NOT NULL,
  `Ability to maintain the discipline` int(1) NOT NULL,
  `Overall Performance` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `if_subject`
--

CREATE TABLE IF NOT EXISTS `if_subject` (
  `s_id` int(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `if_subject`
--

INSERT INTO `if_subject` (`s_id`, `name`, `year`) VALUES
(1, 'Math1', 'FY'),
(2, 'Basic Chem', 'FY'),
(3, 'Basic Phy', 'FY'),
(4, 'Math2', 'SY'),
(5, 'DSU', 'SY'),
(6, 'RDBMS', 'SY'),
(7, 'AJP', 'TY'),
(8, 'DCN', 'TY'),
(9, 'OOMD', 'TY'),
(10, 'EDE', 'TY');

-- --------------------------------------------------------

--
-- Table structure for table `ques`
--

CREATE TABLE IF NOT EXISTS `ques` (
  `q_id` int(2) NOT NULL,
  `question` varchar(900) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques`
--

INSERT INTO `ques` (`q_id`, `question`) VALUES
(4, 'Punctuality'),
(5, 'Knowledge of the subject'),
(6, 'Presentation skill'),
(7, 'Interaction with the students'),
(8, 'Difficuilty attitude'),
(9, 'Use of teaching aids'),
(10, 'Ability to maintain the discipline'),
(11, 'Overall Performance');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(4) NOT NULL,
  `chk` int(1) NOT NULL,
  `user` varchar(80) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `post` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `chk`, `user`, `pass`, `branch`, `post`, `year`) VALUES
(1, 0, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'admin', ''),
(2, 0, 'cmhod', '695513d5c4a69e83cfcc0cda7255b374', '', 'cmhod', ''),
(3, 0, 'ifhod', 'eb568688256110f7fdbef8b9d079e58b', '', 'ifhod', ''),
(4, 0, '1', 'c4ca4238a0b923820dcc509a6f75849b', 'CM', 'student', 'FY'),
(5, 0, '2', 'c81e728d9d4c2f636f067f89cc14862c', 'CM', 'student', 'FY'),
(6, 0, '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'CM', 'student', 'FY'),
(7, 0, '4', 'a87ff679a2f3e71d9181a67b7542122c', 'CM', 'student', 'FY'),
(8, 0, '5', 'e4da3b7fbbce2345d7772b0674a318d5', 'CM', 'student', 'FY'),
(9, 0, '6', '1679091c5a880faf6fb5e6087eb1b2dc', 'CM', 'student', 'SY'),
(10, 0, '7', '8f14e45fceea167a5a36dedd4bea2543', 'CM', 'student', 'SY'),
(11, 0, '8', 'c9f0f895fb98ab9159f51fd0297e236d', 'CM', 'student', 'SY'),
(12, 0, '9', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'CM', 'student', 'SY'),
(14, 0, '10', 'd3d9446802a44259755d38e6d163e820', 'CM', 'student', 'SY'),
(15, 0, '11', '6512bd43d9caa6e02c990b0a82652dca', 'CM', 'student', 'TY'),
(16, 0, '12', 'c20ad4d76fe97759aa27a0c99bff6710', 'CM', 'student', 'TY'),
(17, 0, '13', 'c51ce410c124a10e0db5e4b97fc2af39', 'CM', 'student', 'TY'),
(18, 0, '14', 'aab3238922bcc25a6f606eb525ffdc56', 'CM', 'student', 'TY'),
(19, 0, '15', '9bf31c7ff062936a96d3c8bd1f8f2ff3', 'CM', 'student', 'TY'),
(20, 0, '16', 'c74d97b01eae257e44aa9d5bade97baf', 'IF', 'student', 'FY'),
(21, 0, '17', '70efdf2ec9b086079795c442636b55fb', 'IF', 'student', 'FY'),
(22, 0, '18', '6f4922f45568161a8cdf4ad2299f6d23', 'IF', 'student', 'FY'),
(23, 0, '19', '1f0e3dad99908345f7439f8ffabdffc4', 'IF', 'student', 'FY'),
(24, 0, '20', '98f13708210194c475687be6106a3b84', 'IF', 'student', 'FY'),
(25, 0, '21', '3c59dc048e8850243be8079a5c74d079', 'IF', 'student', 'SY'),
(26, 0, '22', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'IF', 'student', 'SY'),
(27, 0, '23', '37693cfc748049e45d87b8c7d8b9aacd', 'IF', 'student', 'SY'),
(28, 0, '24', '1ff1de774005f8da13f42943881c655f', 'IF', 'student', 'SY'),
(29, 0, '25', '8e296a067a37563370ded05f5a3bf3ec', 'IF', 'student', 'SY'),
(30, 0, '26', '4e732ced3463d06de0ca9a15b6153677', 'IF', 'student', 'TY'),
(31, 0, '27', '02e74f10e0327ad868d138f2b4fdd6f0', 'IF', 'student', 'TY'),
(32, 0, '28', '33e75ff09dd601bbe69f351039152189', 'IF', 'student', 'TY'),
(33, 0, '29', '6ea9ab1baa0efb9e19094440c317e21b', 'IF', 'student', 'TY'),
(34, 0, '30', '34173cb38f07f89ddbebc2ac9128303f', 'IF', 'student', 'TY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cm_subject`
--
ALTER TABLE `cm_subject`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `if_subject`
--
ALTER TABLE `if_subject`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `ques`
--
ALTER TABLE `ques`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cm_subject`
--
ALTER TABLE `cm_subject`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `if_subject`
--
ALTER TABLE `if_subject`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ques`
--
ALTER TABLE `ques`
  MODIFY `q_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
