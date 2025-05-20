-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2025 at 05:17 AM
-- Server version: 8.4.0
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uprnssor_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_hero`
--

CREATE TABLE `add_hero` (
  `sno` int NOT NULL,
  `remark` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `order_img` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_hero`
--

INSERT INTO `add_hero` (`sno`, `remark`, `img_name`, `order_img`) VALUES
(157, '', 'master_images/hero_img/157.jpg', 159),
(159, '', 'master_images/hero_img/159.jpg', 157);

-- --------------------------------------------------------

--
-- Table structure for table `add_index_notice`
--

CREATE TABLE `add_index_notice` (
  `sno` int NOT NULL,
  `notice` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_index_notice`
--

INSERT INTO `add_index_notice` (`sno`, `notice`) VALUES
(22, 'समस्त लेखाकारों एवं लेखा सहायकों/लेखा प्रभारियों की मासिक समीक्षा बैठक यू०पी०आर०एन०एस०एस० मुख्यालय पर दिनांक: 05.11.2024 को पूर्वान्ह 11.00 बजे \r\n'),
(24, 'उत्तर प्रदेश राज्य निर्माण सहकारी संघ लि० मुख्यालय पर प्रत्येक माह की भाँति समस्त अधीक्षण अभियन्ताओं / अधिशासी अभियन्ताओं / प्रखण्ड प्रभारियों की मासिक समीक्षा बैठक यू०पी०आर०एन०एस०एस० मुख्यालय पर दिनांक:14.11.2024 को पूर्वान्ह 12.00 बजे आहूत करने का निर्णय लिया गया है।');

-- --------------------------------------------------------

--
-- Table structure for table `add_notice`
--

CREATE TABLE `add_notice` (
  `sno` int NOT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `isactive` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_notice`
--

INSERT INTO `add_notice` (`sno`, `descr`, `starting_date`, `file_path`, `isactive`) VALUES
(10, '	पंजीकृत ठेकेदारो के विभिन्न श्रेणियों में उच्चीकरण का विवरण', '2023-10-18', 'notices/10.pdf', '0'),
(11, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में|', '2023-11-23', 'notices/11.jpg', '0'),
(12, 'पैकफेड इम्प्लाईज सी०पी०एफ० ट्रस्ट के चुनाव हेतु निर्देश', '2023-11-29', 'notices/12.pdf', '0'),
(13, 'पैकफेड इम्पलाईज सी०पी०एफ०ट्रस्ट चुनाव हेतु सूचना ', '2023-12-06', 'notices/13.pdf', '1'),
(14, 'जनपद-कासगंज में 100 मि०टन गोदाम किसरौली ब्लॉक-कासगंज के कार्यों हेतु की जाने वाली ई-निविदा समाचार पत्र में प्रकाशन के सम्बन्ध  में।', '2023-12-15', 'notices/14.pdf', '0'),
(15, 'पंजीकृत ठेकेदारो की विभिन्न श्रेणी मे उच्चीकारण पात्रता सूची ', '2023-12-19', 'notices/15.pdf', '1'),
(16, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में|', '2024-02-19', 'notices/16.jpg', '0'),
(17, 'ठेकेदारो के पंजीकरण / सूचीबद्धता हेतु सूचना ', '2024-01-29', 'notices/17.jpeg', '0'),
(18, 'ठेकेदारो के पंजीकरण / सूचीबद्धता हेतु सूचना', '2024-01-30', 'notices/18.jpeg', '0'),
(19, 'फीडर लाइन सब स्टेशन के कार्य हेतु  पंजीकरण हेतु आवेदन पत्र का प्रारूप ', '2024-02-03', 'notices/19.pdf', '0'),
(20, 'ठेकेदारो के पंजीकरण हेतु आवेदन पत्र का प्रारूप एव  नियमावली ', '2024-02-03', 'notices/20.pdf', '0'),
(21, 'विशिष्ट  कार्य हेतु पंजीकरण हेतु आवेदन पत्र का प्रारूप', '2024-02-03', 'notices/21.pdf', '0'),
(22, 'ठेकेदारो के पंजीकरण की  सूचीबद्धता के अवधि बढ़ाए जाने हेतु ', '2024-02-22', 'notices/22.jpg', '0'),
(23, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में|', '2024-04-01', 'notices/23.jpg', '0'),
(24, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में|', '2024-04-30', 'notices/24.pdf', '0'),
(25, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में|', '2024-06-04', 'notices/25.jpeg', '0'),
(26, 'ठेकेदारों की निविदा न्यूनतम आने पर एए-श्रेणी में पंजीकृत किये जाने की सूचना', '2024-06-26', 'notices/26.jpg', '1'),
(27, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में ', '2024-06-26', 'notices/27.pdf', '0'),
(28, 'ठेकेदारो के पंजीकरण / सूचीबद्धता हेतु सूचना', '2024-07-08', 'notices/28.jpg', '1'),
(29, 'ठेकेदारो के पंजीकरण हेतु आवेदन पत्र का प्रारूप एव नियमावली', '2024-07-08', 'notices/29.pdf', '1'),
(30, 'विशिष्ट कार्य हेतु पंजीकरण हेतु आवेदन पत्र का प्रारूप', '2024-07-08', 'notices/30.pdf', '1'),
(31, 'फीडर लाइन सब स्टेशन के कार्य हेतु पंजीकरण हेतु आवेदन पत्र का प्रारूप', '2024-07-08', 'notices/31.pdf', '1'),
(34, 'वास्तुविद /स्ट्रक्चरल  पंजीकरण /सूचीबद्धता हेतु सूचना एवं प्रारूप ', '2024-07-10', 'notices/34.pdf', '1'),
(35, ' 	समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में ', '2024-07-15', 'notices/35.jpeg', '0'),
(36, 'संस्था मे पंजीकरण हेतु प्राप्त आवेदनो  के सापेक्ष उपयुक्त / अनुपयुक्त  पाये गए ठेकेदारो की  सूची', '2024-07-12', 'notices/36.pdf', '1'),
(37, 'वास्तुविद /स्ट्रक्चरल पंजीकरण /सूचीबद्धता हेतु सूचना', '2024-07-24', 'notices/37.pdf', '1'),
(38, 'ठेकेदारो के पंजीकरण हेतु आवेदन हेतु सूचना', '2024-07-24', 'notices/38.jpeg', '1'),
(39, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में ', '2024-07-29', 'notices/39.jpeg', '0'),
(40, ' 	समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में ', '2024-08-28', 'notices/40.jpeg', '1'),
(41, 'विभिन्न श्रेणी में पाए गए आहर्य आवेदन कर्ताओं की सूची', '2024-08-29', 'notices/41.pdf', '1'),
(42, 'संस्था मे पंजीकरण हेतु प्राप्त आवेदनो के सापेक्ष उपयुक्त / अनुपयुक्त पाये गए ठेकेदारो की सूची', '2024-09-25', 'notices/42.pdf', '0'),
(43, 'संस्था मे पंजीकरण हेतु प्राप्त आवेदनो के सापेक्ष उपयुक्त पाये गए ठेकेदारो की सूची', '2024-10-24', 'notices/43.pdf', '1'),
(44, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में ', '2024-10-30', 'notices/44.jpg', '1'),
(45, 'समस्त अधीक्षण अभियन्ताओं / प्रखण्ड प्रभारियों / लेखा प्रभारियों की मासिक समीक्षा बैठक के सम्बन्ध में', '2024-11-14', 'notices/45.pdf', '1');

-- --------------------------------------------------------

--
-- Table structure for table `add_photos`
--

CREATE TABLE `add_photos` (
  `sno` int NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `img_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `add_photos`
--

INSERT INTO `add_photos` (`sno`, `remark`, `img_name`) VALUES
(34, '', 'gallery/34.jpg'),
(35, '', 'gallery/35.jpg'),
(36, '', 'gallery/36.jpg'),
(37, '', 'gallery/37.jpg'),
(38, '', 'gallery/38.jpg'),
(39, '', 'gallery/39.jpg'),
(40, '', 'gallery/40.jpg'),
(41, '', 'gallery/41.jpg'),
(42, '', 'gallery/42.jpg'),
(43, '', 'gallery/43.jpg'),
(44, '', 'gallery/44.jpg'),
(45, '', 'gallery/45.jpg'),
(46, '', 'gallery/46.jpg'),
(47, '', 'gallery/47.jpg'),
(48, '', 'gallery/48.jpg'),
(49, '', 'gallery/49.jpg'),
(50, '', 'gallery/50.jpg'),
(51, '', 'gallery/51.jpg'),
(52, '', 'gallery/52.jpg'),
(53, '', 'gallery/53.jpg'),
(54, '', 'gallery/54.jpg'),
(55, '', 'gallery/55.jpg'),
(56, '', 'gallery/56.jpg'),
(57, '', 'gallery/57.jpg'),
(58, '', 'gallery/58.jpg'),
(59, '', 'gallery/59.jpg'),
(60, '', 'gallery/60.jpg'),
(61, '', 'gallery/61.jpg'),
(62, '', 'gallery/62.jpg'),
(63, '', 'gallery/63.jpg'),
(65, '', 'gallery/65.jpg'),
(66, '', 'gallery/66.jpg'),
(67, '', 'gallery/67.jpg'),
(68, '', 'gallery/68.jpg'),
(69, '', 'gallery/69.jpg'),
(70, '', 'gallery/70.jpg'),
(71, '', 'gallery/71.jpg'),
(72, '', 'gallery/72.jpg'),
(73, '', 'gallery/73.jpg'),
(74, '', 'gallery/74.jpg'),
(75, '', 'gallery/75.jpg'),
(76, '', 'gallery/76.jpg'),
(77, '', 'gallery/77.jpg'),
(78, '', 'gallery/78.jpg'),
(79, '', 'gallery/79.jpg'),
(80, 'गणतंत्र दिवस', 'gallery/80.jpg'),
(83, 'संस्था में दिनांक 16-02-2024 में आयोजित प्रबंध समिति की बैठक में प्रतिभा करते सभापति श्री प्रेम सिंह शाक्य, उपसभापति आलोक कुमार सिंह, प्रबंध निदेशक श्री एक सिंह व अन्य सदस्य गण |', 'gallery/83.jpeg'),
(84, 'संस्था में दिनांक 16-02-2024 में आयोजित प्रबंध समिति की बैठक में प्रतिभा करते सभापति श्री प्रेम सिंह शाक्य, उपसभापति आलोक कुमार सिंह, प्रबंध निदेशक श्री एक सिंह व अन्य सदस्य गण |', 'gallery/84.jpeg'),
(85, 'संस्था में दिनांक 16-02-2024 में आयोजित प्रबंध समिति की बैठक में प्रतिभा करते सभापति श्री प्रेम सिंह शाक्य, उपसभापति आलोक कुमार सिंह, प्रबंध निदेशक श्री एक सिंह व अन्य सदस्य गण |', 'gallery/85.jpeg'),
(86, 'संस्था में दिनांक 16-02-2024 में आयोजित प्रबंध समिति की बैठक में प्रतिभा करते सभापति श्री प्रेम सिंह शाक्य, उपसभापति आलोक कुमार सिंह, प्रबंध निदेशक श्री एक सिंह व अन्य सदस्य गण |', 'gallery/86.jpeg'),
(87, 'संस्था में दिनांक 16-02-2024 में आयोजित प्रबंध समिति की बैठक में प्रतिभा करते सभापति श्री प्रेम सिंह शाक्य, उपसभापति आलोक कुमार सिंह, प्रबंध निदेशक श्री एक सिंह व अन्य सदस्य गण |', 'gallery/87.jpeg'),
(103, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/103.jpg'),
(104, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/104.jpg'),
(105, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/105.jpg'),
(106, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/106.jpg'),
(107, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/107.jpg'),
(108, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/108.jpg'),
(109, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/109.jpg'),
(110, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/110.jpg'),
(112, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/112.jpg'),
(113, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/113.jpg'),
(114, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/114.jpg'),
(115, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/115.jpg'),
(116, 'राष्ट्रीय कृषि विकास योजना अंतर्गत निर्माण किये जाने वाले गोदामों का वर्चुल शिलान्यास कार्यक्रम।', 'gallery/116.jpg'),
(117, 'Meeting_24_06_24', 'gallery/117.jpg'),
(118, 'Meeting_24_06_24', 'gallery/118.jpg'),
(119, 'Meeting_24_06_24', 'gallery/119.jpg'),
(120, 'Meeting_24_06_24', 'gallery/120.jpg'),
(121, 'Meeting_24_06_24', 'gallery/121.jpg'),
(122, 'Meeting_24_06_24', 'gallery/122.jpg'),
(123, 'Meeting_24_06_24', 'gallery/123.jpg'),
(124, 'Meeting_24_06_24', 'gallery/124.jpg'),
(125, 'Meeting_24_06_24', 'gallery/125.jpg'),
(126, 'Meeting_24_06_24', 'gallery/126.png'),
(127, 'Meeting_24_06_24', 'gallery/127.png'),
(128, '', 'gallery/128.jpg'),
(129, '', 'gallery/129.jpg'),
(130, '', 'gallery/130.jpg'),
(131, '', 'gallery/131.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `sno` int NOT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `school_name` varchar(500) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`sno`, `desc`, `value`, `school_name`, `address`) VALUES
(1, 'session_start_date', '2016-04-01', 'Janta Inter College', 'Ambedkar Nagar'),
(2, 'number_of_exams', '10', NULL, NULL),
(3, 'current_date', '2017-03-31', 'Janta Inter College', 'Ambedkar Nagar'),
(4, 'college_name', 'Kamla Nehru Institute Of Physical & Social Sciences,Sultanpur <p style=\"text-align:center\"> An Autonomous Institute And Accredited \"A\" Grade by NAAC </p>', NULL, NULL),
(5, 'college_address', 'An Autonomous Institute And Accredited \"A\" Grade by NAAC', NULL, NULL),
(6, 'college_phone', '+91 xxxxxx xxxxxx', NULL, NULL),
(7, 'college_website', 'www.intercollege.com', NULL, NULL),
(8, 'college_email', 'info@intercollege.com', NULL, NULL),
(9, 'college_tag_line', 'Super Inter College', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `sno` int NOT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `rate` longtext,
  `date` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_time` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edition_time` varchar(100) DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`sno`, `desc`, `rate`, `date`, `created_by`, `creation_time`, `edited_by`, `edition_time`, `admin_remarks`, `branch`) VALUES
(1, '5', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'oi_opening', '-15987.81', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'company', 'Auto Tracker', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'slogan', 'B.tech. (I.T), ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'address', 'Deonagar, Raibarily Road, Naka, Ayodhya - 224001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'contact', 'Mobile No. 9415058493', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'terms', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'bank', 'Punjab National Bank (Khawaspura) : 3973000100032431 <br/>IFSC : PUNB0397300', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'jurisdiction', 'Faizabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'result_per_page', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'gstin', '09AZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'pan', 'APZPP5641N', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'invoice_prefix', 'WT', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'firm_type', 'non_composition', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'bill_style', 'full_page', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'software_type', 'pharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'session_timeout', '1500', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'default_cash', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'default_bank', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'otp_verification', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'mobile', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'email', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'sms_user', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'sms_password', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'sms_sender_id', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'duplicate_mobile', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'overdue_days', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'order_challan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'return_date', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'selling_price', 'srp', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'multi_store', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'admin_alerts', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'customer_alerts', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'negative_stock_sale', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'full_page_header', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'full_page_footer', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `sno` int NOT NULL,
  `hyper_link` varchar(200) DEFAULT NULL,
  `icon_image` varchar(200) DEFAULT NULL,
  `link_description` varchar(200) DEFAULT NULL,
  `parent` varchar(10) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `sub_parent` varchar(100) DEFAULT NULL,
  `sort_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`sno`, `hyper_link`, `icon_image`, `link_description`, `parent`, `color`, `sub_parent`, `sort_no`) VALUES
(1, 'index.php', 'nc-icon nc-atom', 'Dashboard', '', '', '', '1'),
(2, 'signout.php', 'fa fa-power-off', 'Signout', '', '', '', '15'),
(11, '#', 'fa fa-user-tie', 'Master', 'P', '', '', '8'),
(15, 'add_tender.php', 'fa fa-user-tie', 'Add Tender', '', '', '', '4'),
(19, 'add_gallery.php', 'fa fa-user-tie', 'Add Photos Gallery', '', '', '', '5'),
(21, 'add_hero_image.php', 'fa fa-user-tie', 'Add Banner Image', '11', '', '', ''),
(23, 'add_index_notice.php', 'fa fa-user-tie', 'Marque Notice ', '', '', '', '2'),
(24, 'add_notice.php', 'fa fa-user-tie', 'Add Notice', '', '', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `user` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `s_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `s_start_date` date NOT NULL,
  `s_start_time` time NOT NULL,
  `s_end_time` time DEFAULT NULL,
  `last_active` varchar(100) DEFAULT NULL,
  `sno` int NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_time` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edition_time` varchar(100) DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `otp_verification` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`user`, `s_id`, `s_start_date`, `s_start_time`, `s_end_time`, `last_active`, `sno`, `created_by`, `creation_time`, `edited_by`, `edition_time`, `admin_remarks`, `branch`, `otp_verification`, `ip`) VALUES
('sadmin', 'dQxWV0eWe29s5mb3', '2023-11-18', '11:12:06', NULL, '1700286126', 6077, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'hzpaNYpRox4X6d5F', '2023-11-18', '11:13:37', NULL, '1700287993', 6078, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'L5S9nZFADvGiefEx', '2023-11-18', '11:43:31', NULL, '1700290274', 6079, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Fm02QmwNcyadEVBK', '2023-11-18', '14:24:01', NULL, '1700314169', 6080, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'nRXb3ZjfLpjwgOhY', '2023-11-19', '19:06:07', NULL, '1700400972', 6081, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '20g5FNF7xw0gzYiN', '2023-11-20', '11:03:35', NULL, '1700465280', 6082, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'aAsJcHQkzTzCp8az', '2023-11-20', '14:29:50', NULL, '1700470790', 6083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'flTeaCmNhGeLCGgF', '2023-11-20', '14:33:23', NULL, '1700471003', 6084, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '0XaoQaHNw6ws1PH1', '2023-11-20', '14:35:00', NULL, '1700471100', 6085, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'SJNeqRS2EnpmazrF', '2023-11-20', '14:35:53', NULL, '1700471158', 6086, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'aglbudsv52Gm8AkA', '2023-11-20', '14:36:13', NULL, '1700472227', 6087, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'NUHIzVkKAd0IhMY6', '2023-11-20', '14:54:13', NULL, '1700481270', 6088, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '5Ce4tSUYxXR87Gy8', '2023-11-20', '17:24:50', NULL, '1700485178', 6089, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Xmz6HUH9aucuQFYj', '2023-11-20', '18:29:55', NULL, '1700485197', 6090, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'hsMvnU53xqghO4cA', '2023-11-21', '15:12:34', NULL, '1700559757', 6091, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ztpKQ0tvhWrYqLEr', '2023-11-21', '16:21:12', NULL, '1700567759', 6092, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'vU9URUftN8moxJ4a', '2023-11-22', '13:54:52', NULL, '1700641502', 6093, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'HkyAnu7tQKtpZIfy', '2023-11-23', '13:09:06', NULL, '1700725163', 6094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'zlUQ2Vv5Qf25xPpn', '2023-11-23', '14:16:22', NULL, '1700729234', 6095, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'i7JsvUf1k5GvXFO5', '2023-11-23', '15:41:34', NULL, '1700734315', 6096, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'vXg6pcY0yLs71YJ9', '2023-11-23', '15:43:35', NULL, '1700736743', 6097, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'vPepaXwYjKJUiOvF', '2023-11-23', '17:45:32', NULL, '1700742629', 6098, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'FuKDKqpR4gZOsQnd', '2023-11-23', '21:51:35', NULL, '1700756495', 6099, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'au8nKpk4QiCP07wW', '2023-11-23', '21:53:00', NULL, '1700757671', 6100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '1lTAP43IyBZxaGDH', '2023-11-24', '15:31:17', NULL, '1700820077', 6101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'c0vZHJbrp1IraTQY', '2023-11-24', '23:42:46', NULL, '1700849570', 6102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '4OmUaSp6dQzQX7fe', '2023-11-25', '18:39:12', NULL, '1700919364', 6103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '3VMpGjU46jmuwxhV', '2023-11-25', '20:08:54', NULL, '1700923286', 6104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'wBkSuJON2D8aRfZv', '2023-11-27', '15:02:08', NULL, '1701077636', 6105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'iPyS4b30LD4rCN7D', '2023-11-28', '00:11:16', NULL, '1701110916', 6106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'kZaAhmXa5PBMfQJS', '2023-11-28', '14:49:27', NULL, '1701163418', 6107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'MYzhEZ6TVS3t9Dfe', '2023-11-28', '15:18:29', NULL, '1701164909', 6108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '7gZlIRoVzMeKUEjk', '2023-11-28', '15:27:43', NULL, '1701165463', 6109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '1SiEMWdQhD0AfZ9L', '2023-11-28', '22:35:21', NULL, '1701191131', 6110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'lmdsGeV2pXsGLlzf', '2023-11-28', '23:28:30', NULL, '1701194310', 6111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'XdwKbGIpzH4B8zlh', '2023-11-29', '00:35:38', NULL, '1701200181', 6112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'U1D24sUvDAzpetED', '2023-11-29', '08:12:31', NULL, '1701225757', 6113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'r4965CWz6ztf2Rv1', '2023-11-30', '12:54:11', NULL, '1701329231', 6114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'yi13THEc4FyxTQl6', '2023-11-30', '12:59:27', NULL, '1701331853', 6115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Fv3QxdiD3l8ybXIg', '2023-11-30', '15:11:10', NULL, '1701337456', 6116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'JRqt6pIFaldiTa2N', '2023-12-01', '15:14:06', NULL, '1701424427', 6117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'FJTrC7ApjVre7zcP', '2023-12-01', '16:39:13', NULL, '1701430685', 6118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'GyLyFdAerog2DWC0', '2023-12-01', '17:08:10', NULL, '1701431166', 6119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'JErWutBpoPB1ZKL5', '2023-12-01', '17:11:42', NULL, '1701432218', 6120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'VrM14cIwDsNeN5J0', '2023-12-01', '19:05:59', NULL, '1701438268', 6121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'L1Nc5doUtMh7dUHm', '2023-12-02', '12:02:29', NULL, '1701498755', 6122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'PV2tBq9wP6Mm35c2', '2023-12-02', '12:09:32', NULL, '1701500783', 6123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '8gsoymI6duCzrOnx', '2023-12-03', '22:55:59', NULL, '1701624396', 6124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'QGxM1oXhuVHBISLO', '2023-12-04', '16:13:32', NULL, '1701686700', 6125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'gsC2mKkt7KL2c7XG', '2023-12-04', '22:05:46', NULL, '1701707763', 6126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'uQ7tRMHZ1FwmBZmZ', '2023-12-06', '11:13:24', NULL, '1701844512', 6127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '70kEkBYqwXkHCzW4', '2023-12-08', '19:24:14', NULL, '1702044047', 6128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 's2cjCzht0JaOlZ0H', '2023-12-11', '13:42:41', NULL, '1702283178', 6129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'F2l3KNxX1jVcCPJc', '2023-12-11', '13:58:45', NULL, '1702283573', 6130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'F8WVsyIXL0sgK6o0', '2023-12-11', '17:18:29', NULL, '1702295656', 6131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Qhl7MhBNh2vQM3uQ', '2023-12-12', '09:20:03', NULL, '1702353438', 6132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'aHlvE0oVJ3Dynv1Y', '2023-12-12', '11:03:35', NULL, '1702363591', 6133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Hvc8GNrFlKxIy5za', '2023-12-12', '12:29:32', NULL, '1702364487', 6134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'E0dZHD2Xizt0gWwV', '2023-12-12', '12:34:01', NULL, '1702365398', 6135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '1thg6Tdg2LBPkwTr', '2023-12-12', '15:07:12', NULL, '1702373832', 6136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'bkRqylqi0PeOoeTC', '2023-12-12', '15:11:58', NULL, '1702377861', 6137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'KO5SEZmWJgvo120l', '2023-12-13', '11:30:13', NULL, '1702450834', 6138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'hjPqBl9yMwjrXiYh', '2023-12-13', '13:48:08', NULL, '1702455488', 6139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'wiP1qnHEQjHFHCJq', '2023-12-13', '15:36:28', NULL, '1702462312', 6140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'L8uyudySbDzjamF2', '2023-12-14', '12:39:14', NULL, '1702537754', 6141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'IAFi4YVcuqHlbAjk', '2023-12-14', '13:15:02', NULL, '1702540265', 6142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'wVKhmpsQqnLx2mat', '2023-12-14', '15:06:28', NULL, '1702546667', 6143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'qZjKnBMRWbvhe4lJ', '2023-12-14', '16:38:38', NULL, '1702552172', 6144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'TonhF8IBNOz0HEsC', '2023-12-14', '17:42:05', NULL, '1702555925', 6145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'vH7Zs9OvDWmDBYW3', '2023-12-18', '15:08:12', NULL, '1702892489', 6146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ghl9XmbybTLon8k9', '2023-12-19', '14:04:46', NULL, '1702975433', 6147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'IP2QIoq9AsHshnJQ', '2023-12-19', '16:48:48', NULL, '1702984853', 6148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'JwBYP9fhA1HJknUX', '2023-12-20', '17:30:39', NULL, '1703074813', 6149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'gcYs8ivkIXpwDYG6', '2023-12-21', '18:00:58', NULL, '1703162163', 6150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'PGcsbd47AK6w6Drq', '2023-12-22', '18:42:36', NULL, '1703250870', 6151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'T8SYxO7DEJFh3sNn', '2023-12-26', '17:08:35', NULL, '1703590815', 6152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'NvMpdYebiSRQp6rb', '2023-12-26', '18:17:13', NULL, '1703595049', 6153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'pSBJovgudl3VLoQI', '2023-12-27', '16:38:06', NULL, '1703677167', 6154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'tlbQ50YULFUGpgXG', '2024-01-02', '17:45:16', NULL, '1704198364', 6155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'IE5Cr9Pjn2I4xOsL', '2024-01-03', '11:34:29', NULL, '1704261895', 6156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'viAagj28GIhYAmps', '2024-01-03', '13:53:10', NULL, '1704270303', 6157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'UZjDiob9IOvnNPw7', '2024-01-03', '15:06:52', NULL, '1704275971', 6158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'm6TrS2UHyBo4IsKe', '2024-01-03', '18:01:00', NULL, '1704285128', 6159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'HrdhTGRepxJYGOKe', '2024-01-03', '19:10:33', NULL, '1704289289', 6160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '8buacM9k4SlYEdG3', '2024-01-10', '11:58:19', NULL, '1704868319', 6161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'xOFjHU0ZQkiCOnc5', '2024-01-11', '12:00:45', NULL, '1704955241', 6162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'OzNg3UmUBfbe4xjC', '2024-01-19', '11:31:19', NULL, '1705646098', 6163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'i7ca2XDPH0q3pWuk', '2024-01-23', '11:06:25', NULL, '1705988588', 6164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ZHb5ibJ9SwoxAvS8', '2024-01-24', '13:23:54', NULL, '1706083984', 6165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'WdfSgSwv1kI3IGYE', '2024-01-26', '09:45:28', NULL, '1706242542', 6166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'nGcL4buoKJcjJvTi', '2024-01-26', '11:10:44', NULL, '1706249744', 6167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'tW2o908tmw4RVb28', '2024-01-29', '19:07:41', NULL, '1706535683', 6168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'QaMsO9j93GaXzty2', '2024-01-30', '11:27:20', NULL, '1706594877', 6169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '6S52QMe4qM6NTpnP', '2024-01-31', '10:44:59', NULL, '1706678404', 6170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'L4zqlaI5PJaXNmN8', '2024-01-31', '15:45:08', NULL, '1706697037', 6171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'EUBMVli59wqUMwWs', '2024-02-05', '15:51:40', NULL, '1707129020', 6172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'RTAke2IyKeJ0bknB', '2024-02-16', '13:28:54', NULL, '1708074320', 6173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'wRYtJcwNDZA361VA', '2024-02-19', '18:18:13', NULL, '1708348492', 6174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'YRk1YSpmcdQjTCWJ', '2024-02-19', '18:27:31', NULL, '1708347456', 6175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'WThXTmMxdvW0eJN6', '2024-02-22', '17:25:41', NULL, '1708604275', 6176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'JTVoVhRGqlgdtyNG', '2024-02-27', '12:59:32', NULL, '1709019469', 6177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '2cWdqgJzO0JuKl47', '2024-03-04', '16:14:57', NULL, '1709549772', 6178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'NCLnx6jYgc2b1v0Y', '2024-03-05', '11:39:48', NULL, '1709619012', 6179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'U9DNqxLbBWLuaeWk', '2024-03-05', '12:10:53', NULL, '1709620853', 6180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '5Vg8wtA8zw4aMT1z', '2024-03-05', '18:47:00', NULL, '1709645556', 6181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'QyJv8kesjkfBGDIE', '2024-03-13', '12:54:18', NULL, '1710314880', 6182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '0TtGq0dYcygj1iPp', '2024-03-14', '12:54:10', NULL, '1710401411', 6183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'fSxIoEntNvCPhfdk', '2024-03-14', '15:06:26', NULL, '1710409078', 6184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'iOWT9pbxdrJtLm6P', '2024-03-15', '18:52:20', NULL, '1710509203', 6185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '8S1ydkSRk3C5laGc', '2024-03-18', '15:58:32', NULL, '1710758033', 6186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'iHJjdXLhVFPN5fCY', '2024-03-19', '23:32:58', NULL, '1710873736', 6187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'AEUydt98ZwcrLrBO', '2024-03-20', '00:39:58', NULL, '1710877133', 6188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Ua5njci9I3abCcIs', '2024-03-20', '12:38:57', NULL, '1710924356', 6189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '4Xbdh50SN31k1uzj', '2024-03-21', '16:45:59', NULL, '1711020346', 6190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'dHk4H0zWPEDtgMzd', '2024-03-21', '17:49:25', NULL, '1711023565', 6191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'bTyLPETUFaU3mNp6', '2024-04-03', '16:05:44', NULL, '1712141036', 6192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'acX5VRiTl9w9PgFz', '2024-05-02', '11:38:06', NULL, '1714630729', 6193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'NqwOqyDyNDh4RKR3', '2024-05-02', '15:43:05', NULL, '1714645659', 6194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'STv96opKF8qTvZeo', '2024-06-05', '11:30:13', NULL, '1717567644', 6195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ahAgtW5W06AWr3ix', '2024-06-11', '16:21:41', NULL, '1718104994', 6196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'CYwabujKgUNTKPMj', '2024-06-12', '16:18:52', NULL, '1718189337', 6197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'SoOiOj28NpV83avp', '2024-06-14', '17:19:26', NULL, '1718366549', 6198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'uQAnQnRYhS7Pdpqb', '2024-06-14', '17:56:18', NULL, '1718368172', 6199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'gqSUHag9Ny7DKZVT', '2024-06-19', '12:02:14', NULL, '1718779166', 6200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'pOwt9qdxS2fK8tgf', '2024-06-24', '17:41:00', NULL, '1719231744', 6201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'zErwBcN0oJuqhU0w', '2024-06-25', '11:28:41', NULL, '1719298133', 6202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'RXnDsAJiCyH92D3w', '2024-06-25', '12:23:15', NULL, '1719298519', 6203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '2TIHC69ewXbSMUT7', '2024-06-25', '17:54:57', NULL, '1719318485', 6204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'JLuUwnDHVtyHYNwo', '2024-06-26', '17:23:34', NULL, '1719403301', 6205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '8xPtzwonzknOdCV3', '2024-06-27', '15:06:55', NULL, '1719481225', 6206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ndk9q2z7kSBpJoK7', '2024-07-01', '11:13:26', NULL, '1719812653', 6207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Qi2VUHgfKjLvVK43', '2024-07-01', '11:19:55', NULL, '1719814466', 6208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ZDhK15ixSnKjHuIF', '2024-07-02', '17:40:30', NULL, '1719922334', 6209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'dMxhRl945D8gGzDA', '2024-07-05', '16:35:21', NULL, '1720178464', 6210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'vgQFkHSPYvMQpUu5', '2024-07-09', '18:00:28', NULL, '1720528871', 6211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'kTrPTA9afamL1z9i', '2024-07-10', '10:39:10', NULL, '1720591347', 6212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'jziMpwNagytZwldV', '2024-07-10', '10:53:40', NULL, '1720589295', 6213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'RLRGVlBM3qWea0N0', '2024-07-11', '14:10:29', NULL, '1720687326', 6214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'NR1E1ATCzIDyNlaT', '2024-07-12', '18:22:29', NULL, '1720789078', 6215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'v5JsetkFP8dr1DZt', '2024-07-13', '16:59:12', NULL, '1720870161', 6216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'tSVvTj4T8Sdf3MpM', '2024-07-16', '17:49:04', NULL, '1721132916', 6217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'PVIt1zyWioLkYgEw', '2024-07-20', '15:07:31', NULL, '1721468459', 6218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'VqOgw1vQsfFRvUHU', '2024-07-23', '17:07:51', NULL, '1721735221', 6219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'hkZy18vUqWUBWy4Y', '2024-07-29', '12:06:08', NULL, '1722235148', 6220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'h5Pjwq65mUuzbS6m', '2024-07-30', '15:48:36', NULL, '1722334970', 6221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'SLZGC1N0ToBeziWd', '2024-07-31', '16:35:33', NULL, '1722424166', 6222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'm6MjCON15ypWVaN6', '2024-08-07', '10:32:39', NULL, '1723007075', 6223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'wKHqiGkMXdskRQzR', '2024-08-16', '10:14:35', NULL, '1723784069', 6224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'vB9Icx2gj0sbUDqg', '2024-08-22', '16:51:47', NULL, '1724326810', 6225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'O89UVTDElCQOwBn9', '2024-08-23', '16:11:13', NULL, '1724409761', 6226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'o2ojeueIvw08XIa3', '2024-08-27', '17:46:49', NULL, '1724761131', 6227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'DQyXfzpjuRiXcMFy', '2024-08-28', '17:00:35', NULL, '1724844876', 6228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '3HOpFiOkwWUBSBub', '2024-08-28', '17:13:29', NULL, '1724848368', 6229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'U4BeoBDwWGsF2diE', '2024-08-30', '13:13:58', NULL, '1725003965', 6230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ktIGwNyKCiNGEoUg', '2024-08-30', '15:17:43', NULL, '1725011622', 6231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'XqMOb70mfVThos7r', '2024-09-03', '15:00:58', NULL, '1725355888', 6232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'aZUsu4xvRUodZL4A', '2024-09-03', '17:11:44', NULL, '1725363891', 6233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '7M9EgpC5yNvoTKLN', '2024-09-04', '11:52:38', NULL, '1725431014', 6234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '6hnJiDjwSjKftfpD', '2024-09-04', '16:35:08', NULL, '1725448575', 6235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'QmbiO7uOXujb4h0H', '2024-09-18', '12:36:36', NULL, '1726643441', 6236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'HN4Bw7tA7XrXpnYU', '2024-09-21', '12:04:27', NULL, '1726901411', 6237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'gFL4UVslKyMq4aTt', '2024-10-01', '17:11:16', NULL, '1727785947', 6238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'rfoIonGfAe789nuf', '2024-10-01', '17:12:09', NULL, '1727782932', 6239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'UJQHgB3zMxdvHTXR', '2024-10-07', '16:51:44', NULL, '1728300464', 6240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Vt1EgZxGPYSaxLq3', '2024-10-08', '17:36:28', NULL, '1728389720', 6241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '8YbPqAQ42Xcxf3D1', '2024-10-15', '12:15:47', NULL, '1728977704', 6242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'it0yApMUqFJwu1ly', '2024-10-15', '13:05:39', NULL, '1728977743', 6243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'Q3Y2prS8a0mzpcQi', '2024-10-15', '13:08:36', NULL, '1728978634', 6244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'A0HjRdO7ZkhjzHwH', '2024-10-15', '16:31:26', NULL, '1728990828', 6245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'idjwY0ohupCPbeIa', '2024-10-17', '11:33:11', NULL, '1729144991', 6246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'ws9LNnMSRtMvFLlE', '2024-10-22', '18:04:57', NULL, '1729600926', 6247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'YWZJKC64pJI3ZjOJ', '2024-10-28', '12:02:03', NULL, '1730098713', 6248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'L5P2RnmHdj8xDpJG', '2024-11-06', '11:20:45', NULL, '1730872496', 6249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'bL8wMdUpQ5ZzDGX4', '2024-11-08', '13:32:58', NULL, '1731053114', 6250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'rVsDdLQ71qdrf87t', '2024-11-08', '16:20:57', NULL, '1731063545', 6251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '4tEIDMvu20wqi30D', '2024-11-11', '15:19:08', NULL, '1731318624', 6252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'nh2yxFxTNL1UjA7q', '2024-11-13', '10:58:28', NULL, '1731478193', 6253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'BKNhI60af01w0Z9T', '2024-11-13', '17:49:19', NULL, '1731500803', 6254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', '2iJmpAcrq5YyKSQo', '2024-11-18', '12:32:59', NULL, '1731924729', 6255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sadmin', 'mLfX9M31xc4GXbNU', '2024-11-19', '11:20:21', NULL, '1732000482', 6256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uprnss_division`
--

CREATE TABLE `uprnss_division` (
  `s_no` int NOT NULL,
  `division_name` varchar(65) DEFAULT NULL,
  `district_under_division` varchar(451) DEFAULT NULL,
  `active_inactive` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `uprnss_division`
--

INSERT INTO `uprnss_division` (`s_no`, `division_name`, `district_under_division`, `active_inactive`) VALUES
(2, 'Lucknow-I', 'Barabanki(बाराबंकी ), Hardoi(हरदोई), Lakhimpur Khiri(लखीमपुर खीरी ), Lucknow(लखनऊ), Sitapur(सीतापुर), Unnao(उन्नाव )', '0'),
(4, 'Aligarh', 'Aligarh (अलीगढ ), Etah(एटा ), Hathras(हाथरस ), Kasganj(कासगंज)', 'Inactive'),
(5, 'Kanpur', 'Auraiya(औरेया ), Etah(एटा ), Etawah(इटावा), Kanpur Dehat(कानपुर देहात ), Kanpur Nagar(कानपुर नगर )', 'Inactive'),
(7, 'Bareilly', 'Badaun(बदायूं), Bareily(बरेली ), Shahjahanpur(शाहजहांपुर )', 'Inactive'),
(8, 'Azamgarh', 'Azamgarh(आजमगढ़), Jaunpur(जौनपुर )', 'Inactive'),
(9, 'Gorakhpur-II', 'Gorakhpur(गोरखपुर ), Kushinagar(कुशीनगर ), Maharajganj(महराजगंज)', 'Inactive'),
(10, 'Chitrakoot', 'Banda(बाँदा ), Chitrakoot(चित्रकूट ), Fatehpur(फतेहपुर ), Hamirpur (हमीरपुर ), Kaushambi (कौशाम्बी ), Mahoba(महोबा)', 'Inactive'),
(11, 'Agra', 'Agra(आगरा ), Aligarh (अलीगढ ), Firozabad (फ़िरोज़ाबाद ), Hathras(हाथरस ), Kasganj(कासगंज), Mathura(मथुरा )', 'Inactive'),
(12, 'Prayagraj', 'Allahabad(इलाहाबाद), Pratapgarh(प्रतापगढ़ )', 'Inactive'),
(14, 'Basti', 'Basti(बस्ती ), Sant Kabir Nagar(संत कबीर नगर ), Siddharthnagar (सिद्धार्थनगर )', 'Inactive'),
(15, 'Meerut', 'Bagpat(बागपत ), Ghaziabad (गाजियाबाद ), Meerut (मेरठ )', 'Inactive'),
(17, 'Ayodhya', 'Ambedkar Nagar (अम्बेडकर नगर ), Amethi(अमेठी ), Faizabad(फैज़ाबाद ), Sultanpur(सुल्तानपुर )', 'Inactive'),
(21, 'Gonda', 'Balrampur(बलरामपुर ), Gonda(गोंडा ), Lucknow(लखनऊ)', 'Inactive'),
(22, 'Jhansi', 'Auraiya(औरेया ), Farrukhabad(फर्रुखाबाद ), Jalaun(जालौन ), Jhansi(झाँसी ), Lalitpur(ललितपुर )', 'Inactive'),
(23, 'Lucknow-II', 'Barabanki(बाराबंकी ), Hardoi(हरदोई), Lucknow(लखनऊ), Rae Bareily(रायबरेली), Sitapur(सीतापुर), Unnao(उन्नाव )', 'Inactive'),
(24, 'Lucknow-III', 'Barabanki(बाराबंकी ), Hardoi(हरदोई), Lakhimpur Khiri(लखीमपुर खीरी ), Lucknow(लखनऊ), Sitapur(सीतापुर), Unnao(उन्नाव )', 'Inactive'),
(27, 'Mirzapur', 'Mirzapur(मिर्ज़ापुर ), Sant Ravidas Nagar (संत रविदास नगर ), Sonbhadra (सोनभद्र )', 'Inactive'),
(28, 'Moradabad', 'Moradabad(मुरादाबाद ), Rampur(रामपुर ), Sambhal(संभल )', 'Inactive'),
(30, 'Saharanpur', 'Muzaffar Nagar (मुज़फ्फर नगर ), Saharanpur(सहारनपुर ), Shamli (शामली )', 'Inactive'),
(32, 'Varanasi-I', 'Chandauli(चंदौली ), Varanasi(वाराणसी )', 'Inactive'),
(33, 'Varanasi-II', 'Ghazipur(ग़ाज़ीपुर ), Jaunpur(जौनपुर )', 'Inactive'),
(35, 'Mukhyalay Prakhand', 'Barabanki(बाराबंकी ), Hardoi(हरदोई), Lucknow(लखनऊ), Rae Bareily(रायबरेली), Sitapur(सीतापुर), Unnao(उन्नाव )', 'Inactive'),
(36, 'Gorakhpur', 'Deoria(देवरिया ), Gorakhpur(गोरखपुर ), Kushinagar(कुशीनगर ), Maharajganj(महराजगंज)', 'Inactive'),
(38, 'Firozabad', 'Ballia(बलिया ), Mau(मऊ)', 'Inactive'),
(39, 'Anurakshan Prakhand', NULL, NULL),
(40, 'Etawah(इटावा)', NULL, NULL),
(41, 'Farrukhabad(फर्रूखाबाद)', NULL, NULL),
(42, 'Sultanpur(सुल्तानपुर)', NULL, NULL),
(44, 'Etah (एटा)', NULL, NULL),
(45, 'Gaziabad(गाजियाबाद)', NULL, NULL),
(46, 'Fatehpur (फतेहपुर)', NULL, NULL),
(47, 'Behraich(बहराइच)', NULL, NULL),
(50, 'Shajahanpur(शाहजहांपुर)', NULL, NULL),
(51, 'Mau(मऊ)', NULL, NULL),
(52, 'Bijnor(बिजनौर)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uprnss_tender`
--

CREATE TABLE `uprnss_tender` (
  `sno` int NOT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `prakhand` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `isactive` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `uprnss_tender`
--

INSERT INTO `uprnss_tender` (`sno`, `descr`, `starting_date`, `ending_date`, `prakhand`, `file_path`, `isactive`) VALUES
(95, 'Remaining Proposed Construction Work of Degree College at Lateefnagar, District Lucknow', '2023-10-18', '0000-00-00', 'Lucknow-III(लखनऊ-III)', 'tenders/95.pdf', '1'),
(96, '	Remaining Workअवासीय/अनआवासीय भवन तहसील जमुनहा जनपद - श्रावस्ती', '2023-10-18', '0000-00-00', 'Behraich(बहराइच)', 'tenders/96.pdf', '1'),
(97, 'Remaining Work at Lucknow and Shravasti District', '2023-10-16', '0000-00-00', 'Behraich(बहराइच), Lucknow-I(लखनऊ-I)', 'tenders/97.jpeg', '1'),
(98, 'Remaining Work at Kasganj District', '2023-10-19', '0000-00-00', 'Etah (एटा)', 'tenders/98.pdf', '1'),
(99, 'Remaining Work at Mirzapur and Chandauli Districtm', '2023-10-21', '0000-00-00', 'Mirzapur(मिर्जापुर), Varanasi-I(वाराणसी-I)', 'tenders/99.pdf', '1'),
(100, 'Remaining Work at Unnao and Banda District', '2023-10-19', '0000-00-00', 'Chitrakoot(चित्रकूट), Lucknow-I(लखनऊ-I)', 'tenders/100.pdf', '1'),
(101, 'सरदार वल्लभभाई पटेल कृषि एवं प्रौद्योगिक विश्विद्यालय मेरठ के संतर्गत मिल्क प्रोसेसिंग प्लांट एवं क्वालिटी कंट्रोल लैब का निर्माण कार्य', '2023-10-25', '0000-00-00', 'Meerut(मेरठ)', 'tenders/101.pdf', '1'),
(102, 'गौ संरक्षण केंद्र पहाडपुर, अमावा एवं नारायनपुर जनपद प्रतापगढ़ का निर्माण कार्य', '2023-10-28', '0000-00-00', 'Prayagraj (प्रयागराज)', 'tenders/102.pdf', '1'),
(103, 'जनपद गाजियाबाद के लूनी में 50 शैय्यायुक्त सन्युक्त चिकित्सालय में अवासीय भवन, चहारदीवारी का निर्माण कार्य', '2023-11-25', '0000-00-00', 'Meerut(मेरठ)', 'tenders/103.pdf', '1'),
(104, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-11-01', '0000-00-00', 'Basti(बस्ती)', 'tenders/104.pdf', '1'),
(105, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-11-01', '0000-00-00', 'Lucknow-I(लखनऊ-I)', 'tenders/105.pdf', '1'),
(106, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-11-01', '0000-00-00', 'Lucknow-II(लखनऊ-II), Lucknow-III(लखनऊ-III)', 'tenders/106.pdf', '1'),
(107, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-11-01', '0000-00-00', 'Basti(बस्ती)', 'tenders/107.pdf', '1'),
(108, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-11-06', '0000-00-00', 'Azamgarh (आजमगढ़)', 'tenders/108.pdf', '1'),
(111, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-11-25', '0000-00-00', 'Chitrakoot', 'tenders/111.jpg', '1'),
(112, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-11-25', '0000-00-00', 'Lucknow-I, Lucknow-II, Sultanpur(सुल्तानपुर)', 'tenders/112.jpg', '1'),
(113, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-11-30', '0000-00-00', 'Etawah(इटावा)', 'tenders/113.jpg', '1'),
(115, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-12-01', '0000-00-00', 'Moradabad', 'tenders/115.pdf', '1'),
(116, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-02', '0000-00-00', 'Fatehpur (फतेहपुर)', 'tenders/116.pdf', '1'),
(117, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-11-28', '0000-00-00', 'Etawah(इटावा), Fatehpur (फतेहपुर), Kanpur', 'tenders/117.pdf', '1'),
(118, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-01', '0000-00-00', 'Moradabad', 'tenders/118.pdf', '1'),
(119, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-04', '0000-00-00', 'Gorakhpur-II', 'tenders/119.pdf', '1'),
(120, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-02', '0000-00-00', 'Ayodhya, Behraich(बहराइच), Gonda, Lucknow-I, Lucknow-II, Shajahanpur(शाहजहांपुर), Sultanpur(सुल्तानपुर)', 'tenders/120.pdf', '1'),
(121, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-02', '0000-00-00', 'Ayodhya, Behraich(बहराइच), Gonda, Lucknow-I, Lucknow-II, Sultanpur(सुल्तानपुर)', 'tenders/121.pdf', '1'),
(122, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-02', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/122.pdf', '1'),
(123, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-02', '0000-00-00', 'Chitrakoot, Jhansi, Lucknow-II, Mukhyalay Prakhand', 'tenders/123.pdf', '1'),
(124, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-08', '0000-00-00', 'Azamgarh', 'tenders/124.pdf', '1'),
(127, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-11-30', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/127.pdf', '1'),
(128, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-11-30', '0000-00-00', 'Behraich(बहराइच)', 'tenders/128.pdf', '1'),
(129, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-06', '0000-00-00', 'Mau(मऊ), Mirzapur, Varanasi-I, Varanasi-II', 'tenders/129.pdf', '1'),
(130, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-06', '0000-00-00', 'Gorakhpur, Gorakhpur-II', 'tenders/130.pdf', '1'),
(131, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-07', '0000-00-00', 'Prayagraj', 'tenders/131.pdf', '1'),
(132, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-07', '0000-00-00', 'Prayagraj, Sultanpur(सुल्तानपुर)', 'tenders/132.pdf', '1'),
(133, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-07', '0000-00-00', 'Sultanpur(सुल्तानपुर)', 'tenders/133.pdf', '1'),
(134, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-06', '0000-00-00', 'Kanpur', 'tenders/134.pdf', '1'),
(135, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-06', '0000-00-00', 'Firozabad, Kanpur', 'tenders/135.pdf', '1'),
(136, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-07', '0000-00-00', 'Firozabad', 'tenders/136.pdf', '1'),
(137, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-12-13', '0000-00-00', 'Etawah(इटावा)', 'tenders/137.pdf', '1'),
(138, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-12-14', '0000-00-00', 'Basti', 'tenders/138.pdf', '1'),
(140, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-02-14', '0000-00-00', 'Behraich(बहराइच)', 'tenders/140.pdf', '1'),
(141, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-12', '0000-00-00', 'Chitrakoot, Etawah(इटावा), Farrukhabad(फर्रूखाबाद), Fatehpur (फतेहपुर), Lucknow-III', 'tenders/141.pdf', '1'),
(142, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-13', '0000-00-00', 'Behraich(बहराइच), Lucknow-II, Lucknow-III, Prayagraj', 'tenders/142.pdf', '1'),
(144, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-13', '0000-00-00', 'Fatehpur (फतेहपुर), Prayagraj', 'tenders/144.pdf', '1'),
(145, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-14', '0000-00-00', 'Basti', 'tenders/145.pdf', '1'),
(146, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-14', '0000-00-00', 'Mau(मऊ), Varanasi-II', 'tenders/146.pdf', '1'),
(147, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-13', '0000-00-00', 'Meerut', 'tenders/147.pdf', '1'),
(148, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-15', '0000-00-00', 'Etah (एटा)', 'tenders/148.pdf', '1'),
(149, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-12-22', '0000-00-00', 'Bareilly', 'tenders/149.pdf', '1'),
(150, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-12-21', '0000-00-00', 'Moradabad', 'tenders/150.pdf', '1'),
(151, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-22', '0000-00-00', 'Bareilly', 'tenders/151.jpg', '1'),
(152, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-21', '0000-00-00', 'Etawah(इटावा)', 'tenders/152.jpg', '1'),
(153, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-22', '0000-00-00', 'Bareilly', 'tenders/153.jpg', '1'),
(154, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-21', '0000-00-00', 'Bijnor(बिजनौर)', 'tenders/154.pdf', '1'),
(155, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-21', '0000-00-00', 'Bijnor(बिजनौर)', 'tenders/155.pdf', '1'),
(156, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-21', '0000-00-00', 'Bijnor(बिजनौर)', 'tenders/156.pdf', '1'),
(157, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-01', '0000-00-00', 'Moradabad', 'tenders/157.pdf', '1'),
(158, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-01', '0000-00-00', 'Moradabad', 'tenders/158.pdf', '1'),
(159, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-21', '0000-00-00', 'Basti', 'tenders/159.pdf', '1'),
(160, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-22', '0000-00-00', 'Basti', 'tenders/160.pdf', '1'),
(161, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-21', '0000-00-00', 'Etawah(इटावा), Farrukhabad(फर्रूखाबाद), Fatehpur (फतेहपुर), Firozabad, Kanpur, Lucknow-II', 'tenders/161.pdf', '1'),
(162, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-21', '0000-00-00', 'Basti, Gorakhpur, Gorakhpur-II', 'tenders/162.pdf', '1'),
(163, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-21', '0000-00-00', 'Etawah(इटावा), Farrukhabad(फर्रूखाबाद), Fatehpur (फतेहपुर), Kanpur, Lucknow-II', 'tenders/163.jpeg', '1'),
(164, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-22', '0000-00-00', 'Ayodhya, Lucknow-I, Lucknow-II', 'tenders/164.jpeg', '1'),
(165, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-22', '0000-00-00', 'Bareilly, Lucknow-I', 'tenders/165.jpeg', '1'),
(166, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-21', '0000-00-00', 'Agra, Bijnor(बिजनौर), Gaziabad(गाजियाबाद), Saharanpur', 'tenders/166.jpeg', '1'),
(167, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध म', '2023-12-21', '0000-00-00', 'Gaziabad(गाजियाबाद)', 'tenders/167.jpeg', '1'),
(168, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-21', '0000-00-00', 'Mirzapur', 'tenders/168.jpeg', '1'),
(169, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-22', '0000-00-00', 'Bareilly', 'tenders/169.jpeg', '1'),
(170, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-21', '0000-00-00', 'Bijnor(बिजनौर), Gaziabad(गाजियाबाद), Saharanpur', 'tenders/170.jpeg', '1'),
(171, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-22', '0000-00-00', 'Ayodhya, Lucknow-I, Lucknow-II', 'tenders/171.jpeg', '1'),
(172, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-20', '0000-00-00', 'Agra, Firozabad', 'tenders/172.jpeg', '1'),
(173, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-23', '0000-00-00', 'Lucknow-I', 'tenders/173.jpeg', '1'),
(174, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-29', '0000-00-00', 'Bareilly', 'tenders/174.pdf', '1'),
(175, ' 	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-29', '0000-00-00', 'Bareilly', 'tenders/175.jpg', '1'),
(176, ' ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-27', '0000-00-00', 'Lucknow-II', 'tenders/176.jpg', '1'),
(177, ' ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2023-12-28', '0000-00-00', 'Mirzapur, Varanasi-II', 'tenders/177.jpg', '1'),
(178, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-01-04', '0000-00-00', 'Behraich(बहराइच)', 'tenders/178.pdf', '1'),
(179, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-04', '0000-00-00', 'Moradabad', 'tenders/179.jpg', '1'),
(180, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2023-12-16', '0000-00-00', 'Chitrakoot', 'tenders/180.pdf', '1'),
(181, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-03', '0000-00-00', 'Etah (एटा), Farrukhabad(फर्रूखाबाद), Fatehpur (फतेहपुर)', 'tenders/181.pdf', '1'),
(182, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-05', '0000-00-00', 'Azamgarh, Varanasi-I, Varanasi-II', 'tenders/182.pdf', '1'),
(183, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-04', '0000-00-00', 'Moradabad', 'tenders/183.pdf', '1'),
(184, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-10', '0000-00-00', 'Behraich(बहराइच)', 'tenders/184.pdf', '1'),
(185, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-12', '0000-00-00', 'Basti', 'tenders/185.pdf', '1'),
(186, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-12', '0000-00-00', 'Moradabad', 'tenders/186.pdf', '1'),
(187, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-11', '0000-00-00', 'Agra, Firozabad', 'tenders/187.pdf', '1'),
(188, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-11', '0000-00-00', 'Agra, Aligarh, Firozabad, Gaziabad(गाजियाबाद), Moradabad', 'tenders/188.pdf', '1'),
(189, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-10', '0000-00-00', 'Aligarh', 'tenders/189.pdf', '1'),
(190, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-12', '0000-00-00', 'Basti', 'tenders/190.pdf', '1'),
(191, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-12', '0000-00-00', 'Moradabad', 'tenders/191.pdf', '1'),
(192, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-11', '0000-00-00', 'Chitrakoot, Jhansi', 'tenders/192.pdf', '1'),
(193, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-11', '0000-00-00', 'Gaziabad(गाजियाबाद)', 'tenders/193.pdf', '1'),
(194, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-10', '0000-00-00', 'Behraich(बहराइच)', 'tenders/194.pdf', '1'),
(195, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-18', '0000-00-00', 'Ayodhya, Behraich(बहराइच), Lucknow-I, Lucknow-II, Sultanpur(सुल्तानपुर)', 'tenders/195.jpg', '1'),
(196, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-18', '0000-00-00', 'Prayagraj', 'tenders/196.jpg', '1'),
(197, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-18', '0000-00-00', 'Meerut', 'tenders/197.jpg', '1'),
(198, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-19', '0000-00-00', 'Varanasi-II', 'tenders/198.jpg', '1'),
(199, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-18', '0000-00-00', 'Prayagraj', 'tenders/199.pdf', '1'),
(200, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-18', '0000-00-00', 'Ayodhya, Behraich(बहराइच), Lucknow-I, Lucknow-II, Prayagraj, Shajahanpur(शाहजहांपुर), Sultanpur(सुल्तानपुर)', 'tenders/200.pdf', '1'),
(201, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-27', '0000-00-00', 'Prayagraj', 'tenders/201.jpg', '1'),
(202, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-24', '0000-00-00', 'Anurakshan Prakhand, Chitrakoot, Farrukhabad(फर्रूखाबाद), Fatehpur (फतेहपुर)', 'tenders/202.jpg', '1'),
(203, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-24', '0000-00-00', 'Anurakshan Prakhand, Chitrakoot, Farrukhabad(फर्रूखाबाद), Fatehpur (फतेहपुर)', 'tenders/203.jpg', '1'),
(204, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-25', '0000-00-00', 'Azamgarh, Mau(मऊ)', 'tenders/204.jpg', '1'),
(205, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-29', '0000-00-00', 'Gaziabad(गाजियाबाद)', 'tenders/205.jpg', '1'),
(206, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-29', '0000-00-00', 'Gaziabad(गाजियाबाद)', 'tenders/206.jpg', '1'),
(207, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-27', '0000-00-00', 'Fatehpur (फतेहपुर), Prayagraj', 'tenders/207.jpg', '1'),
(208, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-24', '0000-00-00', 'Ayodhya, Lucknow-II, Lucknow-III, Sultanpur(सुल्तानपुर)', 'tenders/208.jpg', '1'),
(209, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-27', '0000-00-00', 'Basti, Gorakhpur-II', 'tenders/209.pdf', '1'),
(210, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-24', '0000-00-00', 'Ayodhya, Lucknow-II, Lucknow-III, Sultanpur(सुल्तानपुर)', 'tenders/210.pdf', '1'),
(211, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-01-29', '0000-00-00', 'Basti', 'tenders/211.pdf', '1'),
(212, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-01-31', '0000-00-00', 'Agra', 'tenders/212.jpeg', '1'),
(213, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-01', '0000-00-00', 'Etawah(इटावा)', 'tenders/213.jpeg', '1'),
(214, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-02', '0000-00-00', 'Azamgarh', 'tenders/214.jpeg', '1'),
(215, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-01', '0000-00-00', 'Meerut', 'tenders/215.jpeg', '1'),
(216, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-01', '0000-00-00', 'Agra, Meerut', 'tenders/216.jpeg', '1'),
(217, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-12', '0000-00-00', 'Basti', 'tenders/217.pdf', '1'),
(218, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-16', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/218.pdf', '1'),
(219, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-15', '0000-00-00', 'Lucknow-III', 'tenders/219.pdf', '1'),
(220, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-21', '0000-00-00', 'Basti', 'tenders/220.pdf', '1'),
(221, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-14', '0000-00-00', 'Firozabad', 'tenders/221.jpg', '1'),
(222, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-16', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/222.jpg', '1'),
(223, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-14', '0000-00-00', 'Ayodhya, Lucknow-I, Shajahanpur(शाहजहांपुर)', 'tenders/223.jpg', '1'),
(224, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-16', '0000-00-00', 'Varanasi-I, Varanasi-II', 'tenders/224.jpg', '1'),
(225, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-15', '0000-00-00', 'Kanpur', 'tenders/225.jpg', '1'),
(226, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-22', '0000-00-00', 'Etawah(इटावा)', 'tenders/226.jpg', '1'),
(227, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-21', '0000-00-00', 'Sultanpur(सुल्तानपुर)', 'tenders/227.jpg', '1'),
(228, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-22', '0000-00-00', 'Varanasi-II', 'tenders/228.jpg', '1'),
(229, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-21', '0000-00-00', 'Meerut', 'tenders/229.jpg', '1'),
(230, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-21', '0000-00-00', 'Meerut', 'tenders/230.jpg', '1'),
(231, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-21', '0000-00-00', 'Gaziabad(गाजियाबाद)', 'tenders/231.jpg', '1'),
(232, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-02-24', '0000-00-00', 'Gaziabad(गाजियाबाद)', 'tenders/232.jpg', '1'),
(233, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-02-15', '0000-00-00', 'Chitrakoot', 'tenders/233.pdf', '1'),
(234, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-05', '0000-00-00', 'Gorakhpur, Gorakhpur-II', 'tenders/234.pdf', '1'),
(235, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-05', '0000-00-00', 'Jhansi', 'tenders/235.pdf', '1'),
(236, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-05', '0000-00-00', 'Prayagraj', 'tenders/236.pdf', '1'),
(237, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-05', '0000-00-00', 'Azamgarh, Mirzapur, Varanasi-II', 'tenders/237.pdf', '1'),
(238, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-05', '0000-00-00', 'Agra', 'tenders/238.pdf', '1'),
(239, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-12', '0000-00-00', 'Varanasi-I', 'tenders/239.jpg', '1'),
(240, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-12', '0000-00-00', 'Lucknow-II, Lucknow-III', 'tenders/240.jpg', '1'),
(241, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-03-12', '0000-00-00', 'Lucknow-III', 'tenders/241.pdf', '1'),
(242, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-03-13', '0000-00-00', 'Lucknow-III', 'tenders/242.pdf', '1'),
(243, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-03-14', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/243.pdf', '1'),
(244, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-16', '0000-00-00', 'Gorakhpur', 'tenders/244.jpg', '1'),
(245, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-20', '0000-00-00', 'Ayodhya, Lucknow-I', 'tenders/245.pdf', '1'),
(246, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-20', '0000-00-00', 'Ayodhya, Lucknow-I, Shajahanpur(शाहजहांपुर)', 'tenders/246.pdf', '1'),
(247, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-20', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/247.pdf', '1'),
(248, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-16', '0000-00-00', 'Gorakhpur', 'tenders/248.pdf', '1'),
(249, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-03-20', '0000-00-00', 'Bijnor(बिजनौर)', 'tenders/249.pdf', '1'),
(250, 'ई-निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-03-16', '0000-00-00', 'Lucknow-II', 'tenders/250.pdf', '1'),
(251, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-10', '0000-00-00', 'Lucknow-III', 'tenders/251.pdf', '1'),
(252, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-11', '2024-06-11', 'Prayagraj', 'tenders/252.pdf', '1'),
(253, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-10', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/253.jpg', '1'),
(254, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Fatehpur (फतेहपुर), Prayagraj', 'tenders/254.jpg', '1'),
(255, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/255.jpg', '1'),
(256, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-13', '0000-00-00', 'Agra, Firozabad', 'tenders/256.jpg', '1'),
(257, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Etawah(इटावा), Fatehpur (फतेहपुर)', 'tenders/257.jpg', '1'),
(258, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Etawah(इटावा), Fatehpur (फतेहपुर), Firozabad', 'tenders/258.jpg', '1'),
(259, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Agra, Gaziabad(गाजियाबाद)', 'tenders/259.jpg', '1'),
(260, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Gaziabad(गाजियाबाद)', 'tenders/260.jpg', '1'),
(261, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Ayodhya, Behraich(बहराइच), Lucknow-II, Lucknow-III', 'tenders/261.pdf', '1'),
(262, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-12', '0000-00-00', 'Ayodhya, Behraich(बहराइच), Lucknow-II, Lucknow-III, Prayagraj, Shajahanpur(शाहजहांपुर)', 'tenders/262.pdf', '1'),
(263, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Gorakhpur-II', 'tenders/263.pdf', '1'),
(264, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Moradabad', 'tenders/264.pdf', '1'),
(265, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Meerut', 'tenders/265.pdf', '1'),
(266, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Meerut, Moradabad', 'tenders/266.pdf', '1'),
(267, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Ayodhya', 'tenders/267.pdf', '1'),
(268, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Prayagraj', 'tenders/268.pdf', '1'),
(269, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Ayodhya, Prayagraj', 'tenders/269.pdf', '1'),
(270, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-18', '0000-00-00', 'Varanasi-I', 'tenders/270.pdf', '1'),
(271, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-25', '0000-00-00', 'Kanpur', 'tenders/271.jpg', '1'),
(272, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-25', '0000-00-00', 'Bareilly', 'tenders/272.jpg', '1'),
(273, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-25', '0000-00-00', 'Meerut', 'tenders/273.jpg', '1'),
(274, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-06-25', '0000-00-00', 'Varanasi-II', 'tenders/274.jpg', '1'),
(275, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-02', '0000-00-00', 'Varanasi-II', 'tenders/275.pdf', '1'),
(276, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-02', '0000-00-00', 'Lucknow-III', 'tenders/276.pdf', '1'),
(277, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-09', '0000-00-00', 'Basti', 'tenders/277.jpg', '1'),
(278, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-09', '0000-00-00', 'Kanpur', 'tenders/278.jpg', '1'),
(279, 'वास्तुविद/स्ट्रक्चरल पंजीकरण/ सूचीबद्धता हेतु सूचना', '2024-07-09', '0000-00-00', 'Ayodhya, Lucknow-III', 'tenders/279.jpg', '1'),
(280, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-09', '0000-00-00', 'Mirzapur', 'tenders/280.jpg', '1'),
(281, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-16', '0000-00-00', 'Anurakshan Prakhand, Chitrakoot', 'tenders/281.pdf', '1'),
(282, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-23', '0000-00-00', 'Lucknow-II', 'tenders/282.jpg', '1'),
(285, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-23', '0000-00-00', 'Gorakhpur-II', 'tenders/285.jpg', '1'),
(286, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-23', '0000-00-00', 'Anurakshan Prakhand', 'tenders/286.jpg', '1'),
(287, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-30', '0000-00-00', 'Prayagraj', 'tenders/287.pdf', '1'),
(288, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-01', '0000-00-00', 'Sultanpur(सुल्तानपुर)', 'tenders/288.pdf', '1'),
(289, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-31', '0000-00-00', 'Prayagraj', 'tenders/289.jpeg', '1'),
(290, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-07-31', '0000-00-00', 'Prayagraj, Sultanpur(सुल्तानपुर)', 'tenders/290.jpeg', '1'),
(291, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-06', '0000-00-00', 'Basti, Gorakhpur', 'tenders/291.jpg', '1'),
(292, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-06', '0000-00-00', 'Mau(मऊ)', 'tenders/292.jpg', '1'),
(293, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-27', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/293.jpg', '1'),
(294, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-27', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/294.jpg', '1'),
(295, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-27', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/295.jpg', '1'),
(296, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-24', '0000-00-00', 'Prayagraj', 'tenders/296.jpg', '1'),
(297, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-24', '0000-00-00', 'Prayagraj', 'tenders/297.jpg', '1'),
(298, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-27', '0000-00-00', 'Azamgarh', 'tenders/298.jpg', '1'),
(299, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-28', '0000-00-00', 'Shajahanpur(शाहजहांपुर)', 'tenders/299.jpg', '1'),
(300, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-31', '0000-00-00', 'Firozabad', 'tenders/300.jpg', '1'),
(301, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-08-31', '0000-00-00', 'Prayagraj', 'tenders/301.pdf', '1'),
(302, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-06', '0000-00-00', 'Jhansi', 'tenders/302.jpg', '1'),
(303, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-05', '0000-00-00', 'Basti', 'tenders/303.jpg', '1'),
(304, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-05', '0000-00-00', 'Gorakhpur, Gorakhpur-II', 'tenders/304.jpg', '1'),
(305, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-06', '0000-00-00', 'Jhansi', 'tenders/305.jpg', '1'),
(306, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-05', '0000-00-00', 'Basti, Gorakhpur, Gorakhpur-II', 'tenders/306.jpg', '1'),
(307, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-19', '0000-00-00', 'Basti', 'tenders/307.jpg', '1'),
(308, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-19', '0000-00-00', 'Lucknow-II', 'tenders/308.jpg', '1'),
(309, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-17', '0000-00-00', 'Mirzapur', 'tenders/309.jpg', '1'),
(310, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-09-11', '0000-00-00', 'Ayodhya', 'tenders/310.jpg', '1'),
(311, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-05', '0000-00-00', 'Etawah(इटावा)', 'tenders/311.jpg', '1'),
(312, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-03', '0000-00-00', 'Ayodhya', 'tenders/312.jpg', '1'),
(313, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-05', '0000-00-00', 'Prayagraj', 'tenders/313.pdf', '1'),
(314, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-10', '0000-00-00', 'Ayodhya, Lucknow-II', 'tenders/314.pdf', '1'),
(315, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-09', '0000-00-00', 'Mukhyalay Prakhand', 'tenders/315.pdf', '1'),
(316, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-16', '0000-00-00', 'Gorakhpur', 'tenders/316.pdf', '1'),
(317, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-26', '0000-00-00', 'Mukhyalay Prakhand', 'tenders/317.pdf', '1'),
(318, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-24', '0000-00-00', 'Farrukhabad(फर्रूखाबाद), Firozabad, Kanpur', 'tenders/318.pdf', '1'),
(319, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-24', '0000-00-00', 'Farrukhabad(फर्रूखाबाद), Kanpur', 'tenders/319.pdf', '1'),
(320, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-10-28', '0000-00-00', 'Firozabad', 'tenders/320.pdf', '1'),
(321, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-11-07', '0000-00-00', 'Lucknow-III', 'tenders/321.pdf', '1'),
(322, '	ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-11-07', '0000-00-00', 'Lucknow-I', 'tenders/322.jpg', '1'),
(323, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-11-14', '0000-00-00', 'Ayodhya', 'tenders/323.jpg', '1'),
(324, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-11-16', '0000-00-00', 'Bareilly', 'tenders/324.jpg', '1'),
(325, 'निविदा का समाचार पत्र मे विज्ञापन के संबंध मे', '2024-11-13', '0000-00-00', 'Prayagraj', 'tenders/325.jpg', '1'),
(326, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-11-14', '0000-00-00', 'Chitrakoot, Etawah(इटावा)', 'tenders/326.jpg', '1'),
(327, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-11-13', '0000-00-00', 'Ayodhya, Sultanpur(सुल्तानपुर)', 'tenders/327.jpg', '1'),
(328, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-11-14', '0000-00-00', 'Meerut', 'tenders/328.jpg', '1'),
(329, 'ई टेण्डरिंग के मध्यम से अनलाइन निविदा मे आमंत्रण के संबंध मे', '2024-11-16', '0000-00-00', 'Bareilly, Shajahanpur(शाहजहांपुर)', 'tenders/329.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_time` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edition_time` varchar(100) DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `userid`, `pwd`, `type`, `user_name`, `father_name`, `address`, `mobile`, `created_by`, `creation_time`, `edited_by`, `edition_time`, `admin_remarks`, `branch`) VALUES
(1, 'sadmin', 'uprnss13579', '1', 'ADMIN', 'SUPER ADMIN', 'sultanpur', '7522893883', 'sadmin', '2023-08-13 11:55:22', 'sadmin', '2023-08-13 11:55:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `sno` int NOT NULL,
  `user_id` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_time` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edition_time` varchar(100) DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`sno`, `user_id`, `file_name`, `created_by`, `creation_time`, `edited_by`, `edition_time`, `admin_remarks`, `branch`) VALUES
(70, '10', '2', 'sadmin', '2023-08-19 15:15:57', NULL, NULL, NULL, NULL),
(71, '10', '3', 'sadmin', '2023-08-19 15:15:57', NULL, NULL, NULL, NULL),
(72, '10', '4', 'sadmin', '2023-08-19 15:15:57', NULL, NULL, NULL, NULL),
(73, '10', '11', 'sadmin', '2023-08-19 15:15:57', NULL, NULL, NULL, NULL),
(74, '10', '12', 'sadmin', '2023-08-19 15:15:57', NULL, NULL, NULL, NULL),
(75, '10', '13', 'sadmin', '2023-08-19 15:15:57', NULL, NULL, NULL, NULL),
(76, '10', '14', 'sadmin', '2023-08-19 15:15:57', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_detail`
--

CREATE TABLE `user_access_detail` (
  `sno` int NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `access_id` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_time` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edition_time` varchar(100) DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user_authentication`
--

CREATE TABLE `user_authentication` (
  `sno` int NOT NULL,
  `auth_link` varchar(100) DEFAULT NULL,
  `auth_name` varchar(100) DEFAULT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_time` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edition_time` varchar(100) DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user_files`
--

CREATE TABLE `user_files` (
  `sno` int NOT NULL,
  `file_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `display_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `creation_time` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL,
  `edition_time` varchar(100) DEFAULT NULL,
  `admin_remarks` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `sno` int NOT NULL,
  `user_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`sno`, `user_type`) VALUES
(10, 'sadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_hero`
--
ALTER TABLE `add_hero`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `add_index_notice`
--
ALTER TABLE `add_index_notice`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `add_notice`
--
ALTER TABLE `add_notice`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `add_photos`
--
ALTER TABLE `add_photos`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `uprnss_division`
--
ALTER TABLE `uprnss_division`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `uprnss_tender`
--
ALTER TABLE `uprnss_tender`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_access_detail`
--
ALTER TABLE `user_access_detail`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_authentication`
--
ALTER TABLE `user_authentication`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_files`
--
ALTER TABLE `user_files`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_hero`
--
ALTER TABLE `add_hero`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `add_index_notice`
--
ALTER TABLE `add_index_notice`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `add_notice`
--
ALTER TABLE `add_notice`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `add_photos`
--
ALTER TABLE `add_photos`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6257;

--
-- AUTO_INCREMENT for table `uprnss_division`
--
ALTER TABLE `uprnss_division`
  MODIFY `s_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `uprnss_tender`
--
ALTER TABLE `uprnss_tender`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `user_access_detail`
--
ALTER TABLE `user_access_detail`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_authentication`
--
ALTER TABLE `user_authentication`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_files`
--
ALTER TABLE `user_files`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
