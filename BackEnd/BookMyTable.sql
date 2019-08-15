-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2019 at 01:31 AM
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
-- Table structure for table `BeenThere`
--

CREATE TABLE `BeenThere` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `reference_no` varchar(1000) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `start_time` varchar(11) NOT NULL,
  `end_time` varchar(11) NOT NULL,
  `date` varchar(11) DEFAULT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Bookmark`
--

CREATE TABLE `Bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Cities`
--

CREATE TABLE `Cities` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `state` varchar(60) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cities`
--

INSERT INTO `Cities` (`id`, `name`, `state`) VALUES
(1, 'Mumbai', 'Maharashtra'),
(2, 'Delhi', 'Delhi'),
(3, 'Bengaluru', 'Karnataka'),
(4, 'Ahmedabad', 'Gujarat'),
(5, 'Hyderabad', 'Telangana'),
(6, 'Chennai', 'Tamil Nadu'),
(7, 'Kolkata', 'West Bengal'),
(8, 'Pune', 'Maharashtra'),
(9, 'Jaipur', 'Rajasthan'),
(10, 'Surat', 'Gujarat'),
(11, 'Lucknow', 'Uttar Pradesh'),
(12, 'Kanpur', 'Uttar Pradesh'),
(13, 'Nagpur', 'Maharashtra'),
(14, 'Patna', 'Bihar'),
(15, 'Indore', 'Madhya Pradesh'),
(16, 'Thane', 'Maharashtra'),
(17, 'Bhopal', 'Madhya Pradesh'),
(18, 'Visakhapatnam', 'Andhra Pradesh'),
(19, 'Vadodara', 'Gujarat'),
(20, 'Firozabad', 'Uttar Pradesh'),
(21, 'Ludhiana', 'Punjab'),
(22, 'Rajkot', 'Gujarat'),
(23, 'Agra', 'Uttar Pradesh'),
(24, 'Siliguri', 'West Bengal'),
(25, 'Nashik', 'Maharashtra'),
(26, 'Faridabad', 'Haryana'),
(27, 'Patiala', 'Punjab'),
(28, 'Meerut', 'Uttar Pradesh'),
(29, 'Kalyan-Dombivali', 'Maharashtra'),
(30, 'Vasai-Virar', 'Maharashtra'),
(31, 'Varanasi', 'Uttar Pradesh'),
(32, 'Srinagar', 'Jammu and Kashmir'),
(33, 'Dhanbad', 'Jharkhand'),
(34, 'Jodhpur', 'Rajasthan'),
(35, 'Amritsar', 'Punjab'),
(36, 'Raipur', 'Chhattisgarh'),
(37, 'Allahabad', 'Uttar Pradesh'),
(38, 'Coimbatore', 'Tamil Nadu'),
(39, 'Jabalpur', 'Madhya Pradesh'),
(40, 'Gwalior', 'Madhya Pradesh'),
(41, 'Vijayawada', 'Andhra Pradesh'),
(42, 'Madurai', 'Tamil Nadu'),
(43, 'Guwahati', 'Assam'),
(44, 'Chandigarh', 'Chandigarh'),
(45, 'Hubli-Dharwad', 'Karnataka'),
(46, 'Amroha', 'Uttar Pradesh'),
(47, 'Moradabad', 'Uttar Pradesh'),
(48, 'Gurgaon', 'Haryana'),
(49, 'Aligarh', 'Uttar Pradesh'),
(50, 'Solapur', 'Maharashtra'),
(51, 'Ranchi', 'Jharkhand'),
(52, 'Jalandhar', 'Punjab'),
(53, 'Tiruchirappalli', 'Tamil Nadu'),
(54, 'Bhubaneswar', 'Odisha'),
(55, 'Salem', 'Tamil Nadu'),
(56, 'Warangal', 'Telangana'),
(57, 'Mira-Bhayandar', 'Maharashtra'),
(58, 'Thiruvananthapuram', 'Kerala'),
(59, 'Bhiwandi', 'Maharashtra'),
(60, 'Saharanpur', 'Uttar Pradesh'),
(61, 'Guntur', 'Andhra Pradesh'),
(62, 'Amravati', 'Maharashtra'),
(63, 'Bikaner', 'Rajasthan'),
(64, 'Noida', 'Uttar Pradesh'),
(65, 'Jamshedpur', 'Jharkhand'),
(66, 'Bhilai Nagar', 'Chhattisgarh'),
(67, 'Cuttack', 'Odisha'),
(68, 'Kochi', 'Kerala'),
(69, 'Udaipur', 'Rajasthan'),
(70, 'Bhavnagar', 'Gujarat'),
(71, 'Dehradun', 'Uttarakhand'),
(72, 'Asansol', 'West Bengal'),
(73, 'Nanded-Waghala', 'Maharashtra'),
(74, 'Ajmer', 'Rajasthan'),
(75, 'Jamnagar', 'Gujarat'),
(76, 'Ujjain', 'Madhya Pradesh'),
(77, 'Sangli', 'Maharashtra'),
(78, 'Loni', 'Uttar Pradesh'),
(79, 'Jhansi', 'Uttar Pradesh'),
(80, 'Pondicherry', 'Puducherry'),
(81, 'Nellore', 'Andhra Pradesh'),
(82, 'Jammu', 'Jammu and Kashmir'),
(83, 'Belagavi', 'Karnataka'),
(84, 'Raurkela', 'Odisha'),
(85, 'Mangaluru', 'Karnataka'),
(86, 'Tirunelveli', 'Tamil Nadu'),
(87, 'Malegaon', 'Maharashtra'),
(88, 'Gaya', 'Bihar'),
(89, 'Tiruppur', 'Tamil Nadu'),
(90, 'Davanagere', 'Karnataka'),
(91, 'Kozhikode', 'Kerala'),
(92, 'Akola', 'Maharashtra'),
(93, 'Kurnool', 'Andhra Pradesh'),
(94, 'Bokaro Steel City', 'Jharkhand'),
(95, 'Rajahmundry', 'Andhra Pradesh'),
(96, 'Ballari', 'Karnataka'),
(97, 'Agartala', 'Tripura'),
(98, 'Bhagalpur', 'Bihar'),
(99, 'Latur', 'Maharashtra'),
(100, 'Dhule', 'Maharashtra'),
(101, 'Korba', 'Chhattisgarh'),
(102, 'Bhilwara', 'Rajasthan'),
(103, 'Brahmapur', 'Odisha'),
(104, 'Mysore', 'Karnataka'),
(105, 'Muzaffarpur', 'Bihar'),
(106, 'Ahmednagar', 'Maharashtra'),
(107, 'Kollam', 'Kerala'),
(108, 'Raghunathganj', 'West Bengal'),
(109, 'Bilaspur', 'Chhattisgarh'),
(110, 'Shahjahanpur', 'Uttar Pradesh'),
(111, 'Thrissur', 'Kerala'),
(112, 'Alwar', 'Rajasthan'),
(113, 'Kakinada', 'Andhra Pradesh'),
(114, 'Nizamabad', 'Telangana'),
(115, 'Sagar', 'Madhya Pradesh'),
(116, 'Tumkur', 'Karnataka'),
(117, 'Hisar', 'Haryana'),
(118, 'Rohtak', 'Haryana'),
(119, 'Panipat', 'Haryana'),
(120, 'Darbhanga', 'Bihar'),
(121, 'Kharagpur', 'West Bengal'),
(122, 'Aizawl', 'Mizoram'),
(123, 'Ichalkaranji', 'Maharashtra'),
(124, 'Tirupati', 'Andhra Pradesh'),
(125, 'Karnal', 'Haryana'),
(126, 'Bathinda', 'Punjab'),
(127, 'Rampur', 'Uttar Pradesh'),
(128, 'Shivamogga', 'Karnataka'),
(129, 'Ratlam', 'Madhya Pradesh'),
(130, 'Modinagar', 'Uttar Pradesh'),
(131, 'Durg', 'Chhattisgarh'),
(132, 'Shillong', 'Meghalaya'),
(133, 'Imphal', 'Manipur'),
(134, 'Hapur', 'Uttar Pradesh'),
(135, 'Ranipet', 'Tamil Nadu'),
(136, 'Anantapur', 'Andhra Pradesh'),
(137, 'Arrah', 'Bihar'),
(138, 'Karimnagar', 'Telangana'),
(139, 'Parbhani', 'Maharashtra'),
(140, 'Etawah', 'Uttar Pradesh'),
(141, 'Bharatpur', 'Rajasthan'),
(142, 'Begusarai', 'Bihar'),
(143, 'New Delhi', 'Delhi'),
(144, 'Chhapra', 'Bihar'),
(145, 'Kadapa', 'Andhra Pradesh'),
(146, 'Ramagundam', 'Telangana'),
(147, 'Pali', 'Rajasthan'),
(148, 'Satna', 'Madhya Pradesh'),
(149, 'Vizianagaram', 'Andhra Pradesh'),
(150, 'Katihar', 'Bihar'),
(151, 'Hardwar', 'Uttarakhand'),
(152, 'Sonipat', 'Haryana'),
(153, 'Nagercoil', 'Tamil Nadu'),
(154, 'Thanjavur', 'Tamil Nadu'),
(155, 'Murwara (Katni)', 'Madhya Pradesh'),
(156, 'Naihati', 'West Bengal'),
(157, 'Sambhal', 'Uttar Pradesh'),
(158, 'Nadiad', 'Gujarat'),
(159, 'Yamunanagar', 'Haryana'),
(160, 'English Bazar', 'West Bengal'),
(161, 'Eluru', 'Andhra Pradesh'),
(162, 'Munger', 'Bihar'),
(163, 'Panchkula', 'Haryana'),
(164, 'Raayachuru', 'Karnataka'),
(165, 'Panvel', 'Maharashtra'),
(166, 'Deoghar', 'Jharkhand'),
(167, 'Ongole', 'Andhra Pradesh'),
(168, 'Nandyal', 'Andhra Pradesh'),
(169, 'Morena', 'Madhya Pradesh'),
(170, 'Bhiwani', 'Haryana'),
(171, 'Porbandar', 'Gujarat'),
(172, 'Palakkad', 'Kerala'),
(173, 'Anand', 'Gujarat'),
(174, 'Purnia', 'Bihar'),
(175, 'Baharampur', 'West Bengal'),
(176, 'Barmer', 'Rajasthan'),
(177, 'Morvi', 'Gujarat'),
(178, 'Orai', 'Uttar Pradesh'),
(179, 'Bahraich', 'Uttar Pradesh'),
(180, 'Sikar', 'Rajasthan'),
(181, 'Vellore', 'Tamil Nadu'),
(182, 'Singrauli', 'Madhya Pradesh'),
(183, 'Khammam', 'Telangana'),
(184, 'Mahesana', 'Gujarat'),
(185, 'Silchar', 'Assam'),
(186, 'Sambalpur', 'Odisha'),
(187, 'Rewa', 'Madhya Pradesh'),
(188, 'Unnao', 'Uttar Pradesh'),
(189, 'Hugli-Chinsurah', 'West Bengal'),
(190, 'Raiganj', 'West Bengal'),
(191, 'Phusro', 'Jharkhand'),
(192, 'Adityapur', 'Jharkhand'),
(193, 'Alappuzha', 'Kerala'),
(194, 'Bahadurgarh', 'Haryana'),
(195, 'Machilipatnam', 'Andhra Pradesh'),
(196, 'Rae Bareli', 'Uttar Pradesh'),
(197, 'Jalpaiguri', 'West Bengal'),
(198, 'Bharuch', 'Gujarat'),
(199, 'Pathankot', 'Punjab'),
(200, 'Hoshiarpur', 'Punjab'),
(201, 'Baramula', 'Jammu and Kashmir'),
(202, 'Adoni', 'Andhra Pradesh'),
(203, 'Jind', 'Haryana'),
(204, 'Tonk', 'Rajasthan'),
(205, 'Tenali', 'Andhra Pradesh'),
(206, 'Kancheepuram', 'Tamil Nadu'),
(207, 'Vapi', 'Gujarat'),
(208, 'Sirsa', 'Haryana'),
(209, 'Navsari', 'Gujarat'),
(210, 'Mahbubnagar', 'Telangana'),
(211, 'Puri', 'Odisha'),
(212, 'Robertson Pet', 'Karnataka'),
(213, 'Erode', 'Tamil Nadu'),
(214, 'Batala', 'Punjab'),
(215, 'Haldwani-cum-Kathgodam', 'Uttarakhand'),
(216, 'Vidisha', 'Madhya Pradesh'),
(217, 'Saharsa', 'Bihar'),
(218, 'Thanesar', 'Haryana'),
(219, 'Chittoor', 'Andhra Pradesh'),
(220, 'Veraval', 'Gujarat'),
(221, 'Lakhimpur', 'Uttar Pradesh'),
(222, 'Sitapur', 'Uttar Pradesh'),
(223, 'Hindupur', 'Andhra Pradesh'),
(224, 'Santipur', 'West Bengal'),
(225, 'Balurghat', 'West Bengal'),
(226, 'Ganjbasoda', 'Madhya Pradesh'),
(227, 'Moga', 'Punjab'),
(228, 'Proddatur', 'Andhra Pradesh'),
(229, 'Srinagar', 'Uttarakhand'),
(230, 'Medinipur', 'West Bengal'),
(231, 'Habra', 'West Bengal'),
(232, 'Sasaram', 'Bihar'),
(233, 'Hajipur', 'Bihar'),
(234, 'Bhuj', 'Gujarat'),
(235, 'Shivpuri', 'Madhya Pradesh'),
(236, 'Ranaghat', 'West Bengal'),
(237, 'Shimla', 'Himachal Pradesh'),
(238, 'Tiruvannamalai', 'Tamil Nadu'),
(239, 'Kaithal', 'Haryana'),
(240, 'Rajnandgaon', 'Chhattisgarh'),
(241, 'Godhra', 'Gujarat'),
(242, 'Hazaribag', 'Jharkhand'),
(243, 'Bhimavaram', 'Andhra Pradesh'),
(244, 'Mandsaur', 'Madhya Pradesh'),
(245, 'Dibrugarh', 'Assam'),
(246, 'Kolar', 'Karnataka'),
(247, 'Bankura', 'West Bengal'),
(248, 'Mandya', 'Karnataka'),
(249, 'Dehri-on-Sone', 'Bihar'),
(250, 'Madanapalle', 'Andhra Pradesh'),
(251, 'Malerkotla', 'Punjab'),
(252, 'Lalitpur', 'Uttar Pradesh'),
(253, 'Bettiah', 'Bihar'),
(254, 'Pollachi', 'Tamil Nadu'),
(255, 'Khanna', 'Punjab'),
(256, 'Neemuch', 'Madhya Pradesh'),
(257, 'Palwal', 'Haryana'),
(258, 'Palanpur', 'Gujarat'),
(259, 'Guntakal', 'Andhra Pradesh'),
(260, 'Nabadwip', 'West Bengal'),
(261, 'Udupi', 'Karnataka'),
(262, 'Jagdalpur', 'Chhattisgarh'),
(263, 'Motihari', 'Bihar'),
(264, 'Pilibhit', 'Uttar Pradesh'),
(265, 'Dimapur', 'Nagaland'),
(266, 'Mohali', 'Punjab'),
(267, 'Sadulpur', 'Rajasthan'),
(268, 'Rajapalayam', 'Tamil Nadu'),
(269, 'Dharmavaram', 'Andhra Pradesh'),
(270, 'Kashipur', 'Uttarakhand'),
(271, 'Sivakasi', 'Tamil Nadu'),
(272, 'Darjiling', 'West Bengal'),
(273, 'Chikkamagaluru', 'Karnataka'),
(274, 'Gudivada', 'Andhra Pradesh'),
(275, 'Baleshwar Town', 'Odisha'),
(276, 'Mancherial', 'Telangana'),
(277, 'Srikakulam', 'Andhra Pradesh'),
(278, 'Adilabad', 'Telangana'),
(279, 'Yavatmal', 'Maharashtra'),
(280, 'Barnala', 'Punjab'),
(281, 'Nagaon', 'Assam'),
(282, 'Narasaraopet', 'Andhra Pradesh'),
(283, 'Raigarh', 'Chhattisgarh'),
(284, 'Roorkee', 'Uttarakhand'),
(285, 'Valsad', 'Gujarat'),
(286, 'Ambikapur', 'Chhattisgarh'),
(287, 'Giridih', 'Jharkhand'),
(288, 'Chandausi', 'Uttar Pradesh'),
(289, 'Purulia', 'West Bengal'),
(290, 'Patan', 'Gujarat'),
(291, 'Bagaha', 'Bihar'),
(292, 'Hardoi ', 'Uttar Pradesh'),
(293, 'Achalpur', 'Maharashtra'),
(294, 'Osmanabad', 'Maharashtra'),
(295, 'Deesa', 'Gujarat'),
(296, 'Nandurbar', 'Maharashtra'),
(297, 'Azamgarh', 'Uttar Pradesh'),
(298, 'Ramgarh', 'Jharkhand'),
(299, 'Firozpur', 'Punjab'),
(300, 'Baripada Town', 'Odisha'),
(301, 'Karwar', 'Karnataka'),
(302, 'Siwan', 'Bihar'),
(303, 'Rajampet', 'Andhra Pradesh'),
(304, 'Pudukkottai', 'Tamil Nadu'),
(305, 'Anantnag', 'Jammu and Kashmir'),
(306, 'Tadpatri', 'Andhra Pradesh'),
(307, 'Satara', 'Maharashtra'),
(308, 'Bhadrak', 'Odisha'),
(309, 'Kishanganj', 'Bihar'),
(310, 'Suryapet', 'Telangana'),
(311, 'Wardha', 'Maharashtra'),
(312, 'Ranebennuru', 'Karnataka'),
(313, 'Amreli', 'Gujarat'),
(314, 'Neyveli (TS)', 'Tamil Nadu'),
(315, 'Jamalpur', 'Bihar'),
(316, 'Marmagao', 'Goa'),
(317, 'Udgir', 'Maharashtra'),
(318, 'Tadepalligudem', 'Andhra Pradesh'),
(319, 'Nagapattinam', 'Tamil Nadu'),
(320, 'Buxar', 'Bihar'),
(321, 'Aurangabad', 'Maharashtra'),
(322, 'Jehanabad', 'Bihar'),
(323, 'Phagwara', 'Punjab'),
(324, 'Khair', 'Uttar Pradesh'),
(325, 'Sawai Madhopur', 'Rajasthan'),
(326, 'Kapurthala', 'Punjab'),
(327, 'Chilakaluripet', 'Andhra Pradesh'),
(328, 'Aurangabad', 'Bihar'),
(329, 'Malappuram', 'Kerala'),
(330, 'Rewari', 'Haryana'),
(331, 'Nagaur', 'Rajasthan'),
(332, 'Sultanpur', 'Uttar Pradesh'),
(333, 'Nagda', 'Madhya Pradesh'),
(334, 'Port Blair', 'Andaman and Nicobar Islands'),
(335, 'Lakhisarai', 'Bihar'),
(336, 'Panaji', 'Goa'),
(337, 'Tinsukia', 'Assam'),
(338, 'Itarsi', 'Madhya Pradesh'),
(339, 'Kohima', 'Nagaland'),
(340, 'Balangir', 'Odisha'),
(341, 'Nawada', 'Bihar'),
(342, 'Jharsuguda', 'Odisha'),
(343, 'Jagtial', 'Telangana'),
(344, 'Viluppuram', 'Tamil Nadu'),
(345, 'Amalner', 'Maharashtra'),
(346, 'Zirakpur', 'Punjab'),
(347, 'Tanda', 'Uttar Pradesh'),
(348, 'Tiruchengode', 'Tamil Nadu'),
(349, 'Nagina', 'Uttar Pradesh'),
(350, 'Yemmiganur', 'Andhra Pradesh'),
(351, 'Vaniyambadi', 'Tamil Nadu'),
(352, 'Sarni', 'Madhya Pradesh'),
(353, 'Theni Allinagaram', 'Tamil Nadu'),
(354, 'Margao', 'Goa'),
(355, 'Akot', 'Maharashtra'),
(356, 'Sehore', 'Madhya Pradesh'),
(357, 'Mhow Cantonment', 'Madhya Pradesh'),
(358, 'Kot Kapura', 'Punjab'),
(359, 'Makrana', 'Rajasthan'),
(360, 'Pandharpur', 'Maharashtra'),
(361, 'Miryalaguda', 'Telangana'),
(362, 'Shamli', 'Uttar Pradesh'),
(363, 'Seoni', 'Madhya Pradesh'),
(364, 'Ranibennur', 'Karnataka'),
(365, 'Kadiri', 'Andhra Pradesh'),
(366, 'Shrirampur', 'Maharashtra'),
(367, 'Rudrapur', 'Uttarakhand'),
(368, 'Parli', 'Maharashtra'),
(369, 'Najibabad', 'Uttar Pradesh'),
(370, 'Nirmal', 'Telangana'),
(371, 'Udhagamandalam', 'Tamil Nadu'),
(372, 'Shikohabad', 'Uttar Pradesh'),
(373, 'Jhumri Tilaiya', 'Jharkhand'),
(374, 'Aruppukkottai', 'Tamil Nadu'),
(375, 'Ponnani', 'Kerala'),
(376, 'Jamui', 'Bihar'),
(377, 'Sitamarhi', 'Bihar'),
(378, 'Chirala', 'Andhra Pradesh'),
(379, 'Anjar', 'Gujarat'),
(380, 'Karaikal', 'Puducherry'),
(381, 'Hansi', 'Haryana'),
(382, 'Anakapalle', 'Andhra Pradesh'),
(383, 'Mahasamund', 'Chhattisgarh'),
(384, 'Faridkot', 'Punjab'),
(385, 'Saunda', 'Jharkhand'),
(386, 'Dhoraji', 'Gujarat'),
(387, 'Paramakudi', 'Tamil Nadu'),
(388, 'Balaghat', 'Madhya Pradesh'),
(389, 'Sujangarh', 'Rajasthan'),
(390, 'Khambhat', 'Gujarat'),
(391, 'Muktsar', 'Punjab'),
(392, 'Rajpura', 'Punjab'),
(393, 'Kavali', 'Andhra Pradesh'),
(394, 'Dhamtari', 'Chhattisgarh'),
(395, 'Ashok Nagar', 'Madhya Pradesh'),
(396, 'Sardarshahar', 'Rajasthan'),
(397, 'Mahuva', 'Gujarat'),
(398, 'Bargarh', 'Odisha'),
(399, 'Kamareddy', 'Telangana'),
(400, 'Sahibganj', 'Jharkhand'),
(401, 'Kothagudem', 'Telangana'),
(402, 'Ramanagaram', 'Karnataka'),
(403, 'Gokak', 'Karnataka'),
(404, 'Tikamgarh', 'Madhya Pradesh'),
(405, 'Araria', 'Bihar'),
(406, 'Rishikesh', 'Uttarakhand'),
(407, 'Shahdol', 'Madhya Pradesh'),
(408, 'Medininagar (Daltonganj)', 'Jharkhand'),
(409, 'Arakkonam', 'Tamil Nadu'),
(410, 'Washim', 'Maharashtra'),
(411, 'Sangrur', 'Punjab'),
(412, 'Bodhan', 'Telangana'),
(413, 'Fazilka', 'Punjab'),
(414, 'Palacole', 'Andhra Pradesh'),
(415, 'Keshod', 'Gujarat'),
(416, 'Sullurpeta', 'Andhra Pradesh'),
(417, 'Wadhwan', 'Gujarat'),
(418, 'Gurdaspur', 'Punjab'),
(419, 'Vatakara', 'Kerala'),
(420, 'Tura', 'Meghalaya'),
(421, 'Narnaul', 'Haryana'),
(422, 'Kharar', 'Punjab'),
(423, 'Yadgir', 'Karnataka'),
(424, 'Ambejogai', 'Maharashtra'),
(425, 'Ankleshwar', 'Gujarat'),
(426, 'Savarkundla', 'Gujarat'),
(427, 'Paradip', 'Odisha'),
(428, 'Virudhachalam', 'Tamil Nadu'),
(429, 'Kanhangad', 'Kerala'),
(430, 'Kadi', 'Gujarat'),
(431, 'Srivilliputhur', 'Tamil Nadu'),
(432, 'Gobindgarh', 'Punjab'),
(433, 'Tindivanam', 'Tamil Nadu'),
(434, 'Mansa', 'Punjab'),
(435, 'Taliparamba', 'Kerala'),
(436, 'Manmad', 'Maharashtra'),
(437, 'Tanuku', 'Andhra Pradesh'),
(438, 'Rayachoti', 'Andhra Pradesh'),
(439, 'Virudhunagar', 'Tamil Nadu'),
(440, 'Koyilandy', 'Kerala'),
(441, 'Jorhat', 'Assam'),
(442, 'Karur', 'Tamil Nadu'),
(443, 'Valparai', 'Tamil Nadu'),
(444, 'Srikalahasti', 'Andhra Pradesh'),
(445, 'Neyyattinkara', 'Kerala'),
(446, 'Bapatla', 'Andhra Pradesh'),
(447, 'Fatehabad', 'Haryana'),
(448, 'Malout', 'Punjab'),
(449, 'Sankarankovil', 'Tamil Nadu'),
(450, 'Tenkasi', 'Tamil Nadu'),
(451, 'Ratnagiri', 'Maharashtra'),
(452, 'Rabkavi Banhatti', 'Karnataka'),
(453, 'Sikandrabad', 'Uttar Pradesh'),
(454, 'Chaibasa', 'Jharkhand'),
(455, 'Chirmiri', 'Chhattisgarh'),
(456, 'Palwancha', 'Telangana'),
(457, 'Bhawanipatna', 'Odisha'),
(458, 'Kayamkulam', 'Kerala'),
(459, 'Pithampur', 'Madhya Pradesh'),
(460, 'Nabha', 'Punjab'),
(461, 'Shahabad, Hardoi', 'Uttar Pradesh'),
(462, 'Dhenkanal', 'Odisha'),
(463, 'Uran Islampur', 'Maharashtra'),
(464, 'Gopalganj', 'Bihar'),
(465, 'Bongaigaon City', 'Assam'),
(466, 'Palani', 'Tamil Nadu'),
(467, 'Pusad', 'Maharashtra'),
(468, 'Sopore', 'Jammu and Kashmir'),
(469, 'Pilkhuwa', 'Uttar Pradesh'),
(470, 'Tarn Taran', 'Punjab'),
(471, 'Renukoot', 'Uttar Pradesh'),
(472, 'Mandamarri', 'Telangana'),
(473, 'Shahabad', 'Karnataka'),
(474, 'Barbil', 'Odisha'),
(475, 'Koratla', 'Telangana'),
(476, 'Madhubani', 'Bihar'),
(477, 'Arambagh', 'West Bengal'),
(478, 'Gohana', 'Haryana'),
(479, 'Ladnu', 'Rajasthan'),
(480, 'Pattukkottai', 'Tamil Nadu'),
(481, 'Sirsi', 'Karnataka'),
(482, 'Sircilla', 'Telangana'),
(483, 'Tamluk', 'West Bengal'),
(484, 'Jagraon', 'Punjab'),
(485, 'AlipurdUrban Agglomerationr', 'West Bengal'),
(486, 'Alirajpur', 'Madhya Pradesh'),
(487, 'Tandur', 'Telangana'),
(488, 'Naidupet', 'Andhra Pradesh'),
(489, 'Tirupathur', 'Tamil Nadu'),
(490, 'Tohana', 'Haryana'),
(491, 'Ratangarh', 'Rajasthan'),
(492, 'Dhubri', 'Assam'),
(493, 'Masaurhi', 'Bihar'),
(494, 'Visnagar', 'Gujarat'),
(495, 'Vrindavan', 'Uttar Pradesh'),
(496, 'Nokha', 'Rajasthan'),
(497, 'Nagari', 'Andhra Pradesh'),
(498, 'Narwana', 'Haryana'),
(499, 'Ramanathapuram', 'Tamil Nadu'),
(500, 'Ujhani', 'Uttar Pradesh'),
(501, 'Samastipur', 'Bihar'),
(502, 'Laharpur', 'Uttar Pradesh'),
(503, 'Sangamner', 'Maharashtra'),
(504, 'Nimbahera', 'Rajasthan'),
(505, 'Siddipet', 'Telangana'),
(506, 'Suri', 'West Bengal'),
(507, 'Diphu', 'Assam'),
(508, 'Jhargram', 'West Bengal'),
(509, 'Shirpur-Warwade', 'Maharashtra'),
(510, 'Tilhar', 'Uttar Pradesh'),
(511, 'Sindhnur', 'Karnataka'),
(512, 'Udumalaipettai', 'Tamil Nadu'),
(513, 'Malkapur', 'Maharashtra'),
(514, 'Wanaparthy', 'Telangana'),
(515, 'Gudur', 'Andhra Pradesh'),
(516, 'Kendujhar', 'Odisha'),
(517, 'Mandla', 'Madhya Pradesh'),
(518, 'Mandi', 'Himachal Pradesh'),
(519, 'Nedumangad', 'Kerala'),
(520, 'North Lakhimpur', 'Assam'),
(521, 'Vinukonda', 'Andhra Pradesh'),
(522, 'Tiptur', 'Karnataka'),
(523, 'Gobichettipalayam', 'Tamil Nadu'),
(524, 'Sunabeda', 'Odisha'),
(525, 'Wani', 'Maharashtra'),
(526, 'Upleta', 'Gujarat'),
(527, 'Narasapuram', 'Andhra Pradesh'),
(528, 'Nuzvid', 'Andhra Pradesh'),
(529, 'Tezpur', 'Assam'),
(530, 'Una', 'Gujarat'),
(531, 'Markapur', 'Andhra Pradesh'),
(532, 'Sheopur', 'Madhya Pradesh'),
(533, 'Thiruvarur', 'Tamil Nadu'),
(534, 'Sidhpur', 'Gujarat'),
(535, 'Sahaswan', 'Uttar Pradesh'),
(536, 'Suratgarh', 'Rajasthan'),
(537, 'Shajapur', 'Madhya Pradesh'),
(538, 'Rayagada', 'Odisha'),
(539, 'Lonavla', 'Maharashtra'),
(540, 'Ponnur', 'Andhra Pradesh'),
(541, 'Kagaznagar', 'Telangana'),
(542, 'Gadwal', 'Telangana'),
(543, 'Bhatapara', 'Chhattisgarh'),
(544, 'Kandukur', 'Andhra Pradesh'),
(545, 'Sangareddy', 'Telangana'),
(546, 'Unjha', 'Gujarat'),
(547, 'Lunglei', 'Mizoram'),
(548, 'Karimganj', 'Assam'),
(549, 'Kannur', 'Kerala'),
(550, 'Bobbili', 'Andhra Pradesh'),
(551, 'Mokameh', 'Bihar'),
(552, 'Talegaon Dabhade', 'Maharashtra'),
(553, 'Anjangaon', 'Maharashtra'),
(554, 'Mangrol', 'Gujarat'),
(555, 'Sunam', 'Punjab'),
(556, 'Gangarampur', 'West Bengal'),
(557, 'Thiruvallur', 'Tamil Nadu'),
(558, 'Tirur', 'Kerala'),
(559, 'Rath', 'Uttar Pradesh'),
(560, 'Jatani', 'Odisha'),
(561, 'Viramgam', 'Gujarat'),
(562, 'Rajsamand', 'Rajasthan'),
(563, 'Yanam', 'Puducherry'),
(564, 'Kottayam', 'Kerala'),
(565, 'Panruti', 'Tamil Nadu'),
(566, 'Dhuri', 'Punjab'),
(567, 'Namakkal', 'Tamil Nadu'),
(568, 'Kasaragod', 'Kerala'),
(569, 'Modasa', 'Gujarat'),
(570, 'Rayadurg', 'Andhra Pradesh'),
(571, 'Supaul', 'Bihar'),
(572, 'Kunnamkulam', 'Kerala'),
(573, 'Umred', 'Maharashtra'),
(574, 'Bellampalle', 'Telangana'),
(575, 'Sibsagar', 'Assam'),
(576, 'Mandi Dabwali', 'Haryana'),
(577, 'Ottappalam', 'Kerala'),
(578, 'Dumraon', 'Bihar'),
(579, 'Samalkot', 'Andhra Pradesh'),
(580, 'Jaggaiahpet', 'Andhra Pradesh'),
(581, 'Goalpara', 'Assam'),
(582, 'Tuni', 'Andhra Pradesh'),
(583, 'Lachhmangarh', 'Rajasthan'),
(584, 'Bhongir', 'Telangana'),
(585, 'Amalapuram', 'Andhra Pradesh'),
(586, 'Firozpur Cantt.', 'Punjab'),
(587, 'Vikarabad', 'Telangana'),
(588, 'Thiruvalla', 'Kerala'),
(589, 'Sherkot', 'Uttar Pradesh'),
(590, 'Palghar', 'Maharashtra'),
(591, 'Shegaon', 'Maharashtra'),
(592, 'Jangaon', 'Telangana'),
(593, 'Bheemunipatnam', 'Andhra Pradesh'),
(594, 'Panna', 'Madhya Pradesh'),
(595, 'Thodupuzha', 'Kerala'),
(596, 'KathUrban Agglomeration', 'Jammu and Kashmir'),
(597, 'Palitana', 'Gujarat'),
(598, 'Arwal', 'Bihar'),
(599, 'Venkatagiri', 'Andhra Pradesh'),
(600, 'Kalpi', 'Uttar Pradesh'),
(601, 'Rajgarh (Churu)', 'Rajasthan'),
(602, 'Sattenapalle', 'Andhra Pradesh'),
(603, 'Arsikere', 'Karnataka'),
(604, 'Ozar', 'Maharashtra'),
(605, 'Thirumangalam', 'Tamil Nadu'),
(606, 'Petlad', 'Gujarat'),
(607, 'Nasirabad', 'Rajasthan'),
(608, 'Phaltan', 'Maharashtra'),
(609, 'Rampurhat', 'West Bengal'),
(610, 'Nanjangud', 'Karnataka'),
(611, 'Forbesganj', 'Bihar'),
(612, 'Tundla', 'Uttar Pradesh'),
(613, 'BhabUrban Agglomeration', 'Bihar'),
(614, 'Sagara', 'Karnataka'),
(615, 'Pithapuram', 'Andhra Pradesh'),
(616, 'Sira', 'Karnataka'),
(617, 'Bhadrachalam', 'Telangana'),
(618, 'Charkhi Dadri', 'Haryana'),
(619, 'Chatra', 'Jharkhand'),
(620, 'Palasa Kasibugga', 'Andhra Pradesh'),
(621, 'Nohar', 'Rajasthan'),
(622, 'Yevla', 'Maharashtra'),
(623, 'Sirhind Fatehgarh Sahib', 'Punjab'),
(624, 'Bhainsa', 'Telangana'),
(625, 'Parvathipuram', 'Andhra Pradesh'),
(626, 'Shahade', 'Maharashtra'),
(627, 'Chalakudy', 'Kerala'),
(628, 'Narkatiaganj', 'Bihar'),
(629, 'Kapadvanj', 'Gujarat'),
(630, 'Macherla', 'Andhra Pradesh'),
(631, 'Raghogarh-Vijaypur', 'Madhya Pradesh'),
(632, 'Rupnagar', 'Punjab'),
(633, 'Naugachhia', 'Bihar'),
(634, 'Sendhwa', 'Madhya Pradesh'),
(635, 'Byasanagar', 'Odisha'),
(636, 'Sandila', 'Uttar Pradesh'),
(637, 'Gooty', 'Andhra Pradesh'),
(638, 'Salur', 'Andhra Pradesh'),
(639, 'Nanpara', 'Uttar Pradesh'),
(640, 'Sardhana', 'Uttar Pradesh'),
(641, 'Vita', 'Maharashtra'),
(642, 'Gumia', 'Jharkhand'),
(643, 'Puttur', 'Karnataka'),
(644, 'Jalandhar Cantt.', 'Punjab'),
(645, 'Nehtaur', 'Uttar Pradesh'),
(646, 'Changanassery', 'Kerala'),
(647, 'Mandapeta', 'Andhra Pradesh'),
(648, 'Dumka', 'Jharkhand'),
(649, 'Seohara', 'Uttar Pradesh'),
(650, 'Umarkhed', 'Maharashtra'),
(651, 'Madhupur', 'Jharkhand'),
(652, 'Vikramasingapuram', 'Tamil Nadu'),
(653, 'Punalur', 'Kerala'),
(654, 'Kendrapara', 'Odisha'),
(655, 'Sihor', 'Gujarat'),
(656, 'Nellikuppam', 'Tamil Nadu'),
(657, 'Samana', 'Punjab'),
(658, 'Warora', 'Maharashtra'),
(659, 'Nilambur', 'Kerala'),
(660, 'Rasipuram', 'Tamil Nadu'),
(661, 'Ramnagar', 'Uttarakhand'),
(662, 'Jammalamadugu', 'Andhra Pradesh'),
(663, 'Nawanshahr', 'Punjab'),
(664, 'Thoubal', 'Manipur'),
(665, 'Athni', 'Karnataka'),
(666, 'Cherthala', 'Kerala'),
(667, 'Sidhi', 'Madhya Pradesh'),
(668, 'Farooqnagar', 'Telangana'),
(669, 'Peddapuram', 'Andhra Pradesh'),
(670, 'Chirkunda', 'Jharkhand'),
(671, 'Pachora', 'Maharashtra'),
(672, 'Madhepura', 'Bihar'),
(673, 'Pithoragarh', 'Uttarakhand'),
(674, 'Tumsar', 'Maharashtra'),
(675, 'Phalodi', 'Rajasthan'),
(676, 'Tiruttani', 'Tamil Nadu'),
(677, 'Rampura Phul', 'Punjab'),
(678, 'Perinthalmanna', 'Kerala'),
(679, 'Padrauna', 'Uttar Pradesh'),
(680, 'Pipariya', 'Madhya Pradesh'),
(681, 'Dalli-Rajhara', 'Chhattisgarh'),
(682, 'Punganur', 'Andhra Pradesh'),
(683, 'Mattannur', 'Kerala'),
(684, 'Mathura', 'Uttar Pradesh'),
(685, 'Thakurdwara', 'Uttar Pradesh'),
(686, 'Nandivaram-Guduvancheri', 'Tamil Nadu'),
(687, 'Mulbagal', 'Karnataka'),
(688, 'Manjlegaon', 'Maharashtra'),
(689, 'Wankaner', 'Gujarat'),
(690, 'Sillod', 'Maharashtra'),
(691, 'Nidadavole', 'Andhra Pradesh'),
(692, 'Surapura', 'Karnataka'),
(693, 'Rajagangapur', 'Odisha'),
(694, 'Sheikhpura', 'Bihar'),
(695, 'Parlakhemundi', 'Odisha'),
(696, 'Kalimpong', 'West Bengal'),
(697, 'Siruguppa', 'Karnataka'),
(698, 'Arvi', 'Maharashtra'),
(699, 'Limbdi', 'Gujarat'),
(700, 'Barpeta', 'Assam'),
(701, 'Manglaur', 'Uttarakhand'),
(702, 'Repalle', 'Andhra Pradesh'),
(703, 'Mudhol', 'Karnataka'),
(704, 'Shujalpur', 'Madhya Pradesh'),
(705, 'Mandvi', 'Gujarat'),
(706, 'Thangadh', 'Gujarat'),
(707, 'Sironj', 'Madhya Pradesh'),
(708, 'Nandura', 'Maharashtra'),
(709, 'Shoranur', 'Kerala'),
(710, 'Nathdwara', 'Rajasthan'),
(711, 'Periyakulam', 'Tamil Nadu'),
(712, 'Sultanganj', 'Bihar'),
(713, 'Medak', 'Telangana'),
(714, 'Narayanpet', 'Telangana'),
(715, 'Raxaul Bazar', 'Bihar'),
(716, 'Rajauri', 'Jammu and Kashmir'),
(717, 'Pernampattu', 'Tamil Nadu'),
(718, 'Nainital', 'Uttarakhand'),
(719, 'Ramachandrapuram', 'Andhra Pradesh'),
(720, 'Vaijapur', 'Maharashtra'),
(721, 'Nangal', 'Punjab'),
(722, 'Sidlaghatta', 'Karnataka'),
(723, 'Punch', 'Jammu and Kashmir'),
(724, 'Pandhurna', 'Madhya Pradesh'),
(725, 'Wadgaon Road', 'Maharashtra'),
(726, 'Talcher', 'Odisha'),
(727, 'Varkala', 'Kerala'),
(728, 'Pilani', 'Rajasthan'),
(729, 'Nowgong', 'Madhya Pradesh'),
(730, 'Naila Janjgir', 'Chhattisgarh'),
(731, 'Mapusa', 'Goa'),
(732, 'Vellakoil', 'Tamil Nadu'),
(733, 'Merta City', 'Rajasthan'),
(734, 'Sivaganga', 'Tamil Nadu'),
(735, 'Mandideep', 'Madhya Pradesh'),
(736, 'Sailu', 'Maharashtra'),
(737, 'Vyara', 'Gujarat'),
(738, 'Kovvur', 'Andhra Pradesh'),
(739, 'Vadalur', 'Tamil Nadu'),
(740, 'Nawabganj', 'Uttar Pradesh'),
(741, 'Padra', 'Gujarat'),
(742, 'Sainthia', 'West Bengal'),
(743, 'Siana', 'Uttar Pradesh'),
(744, 'Shahpur', 'Karnataka'),
(745, 'Sojat', 'Rajasthan'),
(746, 'Noorpur', 'Uttar Pradesh'),
(747, 'Paravoor', 'Kerala'),
(748, 'Murtijapur', 'Maharashtra'),
(749, 'Ramnagar', 'Bihar'),
(750, 'Sundargarh', 'Odisha'),
(751, 'Taki', 'West Bengal'),
(752, 'Saundatti-Yellamma', 'Karnataka'),
(753, 'Pathanamthitta', 'Kerala'),
(754, 'Wadi', 'Karnataka'),
(755, 'Rameshwaram', 'Tamil Nadu'),
(756, 'Tasgaon', 'Maharashtra'),
(757, 'Sikandra Rao', 'Uttar Pradesh'),
(758, 'Sihora', 'Madhya Pradesh'),
(759, 'Tiruvethipuram', 'Tamil Nadu'),
(760, 'Tiruvuru', 'Andhra Pradesh'),
(761, 'Mehkar', 'Maharashtra'),
(762, 'Peringathur', 'Kerala'),
(763, 'Perambalur', 'Tamil Nadu'),
(764, 'Manvi', 'Karnataka'),
(765, 'Zunheboto', 'Nagaland'),
(766, 'Mahnar Bazar', 'Bihar'),
(767, 'Attingal', 'Kerala'),
(768, 'Shahbad', 'Haryana'),
(769, 'Puranpur', 'Uttar Pradesh'),
(770, 'Nelamangala', 'Karnataka'),
(771, 'Nakodar', 'Punjab'),
(772, 'Lunawada', 'Gujarat'),
(773, 'Murshidabad', 'West Bengal'),
(774, 'Mahe', 'Puducherry'),
(775, 'Lanka', 'Assam'),
(776, 'Rudauli', 'Uttar Pradesh'),
(777, 'Tuensang', 'Nagaland'),
(778, 'Lakshmeshwar', 'Karnataka'),
(779, 'Zira', 'Punjab'),
(780, 'Yawal', 'Maharashtra'),
(781, 'Thana Bhawan', 'Uttar Pradesh'),
(782, 'Ramdurg', 'Karnataka'),
(783, 'Pulgaon', 'Maharashtra'),
(784, 'Sadasivpet', 'Telangana'),
(785, 'Nargund', 'Karnataka'),
(786, 'Neem-Ka-Thana', 'Rajasthan'),
(787, 'Memari', 'West Bengal'),
(788, 'Nilanga', 'Maharashtra'),
(789, 'Naharlagun', 'Arunachal Pradesh'),
(790, 'Pakaur', 'Jharkhand'),
(791, 'Wai', 'Maharashtra'),
(792, 'Tarikere', 'Karnataka'),
(793, 'Malavalli', 'Karnataka'),
(794, 'Raisen', 'Madhya Pradesh'),
(795, 'Lahar', 'Madhya Pradesh'),
(796, 'Uravakonda', 'Andhra Pradesh'),
(797, 'Savanur', 'Karnataka'),
(798, 'Sirohi', 'Rajasthan'),
(799, 'Udhampur', 'Jammu and Kashmir'),
(800, 'Umarga', 'Maharashtra'),
(801, 'Pratapgarh', 'Rajasthan'),
(802, 'Lingsugur', 'Karnataka'),
(803, 'Usilampatti', 'Tamil Nadu'),
(804, 'Palia Kalan', 'Uttar Pradesh'),
(805, 'Wokha', 'Nagaland'),
(806, 'Rajpipla', 'Gujarat'),
(807, 'Vijayapura', 'Karnataka'),
(808, 'Rawatbhata', 'Rajasthan'),
(809, 'Sangaria', 'Rajasthan'),
(810, 'Paithan', 'Maharashtra'),
(811, 'Rahuri', 'Maharashtra'),
(812, 'Patti', 'Punjab'),
(813, 'Zaidpur', 'Uttar Pradesh'),
(814, 'Lalsot', 'Rajasthan'),
(815, 'Maihar', 'Madhya Pradesh'),
(816, 'Vedaranyam', 'Tamil Nadu'),
(817, 'Nawapur', 'Maharashtra'),
(818, 'Solan', 'Himachal Pradesh'),
(819, 'Vapi', 'Gujarat'),
(820, 'Sanawad', 'Madhya Pradesh'),
(821, 'Warisaliganj', 'Bihar'),
(822, 'Revelganj', 'Bihar'),
(823, 'Sabalgarh', 'Madhya Pradesh'),
(824, 'Tuljapur', 'Maharashtra'),
(825, 'Simdega', 'Jharkhand'),
(826, 'Musabani', 'Jharkhand'),
(827, 'Kodungallur', 'Kerala'),
(828, 'Phulabani', 'Odisha'),
(829, 'Umreth', 'Gujarat'),
(830, 'Narsipatnam', 'Andhra Pradesh'),
(831, 'Nautanwa', 'Uttar Pradesh'),
(832, 'Rajgir', 'Bihar'),
(833, 'Yellandu', 'Telangana'),
(834, 'Sathyamangalam', 'Tamil Nadu'),
(835, 'Pilibanga', 'Rajasthan'),
(836, 'Morshi', 'Maharashtra'),
(837, 'Pehowa', 'Haryana'),
(838, 'Sonepur', 'Bihar'),
(839, 'Pappinisseri', 'Kerala'),
(840, 'Zamania', 'Uttar Pradesh'),
(841, 'Mihijam', 'Jharkhand'),
(842, 'Purna', 'Maharashtra'),
(843, 'Puliyankudi', 'Tamil Nadu'),
(844, 'Shikarpur, Bulandshahr', 'Uttar Pradesh'),
(845, 'Umaria', 'Madhya Pradesh'),
(846, 'Porsa', 'Madhya Pradesh'),
(847, 'Naugawan Sadat', 'Uttar Pradesh'),
(848, 'Fatehpur Sikri', 'Uttar Pradesh'),
(849, 'Manuguru', 'Telangana'),
(850, 'Udaipur', 'Tripura'),
(851, 'Pipar City', 'Rajasthan'),
(852, 'Pattamundai', 'Odisha'),
(853, 'Nanjikottai', 'Tamil Nadu'),
(854, 'Taranagar', 'Rajasthan'),
(855, 'Yerraguntla', 'Andhra Pradesh'),
(856, 'Satana', 'Maharashtra'),
(857, 'Sherghati', 'Bihar'),
(858, 'Sankeshwara', 'Karnataka'),
(859, 'Madikeri', 'Karnataka'),
(860, 'Thuraiyur', 'Tamil Nadu'),
(861, 'Sanand', 'Gujarat'),
(862, 'Rajula', 'Gujarat'),
(863, 'Kyathampalle', 'Telangana'),
(864, 'Shahabad, Rampur', 'Uttar Pradesh'),
(865, 'Tilda Newra', 'Chhattisgarh'),
(866, 'Narsinghgarh', 'Madhya Pradesh'),
(867, 'Chittur-Thathamangalam', 'Kerala'),
(868, 'Malaj Khand', 'Madhya Pradesh'),
(869, 'Sarangpur', 'Madhya Pradesh'),
(870, 'Robertsganj', 'Uttar Pradesh'),
(871, 'Sirkali', 'Tamil Nadu'),
(872, 'Radhanpur', 'Gujarat'),
(873, 'Tiruchendur', 'Tamil Nadu'),
(874, 'Utraula', 'Uttar Pradesh'),
(875, 'Patratu', 'Jharkhand'),
(876, 'Vijainagar, Ajmer', 'Rajasthan'),
(877, 'Periyasemur', 'Tamil Nadu'),
(878, 'Pathri', 'Maharashtra'),
(879, 'Sadabad', 'Uttar Pradesh'),
(880, 'Talikota', 'Karnataka'),
(881, 'Sinnar', 'Maharashtra'),
(882, 'Mungeli', 'Chhattisgarh'),
(883, 'Sedam', 'Karnataka'),
(884, 'Shikaripur', 'Karnataka'),
(885, 'Sumerpur', 'Rajasthan'),
(886, 'Sattur', 'Tamil Nadu'),
(887, 'Sugauli', 'Bihar'),
(888, 'Lumding', 'Assam'),
(889, 'Vandavasi', 'Tamil Nadu'),
(890, 'Titlagarh', 'Odisha'),
(891, 'Uchgaon', 'Maharashtra'),
(892, 'Mokokchung', 'Nagaland'),
(893, 'Paschim Punropara', 'West Bengal'),
(894, 'Sagwara', 'Rajasthan'),
(895, 'Ramganj Mandi', 'Rajasthan'),
(896, 'Tarakeswar', 'West Bengal'),
(897, 'Mahalingapura', 'Karnataka'),
(898, 'Dharmanagar', 'Tripura'),
(899, 'Mahemdabad', 'Gujarat'),
(900, 'Manendragarh', 'Chhattisgarh'),
(901, 'Uran', 'Maharashtra'),
(902, 'Tharamangalam', 'Tamil Nadu'),
(903, 'Tirukkoyilur', 'Tamil Nadu'),
(904, 'Pen', 'Maharashtra'),
(905, 'Makhdumpur', 'Bihar'),
(906, 'Maner', 'Bihar'),
(907, 'Oddanchatram', 'Tamil Nadu'),
(908, 'Palladam', 'Tamil Nadu'),
(909, 'Mundi', 'Madhya Pradesh'),
(910, 'Nabarangapur', 'Odisha'),
(911, 'Mudalagi', 'Karnataka'),
(912, 'Samalkha', 'Haryana'),
(913, 'Nepanagar', 'Madhya Pradesh'),
(914, 'Karjat', 'Maharashtra'),
(915, 'Ranavav', 'Gujarat'),
(916, 'Pedana', 'Andhra Pradesh'),
(917, 'Pinjore', 'Haryana'),
(918, 'Lakheri', 'Rajasthan'),
(919, 'Pasan', 'Madhya Pradesh'),
(920, 'Puttur', 'Andhra Pradesh'),
(921, 'Vadakkuvalliyur', 'Tamil Nadu'),
(922, 'Tirukalukundram', 'Tamil Nadu'),
(923, 'Mahidpur', 'Madhya Pradesh'),
(924, 'Mussoorie', 'Uttarakhand'),
(925, 'Muvattupuzha', 'Kerala'),
(926, 'Rasra', 'Uttar Pradesh'),
(927, 'Udaipurwati', 'Rajasthan'),
(928, 'Manwath', 'Maharashtra'),
(929, 'Adoor', 'Kerala'),
(930, 'Uthamapalayam', 'Tamil Nadu'),
(931, 'Partur', 'Maharashtra'),
(932, 'Nahan', 'Himachal Pradesh'),
(933, 'Ladwa', 'Haryana'),
(934, 'Mankachar', 'Assam'),
(935, 'Nongstoin', 'Meghalaya'),
(936, 'Losal', 'Rajasthan'),
(937, 'Sri Madhopur', 'Rajasthan'),
(938, 'Ramngarh', 'Rajasthan'),
(939, 'Mavelikkara', 'Kerala'),
(940, 'Rawatsar', 'Rajasthan'),
(941, 'Rajakhera', 'Rajasthan'),
(942, 'Lar', 'Uttar Pradesh'),
(943, 'Lal Gopalganj Nindaura', 'Uttar Pradesh'),
(944, 'Muddebihal', 'Karnataka'),
(945, 'Sirsaganj', 'Uttar Pradesh'),
(946, 'Shahpura', 'Rajasthan'),
(947, 'Surandai', 'Tamil Nadu'),
(948, 'Sangole', 'Maharashtra'),
(949, 'Pavagada', 'Karnataka'),
(950, 'Tharad', 'Gujarat'),
(951, 'Mansa', 'Gujarat'),
(952, 'Umbergaon', 'Gujarat'),
(953, 'Mavoor', 'Kerala'),
(954, 'Nalbari', 'Assam'),
(955, 'Talaja', 'Gujarat'),
(956, 'Malur', 'Karnataka'),
(957, 'Mangrulpir', 'Maharashtra'),
(958, 'Soro', 'Odisha'),
(959, 'Shahpura', 'Rajasthan'),
(960, 'Vadnagar', 'Gujarat'),
(961, 'Raisinghnagar', 'Rajasthan'),
(962, 'Sindhagi', 'Karnataka'),
(963, 'Sanduru', 'Karnataka'),
(964, 'Sohna', 'Haryana'),
(965, 'Manavadar', 'Gujarat'),
(966, 'Pihani', 'Uttar Pradesh'),
(967, 'Safidon', 'Haryana'),
(968, 'Risod', 'Maharashtra'),
(969, 'Rosera', 'Bihar'),
(970, 'Sankari', 'Tamil Nadu'),
(971, 'Malpura', 'Rajasthan'),
(972, 'Sonamukhi', 'West Bengal'),
(973, 'Shamsabad, Agra', 'Uttar Pradesh'),
(974, 'Nokha', 'Bihar'),
(975, 'PandUrban Agglomeration', 'West Bengal'),
(976, 'Mainaguri', 'West Bengal'),
(977, 'Afzalpur', 'Karnataka'),
(978, 'Shirur', 'Maharashtra'),
(979, 'Salaya', 'Gujarat'),
(980, 'Shenkottai', 'Tamil Nadu'),
(981, 'Pratapgarh', 'Tripura'),
(982, 'Vadipatti', 'Tamil Nadu'),
(983, 'Nagarkurnool', 'Telangana'),
(984, 'Savner', 'Maharashtra'),
(985, 'Sasvad', 'Maharashtra'),
(986, 'Rudrapur', 'Uttar Pradesh'),
(987, 'Soron', 'Uttar Pradesh'),
(988, 'Sholingur', 'Tamil Nadu'),
(989, 'Pandharkaoda', 'Maharashtra'),
(990, 'Perumbavoor', 'Kerala'),
(991, 'Maddur', 'Karnataka'),
(992, 'Nadbai', 'Rajasthan'),
(993, 'Talode', 'Maharashtra'),
(994, 'Shrigonda', 'Maharashtra'),
(995, 'Madhugiri', 'Karnataka'),
(996, 'Tekkalakote', 'Karnataka'),
(997, 'Seoni-Malwa', 'Madhya Pradesh'),
(998, 'Shirdi', 'Maharashtra'),
(999, 'SUrban Agglomerationr', 'Uttar Pradesh'),
(1000, 'Terdal', 'Karnataka'),
(1001, 'Raver', 'Maharashtra'),
(1002, 'Tirupathur', 'Tamil Nadu'),
(1003, 'Taraori', 'Haryana'),
(1004, 'Mukhed', 'Maharashtra'),
(1005, 'Manachanallur', 'Tamil Nadu'),
(1006, 'Rehli', 'Madhya Pradesh'),
(1007, 'Sanchore', 'Rajasthan'),
(1008, 'Rajura', 'Maharashtra'),
(1009, 'Piro', 'Bihar'),
(1010, 'Mudabidri', 'Karnataka'),
(1011, 'Vadgaon Kasba', 'Maharashtra'),
(1012, 'Nagar', 'Rajasthan'),
(1013, 'Vijapur', 'Gujarat'),
(1014, 'Viswanatham', 'Tamil Nadu'),
(1015, 'Polur', 'Tamil Nadu'),
(1016, 'Panagudi', 'Tamil Nadu'),
(1017, 'Manawar', 'Madhya Pradesh'),
(1018, 'Tehri', 'Uttarakhand'),
(1019, 'Samdhan', 'Uttar Pradesh'),
(1020, 'Pardi', 'Gujarat'),
(1021, 'Rahatgarh', 'Madhya Pradesh'),
(1022, 'Panagar', 'Madhya Pradesh'),
(1023, 'Uthiramerur', 'Tamil Nadu'),
(1024, 'Tirora', 'Maharashtra'),
(1025, 'Rangia', 'Assam'),
(1026, 'Sahjanwa', 'Uttar Pradesh'),
(1027, 'Wara Seoni', 'Madhya Pradesh'),
(1028, 'Magadi', 'Karnataka'),
(1029, 'Rajgarh (Alwar)', 'Rajasthan'),
(1030, 'Rafiganj', 'Bihar'),
(1031, 'Tarana', 'Madhya Pradesh'),
(1032, 'Rampur Maniharan', 'Uttar Pradesh'),
(1033, 'Sheoganj', 'Rajasthan'),
(1034, 'Raikot', 'Punjab'),
(1035, 'Pauri', 'Uttarakhand'),
(1036, 'Sumerpur', 'Uttar Pradesh'),
(1037, 'Navalgund', 'Karnataka'),
(1038, 'Shahganj', 'Uttar Pradesh'),
(1039, 'Marhaura', 'Bihar'),
(1040, 'Tulsipur', 'Uttar Pradesh'),
(1041, 'Sadri', 'Rajasthan'),
(1042, 'Thiruthuraipoondi', 'Tamil Nadu'),
(1043, 'Shiggaon', 'Karnataka'),
(1044, 'Pallapatti', 'Tamil Nadu'),
(1045, 'Mahendragarh', 'Haryana'),
(1046, 'Sausar', 'Madhya Pradesh'),
(1047, 'Ponneri', 'Tamil Nadu'),
(1048, 'Mahad', 'Maharashtra'),
(1049, 'Lohardaga', 'Jharkhand'),
(1050, 'Tirwaganj', 'Uttar Pradesh'),
(1051, 'Margherita', 'Assam'),
(1052, 'Sundarnagar', 'Himachal Pradesh'),
(1053, 'Rajgarh', 'Madhya Pradesh'),
(1054, 'Mangaldoi', 'Assam'),
(1055, 'Renigunta', 'Andhra Pradesh'),
(1056, 'Longowal', 'Punjab'),
(1057, 'Ratia', 'Haryana'),
(1058, 'Lalgudi', 'Tamil Nadu'),
(1059, 'Shrirangapattana', 'Karnataka'),
(1060, 'Niwari', 'Madhya Pradesh'),
(1061, 'Natham', 'Tamil Nadu'),
(1062, 'Unnamalaikadai', 'Tamil Nadu'),
(1063, 'PurqUrban Agglomerationzi', 'Uttar Pradesh'),
(1064, 'Shamsabad, Farrukhabad', 'Uttar Pradesh'),
(1065, 'Mirganj', 'Bihar'),
(1066, 'Todaraisingh', 'Rajasthan'),
(1067, 'Warhapur', 'Uttar Pradesh'),
(1068, 'Rajam', 'Andhra Pradesh'),
(1069, 'Urmar Tanda', 'Punjab'),
(1070, 'Lonar', 'Maharashtra'),
(1071, 'Powayan', 'Uttar Pradesh'),
(1072, 'P.N.Patti', 'Tamil Nadu'),
(1073, 'Palampur', 'Himachal Pradesh'),
(1074, 'Srisailam Project (Right Flank Colony) Township', 'Andhra Pradesh'),
(1075, 'Sindagi', 'Karnataka'),
(1076, 'Sandi', 'Uttar Pradesh'),
(1077, 'Vaikom', 'Kerala'),
(1078, 'Malda', 'West Bengal'),
(1079, 'Tharangambadi', 'Tamil Nadu'),
(1080, 'Sakaleshapura', 'Karnataka'),
(1081, 'Lalganj', 'Bihar'),
(1082, 'Malkangiri', 'Odisha'),
(1083, 'Rapar', 'Gujarat'),
(1084, 'Mauganj', 'Madhya Pradesh'),
(1085, 'Todabhim', 'Rajasthan'),
(1086, 'Srinivaspur', 'Karnataka'),
(1087, 'Murliganj', 'Bihar'),
(1088, 'Reengus', 'Rajasthan'),
(1089, 'Sawantwadi', 'Maharashtra'),
(1090, 'Tittakudi', 'Tamil Nadu'),
(1091, 'Lilong', 'Manipur'),
(1092, 'Rajaldesar', 'Rajasthan'),
(1093, 'Pathardi', 'Maharashtra'),
(1094, 'Achhnera', 'Uttar Pradesh'),
(1095, 'Pacode', 'Tamil Nadu'),
(1096, 'Naraura', 'Uttar Pradesh'),
(1097, 'Nakur', 'Uttar Pradesh'),
(1098, 'Palai', 'Kerala'),
(1099, 'Morinda, India', 'Punjab'),
(1100, 'Manasa', 'Madhya Pradesh'),
(1101, 'Nainpur', 'Madhya Pradesh'),
(1102, 'Sahaspur', 'Uttar Pradesh'),
(1103, 'Pauni', 'Maharashtra'),
(1104, 'Prithvipur', 'Madhya Pradesh'),
(1105, 'Ramtek', 'Maharashtra'),
(1106, 'Silapathar', 'Assam'),
(1107, 'Songadh', 'Gujarat'),
(1108, 'Safipur', 'Uttar Pradesh'),
(1109, 'Sohagpur', 'Madhya Pradesh'),
(1110, 'Mul', 'Maharashtra'),
(1111, 'Sadulshahar', 'Rajasthan'),
(1112, 'Phillaur', 'Punjab'),
(1113, 'Sambhar', 'Rajasthan'),
(1114, 'Prantij', 'Rajasthan'),
(1115, 'Nagla', 'Uttarakhand'),
(1116, 'Pattran', 'Punjab'),
(1117, 'Mount Abu', 'Rajasthan'),
(1118, 'Reoti', 'Uttar Pradesh'),
(1119, 'Tenu dam-cum-Kathhara', 'Jharkhand'),
(1120, 'Panchla', 'West Bengal'),
(1121, 'Sitarganj', 'Uttarakhand'),
(1122, 'Pasighat', 'Arunachal Pradesh'),
(1123, 'Motipur', 'Bihar'),
(1124, 'O\' Valley', 'Tamil Nadu'),
(1125, 'Raghunathpur', 'West Bengal'),
(1126, 'Suriyampalayam', 'Tamil Nadu'),
(1127, 'Qadian', 'Punjab'),
(1128, 'Rairangpur', 'Odisha'),
(1129, 'Silvassa', 'Dadra and Nagar Haveli'),
(1130, 'Nowrozabad (Khodargama)', 'Madhya Pradesh'),
(1131, 'Mangrol', 'Rajasthan'),
(1132, 'Soyagaon', 'Maharashtra'),
(1133, 'Sujanpur', 'Punjab'),
(1134, 'Manihari', 'Bihar'),
(1135, 'Sikanderpur', 'Uttar Pradesh'),
(1136, 'Mangalvedhe', 'Maharashtra'),
(1137, 'Phulera', 'Rajasthan'),
(1138, 'Ron', 'Karnataka'),
(1139, 'Sholavandan', 'Tamil Nadu'),
(1140, 'Saidpur', 'Uttar Pradesh'),
(1141, 'Shamgarh', 'Madhya Pradesh'),
(1142, 'Thammampatti', 'Tamil Nadu'),
(1143, 'Maharajpur', 'Madhya Pradesh'),
(1144, 'Multai', 'Madhya Pradesh'),
(1145, 'Mukerian', 'Punjab'),
(1146, 'Sirsi', 'Uttar Pradesh'),
(1147, 'Purwa', 'Uttar Pradesh'),
(1148, 'Sheohar', 'Bihar'),
(1149, 'Namagiripettai', 'Tamil Nadu'),
(1150, 'Parasi', 'Uttar Pradesh'),
(1151, 'Lathi', 'Gujarat'),
(1152, 'Lalganj', 'Uttar Pradesh'),
(1153, 'Narkhed', 'Maharashtra'),
(1154, 'Mathabhanga', 'West Bengal'),
(1155, 'Shendurjana', 'Maharashtra'),
(1156, 'Peravurani', 'Tamil Nadu'),
(1157, 'Mariani', 'Assam'),
(1158, 'Phulpur', 'Uttar Pradesh'),
(1159, 'Rania', 'Haryana'),
(1160, 'Pali', 'Madhya Pradesh'),
(1161, 'Pachore', 'Madhya Pradesh'),
(1162, 'Parangipettai', 'Tamil Nadu'),
(1163, 'Pudupattinam', 'Tamil Nadu'),
(1164, 'Panniyannur', 'Kerala'),
(1165, 'Maharajganj', 'Bihar'),
(1166, 'Rau', 'Madhya Pradesh'),
(1167, 'Monoharpur', 'West Bengal'),
(1168, 'Mandawa', 'Rajasthan'),
(1169, 'Marigaon', 'Assam'),
(1170, 'Pallikonda', 'Tamil Nadu'),
(1171, 'Pindwara', 'Rajasthan'),
(1172, 'Shishgarh', 'Uttar Pradesh'),
(1173, 'Patur', 'Maharashtra'),
(1174, 'Mayang Imphal', 'Manipur'),
(1175, 'Mhowgaon', 'Madhya Pradesh'),
(1176, 'Guruvayoor', 'Kerala'),
(1177, 'Mhaswad', 'Maharashtra'),
(1178, 'Sahawar', 'Uttar Pradesh'),
(1179, 'Sivagiri', 'Tamil Nadu'),
(1180, 'Mundargi', 'Karnataka'),
(1181, 'Punjaipugalur', 'Tamil Nadu'),
(1182, 'Kailasahar', 'Tripura'),
(1183, 'Samthar', 'Uttar Pradesh'),
(1184, 'Sakti', 'Chhattisgarh'),
(1185, 'Sadalagi', 'Karnataka'),
(1186, 'Silao', 'Bihar'),
(1187, 'Mandalgarh', 'Rajasthan'),
(1188, 'Loha', 'Maharashtra'),
(1189, 'Pukhrayan', 'Uttar Pradesh'),
(1190, 'Padmanabhapuram', 'Tamil Nadu'),
(1191, 'Belonia', 'Tripura'),
(1192, 'Saiha', 'Mizoram'),
(1193, 'Srirampore', 'West Bengal'),
(1194, 'Talwara', 'Punjab'),
(1195, 'Puthuppally', 'Kerala'),
(1196, 'Khowai', 'Tripura'),
(1197, 'Vijaypur', 'Madhya Pradesh'),
(1198, 'Takhatgarh', 'Rajasthan'),
(1199, 'Thirupuvanam', 'Tamil Nadu'),
(1200, 'Adra', 'West Bengal'),
(1201, 'Piriyapatna', 'Karnataka'),
(1202, 'Obra', 'Uttar Pradesh'),
(1203, 'Adalaj', 'Gujarat'),
(1204, 'Nandgaon', 'Maharashtra'),
(1205, 'Barh', 'Bihar'),
(1206, 'Chhapra', 'Gujarat'),
(1207, 'Panamattom', 'Kerala'),
(1208, 'Niwai', 'Uttar Pradesh'),
(1209, 'Bageshwar', 'Uttarakhand'),
(1210, 'Tarbha', 'Odisha'),
(1211, 'Adyar', 'Karnataka'),
(1212, 'Narsinghgarh', 'Madhya Pradesh'),
(1213, 'Warud', 'Maharashtra'),
(1214, 'Asarganj', 'Bihar'),
(1215, 'Sarsod', 'Haryana'),
(1216, 'Gandhinagar', 'Gujarat'),
(1217, 'Kullu', 'Himachal Pradesh'),
(1218, 'Manali', 'Himachal Praddesh'),
(1219, 'Mirzapur', 'Uttar Pradesh'),
(1220, 'Kota', 'Rajasthan'),
(1221, 'Dispur', 'Assam'),
(1226, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Cuisines`
--

CREATE TABLE `Cuisines` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cuisines`
--

INSERT INTO `Cuisines` (`id`, `name`) VALUES
(434, 'qwer'),
(433, 'uoip');

-- --------------------------------------------------------

--
-- Table structure for table `Day`
--

CREATE TABLE `Day` (
  `restaurant_id` int(11) NOT NULL,
  `Monday` tinyint(1) NOT NULL DEFAULT '0',
  `Tuesday` tinyint(1) NOT NULL DEFAULT '0',
  `Wednesday` tinyint(1) NOT NULL DEFAULT '0',
  `Thursday` tinyint(1) NOT NULL DEFAULT '0',
  `Friday` tinyint(1) NOT NULL DEFAULT '0',
  `Saturday` tinyint(1) NOT NULL DEFAULT '0',
  `Sunday` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Day`
--

INSERT INTO `Day` (`restaurant_id`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`) VALUES
(19151068, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Establishments`
--

CREATE TABLE `Establishments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Establishments`
--

INSERT INTO `Establishments` (`id`, `name`) VALUES
(132, 'aasfsa'),
(133, 'zcvxz');

-- --------------------------------------------------------

--
-- Table structure for table `Highlights`
--

CREATE TABLE `Highlights` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Highlights`
--

INSERT INTO `Highlights` (`id`, `name`) VALUES
(612, 'adflkjiojoij'),
(613, 'adfsaf');

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
  `locality_verbose` varchar(100) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`id`, `city`, `zipcode`, `locality`, `address`, `locality_verbose`, `latitude`, `longitude`) VALUES
(267, '', NULL, '', '', '', NULL, NULL),
(268, '', NULL, '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Photo`
--

CREATE TABLE `Photo` (
  `review_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant`
--

CREATE TABLE `Restaurant` (
  `id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `average_cost_for_two` int(11) DEFAULT NULL,
  `cuisines` varchar(1000) DEFAULT NULL,
  `timings` varchar(100) DEFAULT NULL,
  `establishment` varchar(1000) DEFAULT NULL,
  `highlights` varchar(1000) DEFAULT NULL,
  `thumb` varchar(1000) DEFAULT NULL,
  `phone_numbers` varchar(1000) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `opening_status` varchar(255) DEFAULT NULL,
  `website` varchar(1000) DEFAULT NULL,
  `rating` float(10,1) DEFAULT '0.0',
  `votes` int(11) DEFAULT '0',
  `password` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Restaurant`
--

INSERT INTO `Restaurant` (`id`, `location_id`, `name`, `email`, `average_cost_for_two`, `cuisines`, `timings`, `establishment`, `highlights`, `thumb`, `phone_numbers`, `capacity`, `opening_status`, `website`, `rating`, `votes`, `password`) VALUES
(19151068, 268, '', 'sumittomar2308@gmail.com', 0, 'qwer, uoip', '', 'aasfsa, zcvxz', 'adfsaf, adflkjiojoij', '', ' , ', 14, '0', '', 0.0, 0, 'sha256$JFP1U07K$a8165298fe672625e2e9c5b13c9301f7341a5387237cb9ac4cf0a7e685b58f22');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `rating_text` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Slot`
--

CREATE TABLE `Slot` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `start_time` varchar(11) NOT NULL,
  `end_time` varchar(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Slot`
--

INSERT INTO `Slot` (`id`, `restaurant_id`, `start_time`, `end_time`, `day`, `status`) VALUES
(4685, 19151068, '10:00', '15:00', NULL, 1),
(4686, 19151068, '18:00', '22:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BeenThere`
--
ALTER TABLE `BeenThere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BeenThere_ibfk_1` (`user_id`),
  ADD KEY `BeenThere_ibfk_2` (`restaurant_id`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `Bookmark`
--
ALTER TABLE `Bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Bookmark_ibfk_1` (`user_id`),
  ADD KEY `Bookmark_ibfk_2` (`restaurant_id`);

--
-- Indexes for table `Cities`
--
ALTER TABLE `Cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Cuisines`
--
ALTER TABLE `Cuisines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Day`
--
ALTER TABLE `Day`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `Establishments`
--
ALTER TABLE `Establishments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Highlights`
--
ALTER TABLE `Highlights`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Photo`
--
ALTER TABLE `Photo`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `Review`
--
ALTER TABLE `Review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

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
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BeenThere`
--
ALTER TABLE `BeenThere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `Bookmark`
--
ALTER TABLE `Bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Cities`
--
ALTER TABLE `Cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1227;
--
-- AUTO_INCREMENT for table `Cuisines`
--
ALTER TABLE `Cuisines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;
--
-- AUTO_INCREMENT for table `Establishments`
--
ALTER TABLE `Establishments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `Highlights`
--
ALTER TABLE `Highlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;
--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `Restaurant`
--
ALTER TABLE `Restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19151069;
--
-- AUTO_INCREMENT for table `Review`
--
ALTER TABLE `Review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Slot`
--
ALTER TABLE `Slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4687;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `BeenThere`
--
ALTER TABLE `BeenThere`
  ADD CONSTRAINT `BeenThere_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `BeenThere_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `Bookmark`
--
ALTER TABLE `Bookmark`
  ADD CONSTRAINT `Bookmark_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `Bookmark_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `Day`
--
ALTER TABLE `Day`
  ADD CONSTRAINT `Day_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `Photo`
--
ALTER TABLE `Photo`
  ADD CONSTRAINT `Photo_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `Review` (`id`);

--
-- Constraints for table `Restaurant`
--
ALTER TABLE `Restaurant`
  ADD CONSTRAINT `Restaurant_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `Location` (`id`);

--
-- Constraints for table `Review`
--
ALTER TABLE `Review`
  ADD CONSTRAINT `Review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `Review_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

--
-- Constraints for table `Slot`
--
ALTER TABLE `Slot`
  ADD CONSTRAINT `Slot_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `Restaurant` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
