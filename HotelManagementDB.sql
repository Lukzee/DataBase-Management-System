-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2016 at 04:02 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `purple_haze`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_No` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Billed_By` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_No`, `Customer_Id`, `Amount`, `Date_Time`, `Billed_By`) VALUES
(6001, 1, 3400, '2012-02-07 00:00:00', 1),
(6002, 2, 5900, '2012-02-06 00:00:00', 5),
(6003, 3, 8450, '2012-02-08 00:00:00', 2),
(6004, 4, 7300, '2012-02-29 00:00:00', 3),
(6005, 5, 11350, '2012-04-04 00:00:00', 4),
(6006, 6, 3450, '2012-05-27 00:00:00', 11),
(6007, 7, 6000, '2012-07-10 00:00:00', 12),
(6008, 8, 3840, '2012-08-03 00:00:00', 16),
(6009, 9, 3980, '2012-10-15 00:00:00', 17),
(6010, 10, 12600, '2012-11-07 00:00:00', 23),
(6011, 11, 10000, '2013-01-03 00:00:00', 22),
(6012, 12, 8950, '2013-02-17 00:00:00', 20),
(6013, 13, 3800, '2013-03-16 00:00:00', 6),
(6014, 14, 1500, '2013-03-16 00:00:00', 8),
(6015, 15, 6850, '2013-03-15 00:00:00', 7),
(6016, 16, 3360, '2013-06-03 00:00:00', 9),
(6017, 17, 3000, '2013-08-17 00:00:00', 13),
(6018, 18, 6600, '2013-08-18 00:00:00', 10),
(6019, 19, 8000, '2013-08-15 00:00:00', 14),
(6020, 20, 4500, '2013-11-25 00:00:00', 18),
(6021, 21, 6000, '2013-12-31 00:00:00', 15),
(6022, 22, 8800, '2013-12-31 00:00:00', 21),
(6023, 23, 3500, '2013-12-31 00:00:00', 19),
(6024, 24, 5000, '2013-12-31 00:00:00', 25),
(6025, 25, 10300, '2013-12-31 00:00:00', 24),
(6026, 26, 2800, '2013-12-31 00:00:00', 27),
(6027, 27, 6000, '2014-01-01 00:00:00', 26),
(6028, 28, 3000, '2014-01-03 00:00:00', 29),
(6029, 29, 9500, '2014-01-03 00:00:00', 28),
(6030, 30, 3900, '2014-01-20 00:00:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `Bill_Id` int(11) NOT NULL,
  `Bill_Type` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Price` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Bill_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`Bill_Id`, `Bill_Type`, `Price`, `Customer_Id`, `Bill_No`) VALUES
(5001, 'Room', 2000, 1, 6001),
(5002, 'Food', 400, 1, 6001),
(5003, 'Facility', 1000, 1, 6001),
(5004, 'Room', 5000, 2, 6002),
(5005, 'Food', 720, 2, 6002),
(5006, 'Facility', 1800, 2, 6002),
(5007, 'Room', 8000, 3, 6003),
(5008, 'Food', 450, 3, 6003),
(5009, 'Facility', 0, 3, 6003),
(5010, 'Room', 5000, 4, 6004),
(5011, 'Food', 1300, 4, 6004),
(5012, 'Facility', 1000, 4, 6004),
(5013, 'Room', 8000, 5, 6005),
(5014, 'Food', 1050, 5, 6005),
(5015, 'Facility', 2300, 5, 6005),
(5016, 'Room', 2000, 6, 6006),
(5017, 'Food', 250, 6, 6006),
(5018, 'Facility', 1200, 6, 6006),
(5019, 'Room', 5000, 7, 6007),
(5020, 'Food', 0, 7, 6007),
(5021, 'Facility', 1000, 7, 6007),
(5022, 'Room', 2000, 8, 6008),
(5023, 'Food', 1040, 8, 6008),
(5024, 'Facility', 800, 8, 6008),
(5025, 'Room', 2000, 9, 6009),
(5026, 'Food', 480, 9, 6009),
(5027, 'Facility', 1500, 9, 6009),
(5028, 'Room', 8000, 10, 6010),
(5029, 'Food', 3400, 10, 6010),
(5030, 'Facility', 1200, 10, 6010),
(5031, 'Room', 8000, 11, 6011),
(5032, 'Food', 500, 11, 6011),
(5033, 'Facility', 1500, 11, 6011),
(5034, 'Room', 8000, 12, 6012),
(5035, 'Food', 150, 12, 6012),
(5036, 'Facility', 800, 12, 6012),
(5037, 'Room', 2000, 13, 6013),
(5038, 'Food', 300, 13, 6013),
(5039, 'Facility', 1500, 13, 6013),
(5040, 'Room', 5000, 14, 6014),
(5041, 'Food', 0, 14, 6014),
(5042, 'Facility', 1000, 14, 6014),
(5043, 'Room', 5000, 15, 6015),
(5044, 'Food', 1050, 15, 6015),
(5045, 'Facility', 800, 15, 6015),
(5046, 'Room', 2000, 16, 6016),
(5047, 'Food', 360, 16, 6016),
(5048, 'Facility', 1000, 16, 6016),
(5049, 'Room', 2000, 17, 6017),
(5050, 'Food', 0, 17, 6017),
(5051, 'Facility', 1000, 17, 6017),
(5052, 'Room', 5000, 18, 6018),
(5053, 'Food', 600, 18, 6018),
(5054, 'Facility', 1000, 18, 6018),
(5055, 'Room', 8000, 19, 6019),
(5056, 'Food', 0, 19, 6019),
(5057, 'Facility', 0, 19, 6019),
(5058, 'Room', 2000, 20, 6020),
(5059, 'Food', 800, 20, 6020),
(5060, 'Facility', 2700, 20, 6020),
(5061, 'Room', 5000, 21, 6021),
(5062, 'Food', 0, 21, 6021),
(5063, 'Facility', 1000, 21, 6021),
(5064, 'Room', 8000, 22, 6022),
(5065, 'Food', 0, 22, 6022),
(5066, 'Facility', 800, 22, 6022),
(5067, 'Room', 2000, 23, 6023),
(5068, 'Food', 0, 23, 6023),
(5069, 'Facility', 1500, 23, 6023),
(5070, 'Room', 5000, 24, 6024),
(5071, 'Food', 0, 24, 6024),
(5072, 'Facility', 0, 24, 6024),
(5073, 'Room', 8000, 25, 6025),
(5074, 'Food', 0, 25, 6025),
(5075, 'Facility', 2300, 25, 6025),
(5076, 'Room', 2000, 26, 6026),
(5077, 'Food', 0, 26, 6026),
(5078, 'Facility', 800, 26, 6026),
(5079, 'Room', 5000, 27, 6027),
(5080, 'Food', 0, 27, 6027),
(5081, 'Facility', 1000, 27, 6027),
(5082, 'Room', 2000, 28, 6028),
(5083, 'Food', 0, 28, 6028),
(5084, 'Facility', 1000, 28, 6028),
(5085, 'Room', 8000, 29, 6029),
(5086, 'Food', 700, 29, 6029),
(5087, 'Facility', 800, 29, 6029),
(5088, 'Room', 2000, 30, 6030),
(5089, 'Food', 400, 30, 6030),
(5090, 'Facility', 1500, 30, 6030);

-- --------------------------------------------------------

--
-- Table structure for table `custmer_facility`
--

CREATE TABLE `custmer_facility` (
  `CF_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Facility_Id` int(11) NOT NULL,
  `Date_Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_Id` int(11) NOT NULL,
  `Customer_Head_Name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Phone_No` varchar(15) CHARACTER SET utf8 NOT NULL,
  `No_Of_Adults` int(11) NOT NULL,
  `No_Of_Children` int(11) NOT NULL,
  `Check_In` datetime NOT NULL,
  `Check_Out` datetime NOT NULL,
  `Booked_On` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `Customer_Head_Name`, `Address`, `Phone_No`, `No_Of_Adults`, `No_Of_Children`, `Check_In`, `Check_Out`, `Booked_On`) VALUES
(1, ' Ashik L Kumar', ' HSR LAyout', '9986507705', 1, 2, '2012-02-05 00:00:00', '2012-02-07 00:00:00', '2012-01-26 00:00:00'),
(2, 'Mamtha A Ashkoh', 'Kormangala', '9987706905', 1, 0, '2012-02-05 00:00:00', '2012-02-06 00:00:00', '2012-01-28 00:00:00'),
(3, 'Shashi K Pai', 'Indranagar', '9986577905', 1, 1, '2012-02-06 00:00:00', '2012-02-08 00:00:00', '2012-02-01 00:00:00'),
(4, 'Sanjana H Menon', 'JP Nagar', '9977506905', 1, 0, '2012-02-26 00:00:00', '2012-02-29 00:00:00', '2012-02-20 00:00:00'),
(5, 'Varun H V', 'Jayanagar', '9986666905', 2, 0, '2012-04-01 00:00:00', '2012-04-04 00:00:00', '2012-03-24 00:00:00'),
(6, 'Joshua G Balata', 'Banashankri', '9966506905', 1, 0, '2012-05-25 00:00:00', '2012-05-27 00:00:00', '2012-05-10 00:00:00'),
(7, 'Karthik M Gowda', ' HSR LAyout', '9986506605', 1, 0, '2012-07-07 00:00:00', '2012-07-10 00:00:00', '2012-06-15 00:00:00'),
(8, 'Krithi S Pai', 'Kormangala', '9988806905', 1, 0, '2012-07-29 00:00:00', '2012-08-03 00:00:00', '2012-07-10 00:00:00'),
(9, 'Sanju L Maria', 'Indranagar', '9986508805', 1, 0, '2012-10-10 00:00:00', '2012-10-15 00:00:00', '2012-09-20 00:00:00'),
(10, 'Vishruti A Reddy', 'JP Nagar', '9999506905', 2, 0, '2012-11-06 00:00:00', '2012-11-07 00:00:00', '2012-10-28 00:00:00'),
(11, 'Ayusha A Gowda', 'Jayanagar', '9986996905', 1, 0, '2012-12-30 00:00:00', '2013-01-03 00:00:00', '1905-07-04 00:00:00'),
(12, 'Kanchan R Khan', 'Banashankri', '9986509905', 1, 1, '2013-02-10 00:00:00', '2013-02-17 00:00:00', '2013-02-01 00:00:00'),
(13, 'Saloni M Joshi', ' HSR LAyout', '9996506905', 1, 0, '2013-03-12 00:00:00', '2013-03-16 00:00:00', '2013-03-03 00:00:00'),
(14, 'Yash K Vikay', 'Kormangala', '9989906905', 1, 0, '2013-03-12 00:00:00', '2013-03-16 00:00:00', '2013-03-03 00:00:00'),
(15, 'Karthik D Hari', 'Indranagar', '9986501105', 1, 0, '2013-03-12 00:00:00', '2013-03-15 00:00:00', '2013-02-24 00:00:00'),
(16, 'Prajwal S Gowda', 'JP Nagar', '9116506905', 1, 0, '2013-06-01 00:00:00', '2013-06-03 00:00:00', '2013-05-20 00:00:00'),
(17, 'Ravi K Kiran', 'Jayanagar', '9981106905', 1, 0, '2013-08-14 00:00:00', '2013-08-17 00:00:00', '2013-08-01 00:00:00'),
(18, 'Kathyani M Vijay', 'Banashankri', '9986511905', 1, 0, '2013-08-14 00:00:00', '2013-08-18 00:00:00', '2013-08-02 00:00:00'),
(19, 'Shivani L Vijay', ' HSR LAyout', '9986522905', 1, 0, '2013-08-14 00:00:00', '2013-08-15 00:00:00', '2013-08-02 00:00:00'),
(20, 'Raskshith J Gowda ', 'Kormangala', '9982206905', 1, 1, '2013-11-23 00:00:00', '2013-11-25 00:00:00', '2013-12-10 00:00:00'),
(21, 'Sam D Abraham', 'Indranagar', '9986226905', 1, 0, '2013-12-30 00:00:00', '2013-12-31 00:00:00', '2013-12-14 00:00:00'),
(22, 'Harry J Potter', 'JP Nagar', '9986505505', 1, 0, '2013-12-30 00:00:00', '2013-12-31 00:00:00', '2013-12-08 00:00:00'),
(23, 'Rubert H Grint', 'Jayanagar', '9982206905', 2, 0, '2013-12-30 00:00:00', '2013-12-31 00:00:00', '2013-12-20 00:00:00'),
(24, 'Sita M Reddy', 'Banashankri', '9983306905', 1, 0, '2013-12-30 00:00:00', '2013-12-31 00:00:00', '2013-12-15 00:00:00'),
(25, 'Geetha U Reddy', ' HSR LAyout', '9981106905', 1, 0, '2013-12-30 00:00:00', '2013-12-31 00:00:00', '2013-12-10 00:00:00'),
(26, 'Shaila B Gowda', 'Kormangala', '9986556905', 1, 0, '2013-12-30 00:00:00', '2013-12-31 00:00:00', '2013-12-12 00:00:00'),
(27, 'Ikram N Khan', 'Indranagar', '9556506905', 1, 1, '2013-12-31 00:00:00', '2014-01-01 00:00:00', '2013-12-12 00:00:00'),
(28, 'Akbar C Khan', 'JP Nagar', '9446506905', 1, 0, '2013-12-31 00:00:00', '2014-01-03 00:00:00', '2013-12-12 00:00:00'),
(29, 'Apoorva M Jarmalae', 'Jayanagar', '9986503905', 1, 0, '2014-01-01 00:00:00', '2014-01-03 00:00:00', '2013-12-20 00:00:00'),
(30, 'Apoorva S Iyengar', 'Banashankri', '9986566905', 3, 0, '2014-01-15 00:00:00', '2014-01-20 00:00:00', '2014-01-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_facility`
--

CREATE TABLE `customer_facility` (
  `CF_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Facility_Id` int(11) NOT NULL,
  `Date_Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_facility`
--

INSERT INTO `customer_facility` (`CF_Id`, `Customer_Id`, `Facility_Id`, `Date_Time`) VALUES
(7001, 1, 1001, '2012-02-07 00:00:00'),
(7002, 1, 1002, '2012-02-06 00:00:00'),
(7003, 1, 1003, '2012-02-08 00:00:00'),
(7004, 2, 1001, '2012-02-29 00:00:00'),
(7005, 2, 1002, '2012-04-04 00:00:00'),
(7006, 4, 1001, '2012-05-27 00:00:00'),
(7007, 5, 1002, '2012-07-10 00:00:00'),
(7008, 5, 1003, '2012-08-03 00:00:00'),
(7009, 6, 1004, '2012-10-15 00:00:00'),
(7010, 7, 1001, '2012-11-07 00:00:00'),
(7011, 8, 1002, '2013-01-03 00:00:00'),
(7012, 9, 1003, '2013-02-17 00:00:00'),
(7013, 10, 1004, '2013-03-16 00:00:00'),
(7014, 11, 1003, '2013-03-16 00:00:00'),
(7015, 12, 1002, '2013-03-15 00:00:00'),
(7016, 13, 1003, '2013-06-03 00:00:00'),
(7017, 14, 1001, '2013-08-17 00:00:00'),
(7018, 15, 1002, '2013-08-18 00:00:00'),
(7019, 16, 1001, '2013-08-15 00:00:00'),
(7020, 17, 1001, '2013-11-25 00:00:00'),
(7021, 18, 1001, '2013-12-31 00:00:00'),
(7022, 20, 1004, '2013-12-31 00:00:00'),
(7023, 20, 1003, '2013-12-31 00:00:00'),
(7024, 21, 1001, '2013-12-31 00:00:00'),
(7025, 22, 1002, '2013-12-31 00:00:00'),
(7026, 23, 1003, '2013-12-31 00:00:00'),
(7027, 25, 1002, '2014-01-01 00:00:00'),
(7028, 25, 1003, '2014-01-03 00:00:00'),
(7029, 26, 1002, '2014-01-03 00:00:00'),
(7030, 27, 1001, '2014-01-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_food`
--

CREATE TABLE `customer_food` (
  `CFood_Id` int(11) NOT NULL,
  `Product_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Date_Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_food`
--

INSERT INTO `customer_food` (`CFood_Id`, `Product_Id`, `Customer_Id`, `Quantity`, `Price`, `Date_Time`) VALUES
(1, 4, 1, 2, 200, '2012-01-01 12:45:00'),
(2, 8, 2, 4, 180, '2012-01-03 13:52:00'),
(3, 21, 3, 1, 200, '2012-02-06 14:00:00'),
(4, 29, 3, 1, 250, '2012-02-06 14:02:00'),
(5, 12, 4, 4, 200, '2012-02-28 16:15:00'),
(6, 7, 4, 2, 250, '2012-02-28 16:16:00'),
(7, 18, 5, 3, 350, '2012-04-01 20:00:00'),
(8, 13, 6, 1, 250, '2012-05-26 19:45:00'),
(9, 26, 8, 2, 320, '2012-07-29 11:45:00'),
(10, 4, 8, 2, 200, '2012-07-29 11:55:00'),
(11, 11, 9, 1, 180, '2012-10-13 13:00:00'),
(12, 16, 9, 1, 300, '2012-10-13 13:10:00'),
(13, 11, 10, 5, 180, '2012-11-06 16:00:00'),
(14, 21, 10, 5, 200, '2012-11-06 16:10:00'),
(15, 29, 10, 6, 250, '2012-11-06 16:20:00'),
(16, 22, 11, 2, 250, '2013-01-01 16:45:00'),
(17, 1, 12, 1, 150, '2013-02-15 17:30:00'),
(18, 25, 13, 1, 300, '2013-03-15 17:45:00'),
(19, 27, 15, 3, 350, '2013-03-12 12:32:00'),
(20, 2, 16, 2, 180, '2013-06-02 11:05:00'),
(21, 5, 18, 3, 200, '2013-08-14 10:05:00'),
(22, 10, 20, 4, 200, '2013-11-24 12:30:00'),
(23, 18, 29, 2, 350, '2014-01-02 18:00:00'),
(24, 3, 30, 2, 200, '2014-01-17 15:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_room`
--

CREATE TABLE `customer_room` (
  `CR_Id` int(11) NOT NULL,
  `Room_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Room_No` int(11) NOT NULL,
  `Date_Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_room`
--

INSERT INTO `customer_room` (`CR_Id`, `Room_Id`, `Customer_Id`, `Room_No`, `Date_Time`) VALUES
(8001, 2001, 1, 23, '2012-02-05 00:00:00'),
(8002, 2002, 2, 44, '2012-02-05 00:00:00'),
(8003, 2003, 3, 11, '2012-02-06 00:00:00'),
(8004, 2002, 4, 66, '2012-02-26 00:00:00'),
(8005, 2003, 5, 56, '2012-04-01 00:00:00'),
(8006, 2001, 6, 22, '2012-05-25 00:00:00'),
(8007, 2002, 7, 34, '2012-07-07 00:00:00'),
(8008, 2001, 8, 12, '2012-07-29 00:00:00'),
(8009, 2001, 9, 24, '2012-10-10 00:00:00'),
(8010, 2003, 10, 36, '2012-11-06 00:00:00'),
(8011, 2003, 11, 48, '2012-12-30 00:00:00'),
(8012, 2003, 12, 60, '2013-02-10 00:00:00'),
(8013, 2001, 13, 72, '2013-03-12 00:00:00'),
(8014, 2002, 14, 89, '2013-03-12 00:00:00'),
(8015, 2002, 15, 91, '2013-03-12 00:00:00'),
(8016, 2001, 16, 33, '2013-06-01 00:00:00'),
(8017, 2001, 17, 55, '2013-08-14 00:00:00'),
(8018, 2002, 18, 77, '2013-08-14 00:00:00'),
(8019, 2003, 19, 88, '2013-08-14 00:00:00'),
(8020, 2001, 20, 99, '2013-11-23 00:00:00'),
(8021, 2002, 21, 100, '2013-12-30 00:00:00'),
(8022, 2003, 22, 1, '2013-12-30 00:00:00'),
(8023, 2001, 23, 3, '2013-12-30 00:00:00'),
(8024, 2002, 24, 6, '2013-12-30 00:00:00'),
(8025, 2003, 25, 71, '2013-12-30 00:00:00'),
(8026, 2001, 26, 7, '2013-12-30 00:00:00'),
(8027, 2002, 27, 2, '2013-12-31 00:00:00'),
(8028, 2001, 28, 4, '2013-12-31 00:00:00'),
(8029, 2003, 29, 31, '2014-01-01 00:00:00'),
(8030, 2001, 30, 9, '2014-01-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `facility_type`
--

CREATE TABLE `facility_type` (
  `Facility_Id` int(11) NOT NULL,
  `Type` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility_type`
--

INSERT INTO `facility_type` (`Facility_Id`, `Type`, `Price`) VALUES
(1001, 'Gym', 1000),
(1002, 'Jacuzzi', 800),
(1003, 'Spa', 1500),
(1004, 'Sauna and Steam', 1200),
(1005, 'Swimming Pool', 800);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Product_Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Product_Id`, `Name`, `Price`) VALUES
(1, 'Veg Burger', 150),
(2, 'Egg Burger', 180),
(3, 'Mutton Burger', 200),
(4, 'Chicken Burger', 200),
(5, 'Veg Chowmein', 200),
(6, 'Egg Chowmein', 250),
(7, 'Chicken Chowmein', 250),
(8, 'Veg Manchurian', 180),
(9, 'Egg Manchurian', 200),
(10, 'Chicken Manchurian', 200),
(11, 'Tomato Cream Soup', 180),
(12, 'Veg Hot & Sour Soup', 200),
(13, 'Chicken Hot & Sour S', 250),
(14, 'Veg Sweet Corn Soup', 200),
(15, 'Chicken Soup', 250),
(16, 'Veg Biryani', 300),
(17, 'Egg Biryani', 320),
(18, 'Mutton Biryani', 350),
(19, 'Chicken Biryani', 350),
(20, 'Mix Biryani', 380),
(21, 'Plain Rice', 200),
(22, 'Peas Pulao', 250),
(23, 'Dhaniya Rice', 250),
(24, 'Jeera Rice', 250),
(25, 'Veg Fried Rice', 300),
(26, 'Egg Fried Rice', 320),
(27, 'Chicken Fried Rice', 350),
(28, 'Mixed Fried Rice', 350),
(29, 'Egg Curry', 250),
(30, 'Egg Masala', 250);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `Member_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Mname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`Member_Id`, `Customer_Id`, `Fname`, `Mname`, `Lname`, `Age`) VALUES
(9001, 1, ' Ashik', ' L', ' Kumar', 32),
(9002, 1, ' Sanjana', ' L', ' Ashik', 11),
(9003, 1, ' Arjun', ' L', ' Ashik', 10),
(9004, 2, 'Mamtha', ' A', ' Ashkoh', 33),
(9005, 3, 'Shashi', ' K', ' Pai', 45),
(9006, 3, ' Tanush', ' M', ' Vinay', 12),
(9007, 4, 'Sanjana', ' H', ' Menon', 22),
(9008, 5, 'Varun', ' H', ' V', 33),
(9009, 5, 'Abhishek', ' G', ' Banerjee', 31),
(9010, 6, 'Joshua', ' G', ' Balata', 30),
(9011, 7, 'Karthik', ' M', ' Gowda', 45),
(9012, 8, 'Krithi', ' S', ' Pai', 44),
(9013, 9, 'Sanju', ' L', ' Maria', 42),
(9014, 10, 'Vishruti', ' A', ' Reddy', 41),
(9015, 10, 'Soundarya', ' D', 'Vadalamani', 46),
(9016, 11, 'Ayusha', ' A', ' Gowda', 52),
(9017, 12, 'Kanchan', ' R', ' Khan', 55),
(9018, 12, 'Monu', ' R', ' Khan', 12),
(9019, 13, 'Saloni', ' M', ' Joshi', 45),
(9020, 14, 'Yash', ' K', ' Vikay', 33),
(9021, 15, 'Karthik', ' D', ' Hari', 37),
(9022, 16, 'Prajwal', ' S', ' Gowda', 27),
(9023, 17, 'Ravi', ' K', ' Kiran', 31),
(9024, 18, 'Kathyani', ' M', ' Vijay', 41),
(9025, 19, 'Shivani', ' L', ' Vijay', 44),
(9026, 20, 'Raskshith', ' J', ' Gowda', 39),
(9027, 20, 'Ahana', ' J', ' Gowda', 7),
(9028, 21, 'Sam', ' D', ' Abraham', 46),
(9029, 22, 'Harry', ' J', ' Potter', 44),
(9030, 23, 'Rubert', ' H', ' Grint', 47),
(9031, 23, 'Aisha', ' R', ' Grint', 45),
(9032, 24, 'Sita', ' M', ' Reddy', 55),
(9033, 25, 'Geetha', ' U', ' Reddy', 56),
(9034, 26, 'Shaila', ' B', ' Gowda', 55),
(9035, 27, 'Ikram', ' N', ' Khan', 55),
(9036, 27, 'Saif', ' I', ' Khan', 13);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `Room_Id` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Total_Rooms` int(11) NOT NULL,
  `Occupied_Rooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`Room_Id`, `Type`, `Price`, `Total_Rooms`, `Occupied_Rooms`) VALUES
(2001, 0, 2000, 40, 12),
(2002, 0, 5000, 40, 9),
(2003, 0, 8000, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SSN` int(11) NOT NULL,
  `Fname` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Mname` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `Lname` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `Email_Id` varchar(30) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `DOB` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`SSN`, `Fname`, `Mname`, `Lname`, `Email_Id`, `Phone_No`, `Address`, `Sex`, `DOB`) VALUES
(1, 'Srinivas', 'M', 'Govindol', 'srinigo@gmail.com', '9986506905', 'No. 480 Chandana 10th cross 29th main HSR Layout B', 'M', '1986-01-02'),
(2, 'Alex', NULL, 'Abraham', 'alexabraham@gmail.com', '9986507705', 'No. 80 Adinivas 1th cross 9th main Koramangla Bang', 'M', '1987-03-07'),
(3, 'Padmanabha', 'K', 'S', 'padmanna@gmail.com', '9886506905', 'No. 4 Westwoods 11th cross 19th main BTM Layout Ba', 'M', '1/15/1977'),
(4, 'Shreya', 'P', 'Goshal', 'shreyap@gmail.com', '9986504405', 'No. 55 Govindol 12th cross 9th main HSR Layout Ban', 'F', '11/23/1981'),
(5, 'Umesh', 'K', 'Verma', 'umeshverma@gmail.com', '9986508885', 'No. 11 Ravindra 10th cross 7th main Malleshwaram B', 'M', '1986-11-12'),
(6, 'Kruthika', NULL, 'Mohan', 'kruthikamohan@gmail.com', '9666506905', 'No. 99 Mohana 14th cross 13th main HSR Layout Bang', 'F', '6/16/1989'),
(7, 'Chandana', 'Sai', 'Maekala', 'Maekala@gmail.com', '9986505505', 'No. 48 Sunny 10th cross 7th main HSR Layout Bangal', 'F', '2/22/1986'),
(8, 'Amulya', 'M', 'Kandhari', 'amulyakan@gmail.com', '9933306905', 'No. 33 Jothinivas 1th cross 9th main Indra Nagar B', 'F', '1979-01-01'),
(9, 'Srisha', 'H', 'Balaji', 'balaji@gmail.com', '9776506905', 'No. 90 Balaji 5th cross 4th main Banashankri Banga', 'M', '1977-07-07'),
(10, 'Suhas', 'K', 'Reddy', 'suahsreddy@gmail.com', '9976543234', 'No.22 Samaytham 5th cross 7th main RajajiNagar Ban', 'M', '1984-06-09'),
(11, 'Gautham', 'N', 'Reddy', 'gauti@gmail.com', '9776543234', 'No. 2 Gauti 1th cross 2nd main Electronic City Ban', 'M', '1988-08-08'),
(12, 'Ayusha', NULL, 'Gowda', 'ayushagowda@gmail.com', '9976541634', 'No.16 Springfeilds 6th cross 6th main HSR Layout B', 'F', '1981-06-06'),
(13, 'Ankitha', 'T', 'Jeevan', 'ankithajee@gmail.com', '9996543234', 'No.9 RNS Apartments 9th cross 9th main Indra Nagar', 'F', '1984-02-09'),
(14, 'Riya', 'M', 'Godbole', 'godbole@yahoo.com', '9976567234', 'No.46 BIIT Aparments 4th cross 6th main Electronic', 'F', '9/17/1984'),
(15, 'Tess', 'B', 'Bachan', 'tessbachan@gmail.com', '9556643234', 'No.67  Godbole House 7th cross  17th main JP Nagar', 'M', '1984-06-09'),
(16, 'Sanjay', NULL, 'Sridar', 'sanjaysri@gmail.com', '9976663234', 'No.12  Sridhar 4th cross 4th main MG Road  Bangalo', 'M', '1984-010-26'),
(17, 'Rahul', 'C', 'Gowda', 'rahulgowda@gmail.com', '9976544434', 'No.23  Srnivasan  15th cross 5th main MG Road Bang', 'M', '1984-04-09'),
(18, 'Panjury', 'I', 'Gowda', 'panjuuu@gmail.com', '9976543224', 'No.34  Panju 4th cross  14th main Indra Nagar Bang', 'F', '1989-01-01'),
(19, 'Pragna', 'M', 'Lokesh', 'pragna6787@gmail.com', '9976883234', 'No.45  Eastwoods 17th cross 7th mainBTM Layout  Ba', 'F', '1984-04-10'),
(20, 'Ridhi', 'C', 'Khan', 'ridhi2222@gmail.com', '9976543266', 'No.56 Eastwoods  5th cross  15th main BTM Layout B', 'F', '1984-06-09'),
(21, 'Sanjana', NULL, 'Singh', 'sanjana3454@gmail.com', '9912543234', 'No.67  Gopala Krishana 16th cross 6th main Jayanag', 'F', '4/16/1982'),
(22, 'Varun', 'K', 'Vegi', 'varunvegi@gmail.com', '99765432345', 'No.78  Vegi 1th cross 1th main Banashankri Bangalo', 'M', '1981-06-09'),
(23, 'Hamsini', NULL, NULL, 'hamsini5678@gmail.com', '99765456734', 'No.89  Prakash 13th cross 7th main Banashankri  Ba', 'F', '1984-02-02'),
(24, 'Varun', 'M', 'Prakash', 'varun1111@gmail.com', '99765433454', 'No.90  Varun 6th cross  16th main Malleshwaram Ban', 'M', '1981-06-01'),
(25, 'Varun', 'H', 'V', 'varun67890@gmail.com', '99765567234', 'No.91  OM 4th cross 1th main Malleshwaram  Bangalo', 'M', '1987-06-09'),
(26, 'Niranjan', NULL, 'Mano', 'niranjanmano@gmail.com', '90976543234', 'No.21  Mano 1th cross 11th main Indra Nagar Bangal', 'M', '1982-12-12'),
(27, 'Rhea', 'S', 'Sharma', 'rheaaaa123440@gmail.com', '9975643234', 'No.31  Sharma 15th cross 5th main Jayanagar Bangal', 'F', '1981-09-31'),
(28, 'Kaustubh', 'S', 'Sharma', 'kaustubh1233@gmail.com', '9945543234', 'No.33  SNS Apartments 3rd cross 6th main JP Nagar ', 'M', '1982-06-12'),
(29, 'Saleem', NULL, 'Khan', 'khan222@gmail.com', '9976543434', 'No.44  Khan 1th cross 12th main JP Nagar Bangalore', 'M', '1984-07-06'),
(30, 'Tom', 'K', NULL, 'tommyyy@gmail.com', '9976543534', 'No.77  WM Apartments 10th cross  5th main BTM Layo', 'M', '10/26/1981');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_No`),
  ADD KEY `Customer_Id` (`Customer_Id`),
  ADD KEY `Billed_By` (`Billed_By`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`Bill_Id`),
  ADD KEY `Customer_Id` (`Customer_Id`),
  ADD KEY `Bill_No` (`Bill_No`);

--
-- Indexes for table `custmer_facility`
--
ALTER TABLE `custmer_facility`
  ADD PRIMARY KEY (`CF_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `customer_facility`
--
ALTER TABLE `customer_facility`
  ADD PRIMARY KEY (`CF_Id`),
  ADD KEY `Customer_Id` (`Customer_Id`),
  ADD KEY `Facility_Id` (`Facility_Id`);

--
-- Indexes for table `customer_food`
--
ALTER TABLE `customer_food`
  ADD PRIMARY KEY (`CFood_Id`),
  ADD KEY `Product_Id` (`Product_Id`),
  ADD KEY `Customer_Id` (`Customer_Id`);

--
-- Indexes for table `customer_room`
--
ALTER TABLE `customer_room`
  ADD PRIMARY KEY (`CR_Id`),
  ADD KEY `Room_Id` (`Room_Id`),
  ADD KEY `Customer_Id` (`Customer_Id`);

--
-- Indexes for table `facility_type`
--
ALTER TABLE `facility_type`
  ADD PRIMARY KEY (`Facility_Id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Member_Id`),
  ADD KEY `Customer_Id` (`Customer_Id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`Room_Id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`SSN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `Bill_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6031;
--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `Bill_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5091;
--
-- AUTO_INCREMENT for table `custmer_facility`
--
ALTER TABLE `custmer_facility`
  MODIFY `CF_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `customer_facility`
--
ALTER TABLE `customer_facility`
  MODIFY `CF_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7031;
--
-- AUTO_INCREMENT for table `customer_food`
--
ALTER TABLE `customer_food`
  MODIFY `CFood_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `customer_room`
--
ALTER TABLE `customer_room`
  MODIFY `CR_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8031;
--
-- AUTO_INCREMENT for table `facility_type`
--
ALTER TABLE `facility_type`
  MODIFY `Facility_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `Product_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `Member_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9037;
--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `Room_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2004;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `SSN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `FK_first` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_second` FOREIGN KEY (`Billed_By`) REFERENCES `staff` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `FK_fourth` FOREIGN KEY (`Bill_No`) REFERENCES `bill` (`Bill_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_third` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_facility`
--
ALTER TABLE `customer_facility`
  ADD CONSTRAINT `FK_fifth` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_sixth` FOREIGN KEY (`Facility_Id`) REFERENCES `facility_type` (`Facility_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_food`
--
ALTER TABLE `customer_food`
  ADD CONSTRAINT `FK_eighth` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_seventh` FOREIGN KEY (`Product_Id`) REFERENCES `food` (`Product_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_room`
--
ALTER TABLE `customer_room`
  ADD CONSTRAINT `FK_ninth` FOREIGN KEY (`Room_Id`) REFERENCES `room_type` (`Room_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tenth` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `FK_eleventh` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
