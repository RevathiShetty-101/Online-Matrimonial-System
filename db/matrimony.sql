-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2016 at 10:12 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(8) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `user` (
  `Username` varchar(100) NOT NULL,
  `Pwd` varchar(100) NOT NULL,
  `Typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Pwd`, `Typeofuser`) VALUES
('admin', 'admin', 'Admin');
--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(10) NOT NULL,
  `cust_id` int(5) NOT NULL,
  `email` varchar(60) NOT NULL,
  `age` varchar(10) NOT NULL,
  `height` int(10) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `profilecreatedby` varchar(20) NOT NULL,
  `education` text NOT NULL,
  `education_sub` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `body_type` text NOT NULL,
  `physical_status` text NOT NULL,
  `drink` varchar(8) NOT NULL,
  `mothertounge` text NOT NULL,
  `colour` varchar(20) NOT NULL,
  `weight` int(5) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `diet` varchar(8) NOT NULL,
  `smoke` varchar(8) NOT NULL,
  `dateofbirth` date NOT NULL,
  `occupation` text NOT NULL,
  `occupation_descr` text NOT NULL,
  `annual_income` varchar(20) NOT NULL,
  `fathers_occupation` varchar(20) NOT NULL,
  `mothers_occupation` varchar(20) NOT NULL,
  `no_bro` int(5) NOT NULL,
  `no_sis` int(5) NOT NULL,
  `aboutme` text NOT NULL,
  `profilecreationdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--


--
-- Table structure for table `partnerprefs`
--

CREATE TABLE IF NOT EXISTS `partnerprefs` (
`id` int(10) NOT NULL,
  `custId` int(10) NOT NULL,
  `agemin` varchar(3) NOT NULL,
  `agemax` int(3) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `complexion` varchar(10) NOT NULL,
  `height` int(3) NOT NULL,
  `diet` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `mothertounge` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partnerprefs`
--

INSERT INTO `partnerprefs` (`id`, `custId`, `agemin`, `agemax`, `maritalstatus`, `complexion`, `height`, `diet`, `religion`, `caste`, `subcaste`, `mothertounge`, `education`, `occupation`, `country`, `descr`) VALUES
(1, 6, '18', 30, 'Single', '', 180, 'Veg', 'Not Applicable', 'Roman Cathaolic', '', '', 'Primary', '', 'Not Applicable', 'Beautiful , Super, just for fun'),
(2, 7, '18', 40, 'Single', '', 150, 'Veg', 'Not Applicable', 'Roman Cathaolic', '', '', 'Primary', '', 'Not Applicable', ''),
(3, 12, '18', 40, 'Single', '', 150, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'sadasdasd', 'Hindu', ''),
(4, 13, '18', 40, 'Single', '', 0, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'das', 'Hindu', ''),
(5, 14, '18', 50, 'Single', '', 0, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'das', 'Hindu', 'asdasdas da asfd afsdfasdf asjdf akjsdf kjafsdks d');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
`id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pic1` varchar(25) NOT NULL,
  `pic2` varchar(40) NOT NULL,
  `pic3` varchar(40) NOT NULL,
  `pic4` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `cust_id`, `pic1`, `pic2`, `pic3`, `pic4`) VALUES
(27, 6, 'img.jpg', 'picture.jpg', 'picture-2.jpg', 'user.png'),
(28, 7, 'banner_img_3@2x.png', 'article_img_2.jpg', 'banner_img_5@2x.png', 'article_img_1.jpg'),
(29, 12, 'article_img_1.jpg', 'article_img_2.jpg', 'banner_img_2.png', 'banner_img_2.png'),
(30, 13, 'team-13.jpg', 'thumb-intro.jpg', 'avatar-1.jpg', '1.jpg'),
(31, 14, '1.jpg', 'img-1.jpg', 'avatar-1.jpg', 'team-13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(5) NOT NULL,
  `profilestat` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `userlevel` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profilestat`, `username`, `password`, `email`, `dateofbirth`, `gender`, `userlevel`) VALUES
(1, 0, 'admin', 'admin', 'admin@nowhere.com', '2016-02-17', 'male', 1),
(6, 0, 'test', 'test', 'test@test.com', '2016-02-11', 'femal', 0),
(7, 0, 'shobi', 'shobi', 'jdshfkjsh@nowhere.com', '0000-00-00', 'male', 0),
(8, 0, 'Name', '', 'E-Mail', '0000-00-00', '', 0),
(9, 0, 'Raju', 'raju', 'raju@nowhere.com', '0000-00-00', 'male', 0),
(10, 0, 'kuttappi', 'kuttappi', 'kuttapi@kuttappi.com', '0000-00-00', '', 0),
(11, 0, 'fdsdte', 'qe41234234', 'twetwet@sdfds.com', '0000-00-00', '', 0),
(12, 0, 'aswin', 'aswin', 'aswin@nowhere.com', '1997-01-20', 'male', 0),
(13, 0, 'reshma', 'reshma', 'asdasdasd@asdfsadf.com', '1998-02-14', 'femal', 0),
(14, 0, 'rahul', 'rahul', 'asdasdasd@asdfsadf.com', '1998-02-14', 'male', 0);

--
-- Indexes for dumped tables
--

