-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 12:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 'Active'),
(2, 'Surender', 'surender', 'surender', 'Active'),
(3, 'Neeraj', 'neeraj', 'neeraj', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(255) NOT NULL,
  `article_type` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `article_description` text NOT NULL,
  `article_img1` varchar(255) NOT NULL,
  `article_img2` varchar(255) NOT NULL,
  `article_img3` varchar(255) NOT NULL,
  `article_img4` varchar(255) NOT NULL,
  `article_img5` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(255) NOT NULL,
  `country_id` int(255) NOT NULL,
  `state_id` int(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `country_id`, `state_id`, `city`, `description`, `status`) VALUES
(2, 1, 18, 'Kajaani', 'Kajaani is a town and municipality in Finland. It is the center and capital of the Kainuu region. It is located southeast of OulujÃ¤rvi, which drains to the Gulf of Bothnia along the Oulujoki. ', 'Active'),
(3, 4, 4, 'Joensuu', 'Joensuu is a city and municipality in North Karelia in the province of Eastern Finland. It was founded in 1848. The population of Joensuu is 74,941,', 'Active'),
(4, 4, 5, '	Kuopio', 'Kuopio is a city and a municipality located in the region of Northern Savonia, Finland. A population of 110,999 makes it the eighth biggest city in the country', 'Active'),
(5, 4, 6, 'Mikkeli', 'Mikkeli is a town and municipality in Finland. It is located in what used to be the province of Eastern Finland and is part of the Southern Savonia region.', 'Active'),
(6, 4, 7, 'SeinÃ¤joki', 'SeinÃ¤joki is a city located in Southern Ostrobothnia, Finland. SeinÃ¤joki originated around the Ã–stermyra bruk iron and gunpowder factories founded in 1798.', 'Active'),
(7, 1, 9, '	Itanagar', 'anagar is the capital of the Indian state of Arunachal Pradesh. Itanagar is situated at the foothills of Himalayas. It comes administratively under Papum Pare district. Itanagar is well connected by road. ', 'Active'),
(8, 1, 10, '	Dispur', 'Dispur /dÉªsËˆpÊŠÉ™r/ is the capital of the state of Assam. Dispur, a locality of Guwahati, became the capital of Assam in 1973.', 'Active'),
(9, 1, 35, '	Patna', 'is the capital and largest city of the state of Bihar in India. Patna is the second largest city in eastern India after Kolkata.', 'Active'),
(10, 1, 11, 'Raipur', 'Raipur is a city in the Raipur district of the Indian state of Chhattisgarh. It is the capital city of the state of Chhattisgarh and is the administrative headquarters of Raipur district.', 'Active'),
(11, 1, 12, '	Panaji', ' is the capital of the Indian state of Goa and the headquarters of North Goa district. It lies on the banks of the Mandovi River estuary in Tiswadi taluka. ', 'Active'),
(12, 1, 36, '	Gandhinagar', ' is the capital of the state of Gujarat in Western India. Gandhinagar is located approximately 23 km north of Ahmedabad, on the west central point of the Industrial corridor between ', 'Active'),
(13, 1, 13, '	Chandigarh', 'Chandigarh is a city and a union territory in the northern part of India that serves as the capital of the states of Punjab and Haryana. ', 'Active'),
(14, 1, 14, '	Shimla', 'Shimla is the capital of the northern Indian state of Himachal Pradesh, in the Himalayan foothills. Once the summer capital of British India, it remains the terminus of the narrow-gauge Kalka-Shimla Railway, ', 'Active'),
(15, 1, 15, '	Srinagar', ' is the largest city and the summer capital of the Indian state of Jammu and Kashmir. It lies on the banks of the Jhelum River, a tributary of the Indus, and Dal and Anchar lakes. ', 'Active'),
(16, 1, 16, '	Ranchi', 'Ranchi is the capital of the Indian state of Jharkhand, and its third most populous city of the state.', 'Active'),
(17, 1, 18, 'Thiruvananthapuram', 'Thiruvananthapuram  is the capital of the southern Indian state of Kerala.', 'Active'),
(18, 1, 19, '	Bhopal', 'Bhopal is the capital of the Indian state of Madhya Pradesh and the administrative headquarters of Bhopal district and Bhopal division. The city was the capital of the former Bhopal State.', 'Active'),
(19, 1, 20, '	Mumbai', 'Mumbai, formerly called Bombay, is a sprawling, densely populated city on Indiaâ€™s west coast. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to Shiva', 'Active'),
(20, 1, 21, '	Imphal', 'The city of Imphal is the capital of the Indian state of Manipur. The ruins of the Palace of Kangla, the royal seat of the erstwhile Kingdom of Manipur, are in the city centre, surrounded by a moat.', 'Active'),
(21, 1, 22, '	Shillong', 'Shillong is the capital and hill station of Meghalaya, also known as \"The Abode of Clouds\", one of the smallest states in India', 'Active'),
(22, 1, 23, '	Aizawl', 'Aizawl is the capital of the state of Mizoram in India. With a resident population of 293,416, it is the largest city in the state.', 'Active'),
(23, 1, 25, '	Bhubaneswar', 'Bhubaneswar, also spelt as Bhubaneshwar /ËŒbÊŠbÉ™ËˆneÉªÊƒwÉ™r/, is the capital of the Indian state of Odisha. The city has a history of over 3,000 years starting with the Mahamegha-bahana Chedi dynasty which had its capital at Sisupalgarh, nearby.', 'Active'),
(24, 1, 26, '	Chandigarh', 'Chandigarh is a city and a union territory in the northern part of India that serves as the capital of the states of Punjab and Haryana. As a union territory, the city is ruled directly by the Union Government and is not part of either state.', 'Active'),
(25, 1, 27, '	Jaipur', 'Jaipur, the capital of Indiaâ€™s Rajasthan state, evokes the royal family that once ruled the region and that, in 1727, founded what is now called the Old City, or â€œPink Cityâ€ for its trademark building color. ', 'Active'),
(26, 1, 28, '	Gangtok', 'Gangtok is the capital of the northern Indian state of Sikkim. Established as a Buddhist pilgrimage site in the 1840s, the city became capital of an independent monarchy after British rule ended, but joined India in 1975. ', 'Active'),
(27, 1, 29, 'Chennai', 'Chennai, on the Bay of Bengal in eastern India, is the capital of the Tamil Nadu state. Its home to Fort St. George, built in 1644 and now a museum showcasing the citys roots as a British military garrison', 'Active'),
(28, 1, 30, 'Hyderabad', 'Hyderabad is the capital of southern Indias Telangana state. A major center for the technology industry, its home to many upscale restaurants and shops. ', 'Active'),
(29, 1, 31, '	Agartala', 'Agartala /É™É¡É™rtÉ™ËˆlÉ‘Ë/ is the capital as well as the largest city of the Indian state of Tripura and also is the second largest city in North-east India after Guwahati, both in municipal area and population.', 'Active'),
(30, 1, 32, '	Lucknow', 'Lucknow is the capital city of the state of Uttar Pradesh, India A major metropolitan city of India,', 'Active'),
(31, 1, 33, '	Dehradun', ' is the capital city of the state of Uttarakhand in the northern part of India.', 'Active'),
(32, 1, 34, 'Kolkata', ' is the capital of Indias West Bengal state. Founded as an East India Company trading post', 'Active'),
(33, 2, 37, 'Montgomery', ' is the capital of the U.S. state of Alabama and is the county seat of Montgomery County.', 'Active'),
(34, 2, 38, 'Juneau', ' Its a popular cruise-ship stop,', 'Active'),
(35, 2, 39, 'Phoenix', ' is the capital, and largest city, of the U.S. state of Arizona. With 1,445,632 people ', 'Active'),
(36, 2, 40, 'Little Rock', 'Little Rock is the capital and the most populous city of the U.S. state of Arkansas. It is also the county seat of Pulaski County. ', 'Active'),
(37, 2, 41, 'Sacramento', 'Sacramento is the capital city of the U.S. state of California and the seat of government of Sacramento County.', 'Active'),
(38, 2, 42, 'Denver', 'Denver, the capital of Colorado, is an American metropolis dating to the Old West era', 'Active'),
(39, 2, 43, 'Hartford', 'Hartford is the capital of Connecticut and the historic seat of Hartford County until Connecticut disbanded county government in 1960.', 'Active'),
(40, 3, 44, 'Vostochnoe Degunino', 'Vostochnoe Degunino is located in Russia and time zone Europe/Moscow. Places in the near are Altufâ€™yevskiy, Vagonoremont and Zapadnoye Degunino.', 'Active'),
(41, 3, 45, '	Murmansk', 'Murmansk is a port city and the administrative center of Murmansk Oblast, Russia, located in the extreme northwest part of Russia, on the Kola Bay, an inlet of the Barents Sea on the northern shore', 'Active'),
(42, 3, 47, '	Nizhniy Novgorod', 'Nizhny Novgorod, colloquially shortened to Nizhny, is, with a population of 1,250,619, the fifth-largest city in Russia and the administrative center of Nizhny Novgorod Oblas', 'Active'),
(43, 5, 48, 'Hefei', 'Hefei, formerly known as Hofei, Luzhou, or Luchow, is the capital and largest city of Anhui Province in Eastern China', 'Active'),
(44, 5, 49, 'Fujian', 'Fujian is a southeastern Chinese province known for its mountains and coastal cities', 'Active'),
(45, 5, 50, 'Lanzhou', 'Lanzhou is the capital and largest city of Gansu Province in Northwest China.', 'Active'),
(46, 5, 51, 'Guangzhou', 'Guangzhou is a sprawling port city northwest of Hong Kong on the Pearl River.', 'Active'),
(47, 5, 52, '	Guiyang', 'GuÃ¬yÃ¡ng is the capital of Guizhou province of Southwest China.', 'Active'),
(48, 5, 53, 'Haikou', 'Haikou, the capital of Chinas island province Hainan', 'Active'),
(49, 6, 54, 'Stuttgart', 'Stuttgart is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(50, 6, 55, '	Munich', ' Munich is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(51, 6, 57, 'Potsdam', 'Potsdam is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(52, 6, 60, 'Wiesbaden', 'Wiesbaden is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(53, 1, 17, 'Bangalore', 'Bangalore is the capital of Indias southern Karnataka state. The center of Indias hightech industry, the city is also known for its green spaces and nightlife', 'Active'),
(54, 1, 8, 'Anantapur', '', 'Active'),
(55, 1, 8, 'East Godavari', '', 'Active'),
(56, 1, 8, 'Guntur	', '', 'Active'),
(57, 1, 8, 'Kadapa	', '', 'Active'),
(58, 1, 8, 'Krishna	', '', 'Active'),
(59, 1, 8, 'Kurnool', '', 'Active'),
(60, 1, 24, 'Nellore', '', 'Active'),
(61, 1, 8, 'Prakasam', '', 'Active'),
(62, 1, 8, 'Srikakulam	', '', 'Active'),
(63, 1, 8, 'Vizianagaram', '', 'Active'),
(64, 1, 8, 'West Godavari', '', 'Active'),
(65, 1, 9, '	Anjaw', '', 'Active'),
(66, 1, 9, '	Changlang', '', 'Active'),
(67, 1, 9, '	East Kameng', '', 'Active'),
(68, 1, 9, 'East Siang', '', 'Active'),
(69, 1, 9, '	Lohit', '', 'Active'),
(70, 1, 9, '	Longding', '', 'Active'),
(71, 1, 9, 'Lower Subansiri', '', 'Active'),
(72, 1, 9, '	Papum Pare', '', 'Active'),
(73, 1, 9, 'Tawang', '', 'Active'),
(74, 1, 9, 'Tirap', '', 'Active'),
(75, 1, 9, '	Lower Dibang Valley', '', 'Active'),
(76, 1, 9, '	Upper Siang', '', 'Active'),
(77, 1, 9, '	West Kameng', '', 'Active'),
(78, 1, 9, '	West Siang', '', 'Active'),
(79, 1, 9, '	Upper Dibang Valley', '', 'Active'),
(80, 1, 9, '	Kurung Kumey', '', 'Active'),
(81, 1, 9, '	Namsai', '', 'Active'),
(82, 1, 9, '	Kra Daadi', '', 'Active'),
(83, 1, 10, '	Baksa', '', 'Active'),
(84, 1, 10, '	Barpeta', '', 'Active'),
(85, 1, 10, '	Bongaigaon', '', 'Active'),
(86, 1, 10, 'Cachar	', '', 'Active'),
(87, 1, 10, '	Chirang', '', 'Active'),
(88, 1, 10, 'Darrang', '', 'Active'),
(89, 1, 10, '	Dhemaji', '', 'Active'),
(90, 1, 10, '	Dhubri', '', 'Active'),
(91, 1, 10, '	Dibrugarh', '', 'Active'),
(92, 1, 10, '	Dima Hasao', '', 'Active'),
(93, 1, 35, '	Araria', '', 'Active'),
(94, 1, 35, '	Arwal', '', 'Active'),
(95, 1, 35, '	Aurangabad', '', 'Active'),
(96, 1, 35, '	Banka', '', 'Active'),
(97, 1, 35, '	Begusarai', '', 'Active'),
(98, 1, 35, '	Bhagalpur', '', 'Active'),
(99, 1, 35, '	Bhojpur', '', 'Active'),
(100, 1, 35, '	Buxar', '	', 'Active'),
(101, 1, 35, '	Darbhanga', '', 'Active'),
(102, 1, 35, 'East Champaran', '', 'Active'),
(103, 1, 35, '	Gaya', '', 'Active'),
(104, 1, 11, 'Balod', '', 'Active'),
(105, 1, 11, 'Baloda Bazar', '', 'Active'),
(106, 1, 11, 'Balrampuir', '', 'Active'),
(107, 1, 11, 'Bastar', '', 'Active'),
(108, 1, 11, 'Bemetara', '', 'Active'),
(109, 1, 11, 'Bijapur', '', 'Active'),
(110, 1, 11, 'Bilaspur', '', 'Active'),
(111, 1, 11, 'Danteswada', '', 'Active'),
(112, 1, 11, 'Dhamtari', '', 'Active'),
(113, 1, 11, 'Durg', '', 'Active'),
(114, 1, 11, 'Jashpur', '', 'Active'),
(115, 1, 11, 'Kanker', '', 'Active'),
(116, 1, 11, 'Kandagoan', '', 'Active'),
(117, 1, 11, 'Korba', '', 'Active'),
(118, 1, 11, 'Koriya', '', 'Active'),
(119, 1, 61, 'Central Delhi', '', 'Active'),
(120, 1, 61, 'East Delhi', '', 'Active'),
(121, 1, 61, 'New Delhi', '', 'Active'),
(122, 1, 61, 'North Delhi', '', 'Active'),
(123, 1, 61, 'North East Delhi', '', 'Active'),
(124, 1, 61, 'South Delhi', '', 'Active'),
(125, 1, 61, 'South West Delhi', '', 'Active'),
(126, 1, 61, 'West Delhi', '', 'Active'),
(127, 1, 12, 'North Goa', '', 'Active'),
(128, 1, 12, 'South Goa', '', 'Active'),
(129, 1, 36, 'Ahmedabad', '', 'Active'),
(130, 1, 36, 'Amrelli District', '', 'Active'),
(131, 1, 36, 'Dang', '', 'Active'),
(132, 1, 36, 'Gandhinagar', '', 'Active'),
(133, 1, 36, 'Jamnagar', '', 'Active'),
(134, 1, 36, 'Junagadh', '', 'Active'),
(135, 1, 36, 'Kheda', '', 'Active'),
(136, 1, 36, 'Kutch', '', 'Active'),
(137, 1, 36, 'Anand', '', 'Active'),
(138, 1, 36, 'Aravalli', '', 'Active'),
(139, 1, 36, 'Banaskantha', '', 'Active'),
(140, 1, 36, 'Bharuch', '', 'Active'),
(141, 1, 36, 'Bhavnagar', '', 'Active'),
(142, 1, 36, 'Dahod', '', 'Active'),
(143, 1, 36, 'Mahisagar', '', 'Active'),
(144, 1, 13, 'Ambala', '', 'Active'),
(145, 1, 13, 'Bhiwani', '', 'Active'),
(146, 1, 13, 'Faridabad', '', 'Active'),
(147, 1, 13, 'Gurgaon', '', 'Active'),
(148, 1, 36, 'Hissar', '', 'Active'),
(149, 1, 14, 'Bilaspur', '', 'Active'),
(150, 1, 14, 'Chamba', '', 'Active'),
(151, 1, 14, 'Hamirpur', '', 'Active'),
(152, 1, 14, 'Kangra', '', 'Active'),
(153, 1, 14, 'Kinnaur', '', 'Active'),
(154, 1, 14, 'Kullu', '', 'Active'),
(155, 1, 14, 'Lahaul and Spiti', '', 'Active'),
(156, 1, 14, 'Mandi', '', 'Active'),
(157, 1, 14, 'Shimla', '', 'Active'),
(158, 1, 14, 'Sirmaur', '', 'Active'),
(159, 1, 14, 'Una', '', 'Active'),
(160, 1, 15, 'Anantnag', '', 'Active'),
(161, 1, 15, 'Bandipora', '', 'Active'),
(162, 1, 15, 'Baramulla', '', 'Active'),
(163, 1, 15, 'Badgam', '', 'Active'),
(164, 1, 15, 'Doda', '', 'Active'),
(165, 1, 15, 'Jammu', '', 'Active'),
(166, 1, 15, 'Kargil', '', 'Active'),
(167, 1, 15, 'Poonch', '', 'Active'),
(168, 1, 16, 'Bokaro', '', 'Active'),
(169, 1, 16, 'Chalra', '', 'Active'),
(170, 1, 16, 'Dhanbad', '', 'Active'),
(171, 1, 16, 'Dumka', '', 'Active'),
(172, 1, 16, 'Gumla', '', 'Active'),
(173, 1, 16, 'Godda', '', 'Active'),
(174, 1, 17, 'Bagalokot', '', 'Active'),
(175, 1, 17, 'Bellary', '', 'Active'),
(176, 1, 17, 'Belgaum', '', 'Active'),
(177, 1, 17, 'Bidar', '', 'Active'),
(178, 1, 17, 'Chikkaballapur', '', 'Active'),
(179, 1, 17, 'Chitradurga', '', 'Active'),
(180, 1, 17, 'Kodagu', '', 'Active'),
(181, 1, 17, 'Hassan', '', 'Active'),
(182, 1, 18, 'Kolar', '', 'Active'),
(183, 1, 17, 'Gulbarga', '', 'Active'),
(184, 1, 17, 'Chamrajnagar', '', 'Active'),
(185, 1, 17, 'Mysore', '', 'Active'),
(187, 1, 17, 'Mandya', '', 'Active'),
(188, 1, 17, 'Raichur', '', 'Active'),
(189, 1, 17, 'Shimoga', '', 'Active'),
(190, 1, 17, 'Tumkur', '', 'Active'),
(191, 1, 17, 'Udupi', '', 'Active'),
(192, 1, 17, 'Uttara', '', 'Active'),
(193, 1, 17, 'yadgir', '', 'Active'),
(194, 1, 17, 'Haveri', '', 'Active'),
(195, 1, 18, 'Alappuzha', '', 'Active'),
(196, 1, 18, 'Ernakulam', '', 'Active'),
(197, 1, 18, 'Idukki', '', 'Active'),
(198, 1, 18, 'Kannur', '', 'Active'),
(199, 1, 18, 'Kasargod', '', 'Active'),
(200, 1, 18, 'Kollam', '', 'Active'),
(201, 1, 18, 'Kottayam', '', 'Active'),
(202, 1, 18, 'Kozhikode', '', 'Active'),
(203, 1, 18, 'Malappuram', '', 'Active'),
(204, 1, 18, 'Palakkad', '', 'Active'),
(205, 1, 18, 'Thrissur', '', 'Active'),
(206, 1, 24, 'Dimapur', '', 'Active'),
(207, 1, 24, 'Kiphire', '', 'Active'),
(208, 1, 24, 'Kohima', '', 'Active'),
(209, 1, 19, 'Longleng', '', 'Active'),
(210, 1, 24, 'Peren', '', 'Active'),
(211, 1, 24, 'Phek', '', 'Active'),
(212, 1, 24, 'Tuensang', '', 'Active'),
(213, 1, 24, 'Wokha', '', 'Active'),
(214, 1, 25, 'Angul', '', 'Active'),
(215, 1, 25, 'Beudh', '', 'Active'),
(216, 1, 25, 'Bhadrak', '', 'Active'),
(217, 1, 25, 'Bargarh', '', 'Active'),
(218, 1, 25, 'Cuttack', '', 'Active'),
(219, 1, 25, 'Ganjam', '', 'Active'),
(220, 1, 25, 'Gajapati', '', 'Active'),
(221, 1, 25, 'Puri', '', 'Active'),
(222, 1, 26, 'Amritsar', '', 'Active'),
(223, 1, 26, 'Barnala', '', 'Active'),
(224, 1, 26, 'Bathinda', '', 'Active'),
(225, 1, 26, 'Faridkot', '', 'Active'),
(226, 1, 26, 'Fazika', '', 'Active'),
(227, 1, 26, 'Gurdaspur', '', 'Active'),
(228, 1, 26, 'Hoshiarpur', '', 'Active'),
(229, 1, 26, ' Moga', '', 'Active'),
(230, 1, 62, 'Karaikal', '', 'Active'),
(231, 1, 62, 'Mahe', '', 'Active'),
(232, 1, 62, 'Yanam', '', 'Active'),
(233, 1, 27, 'Ajmer', '', 'Active'),
(234, 1, 27, 'Alwar', '', 'Active'),
(235, 1, 27, 'Bikaner', '', 'Active'),
(236, 1, 27, 'Baran', '', 'Active'),
(237, 1, 27, 'Jaipur', '', 'Active'),
(238, 1, 27, 'Sirohi', '', 'Active'),
(239, 1, 27, 'Sikar', '', 'Active'),
(240, 1, 29, 'Ariyalur', '', 'Active'),
(241, 1, 29, 'Coimbatore', '', 'Active'),
(242, 1, 29, 'Cuddalore', '', 'Active'),
(243, 1, 29, 'Dharmapuri', '', 'Active'),
(244, 1, 29, 'Dindigul', '', 'Active'),
(245, 1, 29, 'Erode', '', 'Active'),
(246, 1, 29, 'Kanchipuram', '', 'Active'),
(247, 1, 29, 'Kanyakumari', '', 'Active'),
(248, 1, 29, 'Karur', '', 'Active'),
(249, 1, 29, 'Krishnagiri', '', 'Active'),
(250, 1, 29, 'Madurai', '', 'Active'),
(251, 1, 31, 'Dhalai', '', 'Active'),
(252, 1, 31, 'Gomati', '', 'Active'),
(253, 1, 31, 'Khowai', '', 'Active'),
(254, 1, 31, 'North Tripura', '', 'Active'),
(255, 1, 31, 'Unokoti', '', 'Active'),
(256, 1, 31, 'West Tripura', '', 'Active'),
(257, 1, 30, 'Adilabad', '', 'Active'),
(258, 1, 30, 'Karimnagar', '', 'Active'),
(259, 1, 30, 'Khammam', '', 'Active'),
(260, 1, 30, 'Mahbubnagar', '', 'Active'),
(261, 1, 30, 'Medak', '', 'Active'),
(262, 1, 30, 'Nalgonda', '', 'Active'),
(263, 1, 30, 'Nizamabad', '', 'Active'),
(264, 1, 30, 'Warangal', '', 'Active'),
(265, 1, 32, 'Agra', '', 'Active'),
(266, 1, 32, 'Aligarh', '', 'Active'),
(267, 1, 32, 'Allahabad', '', 'Active'),
(268, 1, 32, 'Ambedkar Nagar', '', 'Active'),
(269, 1, 32, 'Bagpat', '', 'Active'),
(270, 1, 32, 'Bahraich', '', 'Active'),
(271, 1, 32, 'Ballia', '', 'Active'),
(272, 1, 32, 'Fatehpur', '', 'Active'),
(273, 1, 32, 'Gonda', '', 'Active'),
(274, 1, 32, 'Hardoi', '', 'Active'),
(275, 1, 32, 'Jhansi', '', 'Active'),
(276, 1, 33, 'Almora', '', 'Active'),
(277, 1, 33, 'Bageshwar', '', 'Active'),
(278, 1, 33, 'Chamoli', '', 'Active'),
(279, 1, 33, 'Champawat', '', 'Active'),
(280, 1, 33, 'Haridwar', '', 'Active'),
(281, 1, 33, 'Rudraprayag', '', 'Active'),
(282, 1, 34, 'Nadia', '', 'Active'),
(283, 1, 34, 'Bankura', '', 'Active'),
(284, 1, 34, 'Bardhaman', '', 'Active'),
(285, 1, 34, 'Birbhum', '', 'Active'),
(286, 1, 34, 'Cooch Behar', '', 'Active'),
(287, 1, 34, 'Dakshin Dinajpur', '', 'Active'),
(288, 1, 34, 'Hooghly', '', 'Active'),
(289, 1, 34, 'Maldah', '', 'Active'),
(290, 1, 34, 'Purullia', '', 'Active'),
(291, 1, 17, 'Puttur', 'Puttur city', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `comment`) VALUES
(1, 'Neeraj', 'ui21cs35@iiitsurat.ac.in', 'This is the first comment...!');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country`, `description`, `status`) VALUES
(1, 'India', 'India, officially the Republic of India  is a country in South Asia. It is the seventh-largest country by area, the second-most populous country with over 1.2 billion people, and the most populous democracy in the world. ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country_id` int(255) NOT NULL,
  `state_id` int(255) NOT NULL,
  `city_id` int(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customer_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `country_id`, `state_id`, `city_id`, `pincode`, `contact_no`, `mobile_no`, `email_id`, `password`, `customer_type`, `status`) VALUES
(9, 'Neeraj Srinivas', 'Hyderabad, Telangana, 500050', 1, 30, 28, '500050', '9010900343', '8247302611', 'neerajm.2002@gmail.com', 'Neeraj@123', 'Wholesaler', 'Active'),
(10, 'Neeraj Srinivas', 'S. N. Street,\r\nKurnool, 518001,\r\nAndhra Pradesh, India.', 1, 8, 59, '518001', '8247302611', '8247302611', 'ui21cs35@iiitsurat.ac.in', 'Neeraj@123', 'Consumer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_bill`
--

CREATE TABLE `product_purchase_bill` (
  `product_purchase_bill_id` int(255) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `country_id` int(255) NOT NULL,
  `state_id` int(255) NOT NULL,
  `city_id` int(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `customer_contact_number` varchar(255) NOT NULL,
  `purchase_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_description` text NOT NULL,
  `seller_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_record`
--

CREATE TABLE `product_purchase_record` (
  `purchase_record_id` int(255) NOT NULL,
  `product_purchase_bill_id` int(255) NOT NULL,
  `selling_prod_id` int(255) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `cost` float(100,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `seller_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(255) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `seller_address` text NOT NULL,
  `state_id` int(255) NOT NULL,
  `country_id` int(255) NOT NULL,
  `city_id` int(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_branch` varchar(255) NOT NULL,
  `bank_IFSC` varchar(255) NOT NULL,
  `bank_acno` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_name`, `seller_address`, `state_id`, `country_id`, `city_id`, `pincode`, `contact_number`, `mobile_no`, `email_id`, `password`, `bank_name`, `bank_branch`, `bank_IFSC`, `bank_acno`, `status`) VALUES
(4, 'Neeraj Srinivas', 'Kurnool, Andhra Pradesh.', 8, 1, 59, '518001', '9010900343', '8247302611', 'neerajm.2002@gmail.com', 'Neeraj@123', 'ICICI Bank', 'Kurnool', 'ICICI518001', '1234567890123456', 'Active'),
(5, 'Neeraj Srinivas', 'S. N. Street,\r\nKurnool, 518001, \r\nAndhra Pradesh, India.', 8, 1, 59, '518001', '8247302611', '8247302611', 'ui21cs35@iiitsurat.ac.in', 'Neeraj@123', 'Canara Bank', 'Kamrej', '12345678901', '1234567890123456', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `selling_product`
--

CREATE TABLE `selling_product` (
  `selling_prod_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_img1` varchar(255) NOT NULL,
  `product_img2` varchar(255) NOT NULL,
  `product_img3` varchar(255) NOT NULL,
  `product_img4` varchar(255) NOT NULL,
  `product_img5` varchar(255) NOT NULL,
  `quantity_type` varchar(255) NOT NULL,
  `cost` float(100,2) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(255) NOT NULL,
  `country_id` int(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state`, `description`, `status`) VALUES
(3, 4, 'Kainuu', 'Kainuu is one of the 19 Regions of Finland . There are 18 regions in mainland Finland, and the autonomous Ã…land Islands. Kainuu borders the regions of Northern Ostrobothnia, North Karelia and Northern Savonia. In the east it also borders Russia.', 'Active'),
(4, 3, 'North Karelia', 'North Karelia is a region in eastern Finland. It borders the regions of Kainuu, Northern Savonia, Southern Savonia and South Karelia, as well as Russia. ', 'Active'),
(5, 4, 'Northern Savonia', 'Northern Savonia is a region in eastern Finland. Kuopio is the largest city in the region. ', 'Active'),
(6, 4, 'Southern Savonia', 'Southern Savonia is a region in the south-east of Finland. It borders on the regions Northern Savonia, North Karelia, South Karelia, Kymenlaakso, PÃ¤ijÃ¤nne Tavastia, and Central Finland. ', 'Active'),
(7, 4, '	Southern Ostrobothnia', 'Southern Ostrobothnia is one of the 19 regions of Finland. SeinÃ¤joki is the regional centre and by far the largest city in the area.', 'Active'),
(8, 1, 'Andhra Pradesh', 'Andhra Pradesh is a state bordering Indias southeastern coast. Tropical forests, rivers, hills and caves make it a popular ecotourism destination. Beaches line the Bay of Bengal, offering spots for swimming and surfing. Major cultural landmarks include ', 'Active'),
(9, 1, 'Arunachal Pradesh', ' it holds the most north-eastern position among the states in the north-east region of India.', 'Active'),
(10, 1, 'Assam', 'Assam is a state in Northeast India. Located south of the eastern Himalayas, Assam comprises the Brahmaputra Valley and the Barak Valley along with the Karbi Anglong and Dima Hasao districts with an area of 30,285 square miles. ', 'Active'),
(11, 1, 'Chhattisgarh', 'Chhattisgarh is a state in central India. It is the 10th largest state in India, with an area of 135,194 kmÂ². With a population of 25.5 million, Chhattisgarh is the 16th most-populated state of the nation.', 'Active'),
(12, 1, 'Goa', 'Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved', 'Active'),
(13, 1, 'Haryana', 'Haryana is a North Indian state surrounding New Delhi on 3 sides. The Yamuna River runs along its eastern border with Uttar Pradesh. Shared with Punjab, the state capital', 'Active'),
(14, 1, 'Himachal Pradesh', 'Himachal Pradesh, a northern Indian state in the Himalayas, is known for its trekking, climbing and skiing, and scenic mountain towns and resorts such as Dalhousie. Host to the Dalai Lama, Himachal Pradesh also has a strong Tibetan presence, reflected in its Buddhist temples and monasteries, cuisine heavy on noodles and dumplings, and vibrant Tibetan New Year celebrations.', 'Active'),
(15, 1, 'Jammu and Kashmir', 'Jammu and Kashmir is a state in northern India. It is located mostly in the Himalayan mountains, and shares a border with the states of Himachal Pradesh and Punjab to the south', 'Active'),
(16, 1, 'Jharkhand', 'Jharkhand is a state in eastern India carved out of the southern part of Bihar on 15 November 2000. The state shares its border with the states of Bihar to the north,', 'Active'),
(17, 1, 'Karnataka', 'Karnataka is a state in southwest India with Arabian Sea coastlines. The capital, Bengaluru (formerly Bangalore), is a high-tech hub known for its shopping and nightlife. To the southwest, Mysore is home to lavish temples including Mysore Palace, former seat of the regionâ€™s maharajas. Hampi, once the medieval Vijayanagara empireâ€™s capital, contains ruins ', 'Active'),
(18, 1, 'Kerala', 'Kerala, a state on Indias tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. Its known for its palm-lined beaches and its backwaters, a network of canals popular for cruises. Its many upscale seaside resorts include specialists in Ayurvedic treatments.', 'Active'),
(19, 1, 'Madhya Pradesh', 'Madhya Pradesh, a large state in central India, retains landmarks from eras throughout Indian history. Begun in the 10th century, its Hindu and Jain temples at Khajuraho are renowned for their carvings of erotic scenes, most prominently Kandariya Mahadeva, a temple with more than 800 sculptures', 'Active'),
(20, 1, 'Maharashtra', 'Maharashtra, a state spanning west-central India, is best known for its fast-paced capital, Mumbai (formerly Bombay). This sprawling metropolis is the seat of the Bollywood film industry. Itâ€™s also famed for sites like the British Raj-era Gateway of India monument and the cave temples at nearby Elephanta Island. To the south is the rustic, beach-lined Konkan coast, and its temple town of Ganpatipule.', 'Active'),
(21, 1, 'Manipur', 'Manipur is a state in northeastern India, with the city of Imphal as its capital. Manipur is sometimes called alternative names such as Kangleipak or Sanaleibak', 'Active'),
(22, 1, 'Meghalaya', 'Meghalaya is a state in north-east India. The name means \"the abode of clouds\" in Sanskrit.', 'Active'),
(23, 1, 'Mizoram', 'Mizoram is one of the states of Northeast India, with Aizawl as its capital.', 'Active'),
(24, 1, 'Nagaland', 'Nagaland /ËˆnÉ‘ËÉ¡É™lÃ¦nd/ is a state in Northeast India. It borders the state of Assam to the west, Arunachal Pradesh and part of Assam to the north, Burma to the east and Manipur to the south. ', 'Active'),
(25, 1, 'Orissa', 'Odisha (formerly Orissa), an eastern Indian state on the Bay of Bengal, is known for its tribal cultures and its many ancient Hindu temples.', 'Active'),
(26, 1, 'Punjab', 'Punjab, a state bordering Pakistan, is the heart of Indiaâ€™s Sikh community. Its city of Amritsar, founded in 1577 by Sikh guru Ram Das, is the site of Harmandir Sahib, the holiest gurdwara (Sikh temple). Pilgrims visit its gilded Hari Mandir sanctuary and bathe in the surrounding Pool of Nectar. Also in Amritsar is Durgiana Temple, a Hindu shrine with engraved silver doors.', 'Active'),
(27, 1, '	Rajasthan', 'Rajasthan is a northern Indian state bordering Pakistan. Its palaces and forts are reminders of the many kingdoms that historically vied for the region. In its capital, Jaipur, are the 18th-century City Palace and Hawa Mahal, a former cloister for royal women, fronted by a 5-story sandstone screen. Amer Fort, atop a nearby hill, was built by a Rajput prince in the 1600s.', 'Active'),
(28, 1, 'Sikkim', 'Sikkim is a small state in northwest India, bordered by Bhutan, Tibet and Nepal. Part of the Himalayas, the area has a dramatic landscape including Indiaâ€™s highest mountain, 8,586m Kanchenjunga. Sikkim is also home to glaciers, alpine meadows and thousands of varieties of wildflowers. Steep paths lead to hilltop Buddhist monasteries such as Pemayangtse, which dates to the early 1700s.', 'Active'),
(29, 1, 'Tamil Nadu', 'Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. ', 'Active'),
(30, 1, 'Telangana', 'Telangana is a state in South India and one of the 29 states in India. It was formed on 2 June 2014 with the city of Hyderabad as its capital.', 'Active'),
(31, 1, '	Tripura', ' is a state in Northeast India. The third-smallest state in the country, it covers 10,491 kmÂ² and is bordered by Bangladesh to the north, south, and west, and the Indian states of Assam and Mizoram to the east', 'Active'),
(32, 1, 'Uttar Pradesh', 'Uttar Pradesh is a state in northern India. Its city of Agra is home to the iconic Taj Mahal monument, a colossal, domed, white-marble mausoleum honoring the wife of Mughal ruler Shah Jahan. Named Mumtaz Mahal, she died in childbirth in 1631. Nearby are the 20m-high, red-brick walls of Agra Fort, a Mughal fortress and palace dating to the 16th and 17th centuries.', 'Active'),
(33, 1, 'Uttarakhand', 'Uttarakhand, a state in northern India crossed by the Himalayas, is known for its Hindu pilgrimage sites', 'Active'),
(34, 1, 'West Bengal', 'West Bengal is a state in eastern India, between the Himalayas and the Bay of Bengal. Its capital, Kolkata retains architectural and cultural remnants of its past as an East India Company trading post and the capital of the British Raj.', 'Active'),
(35, 1, 'Bihar', 'Bihar is a state in East India, bordering Nepal. It is divided by the River Ganges, which floods its fertile plains', 'Active'),
(36, 1, 'Gujarath', 'Gujarat, Indias westernmost state, has varied terrain and numerous sacred sites.', 'Active'),
(37, 2, 'Alabama', 'Alabama is a southeastern U.S. state thats home to significant landmarks from the American Civil Rights Movement.', 'Active'),
(38, 2, 'Alaska', 'Alaska, northwest of Canada, is the largest and most sparsely populated U.S. state.', 'Active'),
(39, 2, 'Arizona', 'Arizona, a southwestern U.S. state, is best known for its reliably sunny weather and as home to the Grand Canyon, the mile-deep chasm carved by the Colorado River', 'Active'),
(40, 2, 'Arkansas', 'Arkansas is a southeastern U.S. state bordering the Mississippi River. ', 'Active'),
(41, 2, 'California', 'California, a western U.S. state, stretches from the Mexican border along the Pacific for nearly 900 miles.', 'Active'),
(42, 2, 'Colorado', 'Colorado, a western U.S. state, is known for its geographic diversity, with snow-covered mountains, arid desert lands and river canyons. ', 'Active'),
(43, 2, 'Connecticut', 'Connecticut is a southern New England state thats a mix of coastal cities and rural areas dotted with small towns', 'Active'),
(44, 3, 'Moscow Oblast', 'Moscow Oblast, or Podmoskovye, is a federal subject of Russia. Its area, at 45,900 square kilometers, is relatively small compared to other federal subjects, but it is one of the most densely populated', 'Active'),
(45, 3, 'Murmansk Oblast', 'Murmansk Oblast is a federal subject of Russia, located in the northwestern part of Russia', 'Active'),
(46, 3, 'Nenets Autonomous Okrug', 'Nenets Autonomous Okrug is a federal subject of Russia. Its administrative center is the town of NaryanMar.', 'Active'),
(47, 3, 'Nizhny Novgorod Oblast', ' colloquially shortened to Nizhny, is, with a population of 1,250,619', 'Active'),
(48, 5, 'Anhui', 'Located across the basins of the Yangtze River and the Huai River, it borders Jiangsu to the east, Zhejiang to the southeast, Jiangxi to the south, Hubei to the southwest,', 'Active'),
(49, 5, 'Fujian', 'Fujian is a southeastern Chinese province known for its mountains and coastal cities.', 'Active'),
(50, 5, 'Gansu', 'Gansu is a province of the Peoples Republic of China, located in the northwest of the country', 'Active'),
(51, 5, 'Guangdong', ' a coastal province of southeast China, borders Hong Kong and Macau. Its capital, Guangzhou', 'Active'),
(52, 5, 'Guizhou', 'Guizhou is a mountainous province in southwest China.', 'Active'),
(53, 5, 'Hainan', 'Hainan, an island province of China', 'Active'),
(54, 6, 'BadenWurttemberg', 'Baden-WÃ¼rttemberg is a state in southwest Germany bordering France and Switzerland.', 'Active'),
(55, 6, 'Bavaria', '', 'Active'),
(56, 7, 'Berlin', '', 'Active'),
(57, 6, 'Brandenburg', '', 'Active'),
(58, 6, 'Bremen', '', 'Active'),
(59, 6, 'Hamburg', '', 'Active'),
(60, 6, 'Hesse', '', 'Active'),
(61, 1, 'Delhi', '', 'Active'),
(62, 1, 'Pondicherry', '', 'Active'),
(63, 1, 'Meghalaya', 'Meghalaya', 'Active'),
(64, 0, '', '', 'Active'),
(65, 1, 'Manipur', 'Manipur', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `product_purchase_bill`
--
ALTER TABLE `product_purchase_bill`
  ADD PRIMARY KEY (`product_purchase_bill_id`);

--
-- Indexes for table `product_purchase_record`
--
ALTER TABLE `product_purchase_record`
  ADD PRIMARY KEY (`purchase_record_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `selling_product`
--
ALTER TABLE `selling_product`
  ADD PRIMARY KEY (`selling_prod_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_purchase_bill`
--
ALTER TABLE `product_purchase_bill`
  MODIFY `product_purchase_bill_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_purchase_record`
--
ALTER TABLE `product_purchase_record`
  MODIFY `purchase_record_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selling_product`
--
ALTER TABLE `selling_product`
  MODIFY `selling_prod_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
