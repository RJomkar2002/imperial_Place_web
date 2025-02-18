-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 06:59 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olx`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `pass`) VALUES
('omkarramgirwar00@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `buynow`
--

CREATE TABLE `buynow` (
  `orderid` int(200) NOT NULL,
  `odate` varchar(200) NOT NULL,
  `cid` int(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `cadd` varchar(300) NOT NULL,
  `padd` varchar(300) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL,
  `pid` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `descp` varchar(200) NOT NULL,
  `price` int(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `totalp` int(100) NOT NULL,
  `ptype` varchar(200) NOT NULL,
  `tid` int(100) NOT NULL,
  `mid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buynow`
--

INSERT INTO `buynow` (`orderid`, `odate`, `cid`, `country`, `name`, `cadd`, `padd`, `email`, `mobno`, `pid`, `title`, `category`, `descp`, `price`, `qty`, `totalp`, `ptype`, `tid`, `mid`, `status`) VALUES
(9, '28-3-2023', 7, 'Australia', 'shree', 'akkalkot', 'akkalkot', 'shree@gmail.com', '1234567890', 19, 'tree pot', 'Antiques', 'goden antique pot', 244, 1, 244, 'GPay', 6544, 3, 1),
(10, '28-3-2023', 11, 'India', 'priya patil', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'priya@gmail.com', '1234567890', 22, 'video game', 'Toys - Games - Figurines', 'hp game player', 700, 1, 700, 'GPay', 12345, 7, 1),
(11, '28-3-2023', 11, 'Australia', 'priya patil', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'priya@gmail.com', '1234567890', 24, 'baby toys', 'Stuffs for Babies', 'sound player toy', 800, 1, 800, 'GPay', 6544, 7, 1),
(12, '28-3-2023', 15, 'Bhutan', 'pradnya patil', 'solapur', 'solapur', 'pradnya@gmail.com', '5566778899', 20, 'cooler', 'Electronics-Appliances', 'hp cooler', 200, 1, 200, 'GPay', 6544, 3, 1),
(13, '30-3-2023', 7, 'Australia', 'shree', 'akkalkot', 'akkalkot', 'shree@gmail.com', '1234567890', 14, 't-shirt', 'Mobiles & Tablets', 'sdsd', 200, 1, 200, 'GPay', 12345, 6, 1),
(14, '31-3-2023', 7, 'India', 'shree', 'akkalkot', 'akkalkot', 'shree@gmail.com', '1234567890', 18, 'makup kit', 'Beauty', 'brown color ,nivea brand.', 300, 1, 300, 'GPay', 12345, 3, 1),
(15, '31-3-2023', 7, 'India', 'shree', 'akkalkot', 'akkalkot', 'shree@gmail.com', '1234567890', 23, 'music player', 'Music', 'hp music player', 400, 1, 400, 'GPay', 145, 7, 1),
(16, '31-3-2023', 15, 'India', 'pradnya patil', 'solapur', 'solapur', 'pradnya@gmail.com', '5566778899', 25, 'neckace', 'Clothing, Fashion & Accessories', 'blue', 234, 1, 234, 'GPay', 145, 8, 1),
(17, '31-3-2023', 15, 'India', 'pradnya patil', 'solapur', 'solapur', 'pradnya@gmail.com', '5566778899', 26, 'BATA', 'Shoes', 'black pink shoes', 900, 1, 900, 'GPay', 6544, 5, 1),
(18, '31-3-2023', 15, 'India', 'pradnya patil', 'solapur', 'solapur', 'pradnya@gmail.com', '5566778899', 26, 'BATA', 'Shoes', 'black pink shoes', 900, 2, 1800, 'GPay', 12345, 5, 1),
(19, '2-4-2023', 16, 'India', 'neerja patil', 'bombay park solapur', 'bombay park solapur', 'neerja@gmail.com', '7654328908', 24, 'baby toys', 'Stuffs for Babies', 'sound player toy', 200, 1, 200, 'GPay', 6544, 7, 1),
(20, '2-4-2023', 18, 'Australia', 'shourya patil', 'achegaon\r\ndist.solapur', 'achegaon\r\ndist.solapur', 'shourya@gmail.com', '5566778899', 22, 'video game', 'Toys - Games - Figurines', 'hp game player', 800, 2, 1600, 'GPay', 6544, 7, 0),
(21, '5-4-2023', 19, 'india', 'ganesh chandrakant rampure', 'solapur', 'solapur', 'ganesh0633@gmail.com', '8999050631', 21, 'redmi y2', 'Mobiles & Tablets', 'black & white', 700, 1, 700, 'GPay', 78908765, 7, 0),
(22, '5-4-2023', 6, 'Canada', 'manu', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'manasi@gmail.com', '1234567890', 14, 't-shirt', 'Mobiles & Tablets', 'sdsd', 8000, 2, 16000, 'GPay', 234567, 6, 0),
(27, '30-9-2023', 20, 'India', 'Anil Kulkarni', '244 navi zindagi solapur.', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 14, 'Mobile iphone13', 'Mobiles & Tablets', 'iPhone 13. boasts an advanced dual-camera system that allows you to click mesmerising pictures with immaculate clarity. ', 500, 1, 500, 'GPay', 452335462, 6, 1),
(28, '30-9-2023', 20, '', 'Anil Kulkarni', '244 navi zindagi solapur.', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 18, 'Iba Makup kit', 'Beauty', 'A Makeup Lover’s Dream Come True!All the products you need to build a solid makeup collection in one expertly curated & gorgeous box.', 1500, 1, 1500, 'GPay', 342335462, 3, 0),
(29, '30-9-2023', 20, 'Australia', 'Anil Kulkarni', '244 navi zindagi solapur.', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 21, 'Xiaomi Pad 6 Tab', 'Mobiles & Tablets', 'Explore different perspectives and enjoy smooth gaming with Redmi Pad that enables you to achieve top-notch productivity.', 28000, 1, 28000, 'GPay', 452335462, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cfeedback`
--

CREATE TABLE `cfeedback` (
  `cfid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cfeedback`
--

INSERT INTO `cfeedback` (`cfid`, `name`, `email`, `msg`, `mobno`) VALUES
(1, 'priya ', 'priya@gmail.com', 'abcd', '9822566784'),
(2, 'manu', 'manasi@gmail.com', 'good product nice quality', '1234567890'),
(3, 'manu', 'manasi@gmail.com', 'nice price and quality', '1234567890'),
(4, 'manu', 'manasi@gmail.com', 'nice price and quality', '1234567890'),
(5, 'manu', 'manasi@gmail.com', 'nice price and quality', '1234567890'),
(6, 'manu', 'manasi@gmail.com', 'nice price and quality', '1234567890'),
(7, 'pradnya patil', 'pradnya@gmail.com', 'good quality with perfect price', '5566778899'),
(8, 'pradnya patil', 'pradnya@gmail.com', 'good quality with perfect price', '5566778899'),
(9, 'pradnya patil', 'pradnya@gmail.com', 'good ', '5566778899'),
(10, 'pradnya patil', 'pradnya@gmail.com', 'good quality product', '5566778899'),
(11, 'manu', 'manasi@gmail.com', 'best price ', '1234567890'),
(12, 'Anil Kulkarni', 'anil@gmail.com', 'Good', '9822548823');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactid`, `name`, `email`, `subject`, `message`) VALUES
(1, 'saniya', 'saniya@gmail.com', 'greetings', 'it was a great experience...amazing website'),
(4, 'null', 'null', 'null', 'null'),
(5, '', '', '', ''),
(6, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `custreg`
--

CREATE TABLE `custreg` (
  `cid` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL,
  `aadhar` varchar(200) NOT NULL,
  `dob` varchar(500) NOT NULL,
  `cadd` varchar(500) NOT NULL,
  `padd` varchar(500) NOT NULL,
  `ptype` varchar(500) NOT NULL,
  `tid` varchar(500) NOT NULL,
  `rcharge` int(11) NOT NULL,
  `cflag` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custreg`
--

INSERT INTO `custreg` (`cid`, `cname`, `email`, `pass`, `mobno`, `aadhar`, `dob`, `cadd`, `padd`, `ptype`, `tid`, `rcharge`, `cflag`) VALUES
(6, 'manu', 'manasi@gmail.com', '12345678', '9234567890', '123456789012', '2023-02-01', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'PhonePe', '145', 1000, 1),
(7, 'shree', 'shree@gmail.com', '12345678', '8234567890', '123456789012', '2023-02-03', 'akkalkot', 'akkalkot', 'Paytm', '145', 1000, 1),
(10, 'shubham patil', 'patil@gmail.com', '12345678', '9876534567', '123456789012', '2023-02-10', 'solapur\r\ndist.solapur', 'solapur\r\ndist.solapur', 'AmazonPay', '145', 1000, 1),
(11, 'priya patil', 'priya@gmail.com', '12345678', '7234567890', '123456789012', '2023-02-12', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'Paytm', '145', 1000, 1),
(12, 'manasi j patil', 'manasi@gmail.com', '12345678', '9876534567', '123456789012', '2023-02-17', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'achegaon\r\ntaluka south solapur\r\ndist.solapur', 'AmazonPay', '145', 1000, 1),
(14, 'pragati patil', 'pragatipatil@gmai.com', '12345678', '7766554433', '876545678765', '2010-04-24', 'solapur', 'solapur', 'PhonePe', '445566', 1000, 1),
(15, 'pradnya patil', 'pradnya@gmail.com', '12345678', '9566778899', '123561234567', '2005-05-04', 'solapur', 'solapur', 'Paytm', '6565', 1000, 1),
(16, 'neerja patil', 'neerja@gmail.com', '12345678', '7654328908', '876545678765', '2023-01-28', 'bombay park solapur', 'bombay park solapur', 'Paytm', '234567', 1000, 1),
(17, 'neehar patil', 'nihar@gmail.com', '12345678', '8966778899', '123561234567', '2021-07-18', 'jule solapur', 'jule solapur', 'GPay', '234567', 1000, 0),
(18, 'shourya patil', 'shourya@gmail.com', '12345678', '7466778899', '123561234567', '2022-07-22', 'achegaon\r\ndist.solapur', 'achegaon\r\ndist.solapur', 'GPay', '6544', 1000, 1),
(19, 'ganesh chandrakant rampure', 'ganesh0633@gmail.com', '12345678', '8999050631', '123456123456', '2023-04-05', 'solapur', 'solapur', 'GPay', 'm34567', 1000, 0),
(20, 'Anil Kulkarni', 'anil@gmail.com', '12345678', '9822548823', '238745874523', '1999-11-26', '244 navi zindagi solapur.', '244 navi zindagi solapur.', 'GPay', '982335462', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `merreg`
--

CREATE TABLE `merreg` (
  `mid` int(11) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL,
  `aadhar` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `cadd` varchar(200) NOT NULL,
  `padd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merreg`
--

INSERT INTO `merreg` (`mid`, `mname`, `email`, `pass`, `mobno`, `aadhar`, `dob`, `cadd`, `padd`) VALUES
(3, 'misbah shaikh', 'miss@gmail.com', '12345678', '7766554433', '123456789012', '2012-04-23', 'solapur', 'solapur'),
(4, 'nishat shaikh', 'nishat@gmail.com', '12345678', '8899099887', '123561234567', '2000-03-22', 'south solapur\r\ndist.solapur', 'south solapur\r\ndist.solapur'),
(5, 'saniya patel', 'saniya@gmail.com', '12345678', '9876543212', '123561234567', '2015-03-22', 'majrewadi', 'majrewadi'),
(6, 'shivani patil', 'shivani@gmail.com', '12345678', '9890965498', '123456789012', '1999-12-25', 'solapur', 'solapur'),
(7, 'aaliya shaikh', 'aaliya@gmail.com', '12345678', '9822560223', '123456789012', '2023-03-05', 'begum peth solapur', 'begum peth solapur'),
(8, 'zareen shaikh', 'zareen@gmail.com', '12345678', '9823456789', '123561234567', '1999-09-09', 'aasra solapur', 'aasra solapur'),
(9, 'shweta patil', 'shweta@gmail.com', '12345678', '9876987654', '123456789012', '2020-12-12', 'solapur', 'solapur'),
(15, 'Rahul Tupe', 'rahul@gmail.com', '12345678', '9823457623', '234576452345', '1998-06-24', '344 navi zindagi solapur.', '344 navi zindagi solapur');

-- --------------------------------------------------------

--
-- Table structure for table `mfeedback`
--

CREATE TABLE `mfeedback` (
  `mfbid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mfeedback`
--

INSERT INTO `mfeedback` (`mfbid`, `name`, `email`, `msg`, `mobno`) VALUES
(1, 'nishat shaikh', 'nishat@gmail.com', 'xyz', '9822566784'),
(2, 'misbah shaikh', 'miss@gmail.com', 'good quality', '7766554433'),
(3, 'misbah shaikh', 'miss@gmail.com', '', '7766554433'),
(4, 'shivani patil', 'shivani@gmail.com', 'worth itt', '9890965498'),
(5, 'shivani patil', 'shivani@gmail.com', 'worth itt', '9890965498'),
(6, 'Rahul Tupe', 'rahul@gmail.com', 'good website.', '9823457623'),
(7, 'Rahul Tupe', 'rahul@gmail.com', 'good website.', '9823457623');

-- --------------------------------------------------------

--
-- Table structure for table `paytoseller`
--

CREATE TABLE `paytoseller` (
  `sellerid` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `cadd` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL,
  `ptitle` varchar(200) NOT NULL,
  `cat` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `totalp` int(11) NOT NULL,
  `ptype` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  `ptseller` int(11) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `memail` varchar(200) NOT NULL,
  `mmobno` varchar(200) NOT NULL,
  `pflag` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paytoseller`
--

INSERT INTO `paytoseller` (`sellerid`, `date`, `orderid`, `cid`, `cname`, `cadd`, `email`, `mobno`, `ptitle`, `cat`, `price`, `qty`, `totalp`, `ptype`, `pid`, `ptseller`, `mname`, `memail`, `mmobno`, `pflag`) VALUES
(1, '29-3-2023', 10, 11, 'priya patil', 'achegaontaluka south solapurdist.solapur', 'priya@gmail.com', '1234567890', 'video game', 'Toys - Games - Figurines', 800, 1, 800, 'GPay', 6789, 650, 'aaliya shaikh', 'aaliya@gmail.com', '9822560223', 0),
(4, '29-3-2023', 11, 11, 'priya patil', 'achegaontaluka south solapurdist.solapur', 'priya@gmail.com', '1234567890', 'baby toys', 'Stuffs for Babies', 200, 1, 200, 'GPay', 6745, 150, 'aaliya shaikh', 'aaliya@gmail.com', '9822560223', 0),
(5, '29-3-2023', 10, 11, 'priya patil', 'achegaontaluka south solapurdist.solapur', 'priya@gmail.com', '1234567890', 'video game', 'Toys - Games - Figurines', 800, 1, 800, 'GPay', 6789, 700, 'aaliya shaikh', 'aaliya@gmail.com', '9822560223', 0),
(6, '29-3-2023', 9, 7, 'shree', 'akkalkot', 'shree@gmail.com', '1234567890', 'tree pot', 'Antiques', 700, 1, 700, 'GPay', 56789, 600, 'misbah shaikh', 'miss@gmail.com', 'null', 0),
(10, '29-3-2023', 9, 7, 'shree', 'akkalkot', 'shree@gmail.com', '1234567890', 'tree pot', 'Antiques', 700, 1, 700, 'GPay', 6789, 600, 'misbah shaikh', 'miss@gmail.com', 'null', 0),
(12, '29-3-2023', 10, 11, 'priya patil', 'achegaontaluka south solapurdist.solapur', 'priya@gmail.com', '1234567890', 'video game', 'Toys - Games - Figurines', 800, 1, 800, 'GPay', 56789, 700, 'aaliya shaikh', 'aaliya@gmail.com', '9822560223', 0),
(13, '29-3-2023', 12, 15, 'pradnya patil', 'solapur', 'pradnya@gmail.com', '5566778899', 'cooler', 'Electronics-Appliances', 700, 1, 700, 'GPay', 56789, 600, 'misbah shaikh', 'miss@gmail.com', 'null', 0),
(14, '31-3-2023', 18, 15, 'pradnya patil', 'solapur', 'pradnya@gmail.com', '5566778899', 'BATA', 'Shoes', 900, 2, 900, 'GPay', 56789, 850, 'saniya patel', 'saniya@gmail.com', 'null', 0),
(15, '2-4-2023', 14, 7, 'shree', 'akkalkot', 'shree@gmail.com', '1234567890', 'makup kit', 'Beauty', 300, 1, 300, 'GPay', 56789, 250, 'misbah shaikh', 'miss@gmail.com', '7766554433', 0),
(16, '2-4-2023', 19, 16, 'neerja patil', 'bombay park solapur', 'neerja@gmail.com', '7654328908', 'baby toys', 'Stuffs for Babies', 200, 1, 200, 'GPay', 56789, 150, 'aaliya shaikh', 'aaliya@gmail.com', '9822560223', 0),
(17, '2-4-2023', 16, 15, 'pradnya patil', 'solapur', 'pradnya@gmail.com', '5566778899', 'neckace', 'Clothing, Fashion & Accessories', 234, 1, 234, 'GPay', 765439876, 200, 'zareen shaikh', 'zareen@gmail.com', '9823456789', 0),
(18, '30-9-2023', 23, 20, 'Anil Kulkarni', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 't-shirt', 'Mobiles & Tablets', 200, 2, 200, 'GPay', 872345742, 300, 'shivani patil', 'shivani@gmail.com', '9890965498', 0),
(19, '30-9-2023', 25, 20, 'Anil Kulkarni', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 'Iba Makup kit', 'Beauty', 62000, 1, 62000, 'GPay', 23456787, 60000, 'misbah shaikh', 'miss@gmail.com', '7766554433', 0),
(20, '30-9-2023', 26, 20, 'Anil Kulkarni', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 'wall painting', 'Beauty', 1500, 1, 1500, 'GPay', 23456787, 1500, 'shweta patil', 'shweta@gmail.com', '9876987654', 0),
(21, '30-9-2023', 27, 20, 'Anil Kulkarni', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 'Mobile iphone13', 'Mobiles & Tablets', 500, 1, 500, 'GPay', 224567875, 400, 'shivani patil', 'shivani@gmail.com', '9890965498', 0),
(22, '30-9-2023', 29, 20, 'Anil Kulkarni', '244 navi zindagi solapur.', 'anil@gmail.com', '9822548823', 'Xiaomi Pad 6 Tab', 'Mobiles & Tablets', 28000, 1, 28000, 'GPay', 224567873, 27000, 'aaliya shaikh', 'aaliya@gmail.com', '9822560223', 0);

-- --------------------------------------------------------

--
-- Table structure for table `postadd`
--

CREATE TABLE `postadd` (
  `postid` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `descp` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `imgpath` varchar(10000) NOT NULL,
  `mid` int(200) NOT NULL,
  `mname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postadd`
--

INSERT INTO `postadd` (`postid`, `category`, `title`, `descp`, `price`, `city`, `country`, `imgpath`, `mid`, `mname`) VALUES
(14, 'Mobiles & Tablets', 'Mobile iphone13', 'iPhone 13. boasts an advanced dual-camera system that allows you to click mesmerising pictures with immaculate clarity. ', 62000, 'solapur', 'India', '/img/mobile.jpg', 6, 'shivani patil'),
(18, 'Beauty', 'Iba Makup kit', 'A Makeup Lover’s Dream Come True!All the products you need to build a solid makeup collection in one expertly curated & gorgeous box.', 1500, 'pune', 'India', '/img/makeupkit.png', 3, 'misbah shaikh'),
(20, 'Electronics-Appliances', 'cooling Fan', 'Rega IT Replacement for HP G42-467LA, G42-467TU Laptop CPU Cooling Fan The laptop CPU fan must match the exact laptop model. ', 700, 'goa', 'India', '/img/coolingFan.jpg', 3, 'misbah shaikh'),
(21, 'Mobiles & Tablets', 'Xiaomi Pad 6 Tab', 'Explore different perspectives and enjoy smooth gaming with Redmi Pad that enables you to achieve top-notch productivity.', 28000, 'solapur', 'India', '/img/xiamipad6.jpg', 7, 'aaliya shaikh'),
(22, 'Toys - Games - Figurines', 'video game', 'USB Wireless Console Game Stick Video Game Console Built-in 3000 Classic Games 8 Bit Mini Retro Controller HDMI. ', 2800, 'solapur', 'India', '/img/videogame.jpg', 7, 'aaliya shaikh'),
(23, 'Music', 'Music player', '100% Brand New, High Quality & Great Finishing. It Is An Ultimate 20W +20W Stereo Audio Amplifier Music System With Front Aux IN Connectivity. ', 1400, 'solapur', 'India', '/img/musicplayer.png', 7, 'aaliya shaikh'),
(24, 'Stuffs for Babies', 'Baby toys.', 'sound player toy.PRIMEFAIR Key Operated drummer Toddler kids. Best Birthday Gift, Birthday return gift. ', 300, 'solapur', 'India', '/img/toy.jpg', 7, 'aaliya shaikh'),
(25, 'Clothing, Fashion & Accessories', 'Necklace', 'Elegance. Women Love jewellery as it not only enhances their beauty, but also gives them the social confidence.  ', 934, 'solapur', 'India', '/img/necklace.jpg', 8, 'zareen shaikh'),
(26, 'Shoes', 'BATA Shoes', 'The development of high performance, comfortable sports shoes the ground breaking materials and innovative with new technology.  ', 900, 'pune', 'India', '/img/shoes.jpg', 5, 'saniya patel'),
(27, 'Beauty', 'wall painting', 'saf Unframed Rolled Art Print Beautiful Tree Canvas For Home Décor CR-218 Canvas 24 inch x 48 inch Painting  (Without Frame)', 500, 'solapur', 'India', '/img/roses (9).jpg', 9, 'shweta patil'),
(28, 'Sporting goods, Exercise', 'socks', 'Each pair of Navy Sport socks is crafted from the highest grade combed cotton sourced from the best of class spinning mills in India.', 390, 'solapur', 'India', '/img/socks.jpg', 6, 'shivani patil'),
(32, 'Aesthetics', 'sketch of krishna', 'aesthetic pure sketch ', 2000, 'solapur', 'India', '/img/Krishna sketch.jpg', 6, 'shivani patil'),
(39, 'Furniture', 'xyz', 'sasxasxas', 78000, 'hydrabad', 'India', '/img/b9.jpg', 15, 'Rahul Tupe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buynow`
--
ALTER TABLE `buynow`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `cfeedback`
--
ALTER TABLE `cfeedback`
  ADD PRIMARY KEY (`cfid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `custreg`
--
ALTER TABLE `custreg`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `merreg`
--
ALTER TABLE `merreg`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `mfeedback`
--
ALTER TABLE `mfeedback`
  ADD PRIMARY KEY (`mfbid`);

--
-- Indexes for table `paytoseller`
--
ALTER TABLE `paytoseller`
  ADD PRIMARY KEY (`sellerid`);

--
-- Indexes for table `postadd`
--
ALTER TABLE `postadd`
  ADD PRIMARY KEY (`postid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buynow`
--
ALTER TABLE `buynow`
  MODIFY `orderid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cfeedback`
--
ALTER TABLE `cfeedback`
  MODIFY `cfid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custreg`
--
ALTER TABLE `custreg`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `merreg`
--
ALTER TABLE `merreg`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mfeedback`
--
ALTER TABLE `mfeedback`
  MODIFY `mfbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paytoseller`
--
ALTER TABLE `paytoseller`
  MODIFY `sellerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `postadd`
--
ALTER TABLE `postadd`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
