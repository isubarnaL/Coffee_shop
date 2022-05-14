-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 06:12 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_chair`
--

CREATE TABLE `booking_chair` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `chair_id` int(11) DEFAULT NULL,
  `chair_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_chair`
--

INSERT INTO `booking_chair` (`id`, `booking_id`, `chair_id`, `chair_no`) VALUES
(1, '5ccbd8f5609b3', 38, 'TBL-4-1'),
(2, '5ccbd8f5609b3', 39, 'TBL-4-2'),
(3, '5ea89e1a75e6e', 56, 'TBL-1-2'),
(4, '5ea89e1a75e6e', 57, 'TBL-1-3'),
(5, '5ea89f17417d4', 24, 'TBL-1-1'),
(6, '61d9407ee5b72', 24, 'TBL-1-1'),
(7, '61d9407ee5b72', 27, 'TBL-1-4'),
(8, '61de965098a9e', 26, 'TBL-1-3'),
(9, '61de965098a9e', 29, 'TBL-1-6'),
(10, '61de965098a9e', 32, 'TBL-2-3'),
(11, '61de9a80c49fd', 25, 'TBL-1-2'),
(12, '61deab0a6a83f', 34, 'TBL-3-1'),
(13, '61deab0a6a83f', 36, 'TBL-3-3');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `make_date` date DEFAULT NULL,
  `make_time` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(30) DEFAULT NULL,
  `bill` float DEFAULT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0- reject, 1-confirmed',
  `reject` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `res_id`, `c_id`, `make_date`, `make_time`, `name`, `phone`, `booking_date`, `booking_time`, `bill`, `transactionid`, `status`, `reject`) VALUES
(4, '61d9407ee5b72', 4, 4, '2022-01-08', '01:42:54pm', 'Park View Restaurant', '01821356478', '2022-01-10', '10:00am', 200, '12345', 0, 0),
(5, '61de965098a9e', 4, 17, '2022-01-12', '02:50:24pm', 'subarna', '9840390366', '2022-01-13', '10:00am', 200, '123', 0, 0),
(6, '61de9a80c49fd', 4, 4, '2022-01-12', '03:08:16pm', 'Peaches Coffee Shop', '9869036420', '2022-01-11', '10:00am', 0, '456', 1, 0),
(7, '61deab0a6a83f', 4, 4, '2022-01-12', '04:18:50pm', 'Peaches Coffee Shop', '9869036420', '2022-01-12', '10:00am', 200, '123', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_menus`
--

CREATE TABLE `booking_menus` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_menus`
--

INSERT INTO `booking_menus` (`id`, `booking_id`, `item_id`, `qty`) VALUES
(1, '5ccbd8f5609b3', 4, 2),
(2, '5ccbd8f5609b3', 5, 2),
(3, '5ea89f17417d4', 4, 1),
(4, '61d9407ee5b72', 10, 2),
(5, '61de965098a9e', 10, 2),
(6, '61de9a80c49fd', 12, 0),
(7, '61deab0a6a83f', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Kathmandu'),
(2, 'Lalitpur'),
(3, 'Bhaktapur');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `madeby` varchar(300) DEFAULT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `res_id`, `item_name`, `madeby`, `food_type`, `price`, `image`) VALUES
(10, 4, 'Cappuccino', 'Cappuccino', 'Fast Food', 100, 'Cappuccino.png'),
(12, 4, 'Kappi Nirvana', 'KAPPI NIRVANA', 'Fast Food', 150, 'KAPPI NIRVANA.jpg'),
(13, 4, 'Mocha', 'MOCHA', 'Fast Food', 100, 'CAFE MOCHA.jpg'),
(14, 4, 'Vanilla Cappuccino', 'VANILLA CAPPUCCINO', 'Fast Food', 150, 'VANILLA CAPPUCCINO.jpg'),
(15, 4, 'Crunchy Vanilla Frape', 'VANILLA FRAPE', 'Fast Food', 100, 'CRUNCHY VANILLA FRAPE.png'),
(16, 4, 'Espresso', 'Coffee and water', 'Fast Food', 100, 'espresso.jpg'),
(17, 4, 'Flat White', 'Cappucino', 'Fast Food', 150, 'Flat White.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_chair`
--

CREATE TABLE `restaurant_chair` (
  `id` int(11) NOT NULL,
  `tbl_id` int(11) DEFAULT NULL,
  `chair_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_chair`
--

INSERT INTO `restaurant_chair` (`id`, `tbl_id`, `chair_no`) VALUES
(24, 3, 'TBL-1-1'),
(25, 3, 'TBL-1-2'),
(26, 3, 'TBL-1-3'),
(27, 3, 'TBL-1-4'),
(28, 3, 'TBL-1-5'),
(29, 3, 'TBL-1-6'),
(30, 4, 'TBL-2-1'),
(31, 4, 'TBL-2-2'),
(32, 4, 'TBL-2-3'),
(33, 4, 'TBL-2-4'),
(34, 5, 'TBL-3-1'),
(35, 5, 'TBL-3-2'),
(36, 5, 'TBL-3-3'),
(37, 5, 'TBL-3-4'),
(38, 6, 'TBL-4-1'),
(39, 6, 'TBL-4-2'),
(40, 6, 'TBL-4-3'),
(41, 7, 'TBL-1-1'),
(42, 7, 'TBL-1-2'),
(43, 7, 'TBL-1-3'),
(44, 7, 'TBL-1-4'),
(45, 7, 'TBL-1-5'),
(46, 8, 'TBL-2-1'),
(47, 8, 'TBL-2-2'),
(48, 8, 'TBL-2-3'),
(49, 9, 'TBL-3-1'),
(50, 9, 'TBL-3-2'),
(51, 9, 'TBL-3-3'),
(52, 9, 'TBL-3-4'),
(53, 10, 'TBL-4-1'),
(54, 10, 'TBL-4-2'),
(55, 11, 'TBL-1-1'),
(56, 11, 'TBL-1-2'),
(57, 11, 'TBL-1-3'),
(58, 11, 'TBL-1-4'),
(59, 12, 'TBL-5-1'),
(60, 12, 'TBL-5-2');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `id` int(11) NOT NULL,
  `restaurent_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `location` int(11) NOT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `bkashnumber` varchar(20) DEFAULT NULL,
  `approve_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not approve,1-approve ',
  `role` int(20) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`id`, `restaurent_name`, `email`, `phone`, `address`, `location`, `logo`, `password`, `bkashnumber`, `approve_status`, `role`) VALUES
(4, 'Peaches Coffee Shop', 'admin@gmail.com', '9869036420', 'Kalanki, Kathmandu', 1, 'park.jpg', 'Hello123', '', 0, 1),
(17, 'subarna', 'hello@gmail.com', '9840390366', 'kathmandu', 0, '', 'Hello123', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `res_id`, `table_name`) VALUES
(3, 4, 'TBL-1'),
(4, 4, 'TBL-2'),
(5, 4, 'TBL-3'),
(6, 4, 'TBL-4'),
(12, 4, 'TBL-5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_chair`
--
ALTER TABLE `booking_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_menus`
--
ALTER TABLE `booking_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_chair`
--
ALTER TABLE `booking_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_menus`
--
ALTER TABLE `booking_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
