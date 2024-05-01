-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2024 at 11:37 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u697255705_mvmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `android_settings`
--

CREATE TABLE `android_settings` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `value` text NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `android_settings`
--

INSERT INTO `android_settings` (`id`, `type`, `value`, `note`) VALUES
(5, 'Fb_Native_Counter', '8', 'Cell Position of Native Ads'),
(4, 'Interstitial_Show', '0', '0 for fb\r\n1 for Google\r\n2 for random'),
(3, 'FB_Google_Interstitial_Counter', '10', 'Position Of Intersial ADS'),
(6, 'Admob_Banner', 'ca-app-pub-5203596186337352/8100838377', 'google banner'),
(7, 'admob_interstitial', 'ca-app-pub-5203596186337352/8459946938', 'Google Instertial'),
(8, 'Admob_Native', 'ca-app-pub-5203596186337352/2551824766', 'google Reward'),
(9, 'Admob_App_id', '33BE2250B43518CCDA7DE426D04EE231', 'google app id'),
(10, 'Fb_Banner', '1271929509856193_1273417199707424', 'Fb_Banner '),
(12, 'fb_interstitial', '1271929509856193_1273421563040321', 'fb_interstitial'),
(13, 'fb_rewardedvideo', '1271929509856193_1273421556373655', 'fb_rewardedvideo'),
(14, 'fb_native', '1271929509856193_1273419499707194', 'fb_native'),
(19, 'String_P_U', 'https://thevideo.in/mvmaster/uploads/catey/', 'cat img url'),
(20, 'String_V_I_U', 'https://thevideo.in/mvmaster/uploads/vid/ima/', 'String_V_I_U'),
(21, 'String_V_O_U', 'https://thevideo.in/mvmaster/uploads/vid/origl/', 'String_V_O_U'),
(22, 'String_V_T_U', 'https://thevideo.in/mvmaster/uploads/vid/thum/', 'String_V_T_U'),
(23, 'String_PL', 'https://unicode612.github.io/web/magically_policy.html', 'String_PL'),
(24, 'Version_Code', '1.7', 'updade');

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`id`, `username`, `password`) VALUES
(1, 'Admin', '23693H!ten');

-- --------------------------------------------------------

--
-- Table structure for table `ios_settings`
--

CREATE TABLE `ios_settings` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `value` text NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ios_settings`
--

INSERT INTO `ios_settings` (`id`, `type`, `value`, `note`) VALUES
(1, 'rewarded_video_fb_google', '1', '0 for fb | 1 for google'),
(16, 'admob_native', 'ca-app-pub-2329555560597510/1747137225', 'google Native'),
(3, 'interstitial_ads_pr_click', '15', 'Show how many click alter shown'),
(4, 'fb_google_interstitial_ads_render_time', '5', 'Second time for delay'),
(5, 'interstitial_show', '1', '0 FB | 1 Google | 2 Rendom'),
(6, 'fb_native', '1271929509856193_1285426601839817', 'FB native Ads'),
(7, 'fb_banner_native', '1271929509856193_1285427635173047', 'FB native Banner'),
(8, 'fb_interstitial', '1271929509856193_1285428311839646', 'FB Interstitial'),
(9, 'fb_rewarded', 'YOUR_PLACEMENT_ID', 'FB Rewarded Ads'),
(10, 'fb_banner', '1271929509856193_1285428528506291', 'FB Banner'),
(11, 'admob_banner', 'ca-app-pub-2329555560597510/5077197513', 'google banner'),
(12, 'admob_interstitial', 'ca-app-pub-2329555560597510/4812284263\r\n', 'google Instertial'),
(13, 'admob_reward', 'ca-app-pub-4987360868976954/3802286086\r\n', 'google Reward'),
(15, 'admob_app_id', 'ca-app-pub-4987360868976954~7177412555', 'google app id'),
(17, 'ads_show', '0', '0 for not show\r\n1 for show');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_image` text NOT NULL,
  `visible` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `order_ios` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`, `cat_image`, `visible`, `order`, `order_ios`, `created_date`, `updated_date`) VALUES
(1, 'Latest', 'latest.png', 1, 204, 1, '2020-12-02 13:26:45', '2020-12-02 18:56:45'),
(2, 'Popular', 'popular.png', 1, 205, 0, '2020-12-02 13:23:37', '2021-01-19 16:00:19'),
(3, 'Diwali', 'diwali.png', 1, 1, 1, '2020-12-02 13:27:28', '2020-12-02 18:57:28'),
(5, '2021', 'newyear.png', 1, 1, 1, '2020-12-02 13:28:13', '2020-12-28 20:46:21'),
(6, 'Love', 'love.png', 1, 196, 1, '2020-12-02 13:28:35', '2020-12-02 18:58:35'),
(7, 'Dialogue', 'dialogue.png', 1, 1, 1, '2020-12-02 13:28:50', '2020-12-02 18:58:50'),
(8, 'Birthday', 'birthday.png', 1, 1, 1, '2020-12-02 13:29:14', '2020-12-02 18:59:14'),
(9, 'Annivarsary', 'annivarsary.png', 1, 191, 1, '2020-12-02 13:29:29', '2020-12-02 18:59:29'),
(10, 'Friendship', 'friendship.png', 1, 192, 1, '2020-12-02 13:29:44', '2020-12-02 18:59:44'),
(11, 'Mahadev', 'mahadev.png', 1, 1, 1, '2020-12-02 13:30:11', '2020-12-02 19:00:11'),
(14, 'Indian', 'indian.png', 1, 1, 1, '2020-12-02 13:31:03', '2020-12-02 19:01:03'),
(15, 'Monsoon', 'd039aeac55c175cef3ae8d56582e37d6.png', 1, 192, 0, '2021-07-24 09:24:10', '2021-07-24 14:55:22'),
(16, 'Ganesha', 'ganesha.png', 1, 1, 1, '2020-12-02 13:31:31', '2020-12-02 19:01:31'),
(17, 'Janmashtami', 'janmashtami.png', 1, 1, 1, '2020-12-02 13:31:48', '2020-12-02 19:01:48'),
(18, 'Navratri', 'navratri.png', 1, 192, 1, '2020-12-02 13:32:13', '2020-12-02 19:02:13'),
(19, 'News', 'news.png', 1, 194, 1, '2020-12-02 13:32:28', '2020-12-02 19:02:28'),
(20, 'Magical', 'magical.png', 1, 197, 1, '2020-12-02 13:32:47', '2020-12-02 19:02:47'),
(21, 'Lyrical', 'lyrical.png', 1, 193, 1, '2020-12-02 13:33:03', '2020-12-02 19:03:03'),
(23, 'Particle', 'particle.png', 1, 201, 2, '2020-12-02 13:33:36', '2020-12-02 19:03:36'),
(24, 'Rakhi', 'rakhi.png', 1, 1, 1, '2020-12-02 13:31:19', '2020-12-02 19:01:19'),
(25, 'Baby', '181c11291dc4e56be72520782bc63c30.png', 1, 0, 0, '2021-07-24 09:24:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device`
--

CREATE TABLE `tbl_device` (
  `id` int(11) NOT NULL,
  `uuid` text NOT NULL,
  `device_token` text NOT NULL,
  `device_type` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1,
  `like_video` text NOT NULL,
  `is_updatenotification` int(11) NOT NULL DEFAULT 0 COMMENT '0=Not update 1= update',
  `notification_byid` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_device`
--

INSERT INTO `tbl_device` (`id`, `uuid`, `device_token`, `device_type`, `is_notification`, `like_video`, `is_updatenotification`, `notification_byid`, `created_date`, `updated_date`) VALUES
(1, 'id', 'token', 0, 1, '', 0, '', '2020-12-04 05:14:29', '2023-07-06 22:40:28'),
(2, '123', '2121', 0, 1, '', 0, '', '2020-12-04 05:18:47', '2020-12-04 05:19:21'),
(3, '123aw', '21', 0, 1, '', 0, '', '2020-12-04 05:19:53', NULL),
(4, 'ids', '21', 0, 1, '', 0, '', '2020-12-04 05:20:40', '2020-12-14 09:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `uuid` text NOT NULL,
  `device_type` int(11) NOT NULL DEFAULT 0,
  `details` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_push`
--

CREATE TABLE `tbl_push` (
  `id` int(11) NOT NULL,
  `uuid` text NOT NULL,
  `device_token` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_coin`
--

CREATE TABLE `tbl_request_coin` (
  `id` int(11) NOT NULL,
  `uuid` text NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `device_id` int(11) NOT NULL,
  `coin_request` int(11) NOT NULL,
  `stauts` int(11) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_video`
--

CREATE TABLE `tbl_user_video` (
  `vd_id` int(11) NOT NULL,
  `vd_title` text NOT NULL,
  `vd_details` text NOT NULL,
  `email` text NOT NULL,
  `vd_url` text NOT NULL,
  `vd_visible` int(11) NOT NULL DEFAULT 0,
  `uuid` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `vd_id` int(11) NOT NULL,
  `vd_title` text NOT NULL,
  `vd_category` text NOT NULL,
  `vd_ourl` text NOT NULL,
  `vd_image` text NOT NULL,
  `vd_zip` text NOT NULL,
  `vd_visible` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`vd_id`, `vd_title`, `vd_category`, `vd_ourl`, `vd_image`, `vd_zip`, `vd_visible`, `created_date`, `updated_date`) VALUES
(1, 'udi patang', '20', '9639d7a159c3ced2079e77feeb32b0cf.mp4', 'a83b9f4c8a2594ba267a83ea02c45a6e.jpg', '9639d7a159c3ced2079e77feeb32b0cf.zip', 1, '2020-12-04 18:55:32', '0000-00-00 00:00:00'),
(2, 'happy lohri', '20', 'a76bef9c060ca487a7ff416684dbdbe0.mp4', 'd613543b33dc86de8ad0efa804339236.jpg', 'a76bef9c060ca487a7ff416684dbdbe0.zip', 1, '2020-12-04 18:55:59', '0000-00-00 00:00:00'),
(3, 'kites', '20', 'caea857eb3ef2549c845c28b4ea6c06b.mp4', 'd1b4933dbc8bf8478724f8e1eeaa8377.jpg', 'caea857eb3ef2549c845c28b4ea6c06b.zip', 1, '2020-12-04 18:56:15', '0000-00-00 00:00:00'),
(4, 'holi', '20', '04121c4fc53fa3bc18808179a6a13ee4.mp4', 'e411fc12105e74406ebc9499740eb8fe.jpg', '04121c4fc53fa3bc18808179a6a13ee4.zip', 1, '2020-12-04 18:56:46', '0000-00-00 00:00:00'),
(5, 'womens day', '20', 'f715c19b19a358a7cb205c6140ae9c1a.mp4', '6193a163a9525b09307cae73cc7d059b.jpg', 'f715c19b19a358a7cb205c6140ae9c1a.zip', 1, '2020-12-04 18:57:10', '0000-00-00 00:00:00'),
(6, 'minimal', '20', 'f13985f87fc5063e23c0e531bd7fd69b.mp4', 'f20b4fed3e1c07de662aa14dc4743d4c.jpg', 'f13985f87fc5063e23c0e531bd7fd69b.zip', 1, '2020-12-04 18:57:31', '0000-00-00 00:00:00'),
(7, 'traveling', '20', 'b60b8329a90e4724e17b7ed37f12caf2.mp4', '40a430edc7506706ad74809e5f453724.jpg', 'b60b8329a90e4724e17b7ed37f12caf2.zip', 1, '2020-12-04 18:57:56', '0000-00-00 00:00:00'),
(8, 'fashion', '20', 'bcfceced1d2964a48ea2bf9ae363f6ce.mp4', '2dfb50fc258bea94efd589f4040fcf44.jpg', 'bcfceced1d2964a48ea2bf9ae363f6ce.zip', 1, '2020-12-04 18:58:25', '0000-00-00 00:00:00'),
(9, 'heaven', '20', 'ce2a1f394ecbd1a9d5e0e1a835b25c33.mp4', 'e5e1609a115d1d526b917629d6014555.jpg', 'ce2a1f394ecbd1a9d5e0e1a835b25c33.zip', 1, '2020-12-04 18:58:39', '0000-00-00 00:00:00'),
(10, 'uhh na na na', '20', '1844d9faeab5f4cf1639856f218bd2a1.mp4', '07f30780cf26ceb78de624b58d97663c.jpg', '1844d9faeab5f4cf1639856f218bd2a1.zip', 1, '2020-12-04 18:58:46', '0000-00-00 00:00:00'),
(11, 'help me', '20', '02b308ed2337e62893ea985a4c48489d.mp4', 'ca6b6324c8cc7dad952bb8d4f8c845a6.jpg', '02b308ed2337e62893ea985a4c48489d.zip', 1, '2020-12-04 18:58:58', '0000-00-00 00:00:00'),
(12, 'puzzle reveal', '20', '4731dc3070dff76e0abf65021097e773.mp4', '253546b285fc29f0734f5fca1357c940.jpg', '4731dc3070dff76e0abf65021097e773.zip', 1, '2020-12-04 18:59:05', '0000-00-00 00:00:00'),
(13, 'nazm nazm', '20', 'e7a51f836f4161a8a0e9d3935a7694ef.mp4', '0f53fc2bb9880b10e22a63f8a2c8140b.jpg', 'e7a51f836f4161a8a0e9d3935a7694ef.zip', 1, '2020-12-04 18:59:51', '0000-00-00 00:00:00'),
(14, 'base ball', '20', '8ba8d7706a62a91f3a27be302a4ba53f.mp4', '7338c88c1346b8bff3154c8def91b130.jpg', '8ba8d7706a62a91f3a27be302a4ba53f.zip', 1, '2020-12-04 19:00:12', '0000-00-00 00:00:00'),
(15, 'all the way', '20', '51272d9c9c29a4c3df482bc5fc2904e5.mp4', '75a73f66e4b9f7bfeb156e374fac7d4e.jpg', '51272d9c9c29a4c3df482bc5fc2904e5.zip', 1, '2020-12-04 19:00:27', '0000-00-00 00:00:00'),
(16, 'rainy face', '20', '0d1314c0a63faa9bf92c81b693510102.mp4', 'e68c7fb5dee6d83f8bb14ead16f48e3e.jpg', '0d1314c0a63faa9bf92c81b693510102.zip', 1, '2020-12-04 19:00:53', '0000-00-00 00:00:00'),
(17, 'flare gu', '20', '9465d33d1a4b5c31873fec29b80bbdeb.mp4', 'c31e809f469c57c6aa6b873ddc44b19d.jpg', '9465d33d1a4b5c31873fec29b80bbdeb.zip', 1, '2020-12-04 19:01:07', '0000-00-00 00:00:00'),
(18, 'guru purnima', '20', '283b4ff61cb0a0143b942341e8e03808.mp4', '18f103a66e5f000f035f3ea3f6c97f35.jpg', '283b4ff61cb0a0143b942341e8e03808.zip', 1, '2020-12-04 19:01:51', '0000-00-00 00:00:00'),
(19, 'burning image', '20', '6d4b4b1368741803bd428b8907daff20.mp4', '542018e27cec29262afcefef6b9f4e5c.jpg', '6d4b4b1368741803bd428b8907daff20.zip', 1, '2020-12-04 19:01:57', '0000-00-00 00:00:00'),
(20, 'smart and ho', '20', '12a2341132a0aed261b3390055134fe9.mp4', 'b60cae5c00eb3e3b28a1826bc27d1dbb.jpg', '12a2341132a0aed261b3390055134fe9.zip', 1, '2020-12-04 19:05:21', '0000-00-00 00:00:00'),
(21, 'heart frame', '20', 'e9c0ac484fffa7927589a49cfd59d947.mp4', '8cf692fc742f96686fe6a74eebb4e3b4.jpg', 'e9c0ac484fffa7927589a49cfd59d947.zip', 1, '2020-12-04 19:05:32', '0000-00-00 00:00:00'),
(22, 'helicopte', '20', '6334256836b3ad7ec411f6e7d49f42f3.mp4', '79e06c0c5ce76d56f6e63b92550300b3.jpg', '6334256836b3ad7ec411f6e7d49f42f3.zip', 1, '2020-12-04 19:06:10', '0000-00-00 00:00:00'),
(23, 'ramadan', '20', 'ece6e10dcb5b59a588daa83eb6a9836f.mp4', '0ba8d6813cfdb476eadcca8300c1fbf2.jpg', 'ece6e10dcb5b59a588daa83eb6a9836f.zip', 1, '2020-12-04 19:06:21', '0000-00-00 00:00:00'),
(24, 'butterfly', '20', 'fec7ee63592b819d709de48e4231a0fe.mp4', 'a1f7e13ff8e73f9f9bd53728de617a2b.jpg', 'fec7ee63592b819d709de48e4231a0fe.zip', 1, '2020-12-04 19:06:46', '0000-00-00 00:00:00'),
(25, 'happy holi', '20', '003b5a04cc515ab42ecebc2816b85c89.mp4', 'b3e1783b1bfd45122243c5a86f76804a.jpg', '003b5a04cc515ab42ecebc2816b85c89.zip', 1, '2020-12-04 19:07:53', '0000-00-00 00:00:00'),
(26, 'holi', '20', '2714f4a334b120fadbc8dd4bb6549250.mp4', '027938c2042f0fadf930d568834f7044.jpg', '2714f4a334b120fadbc8dd4bb6549250.zip', 1, '2020-12-04 19:09:23', '0000-00-00 00:00:00'),
(27, 'holi', '20', '0863a7a19bb7f1376cefcf3a07dd8303.mp4', '7a994892f9637c2e16a29fc49d5d6ac8.jpg', '0863a7a19bb7f1376cefcf3a07dd8303.zip', 1, '2020-12-04 19:10:38', '0000-00-00 00:00:00'),
(28, 'square blocks', '20', '1e3bc5ea2ad0574bfa6938a62cd0415d.mp4', '8123954239c94e217ed38469647fbd05.jpg', '1e3bc5ea2ad0574bfa6938a62cd0415d.zip', 1, '2020-12-04 19:11:07', '0000-00-00 00:00:00'),
(29, 'yaadein', '20', '4481a1cb32b378d9532329694e142de9.mp4', 'd29f0c39cae29133c0cc7d78e3142e05.jpg', '4481a1cb32b378d9532329694e142de9.zip', 1, '2020-12-04 19:11:37', '0000-00-00 00:00:00'),
(30, 'happy ona', '20', 'eb446b6c18cf8d634434f375e4cfe8cb.mp4', 'bb3f2389ed6ff13bc49695a99e093dcf.jpg', 'eb446b6c18cf8d634434f375e4cfe8cb.zip', 1, '2020-12-04 19:13:40', '0000-00-00 00:00:00'),
(31, 'happiness and sadness', '20', 'b673beea56084e57a4192e8f6b4c6952.mp4', '6cf14de1b92b913bd62cf574625e8efd.jpg', 'b673beea56084e57a4192e8f6b4c6952.zip', 1, '2020-12-04 19:14:22', '0000-00-00 00:00:00'),
(32, 'rasode me kon tha', '20', '94f21154a3905103a86741caa8f24461.mp4', 'b3c79c0b274b988a1d1e3df9206b6617.jpg', '94f21154a3905103a86741caa8f24461.zip', 1, '2020-12-04 19:15:11', '0000-00-00 00:00:00'),
(33, 'tere naal', '20', '0d07d074c0079f0f0502e610d4657b40.mp4', 'e29c2e2eea8f38c2c1893ec85e084c27.jpg', '0d07d074c0079f0f0502e610d4657b40.zip', 1, '2020-12-04 19:16:34', '0000-00-00 00:00:00'),
(34, 'tu mile', '20', 'd0689d681813023e32c6e4ddb0d27550.mp4', '0a3ff2cef73a81766a2b13a611c9a914.jpg', 'd0689d681813023e32c6e4ddb0d27550.zip', 1, '2020-12-04 19:16:55', '0000-00-00 00:00:00'),
(35, 'dil na jaane kyun', '20', 'db97bb24df90cc68c9379eda5c114b19.mp4', 'fdeea35a17b4171047617522bff36871.jpg', 'db97bb24df90cc68c9379eda5c114b19.zip', 1, '2020-12-04 19:18:38', '0000-00-00 00:00:00'),
(37, 'Samandar', '20', 'e07dd2869db044722b488f552ceecb03.mp4', 'e0caae0bd7b6170dd9d9442a7d134e36.jpg', 'e07dd2869db044722b488f552ceecb03.zip', 1, '2020-12-04 19:21:28', '0000-00-00 00:00:00'),
(38, 'chidiya', '20', '27e2098b93bcc5dd58ae6a1c9ea0cc51.mp4', '968a8682e33839e19352e8c79a9121db.jpg', '27e2098b93bcc5dd58ae6a1c9ea0cc51.zip', 1, '2020-12-04 19:23:20', '0000-00-00 00:00:00'),
(39, 'enna sona', '20', '6a2c4244fc5188c048d6df5d75fa29b7.mp4', 'e0caad898ac07fcd5fc97b98bad429b2.jpg', '6a2c4244fc5188c048d6df5d75fa29b7.zip', 1, '2020-12-04 19:23:58', '0000-00-00 00:00:00'),
(40, 'khairiyat', '20', '9b3629427c0b383414d3a6a5780ecb86.mp4', 'aeafdd7d1832a7a04f3f28fe2e5a2475.jpg', '9b3629427c0b383414d3a6a5780ecb86.zip', 1, '2020-12-04 19:24:45', '0000-00-00 00:00:00'),
(41, 'keise batau tuje', '20', 'b8f31aaf2011b4d24fa532ff5ce1d2d2.mp4', '89967dd3d5fc01d69de505613f42b40c.jpg', 'b8f31aaf2011b4d24fa532ff5ce1d2d2.zip', 1, '2020-12-04 19:25:12', '0000-00-00 00:00:00'),
(42, 'shree ram', '20', 'd9cb547802a4d158ecf6a91adda9caa9.mp4', '88badb5e3d44fe6f65f52183fa5f3318.jpg', 'd9cb547802a4d158ecf6a91adda9caa9.zip', 1, '2020-12-04 19:25:46', '0000-00-00 00:00:00'),
(43, 'bharat ka baccha baccha', '20', '75d17cee7f0ccf561920260b7ace8e8d.mp4', '27819ad9ee31c51738f6be927da58409.jpg', '75d17cee7f0ccf561920260b7ace8e8d.zip', 1, '2020-12-04 19:26:20', '0000-00-00 00:00:00'),
(44, 'me tera ban jaunga', '20', '3ca76adebd9ca0fe5b0fdd82991fede8.mp4', '0b1683699f49751004574302b58da6b8.jpg', '3ca76adebd9ca0fe5b0fdd82991fede8.zip', 1, '2020-12-04 19:27:36', '0000-00-00 00:00:00'),
(45, 'dheere dheere', '20', 'a4a4648d9f3af782ca83dc1c1421c3c1.mp4', '1328f06754bc114bc9a2c387cee8b9ca.jpg', 'a4a4648d9f3af782ca83dc1c1421c3c1.zip', 1, '2020-12-04 19:28:45', '0000-00-00 00:00:00'),
(46, 'meri aashaqui', '20', 'e289050e54da1d3b920ea39cb68bd775.mp4', '91da09269906496c52ee0fd9778a6185.jpg', 'e289050e54da1d3b920ea39cb68bd775.zip', 1, '2020-12-04 19:30:09', '0000-00-00 00:00:00'),
(47, 'ha tera intezar hai', '20', '8c139991edaa4d8479842a02013e525a.mp4', '2991cecd5a263b677678187b7669fc83.jpg', '8c139991edaa4d8479842a02013e525a.zip', 1, '2020-12-04 19:31:07', '0000-00-00 00:00:00'),
(48, 'base bal', '20', 'a957a29ec0f13d3cd2bdf102cb767ff3.mp4', '716c59dd8e76ab96726588948e5d3410.jpg', 'a957a29ec0f13d3cd2bdf102cb767ff3.zip', 1, '2020-12-04 19:31:39', '0000-00-00 00:00:00'),
(49, 'dekha hai teri aankhon ko', '20', '69d6e9cf1fc44639b3f3f97e75f8e784.mp4', 'ec8d5b002d0ae83a3f3b3ae638298508.jpg', '69d6e9cf1fc44639b3f3f97e75f8e784.zip', 1, '2020-12-04 19:32:00', '0000-00-00 00:00:00'),
(50, 'dil bechara', '20', '0bca2458668fd60526ba8ecd91d65b17.mp4', '78d31264c5057401b626b2d57b0cc6d4.jpg', '0bca2458668fd60526ba8ecd91d65b17.zip', 1, '2020-12-04 19:33:17', '0000-00-00 00:00:00'),
(51, 'kehte he khudan', '20', 'e488a4403307963070c32fe8b08b1441.mp4', 'd8b358705b0501373e3c0c87694b1879.jpg', 'e488a4403307963070c32fe8b08b1441.zip', 1, '2020-12-04 19:33:36', '0000-00-00 00:00:00'),
(52, 'kyon', '20', '9456a6ee1eb377582b778cd9fd515bc8.mp4', '9ffe2ddf7b1710066210d7ca313504ae.jpg', '9456a6ee1eb377582b778cd9fd515bc8.zip', 1, '2020-12-04 19:34:04', '0000-00-00 00:00:00'),
(53, 'love shape', '20', 'b0d1ced7e9f9d3447c7d630baa55d293.mp4', '92a4945dce05ba4360719e87b93f14f1.jpg', 'b0d1ced7e9f9d3447c7d630baa55d293.zip', 1, '2020-12-04 19:35:24', '0000-00-00 00:00:00'),
(54, 'leja re', '20', '875583fd0bb1c47d2e12ffea396d43c3.mp4', 'e98d86a286f1b669a64271c12ce7ac28.jpg', '875583fd0bb1c47d2e12ffea396d43c3.zip', 1, '2020-12-04 19:35:53', '0000-00-00 00:00:00'),
(55, 'animal walk', '20', '12795942ccefb92d2b5303c43488738f.mp4', '0b6757610618484b395cc703fd04e001.jpg', '12795942ccefb92d2b5303c43488738f.zip', 1, '2020-12-04 19:36:38', '0000-00-00 00:00:00'),
(56, 'love pattern', '20', 'ec264c293c6b2caf69c0db961cda2da7.mp4', 'c4e5e1b2b2d4fe17d2aa0ae8835ffa55.jpg', 'ec264c293c6b2caf69c0db961cda2da7.zip', 1, '2020-12-04 19:37:11', '0000-00-00 00:00:00'),
(57, 'flying phone', '20', '272b06c1800183eb59135231968a755b.mp4', 'ae8691fbc205bbe076d51d84a5546fcf.jpg', '272b06c1800183eb59135231968a755b.zip', 1, '2020-12-04 19:37:30', '0000-00-00 00:00:00'),
(58, 'fathers day shayri', '20', 'a318802c81e5eb0bf891b2d1d413842d.mp4', '5214fd358df4a916cb03af9a5e507835.jpg', 'a318802c81e5eb0bf891b2d1d413842d.zip', 1, '2020-12-04 19:37:49', '0000-00-00 00:00:00'),
(59, 'fathers day', '20', '3669747a7b54a1f75a277beb3351b9c2.mp4', '87dbab1732e15c9f573b751672d33ef8.jpg', '3669747a7b54a1f75a277beb3351b9c2.zip', 1, '2020-12-04 19:38:14', '0000-00-00 00:00:00'),
(60, 'fathers day', '20', '965e8ac295ec04a414541db1ccacd6ef.mp4', '1d8e0d3b65090e7475d07eaf1df66d64.jpg', '965e8ac295ec04a414541db1ccacd6ef.zip', 1, '2020-12-04 19:38:43', '0000-00-00 00:00:00'),
(61, 'fathers day', '20', 'b91f987d1e8c5181b4e7c92564a267e4.mp4', '8ebc2f123bb5b14f4cad5fb2a46b0b10.jpg', 'b91f987d1e8c5181b4e7c92564a267e4.zip', 1, '2020-12-04 19:39:17', '0000-00-00 00:00:00'),
(62, 'd photo intro', '20', '70198102eb76ec1211d79d05050d66e7.mp4', '970ca3c029cfbedcf33f483c287ebb85.jpg', '70198102eb76ec1211d79d05050d66e7.zip', 1, '2020-12-04 19:39:39', '0000-00-00 00:00:00'),
(63, 'fathers day shayri', '20', 'bb34c2e695c4e5ceed0b190079ef951a.mp4', 'f2498a03f9cf9622f023eaed507de2ba.jpg', 'bb34c2e695c4e5ceed0b190079ef951a.zip', 1, '2020-12-04 19:40:14', '0000-00-00 00:00:00'),
(64, 'kabhi jo badal', '20', '905116dffa5219caad412542ddee2389.mp4', 'b984e1d8d374cc25b95a68313010db50.jpg', '905116dffa5219caad412542ddee2389.zip', 1, '2020-12-04 19:41:13', '0000-00-00 00:00:00'),
(65, 'model of the year', '20', 'e9b15e412371c942649fbafd14bef133.mp4', '4989bd7ae2558fafe806d7bc069c2d0c.jpg', 'e9b15e412371c942649fbafd14bef133.zip', 1, '2020-12-04 19:41:37', '0000-00-00 00:00:00'),
(66, 'beauty macku', '20', '6be5dd5bed47c70c5869951261a643d2.mp4', 'cda9db8f4c2b7afbd2b441068086450c.jpg', '6be5dd5bed47c70c5869951261a643d2.zip', 1, '2020-12-04 19:42:01', '0000-00-00 00:00:00'),
(67, 'me dekhu teri photo', '20', '87e3f637643cbf4541de72df1425e340.mp4', 'c85bcfd2fccb5cb2e25745a7f5721079.jpg', '87e3f637643cbf4541de72df1425e340.zip', 1, '2020-12-04 19:42:52', '0000-00-00 00:00:00'),
(68, 'tod da e di', '20', 'f1211dea0707562dd37ac1c329525553.mp4', 'fc88c7cf355e222ec517ca11c898536f.jpg', 'f1211dea0707562dd37ac1c329525553.zip', 1, '2020-12-04 19:43:25', '0000-00-00 00:00:00'),
(69, 'mobile screen', '20', '8417ba807f2d0c79d6a77168e08afe9e.mp4', 'b0d665bcd8ee9b165dfc3dcefefd433c.jpg', '8417ba807f2d0c79d6a77168e08afe9e.zip', 1, '2020-12-04 19:43:44', '0000-00-00 00:00:00'),
(70, 'mumba', '20', '9b09b113bb9433cb1ff1d8051e102dcb.mp4', '0de7d9d0daaf40f8a6f24add749ec90f.jpg', '9b09b113bb9433cb1ff1d8051e102dcb.zip', 1, '2020-12-04 19:44:23', '0000-00-00 00:00:00'),
(71, 'hamari yaariyan', '20', '7fa9ed76f22cebd30b1dae6d3318364c.mp4', '7b5eb9c18a1c6fcf2997f99cbd366aa5.jpg', '7fa9ed76f22cebd30b1dae6d3318364c.zip', 1, '2020-12-04 19:45:35', '0000-00-00 00:00:00'),
(72, 'dil divana kehta h', '20', '7503f4624644d8bd788ec26140a97b8c.mp4', 'd97aac7737c7efa57deca3f8ead08a2f.jpg', '7503f4624644d8bd788ec26140a97b8c.zip', 1, '2020-12-04 19:46:13', '0000-00-00 00:00:00'),
(73, 'transition', '20', '875fe9e990dfdae4f34fbe7a98c95649.mp4', '916827cd9f31614c55cf85f162afb5cf.jpg', '875fe9e990dfdae4f34fbe7a98c95649.zip', 1, '2020-12-04 19:46:35', '0000-00-00 00:00:00'),
(74, 'miss yo', '20', '1082ca34093aad76a2323bb7ec4ca987.mp4', 'f5942126466ec038f39ce3b439d6815b.jpg', '1082ca34093aad76a2323bb7ec4ca987.zip', 1, '2020-12-04 19:47:33', '0000-00-00 00:00:00'),
(75, 'blood photo reveal', '20', '046eacd9e6433dbad7d6ff39671dc39d.mp4', 'ea73b285eb93f84f57d5dbaf1598b17f.jpg', '046eacd9e6433dbad7d6ff39671dc39d.zip', 1, '2020-12-04 19:47:43', '0000-00-00 00:00:00'),
(76, 'bewafa', '20', '83a6042124cb582ed4c21720967c7b18.mp4', '6ec427ee31952451ab9a02e1912ec87e.jpg', '83a6042124cb582ed4c21720967c7b18.zip', 1, '2020-12-04 19:48:11', '0000-00-00 00:00:00'),
(77, 'eid', '20', '950cc7bcbd79ef300d2c300bbb454a82.mp4', '66626cc6e704a02ed4db467e9bb74c12.jpg', '950cc7bcbd79ef300d2c300bbb454a82.zip', 1, '2020-12-04 19:48:34', '0000-00-00 00:00:00'),
(78, 'Ramadan e kareem', '20', '6750fa2d4e2adf6e3d1b87a03e53a0b5.mp4', '0a5ff68cfd96c3ab42f9a5f7c26d91e0.jpg', '6750fa2d4e2adf6e3d1b87a03e53a0b5.zip', 1, '2020-12-04 19:48:50', '0000-00-00 00:00:00'),
(79, 'eid', '20', '8cb34a6288b0ce9294981e4fda4d6c7d.mp4', 'fa4f7e36b27cbee938b6a6aea6de0088.jpg', '8cb34a6288b0ce9294981e4fda4d6c7d.zip', 1, '2020-12-04 19:49:58', '0000-00-00 00:00:00'),
(80, 'ramadan', '20', 'e5a0da90a0f3d73bd5dc93ac37439130.mp4', '2d54b85c32f2799b67ceef77299696ba.jpg', 'e5a0da90a0f3d73bd5dc93ac37439130.zip', 1, '2020-12-03 23:24:30', '0000-00-00 00:00:00'),
(81, 'family', '20', 'd79a9e9b857f0987aaf895a007a61be7.mp4', '10609a805362712d534f2154982f6bb6.jpg', 'd79a9e9b857f0987aaf895a007a61be7.zip', 1, '2020-12-03 23:24:33', '0000-00-00 00:00:00'),
(82, 'machine printing', '20', '954960c2a6432bdb24404364d6991461.mp4', 'a7dd8db98e54ec1866e4e744afee1689.jpg', '954960c2a6432bdb24404364d6991461.zip', 1, '2020-12-03 23:24:40', '0000-00-00 00:00:00'),
(83, 'i am ok', '20', 'ba72999ba125d55d37a16b28c2fc9f86.mp4', '03b801677a184a18754959ea550511f8.jpg', 'ba72999ba125d55d37a16b28c2fc9f86.zip', 1, '2020-12-03 23:24:46', '0000-00-00 00:00:00'),
(84, 'hook the heart challeng', '20', 'b5e9d5c769a3aefba0faacf2748f91b5.mp4', '866d001df65d81b6cbc0edee5fc2a08b.jpg', 'b5e9d5c769a3aefba0faacf2748f91b5.zip', 1, '2020-12-03 23:24:48', '0000-00-00 00:00:00'),
(85, 'munna badnam hu', '20', '0e19af768bb0538d837f25a2a0b638a4.mp4', '6574b007eb9b085a92d5c4f7cba35ad5.jpg', '0e19af768bb0538d837f25a2a0b638a4.zip', 1, '2020-12-03 23:25:02', '0000-00-00 00:00:00'),
(86, 'ye ladka haye diwana', '20', '8103e3038514cde25d1d981146e6bc9f.mp4', 'b45d084a7a30f93a59eb6cac25578333.jpg', '8103e3038514cde25d1d981146e6bc9f.zip', 1, '2020-12-03 23:25:10', '0000-00-00 00:00:00'),
(87, 'social medi', '20', '2a9081dcca913fdbece5ce4c99f05053.mp4', 'bd4783a50a8b415b0744271bd8ae3069.jpg', '2a9081dcca913fdbece5ce4c99f05053.zip', 1, '2020-12-03 23:25:12', '0000-00-00 00:00:00'),
(88, 'khich meri photo', '20', '6bbb5f80191f35514befda3591a55d95.mp4', '3ad387ecb4a41b41cfdf3d5e35847ec8.jpg', '6bbb5f80191f35514befda3591a55d95.zip', 1, '2020-12-03 23:25:20', '0000-00-00 00:00:00'),
(89, 'face score gam', '20', 'e8f90975ce3099e8f006f08677e4f5e0.mp4', '75208a3d849ec4bea239d46b91af6f33.jpg', 'e8f90975ce3099e8f006f08677e4f5e0.zip', 1, '2020-12-03 23:25:25', '0000-00-00 00:00:00'),
(90, 'corona virus', '20', 'e64f5b1e63199858b6439bea00b80149.mp4', '2b2cf3b903a9bbc08d51cc122a68c82a.jpg', 'e64f5b1e63199858b6439bea00b80149.zip', 1, '2020-12-03 23:25:43', '0000-00-00 00:00:00'),
(91, 'dot photo', '20', '786e2f614ca5bf46ec87b03a1800601c.mp4', '33f788ccf53aeafd78d2dd7e911199be.jpg', '786e2f614ca5bf46ec87b03a1800601c.zip', 1, '2020-12-03 23:25:54', '0000-00-00 00:00:00'),
(92, 'ankhiyonse goli mare', '20', 'c8e24cb3de78a327a1b2c9bf50b5dadf.mp4', '34d7dd71e317e77e418e0b88596e5c33.jpg', 'c8e24cb3de78a327a1b2c9bf50b5dadf.zip', 1, '2020-12-03 23:25:59', '0000-00-00 00:00:00'),
(93, 'building photo', '20', 'ff0a324f0a024d85117b7dac0021ffba.mp4', '66b229072c60a9c41729b21ade80ec18.jpg', 'ff0a324f0a024d85117b7dac0021ffba.zip', 1, '2020-12-03 23:26:27', '0000-00-00 00:00:00'),
(94, 'water spra', '20', '66166cc172ad0fa1e430426ca518b9b4.mp4', '0eb5ae20fa933944b95c79bc0f04f8ef.jpg', '66166cc172ad0fa1e430426ca518b9b4.zip', 1, '2020-12-03 23:26:43', '0000-00-00 00:00:00'),
(95, 'door knocking', '20', '28ce67c9267c328e1cfe42e3368ca1f0.mp4', 'c897c7e701d4bd3e13ea87ff7b3e6efb.jpg', '28ce67c9267c328e1cfe42e3368ca1f0.zip', 1, '2020-12-03 23:26:50', '0000-00-00 00:00:00'),
(96, 'rubik cube', '20', 'ca464f50ceb9211724edd074b8fd5488.mp4', 'b2939cd0bf12000142f1724f3e279f8f.jpg', 'ca464f50ceb9211724edd074b8fd5488.zip', 1, '2020-12-03 23:26:57', '0000-00-00 00:00:00'),
(97, 'moon', '20', 'e03fd730e0b813309048f95dafa5729b.mp4', '87876b99222ea9bc5be60faabcbda19f.jpg', 'e03fd730e0b813309048f95dafa5729b.zip', 1, '2020-12-03 23:27:05', '0000-00-00 00:00:00'),
(98, 'ravan ravan hoon mai', '20', 'b3de26a45992b3be961e336b5aba310b.mp4', '6f3b1bcd5a1ad15ab78413848e969f3e.jpg', 'b3de26a45992b3be961e336b5aba310b.zip', 1, '2020-12-03 23:27:22', '0000-00-00 00:00:00'),
(99, 'sketchin', '20', 'babf2ac8119edfd1661fb8efd8d71563.mp4', 'de8b594fa31eb9a64cd0667294b28da4.jpg', 'babf2ac8119edfd1661fb8efd8d71563.zip', 1, '2020-12-03 23:27:27', '0000-00-00 00:00:00'),
(100, 'shayad', '20', '3e814fbdd017a2d81cb5bd4a43010291.mp4', '9645a74570d610827e3c975db8b3718e.jpg', '3e814fbdd017a2d81cb5bd4a43010291.zip', 1, '2020-12-03 23:28:27', '0000-00-00 00:00:00'),
(101, 'yaar ki shaadi', '20', 'de4585592db21c9c34b828e742c8b079.mp4', '5a965d8c3ec2b7de09f771e64b9f806f.jpg', 'de4585592db21c9c34b828e742c8b079.zip', 1, '2020-12-03 23:28:57', '0000-00-00 00:00:00'),
(102, 'stylish bo', '20', 'acf273fd12f642059c651961187eae1e.mp4', '6b53e229b8610d6161938df228073c1d.jpg', 'acf273fd12f642059c651961187eae1e.zip', 1, '2020-12-03 23:29:09', '0000-00-00 00:00:00'),
(103, 'megical video', '20', '586ea1df87875ec565f2602b15d3906a.mp4', 'f667e721fd376c1c35402a6e61974867.jpg', '586ea1df87875ec565f2602b15d3906a.zip', 1, '2020-12-03 23:29:18', '0000-00-00 00:00:00'),
(104, 'torch photo revea', '20', '70272d0094942cd4e8963d677b9877a5.mp4', 'fdffd45d0ccab4d7d281d10b921af011.jpg', '70272d0094942cd4e8963d677b9877a5.zip', 1, '2020-12-03 23:29:24', '0000-00-00 00:00:00'),
(105, 'candy sho', '20', 'd36ecb8b750de20ca345b661eab49379.mp4', 'a940c1e2cfde9c2911a48d9c96b4adb5.jpg', 'd36ecb8b750de20ca345b661eab49379.zip', 1, '2020-12-03 23:29:31', '0000-00-00 00:00:00'),
(106, 'retro film reel', '20', 'f361e7cdefb6064fe067b4309f3c6000.mp4', '5379477e23a780579fe218a1f6a96a8f.jpg', 'f361e7cdefb6064fe067b4309f3c6000.zip', 1, '2020-12-03 23:29:45', '0000-00-00 00:00:00'),
(107, 'square hear', '20', '0234cebf4d275392e7665221ac88e668.mp4', 'f3a6ed3c8f5fc2bbe186146682f5c873.jpg', '0234cebf4d275392e7665221ac88e668.zip', 1, '2020-12-03 23:29:50', '0000-00-00 00:00:00'),
(108, 'fire photo revea', '20', '55dbe6746f77bf37f7e2a168a68c57b6.mp4', 'bedebda51e0140c6ecc8d9da38d9b7a3.jpg', '55dbe6746f77bf37f7e2a168a68c57b6.zip', 1, '2020-12-03 23:30:08', '0000-00-00 00:00:00'),
(109, 'sea photo reavel', '20', '22ceeb48299a81b848aa98eb0592307b.mp4', '97111f56dcf3b88053310bf87970e094.jpg', '22ceeb48299a81b848aa98eb0592307b.zip', 1, '2020-12-03 23:30:39', '0000-00-00 00:00:00'),
(110, 'music puzzle vide', '20', '236a2655b8dc100704c2475f57e2e1c9.mp4', '722e560d2a0121aa4a6d69904c974132.jpg', '236a2655b8dc100704c2475f57e2e1c9.zip', 1, '2020-12-03 23:30:45', '0000-00-00 00:00:00'),
(111, 'mission mangal', '20', 'a9c2ae8724c846eced36143f80de3b14.mp4', '6eba6c7e3e248bb4e77e7d63764d56c1.jpg', 'a9c2ae8724c846eced36143f80de3b14.zip', 1, '2020-12-03 23:31:04', '0000-00-00 00:00:00'),
(112, 'burning image', '20', 'ddc8e2bf3bc394efc74007bf51b9518c.mp4', 'c28ae87c9d79e6c2588b46c0aa0ca225.jpg', 'ddc8e2bf3bc394efc74007bf51b9518c.zip', 1, '2020-12-03 23:31:10', '0000-00-00 00:00:00'),
(113, 'avenger', '20', '55b263105960a395c5a176d7f111a284.mp4', 'e399fa369100b7e993efeb45aaf39c47.jpg', '55b263105960a395c5a176d7f111a284.zip', 1, '2020-12-03 23:31:34', '0000-00-00 00:00:00'),
(114, 'heart frame', '20', '677dbb9e203481c88f7e6a97a5b9579a.mp4', '29c57f5e29708461c5fb7cc943993d83.jpg', '677dbb9e203481c88f7e6a97a5b9579a.zip', 1, '2020-12-03 23:31:37', '0000-00-00 00:00:00'),
(115, 'ange', '20', 'd2114b68683913a4ece6a37353be7e9b.mp4', '19115dfa42d7dd717b37bb01f8163bd8.jpg', 'd2114b68683913a4ece6a37353be7e9b.zip', 1, '2020-12-03 23:31:53', '0000-00-00 00:00:00'),
(116, 'congratulations', '20', 'eccd668428a4bef05f2df7efdf12253a.mp4', '376d5057df5149cdb97508910326a51e.jpg', 'eccd668428a4bef05f2df7efdf12253a.zip', 1, '2020-12-03 23:32:26', '0000-00-00 00:00:00'),
(117, 'smart and ho', '20', '8b48821c0dc9255495b01bdc3d5e760c.mp4', '1c838104e264cdc2905183731be14a1c.jpg', '8b48821c0dc9255495b01bdc3d5e760c.zip', 1, '2020-12-03 23:32:40', '0000-00-00 00:00:00'),
(118, 'awari hui m', '20', '799b471fb22f8eda888935b8c054af64.mp4', '43747d323c24ef1de46185f46f1fbc0c.jpg', '799b471fb22f8eda888935b8c054af64.zip', 1, '2020-12-03 23:32:52', '0000-00-00 00:00:00'),
(119, 'flare gu', '20', 'a8ab0ed0c83098597b5fb64bdd02c998.mp4', '3c7e45096d5091c1fd2c116fed849e0f.jpg', 'a8ab0ed0c83098597b5fb64bdd02c998.zip', 1, '2020-12-03 23:33:00', '0000-00-00 00:00:00'),
(120, 'good mornin', '20', '494236e802d596882a5cd28f0c95ec59.mp4', 'cf8bccafc3e2e6b626d8ce5dc5ea6294.jpg', '494236e802d596882a5cd28f0c95ec59.zip', 1, '2020-12-03 23:34:41', '0000-00-00 00:00:00'),
(121, 'mobile magi', '20', '060b3c09a5d05a0de8d09d6f677ce6d7.mp4', '77b5dfb0709000ccc407ca9d586b272a.jpg', '060b3c09a5d05a0de8d09d6f677ce6d7.zip', 1, '2020-12-03 23:34:50', '0000-00-00 00:00:00'),
(122, 'brokern wall', '20', '5bf0dfc4026deb4a84e3a7777ec53d8a.mp4', '62585e998873c84fc92dbf1d8956ad46.jpg', '5bf0dfc4026deb4a84e3a7777ec53d8a.zip', 1, '2020-12-03 23:35:00', '0000-00-00 00:00:00'),
(123, 'puzzle reveal', '20', 'beb73cc69686db3d62102b25a127d2e4.mp4', '719d02f39872599e6f933e383fbad077.jpg', 'beb73cc69686db3d62102b25a127d2e4.zip', 1, '2020-12-03 23:35:08', '0000-00-00 00:00:00'),
(124, 'snow bubble', '20', '614719885ec4dee56c6489e2b6eb6176.mp4', 'ad3f4e14da942f0bd80453a16baeec1b.jpg', '614719885ec4dee56c6489e2b6eb6176.zip', 1, '2020-12-03 23:35:28', '0000-00-00 00:00:00'),
(125, 'chokidar', '20', 'c8b0ca672712001434fe5adcebe932e6.mp4', '865882aa0e8a4d81c93701f358d982ee.jpg', 'c8b0ca672712001434fe5adcebe932e6.zip', 1, '2020-12-03 23:35:38', '0000-00-00 00:00:00'),
(126, 'magazine', '20', '8fb063b7fc74cec963fe6a860d4e1474.mp4', 'df1e2c99628f8740c4e1a9c28044e38c.jpg', '8fb063b7fc74cec963fe6a860d4e1474.zip', 1, '2020-12-03 23:35:48', '0000-00-00 00:00:00'),
(127, 'kurban hua', '20', '62c208860c1ee39fe9e20b0eb047c44d.mp4', 'cf8b585981e7f9ee52ddfb36932bbbf7.jpg', '62c208860c1ee39fe9e20b0eb047c44d.zip', 1, '2020-12-03 23:36:00', '0000-00-00 00:00:00'),
(128, 'tv', '20', '88387b82214e30835f07c5c93ad69528.mp4', 'a95970bd138ec0c41612cee066403658.jpg', '88387b82214e30835f07c5c93ad69528.zip', 1, '2020-12-03 23:36:04', '0000-00-00 00:00:00'),
(129, 'ip', '20', '81940e9f5c0dd4aa929f1c278e751422.mp4', 'cc32a7f087f8f726893cfd83e1861bac.jpg', '81940e9f5c0dd4aa929f1c278e751422.zip', 1, '2020-12-03 23:36:11', '0000-00-00 00:00:00'),
(130, 'airline', '20', '75cf8b7f032e70622c18a2ffb841d79a.mp4', 'ebd5b2060666b144b21cb1e157a11048.jpg', '75cf8b7f032e70622c18a2ffb841d79a.zip', 1, '2020-12-03 23:36:39', '0000-00-00 00:00:00'),
(131, 'square blocks', '20', '2e3d3989286597d6c1c5691d816446c0.mp4', 'e68e98286638003d3ec51bf959b1efe0.jpg', '2e3d3989286597d6c1c5691d816446c0.zip', 1, '2020-12-03 23:36:47', '0000-00-00 00:00:00'),
(132, 'snack puzzl', '20', '9b99dc5a7a2bdf2432a066bbc91950e4.mp4', 'bb60d97caaee5fe65e32d3fa90ed9b2d.jpg', '9b99dc5a7a2bdf2432a066bbc91950e4.zip', 1, '2020-12-03 23:36:50', '0000-00-00 00:00:00'),
(133, 'bubly', '20', '076a716ef00eced48ec245491ab1005d.mp4', '3c16389575ce7a7e2328f3aa4ed68920.jpg', '076a716ef00eced48ec245491ab1005d.zip', 1, '2020-12-03 23:37:08', '0000-00-00 00:00:00'),
(134, 'fireworks', '20', 'c46c90274b78905d8b5a537bed555bbe.mp4', 'f8d509b0d3c3d6919f662e0f1654cd31.jpg', 'c46c90274b78905d8b5a537bed555bbe.zip', 1, '2020-12-03 23:37:48', '0000-00-00 00:00:00'),
(135, 'good night', '20', '50a9dc1fe05f60c92ea1a939376c29ca.mp4', '7730f564149acae2026489648482ff6d.jpg', '50a9dc1fe05f60c92ea1a939376c29ca.zip', 1, '2020-12-03 23:38:01', '0000-00-00 00:00:00'),
(136, 'crystal balls', '20', '71617380f592c2bdc731354bbb9c2339.mp4', '8c8da537b0c2665504c2a8d54c7b7f58.jpg', '71617380f592c2bdc731354bbb9c2339.zip', 1, '2020-12-03 23:38:10', '0000-00-00 00:00:00'),
(137, 'butterfly', '20', '9504a48cff0e5402dbb403ade4ef5ad5.mp4', '43d39bcfbc2cf5bf999f8fec6ceb7c2d.png', '9504a48cff0e5402dbb403ade4ef5ad5.zip', 1, '2020-12-03 23:38:16', '0000-00-00 00:00:00'),
(138, 'snow fall', '20', '98fd09d7238b6b209ef87a242d46315c.mp4', '96667ade66d063736b2571515b6e1e7e.jpg', '98fd09d7238b6b209ef87a242d46315c.zip', 1, '2020-12-03 23:38:27', '0000-00-00 00:00:00'),
(139, 'helicopte', '20', '2637207bfde9988ed554d6e449c65173.mp4', 'cb3c901c4dfe9146402ac58d03331597.jpg', '2637207bfde9988ed554d6e449c65173.zip', 1, '2020-12-03 23:38:45', '0000-00-00 00:00:00'),
(140, 'rakhi', '15', '8f2094cd8a55a814a8febb617038c248.mp4', '672c8fc7fff953c9e82adfde54af1022.jpg', '8f2094cd8a55a814a8febb617038c248.zip', 1, '2020-12-03 23:42:13', '0000-00-00 00:00:00'),
(141, 'rakhi', '15', 'ac855d3596e29e29bf02f65ddfa1afe5.mp4', '3bd3ca85570c746b89ea6b68ac501785.jpg', 'ac855d3596e29e29bf02f65ddfa1afe5.zip', 1, '2020-12-03 23:42:23', '0000-00-00 00:00:00'),
(142, 'rakhi', '15', '99ffb134c9f18bfd034d9d41a145b78c.mp4', '322cec07dadc3e652ff54f551bcbc705.jpg', '99ffb134c9f18bfd034d9d41a145b78c.zip', 1, '2020-12-03 23:42:32', '0000-00-00 00:00:00'),
(143, 'rakhi', '15', '3564adf3b7cf7dc583f192500d9627c7.mp4', '85b81e8395b31f026c8f551ae4950419.jpg', '3564adf3b7cf7dc583f192500d9627c7.zip', 1, '2020-12-03 23:42:41', '0000-00-00 00:00:00'),
(144, 'rakhi', '15', 'cd04f388f4e081fffbf836e674cfe6f4.mp4', '7cb961fd086a32eb393003ab5616b81e.jpg', 'cd04f388f4e081fffbf836e674cfe6f4.zip', 1, '2020-12-03 23:42:48', '0000-00-00 00:00:00'),
(145, 'holi', '23', '150306e25f3d8fb47f77ec1129892256.mp4', 'bd248e94ba31efe9848723c05051f9c1.jpg', '150306e25f3d8fb47f77ec1129892256.zip', 1, '2020-12-03 23:44:46', '0000-00-00 00:00:00'),
(146, 'Tere naal haseen koi na', '23', 'd6d08248fbd59bdbb351270366abc67b.mp4', 'fe082eb1d2fe5ef7bc83429a52ca8ad7.jpg', '113dd3532283f0e3469dc4fbc5fb1a2f.zip', 1, '2020-12-03 23:45:16', '2020-12-19 11:31:48'),
(147, 'sakhiya', '23', '8eb74511d61e0763b422d6e1dc27df32.mp4', 'ea0d8dff65a66d97af40b1d99ac1ddc7.jpg', '8eb74511d61e0763b422d6e1dc27df32.zip', 1, '2020-12-03 23:45:42', '0000-00-00 00:00:00'),
(148, 'dil tut na jai vichar', '23', '4ed731e5af0a1930b95ed572ebe72a8d.mp4', '92236c6cea2be4617a8349f8f2274365.jpg', '4ed731e5af0a1930b95ed572ebe72a8d.zip', 1, '2020-12-03 23:46:10', '0000-00-00 00:00:00'),
(149, 'mera wala sardar', '23', '0b3a6091e87c805bd98c419742259e64.mp4', 'a7875265a48df5df667b7b62a3781b56.jpg', '0b3a6091e87c805bd98c419742259e64.zip', 1, '2020-12-03 23:46:35', '0000-00-00 00:00:00'),
(150, 'sawarne lage particl', '23', 'c326b94283bae871714a5a61c38c81b2.mp4', 'e242cc58e0791a3650e0e21fdb611d6a.jpg', 'c326b94283bae871714a5a61c38c81b2.zip', 1, '2020-12-03 23:46:49', '0000-00-00 00:00:00'),
(151, 'tenu na bol pavaa', '23', 'f07c223dec000e97b24be8bbbe7a208d.mp4', '730e47e07b17fa9449c847267a781c47.jpg', 'f07c223dec000e97b24be8bbbe7a208d.zip', 1, '2020-12-03 23:46:59', '0000-00-00 00:00:00'),
(152, 'halloween', '23', 'fafcbd1f2d41be946c29eab0089e7d2b.mp4', '262163e20b8e0f2960a17ee70033ee3a.jpg', 'fafcbd1f2d41be946c29eab0089e7d2b.zip', 1, '2020-12-03 23:47:22', '0000-00-00 00:00:00'),
(153, 've maahi particle', '23', 'b219d8758f7b66c39549e23a0e5e9590.mp4', 'aef7a9c6ea928a79b2372c3a6fb4dc03.jpg', 'b219d8758f7b66c39549e23a0e5e9590.zip', 1, '2020-12-03 23:47:57', '0000-00-00 00:00:00'),
(154, 'bol do na zara', '23', 'e51cb7d502dd6e3c3ec55946e68b52cf.mp4', 'f9d5aebcb238d92d9375fc0ae20b1a0b.jpg', 'e51cb7d502dd6e3c3ec55946e68b52cf.zip', 1, '2020-12-03 23:48:25', '0000-00-00 00:00:00'),
(155, 'darya', '23', '45d7ea0804120d5b2c8f21446ea4ab5c.mp4', 'ffbf8b19412e845d96aa488d97a2ab2d.jpg', '45d7ea0804120d5b2c8f21446ea4ab5c.zip', 1, '2020-12-03 23:48:56', '0000-00-00 00:00:00'),
(156, 'man mera', '23', 'd52f2d619133e415b8bce96ee27ea24e.mp4', '62031839b1f16b88a2e8aa4c1b63bba3.jpg', 'd52f2d619133e415b8bce96ee27ea24e.zip', 1, '2020-12-03 23:49:26', '0000-00-00 00:00:00'),
(157, 'tera zikar', '23', '07c815441fdb4c1ce9094aee945bfdbd.mp4', '1987f72a206467f799be021fc9c87587.jpg', '07c815441fdb4c1ce9094aee945bfdbd.zip', 1, '2020-12-03 23:50:06', '0000-00-00 00:00:00'),
(158, 'bekhayali particle', '23', '356e990a8ee52ff9a5c6e2a582418526.mp4', '86f72599bde954b221210b7128b6343e.jpg', '356e990a8ee52ff9a5c6e2a582418526.zip', 1, '2020-12-03 23:50:29', '0000-00-00 00:00:00'),
(159, 'pachhtaoge particle', '23', '4b2b6a1a8bc693c9d8c075580060d837.mp4', 'db7ca7000d91e80581a33aee45e507a3.jpg', '4b2b6a1a8bc693c9d8c075580060d837.zip', 1, '2020-12-03 23:51:21', '0000-00-00 00:00:00'),
(160, 'pal', '23', 'fab34642f1a7f7fe794981f89112c0e4.mp4', '443037ac185bbbc7c04dc794042ce4e3.jpg', 'fab34642f1a7f7fe794981f89112c0e4.zip', 1, '2020-12-03 23:51:50', '0000-00-00 00:00:00'),
(161, 'chand tare', '23', '3906ea7432757df98f41ce6047c9cb01.mp4', '0f3a5a58ebc55111b546187d0b304927.jpg', '3906ea7432757df98f41ce6047c9cb01.zip', 1, '2020-12-03 23:52:27', '0000-00-00 00:00:00'),
(162, 'pal pal dil ke pas', '23', '75b7663442a5a9d7aede45e246a88c99.mp4', 'c70493dedcde5505d59239bce095e173.png', '75b7663442a5a9d7aede45e246a88c99.zip', 1, '2020-12-03 23:53:21', '0000-00-00 00:00:00'),
(163, 'tujhe kitna', '23', '0e901dfcbb87525963e58588110945d8.mp4', '7e4260fa6349a91c7f81de689f4de77a.jpg', '0e901dfcbb87525963e58588110945d8.zip', 1, '2020-12-03 23:53:45', '0000-00-00 00:00:00'),
(164, 'teri pyaari pyaari akhiyaan', '23', 'ec28ad91d401d07aba0749a200f0ff8c.mp4', '252575a8c30af4bb08094423c4e800c9.jpg', 'ec28ad91d401d07aba0749a200f0ff8c.zip', 1, '2020-12-03 23:54:16', '0000-00-00 00:00:00'),
(165, 'fathers day new', '19', '833cf96cddc576ec8adb26bebda75f97.mp4', '13d01863b5a032a7107759781f77c28b.jpg', '833cf96cddc576ec8adb26bebda75f97.zip', 1, '2020-12-03 23:56:09', '0000-00-00 00:00:00'),
(166, 'lockdown gir', '19', '8a23c97ec768bffd5c957a557061226c.mp4', '4a4b0acb41280ea0ef418c835cd9a1a7.jpg', '8a23c97ec768bffd5c957a557061226c.zip', 1, '2020-12-03 23:56:23', '0000-00-00 00:00:00'),
(167, 'breaking news khatarnak virus', '19', '9a653b0c3e439e6926fb123235156aae.mp4', 'ca6f8b12cccd7d1f6ab1db375557b335.jpg', '9a653b0c3e439e6926fb123235156aae.zip', 1, '2020-12-03 23:56:42', '0000-00-00 00:00:00'),
(168, 'best girlfriend', '19', '4654fa427f279ba8318f892f24e22b02.mp4', '61ac7c583fa035b4ffde587d835bdba5.jpg', '4654fa427f279ba8318f892f24e22b02.zip', 1, '2020-12-03 23:56:58', '0000-00-00 00:00:00'),
(169, 'arabpat', '19', '44ae03b22a6715c26a398fd6dd68d3d7.mp4', '8d385e4c20264c2176c52090e165432c.jpg', '44ae03b22a6715c26a398fd6dd68d3d7.zip', 1, '2020-12-03 23:57:13', '0000-00-00 00:00:00'),
(170, 'breaking news challa', '19', '003998af294890e98ed381bee3de961c.mp4', '810b5ae392bf12de5a8c1fa95caff871.jpg', '003998af294890e98ed381bee3de961c.zip', 1, '2020-12-03 23:57:33', '0000-00-00 00:00:00'),
(171, 'best friend grou', '19', 'dfe5bffa490e54c38bafde724df4878e.mp4', '8ea8c3063df2d7c0adbe553f89f9b308.jpg', 'dfe5bffa490e54c38bafde724df4878e.zip', 1, '2020-12-03 23:57:58', '0000-00-00 00:00:00'),
(172, 'gujju new', '19', '755e72ecfb9ae0a2388f5b6a354d8548.mp4', '02309a66ceab83eff1a2565576a1b455.jpg', '755e72ecfb9ae0a2388f5b6a354d8548.zip', 1, '2020-12-03 23:58:38', '0000-00-00 00:00:00'),
(173, 'love guru', '19', '8348f81f768a2975f7dd946ea0c2e081.mp4', '9b5ebcaa733df28c2694a623b15f7920.jpg', '8348f81f768a2975f7dd946ea0c2e081.zip', 1, '2020-12-03 23:58:53', '0000-00-00 00:00:00'),
(174, 'anniversary news', '19', 'efce1739155471a88003fa17b58e9b4e.mp4', '5c6c81353b1a70c1147886a74026363a.jpg', 'efce1739155471a88003fa17b58e9b4e.zip', 1, '2020-12-03 23:59:06', '0000-00-00 00:00:00'),
(175, 'bhavishyavani', '19', 'b8d17eaf38a0f12d9b4ff9c08a7fd705.mp4', '69aef16b0155b80536bae2cd67a65ae5.jpg', 'b8d17eaf38a0f12d9b4ff9c08a7fd705.zip', 1, '2020-12-03 23:59:23', '0000-00-00 00:00:00'),
(176, 'birthday girl', '19', '79a7e30796818095811969a6a7170a21.mp4', 'cf7c4deb08522e5c6d102eb2d91a9f43.jpg', '79a7e30796818095811969a6a7170a21.zip', 1, '2020-12-03 23:59:40', '0000-00-00 00:00:00'),
(177, 'humara neta', '19', 'c04e8cce5d11f7e5cf6f613e117cc947.mp4', 'b60f2bafc1f0d39b740eea9dab700957.jpg', 'c04e8cce5d11f7e5cf6f613e117cc947.zip', 1, '2020-12-03 23:59:56', '0000-00-00 00:00:00'),
(178, 'cricket tea', '19', 'cde56e15a3810ce3816bee02a925778e.mp4', '333bd62c331540c6fc30fdc4f8dfb1b5.jpg', 'cde56e15a3810ce3816bee02a925778e.zip', 1, '2020-12-04 00:00:13', '0000-00-00 00:00:00'),
(179, 'birthday boy V', '19', '8c10b9e7bbd47353f1f0608a6ee7c48a.mp4', '2ffea36b9f59ad4917e0b91f6159ac2c.jpg', '8c10b9e7bbd47353f1f0608a6ee7c48a.zip', 1, '2020-12-04 00:00:26', '0000-00-00 00:00:00'),
(180, 'handsome ma', '19', '08f3fa5c8099f16e79d8964900864000.mp4', '541cb441a9e93bfca1b7fd6b4063e6b7.jpg', '08f3fa5c8099f16e79d8964900864000.zip', 1, '2020-12-04 00:00:58', '0000-00-00 00:00:00'),
(181, 'best boyfriend', '19', '1ef058793580b75b291bb45a5ea0b114.mp4', 'db3792f9746e9da51b29d2eaf977b4cc.jpg', '1ef058793580b75b291bb45a5ea0b114.zip', 1, '2020-12-04 00:01:28', '0000-00-00 00:00:00'),
(182, 'bio data news', '19', '9bdfe7b6e179d4ffcff6257ca1c2aa37.mp4', '36f6e8b784b867ef9da6c161de20b839.jpg', '9bdfe7b6e179d4ffcff6257ca1c2aa37.zip', 1, '2020-12-04 00:01:50', '0000-00-00 00:00:00'),
(183, 'miss universe', '19', '0ffd474bc4493a51b20c638d5f8430b4.mp4', 'dc8174e68c5c68cc006c16b13164f1c8.jpg', '0ffd474bc4493a51b20c638d5f8430b4.zip', 1, '2020-12-04 00:02:11', '0000-00-00 00:00:00'),
(184, 'breaking new', '19', 'c28e49be7e8610f77bd6debb0556ef26.mp4', '22c52100f8b399a1182ecb239c10049c.jpg', 'c28e49be7e8610f77bd6debb0556ef26.zip', 1, '2020-12-04 00:02:33', '0000-00-00 00:00:00'),
(185, 'ek vanzari zulan', '18', 'a1fda998de5270b34938eecd56e6cada.mp4', 'a0c94cc5564d6984d9fc179046014f9b.jpg', 'a1fda998de5270b34938eecd56e6cada.zip', 1, '2020-12-04 00:05:30', '0000-00-00 00:00:00'),
(186, 'ramva aavo madi ramva aave', '18', 'f85fc35db13b78139090da1297db52a9.mp4', '9fa7ddaff4ed98dadc0c9b647a98dfe5.jpg', 'f85fc35db13b78139090da1297db52a9.zip', 1, '2020-12-04 00:06:35', '0000-00-00 00:00:00'),
(187, 'dwarika no nath', '18', 'b55dc5e2f485766e9fcb876b4b50b6bd.mp4', '633f8c1bfc8846467aae8bf4e6e2a1f8.jpg', 'b55dc5e2f485766e9fcb876b4b50b6bd.zip', 1, '2020-12-04 00:07:26', '0000-00-00 00:00:00'),
(188, 'dholida dhol re vagad', '18', '9a2b66cfe563a7fc70137682832fba3b.mp4', '025e969ef41339124ed8049823159674.jpg', '9a2b66cfe563a7fc70137682832fba3b.zip', 1, '2020-12-04 00:07:58', '0000-00-00 00:00:00'),
(189, 'maniyaro', '18', '528d496d896072abb6214e35e7440fb2.mp4', 'ea32f4fb59cbf53d5eea6cbf880cf15c.jpg', '528d496d896072abb6214e35e7440fb2.zip', 1, '2020-12-04 00:08:28', '0000-00-00 00:00:00'),
(190, 'navratri', '18', 'e6d2f9509f0aa3c24c381cf081107a72.mp4', 'e830448e97d8e0c1ccff752166b39ce7.jpg', 'e6d2f9509f0aa3c24c381cf081107a72.zip', 1, '2020-12-04 00:08:53', '0000-00-00 00:00:00'),
(191, 'navratri', '18', '8193262512ce036ea8542b2199701d24.mp4', '75f019c7b96e54e3037957b7e6912bf5.jpg', '8193262512ce036ea8542b2199701d24.zip', 1, '2020-12-04 00:09:31', '0000-00-00 00:00:00'),
(192, 'navratri', '18', 'dc2d6785b294609381116c22db357084.mp4', '4744de667af366e022ee2fb44491aa7c.jpg', 'dc2d6785b294609381116c22db357084.zip', 1, '2020-12-04 00:09:59', '0000-00-00 00:00:00'),
(193, 'navratri', '18', '4ceef160ce5fb46f4ff06b052535f348.mp4', '98640d16c2f649f1d0130daf1318c3ce.jpg', '4ceef160ce5fb46f4ff06b052535f348.zip', 1, '2020-12-04 00:10:22', '0000-00-00 00:00:00'),
(194, 'navratri', '18', 'b6b314bd52598271a4bb64e7b4ffa72a.mp4', 'ea4de0be6c0330f16e1cd8fa579f9b33.jpg', 'b6b314bd52598271a4bb64e7b4ffa72a.zip', 1, '2020-12-04 00:10:46', '0000-00-00 00:00:00'),
(195, 'navratri', '18', '544f368ee1220cf2592c966809a15d0f.mp4', '8145f61fb5f3f03ace6fa58a9a58d166.jpg', '544f368ee1220cf2592c966809a15d0f.zip', 1, '2020-12-04 00:11:12', '0000-00-00 00:00:00'),
(196, 'navratri', '18', 'a29f75130996480d3131e5df6acd6838.mp4', 'ee160a8aa8c7bf803ce4012d6785cb35.jpg', 'a29f75130996480d3131e5df6acd6838.zip', 1, '2020-12-04 00:11:53', '0000-00-00 00:00:00'),
(197, 'navratri', '18', '6bfd99d14100d213025c0080f1e9744d.mp4', 'b2a51e4514c550f494600b96053c1f70.jpg', '6bfd99d14100d213025c0080f1e9744d.zip', 1, '2020-12-04 00:12:14', '0000-00-00 00:00:00'),
(198, 'navratri', '18', '696ec5bbb97540efeaf66402b032b90c.mp4', '02cec8f43f8c8a7be704e169027e81e4.jpg', '696ec5bbb97540efeaf66402b032b90c.zip', 1, '2020-12-04 00:12:53', '0000-00-00 00:00:00'),
(199, 'navratri', '18', '835b39159195ff335c5e7bc74bfe7f85.mp4', '7875fe665bfd6d984639418154e15a95.jpg', '835b39159195ff335c5e7bc74bfe7f85.zip', 1, '2020-12-04 00:13:30', '0000-00-00 00:00:00'),
(200, 'mahadev', '11', '73682bcb66473e41eeeee55c8440d767.mp4', '59dcd6a3b3fb193fb3ead74930acf3d8.jpg', '73682bcb66473e41eeeee55c8440d767.zip', 1, '2020-12-04 00:16:19', '0000-00-00 00:00:00'),
(201, 'namo namo shankara', '11', '6414d34a1407c7d1c3a1e12325178778.mp4', '1df5a6b375f6c4d3b13cea3e8bf8b55f.jpg', '6414d34a1407c7d1c3a1e12325178778.zip', 1, '2020-12-04 00:16:52', '0000-00-00 00:00:00'),
(202, 'nagar me jogi aay', '11', 'bc5f388b387ee930acaeea8592fa2200.mp4', '22333c58539402bc89869b9922abbf44.jpg', 'bc5f388b387ee930acaeea8592fa2200.zip', 1, '2020-12-04 00:17:05', '0000-00-00 00:00:00'),
(203, 'bolo har har', '11', 'acb9ecb15f4aa7e9a8cea072f5b0c859.mp4', 'd506cdb7bd2f1aaf15d837936a0a4acc.jpg', 'acb9ecb15f4aa7e9a8cea072f5b0c859.zip', 1, '2020-12-04 00:17:31', '0000-00-00 00:00:00'),
(204, 'nagar me jogi aaya', '11', 'ead5ce9d35d5585c5b63aafbafb65555.mp4', 'c683d0d7f0a306d3412b71d86a59f610.jpg', 'ead5ce9d35d5585c5b63aafbafb65555.zip', 1, '2020-12-04 00:17:45', '0000-00-00 00:00:00'),
(205, 'mera bhola hai bhandar', '11', '9555a6fa2b15b27af9dd442ffe273159.mp4', '6feb0e57566d014486765b6cba7c6efa.jpg', '9555a6fa2b15b27af9dd442ffe273159.zip', 1, '2020-12-04 00:18:03', '0000-00-00 00:00:00'),
(206, 'mahadev', '11', '7cecb3bf3fa3e5370f50005b38d967da.mp4', '6b6ec0c6802b8d47be479216fce51c7e.jpg', '7cecb3bf3fa3e5370f50005b38d967da.zip', 1, '2020-12-04 00:18:23', '0000-00-00 00:00:00'),
(207, 'mahadev', '11', '04e7e50e601748affd9abc4c1d8d42e1.mp4', 'ff1787d7f6f76a42bed14fa9cfdb192a.jpg', '04e7e50e601748affd9abc4c1d8d42e1.zip', 1, '2020-12-04 00:18:41', '0000-00-00 00:00:00'),
(208, 'shravan kero maas aayo', '11', '19d07d7909f5079528d03aaca991bcf8.mp4', '7f3a4a43f2057f219ca6e6b877117f0f.jpg', '19d07d7909f5079528d03aaca991bcf8.zip', 1, '2020-12-04 00:19:27', '0000-00-00 00:00:00'),
(209, 'om trambakam', '11', 'cd4a2f841b935ee30a3ad17bcd09394a.mp4', 'ace14f41465481ff1ea91cdf36c48d27.jpg', 'cd4a2f841b935ee30a3ad17bcd09394a.zip', 1, '2020-12-04 00:20:05', '0000-00-00 00:00:00'),
(210, 'bolo har har', '11', '6f94c1d07f47bdc8257ecd55c707a5d0.mp4', 'b2e1e61dd014a4f280a30411df705f5a.jpg', '6f94c1d07f47bdc8257ecd55c707a5d0.zip', 1, '2020-12-04 00:20:38', '0000-00-00 00:00:00'),
(211, 'namo namo shankara', '11', '4d00c6088f5f8b52ec5609b5726d97ea.mp4', '173809a0e1d12673d08a2bc3b939ba0f.jpg', '4d00c6088f5f8b52ec5609b5726d97ea.zip', 1, '2020-12-04 00:21:06', '0000-00-00 00:00:00'),
(212, 'kon hai v', '11', 'dca2518a72861c00d61ded6291a65a82.mp4', 'dff9cfe37cdfbc13e5812f3def262dfb.jpg', 'dca2518a72861c00d61ded6291a65a82.zip', 1, '2020-12-04 00:21:42', '0000-00-00 00:00:00'),
(213, 'mahadev ke pujari', '11', '32b19e4b5818adbafcca87b903c4a01b.mp4', '0082a25aa9236274ed9d6e1b93eefbe9.jpg', '32b19e4b5818adbafcca87b903c4a01b.zip', 1, '2020-12-04 00:22:14', '0000-00-00 00:00:00'),
(214, 'mera bhola hai bhandari', '11', '3aad85d4f016b83d33e95ffac69875a9.mp4', 'b7ae4b7e9d613fa59298a9a33596d036.jpg', '3aad85d4f016b83d33e95ffac69875a9.zip', 1, '2020-12-04 00:22:29', '0000-00-00 00:00:00'),
(215, 'Jitni Ada Unti Wafa', '21', 'edccad62dea046d1c7b8bbd4e25fbc9d.mp4', '801390599cfab2cd8651bf42c67c7f92.jpg', 'edccad62dea046d1c7b8bbd4e25fbc9d.zip', 1, '2020-12-04 00:29:45', '0000-00-00 00:00:00'),
(216, 'gurupurnima special', '21', '95bc4bf0d23200d95d7580ee534f8d02.mp4', 'c5da0013dc1173fc2b9db000bda8e676.jpg', '95bc4bf0d23200d95d7580ee534f8d02.zip', 1, '2020-12-04 00:30:31', '0000-00-00 00:00:00'),
(217, 'bhar do jholi meri', '21', '196ceae0e4639503e921eadab72756cf.mp4', '2991ed1d924ba00c43d831e8b8c23d47.jpg', '196ceae0e4639503e921eadab72756cf.zip', 1, '2020-12-04 00:31:05', '0000-00-00 00:00:00'),
(218, 'dil todke white theme', '21', '73232e34cc9c1dcccbc43991da58e6a7.mp4', '880d2d3f9353d8b6451aaaaf2fdb1eee.jpg', '73232e34cc9c1dcccbc43991da58e6a7.zip', 1, '2020-12-04 00:32:23', '0000-00-00 00:00:00'),
(219, 'meri aashiqui', '21', 'c4e221c4007c9737a6ec488bb5a86ac7.mp4', '9bb474a861f686032654a9e7c55a9b79.jpg', 'c4e221c4007c9737a6ec488bb5a86ac7.zip', 1, '2020-12-04 00:34:21', '0000-00-00 00:00:00'),
(220, 'tere naal', '21', '757f52c73c9014243cd3c6219dabf9b8.mp4', '8693a158c86558414d3e13106b1d1203.jpg', '757f52c73c9014243cd3c6219dabf9b8.zip', 1, '2020-12-04 00:35:02', '0000-00-00 00:00:00'),
(221, 'sona kitna sona hai', '21', '72134722dcb0059f6d220708fba9bc0e.mp4', 'e31549b14e5aeacebb2c23aaac038564.jpg', '72134722dcb0059f6d220708fba9bc0e.zip', 1, '2020-12-04 00:35:58', '0000-00-00 00:00:00'),
(222, 'jannat', '21', '14bdd0028a9122636618e0477f5f04f5.mp4', 'fc76aad02c9fb1bd17bf1a968593da2f.jpg', '14bdd0028a9122636618e0477f5f04f5.zip', 1, '2020-12-04 00:38:20', '0000-00-00 00:00:00'),
(223, 'dil todne se pehle', '21', 'a83fb1788357e45759ae6b824e6b3a78.mp4', 'fb180b70a2f44f64cc9b0a1166ef439e.jpg', 'a83fb1788357e45759ae6b824e6b3a78.zip', 1, '2020-12-04 00:39:16', '0000-00-00 00:00:00'),
(224, 'private jet', '21', '3b0d8bfee5b9dee57943dc9b23adfb07.mp4', 'd518adcd053883a56db61f4a90cc3caf.jpg', '3b0d8bfee5b9dee57943dc9b23adfb07.zip', 1, '2020-12-04 00:40:21', '0000-00-00 00:00:00'),
(225, 'asal mein', '21', '30fd2d14a8bc51baeb5e7458c6e10779.mp4', 'bb37d871b7f2c689ca79a7faaa65483f.jpg', '30fd2d14a8bc51baeb5e7458c6e10779.zip', 1, '2020-12-04 00:41:05', '0000-00-00 00:00:00'),
(226, 'rabb wangu', '21', '815f206540c37bf4c7e0d6ceef76a375.mp4', '5392c79ee24d929b810d32ed2000dadc.jpg', '815f206540c37bf4c7e0d6ceef76a375.zip', 1, '2020-12-04 00:41:55', '0000-00-00 00:00:00'),
(227, 'jannatein kahan', '21', '2b2b929b30f67fbc6593bdef6076526a.mp4', 'cac0700b2e127b12f800b15f0777c9cc.jpg', '2b2b929b30f67fbc6593bdef6076526a.zip', 1, '2020-12-04 00:42:37', '0000-00-00 00:00:00'),
(228, 'bas ek baar', '21', '75bd613a5add334acee34cf35c2c1845.mp4', '4f0dc8c04d517bc02e3337ab54353052.jpg', '75bd613a5add334acee34cf35c2c1845.zip', 1, '2020-12-04 00:44:06', '0000-00-00 00:00:00'),
(229, 'rabb wangu', '21', 'f78cd10b1e4f5019528dd4b2d77ca30a.mp4', '17271a704f3b4f562ff0942301ade9d5.jpg', 'f78cd10b1e4f5019528dd4b2d77ca30a.zip', 1, '2020-12-04 00:45:04', '0000-00-00 00:00:00'),
(230, 'gallan kard', '21', 'd4db0240f2fb74c9912804f352c83cf8.mp4', '01298c1d3abb713abd89a8a891aa7c55.jpg', 'd4db0240f2fb74c9912804f352c83cf8.zip', 1, '2020-12-04 00:46:04', '0000-00-00 00:00:00'),
(231, 'raah mein unse mulaqat ho gayi', '21', '74488624f0ec97f077fae6045a520a02.mp4', '595007b9a833245ad0f6ca3f1fbde63c.jpg', '74488624f0ec97f077fae6045a520a02.zip', 1, '2020-12-04 00:46:54', '0000-00-00 00:00:00'),
(232, 'hothon se chhu lo tum', '21', 'e5359b6d7dafdf22092920cab8f02c61.mp4', '94f18cd643b9f238d5c26999f69b4d2e.jpg', 'e5359b6d7dafdf22092920cab8f02c61.zip', 1, '2020-12-04 00:47:34', '0000-00-00 00:00:00'),
(233, 'aap ki kashish', '21', '4eda167f88f3bd1ed12723018a79383c.mp4', 'c879f289488ef12c8ab6aaf4f0ad8245.jpg', '4eda167f88f3bd1ed12723018a79383c.zip', 1, '2020-12-04 00:48:32', '0000-00-00 00:00:00'),
(234, 'tum hi aana sad', '21', '08b9660cf52a351532b1e59e308d76d6.mp4', '542ff6c4395fabb38ca848f0557d3611.jpg', '08b9660cf52a351532b1e59e308d76d6.zip', 1, '2020-12-04 00:49:11', '0000-00-00 00:00:00'),
(235, 'haan main galat', '21', '9ca3f7445ac154b2731dfc49c604d039.mp4', '1ea74d66633fa276a0ad0ad0a9a28266.jpg', '9ca3f7445ac154b2731dfc49c604d039.zip', 1, '2020-12-04 00:52:31', '0000-00-00 00:00:00'),
(236, 'shaya', '21', '5ceb0479bbbea5bb9db1566273678bed.mp4', '5353cd9af9f5ebdecbbd45afc7a683f1.jpg', '5ceb0479bbbea5bb9db1566273678bed.zip', 1, '2020-12-04 00:54:43', '0000-00-00 00:00:00'),
(237, 'ke ghungroo toot gaye', '21', '5544b2120d56bb7d7492216f1c84bd7f.mp4', 'a63d7bf5f136711c7f38086a8c483480.jpg', '5544b2120d56bb7d7492216f1c84bd7f.zip', 1, '2020-12-04 00:55:29', '0000-00-00 00:00:00'),
(238, 'dilbara', '21', 'd869fa0a540d28c113f2550d3bd1a969.mp4', '9a71403c03ad5c36b95a20e02f41858d.jpg', 'd869fa0a540d28c113f2550d3bd1a969.zip', 1, '2020-12-04 00:56:58', '0000-00-00 00:00:00'),
(239, 'pahada', '21', '0eed32e7026171621c875c59a14960a6.mp4', 'de02a2ecd18e82ca3aa07a3068c31165.jpg', '0eed32e7026171621c875c59a14960a6.zip', 1, '2020-12-04 00:57:41', '0000-00-00 00:00:00'),
(240, 'lhalak dikhla Jaa', '21', '5b2f0ba08dbeeac513b7d4789d997d90.mp4', 'ad786be9c25e85c88823dd6f73661d4b.jpg', '5b2f0ba08dbeeac513b7d4789d997d90.zip', 1, '2020-12-04 00:59:07', '0000-00-00 00:00:00'),
(241, 'kamaa', '21', 'f1545e7676985b3f04b35554ffdc57ed.mp4', 'cead1be1190c5523e800b6c40e28bc07.jpg', 'f1545e7676985b3f04b35554ffdc57ed.zip', 1, '2020-12-04 01:00:02', '0000-00-00 00:00:00'),
(242, 'laare', '21', 'bd4d70de82b389b4e415c25d23a55954.mp4', '2fed0acf12418c77f5260305ff5ec7a0.jpg', 'bd4d70de82b389b4e415c25d23a55954.zip', 1, '2020-12-04 01:01:21', '0000-00-00 00:00:00'),
(243, 'jatti da crush', '21', 'ae8134734865459a57ec30d3fb574d13.mp4', '185ecfc6f163f02e609f711fdad97c89.jpg', 'ae8134734865459a57ec30d3fb574d13.zip', 1, '2020-12-04 01:02:25', '0000-00-00 00:00:00'),
(244, 'ik kahan', '21', 'e2c16407437ba96c5ffdca7cff1c0c45.mp4', 'ce781391f02f82f9247b69c352ed4703.jpg', 'e2c16407437ba96c5ffdca7cff1c0c45.zip', 1, '2020-12-04 01:03:23', '0000-00-00 00:00:00'),
(245, 'phir mulaaqat', '21', '960b1ced755b757a291a741955ccb921.mp4', '86fd57c965a66b59a19f9fda2e533e56.jpg', '960b1ced755b757a291a741955ccb921.zip', 1, '2020-12-04 01:04:43', '0000-00-00 00:00:00'),
(246, 'dil todeya', '21', 'f025a92be12d00828b84fc86eba7ec43.mp4', '3072ef37b0099bc012617798635a45c1.jpg', 'f025a92be12d00828b84fc86eba7ec43.zip', 1, '2020-12-04 01:05:17', '0000-00-00 00:00:00'),
(247, 'chhod diya', '21', 'b9ddeca114031b03b28217bbe0609c63.mp4', 'f2dba4cb5e61b13d8cc77a5c61947f80.jpg', 'b9ddeca114031b03b28217bbe0609c63.zip', 1, '2020-12-04 01:06:08', '0000-00-00 00:00:00'),
(248, 'khairiyat', '21', '6e0e77fdea5b96527d79dbdaba52ad63.mp4', 'f315c5782a6474f78713ae4da53b86d4.jpg', '6e0e77fdea5b96527d79dbdaba52ad63.zip', 1, '2020-12-04 01:07:38', '0000-00-00 00:00:00'),
(249, 'kaash', '21', 'e8164419d9b4e7d8b539db4e518ddb7d.mp4', '9eae2295cebeafd56b042078322aafd0.jpg', 'e8164419d9b4e7d8b539db4e518ddb7d.zip', 1, '2020-12-04 01:08:28', '0000-00-00 00:00:00'),
(250, 'lehanga', '21', 'eff3200258e03da31e1bde8e66b253c9.mp4', 'd2027789abaf03ce5faa801c637ed1c0.jpg', 'eff3200258e03da31e1bde8e66b253c9.zip', 1, '2020-12-04 01:09:20', '0000-00-00 00:00:00'),
(251, 'samajh kar chand jisko', '21', '12e5991426405929773e81f359761c26.mp4', 'ee16679601b0220d941e8f9939bbb337.jpg', '12e5991426405929773e81f359761c26.zip', 1, '2020-12-04 01:10:19', '0000-00-00 00:00:00'),
(252, 'tujhe kitna chahne lage hu', '21', '0b27e76f2940eea46f06c92566fe5702.mp4', 'a40b296cea3a84c2f32033cfbcf4a8b1.jpg', '0b27e76f2940eea46f06c92566fe5702.zip', 1, '2020-12-04 01:11:57', '0000-00-00 00:00:00'),
(253, 'mere liye tum kaffi ho', '21', '40e1620235c91960a1848cc2927fa0d5.mp4', '58501a85be7fd083a2ee1e61d921338f.jpg', '40e1620235c91960a1848cc2927fa0d5.zip', 1, '2020-12-04 01:12:32', '0000-00-00 00:00:00'),
(254, 'Loca', '21', '44388e86aa56645aa560d0bc6a4c9275.mp4', '646fd147851df8558746044c48efe659.jpg', '44388e86aa56645aa560d0bc6a4c9275.zip', 1, '2020-12-04 01:13:26', '0000-00-00 00:00:00'),
(255, 'chandigarh mein', '21', '8d0891818f1e7c64ad4442063dd8fdf6.mp4', '2ea7a05c525d68af6472388c98ebc202.jpg', '8d0891818f1e7c64ad4442063dd8fdf6.zip', 1, '2020-12-04 01:41:02', '0000-00-00 00:00:00');
INSERT INTO `tbl_video` (`vd_id`, `vd_title`, `vd_category`, `vd_ourl`, `vd_image`, `vd_zip`, `vd_visible`, `created_date`, `updated_date`) VALUES
(256, 'dua karo', '21', '10fb788adb2ef48f2a887138ece03c6f.mp4', 'c27321e79ad868df19d15e452ef5db33.jpg', '10fb788adb2ef48f2a887138ece03c6f.zip', 1, '2020-12-04 01:41:49', '0000-00-00 00:00:00'),
(257, 'goa beac', '21', '79f18346a42f024cef1bc0f89084ad32.mp4', 'bec4e6739cf9fb0203d4293f4c39bccd.jpg', '79f18346a42f024cef1bc0f89084ad32.zip', 1, '2020-12-04 01:43:55', '0000-00-00 00:00:00'),
(258, 'tusi mote mote ho', '21', 'a8883eeab83651076dd2ff5ef1b98c5b.mp4', 'e84c1d004dd44ecd847df4941fc354d4.jpg', 'a8883eeab83651076dd2ff5ef1b98c5b.zip', 1, '2020-12-04 01:45:57', '0000-00-00 00:00:00'),
(259, 'lagdi lahore d', '21', '8b9fa2bcfbaf5087a8231e84c2c0e059.mp4', 'c47ee1b193454d3cc72fd95565151823.jpg', '8b9fa2bcfbaf5087a8231e84c2c0e059.zip', 1, '2020-12-04 01:47:54', '0000-00-00 00:00:00'),
(260, 'valam', '21', '6837ba4151c2fedb163bceb09128ea62.mp4', 'b5d007b48319a65bf2fb715164e0a908.jpg', '6837ba4151c2fedb163bceb09128ea62.zip', 1, '2020-12-04 01:50:08', '0000-00-00 00:00:00'),
(261, 'muqabl', '21', '2744432b71a389ad9a4c1e6c75418a3f.mp4', '02368e0ddb572a1cfa61580e220c6639.jpg', '2744432b71a389ad9a4c1e6c75418a3f.zip', 1, '2020-12-04 01:52:25', '0000-00-00 00:00:00'),
(262, 'filhaal shayari', '21', '55026d83a411b78befcfec07e6d33ae8.mp4', '8c297ed9d8da00369097bf27ee7ad2f4.jpg', '55026d83a411b78befcfec07e6d33ae8.zip', 1, '2020-12-04 01:53:03', '0000-00-00 00:00:00'),
(263, 'illegal weapon', '21', '8404e02bcf27922d9a00c1a917e4d090.mp4', 'c8db339b189328bd3cbfb46681de2336.jpg', '8404e02bcf27922d9a00c1a917e4d090.zip', 1, '2020-12-04 01:56:05', '0000-00-00 00:00:00'),
(264, 'filhall', '21', '098d4fca839ff150928c69ecbf6aa9b4.mp4', 'c56bc87febf31a268df9f3266c878b5f.jpg', '098d4fca839ff150928c69ecbf6aa9b4.zip', 1, '2020-12-04 01:57:28', '0000-00-00 00:00:00'),
(265, 'relation', '21', '40a51b39e6f47a576f517f8eda991571.mp4', 'f48d89644539aa8f4d4421150de21210.jpg', '40a51b39e6f47a576f517f8eda991571.zip', 1, '2020-12-04 01:59:05', '0000-00-00 00:00:00'),
(266, 'yaari', '21', '557cadd4fb521efe0c4b426fc7514ddb.mp4', 'daba015dbdbd6505d1b4f0e2fbef25bb.jpg', '557cadd4fb521efe0c4b426fc7514ddb.zip', 1, '2020-12-04 02:01:05', '0000-00-00 00:00:00'),
(267, 'ishq ter', '21', 'b2a4479d58a0aebefe5e49338c54801b.mp4', '772c7948c6aeec24843d5c64c2957750.jpg', 'b2a4479d58a0aebefe5e49338c54801b.zip', 1, '2020-12-04 02:03:43', '0000-00-00 00:00:00'),
(268, 'filhall', '21', '4cce958a069c663d624cdd0131e9fb44.mp4', '4f023a93204d5aa8b5844d9bee88e450.jpg', '4cce958a069c663d624cdd0131e9fb44.zip', 1, '2020-12-04 02:05:38', '0000-00-00 00:00:00'),
(269, 'mera intkam dekhegi', '21', '56929586ef60502511fda0eb9cad3998.mp4', '55372321ffb7401a25864209afcf6fb3.jpg', '56929586ef60502511fda0eb9cad3998.zip', 1, '2020-12-04 02:07:18', '0000-00-00 00:00:00'),
(270, 'tum hi ana', '21', '674aa24636781ff2302f339dbe47823a.mp4', '25dd1a25be8215db734c1ffcd8b70cc1.jpg', '674aa24636781ff2302f339dbe47823a.zip', 1, '2020-12-04 02:08:22', '0000-00-00 00:00:00'),
(271, 'pal pal dil ke pas lyrical', '21', '18762e56e771597047e2fbad35ee8719.mp4', '4463d0fe731bf244e16539d7bc587b5e.jpg', '18762e56e771597047e2fbad35ee8719.zip', 1, '2020-12-04 02:09:23', '0000-00-00 00:00:00'),
(272, 'pachataog', '21', '9f4a32ab4c34c3710509f541747f54dd.mp4', '99276141820b42ffda9bb92b365e6309.jpg', '9f4a32ab4c34c3710509f541747f54dd.zip', 1, '2020-12-04 02:13:23', '0000-00-00 00:00:00'),
(273, 'bole jo koyal bago me', '21', '002986c62506fb95b92beb280e80bbb9.mp4', 'b2b9374f8931c147d3e7aa74631e6d81.jpg', '002986c62506fb95b92beb280e80bbb9.zip', 1, '2020-12-04 02:15:59', '0000-00-00 00:00:00'),
(274, 'teri meri kahani', '21', '87de8bead59aa2dab205eb60b76ad03f.mp4', '6d46a71fb94902c84886585eb9a1c0e6.jpg', '87de8bead59aa2dab205eb60b76ad03f.zip', 1, '2020-12-04 02:19:01', '0000-00-00 00:00:00'),
(275, 'nand gher anand bhay', '17', '54e56a54ab7ee38c24cbd2eccbc06d87.mp4', '88e87c035265c68af39f0873e05e51bf.jpg', '54e56a54ab7ee38c24cbd2eccbc06d87.zip', 1, '2020-12-04 02:24:33', '0000-00-00 00:00:00'),
(276, 'janmasthami', '17', '165b9e42100dedd57124985c12772d6d.mp4', '1d6e2aa6ea54641f975007f912686f45.jpg', '165b9e42100dedd57124985c12772d6d.zip', 1, '2020-12-04 02:27:04', '0000-00-00 00:00:00'),
(277, 'janmasthami', '17', 'bae3149467403c69a69f1ff8cedf0a65.mp4', '1cfa0abb335b6cb329e986e7813ac1c1.jpg', 'bae3149467403c69a69f1ff8cedf0a65.zip', 1, '2020-12-04 02:28:35', '0000-00-00 00:00:00'),
(278, 'vitthal vitthal', '17', '36b08d3eedb6650a883cd1c7cf0b25b3.mp4', '13cdaa2b2a161fbdc4a0336b86f72d1c.jpg', '36b08d3eedb6650a883cd1c7cf0b25b3.zip', 1, '2020-12-04 02:31:07', '0000-00-00 00:00:00'),
(279, 'janmasthami', '17', '2325eeeb1f5dfcab2960b7762eefced5.mp4', '47c212bae29d91f186a737cf04453ae2.jpg', '2325eeeb1f5dfcab2960b7762eefced5.zip', 1, '2020-12-04 02:33:02', '0000-00-00 00:00:00'),
(280, 'janmasthami', '17', '21913583644b0f4d95058120461e2982.mp4', '9aae3234206e39fd0448b4140a08f729.jpg', '21913583644b0f4d95058120461e2982.zip', 1, '2020-12-04 02:35:47', '0000-00-00 00:00:00'),
(281, 'janmasthami', '17', '3cc0cf26f8c5087d0b2e0f278c05c50c.mp4', 'a3bba1291eaed32e7ded3f5cabdf3d90.jpg', '3cc0cf26f8c5087d0b2e0f278c05c50c.zip', 1, '2020-12-04 02:37:56', '0000-00-00 00:00:00'),
(282, 'i love my india', '14', '0377cc34e7322f6ccc0ff95a4e65a486.mp4', '40d5933bc9d784fc90d75c384578e5f3.jpg', '0377cc34e7322f6ccc0ff95a4e65a486.zip', 1, '2020-12-04 02:42:09', '0000-00-00 00:00:00'),
(283, 'happy republic day', '14', '375a30e0b4c77c21cb6dc6e2f117821b.mp4', '0d9aa714c2ea622341e53206e0bde2a7.jpg', '375a30e0b4c77c21cb6dc6e2f117821b.zip', 1, '2020-12-04 02:43:54', '0000-00-00 00:00:00'),
(284, 'mausam he barish ka', '14', '6d00c14ddc5b46202593c4896f851b81.mp4', '2cc2d1a0ff849ad826153adc6b24863a.jpg', '6d00c14ddc5b46202593c4896f851b81.zip', 1, '2020-12-04 02:47:57', '0000-00-00 00:00:00'),
(285, 'bande mein tha dum', '14', 'fbbd3fb6055380bc26cd848233de3c63.mp4', '852d8df464ad13c41ad09dcb4ed4d610.jpg', 'fbbd3fb6055380bc26cd848233de3c63.zip', 1, '2020-12-04 02:51:28', '0000-00-00 00:00:00'),
(286, 'Independence day', '14', '869c430782b3aba705ebe8607cb33247.mp4', '51076a07fe1271fe9478d2de1936f832.jpg', '869c430782b3aba705ebe8607cb33247.zip', 1, '2020-12-04 02:52:48', '0000-00-00 00:00:00'),
(287, 'republic day', '14', 'f32da4474109a33eff19ba79f843aa0c.mp4', '7e0c0a806e89e5eb4930c8287ea7e44d.jpg', 'f32da4474109a33eff19ba79f843aa0c.zip', 1, '2020-12-04 02:55:57', '0000-00-00 00:00:00'),
(288, 'republic day', '14', '6d34604367a1448c3a290d8e43163534.mp4', '3b538d0d94447716039ed974788f8fa9.jpg', '6d34604367a1448c3a290d8e43163534.zip', 1, '2020-12-04 02:58:28', '0000-00-00 00:00:00'),
(289, 'Independence day', '14', '025b44a91b3536f42861424d89120b7f.mp4', 'ecacf079411fd78da7ea328f62eb10bb.jpg', '025b44a91b3536f42861424d89120b7f.zip', 1, '2020-12-04 03:00:18', '0000-00-00 00:00:00'),
(290, 'independence day', '14', '3ca082d0de3531e2e07f608ff1350e82.mp4', '47d6c665624e3cc697d07fb3d26d1e49.jpg', '3ca082d0de3531e2e07f608ff1350e82.zip', 1, '2020-12-04 03:01:06', '0000-00-00 00:00:00'),
(291, 'light for indi', '14', 'b2792bf330d76772dc7bd0b17ec5558b.mp4', '26defcf7a056cfdaeb1fedf85340e123.jpg', 'b2792bf330d76772dc7bd0b17ec5558b.zip', 1, '2020-12-04 03:01:39', '0000-00-00 00:00:00'),
(292, 'corono fighter', '14', '920d953b9346a89b5f667d48256a84ef.mp4', 'eb00e5e3275ebbdc260194d48fcade92.jpg', '920d953b9346a89b5f667d48256a84ef.zip', 1, '2020-12-04 03:02:03', '0000-00-00 00:00:00'),
(293, 'independence day', '14', '58dbeb59d74675c5de5d991012ce2733.mp4', '104e5ec478c60ff11505b1e9646f8828.jpg', '58dbeb59d74675c5de5d991012ce2733.zip', 1, '2020-12-04 03:03:46', '0000-00-00 00:00:00'),
(294, 'independence day', '14', '139b6fb9d620db65e55a4827f1147b77.mp4', 'ce3acf5392de6c1fd387984c462467c2.jpg', '139b6fb9d620db65e55a4827f1147b77.zip', 1, '2020-12-04 03:04:46', '0000-00-00 00:00:00'),
(295, 'independence day', '14', 'b2b7568656dc3719d8fdcc6e0799a2e4.mp4', '53d6a158ec4803ff2c65e9bdb30930b3.jpg', 'b2b7568656dc3719d8fdcc6e0799a2e4.zip', 1, '2020-12-04 03:06:22', '0000-00-00 00:00:00'),
(296, 'independence day', '14', 'bd740dfdd1618c748ce14f384e235830.mp4', '5c0f15704790dae7e2157bf587fbd7c3.jpg', 'bd740dfdd1618c748ce14f384e235830.zip', 1, '2020-12-04 03:07:30', '0000-00-00 00:00:00'),
(297, 'ganpati visarjan', '16', '337dac119d57958729f86f4717268aee.mp4', '35610fb9ff99290562e7974d9c3fdecf.jpg', '337dac119d57958729f86f4717268aee.zip', 1, '2020-12-04 03:25:31', '0000-00-00 00:00:00'),
(298, 'jai ganesh jai ganesh deva', '16', 'fe14a808f8edf5e1ea759d54ec637414.mp4', '58868ec38f57871cef726d5fa75eecc7.jpg', 'fe14a808f8edf5e1ea759d54ec637414.zip', 1, '2020-12-04 03:26:57', '0000-00-00 00:00:00'),
(299, 'jai dev jai dev', '16', '50f8d0c60cd5695313fd6a9ef6f5e0c7.mp4', '44f2ed5a0ad2d1833f12a455f9bf3618.jpg', '50f8d0c60cd5695313fd6a9ef6f5e0c7.zip', 1, '2020-12-04 03:29:01', '0000-00-00 00:00:00'),
(300, 'micchami dukkadam', '16', 'b2e0d07266cc9e54734914e4a2fd8354.mp4', '482d05bfea27aacbab2b499cd9e5f2ef.jpg', 'b2e0d07266cc9e54734914e4a2fd8354.zip', 1, '2020-12-04 03:30:21', '0000-00-00 00:00:00'),
(301, 'gann deva', '16', '4b507ab6b040ee5aa8f10bb46bcda278.mp4', '86f64e83c45391a207beffe3f49725b2.jpg', '4b507ab6b040ee5aa8f10bb46bcda278.zip', 1, '2020-12-04 03:32:00', '0000-00-00 00:00:00'),
(302, 'deva shree ganesha', '16', '80d5ba12cea48e297f0c898834fc81b8.mp4', '083e1f95f6e8f50bb2d363d92adc69fd.jpg', '80d5ba12cea48e297f0c898834fc81b8.zip', 1, '2020-12-04 03:32:53', '0000-00-00 00:00:00'),
(303, 'ganesh caturthi', '16', '5ec61f93eb631789cf98e1e85d0503f4.mp4', '1a96b373cb77410337ff48ed19b916f8.jpg', '5ec61f93eb631789cf98e1e85d0503f4.zip', 1, '2020-12-04 03:34:25', '0000-00-00 00:00:00'),
(304, 'ganpati visarjan', '16', '1ecf9d9c7f97b395889bde27f1e77f33.mp4', '256bf4685ebddf05f4c155ad8f60b20c.jpg', '1ecf9d9c7f97b395889bde27f1e77f33.zip', 1, '2020-12-04 03:37:13', '0000-00-00 00:00:00'),
(305, 'ganesh caturthi', '16', '9941c67631301e21e9e7acfb23f454a8.mp4', '91acb67772a97b1848519d6b8c9cb720.jpg', '9941c67631301e21e9e7acfb23f454a8.zip', 1, '2020-12-04 03:38:55', '0000-00-00 00:00:00'),
(306, 'ganesh caturthi', '16', 'f2410f3dd3e6ee89f87bf904dbdbe5f1.mp4', '0c32719787ae143b071b6ab27c243940.jpg', 'f2410f3dd3e6ee89f87bf904dbdbe5f1.zip', 1, '2020-12-04 03:40:24', '0000-00-00 00:00:00'),
(307, 'ganpati visarjan', '16', 'b9f48abcae7fa86bf2a3d9ee9950f717.mp4', '95c9838d332d24f9860eaf3f2b0d7f34.jpg', 'b9f48abcae7fa86bf2a3d9ee9950f717.zip', 1, '2020-12-04 03:42:02', '0000-00-00 00:00:00'),
(308, 'ganesh caturthi', '16', '1d16235dc1fb491c2f2a4fcde8b4e4d2.mp4', '432fb492b418bde056652f8af49d921a.jpg', '1d16235dc1fb491c2f2a4fcde8b4e4d2.zip', 1, '2020-12-04 03:43:51', '0000-00-00 00:00:00'),
(309, 'ganesh caturthi', '16', 'fddb3051b63a30248d6f0d6e166517e9.mp4', '4b6fb9b93ae8e23f3a56674a54663292.jpg', 'fddb3051b63a30248d6f0d6e166517e9.zip', 1, '2020-12-04 03:45:27', '0000-00-00 00:00:00'),
(310, 'ganesh caturthi', '16', 'de9ef54bf880fceaf712238a84974b66.mp4', '3bbe19fac009e55a16614b63932e638f.jpg', 'de9ef54bf880fceaf712238a84974b66.zip', 1, '2020-12-04 03:46:26', '0000-00-00 00:00:00'),
(311, 'ganesh chaturth', '16', '6147de0bf3d5ed9c769a16def4b9dfd7.mp4', '61113f77dd0730ed372b76f9adcb015a.jpg', '6147de0bf3d5ed9c769a16def4b9dfd7.zip', 1, '2020-12-04 03:48:05', '0000-00-00 00:00:00'),
(312, 'friendship day', '10', 'd125de44962d74b1e2637f2a28741bf1.mp4', '05f100ce958cade4b1954784b2b2d928.jpg', 'd125de44962d74b1e2637f2a28741bf1.zip', 1, '2020-12-04 03:50:20', '0000-00-00 00:00:00'),
(313, 'har ek friend kamina hota he', '10', 'adad87a28bbdb563efe37e64207b6045.mp4', 'b46691daec063edca195d6dcd82dcc57.jpg', 'adad87a28bbdb563efe37e64207b6045.zip', 1, '2020-12-04 03:51:47', '0000-00-00 00:00:00'),
(314, 'friendship day', '10', '49ab1d252277e066d616afa9407bcf05.mp4', '0df964a58ece6756b6647831c80b0afa.jpg', '49ab1d252277e066d616afa9407bcf05.zip', 1, '2020-12-04 03:52:47', '0000-00-00 00:00:00'),
(315, 'ye dosati', '10', '800739f950f5a28ee24f7bc02378932d.mp4', '09b0b9b54e2f8002f5bb719b79a59391.jpg', '800739f950f5a28ee24f7bc02378932d.zip', 1, '2020-12-04 03:53:46', '0000-00-00 00:00:00'),
(316, 'teri meri dosti', '10', '9160f76f1509c81e9c7dec12f6472a14.mp4', '323d64f57ec039574ebc75e1ec2be238.jpg', '9160f76f1509c81e9c7dec12f6472a14.zip', 1, '2020-12-04 03:55:24', '0000-00-00 00:00:00'),
(317, 'tera yaar hoon main', '10', 'da0909226f45e6fad59f7d9467b07e62.mp4', 'db403364bb5c05c199fd96ee3cd6c5a6.jpg', 'da0909226f45e6fad59f7d9467b07e62.zip', 1, '2020-12-04 03:57:21', '0000-00-00 00:00:00'),
(318, 'friendship', '10', '9a95e383b5cc2eba920d050c1dd3ef54.mp4', 'afa897ab39fe9c442fa4e468b24cd6b0.jpg', '9a95e383b5cc2eba920d050c1dd3ef54.zip', 1, '2020-12-04 03:58:41', '0000-00-00 00:00:00'),
(319, 'diwali celebration', '3', '21cacb28295351d924bc90577997658c.mp4', '0c39d5fc160821e9e21532e146c68403.jpg', '21cacb28295351d924bc90577997658c.zip', 1, '2020-12-04 04:01:11', '0000-00-00 00:00:00'),
(320, 'dhanteras', '3', '0b02970f8474a773e11f5425c323cb0d.mp4', 'a327790881de33aac766143fa2a2ace6.jpg', '0b02970f8474a773e11f5425c323cb0d.zip', 1, '2020-12-04 04:02:26', '0000-00-00 00:00:00'),
(321, 'new year', '3', 'a7b018048b799a00be2c5130c27b3139.mp4', '15fd7aa38c377e2393f9659dc36ee3a2.jpg', 'a7b018048b799a00be2c5130c27b3139.zip', 1, '2020-12-04 04:02:57', '0000-00-00 00:00:00'),
(322, 'dhanteras', '3', 'c0e0185ff292a1d69b1a7f654791797e.mp4', 'f0ff14cccb5e1e9ea35e93bbf5329e35.jpg', 'c0e0185ff292a1d69b1a7f654791797e.zip', 1, '2020-12-04 04:03:52', '0000-00-00 00:00:00'),
(324, 'diwali', '3', '25f8dec22e16781c348275ddbe6b2b38.mp4', '0c7acbf49586f5113ea0793e494cf9a8.jpg', '25f8dec22e16781c348275ddbe6b2b38.zip', 1, '2020-12-04 04:07:30', '0000-00-00 00:00:00'),
(325, 'diwali', '3', '7fffe78bd76c820647477a23f08adaed.mp4', '0022b6122c2bb19df0ba92cf25ca9db7.jpg', '7fffe78bd76c820647477a23f08adaed.zip', 1, '2020-12-04 04:08:20', '0000-00-00 00:00:00'),
(326, 'diwali', '3', 'dbc46946cc16c30cab191f434c9bec15.mp4', '7ef487660a818ec1d6dc14474f3809ca.jpg', 'dbc46946cc16c30cab191f434c9bec15.zip', 1, '2020-12-04 04:09:04', '0000-00-00 00:00:00'),
(327, 'diwali', '3', '2e3db4c6d00aec277de432893b6fbec4.mp4', '08b51967cdc9a7c25e7d7a9ef4e8d61f.jpg', '2e3db4c6d00aec277de432893b6fbec4.zip', 1, '2020-12-04 04:10:30', '0000-00-00 00:00:00'),
(328, 'diwali', '3', '664c06f5aa8039cda76c71d93e6c1b8c.mp4', '1d21b846cec49053c54b2fc66dea8ab1.jpg', '664c06f5aa8039cda76c71d93e6c1b8c.zip', 1, '2020-12-04 04:11:10', '0000-00-00 00:00:00'),
(329, 'diwali', '3', 'dc4f5d46582842f9c4f9d77adf8c617b.mp4', '972de54eddf6e1d22cb465c94e3f7242.jpg', 'dc4f5d46582842f9c4f9d77adf8c617b.zip', 1, '2020-12-04 04:11:56', '0000-00-00 00:00:00'),
(330, 'Aaukaat diakhata hu', '7', 'bbaf2c96625a568954cef622c7289720.mp4', '9767e148ad0558d1330e87b993168c16.jpg', 'bbaf2c96625a568954cef622c7289720.zip', 1, '2020-12-04 04:13:20', '0000-00-00 00:00:00'),
(331, 'gandhiji ke anmol vachan', '7', 'df68019c61d8bed8e6b52b55af48b6e6.mp4', '2d443863c27ae29d7c1145d58b74f0dd.jpg', 'df68019c61d8bed8e6b52b55af48b6e6.zip', 1, '2020-12-04 04:15:08', '0000-00-00 00:00:00'),
(332, 'flash effect', '7', '14c88df5e4b92bc78f0112da3bb28f10.mp4', 'c91d18076a9b23d38dd425f2f457b057.jpg', '14c88df5e4b92bc78f0112da3bb28f10.zip', 1, '2020-12-04 04:19:11', '0000-00-00 00:00:00'),
(333, 'reben', '7', 'dbc3bf890b1acd2e3020b6ee533986f0.mp4', 'e660070e3c0628ee11e92efac9ed87da.jpg', 'dbc3bf890b1acd2e3020b6ee533986f0.zip', 1, '2020-12-04 04:20:24', '0000-00-00 00:00:00'),
(334, 'don', '7', '91aa3ff7fcd32b59391eea1448c9b490.mp4', 'd8f7ac761f5e11186da4c24131830350.jpg', '91aa3ff7fcd32b59391eea1448c9b490.zip', 1, '2020-12-04 04:21:38', '0000-00-00 00:00:00'),
(335, 'waqt', '7', 'a64ed7b2bcb3ff81ae26589ce1f6ac0a.mp4', '63db05e0bfcc6dedf07725d16518334e.jpg', 'a64ed7b2bcb3ff81ae26589ce1f6ac0a.zip', 1, '2020-12-04 04:22:47', '0000-00-00 00:00:00'),
(336, 'Aaukaat diakhata hu', '7', '77f8fde378e6555c287ea8897bfd0639.mp4', 'd9023fc6598ba1d0f141d75f3d5acc2c.jpg', '77f8fde378e6555c287ea8897bfd0639.zip', 1, '2020-12-04 04:23:17', '0000-00-00 00:00:00'),
(337, 'hamari yaariyan', '7', 'ba79061d2717f2f0a6325a2e12269765.mp4', 'dbb1452a48743dd4b0459c91a02c7f72.jpg', 'ba79061d2717f2f0a6325a2e12269765.zip', 1, '2020-12-04 04:24:53', '0000-00-00 00:00:00'),
(338, 'glitch', '7', '15c27801353d021bf13666dac9b16a8d.mp4', '673c6fd7ce875dcc79bf62d944c36460.jpg', '15c27801353d021bf13666dac9b16a8d.zip', 1, '2020-12-04 04:25:56', '0000-00-00 00:00:00'),
(339, 'dialogue', '7', '2a6c646c9eb08ad6004c390156584fe4.mp4', '53773eac73b42bb3de2a5d2991e6da65.jpg', '2a6c646c9eb08ad6004c390156584fe4.zip', 1, '2020-12-04 04:26:58', '0000-00-00 00:00:00'),
(340, 'dialogue', '7', 'a4ccd9af0f71d987776242fbe76812fa.mp4', '0f05bba395b20da4f840a1d63b413601.jpg', 'a4ccd9af0f71d987776242fbe76812fa.zip', 1, '2020-12-04 04:27:43', '0000-00-00 00:00:00'),
(341, 'corona song', '7', '2055cf4bfa260d77222d3e4ace02b0a2.mp4', '91dacaac1e8cd517353ccd50a2a08043.jpg', '2055cf4bfa260d77222d3e4ace02b0a2.zip', 1, '2020-12-04 04:29:29', '0000-00-00 00:00:00'),
(342, 'traveling', '7', '58cd31e7a3f69ba67ccc8db0ce0d2119.mp4', '0799eec3e293c114f306cfba349a61b7.jpg', '58cd31e7a3f69ba67ccc8db0ce0d2119.zip', 1, '2020-12-04 04:30:26', '0000-00-00 00:00:00'),
(343, 'motivational', '7', 'b72e8ef40426ab564f58a394c0b28fca.mp4', '7edefeeb9e3d2e00b429c067f1b6c780.jpg', 'b72e8ef40426ab564f58a394c0b28fca.zip', 1, '2020-12-04 04:31:23', '0000-00-00 00:00:00'),
(344, 'sacred games', '7', '7b35da3dc38011a5c24340cec250f521.mp4', '15eb3959b868a2ca3930fec350587e3a.jpg', '7b35da3dc38011a5c24340cec250f521.zip', 1, '2020-12-04 04:33:20', '0000-00-00 00:00:00'),
(345, 'fashion', '7', 'eda4854f94340b5eb5cedfad9e47cba7.mp4', 'ed5d12c77db23acb7822cd823115e5b0.jpg', 'eda4854f94340b5eb5cedfad9e47cba7.zip', 1, '2020-12-04 04:34:27', '0000-00-00 00:00:00'),
(346, 'shayari kese bharosa karu', '7', '148b69c8db5fb06e44c861b6da3277d5.mp4', '7b6ed08f988bf4ff3a33c2de641094e7.jpg', '148b69c8db5fb06e44c861b6da3277d5.zip', 1, '2020-12-04 04:34:58', '0000-00-00 00:00:00'),
(347, 'Ae dil hai muskil', '7', '311ebad7674604f4bb101686de083ca1.mp4', 'e9b1dfd42fc6701a3c54fd87832d7201.jpg', '311ebad7674604f4bb101686de083ca1.zip', 1, '2020-12-04 04:36:37', '0000-00-00 00:00:00'),
(348, 'hume milna hai', '7', '4eab1163e2dbfeeaa4e5b00e87783cc1.mp4', 'f5756129cf0b2c52a89749fd85e89ead.jpg', '4eab1163e2dbfeeaa4e5b00e87783cc1.zip', 1, '2020-12-04 04:37:25', '0000-00-00 00:00:00'),
(349, 'dhadakan dialogue', '7', '36ec800b67cbead67021f7b96be624c2.mp4', 'f73ef2a59ae7c7f3e9e51965cfb55978.jpg', '36ec800b67cbead67021f7b96be624c2.zip', 1, '2020-12-04 04:38:50', '0000-00-00 00:00:00'),
(350, 'birthday', '8', '2ca5017d76e3dc2c388e541e1bd489dd.mp4', '0f64694c8b254a2d6cfdd19a9dd96156.jpg', '2ca5017d76e3dc2c388e541e1bd489dd.zip', 1, '2020-12-04 04:39:53', '0000-00-00 00:00:00'),
(351, 'Birthday', '8', '071db95aae02ca0d19f4ef8c9e3e4ebf.mp4', 'bb724e1ab87f3ba7580481cad7908c3c.jpg', '071db95aae02ca0d19f4ef8c9e3e4ebf.zip', 1, '2020-12-04 04:40:24', '0000-00-00 00:00:00'),
(352, 'happy birthday to you', '8', '3ef2abfb9b648230a2a6becdb7234816.mp4', '50aaddf32daa14ac5ecf788e833f851f.jpg', '3ef2abfb9b648230a2a6becdb7234816.zip', 1, '2020-12-04 04:41:37', '0000-00-00 00:00:00'),
(353, 'happy birthday', '8', 'c3add567aaa4c569df0a3a076cc7f734.mp4', 'c92b10e4876e539fa70284746814babd.jpg', 'c3add567aaa4c569df0a3a076cc7f734.zip', 1, '2020-12-04 04:42:37', '0000-00-00 00:00:00'),
(354, 'happy birthday', '8', 'b2f9a056823b29c71a581422528a11f9.mp4', '8c0ddd5d67d0a1817830b96a90bdbb57.jpg', 'b2f9a056823b29c71a581422528a11f9.zip', 1, '2020-12-04 04:43:22', '0000-00-00 00:00:00'),
(355, 'happy birthday', '8', 'e1bbbdf267eabc31f3ec400aa5253e9c.mp4', '3b57c8e369c5c45bac8b0f11d12f98a8.jpg', 'e1bbbdf267eabc31f3ec400aa5253e9c.zip', 1, '2020-12-04 04:44:05', '0000-00-00 00:00:00'),
(356, 'birthday', '8', '3b4f4a834daf37e99896b7f598b322c7.mp4', 'cef5e5a9db55139136b6811ff7d0c7d6.jpg', '3b4f4a834daf37e99896b7f598b322c7.zip', 1, '2020-12-04 04:44:45', '0000-00-00 00:00:00'),
(357, 'birthday', '8', '829f3d754c42c18ca501343dc1674c7a.mp4', '630c017b2292539577a22096251286e3.jpg', '829f3d754c42c18ca501343dc1674c7a.zip', 1, '2020-12-04 04:45:11', '0000-00-00 00:00:00'),
(358, 'happy birthday', '8', '671bb4ec398414a8c97bd820f9629c6e.mp4', '042811be658e314848634e3bb8d4c6da.jpg', '671bb4ec398414a8c97bd820f9629c6e.zip', 1, '2020-12-04 04:46:44', '0000-00-00 00:00:00'),
(359, 'birthday diary', '8', '0617325516a017ee7a37b48b516664f5.mp4', '4ebbd34c95794a7f567a08bf54da3043.jpg', '0617325516a017ee7a37b48b516664f5.zip', 1, '2020-12-04 04:48:06', '0000-00-00 00:00:00'),
(360, 'birthday', '8', 'c31fad03f588bb549f9a5d58414d692e.mp4', '0a67165521f5117979f967698ac0fa60.jpg', 'c31fad03f588bb549f9a5d58414d692e.zip', 1, '2020-12-04 04:49:34', '0000-00-00 00:00:00'),
(361, 'birthday', '8', 'e579b8ebfa1a04e40a54f04d0e65a081.mp4', '34d68f3c7787944fa9bf1509cf786f9b.jpg', 'e579b8ebfa1a04e40a54f04d0e65a081.zip', 1, '2020-12-04 04:51:11', '0000-00-00 00:00:00'),
(362, 'birthday girl', '8', 'b71d6742853d94a75c81105d5583e8d1.mp4', '703cc82304c1c0d1d021c8c54ee06352.jpg', 'b71d6742853d94a75c81105d5583e8d1.zip', 1, '2020-12-04 04:52:22', '0000-00-00 00:00:00'),
(363, 'birthday', '8', '9ab532198d085eca7da96cd13e0a0ebc.mp4', '91e07a42f1a40ccddd0f754e73d1d85b.jpg', '9ab532198d085eca7da96cd13e0a0ebc.zip', 1, '2020-12-04 04:54:16', '0000-00-00 00:00:00'),
(364, 'birthday boy V', '8', '77510a8b8a3ae31bf821f037045e2c6c.mp4', '78ad29ad795afb35a11001c143b29bda.jpg', '77510a8b8a3ae31bf821f037045e2c6c.zip', 1, '2020-12-04 04:54:58', '0000-00-00 00:00:00'),
(365, 'birthday partcle', '8', '4b0571a04cbe41295d117c49ec4e46cf.mp4', '90b59deb06d9d95372dce0c41e013bfa.jpg', '4b0571a04cbe41295d117c49ec4e46cf.zip', 1, '2020-12-04 04:56:32', '0000-00-00 00:00:00'),
(366, 'birthday one imag', '8', '3bf2550d241f420a1f6433e4832e9a25.mp4', '4b27162fc89ca357479d69b519b5544d.jpg', '3bf2550d241f420a1f6433e4832e9a25.zip', 1, '2020-12-04 04:57:26', '0000-00-00 00:00:00'),
(367, 'wedding anniversary', '9', '6d8170870b30c802a7ca236bcaac2f78.mp4', '2b3e651da4ce0177c041cf5573f79797.jpg', '6d8170870b30c802a7ca236bcaac2f78.zip', 1, '2020-12-04 05:01:27', '0000-00-00 00:00:00'),
(368, 'wedding anniversary', '9', '0685f8df43daa7b2ef9af9bb1d3bb2e0.mp4', 'e9c090167cd5c228fd23c0bd3d526b58.jpg', '0685f8df43daa7b2ef9af9bb1d3bb2e0.zip', 1, '2020-12-04 05:02:19', '0000-00-00 00:00:00'),
(369, 'anniversary', '9', '61cc1d7a58f0bce2be7381320422b519.mp4', 'fbb8b29e9ad10cc93f4888c1c363450a.jpg', '61cc1d7a58f0bce2be7381320422b519.zip', 1, '2020-12-04 05:03:37', '0000-00-00 00:00:00'),
(370, 'anniversary', '9', '6ce6dc78f6bcc8c1fe622a55f197b563.mp4', '901d93af3efbdb4b2575ccf59f9c07b4.jpg', '6ce6dc78f6bcc8c1fe622a55f197b563.zip', 1, '2020-12-04 05:04:01', '0000-00-00 00:00:00'),
(371, 'anniversary news', '9', '6725d33ef8e52a5107c70510caa5e019.mp4', '10e15cb43926c8bd310e57aa412e1fe9.jpg', '6725d33ef8e52a5107c70510caa5e019.zip', 1, '2020-12-04 05:05:02', '0000-00-00 00:00:00'),
(372, 'christmas', '5', '607e13718ef5dabc9f460f09e42148f0.mp4', 'be791925ce4fcf0230b7f579bfc49cf0.jpg', '607e13718ef5dabc9f460f09e42148f0.zip', 1, '2020-12-04 05:13:09', '0000-00-00 00:00:00'),
(373, 'christmas', '5', 'ea99c574bb6c1f0f7fe305bfcc09b613.mp4', '02157d878520fcaf69a1fd0846432548.jpg', 'ea99c574bb6c1f0f7fe305bfcc09b613.zip', 1, '2020-12-04 05:14:45', '0000-00-00 00:00:00'),
(374, 'christmas', '5', 'dda74a80fd75e752571802619cbeeabe.mp4', '5cc25093464aa3d4d33f5cf8a2a265a4.jpg', 'dda74a80fd75e752571802619cbeeabe.zip', 1, '2020-12-04 05:16:02', '0000-00-00 00:00:00'),
(375, 'new year', '5', '5c986b3a5156fea1e5efc922c64b66cc.mp4', '3c8f2483598488ee2604eb187f8adb53.jpg', '5c986b3a5156fea1e5efc922c64b66cc.zip', 1, '2020-12-04 05:17:42', '0000-00-00 00:00:00'),
(376, 'new year', '5', '524d1ce953014ef96aa14f0481da1e8d.mp4', 'd38df67569489b5352e8267e1ec3f438.jpg', '524d1ce953014ef96aa14f0481da1e8d.zip', 1, '2020-12-04 05:19:24', '0000-00-00 00:00:00'),
(377, 'new year', '5', '4f9f0ceed972435a27bb86e8ec800868.mp4', '98c8446977f9dc5ec40732fd65ec917a.jpg', '4f9f0ceed972435a27bb86e8ec800868.zip', 1, '2020-12-04 05:21:31', '0000-00-00 00:00:00'),
(378, 'st', '5', '15ec13c3ce5b2aedd98f1d3d362ee1e3.mp4', '3b7e2546e9d2ffa5ad6c86d0508f3aa1.jpg', '15ec13c3ce5b2aedd98f1d3d362ee1e3.zip', 1, '2020-12-04 05:23:28', '0000-00-00 00:00:00'),
(380, 'valentines day', '6', '0c8ab901b4350a2facdd89d13a5c63de.mp4', 'a29184cd6dc7dfdd094af8f220e113e4.jpg', '0c8ab901b4350a2facdd89d13a5c63de.zip', 1, '2020-12-04 05:27:47', '0000-00-00 00:00:00'),
(381, 'valentine day', '6', '6f480c2e37dc54f294268abcb94e69e2.mp4', '56c53010f21f63ea8f3cdbd8a6764924.jpg', '6f480c2e37dc54f294268abcb94e69e2.zip', 1, '2020-12-04 05:29:31', '0000-00-00 00:00:00'),
(382, 'minimal', '6', '6739f9ed5d449acf171ef1ab444f220e.mp4', '0663eb71e572085512dc556b67ebf49e.jpg', '6739f9ed5d449acf171ef1ab444f220e.zip', 1, '2020-12-04 05:30:21', '0000-00-00 00:00:00'),
(383, 'feelin', '6', '4786b9595adbc7e2351ced74d4bf50a2.mp4', 'f541e403ae1c452735ae9e60ea4ef1e0.jpg', '4786b9595adbc7e2351ced74d4bf50a2.zip', 1, '2020-12-04 05:32:10', '0000-00-00 00:00:00'),
(384, 'video bana de', '6', '2bf6d5777a0156854a737337b6aa6597.mp4', '259a6924ae4599a80556698f090bd24b.jpg', '2bf6d5777a0156854a737337b6aa6597.zip', 1, '2020-12-04 05:33:17', '0000-00-00 00:00:00'),
(385, 'our bab', '6', '2916b2ef46f0f42b0ee253378d1a8a6d.mp4', '41928bf7ba27e3a9dca7c6bfb093e37c.jpg', '2916b2ef46f0f42b0ee253378d1a8a6d.zip', 1, '2020-12-04 05:33:45', '0000-00-00 00:00:00'),
(386, 'valentine day', '6', '2f68c365d6bfd430abc5c4876254b5cc.mp4', '588766713f20cb65fcf243d7c914bbe9.jpg', '2f68c365d6bfd430abc5c4876254b5cc.zip', 1, '2020-12-04 05:35:38', '0000-00-00 00:00:00'),
(387, 'valentines day', '6', '5805d0ee2e53d5bcb57b198024209da0.mp4', '34f90e0347165e11fa74c24dbac25029.jpg', '5805d0ee2e53d5bcb57b198024209da0.zip', 1, '2020-12-04 05:37:45', '0000-00-00 00:00:00'),
(388, 'valentines day', '6', 'b4980210cc58f774c7b075e765667c14.mp4', '3ab348912e946c0c48faa22d3ec3a89f.jpg', 'b4980210cc58f774c7b075e765667c14.zip', 1, '2020-12-04 05:38:22', '0000-00-00 00:00:00'),
(389, 'kiss day', '6', 'ade57517c48fb7dad65fe040f1f58175.mp4', '2532e044d9dc4670a40509b88a050311.jpg', 'ade57517c48fb7dad65fe040f1f58175.zip', 1, '2020-12-04 05:40:47', '0000-00-00 00:00:00'),
(390, 'hug day', '6', '68ff2d6681b7fbbf7648e1b3d45dc422.mp4', '7393106dceec9c03406702af3e7f0f14.jpg', '68ff2d6681b7fbbf7648e1b3d45dc422.zip', 1, '2020-12-04 05:43:43', '0000-00-00 00:00:00'),
(391, 'rose day', '6', '118b39071ab933d17e6540a2f7cfae7b.mp4', '2503f348cdd31f84862221caf187f9cc.jpg', '118b39071ab933d17e6540a2f7cfae7b.zip', 1, '2020-12-04 05:45:18', '0000-00-00 00:00:00'),
(392, 'rose day', '6', '71343f3b32471bee1b481e9f48062f5e.mp4', '6093c2174916a8e40dadf2a61938db0e.jpg', '71343f3b32471bee1b481e9f48062f5e.zip', 1, '2020-12-04 05:47:33', '0000-00-00 00:00:00'),
(393, 'butterfly', '6', 'c9d83c011c8d7d9256ffc46bcd9dc72c.mp4', '7afc98422d32ec470c1e43986542f0c9.jpg', 'c9d83c011c8d7d9256ffc46bcd9dc72c.zip', 1, '2020-12-04 05:48:50', '0000-00-00 00:00:00'),
(394, 'tip tip barsa pani', '6', '70c4d344ed9f61030d77d76fea24c1e1.mp4', '8cc231b381b43d5bf8d197bd5a867d13.jpg', '70c4d344ed9f61030d77d76fea24c1e1.zip', 1, '2020-12-04 05:51:06', '0000-00-00 00:00:00'),
(395, 'tumko hasana pasand ha', '6', 'cb53b8abc44efafbef1ced1d522e8d14.mp4', '0592dbe743d1e8799932d605ef7a64e7.jpg', 'cb53b8abc44efafbef1ced1d522e8d14.zip', 1, '2020-12-04 05:52:09', '0000-00-00 00:00:00'),
(396, 'aaj se teri', '6', 'a7a88b4e12c1b9f5bb30311e5e8133c3.mp4', '1a886e7fd31cc04b44f70f50da4759ea.jpg', 'a7a88b4e12c1b9f5bb30311e5e8133c3.zip', 1, '2020-12-04 05:52:47', '0000-00-00 00:00:00'),
(397, 'no competition', '6', '72a8d3b0fa1734a92d032548012019b9.mp4', 'c3205add05075395a875f6050f2551d4.jpg', '72a8d3b0fa1734a92d032548012019b9.zip', 1, '2020-12-04 05:54:55', '0000-00-00 00:00:00'),
(398, 'mere naseeb mein', '6', 'c776a5ded954339324a1df70a74d3362.mp4', 'a01321d4bc69651786489afb192992d4.jpg', 'c776a5ded954339324a1df70a74d3362.zip', 1, '2020-12-04 05:57:10', '0000-00-00 00:00:00'),
(399, 'yeah baby', '6', '6d2e76932d45fc0f657aad3e326bcb57.mp4', 'a1ee5fea89172dc3cf5da99023c49faa.jpg', '6d2e76932d45fc0f657aad3e326bcb57.zip', 1, '2020-12-04 05:59:04', '0000-00-00 00:00:00'),
(400, 'feeling', '6', '4cfc6fbc3a4963f3006de2dc05787571.mp4', 'f65868d6861dcf8f338dc59903dc08bb.jpg', '4cfc6fbc3a4963f3006de2dc05787571.zip', 1, '2020-12-04 06:06:33', '0000-00-00 00:00:00'),
(401, 'samjhawa', '6', '932e80cea31826f7aad00020dcfc36a8.mp4', '5b348ece3a90520052a46dd98b7e8bdc.jpg', '932e80cea31826f7aad00020dcfc36a8.zip', 1, '2020-12-04 06:07:44', '0000-00-00 00:00:00'),
(402, 'kumkum na pagla padya', '6', '495ac573a0a9d27da398ab63a4ce32f1.mp4', '525e499f40c5d9d2034547ac00d38fd3.jpg', '495ac573a0a9d27da398ab63a4ce32f1.zip', 1, '2020-12-04 06:11:06', '0000-00-00 00:00:00'),
(403, 'mausam he barish ka', '6', '004be6e0b70aed808a8b68cc3fcc1be1.mp4', '21aad8f3c29a930e0ccf9ecece5acd66.jpg', '004be6e0b70aed808a8b68cc3fcc1be1.zip', 1, '2020-12-04 06:14:24', '0000-00-00 00:00:00'),
(404, 'tum hi ana', '6', '15fc3b246e8a4d3d4986ac57c3ff8f40.mp4', 'c136eabb4febf24e502667b78df6ecd7.jpg', '15fc3b246e8a4d3d4986ac57c3ff8f40.zip', 1, '2020-12-04 06:15:14', '0000-00-00 00:00:00'),
(405, 'chehra hai ya chand khila hai', '6', '4b0ef8fc38ec6db17ae08d3c0ec13d51.mp4', '6a71652c316ba86c9881d0705b3e1ef3.jpg', '4b0ef8fc38ec6db17ae08d3c0ec13d51.zip', 1, '2020-12-04 06:16:23', '0000-00-00 00:00:00'),
(406, 'hug day', '6', 'db05317dd367a67d4c7457dafb27ea8b.mp4', 'a8c90cb4bc2b671cdf1d9bb78749d48a.jpg', 'db05317dd367a67d4c7457dafb27ea8b.zip', 1, '2020-12-04 06:18:06', '0000-00-00 00:00:00'),
(407, 'jannat', '6', 'acd0bf27d00d62a3b9466d72d8ae48aa.mp4', '28db48bbfd246b384a7bdb61bb0434d3.jpg', 'acd0bf27d00d62a3b9466d72d8ae48aa.zip', 1, '2020-12-04 06:22:51', '0000-00-00 00:00:00'),
(408, 'dot photo', '6', '87669f24c2ef47b5d785fd473536de89.mp4', 'de2274d29a5507af79ade486f9abfff6.jpg', '87669f24c2ef47b5d785fd473536de89.zip', 1, '2020-12-04 06:23:42', '0000-00-00 00:00:00'),
(409, 'teri khaamiyan', '6', 'ea6a6bec114fe90b516d17c67bc52859.mp4', '1b223350bb9e90bba4bf409b4dca6308.jpg', 'ea6a6bec114fe90b516d17c67bc52859.zip', 1, '2020-12-04 06:25:54', '0000-00-00 00:00:00'),
(410, 'retro film reel', '6', 'ec00e2c7dd1d20ade4dc4aa909a3fff0.mp4', 'dd26fa25e055a81a06091abdb1924f4f.jpg', 'ec00e2c7dd1d20ade4dc4aa909a3fff0.zip', 1, '2020-12-04 06:27:07', '0000-00-00 00:00:00'),
(411, 'chhukar mere man ko', '6', '8b6f37f7d9178fd1c0efb628751194b3.mp4', '4b3e0bcfe986f54c51e88bff9c0838a7.jpg', '8b6f37f7d9178fd1c0efb628751194b3.zip', 1, '2020-12-04 06:28:55', '0000-00-00 00:00:00'),
(412, 'aadat', '6', 'efb344dad202132bfb27bad94370c72c.mp4', '2e1f90ebf030b0620c8cf86a9537e073.jpg', 'efb344dad202132bfb27bad94370c72c.zip', 1, '2020-12-04 06:32:57', '0000-00-00 00:00:00'),
(413, 'film rerl video', '6', 'a4a11a7ac4d529f38ba2b052a2f20316.mp4', '3241cad9575bae7ac2527f337e025483.jpg', 'a4a11a7ac4d529f38ba2b052a2f20316.zip', 1, '2020-12-04 06:33:37', '0000-00-00 00:00:00'),
(414, 'malang', '6', '49339903d73aedba06ba5028db93b4fe.mp4', '1c6b228d4f2fd210f8b098c11b845152.jpg', '49339903d73aedba06ba5028db93b4fe.zip', 1, '2020-12-04 06:35:09', '0000-00-00 00:00:00'),
(415, 'superstar', '6', 'aa38962df73a3fcca3cb245ae037714a.mp4', '85c8ab0885244d08fed17283b043eb60.jpg', 'aa38962df73a3fcca3cb245ae037714a.zip', 1, '2020-12-04 06:37:06', '0000-00-00 00:00:00'),
(416, 'sakhiyaan', '6', '6fcc28b74a4c09316b76c8a6052dba21.mp4', '09af25ed7fc0e3c55b4cd21b4e1adeda.jpg', '6fcc28b74a4c09316b76c8a6052dba21.zip', 1, '2020-12-04 06:39:22', '0000-00-00 00:00:00'),
(417, 'hamdard', '6', 'e9197e4b5a0495fa3644879b2b6a0140.mp4', '2199d8477f594605e3feb21b65954f8c.jpg', 'e9197e4b5a0495fa3644879b2b6a0140.zip', 1, '2020-12-04 06:41:13', '0000-00-00 00:00:00'),
(418, 'muskurayega india', '6', '373fa0633688cda37543f4e5386a43fb.mp4', '355b8ff4ab287b8f19d380d6659c47db.jpg', '373fa0633688cda37543f4e5386a43fb.zip', 1, '2020-12-04 06:43:21', '0000-00-00 00:00:00'),
(419, 'corona song', '6', 'a05beb2c8a66fa5b478e06b18efeb232.mp4', '4d749b447738e782886a08a9aa78fb95.jpg', 'a05beb2c8a66fa5b478e06b18efeb232.zip', 1, '2020-12-04 06:44:17', '0000-00-00 00:00:00'),
(420, 'duniyase tujako churak', '6', '8e780693bdec71970b88cd3a004de5dd.mp4', 'a8e0e595fae37b2d68d494c91d0bbb75.jpg', '8e780693bdec71970b88cd3a004de5dd.zip', 1, '2020-12-04 06:46:17', '0000-00-00 00:00:00'),
(421, 'valam', '6', '0f74f2f601c3ec0dad216f1f10589e9a.mp4', 'a4f76c4ddbf813ffb2150c84bb9effaa.jpg', '0f74f2f601c3ec0dad216f1f10589e9a.zip', 1, '2020-12-04 06:47:05', '0000-00-00 00:00:00'),
(422, 'jatti da crush', '6', '96981c0ff0f62ac29f3e5337d98f10e0.mp4', '347112fcc9b53e5a79bd395ea7e221a0.jpg', '96981c0ff0f62ac29f3e5337d98f10e0.zip', 1, '2020-12-04 06:48:20', '0000-00-00 00:00:00'),
(423, 'dilbara', '6', '63b71d93cd81095c1a71be5e3ea02e30.mp4', 'b9324829bb23e1a14a757744d820518a.jpg', '63b71d93cd81095c1a71be5e3ea02e30.zip', 1, '2020-12-04 06:50:06', '0000-00-00 00:00:00'),
(424, 'lhalak dikhla Jaa', '6', '5843a406eb628d46c3b90b60a82c7cfa.mp4', '103a2ff188db1f808ca580745e4d6376.jpg', '5843a406eb628d46c3b90b60a82c7cfa.zip', 1, '2020-12-04 06:52:23', '0000-00-00 00:00:00'),
(425, 'ke ghungroo toot gaye', '6', '1ee09d315dbf0e1bb1068a2f0f279edd.mp4', 'f16b792dfea8700e50f27918c0e2ff51.jpg', '1ee09d315dbf0e1bb1068a2f0f279edd.zip', 1, '2020-12-04 06:53:46', '0000-00-00 00:00:00'),
(426, 'makhana', '6', '73b43189120670b99c4accad9bdac3ab.mp4', 'c4904a93b7c5507fd5a8b010af6260a8.jpg', '73b43189120670b99c4accad9bdac3ab.zip', 1, '2020-12-04 06:54:58', '0000-00-00 00:00:00'),
(427, 'pahada', '6', 'bf888175f6c202c270d1b8a22855ef1c.mp4', '1d1759f9b38053744f4b1ad6ea450aef.jpg', 'bf888175f6c202c270d1b8a22855ef1c.zip', 1, '2020-12-04 06:55:14', '0000-00-00 00:00:00'),
(428, 'bol do na zara', '6', 'f6ce8361d4e9cc9eac5a5aa0913f8810.mp4', '9a328aa55ee6dcf6bcd94d9fef26500d.jpg', 'f6ce8361d4e9cc9eac5a5aa0913f8810.zip', 1, '2020-12-04 06:55:34', '0000-00-00 00:00:00'),
(429, 'chhod diya', '6', '1d8a947c41b5ed37304a60950d4dbe93.mp4', '9a9f8be4ecfe2ca83f2c360ca555cf53.jpg', '1d8a947c41b5ed37304a60950d4dbe93.zip', 1, '2020-12-04 06:55:44', '0000-00-00 00:00:00'),
(430, 'darya', '6', '628725b2933f7c9a00d1aee031226c0a.mp4', 'bcee2ce51ddf72f8472225f27e846072.jpg', '628725b2933f7c9a00d1aee031226c0a.zip', 1, '2020-12-04 06:55:59', '0000-00-00 00:00:00'),
(431, 'heaven', '6', '7e8176f37cf13ce7b1476c2093ec29ef.mp4', 'c4c7233f5d24c3c3e1dde2bbf37b84b9.jpg', '7e8176f37cf13ce7b1476c2093ec29ef.zip', 1, '2020-12-04 06:56:04', '0000-00-00 00:00:00'),
(432, 'beach photos', '6', '04a48f5c04492541066c7ac4479153bb.mp4', 'a62b960035e8a308ba8fedd14533a4ca.jpg', '04a48f5c04492541066c7ac4479153bb.zip', 1, '2020-12-04 06:56:10', '0000-00-00 00:00:00'),
(433, 'teri meri kahan', '6', '258dada1147d21e8570daf889b4dd180.mp4', 'e5cd20618940a56b08353e063f071827.jpg', '258dada1147d21e8570daf889b4dd180.zip', 1, '2020-12-04 06:56:19', '0000-00-00 00:00:00'),
(434, 'heart frame', '6', '1058dadd119e58b21a56bf5afc11a470.mp4', 'f8095e98945bd58c4e9aa88dabeec11d.jpg', '1058dadd119e58b21a56bf5afc11a470.zip', 1, '2020-12-04 06:56:22', '0000-00-00 00:00:00'),
(435, 'man mera', '6', '4101f371fac86eedada2abf67caa7e3b.mp4', '70035890272419a6e7ef566d28351c47.jpg', '4101f371fac86eedada2abf67caa7e3b.zip', 1, '2020-12-04 06:56:38', '0000-00-00 00:00:00'),
(436, 'dil todeya', '6', '4ed7601d74a186f74aed1c56c73471a8.mp4', '0f648c356fb19a3583e0ec7a507f3858.jpg', '4ed7601d74a186f74aed1c56c73471a8.zip', 1, '2020-12-04 06:56:41', '0000-00-00 00:00:00'),
(437, 'phir mulaaqat', '6', '854c058fac72d94c8efc48f7407242c1.mp4', '999497da5a4930d2d600f257b24a484c.jpg', '854c058fac72d94c8efc48f7407242c1.zip', 1, '2020-12-04 06:56:48', '0000-00-00 00:00:00'),
(438, 'kaash', '6', '4d48e0f46d960dac26374baef4857f82.mp4', '2bda0d2481565a9c4b5e4c989d8638dd.jpg', '4d48e0f46d960dac26374baef4857f82.zip', 1, '2020-12-04 06:56:58', '0000-00-00 00:00:00'),
(439, 'mothers days', '6', '60ae37ae635f35fce17606e4b9fca6c6.mp4', 'bbe6d55b6626a00dd868fd8c1e08a3bd.jpg', '60ae37ae635f35fce17606e4b9fca6c6.zip', 1, '2020-12-04 06:57:09', '0000-00-00 00:00:00'),
(440, 'khairiyat', '6', 'ddc875d5fbc4717209ef33516ca8d8da.mp4', 'd8264875b37ebe4d1d3c3c8b89a1f590.jpg', 'ddc875d5fbc4717209ef33516ca8d8da.zip', 1, '2020-12-04 06:57:47', '0000-00-00 00:00:00'),
(441, 'ik kahan', '6', '5aaef591ec66112f97a3afbcafdcdc6d.mp4', 'ef9e0e567fa8f86452a85bb00b7270d0.jpg', '5aaef591ec66112f97a3afbcafdcdc6d.zip', 1, '2020-12-04 06:58:02', '0000-00-00 00:00:00'),
(442, 'samajh kar chand jisko', '6', 'c7e53983b17c1b606c26d5aad6be79b1.mp4', '3e54dbd951ab5734ec8b53dc329dbbde.jpg', 'c7e53983b17c1b606c26d5aad6be79b1.zip', 1, '2020-12-04 06:58:08', '0000-00-00 00:00:00'),
(443, 'lehanga', '6', '850165332677bbcfbedf1a6d7953ecea.mp4', '6e63a3a4a7995c4ebd70ab92adb08337.jpg', '850165332677bbcfbedf1a6d7953ecea.zip', 1, '2020-12-04 06:58:13', '0000-00-00 00:00:00'),
(444, 'dhadakan dialogue', '6', 'ab1bf99266538ee9b3acce5508da9497.mp4', '3cc3545c0fad6f819d0655c4fbe5f485.jpg', 'ab1bf99266538ee9b3acce5508da9497.zip', 1, '2020-12-04 06:58:16', '0000-00-00 00:00:00'),
(445, 'tujhe kitna chahne lage hu', '6', '305fb2557fc4d44c5c628cb768d49bc1.mp4', 'da986657d1a82804a00e1b730e03960a.jpg', '305fb2557fc4d44c5c628cb768d49bc1.zip', 1, '2020-12-04 06:58:22', '0000-00-00 00:00:00'),
(446, 'love birds', '6', '2e14b11adba2173cc50bd5c4b96c385e.mp4', 'e9ab3540d82e19f2cd899c40ba9ed149.jpg', '2e14b11adba2173cc50bd5c4b96c385e.zip', 1, '2020-12-04 06:58:25', '0000-00-00 00:00:00'),
(447, 'chand si girl', '6', '2be15d3ae2bd7ff459ad3c23091cd9c4.mp4', 'aeac051cbed429dcb9ca0f98e8d4abe8.jpg', '2be15d3ae2bd7ff459ad3c23091cd9c4.zip', 1, '2020-12-04 06:58:26', '0000-00-00 00:00:00'),
(448, 'ek tarfa pyaar', '6', 'c3f40f832e9231ac1ae0a3b97d126844.mp4', 'a4d5b2d51e62dde6454651c0b17df030.jpg', 'c3f40f832e9231ac1ae0a3b97d126844.zip', 1, '2020-12-04 06:58:30', '0000-00-00 00:00:00'),
(449, 'love', '6', '1e4b5020effef5a4b5ebdc926153f994.mp4', 'ec0970165ab0789d7110c37a915b17d9.jpg', '1e4b5020effef5a4b5ebdc926153f994.zip', 1, '2020-12-04 06:58:42', '0000-00-00 00:00:00'),
(450, 'friendship', '6', '39b11fa30515c017135ee16fe18fcb79.mp4', '7fde1719bb7e2ea387e43aebe36754ae.jpg', '39b11fa30515c017135ee16fe18fcb79.zip', 1, '2020-12-04 06:58:52', '0000-00-00 00:00:00'),
(451, 'chasan', '6', '483dd8ea7d69207eb29d48b0c4c2a328.mp4', '588c56c857dc3630be2d90b9589779dd.jpg', '483dd8ea7d69207eb29d48b0c4c2a328.zip', 1, '2020-12-04 06:59:14', '0000-00-00 00:00:00'),
(452, 'chandigarh mein', '6', '423bfbbcccd75696abefc2437cac72a7.mp4', '06dd3e9eefb243a4ed76586b7635ef7e.jpg', '423bfbbcccd75696abefc2437cac72a7.zip', 1, '2020-12-04 06:59:50', '0000-00-00 00:00:00'),
(453, 'valam', '6', '19cc423e3854f903954dccd73779e594.mp4', 'c45f96be55a69ae7330d99e76edf3ff1.jpg', '19cc423e3854f903954dccd73779e594.zip', 1, '2020-12-04 07:00:41', '0000-00-00 00:00:00'),
(454, 'filhall', '6', 'a21196d0d939579bf178e8809b24182b.mp4', '02ae557f676b36f668158894ccf838ff.jpg', 'a21196d0d939579bf178e8809b24182b.zip', 1, '2020-12-04 07:00:52', '0000-00-00 00:00:00'),
(455, 'ishq ter', '6', 'c4cd2571d17204e8b2530d115efd3701.mp4', '045b5c403c6af231ed5c00cb9581c6fd.jpg', 'c4cd2571d17204e8b2530d115efd3701.zip', 1, '2020-12-04 07:00:56', '0000-00-00 00:00:00'),
(456, 'filhall', '6', '870ff45afda4cadb2dbfeebcb8950385.mp4', 'd8ddaf5d2a761ef9ffad8c98c4849b4b.jpg', '870ff45afda4cadb2dbfeebcb8950385.zip', 1, '2020-12-04 07:01:01', '0000-00-00 00:00:00'),
(457, 'bekhayali particle', '6', 'cc09bdd8eaa3f03ab75e57af7ff869b9.mp4', '7cc5b6b2ffbccf5c8b5a07ed0ec371f2.jpg', 'cc09bdd8eaa3f03ab75e57af7ff869b9.zip', 1, '2020-12-04 07:01:05', '0000-00-00 00:00:00'),
(458, 'pachhtaoge particle', '6', '4e7a901f2c6b89fc3f49b0f40fe01f3d.mp4', '00a7e69a8474c548ad1f571da36f0a39.jpg', '4e7a901f2c6b89fc3f49b0f40fe01f3d.zip', 1, '2020-12-04 07:01:10', '0000-00-00 00:00:00'),
(459, 'mera intkam dekhegi', '6', '988328cafcefe94d4d438efd97b6ce54.mp4', 'aac5cc0c40c07cd2ed4a3d408989b229.jpg', '988328cafcefe94d4d438efd97b6ce54.zip', 1, '2020-12-04 07:01:13', '0000-00-00 00:00:00'),
(461, 'Sakhiya', '6', '1ffcc2ae03a1c781f8b41b92978a6431.mp4', '1df7656f645383cd5703b3c5d1b769e7.jpg', 'd83b29475639b45d2bba4bcb3896f646.zip', 1, '2020-12-05 11:45:45', '0000-00-00 00:00:00'),
(462, 'Kalank', '6', 'a5791df608f77dc0c156a3ff2c0432b8.mp4', '75593e41e54795f9892cf6d7b96a9926.jpg', '123475ca77efd2272fa504a19944cf2a.zip', 1, '2020-12-05 11:51:23', '0000-00-00 00:00:00'),
(463, 'Roses', '6', '5157edf36c5ce5ebf099c39c17933c9e.mp4', '363201dc64fd6762df19013154ff05ef.jpg', '667942ae5bf65ff7b8f1e4c660520112.zip', 1, '2020-12-05 11:55:07', '0000-00-00 00:00:00'),
(464, 'Husnn Hai Suhaana', '6,23', 'a9f70a695f74ee490bc0a2e83f164c91.mp4', 'c125d4a7c4880ced3c0d04780d28f6c8.jpg', '65282f477129426b9ffe294b96ad8d18.zip', 1, '2020-12-19 06:11:03', '2020-12-19 11:45:22'),
(465, 'Radha ne shyam', '17,18,20,23', 'f22aaa6e2cbd74434b2beaf614562005.mp4', '051a8c52ca8b03a9d6ede58491ad397d.jpg', 'bbbbfc90f97159c7b6b3b6fc263df215.zip', 1, '2020-12-21 12:30:50', '0000-00-00 00:00:00'),
(466, 'New Year Special', '5', '3fbac9d60f6300b64506ab5acaeb6367.mp4', '0a556285ab05cdfc163fa0324dc3bf1c.jpg', 'cbd0d5b3338f233ae11d52ff0b0da349.zip', 1, '2020-12-28 15:19:13', '0000-00-00 00:00:00'),
(467, 'New year party', '5', '20f97c29051aec406f4809374f8908dd.mp4', '80be3eb86b3e55402ee0f879a9321a3e.jpg', 'c2c5e261a1e0931b7600ff528182c3d2.zip', 1, '2020-12-28 15:27:10', '0000-00-00 00:00:00'),
(468, 'Happy New Year', '5', '8a5b7641f23730fd2e018a292e5d0ec4.mp4', 'edad0f10314dadd24f1a2c52bb7c36bb.jpg', '7a4a3253f3b2f497129586a1a51194c2.zip', 1, '2020-12-28 15:28:13', '0000-00-00 00:00:00'),
(469, 'Happy New Year', '5', '94b2e3c2274f5d905a1cd774fd198034.mp4', '65b56768bf139da00e4cadfe7e00d644.jpg', '733ce24168a6f79520a464ffaf9248e8.zip', 1, '2020-12-28 15:29:58', '0000-00-00 00:00:00'),
(470, 'HappyNew Year Hindi', '5', 'c1d40791327362a11988186a6eeef071.mp4', '61fb36199a12f9e4fd319174b616befc.jpg', 'b8cd13cecbee84a1c46812d538339c74.zip', 1, '2020-12-28 15:31:51', '0000-00-00 00:00:00'),
(471, 'New Year', '5', 'd142e66e39e89d4134d5806cc68c6bd4.mp4', 'c7a3361af17f6182c3466549fcbb776d.jpg', '2ab2d23e59f8a6a753a76e167577890a.zip', 1, '2020-12-28 15:33:26', '0000-00-00 00:00:00'),
(472, 'Countdown 2021', '5', '724fe0d87ba278f8d2e7b8ff44ac48f4.mp4', '631db73f8f1969dc8b2f849debd9852e.jpg', '85e4dc25c9f669cd55c60d947731674b.zip', 1, '2020-12-28 15:35:37', '0000-00-00 00:00:00'),
(473, 'Welcome 2021', '5', '2b4858ffd065b6bbd43588568f836eb1.mp4', 'aff1e49110c48762596de2db6b75a82f.jpg', 'ef4b63db0827145a9560f4aa398df9e2.zip', 1, '2020-12-28 15:36:51', '0000-00-00 00:00:00'),
(474, 'Mara Malak Na Mena Rani', '1,6', '757d82fc1f85b507c6040b478f8dba88.mp4', 'a8a1a0cac4fefdb8338cabd66ae5ae9f.jpg', 'b4bc24b5c3621150f7b83bf9449ba227.zip', 1, '2021-01-19 09:42:03', '0000-00-00 00:00:00'),
(475, 'Tu Janeman', '1,10', '747114eeea89b3f57df6d41637c162b2.mp4', '2e7eca2f0f09d3b96b6b3cbfad9f7e18.jpg', '2f0920b05f06f572d429ec2a052d16be.zip', 1, '2021-01-19 09:48:04', '0000-00-00 00:00:00'),
(476, 'Kyun', '1,6', 'ab768f8693153035d466b3448a9d4f1a.mp4', 'bf450b3967b8a7d24fea81f1aea59291.jpg', 'fd2f3249dd6db0cedf015ce847953ab3.zip', 1, '2021-01-19 09:48:55', '0000-00-00 00:00:00'),
(478, 'Chocolate Day', '1,2,8,9,10', '971a8658e624e991a46d65233789277a.mp4', 'f5c9db69ea127b096704be7f58f67e5c.png', 'db8c6049fdfa84c5d9cc4e70e7ab7145.zip', 1, '2021-03-12 11:18:51', '0000-00-00 00:00:00'),
(479, 'MAHENDI VALA HATH', '1,2,6,10,14,21', '45e3cec29b35a440e177480a19206a07.mp4', '4e111f175e8f40f85d01fa01f4799e8e.png', '5249b4499179f9a586bd96a8f8a599f6.zip', 1, '2021-03-12 11:41:25', '2021-03-12 17:14:43'),
(480, 'KHAYAL RAKHIYA KAR', '1,2,6,10,14,21', '5e1887d7bc6bbb840b1fbf963c24b50d.mp4', 'f8cd94822a7ab656c9acc38943312ec7.png', 'c05d63f76e6759634e2026640fc6f169.zip', 1, '2021-03-12 11:44:14', '0000-00-00 00:00:00'),
(481, 'GHALAT FEHMI', '1,2,6,14,21', '03087a1f3f82690fb75322f6e4ae5133.mp4', '6ee4bdaba908a03a2e280636aefa676f.png', 'dc236708b37c177cec776957c96d0c3a.zip', 1, '2021-03-12 11:46:58', '0000-00-00 00:00:00'),
(482, 'Lut Gaye (Ankh Uthi)', '1,2,6,20', '187a64185f4a35fb9ea1631461b1a98b.mp4', '3d69cb06fd52364e7138236437c7359d.png', 'f0d6f59949124eda506f93336448d4cd.zip', 1, '2021-03-12 11:50:43', '0000-00-00 00:00:00'),
(483, 'Shore Machega (YO YO)', '1,2,23', '8ad3402f735651e118e6ab55d4a1a542.mp4', 'b8fa131f964cbd63b3088d1067581111.png', 'faba964c3efd38ea3edf3c8c69829d91.zip', 1, '2021-03-12 11:52:47', '0000-00-00 00:00:00'),
(484, 'Jannat', '1,2,20,23', '81c45a89098e58c4f2a54b13ab85efc9.mp4', '644c614f8c1e11b6aa04d5dfa4ef5dbd.png', '30573b33cab76e2186508b6dd4a89378.zip', 1, '2021-03-12 11:54:20', '0000-00-00 00:00:00'),
(485, 'Tere Bina Jeena Pure Black', '1,2,20,23', '4a4d777a3cd49a99c18da2c0b6ef677f.mp4', 'cb052622483a7911ee3db73f5e18c99a.png', 'ac6e1a786b4d6512e50e4be09bb878a3.zip', 1, '2021-03-12 11:55:56', '0000-00-00 00:00:00'),
(486, 'Pal', '1,2,20,23', '565df379113a15178c3fdadeb9c6bc7a.mp4', 'e17149c982365d1fed2aab467a9d7731.png', 'e45f2f32d1d437c70d72b1650842497d.zip', 1, '2021-03-12 11:57:35', '0000-00-00 00:00:00'),
(487, 'Butterfly', '1,3,21', '424146e53fc9e0f99a8ae0a423bf923c.mp4', '87e96bcbe8465e5134534d0775fd190b.png', '3723430d5579fd06b2104386aa6d31a3.zip', 1, '2021-03-12 11:58:53', '0000-00-00 00:00:00'),
(488, 'Agar Tum Saath HO', '1,2,20', '127498c2fb59925a3c6630d575609a35.mp4', '2c4736777421e5e0c3f7058b1927a698.jpg', '1c0fe90b1a1840c9737d0d8a359cf009.zip', 1, '2021-03-12 12:01:11', '0000-00-00 00:00:00'),
(489, 'Pirate of Carabian', '1,2,20', 'bcdc3cda9486544baf5824c8e383891e.mp4', 'd34682258a9ea1445e72c726a4e1cf7e.png', 'bd26c59f3254e0dd1630bc733a5fda06.zip', 1, '2021-03-12 12:03:30', '0000-00-00 00:00:00'),
(490, 'Mirchi lagi toh', '1,2,20', 'b62217f455a3a589c50cc252a05826d1.mp4', 'a57b82ed84419a8cdcc4c97b749a65d0.png', 'fa4894343ba0921631becf2a7b880a82.zip', 1, '2021-03-12 12:05:27', '0000-00-00 00:00:00'),
(491, 'Ffeel like shahrukh khan', '1,2,20', 'a18c73be199570a57025f6c26dfe491c.mp4', '1a6c96a61a548e48909d21961b968d36.png', '57d755931a652fa68320912aca9863f8.zip', 1, '2021-03-12 12:06:58', '0000-00-00 00:00:00'),
(492, 'Paris', '1,2,20', '35fd6c7d56c410c261cd2f5b2443a629.mp4', '66ad15783645111d04ba359191a19d90.png', '63bae371ad9aff2be53ebb002abfc0cd.zip', 1, '2021-03-12 12:08:49', '0000-00-00 00:00:00'),
(493, 'Galti main kara tu manave', '1,2,21', '7d35f90970348e5b1c6e06f4048fcf17.mp4', '83214772cdbaa2dee1fca4a889b86293.png', 'a7050b33e8873ef6b90b092447faef0a.zip', 1, '2021-03-12 12:12:03', '0000-00-00 00:00:00'),
(494, 'Llagdi lahore di', '1,2,21', '3ea17d4b96eec4ae04e7227a3e92d254.mp4', 'd2dd83ea3003393a6b27f7bd91f6e38c.png', '25346be54766df3ab9eab8e3794625ab.zip', 1, '2021-03-12 12:13:15', '0000-00-00 00:00:00'),
(495, 'Temporary pyaar', '1,2,21', 'd6cd95ee5f7ec0d6eef94e3c50456bd4.mp4', 'e80cfa4f83fc89c716a13afbfca95244.png', '989e4a2be1d7846b8c0329ba6ea3d1d9.zip', 1, '2021-03-12 12:14:19', '0000-00-00 00:00:00'),
(496, 'Eshare teri karti nigah', '1,2,23', 'c909dd3b2137073c62c9a1c4c286290c.mp4', 'dd81204620c58f3a1d56ea005570bab5.png', 'b7a6289e1c5af72ef5792dec7e9f3ff4.zip', 1, '2021-03-12 12:16:49', '0000-00-00 00:00:00'),
(497, 'Hai Rama', '2,6', '2b931de480329788e9159af1902b18d4.mp4', '2df3be3ac3e4b95b08fbb6101ac1a470.jpg', '9e594c0f6df94b79cd6b31e1eab6d6f6.zip', 1, '2021-05-20 07:06:04', '0000-00-00 00:00:00'),
(498, 'Little Do You Know', '6,23', '9e4027a0debc1c79acfea0d313b20f02.mp4', '0646211c617721e20c87f64d027ad206.jpg', '6592d6027edfb060ba7774199f714a14.zip', 1, '2021-05-20 07:08:37', '0000-00-00 00:00:00'),
(500, 'RunWay', '6,20,23', '0b1c5356404aabfb3608eb7b35428182.mp4', '7301cabd982d96753a001d2437774761.jpg', '93dab6080e16c5935f26c0e7404c3592.zip', 1, '2021-05-20 07:13:17', '0000-00-00 00:00:00'),
(501, 'Memories Photos', '6,10', '0df98e74a4fd5f08ad21e6ddb5904595.mp4', '5b73cac510d88011f3a357cbe2290511.jpg', '15f9be029464567841997930bf2dbba9.zip', 1, '2021-05-20 07:16:17', '0000-00-00 00:00:00'),
(502, 'Happy Birthday', '1,8', 'b02d3e0c432798285d12899a4c8fec5e.mp4', '800c52074429e3b31e2859ae5fa2797b.jpg', 'a68736ea769c15a521aa17c4739b8177.zip', 1, '2021-05-20 07:17:42', '0000-00-00 00:00:00'),
(503, 'Dil Meri Na Sune', '1,6', '069bd1cb95726c822488d48c7a8fcd5f.mp4', '18557562448dcbf1a20922bd46b5382c.jpeg', '487d03fd9c96dfdf9ff5af3ddc39aa87.zip', 1, '2021-05-20 07:20:50', '0000-00-00 00:00:00'),
(504, 'Beat Effect ', '1,23', 'f8d1e6ddfaee6d5f4d1a0fbddb769765.mp4', '842254817eae4cc7308a9d4afb2d961f.jpg', '2a45713304337972ef2fd42c7219ecf5.zip', 1, '2021-05-20 07:25:36', '0000-00-00 00:00:00'),
(505, 'MERI AASHIQUI', '1,2,6,24', '3a3503633ab560cec2cc4bf305c691ff.mp4', '0236211908eb27a06da9561f7ab9b286.jpg', '35131413343d0495672779b357f3e152.zip', 1, '2021-07-24 09:27:41', '0000-00-00 00:00:00'),
(507, 'Broken', '1,2,6,20,23', 'b3beb34fad534d9fbe24c85fc6c047fd.mp4', '9dcbbc4dee0fa66321997141e2cbe827.png', '015ba79492394ecbd29a05fc919bd3ad.zip', 1, '2021-07-24 09:57:43', '0000-00-00 00:00:00'),
(508, 'BAARISH KI JAAYE', '1,2,20,21,24', 'dc51ad334c1bae707a8288ffcf2626bb.mp4', '1f46ac6a28e26cd1be92b39f94e86436.png', '40bd75f126520dadc8753ac5f802e8b2.zip', 1, '2021-07-24 10:16:55', '0000-00-00 00:00:00'),
(509, 'TUM HI HO', '1,2,20,23', '08fed94ac0bd529596f927c289c8ec32.mp4', 'ae83d448fe387e056f1e55a9fc7f2c31.png', '3ccf1361fcdc1c97af8c68f5192b89d0.zip', 1, '2021-07-24 10:19:28', '0000-00-00 00:00:00'),
(510, 'Do you know', '1,2,23', 'ae1dc4549ad6d9b637807eb07ec1e594.mp4', 'e55dd71738276728d35ffcbe5b5998a2.jpg', 'db36a4f6e0116ab8731181eeecfca213.zip', 1, '2021-09-01 07:00:43', '2021-09-01 12:31:56'),
(511, 'Wipe Seconds', '1,2,23', 'ae8de12461dfeb847bceffc12275f991.mp4', '58a3c67262d98ee71f9d2142d0bec1b3.jpg', '47223adb7782c3c5a2dc006cf55b1a62.zip', 1, '2021-09-01 07:11:02', '0000-00-00 00:00:00'),
(515, 'Moti Veraana Navratri', '1,2,18', '47d013843151afc42113685f6bfc8ad4.mp4', '80a6aee5566b5d045997e63826127bdc.jpg', '6059b7e663a61aaa67538f29ce5b0fbc.zip', 1, '2021-10-09 03:37:05', '0000-00-00 00:00:00'),
(516, 'Ramva aavo madi ramva aave', '1,2,18', '4b650a68f1ac0c8fbb242b8b242f71a9.mp4', '70c736b1dd4c07a97b58df043981d8c1.jpg', '673eacb767a9c01f42a308e2f775c23f.zip', 1, '2021-10-09 03:50:06', '0000-00-00 00:00:00'),
(517, 'Maniyaro', '1,2,18', 'd1095b016a7e4fc471d2f37fbad82c3b.mp4', '5c961fa1596b4aed1279d6943019ed2e.png', '658a20334385710de46eea0c34b19131.zip', 1, '2021-10-09 03:56:59', '0000-00-00 00:00:00');
INSERT INTO `tbl_video` (`vd_id`, `vd_title`, `vd_category`, `vd_ourl`, `vd_image`, `vd_zip`, `vd_visible`, `created_date`, `updated_date`) VALUES
(518, 'Janmashtami', '1,2,17', '63456deebf45570077f55e999d15bede.mp4', 'a5640b326aa99e76a8aa5c084d57aae8.png', '9c5adaa20e53183985eeac114d68070b.zip', 1, '2021-10-09 04:01:13', '0000-00-00 00:00:00'),
(519, 'Radhe Krishna', '1,2,17,18', 'c557066b7e0eb34eac27272d4462747e.mp4', '0eb17ba15434e42198bc227635a13d58.jpg', '29ae49d16b63d890634f35d1b4e9bb90.zip', 1, '2021-10-11 09:44:00', '0000-00-00 00:00:00'),
(520, 'Hanuman Chalisa', '1,2,20', '5f29b6d56e08db7fc7535f85849b05d5.mp4', '76464aa681611e320a4d3f7a4d27611c.png', 'd37554d9d830e5d367e7ef0a07ded7a8.zip', 1, '2021-10-12 12:03:57', '0000-00-00 00:00:00'),
(523, 'Teri Meri Gallan', '1,2,20', '5b5a739203aeb8a38c274189375c9f95.mp4', '3ec71b2fbd724a92834b551a6446dda4.jpeg', '24302a5e135212041b0fc1a6003e31b2.zip', 1, '2021-10-21 06:53:23', '0000-00-00 00:00:00'),
(527, 'Ranjha', '1,2,21,23', '9411b466deb14280bdb91c8eb98bc847.mp4', 'e66eac2ba43136a217cc064bcadb93ca.jpg', 'e7cae146495244225c68bfdb83d2ff69.zip', 1, '2021-10-22 05:11:51', '0000-00-00 00:00:00'),
(530, 'Kabhi Tumhe Yaad Meri Aaye', '1,2,21', '1f1ed8b89a15859132f5f99dfa2b4ed8.mp4', 'eed443b1580197f453d6cc5f3f6c4756.png', 'ccf080b7318bf10f6bef3db31752ae25.zip', 1, '2021-10-22 07:02:23', '0000-00-00 00:00:00'),
(531, 'Broken', '1,2,6,21', '5ae2daf04f43d48cf6f5988ccf2cf0cb.mp4', '4f530a5dad7d9dbfb8f0d43bd8deef6a.png', '47f556e2a445f85f55dafe7ada3103dd.zip', 1, '2021-10-23 12:29:41', '0000-00-00 00:00:00'),
(532, 'Fast beat drop', '1,2,20', 'aa1452fa49af77387bcebdcdfa23808f.mp4', '6b9bb0505d25fe941a81f1e4ce8d0d0b.jpg', '7b42e8201d5c42244895d922d1256ef8.zip', 1, '2021-10-25 08:38:30', '0000-00-00 00:00:00'),
(534, 'Chidiya', '1,2,6,21,23', '54f32eb3caf4c2b473f5bf663c3e986b.mp4', '9f7decffb4e3477cc14e86c2647c2724.png', 'ca41006a3551cf184e8ba793148fb46a.zip', 1, '2021-10-29 12:41:35', '0000-00-00 00:00:00'),
(535, 'Mummy aa gayi ka', '1,2,20', 'bfbb222107ac099dc80e08312025c2bf.mp4', '0fe9eb5b69d9c87d0ba837f33122d2fe.png', '4481f9e2674b9c0293a19754614dd494.zip', 1, '2021-10-30 11:17:58', '0000-00-00 00:00:00'),
(536, 'BirthDay Dil ko karar aaya', '1,2,8', '21e2740f6c449e34968182d8cf4380bf.mp4', 'c409838b807504c06e84334cc8e3c290.png', '47c4ba9ba875d5f4c6b0a7311096c32d.zip', 1, '2021-11-01 10:54:57', '0000-00-00 00:00:00'),
(537, 'Moonwalk', '1,2,20', '37ee6f083fe7233bff8ec1cddad6cf66.mp4', '87dd5a53ede2c8c7d133d4dc2d010663.jpg', '53092bca2f01e1398449f8bd632373e1.zip', 1, '2021-11-10 07:06:16', '0000-00-00 00:00:00'),
(538, 'Hum Diwane Ho Gaye Hai', '1,2,20', 'bbc6cc8caf5a38bc4f33c56044ff5dca.mp4', '16aa9428bac9937e794f929e95b93450.png', '0195d72c98fa70b34bb42bee0eb1cea2.zip', 1, '2021-11-13 04:49:50', '0000-00-00 00:00:00'),
(539, 'Tip Tip Barsa Pani', '1,2,20', '5c2c19262785b00039bafdd6b49c1173.mp4', 'f0effc5aa923bbdb2c69f17b2e6593a1.png', '235918d94f62687eb5bac1d1980b1019.zip', 1, '2021-11-13 04:55:44', '0000-00-00 00:00:00'),
(540, 'Sanu Ajkal Shisha Bada', '1,2,6,23', '9e332af6cba47b749d9bc9a459cbe2cd.mp4', 'a37abdeae686a4f1b64e1f30ee93716e.png', '0898e0cb6440fca2b0d9dd259cf062c2.zip', 1, '2021-11-17 06:49:30', '0000-00-00 00:00:00'),
(541, 'DIL KO KARAR AAYA', '1,2,6,21', 'd25e2de50bedbb5956b22e6d99d1e134.mp4', '42c62e6d2492004353b5fbd089e3560e.png', '83424a398e75e9c071db244f73802565.zip', 1, '2021-11-24 08:41:01', '0000-00-00 00:00:00'),
(542, 'chori chori chupke chupke', '1,2,21', 'ebad648bcc4473a134f3308eb96e242e.mp4', '3f79f45b0aefb4e216fe7ac9e2a1fb54.png', 'de6913b8d94216a9d5dbfe7af51e43a1.zip', 1, '2021-11-29 04:00:58', '0000-00-00 00:00:00'),
(543, 'SAIBO LOFI', '1,2,20', '4de772d617cff5e913b2f37315aa1dc0.mp4', '205715a316d030c5a8ea1ca69d2f063a.png', '34bd67d8d73cc020ae84b480634c4029.zip', 1, '2021-12-03 05:21:08', '0000-00-00 00:00:00'),
(544, 'JEENA JEENA', '1,2,6,21', 'e2ce8ae280623e7dbf5e09fa49167ffc.mp4', 'ee7f1c196410d58425f6631f4e5633f4.png', '20bf3ad15221afdc623631bef1a0f0e8.zip', 1, '2021-12-15 06:17:30', '0000-00-00 00:00:00'),
(545, 'Photo Effect', '1,2,23', '9bd3dbade542354bd96a8e8babe44441.mp4', 'e9a4aee15599331fb9eac33ab88a5b4e.jpg', '954c960b31d8718f5b8dff89c59cea09.zip', 1, '2021-12-24 09:02:58', '0000-00-00 00:00:00'),
(546, 'Hit by Your Thoughts', '1,2,21', 'b9d4a15396cf4dbe92e0f92032b76bf0.mp4', 'e24c9b6afad080557002d94aaec80e4c.png', 'ab17e51e7511212fae05216fe4dea513.zip', 1, '2021-12-31 08:42:46', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `android_settings`
--
ALTER TABLE `android_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ios_settings`
--
ALTER TABLE `ios_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_device`
--
ALTER TABLE `tbl_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_push`
--
ALTER TABLE `tbl_push`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request_coin`
--
ALTER TABLE `tbl_request_coin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_video`
--
ALTER TABLE `tbl_user_video`
  ADD PRIMARY KEY (`vd_id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`vd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `android_settings`
--
ALTER TABLE `android_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ios_settings`
--
ALTER TABLE `ios_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tbl_device`
--
ALTER TABLE `tbl_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_push`
--
ALTER TABLE `tbl_push`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_request_coin`
--
ALTER TABLE `tbl_request_coin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user_video`
--
ALTER TABLE `tbl_user_video`
  MODIFY `vd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `vd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
