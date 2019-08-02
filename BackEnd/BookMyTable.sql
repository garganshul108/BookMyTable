-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2019 at 10:00 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BookMyTable`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `reference_no` varchar(1000) DEFAULT NULL,
  `size_ten` int(11) DEFAULT '0',
  `size_eight` int(11) DEFAULT '0',
  `size_six` int(11) DEFAULT '0',
  `size_four` int(11) DEFAULT '0',
  `size_two` int(11) DEFAULT '0',
  `size_one` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `id` int(11) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `locality_verbose` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`id`, `city`, `zipcode`, `locality`, `address`, `locality_verbose`) VALUES
(1, 'Makrana', NULL, 'Makrana Locality', 'Saini complex, Near Railway Station, Makrana, Makrana Locality, Makrana', 'Makrana Locality, Makrana'),
(2, 'Akot', NULL, 'Akot Locality', 'kasabe akot taluka akot district akola, Akot Locality, Akot', 'Akot Locality, Akot'),
(3, 'Azamgarh', NULL, 'Azamgarh Locality', 'ALWAL RAHUL NAGAR MADYA, NPP AZAMGARH, AZAMGARH, UTTAR PRADESH, Azamgarh Locality, Azamgarh', 'Azamgarh Locality, Azamgarh'),
(4, 'Malappuram', NULL, 'Malappuram Locality', 'Door No: 18/1531 -F to K, Opp Central School, Malappuram Muncipality, Malappuram Locality, Malappuram', 'Malappuram Locality, Malappuram'),
(5, 'Chittoor', NULL, 'Chittoor Locality', '15/2143, Rajiv Gandhi Road, Mari Circle, Chittoor Locality, Chittoor', 'Chittoor Locality, Chittoor'),
(6, 'Ashoknagar ', NULL, 'Ashoknagar Locality', 'Avadhpuri Colony, Ashoknagar, Ashoknagar Locality, Ashoknagar', 'Ashoknagar Locality, Ashoknagar '),
(7, 'Jharsuguda', NULL, 'Jharsuguda Locality', 'Goel Complex, Sarbahal Road, Jharsuguda (Odisha), Jharsuguda Locality, Jharsuguda', 'Jharsuguda Locality, Jharsuguda'),
(8, 'Hardoi', NULL, 'Hardoi Locality', 'In front of Ghantaghar hardoi, hardoi Tahsil, hardoi uttar pradesh., Hardoi Locality, Hardoi', 'Hardoi Locality, Hardoi'),
(9, 'Pilani', NULL, 'Pilani Locality', 'Bus stand, Pilani, chirawa, jhunjhunu, Pilani Locality, Pilani', 'Pilani Locality, Pilani'),
(10, 'Nipani', NULL, 'Nipani Locality', 'Near Kallapana Awade Janata Bank, Beside Sima Guest House, Satwai Road, Nipani, Nipani Locality, Nipani', 'Nipani Locality, Nipani'),
(11, 'Jharsuguda', NULL, 'Jharsuguda Locality', 'Behind Big Bazar, Shanti Apartment, Sarbahal Road, Jharsuguda, Jharsuguda Locality, Jharsuguda', 'Jharsuguda Locality, Jharsuguda'),
(12, 'Theni', NULL, 'Theni Locality', 'opp to convent school, periyakulam road, Theni Locality, Theni', 'Theni Locality, Theni'),
(13, 'Janjgir', NULL, 'Janjgir Locality', 'JANJGIR BESIDE GYANBHARTI SCHOOL LINK ROAD NAILA ZONE, Janjgir Locality, Janjgir', 'Janjgir Locality, Janjgir'),
(14, 'Nuzividu', NULL, 'Nuzividu Locality', 'Hanuman Junction road, Nuzvid-521201', 'Nuzividu Locality, Nuzividu'),
(15, 'Botad', NULL, 'Botad Locality', 'Shop no 46, Bhagyoday Complex Nr, ST Depo, Paliyad Road, Botad, Botad Locality, Botad', 'Botad Locality, Botad'),
(16, 'Karaikudi', NULL, 'Karaikudi Locality', '11/A, Kovilur Road, Karaikudi, Karaikudi Locality, Karaikudi', 'Karaikudi Locality, Karaikudi'),
(17, 'Malout', NULL, 'Malout Locality', 'Shop 129, Sky Mall, Malout Locality, Malout', 'Malout Locality, Malout'),
(18, 'Nipani', NULL, 'Nipani Locality', 'Beside Hotel Pravin Delux Muragud Road', 'Nipani Locality, Nipani'),
(19, 'Proddatur', NULL, 'Proddatur Locality', '5/22 Gandhi road, Proddatur, cuddapah', 'Proddatur Locality, Proddatur'),
(20, 'Samrala', NULL, 'Samrala Locality', 'Global Tower, Khanna road, Samrala, Samrala Locality, Samrala', 'Samrala Locality, Samrala'),
(21, 'Kolkata', NULL, 'JW Marriott Hotel Kolkata, Science City Area', 'JW Marriott Hotel, 4A, J.B.S Haldane Avenue, Science City Area, Kolkata', 'JW Marriott Hotel Kolkata, Science City Area, Kolkata'),
(22, 'Kolkata', 700091, 'Sector 2, Salt Lake', 'BH- 40, Sector 2, Salt Lake, Kolkata', 'Sector 2, Salt Lake, Kolkata'),
(23, 'Kolkata', 700026, 'Tollygunge', '1/4, 202, S P Mukherjee Road, Bawali Mandal Road, Mudiali, Ravindra Sarovar, Tollygunge, Kolkata', 'Tollygunge, Kolkata'),
(24, 'Kolkata', NULL, 'Topsia', 'Shop 86 A, Main 6th Floor, Haute Street Corporate Park, Topsia Road, Seal Lane, Topsia, Kolkata', 'Topsia, Kolkata'),
(25, 'Kolkata', 700157, 'City Centre 2 Mall, Chinar Park', '2 Floor, City Centre, Rajarhat Newtown, Chinar Park, Kolkata', 'City Centre 2 Mall, Chinar Park, Kolkata'),
(26, 'Kolkata', NULL, 'Park Street Area', '18M, Park Street Area, Kolkata', 'Park Street Area, Kolkata'),
(27, 'Kolkata', NULL, 'Science City Area', 'ITC Sonar, JBS Haldane Avenue, EM Bypass, Science City Area, Kolkata', 'Science City Area, Kolkata'),
(28, 'Kolkata', NULL, 'Fort Knox, Camac Street Area', '801 A, 8th Floor, Fort Knox Building, Camac Street Area, Kolkata', 'Fort Knox, Camac Street Area, Kolkata'),
(29, 'Kolkata', 700064, 'Sector 1, Salt Lake', 'BC 25, Sector 1, Salt Lake, Kolkata', 'Sector 1, Salt Lake, Kolkata'),
(30, 'Kolkata', 700075, 'Ajoy Nagar', 'C22, Sammilani Park, Survey Park Area, Ajoy Nagar, Kolkata', 'Ajoy Nagar, Kolkata'),
(31, 'Kolkata', NULL, 'Park Street Area', '18A, Park Street, Park Street Area, Kolkata', 'Park Street Area, Kolkata'),
(32, 'Kolkata', 700006, 'Maniktala', '116, Vivekananda Road, Near YMCA Hostel, Maniktala, Kolkata', 'Maniktala, Kolkata'),
(33, 'Kolkata', NULL, 'Park Street Area', '1st Floor, 24, Park Center Building, Park Street Area, Kolkata', 'Park Street Area, Kolkata'),
(34, 'Kolkata', 700020, 'Bhawanipur', '2, Dr. Rajendra Road, Bhawanipur, Kolkata', 'Bhawanipur, Kolkata'),
(35, 'Kolkata', NULL, 'Barrackpore', '10/8, S.N. Bannerjee Road, Barrackpore, Kolkata', 'Barrackpore, Kolkata'),
(36, 'Kolkata', 0, 'RDB Boulevard, Sector 5', 'K1, RDB Boulevard, Block EP & GP, Sector 5, Salt Lake', 'RDB Boulevard, Sector 5, Kolkata'),
(37, 'Kolkata', NULL, 'Ballygunge', '28/A, Syed Amir Ali Avenue, Ballygunge', 'Ballygunge, Kolkata'),
(38, 'Kolkata', NULL, 'Kankurgachi', '89C, Maulana Abul Kalam Sarani, Kankurgachi, Kolkata', 'Kankurgachi, Kolkata'),
(39, 'Kolkata', NULL, 'Sector 5, Salt Lake', 'RBD Cinema, 1st Floor, Sector 5, Salt Lake, Kolkata', 'Sector 5, Salt Lake, Kolkata'),
(40, 'Kolkata', NULL, 'Sector 1, Salt Lake', 'EC-18, Sector 1, Salt Lake', 'Sector 1, Salt Lake, Kolkata'),
(41, 'Gurgaon', NULL, 'Cyber Hub, DLF Cyber City', 'Shop 4A, Ground Floor, DLF Cyber Hub, Tower 8C, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(42, 'Gurgaon', NULL, 'Ambience Mall, DLF Phase 3', 'T-317, 3rd Floor, Ambience Mall, DLF Phase 3, Gurgaon', 'Ambience Mall, DLF Phase 3, Gurgaon'),
(43, 'Gurgaon', NULL, 'MG Road', 'Grand Mall, Near Sikanderpur Metro Station, MG Road, Gurgaon', 'MG Road, Gurgaon'),
(44, 'Gurgaon', 0, 'Sector 14', '84-85, Shopping Complex, Sector 14, Gurgaon', 'Sector 14, Gurgaon'),
(45, 'Gurgaon', 122002, 'Cyber Hub, DLF Cyber City', 'Ground Floor, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(46, 'Gurgaon', NULL, 'Golf Course Road', '94-D, Sector 53, Opposite Vatika Towers, Golf Course Road, Gurgaon', 'Golf Course Road, Gurgaon'),
(47, 'Gurgaon', NULL, 'South City 2', 'Shop G85, Spaze Platinum Tower, Ground Floor, Gurgaon-Sohna Highway, Sector 47, South City 2, Gurgaon', 'South City 2, Gurgaon'),
(48, 'Gurgaon', NULL, 'Cyber Hub, DLF Cyber City', '2nd Floor, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(49, 'Gurgaon', 0, 'Cross Point Mall, DLF Phase 4', 'Cross Point Mall, 119-123, Ground Level, DLF Phase 4, Gurgaon', 'Cross Point Mall, DLF Phase 4, Gurgaon'),
(50, 'Gurgaon', NULL, 'Suncity Business Tower, Golf Course Road', 'Suncity Business Tower, Golf Course Road, Gurgaon', 'Suncity Business Tower, Golf Course Road, Gurgaon'),
(51, 'Gurgaon', NULL, 'Sector 29', 'SCO 21, Main Market, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(52, 'Gurgaon', NULL, 'Cyber Hub, DLF Cyber City', 'Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(53, 'Gurgaon', NULL, 'Sohna Road', 'Shop 1, Vipul Trade Centre, Sohna Road, Gurgaon', 'Sohna Road, Gurgaon'),
(54, 'Gurgaon', NULL, 'Cross Point Mall, DLF Phase 4', 'Shop 110, 1st Floor, Cross Point Mall, DLF Phase 4, Gurgaon', 'Cross Point Mall, DLF Phase 4, Gurgaon'),
(55, 'Gurgaon', 122002, 'Cyber Hub, DLF Cyber City', '102, 1st Floor, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(56, 'Gurgaon', 122001, 'Sector 31', 'Shop 84 - 87, HUDA Shopping Complex, Near Medanta Hospital, Sector 32', 'Sector 31, Gurgaon'),
(57, 'Gurgaon', 0, 'Central Plaza Mall, Golf Course Road', '2, Central Plaza Mall, Golf Course Road, Gurgaon', 'Central Plaza Mall, Golf Course Road, Gurgaon'),
(58, 'Gurgaon', 122002, 'Sector 29', 'SCO 23, Main Market, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(59, 'Gurgaon', NULL, 'Cyber Hub, DLF Cyber City', 'DLF Tower 2, 8th Road, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(60, 'Gurgaon', NULL, 'Golf Course Road', 'Ground Floor, Vatika Towers Complex, Golf Course Road, Gurgaon', 'Golf Course Road, Gurgaon'),
(61, 'Gurgaon', NULL, 'Cyber Hub, DLF Cyber City', 'Unit 1B & 1C, Upper Ground Floor-C, Building 10C, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(62, 'Gurgaon', NULL, 'Sector 29', 'SCO 53, 2nd Floor, Main Market, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(63, 'Gurgaon', NULL, 'MGF Metropolis Mall, MG Road', 'Shop LG 1-3, MGF Metropolis Mall, MG Road, Gurgaon', 'MGF Metropolis Mall, MG Road, Gurgaon'),
(64, 'Gurgaon', 122002, 'Cyber Hub, DLF Cyber City', '1st Floor, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(65, 'Gurgaon', 122002, 'Sector 29', 'Plot 3-5, Near Leisure Valley Park, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(66, 'Gurgaon', NULL, 'Sector 29', 'Site 8-10, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(67, 'Gurgaon', NULL, 'Sector 29', 'SCO - 32, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(68, 'Gurgaon', NULL, 'Cyber Hub, DLF Cyber City', 'Shop 24, Ground Floor, Cyber Hub, Sector 24, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(69, 'Gurgaon', 122002, 'Sector 29', 'SCO 39, 1st Floor, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(70, 'Gurgaon', 0, 'Sector 14', '5 & 6, Atul Kataria Chowk, Sector 14, Gurgaon', 'Sector 14, Gurgaon'),
(71, 'Gurgaon', NULL, 'Udyog Vihar', 'Opposite Plot 269, Phase II, Udyog Vihar, Gurgaon', 'Udyog Vihar, Gurgaon'),
(72, 'Gurgaon', NULL, 'Sector 29', 'SCO 29, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(73, 'Gurgaon', 122002, 'Suncity Business Tower, Golf Course Road', '315, 3rd Floor, Suncity Business Tower, Golf Course Road, Gurgaon', 'Suncity Business Tower, Golf Course Road, Gurgaon'),
(74, 'Gurgaon', NULL, 'Global Foyer Mall, Golf Course Road', 'Global Foyer Mall, Golf Course Road, Gurgaon', 'Global Foyer Mall, Golf Course Road, Gurgaon'),
(75, 'Gurgaon', 122002, 'Sector 29', 'SCO 305, 1st & 2nd Floor, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(76, 'Gurgaon', 122002, 'Cyber Hub, DLF Cyber City', 'Shop 6, Ground Floor, Building 8, Tower C, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(77, 'Gurgaon', 122002, 'Global Foyer Mall, Golf Course Road', '1st Floor, Global Foyer Mall, Sector 43, Golf Course Road, Gurgaon', 'Global Foyer Mall, Golf Course Road, Gurgaon'),
(78, 'Gurgaon', 0, 'Sector 31', 'SCO 17, Main Market, Sector 31, Gurgaon', 'Sector 31, Gurgaon'),
(79, 'Gurgaon', 122002, 'Cyber Hub, DLF Cyber City', '3, Ground Floor, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(80, 'Gurgaon', 122002, 'Sector 29', 'SCO 22, 1st Floor, Sector 29, Gurgaon', 'Sector 29, Gurgaon'),
(81, 'New Delhi', NULL, 'Aerocity', 'The Walk, Worldmark 2, Aerocity, New Delhi', 'Aerocity, New Delhi'),
(82, 'New Delhi', NULL, 'Punjabi Bagh', '1/83, Third Floor, Club Road, West Punjabi Bagh, Punjabi Bagh, New Delhi', 'Punjabi Bagh, New Delhi'),
(83, 'New Delhi', NULL, 'Connaught Place', 'H 55, 1st Floor, Outer Circle, Connaught Place, New Delhi', 'Connaught Place, New Delhi'),
(84, 'New Delhi', NULL, 'Rajinder Nagar', '31- B, Pusa Road, Rajinder Nagar, New Delhi', 'Rajinder Nagar, New Delhi'),
(85, 'New Delhi', NULL, 'Select Citywalk Mall, Saket', 'Dome, Level 4, Select Citywalk, A-3, District Centre, Saket, New Delhi', 'Select Citywalk Mall, Saket, New Delhi'),
(86, 'New Delhi', 110001, 'Connaught Place', '28, Block A, Kasturba Gandhi Marg, Connaught Place, New Delhi', 'Connaught Place, New Delhi'),
(87, 'New Delhi', 110054, 'Majnu ka Tila', 'House 6, New Colony, Majnu ka Tila, New Delhi', 'Majnu ka Tila, New Delhi'),
(88, 'Gurgaon', NULL, 'Cyber Hub, DLF Cyber City', 'Unit 1B & 1C, Upper Ground Floor-C, Building 10C, Cyber Hub, DLF Cyber City, Gurgaon', 'Cyber Hub, DLF Cyber City, Gurgaon'),
(89, 'New Delhi', NULL, 'Hauz Khas Village', '9-A & 12, Hauz Khas Village, New Delhi', 'Hauz Khas Village, New Delhi'),
(90, 'New Delhi', 110001, 'Connaught Place', '11, KG Marg, Scindia House, Connaught Place, New Delhi', 'Connaught Place, New Delhi'),
(91, 'New Delhi', NULL, 'Connaught Place', 'F40, 2nd Floor, Inner Circle, \nConnaught Place, New Delhi', 'Connaught Place, New Delhi'),
(92, 'New Delhi', 110001, 'Connaught Place', 'M 44, Outer Circle, Connaught Place, New Delhi', 'Connaught Place, New Delhi'),
(93, 'New Delhi', NULL, 'Connaught Place', 'F-60, Second Floor, Connaught Place, New Delhi', 'Connaught Place, New Delhi'),
(94, 'New Delhi', 110001, 'Connaught Place', '91, 2nd Floor, N Block, Connaught Place, New Delhi', 'Connaught Place, New Delhi'),
(95, 'New Delhi', 110001, 'Connaught Place', '23/7, L Block, Middle Circle, Connaught Place, New Delhi', 'Connaught Place, New Delhi'),
(96, 'New Delhi', 0, 'Laxmi Nagar', 'E-60, Vikas Marg, Laxmi Nagar, New Delhi', 'Laxmi Nagar, New Delhi'),
(97, 'Noida', NULL, 'DLF Mall of India, Sector 18,  Noida', '3rd Floor, DLF Mall of India, Sector 18, Noida', 'DLF Mall of India, Sector 18,  Noida, Noida'),
(98, 'New Delhi', NULL, 'Lajpat Nagar 4', 'Moolchand Metro Station, Lajpat Nagar 4, New Delhi', 'Lajpat Nagar 4, New Delhi'),
(99, 'New Delhi', NULL, 'Chanakyapuri', '10, Santushti Shopping Complex, Race Course Road, Chanakyapuri, New Delhi', 'Chanakyapuri, New Delhi'),
(100, 'New Delhi', NULL, 'Ashok Vihar Phase 2', '10, Community Centre, Ashok Vihar Phase 2, New Delhi', 'Ashok Vihar Phase 2, New Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `average_cost_for_two` int(11) DEFAULT NULL,
  `cuisines` varchar(1000) DEFAULT NULL,
  `timings` varchar(100) DEFAULT NULL,
  `establishment` varchar(1000) DEFAULT NULL,
  `highlights` varchar(1000) DEFAULT NULL,
  `thumb` varchar(1000) DEFAULT NULL,
  `phone_numbers` varchar(1000) DEFAULT NULL,
  `size_ten` int(11) DEFAULT '0',
  `size_eight` int(11) DEFAULT '0',
  `size_six` int(11) DEFAULT '0',
  `size_four` int(11) DEFAULT '0',
  `size_two` int(11) DEFAULT '0',
  `size_one` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `location_id`, `name`, `average_cost_for_two`, `cuisines`, `timings`, `establishment`, `highlights`, `thumb`, `phone_numbers`, `size_ten`, `size_eight`, `size_six`, `size_four`, `size_two`, `size_one`) VALUES
(496, 65, 'Bikanervala', 600, 'Mithai, Street Food, South Indian, North Indian, Chinese', '8 AM to 11 PM', 'Sweet Shop', ',Lunch,Cash,Breakfast,Dinner,Takeaway Available,Credit Card,Debit Card,Sodexo,Ticket Restaurant,Pure Veg,Desserts and Bakes,Indoor Seating,Air Conditioned', 'https://b.zmtcdn.com/data/pictures/chains/1/491/041cd733bcc1683c88f6cb8a0b87b8c8.png?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4337777', 7, 9, 14, 14, 18, 22),
(549, 70, 'Dana Choga', 600, 'North Indian, Chinese, Mughlai', '11 AM to 11 PM', 'Casual Dining', ',Lunch,Delivery,Credit Card,Dinner,Cash,Takeaway Available,Debit Card,Sodexo,Air Conditioned,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/8/378/54da3097bd09df7b4e97e794da88b4c8.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4088885, 0124 4274260, +91 9310040470', 7, 5, 14, 15, 21, 27),
(4766, 49, 'Cafe Delhi Heights', 2000, 'Asian, Modern Indian, Continental, Cafe, Momos', '10am – 12midnight (Mon-Sun)', 'Casual Dining', ',Dinner,Lunch,Credit Card,Breakfast,Debit Card,Cash,Valet Parking Available,Table booking recommended,Fullbar,Air Conditioned,Smoking Area,All Day Breakfast,Live Music,Wheelchair Accessible,Indoor Seating,Axis Bank - Dining Delights,Wifi', 'https://b.zmtcdn.com/data/pictures/6/4766/375935462466cd6feef0b8154ae56c4d.jpeg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9555754033, 0124 4229797', 5, 9, 11, 17, 24, 27),
(5004, 78, 'Om Sweets & Snacks', 500, 'North Indian, Mithai, Fast Food, South Indian, Chinese', '8am – 10:30pm (Mon-Sun)', 'Quick Bites', ',Dinner,Cash,Takeaway Available,Credit Card,Debit Card,Lunch,Delivery,Breakfast,Indoor Seating,Air Conditioned,Pure Veg,Desserts and Bakes', 'https://b.zmtcdn.com/data/pictures/4/5004/5eaeea1c4ff91cbb00e54a3423b6db70.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4271101, 0124 4271102, 0124 4271103', 4, 6, 10, 10, 21, 22),
(5056, 44, 'Om Sweets & Snacks', 500, 'North Indian, Mithai, Fast Food, South Indian, Chinese', '8am – 10:30pm (Mon-Sun)', 'Quick Bites', ',Delivery,Breakfast,Lunch,Dinner,Cash,Takeaway Available,Credit Card,Debit Card,Air Conditioned,Pure Veg,Desserts and Bakes,Free Parking,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/4/5004/5eaeea1c4ff91cbb00e54a3423b6db70.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 2330451, 0124 2307691', 4, 6, 10, 12, 23, 24),
(7528, 73, 'Indian Grill Room', 1800, 'North Indian, Mughlai', '12noon – 3pm, 6:30pm – 11pm (Mon-Sun)', 'Casual Dining', ',Dinner,Delivery,Credit Card,Debit Card,Lunch,Cash,Takeaway Available,Fullbar,Indoor Seating,Air Conditioned,Wheelchair Accessible,Outdoor Seating,Table booking recommended,Wifi,Buffet', 'https://b.zmtcdn.com/data/pictures/chains/8/7528/177ca84d2fe7652f0991c2fd2db0f3a3.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66103612', 6, 8, 12, 14, 24, 27),
(8597, 57, 'Shawarma House', 600, 'Healthy Food, Lebanese', '11am – 8am (Mon-Thu),24 Hours (Fri-Sun)', 'Quick Bites', ',Cash,Delivery,Credit Card,Debit Card,Lunch,Dinner,Mall Parking,Takeaway Available,Breakfast,Air Conditioned,Free Parking,Wheelchair Accessible,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/chains/7/8597/365ede858c0bc58ed3b2c5ef665536aa.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4148888, +91 8010018888', 7, 7, 10, 15, 17, 29),
(20404, 31, 'Peter Cat', 1200, 'Continental, North Indian', '11 AM to 11:20 PM', 'Casual Dining', ',Lunch,Serves Alcohol,Delivery,Credit Card,Dinner,Cash,Takeaway Available,Debit Card,Fullbar,Air Conditioned,Indoor Seating,Table booking recommended', 'https://b.zmtcdn.com/data/pictures/4/20404/f9bdca96d535375767a8df1c534994a7.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '033 22298841', 6, 5, 10, 13, 22, 24),
(20842, 36, 'Barbeque Nation', 1800, 'North Indian, Chinese, Kebab, BBQ', '12 Noon to 3:30 PM, 6:30 PM to 11:30 PM', 'Casual Dining', ',Dinner,Cash,Lunch,Credit Card,Debit Card,Indoor Seating,Air Conditioned,Buffet,Table reservation required,Kid Friendly', 'https://b.zmtcdn.com/data/pictures/chains/2/20842/b6429ddad24625e65344caabb921bd57.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '18001086060, 033 64806060', 7, 6, 10, 18, 20, 21),
(25570, 33, 'Barbeque Nation', 1800, 'North Indian, Chinese, Kebab, BBQ', '12 Noon to 3:30 PM, 6:30 PM to 11:30 PM', 'Casual Dining', ',Serves Alcohol,Dinner,Cash,Lunch,Credit Card,Debit Card,Free Parking,Indoor Seating,Air Conditioned,Buffet,Table reservation required,Fullbar,Ticket Restaurant,Kid Friendly', 'https://b.zmtcdn.com/data/pictures/chains/2/20842/b6429ddad24625e65344caabb921bd57.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '18001086060, 033 64806060', 7, 7, 11, 12, 22, 29),
(303960, 77, 'Manhattan Bar Exchange & Brewery', 1400, 'Finger Food, American, Continental, North Indian, Italian', '1 PM to 1 AM (Mon-Sun)', 'Pub', ',Lunch,Serves Alcohol,Cash,Debit Card,Dinner,Mall Parking,Credit Card,DJ,Nightlife,Fullbar,Air Conditioned,Wheelchair Accessible,Live Sports Screening,Craft Beer,Indoor Seating,Table booking recommended,Smoking Area', 'https://b.zmtcdn.com/data/res_imagery/303960_RESTAURANT_17d39952bc0d8d25a2df1e1afd32abd8.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 8800697554, +91 8800697549', 7, 7, 12, 15, 15, 28),
(306046, 79, 'SodaBottleOpenerWala', 1700, 'Parsi, North Indian, Maharashtrian, Beverages, Bakery', '8:30am – 12midnight (Mon-Sun)', 'Casual Dining', ',Lunch,Serves Alcohol,Cash,Credit Card,Debit Card,Dinner,Takeaway Available,Breakfast,Outdoor Seating,Air Conditioned,Wifi,Fullbar,Indoor Seating,Digital Payments Accepted,Axis Bank - Dining Delights,Smoking Area', 'https://b.zmtcdn.com/data/pictures/8/309788/a121c28e47a70a4326d458933bd4d3ab.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9971839456', 4, 5, 14, 19, 20, 29),
(306150, 48, 'Imperfecto', 1800, 'Mediterranean, Italian, Continental, Spanish, North Indian, Asian', '12 Noon to 1 AM', 'Casual Dining', ',Takeaway Available,Lunch,Dinner,Cash,Credit Card,Debit Card,Nightlife,Outdoor Seating,Indoor Seating,Table booking recommended,Air Conditioned,Smoking Area,Buffet,Live Entertainment,Fullbar,Live Music,Rooftop,Digital Payments Accepted', 'https://b.zmtcdn.com/data/pictures/chains/2/301442/9b847c0c6363ce6832349157414a9079.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 71565336', 5, 8, 10, 16, 22, 27),
(306153, 64, 'Dhaba - Estd 1986 Delhi', 2200, 'North Indian', '12noon – 4pm, 6:30pm – 11:30pm (Mon-Sun)', 'Casual Dining', ',Dinner,Delivery,Credit Card,Lunch,Cash,Takeaway Available,Debit Card,Fullbar,Indoor Seating,Digital Payments Accepted,Kid Friendly,Outdoor Seating,Table booking recommended,Air Conditioned', 'https://b.zmtcdn.com/data/pictures/chains/9/306049/3e426a0b5435cc82ae7ad5f1f7652109.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 8527900779, 0124 4900155', 5, 6, 9, 16, 21, 23),
(307374, 87, 'AMA Cafe', 450, 'Cafe, Juices', '7 AM to 10 PM', 'Café', ',Dinner,Cash,Takeaway Available,Breakfast,Lunch,Credit Card,Debit Card,Indoor Seating,Air Conditioned,Wifi', 'https://b.zmtcdn.com/data/res_imagery/307374_RESTAURANT_6688d81a57b8da4bcf20d725de39a3d2.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66103668', 6, 6, 13, 12, 15, 25),
(308572, 54, 'Fat Lulu\'s Cafe & Bar', 1700, 'Pizza, Italian, Salad', '11:30 AM to 11:30 PM', 'Casual Dining', ',Cash,Credit Card,Debit Card,Takeaway Available,Delivery,Dinner,Lunch,Air Conditioned,Wifi,Indoor Seating,Digital Payments Accepted,Fullbar,Axis Bank - Dining Delights,Table booking recommended', 'https://b.zmtcdn.com/data/reviews_photos/735/7db4b5992558ccdc3e3a2f0b5f855735_1564379383.jpg?crop=960%3A960%3B320%2C0&fit=around%7C200%3A200', '+91 8800601746, +91 9560799795', 4, 9, 9, 10, 23, 28),
(310188, 42, 'PizzaExpress', 1900, 'Italian, Pizza, Salad', '11:30am – 12midnight (Mon-Sun)', 'Casual Dining', ',Dinner,Credit Card,Cash,Delivery,Lunch,Takeaway Available,Mall Parking,Air Conditioned,Wine,Table booking recommended,Beer,Wheelchair Accessible,Indoor Seating,Wifi', 'https://b.zmtcdn.com/data/res_imagery/309208_CHAIN_a246068459168a508ac2668890a9e26d.png?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4665721, 0124 4665722', 6, 9, 10, 10, 17, 23),
(311104, 60, 'Impromptu', 2200, 'European, Continental, North Indian, Italian', '12 Noon to 12 Midnight', 'Bar', ',Delivery,Lunch,Cash,Credit Card,Debit Card,Dinner,Air Conditioned,Smoking Area,Buffet,Live Sports Screening,Fullbar,Live Music,Table booking recommended,Digital Payments Accepted,Wifi,Nightlife,Outdoor Seating,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/4/311104/c29ada940a810def0aa3dc2b30c8bc4c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 7840055999, 0124 4119191', 7, 9, 12, 10, 24, 28),
(311662, 46, 'La Pino\'z Pizza', 500, 'Pizza, Italian', '11 AM to 1 AM (Mon-Thu, Sat-Sun), 9:30 PM to 12 Midnight (Fri)', 'Casual Dining', ',Dinner,Cash,Delivery,Credit Card,Lunch,Takeaway Available,Debit Card,Indoor Seating,Digital Payments Accepted,Table booking recommended,Air Conditioned,Wifi', 'https://b.zmtcdn.com/data/pictures/2/311662/b5402245860a06f1e961064be7c6cc99.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9250000016, +91 9250000034, +91 9810154544', 7, 9, 10, 17, 23, 27),
(313316, 50, 'Bikanervala', 600, 'Mithai, Street Food, South Indian, North Indian, Chinese', '8 AM to 11 PM (Mon-Sun)', 'Sweet Shop', ',Lunch,Takeaway Available,Credit Card,Debit Card,Dinner,Cash,Delivery,Breakfast,Sodexo,Air Conditioned,Wheelchair Accessible,Indoor Seating,Pure Veg,Desserts and Bakes', 'https://b.zmtcdn.com/data/pictures/chains/1/491/041cd733bcc1683c88f6cb8a0b87b8c8.png?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4707777, 0124 4707778', 6, 5, 8, 10, 22, 29),
(17983797, 35, 'Dada Boudi Restaurant', 600, 'Mughlai, North Indian, Chinese', '12 Noon to 10:30 PM', 'Casual Dining', ',Dinner,Cash,Takeaway Available,Lunch,Delivery,Debit Card,Indoor Seating,Air Conditioned', 'https://b.zmtcdn.com/data/pictures/5/21875/632760f7f116edd0babf8bf19af4769f.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9007614830', 5, 6, 12, 19, 23, 22),
(18017618, 32, '@49', 400, 'Chinese', '1pm – 10:30pm (Mon),6:01pm – 10:30pm (Tue),12noon – 10:30pm (Wed-Sun)', 'Quick Bites', ',Cash,Takeaway Available,Debit Card,Dinner,Delivery,Credit Card,Lunch,Outdoor Seating,Rooftop,Indoor Seating,Air Conditioned', 'https://b.zmtcdn.com/data/pictures/8/18017618/98d0c56bfe63d544b07a7decaaf66d27.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 8336937782, +91 8336937781', 5, 7, 11, 12, 23, 29),
(18168152, 47, 'Barbeque Nation', 1600, 'North Indian, Chinese, BBQ', '12noon – 3:30pm, 6:30pm – 11:30pm (Mon-Sun)', 'Casual Dining', ',Lunch,Cash,Dinner,Credit Card,Debit Card,Fullbar,Live Music,Table booking recommended,Buffet,Outdoor Seating,Indoor Seating,Air Conditioned', 'https://b.zmtcdn.com/data/pictures/chains/2/1212/b6429ddad24625e65344caabb921bd57.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9654266060', 5, 9, 8, 14, 16, 23),
(18224532, 56, 'Dilli 6 On Wheels', 250, 'North Indian, Chinese, Kebab', '11 AM to 11 PM', 'Quick Bites', ',Lunch,Cash,Takeaway Available,Breakfast,Dinner,Delivery,Credit Card,Debit Card,Outdoor Seating,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/chains/2/18224532/006ee8456f1db84e899417fc9e98ae6f.jpeg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9873372240', 7, 9, 10, 13, 16, 25),
(18238278, 86, 'Tamasha', 1600, 'Finger Food, North Indian, Continental, Italian', '12 Noon to 1 AM (Mon-Sun)', 'Bar', ',Credit Card,Serves Alcohol,Debit Card,Lunch,Cash,Dinner,Digital Payments Accepted,DJ,Fullbar,Air Conditioned,Live Entertainment,Outdoor Seating,Table booking recommended,Hookah,Live Sports Screening,Live Music,Smoking Area,Nightlife,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/8/18238278/39d09a5c0215d8b12ae4742efe564a62.png?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66103822', 4, 8, 12, 11, 21, 29),
(18277179, 52, 'Yum Yum Cha', 1800, 'Chinese, Japanese, Sushi', '12 Noon to 11 PM (Mon-Sun)', 'Casual Dining', ',Credit Card,Dinner,Takeaway Available,Cash,Debit Card,Lunch,No Alcohol Available,Valet Parking Available,Indoor Seating,Digital Payments Accepted,Wheelchair Accessible,Smoking Area', 'https://b.zmtcdn.com/data/res_imagery/308741_CHAIN_bee67e363e99ac549b34c85ffe5d8de7.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9810002993, 0124 4078133, 0124 4078233', 7, 7, 8, 19, 17, 26),
(18281957, 58, 'Factory By Sutra', 1600, 'Modern Indian, Asian, Continental, Italian', '12 Noon to 1 AM', 'Microbrewery', ',Lunch,Cash,Credit Card,Dinner,Takeaway Available,Debit Card,Live Sports Screening,Fullbar,Indoor Seating,Table booking recommended,Wifi,Nightlife,Live Music,Rooftop,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/res_imagery/18281957_RESTAURANT_1631cd8cf88f0424ece502a4b3158f60.jpeg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9205246700, +91 9205249700, +91 8920960204', 6, 7, 12, 14, 23, 23),
(18289242, 41, 'Cyber Hub Social', 2200, 'Continental, American, Asian, North Indian, European', '11am – 1am (Mon, Tue, Thu, Fri, Sat, Sun), 11am – 12:30AM (Wed)', 'Lounge', ',Lunch,Cash,Takeaway Available,Debit Card,Dinner,Delivery,Credit Card,Live Sports Screening,Fullbar,Table reservation required,Digital Payments Accepted,Wifi,Nightlife,Indoor Seating,Restricted Entry,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/pictures/2/18289242/972a5ed0736cd32dbea4a9cf826374d6.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 7838045182', 4, 6, 14, 16, 23, 27),
(18303709, 76, 'Burma Burma', 1500, 'Asian, Burmese', '12noon – 3pm (Mon),12noon – 3pm, 7pm – 11pm (Tue-Fri),12noon – 3:30pm, 7pm – 11pm (Sat-Sun)', 'Casual Dining', ',No Alcohol Available,Dinner,Takeaway Available,Credit Card,Lunch,Cash,Debit Card,Valet Parking Available,Air Conditioned,Wheelchair Accessible,Pure Veg,Sneakpeek,Indoor Seating,Table booking recommended,Wifi,Gluten Free Options,Serves Jain Food', 'https://b.zmtcdn.com/data/pictures/chains/9/18303709/69c66c4dd101dd3eba9ad0668a70c5dd.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4372999, 0124 4372998, 0124 4372997', 4, 9, 12, 16, 22, 28),
(18337894, 66, 'Prankster', 1500, 'Bar Food, Modern Indian', '12:30 PM to 1 AM', 'Microbrewery', ',Cash,Dinner,Lunch,Debit Card,Credit Card,Smoking Area,Fullbar,Outdoor Seating,Wifi,Table booking recommended,Craft Beer,Live Sports Screening,Digital Payments Accepted,Air Conditioned,Nightlife,Above 18 Only,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/4/18337894/5eb0ab5aa7b77bfd4df7b241f0f879f2.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4266653, 0124 4266654, +91 9650105666', 4, 7, 8, 11, 22, 28),
(18337897, 53, 'Vapour Bar Exchange', 1600, 'Continental, Italian, American, North Indian', '12 Noon to 12 Midnight', 'Microbrewery', ',Lunch,Cash,Delivery,Dinner,Credit Card,Debit Card,DJ,Nightlife,Outdoor Seating,Table booking recommended,Brunch,Desserts and Bakes,Live Sports Screening,Fullbar,Indoor Seating,Air Conditioned,Smoking Area,Group Meal', 'https://b.zmtcdn.com/data/pictures/5/18463965/1e7a94548a01dda0c06735c8b6e5a7e0.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9582555610, +91 9582555611, +91 9582555614', 4, 8, 13, 10, 21, 23),
(18377098, 29, 'CALCUTTA 64', 900, 'Cafe, Continental, Mexican, Italian', '11:30am – 11pm (Mon-Fri),8am – 11pm (Sat-Sun)', 'Café', ',Lunch,Takeaway Available,Breakfast,Dinner,Cash,Delivery,Credit Card,Debit Card,Live Sports Screening,Air Conditioned,Wifi,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/8/18377098/de6bbd8f8084e7757b31083cad7bce9d.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '033 40643464', 5, 7, 12, 13, 20, 29),
(18383453, 59, 'Circus', 1800, 'North Indian, Chinese, Italian', '12 Noon to 12 Midnight', 'Casual Dining', ',Delivery,Lunch,Serves Alcohol,Cash,Debit Card,Dinner,Credit Card,Outdoor Seating,Air Conditioned,Fullbar,Indoor Seating,Table booking recommended,Axis Bank - Dining Delights', 'https://b.zmtcdn.com/data/pictures/3/18383453/bec5bd4a980951768449898908b908e2.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '0124 4966321, +91 9821772934, +91 9582085021', 7, 5, 11, 18, 21, 26),
(18398880, 21, 'JW Kitchen - JW Marriott Hotel', 3000, 'North Indian, European, Mediterranean, Thai, Salad, Juices', '24 Hours', 'Casual Dining', ',Dinner,Serves Alcohol,Breakfast,Lunch,Cash,Credit Card,Debit Card,Valet Parking Available,Indoor Seating,Air Conditioned,Luxury Dining,Wheelchair Accessible,Buffet,Fullbar,4/5 Star,Table booking recommended,Smoking Area,Brunch', 'https://b.zmtcdn.com/data/res_imagery/18398880_RESTAURANT_1086fdbb10f8246454a29465c2eb4d4a.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 7603037737, +91 7604070217, +91 6290728863', 4, 6, 9, 13, 23, 24),
(18414440, 25, 'Traffic Gastropub', 1800, 'North Indian, Italian, Pizza', '12 Noon to 12 Midnight', 'Pub', ',Dinner,Mall Parking,Takeaway Available,Lunch,Cash,Credit Card,DJ,Karaoke,Live Sports Screening,Valet Parking Available,Gastro Pub,Beer,Serves Cocktails,Table booking recommended,Hookah,Dance Floor,Live Entertainment,Nightlife,Fullbar,Wine,Indoor Seating,Above 18 Only,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/reviews_photos/b9b/6396f51b337089e0d746034d935adb9b_1559436170.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9903446566, +91 7797504404', 6, 6, 9, 18, 18, 25),
(18415341, 45, 'IHOP', 1800, 'Cafe, American, Desserts', '8AM to 12Midnight (Mon-Sun)', 'Café', ',Lunch,Cash,Takeaway Available,Breakfast,No Alcohol Available,Dinner,Delivery,Credit Card,Debit Card,Indoor Seating,Air Conditioned,Kid Friendly,Table Reservation Not Required,Axis Bank - Dining Delights', 'https://b.zmtcdn.com/data/pictures/chains/1/18415341/7ce54f76d881e1801cdcf2e398cd4331.png?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9999184486, +91 9999739599', 4, 6, 13, 19, 18, 25),
(18418233, 51, 'Agent Jack\'s Bidding Bar', 1800, 'Bar Food', '12 Noon to 12 Midnight', 'Pub', ',Dinner,Takeaway Available,Debit Card,Lunch,Cash,Credit Card,DJ,Nightlife,Live Music,Rooftop,Air Conditioned,Smoking Area,Live Sports Screening,Fullbar,Indoor Seating,Above 18 Only,Wifi', 'https://b.zmtcdn.com/data/pictures/3/18418233/2bc8d019756301de3d4058e4c9bc64b6.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66103947', 6, 6, 11, 19, 19, 22),
(18418247, 62, 'Feel Alive', 1200, 'North Indian, Fast Food, Italian, Asian, Continental, Bar Food', '11:45 AM to 1 AM', 'Pub', ',Dinner,Cash,Takeaway Available,Debit Card,Lunch,Serves Alcohol,Credit Card,Karaoke,Fullbar,Indoor Seating,Above 18 Only,Smoking Area,Live Sports Screening,Live Music,Air Conditioned,Private Dining Area Available,Wifi', 'https://b.zmtcdn.com/data/res_imagery/18418247_RESTAURANT_21f3654cca54cbf08128a1421b245612.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 61495167', 5, 7, 14, 17, 19, 22),
(18423151, 83, 'The Darzi Bar & Kitchen', 1500, 'North Indian, Chinese, Continental, Pizza', '12 Noon to 1 AM', 'Casual Dining', ',Lunch,Serves Alcohol,Cash,Credit Card,Dinner,Debit Card,Live Sports Screening,Fullbar,Indoor Seating,Air Conditioned,DJ,Valet Parking Available,Live Music,Rooftop,Free Wifi,Axis Bank - Dining Delights,Smoking Area', 'https://b.zmtcdn.com/data/pictures/1/18423151/5f287c45dcb94695bf9dac2ca6bb169c.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9311714703, +91 9311714702, +91 9313314700', 7, 5, 13, 18, 16, 25),
(18429148, 85, 'Pa Pa Ya', 2500, 'Asian, Chinese, Thai, Japanese', '12Noon to 1AM (Mon-Sun)', 'Fine Dining', ',Lunch,Serves Alcohol,Cash,Credit Card,Debit Card,Dinner,Mall Parking,Fullbar,Air Conditioned,Indoor Seating,Table booking recommended,Smoking Area,Brunch', 'https://b.zmtcdn.com/data/res_imagery/18429148_RESTAURANT_433edbeec2decc62911522378eca7fa8.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66103779', 4, 6, 11, 13, 16, 27),
(18463965, 74, 'Vapour Bar Exchange', 1600, 'Continental, Italian, American, North Indian', '12 Noon to 12 Midnight', 'Microbrewery', ',Dinner,Cash,Debit Card,Lunch,Mall Parking,Credit Card,Live Sports Screening,Craft Beer,Indoor Seating,Table Reservation Not Required,Nightlife,Fullbar,Above 18 Only,Air Conditioned', 'https://b.zmtcdn.com/data/pictures/5/18463965/1e7a94548a01dda0c06735c8b6e5a7e0.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9599008185, +91 9582555614, +91 9582555613', 5, 9, 11, 13, 23, 26),
(18551512, 55, 'Mamagoto', 2200, 'Asian', '12:30pm – 11:30pm (Mon-Sun)', 'Casual Dining', ',Lunch,Cash,Credit Card,Dinner,Debit Card,Fullbar,Table booking recommended,Indoor Seating,Air Conditioned,Wifi', 'https://b.zmtcdn.com/data/pictures/2/2632/b0ce7cde82e247cbe5705064c1ca41c1.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9873739473, +91 9599933602', 5, 8, 12, 19, 21, 28),
(18555387, 72, 'Friction The Drinkery', 1600, 'North Indian, Continental, Thai', '12 Noon to 12:30 AM', 'Bar', ',Dinner,Cash,Takeaway Available,Debit Card,Lunch,Credit Card,Fullbar,Wine,Live Music,Serves Cocktails,Air Conditioned,Nightlife,Valet Parking Available,Outdoor Seating,Beer,Indoor Seating,Table booking recommended,Axis Bank - Dining Delights,Smoking Area,DJ', 'https://b.zmtcdn.com/data/pictures/chains/7/18555387/ed6b196d2dc840bc6c153b5d1836dfff.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 71565324', 5, 6, 8, 16, 17, 27),
(18574357, 34, 'Baccara', 800, 'Chinese, Continental, Thai, Asian, Italian', '12 Noon to 2 AM', 'Café', ',Dinner,Cash,Delivery,Credit Card,Lunch,Takeaway Available,Debit Card,Live Entertainment,Live Music,Rooftop,Digital Payments Accepted,Live Sports Screening,Indoor Seating,Table booking recommended,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/pictures/7/18574357/c49a2cf4a5bf202b376f62427a552ef4.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 8336041852, +91 9903480980', 5, 5, 9, 12, 20, 24),
(18575757, 23, 'Cafe HQ', 600, 'Cafe, Continental, Italian, Chinese', '12:30pm – 11pm (Mon-Sun)', 'Café', ',Lunch,Takeaway Available,Credit Card,Dinner,Cash,Delivery,Debit Card,Board Games,Free Wifi,Digital Payments Accepted,Kid Friendly,Wifi,Desserts and Bakes,Indoor Seating,Table booking recommended,Air Conditioned,Vegan Options,Group Meal', 'https://b.zmtcdn.com/data/pictures/7/18575757/0badeaaf671938280e65e60c163d4f81.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9123790110, +91 8697913874, +91 9874581894', 5, 9, 12, 17, 23, 27),
(18579383, 75, 'The Barbeque Company', 1200, 'North Indian, Chinese, BBQ', '12noon – 3:30pm, 6:30pm – 11pm (Mon-Sun)', 'Casual Dining', ',Dinner,Credit Card,Debit Card,Cash,Delivery,Lunch,Air Conditioned,Wheelchair Accessible,Free Parking,Valet Parking Available,Indoor Seating,Table reservation required,Buffet,Live Sports Screening,Fullbar', 'https://b.zmtcdn.com/data/pictures/chains/7/17977777/4e479340b14a96e28b5f9a6d1938c395.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 30806414', 7, 5, 11, 14, 15, 23),
(18601364, 63, 'AB\'s - Absolute Barbecues', 1600, 'European, Mediterranean, North Indian', '12 Noon to 4:30 PM, 6:30 PM to 11:30 PM', 'Casual Dining', ',Lunch,Mall Parking,Takeaway Available,Dinner,Cash,Credit Card,Debit Card,Fullbar,Air Conditioned,Buffet,Group Meal,Indoor Seating,Kid Friendly', 'https://b.zmtcdn.com/data/pictures/chains/4/18601364/cc7e5ba04c3d10c8f5d8b04b79ed9ab5.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 7337336718, 040 45659921', 7, 9, 9, 18, 22, 29),
(18607141, 30, 'Blu Orchid', 700, 'Chinese, Asian', '12Noon to 10:45PM (Mon-Sun)', '', ',Delivery,Credit Card,Lunch,Dinner,Cash,Takeaway Available,Debit Card,No Seating Available,Card Upon Delivery,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/1/18607141/bfbeeebe9285de90279aa69d4c8ee994.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9903509427, +91 9903509428', 7, 9, 8, 19, 20, 22),
(18610904, 28, 'The Fatty Bao', 1500, 'Japanese, Sushi, Asian', '12 Noon to 11:30 PM', 'Casual Dining', ',Lunch,Cash,Takeaway Available,Debit Card,Dinner,Mall Parking,Delivery,Credit Card,Valet Parking Available,Gastro Pub,Table booking recommended,Catering Available,Axis Bank - Dining Delights,Wheelchair Accessible,Fullbar,Indoor Seating,Air Conditioned,Kid Friendly,Smoking Area', 'https://b.zmtcdn.com/data/pictures/4/18610904/a723f5948e2079051956196faf97c329.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '033 46022744, +91 9123701014', 6, 9, 8, 17, 19, 22),
(18634729, 26, 'Carpe Diem', 1000, 'Chinese, North Indian, Continental', '12noon – 12midnight (Mon-Sun)', 'Lounge', ',Lunch,Takeaway Available,Debit Card,Dinner,Cash,Credit Card,DJ,Sports TV,Fullbar,Air Conditioned,Smoking Area,Live Sports Screening,Valet Parking Available,Indoor Seating,Wifi', 'https://b.zmtcdn.com/data/pictures/9/18634729/bfe9fea24968af086ea01a8ae26d15c2.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '033 46023235, +91 7003523869, +91 9748796871', 6, 6, 10, 13, 17, 28),
(18637042, 80, 'Cervesia', 1200, 'North Indian, Continental, Chinese', '12noon – 12midnight (Mon-Sun)', 'Pub', ',Dinner,Cash,Takeaway Available,Lunch,Credit Card,Debit Card,Dance Floor,Fullbar,Live Music,Rooftop,Table booking recommended,Brunch,Desserts and Bakes,Live Sports Screening,Outdoor Seating,Indoor Seating,Free Wifi,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/pictures/2/18637042/ba96505b1b6c32ff7a8d6539af86381e.jpeg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 7289912000, +91 7289913000', 4, 9, 14, 19, 23, 28),
(18649486, 61, 'The Drunken Botanist', 2000, 'Continental, Italian, North Indian, Chinese', 'Mon-Sun (12 Noon to 1 AM)', 'Bar', ',Dinner,Cash,Credit Card,Lunch,Serves Alcohol,Debit Card,Nightlife,Indoor Seating,Table booking recommended,DJ,Fullbar,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/pictures/6/18649486/891f5711b0028057cdf834ca1fee9780.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66992206', 5, 7, 12, 17, 18, 26),
(18656043, 68, 'Pra Pra Prank', 2100, 'Asian, Modern Indian', '12 Noon to 12 Midnight', 'Casual Dining', ',Cash,Debit Card,Dinner,Credit Card,Takeaway Available,Lunch,Air Conditioned,Fullbar,Indoor Seating,Digital Payments Accepted', 'https://b.zmtcdn.com/data/pictures/3/18656043/6ea2c3c7177f712c0678dd69eb30156b.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9599965282, +91 9599965292', 6, 6, 11, 10, 20, 26),
(18687573, 43, 'eat.fit', 500, 'Healthy Food, North Indian, Biryani, Continental, Desserts', '7am – 10:30pm (Mon-Sun)', '', ',Delivery,Dinner,Debit Card,Credit Card,No Seating Available,Breakfast,Lunch,Digital Payments Accepted,Desserts and Bakes,Lunch Menu', 'https://b.zmtcdn.com/data/pictures/3/19131493/b7fb018ebabbdc4d9cf026f589bcbe72.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', 'Not available for this place', 4, 9, 14, 13, 20, 28),
(18703712, 40, 'Zaairah', 1000, 'North Indian, Chinese, Mexican', 'Closed (Mon),12noon – 2am (Tue-Sun)', 'Casual Dining', ',Lunch,Delivery,Credit Card,Dinner,Cash,Takeaway Available,Debit Card,Valet Parking Available,Table booking recommended,Digital Payments Accepted,Kid Friendly,Hookah,Smoking Area,Pure Veg,Live Sports Screening,Indoor Seating,Table booking for Groups,Air Conditioned,Private Dining Area Available,Wifi,Serves Jain Food', 'https://b.zmtcdn.com/data/pictures/2/18703712/feeac9c32c0c405bd672cc7ee8e369a5.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 6292116140, +91 6292116144, +91 9874977771', 7, 7, 14, 10, 24, 24),
(18707652, 37, 'Zam Zam', 500, 'Biryani, Mughlai, Kebab, North Indian', '12 Noon to 12 Midnight', 'Casual Dining', ',Lunch,Cash,No Alcohol Available,Dinner,Takeaway Available,Indoor Seating,Table booking not available,Table Reservation Not Required', 'https://b.zmtcdn.com/data/pictures/2/18707652/c50da022c4b3ce24bf8a427880546f6a.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '033 22872079', 7, 6, 9, 13, 22, 22),
(18712598, 22, 'Seven Kingdom', 750, 'Continental, Italian, European', '11 AM to 10 PM (Mon-Fri), 10 AM to 10 PM (Sat-Sun)', 'Quick Bites', ',Delivery,Credit Card,Lunch,Cash,Takeaway Available,Debit Card,Dinner,Private Dining Area Available,Free Parking,Live Sports Screening,Air Conditioned,Disabled Friendly,Wifi,Live Entertainment,Indoor Seating,Kid Friendly', 'https://b.zmtcdn.com/data/pictures/8/18712598/2b03527949b60b311c0c082e98fc664d.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9831178085, +91 9903074575, +91 8609812641', 6, 6, 9, 14, 17, 29),
(18759923, 67, 'Duty Free | Vayu Bar', 1700, 'Continental, Mexican, North Indian, Italian, Asian', '12 Noon to 1 AM', 'Microbrewery', ',Lunch,Cash,Takeaway Available,Debit Card,Dinner,Credit Card,DJ,Nightlife,Outdoor Seating,Indoor Seating,Free Wifi,Live Sports Screening,Fullbar,Live Music,Rooftop,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/reviews_photos/f4d/625440c3b9fae92b77d996ea9b35ef4d_1559509339.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 71564167', 6, 8, 12, 18, 24, 29),
(18761167, 24, 'Echoes Kolkata', 1300, 'Italian, Chinese, Finger Food', '12:30pm – 12midnight (Mon, Tue, Wed, Thu, Sun), 12midnight – 1:59am, 12:30pm – 12midnight (Fri-Sat)', 'Bar', ',Lunch,Cash,Credit Card,Debit Card,Dinner,Takeaway Available,DJ,Live Sports Screening,Valet Parking Available,Outdoor Seating,Air Conditioned,Wifi,Free Parking,Nightlife,Fullbar,Indoor Seating,Smoking Area,All Day Breakfast,Desserts and Bakes', 'https://b.zmtcdn.com/data/pictures/chains/7/18761167/05382e682cd013997eee4876a56d1304.png?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '00 03366044810', 5, 8, 8, 11, 24, 27),
(18800881, 69, 'Decode Air Bar', 1500, 'Modern Indian, Bar Food, Sushi, Italian, Asian', '12 Noon to 12 Midnight', 'Microbrewery', ',Dinner,Takeaway Available,Debit Card,Lunch,Cash,Credit Card,DJ,Live Sports Screening,Fullbar,Live Music,Rooftop,Air Conditioned,Smoking Area,Live Entertainment,Nightlife,Outdoor Seating,Indoor Seating,Table booking recommended,Wifi', 'https://b.zmtcdn.com/data/pictures/1/18800881/2280cfe43c5879d5e8d2f14c80c8412f.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9773797535, +91 9773797536, +91 9810257382', 4, 8, 12, 10, 20, 20),
(18812843, 38, 'Uno Chicago Bar & Grill', 1300, 'American, Italian, Burger', '12noon – 11pm (Mon-Sun)', 'Casual Dining', ',Dinner,Cash,Delivery,Credit Card,Lunch,Takeaway Available,Debit Card,Live Entertainment,Fullbar,Live Music,Rooftop,Digital Payments Accepted,Kid Friendly,Live Sports Screening,Outdoor Seating,Indoor Seating,Table booking recommended,Air Conditioned,Resto Bar,Smoking Area', 'https://b.zmtcdn.com/data/pictures/chains/3/18812843/cbea901ac17f770f6f05374aace7bf34.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9971448700, +91 8898191933', 5, 6, 11, 17, 19, 25),
(18856789, 82, 'AIR- An Ivory Region', 1400, 'North Indian, Chinese, Continental, Asian', '12 Noon to 12 Midnight', 'Lounge', ',Dinner,Debit Card,Lunch,Cash,Credit Card,DJ,Live Entertainment,Nightlife,Outdoor Seating,Beer,Indoor Seating,Serves Cocktails,Air Conditioned,Smoking Area,Free Parking,Live Sports Screening,Fullbar,Wine,Live Music,Rooftop,Table booking recommended,Sneakpeek', 'https://b.zmtcdn.com/data/pictures/9/18856789/df647751670debb136669d2568b94e49.jpeg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66103930', 6, 8, 8, 10, 22, 29),
(18863320, 71, 'Unplugged Courtyard', 1500, 'North Indian, Continental, Momos', '12 Noon to 1 AM', 'Microbrewery', ',Dinner,Cash,Credit Card,Lunch,Takeaway Available,Debit Card,Live Sports Screening,Valet Parking Available,Outdoor Seating,Indoor Seating,Air Conditioned,Wifi,Sneakpeek,Nightlife,Fullbar,Live Music,Table booking recommended,Axis Bank - Dining Delights,Smoking Area', 'https://b.zmtcdn.com/data/pictures/0/18863320/8fce19e783edb05e0528ef7ef00e07e4.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66992565', 7, 5, 11, 13, 15, 26),
(18895645, 81, 'Plum By Bent Chair', 3000, 'Asian', '12noon – 1am (Mon-Sun)', 'Casual Dining', ',Debit Card,Cash,Credit Card,Dinner,Table booking recommended,Air Conditioned,Smoking Area,Nightlife,Fullbar,Serves Cocktails,Digital Payments Accepted,Sneakpeek,Valet Parking Available,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/5/18895645/7d87b53153c2871fc302ef65c146c10e.png?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 61495178', 6, 8, 12, 10, 19, 26),
(18897756, 39, 'Momo I Am', 800, 'Tibetan, Chinese, Asian, Momos', '12 Noon to 11 PM', 'Casual Dining', ',Lunch,Cash,Delivery,Credit Card,Dinner,Takeaway Available,Debit Card,Live Sports Screening,Live Music,Digital Payments Accepted,Fullbar,Indoor Seating,Air Conditioned,Smoking Area', 'https://b.zmtcdn.com/data/pictures/6/18897756/6ffb9032eebc775d821c429952b06712.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 8017421170, +91 8017421310', 7, 8, 13, 19, 21, 21),
(19042004, 84, 'Banter', 1500, 'North Indian, Continental, Italian', '12 Noon to 12 Midnight', 'Casual Dining', ',Cash,Takeaway Available,Debit Card,Lunch,Dinner,Credit Card,Free Wifi,Outdoor Seating,Air Conditioned,Smoking Area,Indoor Seating', 'https://b.zmtcdn.com/data/pictures/4/19042004/7b367f5cbabf3d8270b5af432746b64e.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '011 66103710', 7, 9, 11, 11, 24, 26),
(19092692, 17, 'Beans n Brewers', 350, 'Cafe, Coffee, Desserts, Fast Food, Italian, Salad, Sandwich', '11 AM to 10 PM', 'Café', ',Delivery,Debit Card,Takeaway Available,Cash,Halal,Free Parking,Indoor Seating,Air Conditioned,Brunch,Desserts and Bakes,Outdoor Seating,Digital Payments Accepted', 'https://b.zmtcdn.com/data/reviews_photos/055/df8d0396c1a2ab81bf4efb4e651c3055_1564245354.jpg?crop=516%3A516%3B55%2C0&fit=around%7C200%3A200', '+91 9501224304, +91 6280924728', 4, 5, 10, 12, 23, 23),
(19111824, 27, 'ITC Royal Bengal- Grand Market Pavilion', 3500, 'North Indian, Chinese, Continental, Bengali', '11 AM to 11 PM', 'Fine Dining', ',Lunch,Delivery,Credit Card,Dinner,Cash,Takeaway Available,Debit Card,Valet Parking Available,Digital Payments Accepted,Air Conditioned,Indoor Seating,Variable Menu', 'https://b.zmtcdn.com/data/reviews_photos/e76/e0140d9479ab78d17ca7af331c8cde76_1561492356.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '033 23454545', 4, 8, 10, 13, 18, 29),
(19118980, 4, 'Bonfair', 150, 'Arabian, Fast Food, Kerala', '11 AM to 11 PM', 'Casual Dining', ',Takeaway Available,Dinner,Delivery,Cash,Lunch,Indoor Seating', 'https://b.zmtcdn.com/data/reviews_photos/b56/db17a6c6c40bcf827dc81beafd707b56_1564463506.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', 'Not available for this place', 5, 5, 11, 10, 17, 26),
(19120844, 14, 'Valiveti Grand', 300, 'Biryani, South Indian, Andhra, North Indian', '11 AM to 11 PM', 'Food Court', ',Takeaway Available,Debit Card,Dinner,Cash,Credit Card,Lunch,Air Conditioned,Indoor Seating,Digital Payments Accepted', 'https://b.zmtcdn.com/data/reviews_photos/f0a/7a4e9f52b262cf790e0121f2b3657f0a_1564404598.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9808829999', 7, 8, 8, 10, 18, 29),
(19128322, 5, 'Prabha Grand Inn', 300, 'South Indian, Andhra, Biryani, Chinese, North Indian, Desserts, Beverages', '6:30 AM to 10:30 PM', 'Casual Dining', ',Dinner,Lunch,Cash,Indoor Seating', 'https://b.zmtcdn.com/data/reviews_photos/b25/49d405ff2427f76fcef8174baa482b25_1564464696.jpg?crop=805%3A805%3B0%2C0&fit=around%7C200%3A200', 'Not available for this place', 6, 6, 8, 11, 18, 22),
(19130806, 11, 'La Cafeteria', 250, 'Italian, Pizza', '11 AM to 10:30 PM', 'Beverage Shop', ',Delivery,Cash,Credit Card,Takeaway Available,Debit Card,Indoor Seating,Air Conditioned,Outdoor Seating,Digital Payments Accepted,Desserts and Bakes', 'https://b.zmtcdn.com/data/reviews_photos/854/fd1796849daf17ce2afc1f2ac5f68854_1564471204.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', 'Not available for this place', 6, 7, 12, 12, 19, 25),
(19132624, 7, 'Wafflez', 200, 'Burger, Cafe, Chinese, Ice Cream, Italian, Mexican, Pizza', '', 'Café', ',Takeaway Available,Debit Card,Delivery,Cash,Credit Card,Indoor Seating,Digital Payments Accepted,Air Conditioned', 'https://b.zmtcdn.com/data/reviews_photos/c28/1946d8d65a9211bacd4f7c07cd066c28_1564131044.jpg?crop=836%3A836%3B34%2C0&fit=around%7C200%3A200', '+91 9938222210', 5, 8, 8, 19, 18, 24),
(19136354, 3, 'HOTEL GRAND SR', 300, 'North Indian', '11 AM to 9:30 PM', '', '', 'https://b.zmtcdn.com/data/reviews_photos/75a/242b01bd983b1f79f4da437fc918d75a_1564241227.jpg?crop=671%3A671%3B350%2C0&fit=around%7C200%3A200', 'Not available for this place', 5, 6, 8, 16, 15, 22),
(19139870, 2, 'prerna shopi ', 150, 'Bakery', '11 AM to 10 PM (Mon, Wed-Sun), 1 PM to 10 PM (Tue)', 'Bakery', '', 'https://b.zmtcdn.com/data/reviews_photos/078/5f26b19ca61f6d8923c7d35668476078_1564598304.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A', '+91 9096746005', 4, 6, 10, 15, 21, 25),
(19139932, 10, 'Coffee N More', 200, '', '11 AM to 9 PM', 'Dessert Parlour', ',Pure Veg', 'https://b.zmtcdn.com/data/reviews_photos/068/c6e8d1a49d278c6f16c07776d305b068_1563610586.jpg?crop=532%3A532%3B330%2C0&fit=around%7C200%3A200', 'Not available for this place', 6, 7, 14, 13, 23, 26),
(19141523, 15, 'Food Point', 300, 'Chinese, Fast Food, Gujarati, North Indian, Pizza, Sandwich', '11 AM to 3 PM, 7 PM to 11 PM', 'Casual Dining', ',Debit Card,Cash,Pure Veg', '', 'Not available for this place', 5, 9, 10, 13, 15, 29),
(19141911, 8, 'Hotel basant leela', 400, 'South Indian, North Indian, Mughlai, Chinese', '11 AM to 10:30 PM', 'Fine Dining', ',Indoor Seating,Air Conditioned', 'https://b.zmtcdn.com/data/reviews_photos/0dc/6810f31da554daea22d395ff9ee910dc_1563689172.jpg?crop=429%3A429%3B0%2C272&fit=around%7C200%3A200', '+91 8948944444', 6, 9, 8, 10, 23, 21),
(19143450, 18, 'Oya Cafe', 200, 'Sandwich, Juices, Ice Cream, Burger', '11 AM to 10 PM', 'Café', ',Pure Veg', 'https://b.zmtcdn.com/data/reviews_photos/ebe/e1a0ee4a6b01f58965d453b7de9b3ebe_1563260262.jpg?crop=960%3A960%3B0%2C237&fit=around%7C200%3A200', 'Not available for this place', 5, 6, 10, 11, 18, 28),
(19144355, 20, 'Cafe 49', 200, 'Sandwich, Italian, Chinese', '10:30 AM to 9:30 PM', 'Fine Dining', ',Cash,Credit Card,Standing Tables,Debit Card,Indoor Seating,Digital Payments Accepted', 'https://b.zmtcdn.com/data/reviews_photos/f97/2f98bb87fea2640cfd9741b83bfe4f97_1563712086.jpg?crop=1125%3A1125%3B0%2C329&fit=around%7C200%3A200', '+91 9914436666', 4, 7, 8, 10, 23, 28),
(19145729, 16, 'Amsavalli Bhavan', 200, 'Andhra, Biryani, South Indian, Tamil', '10:30am – 10:30pm (Mon-Sun)', 'Casual Dining', ',Cash,Dinner,Lunch,Indoor Seating,Air Conditioned', 'https://b.zmtcdn.com/data/reviews_photos/290/ff7fa14954aa683498ed15823dea6290_1564225755.jpg?crop=934%3A934%3B0%2C101&fit=around%7C200%3A200', '+91 9787786000', 4, 9, 13, 12, 16, 27),
(19146513, 13, 'NICE CAFE THE FOOD ZONE', 200, 'South Indian, Chinese, Burger, Cafe, Coffee, Fast Food, Pizza, Sandwich', '9:30 AM to 10:30 PM', 'Café', '', 'https://b.zmtcdn.com/data/reviews_photos/517/9155428f912f60e6d93dd45fe8d07517_1564220593.jpg?crop=864%3A864%3B235%2C0&fit=around%7C200%3A200', 'Not available for this place', 6, 8, 9, 14, 20, 25),
(19146849, 19, 'BASKIN ROBBINS', 200, 'Desserts, Ice Cream', '9am – 10pm (Mon-Sun)', 'Dessert Parlour', ',Cash,Credit Card,Takeaway Available,Debit Card,Indoor Seating,Pure Veg,Digital Payments Accepted,Desserts and Bakes', 'https://b.zmtcdn.com/data/reviews_photos/b5c/b9395ddae70dd42b7fa97b24261cab5c_1564061690.jpg?crop=958%3A958%3B214%2C0&fit=around%7C200%3A200', '+91 8142240411', 7, 5, 10, 19, 16, 25),
(19147011, 12, 'Hotel Thatti Vilas ', 250, 'Biryani, Chettinad, Chinese, South Indian, Tamil', '7 AM to 12 Midnight', 'Casual Dining', ',Cash,Dinner,Delivery,Lunch,Indoor Seating', 'https://b.zmtcdn.com/data/reviews_photos/9fd/485e458f8c1df23e23774071f859d9fd_1564133652.jpg?crop=528%3A528%3B245%2C0&fit=around%7C200%3A200', '+91 8870329317', 7, 9, 12, 12, 20, 24),
(19148264, 6, 'Savariya Cake House', 250, '', '', '', '', 'https://b.zmtcdn.com/data/reviews_photos/09d/e7d21e438d1a739ac3885108485f509d_1564571873.jpg?crop=960%3A960%3B31%2C0&fit=around%7C200%3A200', 'Not available for this place', 4, 9, 9, 10, 23, 28),
(19149885, 1, 'Gopal Juice and Ice Cream', 150, 'Beverages, Juices', '9 AM to 10 PM', 'Beverage Shop', ',Takeaway Available,Cash,Delivery,Indoor Seating,Air Conditioned,Digital Payments Accepted', 'https://b.zmtcdn.com/data/reviews_photos/2a4/903ae6cbab9baced72063214ca75b2a4_1563651875.jpg?crop=1080%3A1080%3B0%2C209&fit=around%7C200%3A200', 'Not available for this place', 6, 8, 10, 14, 19, 22),
(19151003, 9, 'Mini Punjab Restaurant', 100, 'North Indian', '11 AM to 11 PM', 'Casual Dining', ',Cash', 'https://b.zmtcdn.com/data/reviews_photos/5cc/17e40bcae32bbb42b5d94300917cf5cc_1563634703.jpg?crop=774%3A774%3B0%2C0&fit=around%7C200%3A200', '+91 8209242188, +91 9462060657', 4, 5, 11, 16, 20, 22);

-- --------------------------------------------------------

--
-- Table structure for table `Slot`
--

CREATE TABLE `Slot` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` date NOT NULL,
  `size_ten` int(11) DEFAULT '0',
  `size_eight` int(11) DEFAULT '0',
  `size_six` int(11) DEFAULT '0',
  `size_four` int(11) DEFAULT '0',
  `size_two` int(11) DEFAULT '0',
  `size_one` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `phone_no` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `slot_id` (`slot_id`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `Slot`
--
ALTER TABLE `Slot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19151004;
--
-- AUTO_INCREMENT for table `Slot`
--
ALTER TABLE `Slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`slot_id`) REFERENCES `Slot` (`id`);

--
-- Constraints for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD CONSTRAINT `Restaurant_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`id`);

--
-- Constraints for table `Slot`
--
ALTER TABLE `Slot`
  ADD CONSTRAINT `Slot_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
