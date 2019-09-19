-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 03:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ziro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_action`
--

CREATE TABLE `tbl_action` (
  `pk_int_action_id` int(11) NOT NULL,
  `vchr_action_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_action`
--

INSERT INTO `tbl_action` (`pk_int_action_id`, `vchr_action_name`) VALUES
(1, 'Planned'),
(2, 'In Progress'),
(3, 'Completed'),
(4, 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminlogin`
--

CREATE TABLE `tbl_adminlogin` (
  `pk_int_id` int(11) NOT NULL,
  `vchr_name` varchar(255) NOT NULL,
  `vchr_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adminlogin`
--

INSERT INTO `tbl_adminlogin` (`pk_int_id`, `vchr_name`, `vchr_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `pk_int_member_id` int(11) NOT NULL,
  `vchr_mem_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_mem_mail` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_mem_phone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_mem_post` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_password` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_delete_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 's',
  `vchr_last_modified_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_last_modified_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`pk_int_member_id`, `vchr_mem_name`, `vchr_mem_mail`, `vchr_mem_phone`, `vchr_mem_post`, `vchr_password`, `vchr_username`, `vchr_delete_status`, `vchr_last_modified_by`, `vchr_last_modified_time`) VALUES
(1, 'Fathima', 'fathima@gmail.com', '0547064425', 'Web Developer', '0547064425', 'fathima@gmail.com', 's', '123', '2019-09-19 13:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `pk_int_project_id` int(11) NOT NULL,
  `vchr_project_name` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `text_description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `vchr_delete_status` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 's',
  `vchr_last_modified_by` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_last_modified_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`pk_int_project_id`, `vchr_project_name`, `text_description`, `date_start`, `date_end`, `vchr_delete_status`, `vchr_last_modified_by`, `vchr_last_modified_time`) VALUES
(1, 'Ziro', 'What to do:\r\n\r\n● Make a To-Do application (http://www.yourdictionary.com/to-do-list)\r\n\r\n● Upload the source code to Git repository\r\n\r\n● Deploy in server', '2019-09-17', '2019-09-18', 's', '123', '2019-09-19 14:21:56'),
(2, 'sdresdfsdg', 'sfdghfjfggzdsagdbfxv', '2019-09-20', '2019-09-20', 's', '', ''),
(3, 'Ziro Task', 'What to do:\r\n\r\n● Make a To-Do application (http://www.yourdictionary.com/to-do-list)\r\n\r\n● Upload the source code to Git repository\r\n\r\n● Deploy in server', '2019-09-17', '2019-09-18', 'm', '123', '2019-09-19 14:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

CREATE TABLE `tbl_task` (
  `pk_int_task_id` int(11) NOT NULL,
  `fk_int_project_id` int(11) NOT NULL,
  `text_task` text COLLATE utf8_unicode_ci NOT NULL,
  `fk_int_member_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `fk_int_action_id` int(11) NOT NULL,
  `vchr_delete_status` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 's',
  `vchr_last_modified_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vchr_last_modified_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_task`
--

INSERT INTO `tbl_task` (`pk_int_task_id`, `fk_int_project_id`, `text_task`, `fk_int_member_id`, `date_start`, `date_end`, `fk_int_action_id`, `vchr_delete_status`, `vchr_last_modified_by`, `vchr_last_modified_time`) VALUES
(1, 1, ' user authentication', 1, '2019-09-17', '2019-09-17', 1, 's', '', ''),
(2, 2, 'xzcdsfdsfdf', 1, '2019-09-17', '2019-09-30', 4, 's', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_action`
--
ALTER TABLE `tbl_action`
  ADD PRIMARY KEY (`pk_int_action_id`);

--
-- Indexes for table `tbl_adminlogin`
--
ALTER TABLE `tbl_adminlogin`
  ADD PRIMARY KEY (`pk_int_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`pk_int_member_id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`pk_int_project_id`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`pk_int_task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_action`
--
ALTER TABLE `tbl_action`
  MODIFY `pk_int_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `pk_int_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `pk_int_project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `pk_int_task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
