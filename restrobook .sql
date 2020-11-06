-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2020 at 12:31 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restrobook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(10) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pswrd` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city` int(10) NOT NULL,
  `city_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city`, `city_name`) VALUES
(1, 'Indore'),
(2, 'Udaipur'),
(3, 'Paris'),
(4, 'Bordeaux'),
(5, 'Barcelona'),
(6, 'Seville'),
(7, 'New York City'),
(8, 'Los Angeles'),
(9, 'Las Vegas'),
(10, 'Monterrey'),
(11, 'Rio de Janerio'),
(12, 'Turku'),
(13, 'Helsinki'),
(14, 'Italy'),
(15, 'Capranica'),
(16, 'Bengluru'),
(17, 'Pune'),
(18, 'Surat'),
(19, 'Hyderabad'),
(20, 'Lyon');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country` int(10) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country`, `country_name`) VALUES
(1, 'India'),
(2, 'France'),
(3, 'America'),
(4, 'Rome'),
(5, 'Brazil'),
(6, 'Mexico'),
(7, 'Spain'),
(8, 'Singapore'),
(9, 'Finland'),
(10, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(10) NOT NULL,
  `offer_details` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offer_link`
--

CREATE TABLE `offer_link` (
  `offer_id` int(10) DEFAULT NULL,
  `rest_id` varchar(10) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `query_id` int(10) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `query_details` varchar(150) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `rest_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(10) NOT NULL,
  `rating` float DEFAULT NULL,
  `review` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rating_link`
--

CREATE TABLE `rating_link` (
  `user_id` varchar(10) DEFAULT NULL,
  `rest_id` varchar(10) DEFAULT NULL,
  `rating_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `rest_id` varchar(10) NOT NULL,
  `rest_name` varchar(50) DEFAULT NULL,
  `country` int(10) DEFAULT NULL,
  `city` int(10) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pswrd` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`rest_id`, `rest_name`, `country`, `city`, `address`, `mobile`, `email`, `pswrd`) VALUES
('R01', 'Nafees Restaurant', 1, 1, 'Apollo Avenue, 30-B, Greater Kailash Road, New Palasia', '9039090005', 'nafees@gmail.com', 'nafees123'),
('R02', 'Sayaji Restaurant', 1, 1, 'H/1 , Scheme No.54, Vijay Nagar', '7389910949', 'sayajirest@gmail.com', 'sayaji123'),
('R03', 'Enrise Restaurant', 1, 1, '27/1, 27/2, VILLAGE PIGDAMBAR, RAU, TEHSIL MHOW, Mumbai - Agra National Hwy', '7314706666', 'enriserest@gmail.com', 'enrise123'),
('R04', 'Shreemaya Restaurant', 1, 1, '12, RNT Marg, South Tukoganj', '7314234888', 'shreemayarest@gmail.com', 'shreemaya123'),
('R05', 'Daagla Restaurant', 1, 1, 'Hotel Thamla Haveli, Hanuman Ghat, Outside Chandpole', '9982988899', 'daaglarest@gmail.com', 'daagla123'),
('R06', 'Savya Rasa', 1, 1, 'Gera Serenity Building, CTS No. 15, near Starbucks Cafe, Koregaon Park', '9130095522', 'savyarasa@gmail.com', 'savya123'),
('R07', 'Barbeque Nation', 1, 1, '1st Floor, Golden Square, Parle Point Flyover, near Sargam Shopping Center, Athwa', '7849006060', 'barbntn@gmail.com', 'barbntn123'),
('R08', 'Starbucks Cafe', 1, 1, 'Gera Serenity Building, CTS No. 15, near Starbucks Cafe, Koregaon Park', '9130095542', 'starbucks@gmail.com', 'star123'),
('R09', 'Central Perk', 3, 7, '105 Cedarhurst Ave, Cedarhurst, NY 11516', '1516374640', 'centralperk@gmail.com', 'centralperk123'),
('R10', 'La Patsa Lb', 7, 5, 'Calle Casanova 94, 08011', '3493031231', 'lappatsa@gmail.com', 'lapatsa123'),
('R11', 'Vrindavan', 1, 1, '19/6, Janjeerwala Square, New Palasia', '7314009123', 'vrinrest@gmail.com', 'vrin123'),
('R12', 'The Monroe', 1, 1, ' Gold Stone Building, 3/5, near 56 Shops, New Palasia', '7314002883', 'themonroe@gmail.com', 'mon123'),
('R13', 'Little Monk', 1, 1, ' Nirvana Hotel & Resort, MR 10, Near Over Bridge, Super Corridor Rd', '7440448003', 'littlrmonk@gmail.com', 'lmonk123'),
('R14', 'Shree Gurukripa', 1, 1, ' Kushabhau Thakre Marg, Opposite Bombay Hospital', '7314222202', 'grurkripa@gmail.com', 'gk123'),
('R15', 'Apna Sweets', 1, 1, 'A B Road Vijay Nagar', '7312557310', 'apnasweets@gmail.com', 'ana123'),
('R16', 'Pishori Dhaba', 1, 1, ' 3-A, Eastern Ring Rd, Nanak Nagar', '7314964461', 'pishoridhaba@gmail.com', 'pishdh123'),
('R17', 'Bawarchi Restaurant', 1, 19, 'Plot No. 44, RTC Cross Rd, Opposite Sandhya Theatre, Jawahar Nagar', '4027634490', 'bawarchi@gmail.com', 'bawar123'),
('R18', 'Okra', 1, 19, 'Hyderabad Marriott Hotel & Convention Centre, Tank Bund Road', '9666412009', 'okra@gmail.com', 'okra123'),
('R19', 'Tatva', 1, 19, '1215/A, Rd Number 36, Jubilee Hills', '7995028026', 'tatva@gmail.com', 'tatva123'),
('R20', 'Hard Rock Cafe', 1, 19, ' Gvk One, Rd Number 1, Balapur Basthi, Banjara Hills', '9820267989', 'hardrock@gmail.com', 'rhc123'),
('R21', 'The Venue', 3, 8, '3470 Wilshire Blvd b1', '2132211251', 'thevenue@gmail.com', 'ven123'),
('R22', 'Craig\'s', 3, 8, '8826 Melrose Ave, West Hollywood', '3102761900', 'craig@gmail.com', 'craig123');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `reward_id` int(10) NOT NULL,
  `reward_details` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reward_link`
--

CREATE TABLE `reward_link` (
  `reward_id` int(10) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_feedback`
--

CREATE TABLE `system_feedback` (
  `feedback_id` int(10) NOT NULL,
  `feedback` varchar(150) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `rest_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(10) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pswrd` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `account` (`first_name`,`last_name`,`mobile`,`email`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `offer_link`
--
ALTER TABLE `offer_link`
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `rest_id` (`rest_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rest_id` (`rest_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `rating_link`
--
ALTER TABLE `rating_link`
  ADD UNIQUE KEY `rate` (`user_id`,`rest_id`),
  ADD KEY `rest_id` (`rest_id`),
  ADD KEY `rating_id` (`rating_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`rest_id`),
  ADD UNIQUE KEY `account` (`rest_name`,`address`,`mobile`,`email`),
  ADD UNIQUE KEY `login` (`pswrd`),
  ADD KEY `country` (`country`),
  ADD KEY `city` (`city`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`reward_id`);

--
-- Indexes for table `reward_link`
--
ALTER TABLE `reward_link`
  ADD UNIQUE KEY `rewards` (`reward_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_feedback`
--
ALTER TABLE `system_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rest_id` (`rest_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `account` (`first_name`,`last_name`,`mobile`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `query_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `reward_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_feedback`
--
ALTER TABLE `system_feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offer_link`
--
ALTER TABLE `offer_link`
  ADD CONSTRAINT `offer_link_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offer_link_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offer_link_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `queries`
--
ALTER TABLE `queries`
  ADD CONSTRAINT `queries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `queries_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_link`
--
ALTER TABLE `rating_link`
  ADD CONSTRAINT `rating_link_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_link_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_link_ibfk_3` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`country`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurants_ibfk_2` FOREIGN KEY (`city`) REFERENCES `city` (`city`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reward_link`
--
ALTER TABLE `reward_link`
  ADD CONSTRAINT `reward_link_ibfk_1` FOREIGN KEY (`reward_id`) REFERENCES `rewards` (`reward_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reward_link_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `system_feedback`
--
ALTER TABLE `system_feedback`
  ADD CONSTRAINT `system_feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `system_feedback_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
