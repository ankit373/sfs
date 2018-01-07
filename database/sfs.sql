-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2016 at 04:06 AM
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
  `Knowledge of the subject` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cm_feed`
--

INSERT INTO `cm_feed` (`u_id`, `subject`, `message`, `year`, `Punctuality`, `Knowledge of the subject`) VALUES
(4, 'Math1', '1 \r\nfrom cm 1st year', 'FY', 1, 2),
(4, 'Basic Chem', '', 'FY', 3, 4),
(4, 'Bacic Phy', '', 'FY', 1, 2),
(5, 'Math1', '2 from cm 1st year', 'FY', 1, 2),
(5, 'Basic Chem', '', 'FY', 4, 4),
(5, 'Bacic Phy', '', 'FY', 2, 2),
(6, 'Math1', '3 from cm 1st year\r\n', 'FY', 3, 1),
(6, 'Basic Chem', '', 'FY', 2, 3),
(6, 'Bacic Phy', '', 'FY', 4, 4),
(7, 'Math1', '4 from cm 1st year', 'FY', 2, 4),
(7, 'Basic Chem', '', 'FY', 4, 1),
(7, 'Bacic Phy', '', 'FY', 2, 3),
(8, 'Math1', '5 from cm 1st year', 'FY', 3, 1),
(8, 'Basic Chem', '', 'FY', 4, 2),
(8, 'Bacic Phy', '', 'FY', 2, 4),
(9, 'Math2', '6 from cm 2nd year', 'SY', 2, 4),
(9, 'DSU', '', 'SY', 4, 1),
(10, 'Math2', '7 from cm 2nd year', 'SY', 3, 4),
(10, 'DSU', '', 'SY', 1, 2),
(11, 'Math2', '8 from cm 2nd year', 'SY', 3, 3),
(11, 'DSU', '', 'SY', 4, 1),
(12, 'Math2', '9 from cm 2nd year', 'SY', 1, 3),
(12, 'DSU', '', 'SY', 3, 4),
(14, 'Math2', '10  from cm 2nd year', 'SY', 3, 1),
(14, 'DSU', '', 'SY', 4, 4),
(15, 'Linux', '11 from cm 3nd year', 'TY', 1, 4),
(16, 'Linux', '12 from cm 3nd year', 'TY', 2, 2),
(17, 'Linux', '13 from cm 3nd year', 'TY', 3, 3),
(18, 'Linux', '14 from cm 3nd year', 'TY', 2, 4),
(19, 'Linux', '15 from cm 3nd year', 'TY', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cm_subject`
--

CREATE TABLE IF NOT EXISTS `cm_subject` (
  `s_id` int(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cm_subject`
--

INSERT INTO `cm_subject` (`s_id`, `name`, `year`) VALUES
(1, 'Math1', 'FY'),
(2, 'Basic Chem', 'FY'),
(3, 'Bacic Phy', 'FY'),
(4, 'Math2', 'SY'),
(5, 'DSU', 'SY'),
(6, 'Linux', 'TY');

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
  `Knowledge of the subject` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `if_feed`
--

INSERT INTO `if_feed` (`u_id`, `subject`, `message`, `year`, `Punctuality`, `Knowledge of the subject`) VALUES
(20, 'Math1', '16 from if 1sd year', 'FY', 1, 2),
(20, 'Basic Chem', '', 'FY', 3, 3),
(20, 'Basic Phy', '', 'FY', 3, 2),
(21, 'Math1', '17 from if 1st year', 'FY', 1, 4),
(21, 'Basic Chem', '', 'FY', 4, 1),
(21, 'Basic Phy', '', 'FY', 4, 3),
(22, 'Math1', '18 from if 1st year', 'FY', 3, 4),
(22, 'Basic Chem', '', 'FY', 3, 4),
(22, 'Basic Phy', '', 'FY', 4, 4),
(23, 'Math1', '', 'FY', 3, 1),
(23, 'Basic Chem', '', 'FY', 4, 1),
(23, 'Basic Phy', '', 'FY', 4, 4),
(24, 'Math1', '20 from if 1st year', 'FY', 3, 4),
(24, 'Basic Chem', '', 'FY', 4, 1),
(24, 'Basic Phy', '', 'FY', 1, 3),
(25, 'Math2', '21 from if 2nd year', 'SY', 4, 3),
(25, 'DSU', '', 'SY', 4, 3),
(25, 'RDBMS', '', 'SY', 4, 3),
(26, 'Math2', '22 from if 2nd year', 'SY', 4, 2),
(26, 'DSU', '', 'SY', 1, 3),
(26, 'RDBMS', '', 'SY', 1, 2),
(27, 'Math2', '23 from if 2nd year', 'SY', 4, 3),
(27, 'DSU', '', 'SY', 1, 1),
(27, 'RDBMS', '', 'SY', 3, 4),
(34, 'AJP', '30 from if 3rd year', 'TY', 3, 3),
(34, 'DCN', '', 'TY', 4, 3),
(34, 'OOMD', '', 'TY', 2, 4),
(34, 'EDE', '', 'TY', 4, 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques`
--

INSERT INTO `ques` (`q_id`, `question`) VALUES
(2, 'Punctuality'),
(3, 'Knowledge of the subject');

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
(4, 1, '1', 'c4ca4238a0b923820dcc509a6f75849b', 'CM', 'student', 'FY'),
(5, 1, '2', 'c81e728d9d4c2f636f067f89cc14862c', 'CM', 'student', 'FY'),
(6, 1, '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'CM', 'student', 'FY'),
(7, 1, '4', 'a87ff679a2f3e71d9181a67b7542122c', 'CM', 'student', 'FY'),
(8, 1, '5', 'e4da3b7fbbce2345d7772b0674a318d5', 'CM', 'student', 'FY'),
(9, 1, '6', '1679091c5a880faf6fb5e6087eb1b2dc', 'CM', 'student', 'SY'),
(10, 1, '7', '8f14e45fceea167a5a36dedd4bea2543', 'CM', 'student', 'SY'),
(11, 1, '8', 'c9f0f895fb98ab9159f51fd0297e236d', 'CM', 'student', 'SY'),
(12, 1, '9', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'CM', 'student', 'SY'),
(14, 1, '10', 'd3d9446802a44259755d38e6d163e820', 'CM', 'student', 'SY'),
(15, 1, '11', '6512bd43d9caa6e02c990b0a82652dca', 'CM', 'student', 'TY'),
(16, 1, '12', 'c20ad4d76fe97759aa27a0c99bff6710', 'CM', 'student', 'TY'),
(17, 1, '13', 'c51ce410c124a10e0db5e4b97fc2af39', 'CM', 'student', 'TY'),
(18, 1, '14', 'aab3238922bcc25a6f606eb525ffdc56', 'CM', 'student', 'TY'),
(19, 1, '15', '9bf31c7ff062936a96d3c8bd1f8f2ff3', 'CM', 'student', 'TY'),
(20, 1, '16', 'c74d97b01eae257e44aa9d5bade97baf', 'IF', 'student', 'FY'),
(21, 1, '17', '70efdf2ec9b086079795c442636b55fb', 'IF', 'student', 'FY'),
(22, 1, '18', '6f4922f45568161a8cdf4ad2299f6d23', 'IF', 'student', 'FY'),
(23, 1, '19', '1f0e3dad99908345f7439f8ffabdffc4', 'IF', 'student', 'FY'),
(24, 1, '20', '98f13708210194c475687be6106a3b84', 'IF', 'student', 'FY'),
(25, 1, '21', '3c59dc048e8850243be8079a5c74d079', 'IF', 'student', 'SY'),
(26, 1, '22', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'IF', 'student', 'SY'),
(27, 1, '23', '37693cfc748049e45d87b8c7d8b9aacd', 'IF', 'student', 'SY'),
(28, 0, '24', '1ff1de774005f8da13f42943881c655f', 'IF', 'student', 'SY'),
(29, 0, '25', '8e296a067a37563370ded05f5a3bf3ec', 'IF', 'student', 'SY'),
(30, 0, '26', '4e732ced3463d06de0ca9a15b6153677', 'IF', 'student', 'TY'),
(31, 0, '27', '02e74f10e0327ad868d138f2b4fdd6f0', 'IF', 'student', 'TY'),
(32, 0, '28', '33e75ff09dd601bbe69f351039152189', 'IF', 'student', 'TY'),
(33, 0, '29', '6ea9ab1baa0efb9e19094440c317e21b', 'IF', 'student', 'TY'),
(34, 1, '30', '34173cb38f07f89ddbebc2ac9128303f', 'IF', 'student', 'TY');

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
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `if_subject`
--
ALTER TABLE `if_subject`
  MODIFY `s_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ques`
--
ALTER TABLE `ques`
  MODIFY `q_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
