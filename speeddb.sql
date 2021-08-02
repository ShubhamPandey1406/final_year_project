-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2019 at 09:54 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `speeddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrier`
--

CREATE TABLE IF NOT EXISTS `carrier` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `keyskills` varchar(200) NOT NULL,
  `cv` varchar(100) NOT NULL,
  `connectdate` varchar(20) NOT NULL,
  PRIMARY KEY (`emailaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carrier`
--

INSERT INTO `carrier` (`name`, `gender`, `address`, `contactno`, `emailaddress`, `qualification`, `experience`, `keyskills`, `cv`, `connectdate`) VALUES
('aman', 'male', 'sdh', '2353', 'amanjain@gmail.com', 'MBA', '1y', 'wwhrwhrhwo', 'amanjain@gmail.coma.jpeg', '19/07/2019'),
('ss', 'male', 'up', '1245', 'st@gmail.com', 'INTERMEDIATE', '4y', 'ndlsjl', 'st@gmail.comslider3.jpg', '19/07/2019'),
('aman', 'male', 'llws', '674876', 'v@gmail.com', 'MCA', '2y', 'wjdjojdwd', 'v@gmail.comslider1.jpg', '20/07/2019'),
('aadi', 'male', 'up', '456', 'o@gmail.com', 'MCA', '3y', 'gg', 'o@gmail.comslider3.jpg', '23/07/2019'),
('pavan maurya', 'male', 'kachhawa', '9120727377', 'pavanmaura10061998@gmail.com', 'INTERMEDIATE', '1y', 'civil eng', 'pavanmaura10061998@gmail.coma.jpeg', '25/07/2019'),
('Aman', 'male', 'dk', '447748', 'kj@gmail.com', 'MBA', '3y', 'ldsnldnnd', 'kj@gmail.comslider3.jpg', '25/07/2019');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cityname`) VALUES
(1, 'lucknow'),
(2, 'kanpur'),
(3, 'varanasi'),
(4, 'delhi'),
(5, 'delhi'),
(6, 'mumbai'),
(7, 'rachi'),
(8, 'mirjapur'),
(9, 'mirjapur'),
(10, 'chennai'),
(11, 'barabanki'),
(12, 'sitapur'),
(13, 'muradabad'),
(14, 'surat'),
(15, 'assam'),
(16, 'jaipur');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `complaintext` varchar(500) NOT NULL,
  `complaindate` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `name`, `gender`, `address`, `contactno`, `emailaddress`, `subject`, `complaintext`, `complaindate`) VALUES
(6, 'ld', 'male', 'kdh', '123', 'o@gmail.com', 'djk', 'dkkd', '23/07/2019'),
(2, 'Aman', 'male', 'Aman jain', '1234', 'amanjain@gmail.com', 'hoii', 'jwohoh', '18/07/2019'),
(5, 'Aditi jain', 'female', 'up', '13458', 'p@gmail.com', 'nothing', 'hiiii', '22/07/2019');

-- --------------------------------------------------------

--
-- Table structure for table `consignment`
--

CREATE TABLE IF NOT EXISTS `consignment` (
  `refno` varchar(20) NOT NULL,
  `sendername` varchar(50) NOT NULL,
  `senderaddress` varchar(200) NOT NULL,
  `sendercontactno` varchar(15) NOT NULL,
  `recievername` varchar(50) NOT NULL,
  `recieveraddress` varchar(200) NOT NULL,
  `source` varchar(50) NOT NULL,
  `currentcity` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `posteddate` varchar(30) NOT NULL,
  PRIMARY KEY (`refno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignment`
--

INSERT INTO `consignment` (`refno`, `sendername`, `senderaddress`, `sendercontactno`, `recievername`, `recieveraddress`, `source`, `currentcity`, `destination`, `status`, `posteddate`) VALUES
('add1', 'aman', 'up', '12345', 'aman', 'up', 'lucknow', 'lucknow', 'lucknow', 'Delivered', '23/07/2019'),
('add12', 'nlhfddlfdhfhj', 'sfhskfhshf', '8849', 'nwehwh7848', 'wehiwhe', 'jaipur', 'jaipur', 'jaipur', 'Delivered', '23/07/2019');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enquirytext` varchar(500) NOT NULL,
  `enquirydate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `gender`, `address`, `contactno`, `emailaddress`, `enquirytext`, `enquirydate`) VALUES
(2, 'Aman jain', 'male', 'mirjapur', '1826862844', 'amanjain@gmail.com', 'bakwas', '17/07/2019'),
(3, 'aman', 'male', 'mmm', '1777787', 'amanjain@gmail.com', 'bakwas', '17/07/2019'),
(4, 'shubham', 'male', 'up', '100', 'amanjain@gmail.com', 'hello', '17/07/2019'),
(10, 'Aman', 'male', 'majhawa', '6387660283', 'amanjain15799@gmail.com', 'hiii', '25/07/2019'),
(6, 'Aman', 'male', 'aaaa', '12345', 'amanjain@gmail.com', 'mkdfdmf', '18/07/2019'),
(7, 'shubham', 'male', 'kkk', '233', 'amanjain@gmail.com', 'dsf', '18/07/2019'),
(8, 'vaibhav', 'male', 'up', '123445', 'a@gmail.com', 'qwrr', '20/07/2019'),
(11, 'Aman', 'male', 'up', '6387660283', 'amanjain15799@gmail.com', 'great', '25/07/2019'),
(12, 'aman', 'male', 'up', '8318647169', 'amanjain15799@gmail.com', 'hii', '25/07/2019'),
(13, 'Aman', 'male', 'up', '9170974130', 'amanjain15799@gmail.com', 'hiii', '25/07/2019'),
(14, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(15, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(16, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(17, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(18, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(19, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(20, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(21, 'Aman', 'male', 'up', '7275975793', 'amanjain15799@gmail.com', 'kaho', '25/07/2019'),
(22, 'pawan', 'male', 'up', '8318647169', 'amanjain15799@gmail.com', 'hii', '25/07/2019'),
(23, 'pawan', 'male', 'up', '8318647169', 'amanjain15799@gmail.com', 'hii', '25/07/2019');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`, `usertype`) VALUES
('admin', 'admin@123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificationtext` varchar(200) NOT NULL,
  `posteddate` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notificationtext`, `posteddate`) VALUES
(8, 'Dr amar nath jain', '22/07/2019'),
(7, 'hello india', '22/07/2019'),
(6, 'satyam jain', '22/07/2019'),
(5, 'aaf', '21/07/2019'),
(10, 'never give up', '22/07/2019'),
(11, 'what a days\r\n', '23/07/2019'),
(12, 'hfjf', '23/07/2019'),
(13, 'what a day', '23/07/2019'),
(14, 'aadi', '23/07/2019'),
(15, 'jjd', '25/07/2019'),
(16, 'tr', '27/07/2019');
