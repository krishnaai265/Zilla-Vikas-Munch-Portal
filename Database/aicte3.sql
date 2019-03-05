-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2018 at 07:57 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aicte3`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_guests`
--

CREATE TABLE `active_guests` (
  `ip` varchar(15) NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_users`
--

CREATE TABLE `active_users` (
  `username` varchar(30) NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_users`
--

INSERT INTO `active_users` (`username`, `timestamp`) VALUES
('Admin', 1522238762);

-- --------------------------------------------------------

--
-- Table structure for table `banlist`
--

CREATE TABLE `banlist` (
  `ban_id` mediumint(8) UNSIGNED NOT NULL,
  `ban_username` varchar(255) NOT NULL,
  `ban_userid` mediumint(8) UNSIGNED NOT NULL,
  `ban_ip` varchar(40) NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Id` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `message` text,
  `time` text,
  `ip` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`Id`, `senderId`, `name`, `message`, `time`, `ip`) VALUES
(38, 0, 'INFO', 'Chat log has been pruned', '1522062996', '127.0.0.1'),
(39, 0, 'INFO', '[i][b]helloworld[/b]  has left the conversation.[/i]', '1522063007', '127.0.0.1'),
(40, 0, 'INFO', '[i][b]helloworld[/b]  has joined the conversation.[/i]', '1522063015', '127.0.0.1'),
(41, 2, 'vaibhav', 'lklk', '1522063020', '127.0.0.1'),
(42, 1, 'helloworld', 'dslkfjkdsjfskdj', '1522063026', '127.0.0.1'),
(43, 1, 'helloworld', 'sdlk', '1522063030', '127.0.0.1'),
(44, 0, 'INFO', '[i][b]helloworld[/b]  has joined the conversation.[/i]', '1522086980', '127.0.0.1'),
(45, 1, 'helloworld', 'awqe', '1522086983', '127.0.0.1'),
(46, 0, 'INFO', '[i][b]vaibhav[/b]  has joined the conversation.[/i]', '1522087005', '127.0.0.1'),
(47, 2, 'vaibhav', 'ljhkj', '1522087008', '127.0.0.1'),
(48, 1, 'helloworld', 'kjhjh', '1522087013', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `config_name` varchar(20) NOT NULL,
  `config_value` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`config_name`, `config_value`) VALUES
('ACCOUNT_ACTIVATION', '1'),
('ALL_LOWERCASE', '0'),
('COOKIE_EXPIRE', '100'),
('COOKIE_PATH', '/'),
('DATE_FORMAT', 'M j, Y, g:i a'),
('EMAIL_FROM_NAME', 'PHP Login Script'),
('EMAIL_FROM_ADDR', 'aicte3@gmail.com'),
('EMAIL_WELCOME', '1'),
('ENABLE_CAPTCHA', '0'),
('GUEST_TIMEOUT', '5'),
('HASH', 'sha256'),
('home_page', 'index.php'),
('login_page', '../example/index.php'),
('max_user_chars', '36'),
('min_user_chars', '5'),
('max_pass_chars', '120'),
('min_pass_chars', '8'),
('NO_ADMIN_REDIRECT', '1'),
('record_online_date', '1522163248'),
('record_online_users', '3'),
('SITE_DESC', 'PHP Login Script'),
('SITE_NAME', 'PHP Login Script'),
('TRACK_VISITORS', '1'),
('TURN_ON_INDIVIDUAL', '0'),
('USER_HOME_PATH', '/'),
('HOME_SETBYADMIN', '1'),
('USERNAME_REGEX', 'letter_num_spaces'),
('USER_TIMEOUT', '10'),
('Version', '2.4'),
('WEB_ROOT', 'http://localhost/adminPanal/xavier/xavier_v24/admin/');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_level` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `group_level`) VALUES
(1, 'Administrators', 1),
(2, 'Hackathon', 2),
(3, 'asd', 5);

-- --------------------------------------------------------

--
-- Table structure for table `institutedetails`
--

CREATE TABLE `institutedetails` (
  `instId` char(10) NOT NULL,
  `instName` char(40) DEFAULT NULL,
  `aicteId` char(10) DEFAULT NULL,
  `registarName` char(15) DEFAULT NULL,
  `instDist` char(20) DEFAULT NULL,
  `instPlace` char(40) DEFAULT NULL,
  `instState` char(30) DEFAULT NULL,
  `instPhone` int(10) DEFAULT NULL,
  `instEmail` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_table`
--

CREATE TABLE `log_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL,
  `ip` varchar(15) NOT NULL,
  `log_operation` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_table`
--

INSERT INTO `log_table` (`id`, `userid`, `timestamp`, `ip`, `log_operation`) VALUES
(1, 1, 1522154210, '::1', 'LOGIN'),
(2, 1, 1522157516, '::1', 'LOGOFF'),
(3, 1, 1522157524, '::1', 'LOGIN'),
(4, 1, 1522160418, '::1', 'LOGOFF'),
(5, 1, 1522160420, '::1', 'LOGIN'),
(6, 1, 1522161297, '::1', 'LOGOFF'),
(7, 1, 1522161300, '::1', 'LOGIN'),
(8, 1, 1522162159, '::1', 'REGISTERED : krishna'),
(9, 1, 1522162257, '::1', 'REGISTERED : Vaibhav'),
(10, 1, 1522162621, '::1', 'REGISTERED : asdfg'),
(11, 6, 1522162827, '::1', 'LOGIN'),
(12, 1, 1522163196, '::1', 'LOGIN'),
(13, 1, 1522163275, '::1', 'LOGIN'),
(14, 6, 1522163406, '::1', 'LOGIN'),
(15, 6, 1522163426, '::1', 'LOGIN'),
(16, 1, 1522163848, '::1', 'LOGIN'),
(17, 1, 1522167733, '::1', 'LOGOFF'),
(18, 1, 1522167738, '::1', 'LOGIN'),
(19, 1, 1522171778, '::1', 'LOGIN'),
(20, 1, 1522172713, '::1', 'REGISTERED : globalas'),
(21, 1, 1522173095, '::1', 'REGISTERED : globalas'),
(22, 1, 1522173474, '::1', 'REGISTERED : Vishal'),
(23, 1, 1522174053, '::1', 'REGISTERED : Vishala'),
(24, 1, 1522174670, '::1', 'LOGOFF'),
(25, 1, 1522174700, '::1', 'LOGIN'),
(26, 1, 1522174810, '::1', 'REGISTERED : kjhkjh'),
(27, 6, 1522175068, '::1', 'LOGIN'),
(28, 1, 1522210106, '::1', 'LOGIN'),
(29, 1, 1522214403, '::1', 'LOGOFF'),
(30, 1, 1522214408, '::1', 'LOGIN'),
(31, 1, 1522215332, '::1', 'LOGOFF'),
(32, 1, 1522215335, '::1', 'LOGIN'),
(33, 1, 1522217080, '::1', 'LOGOFF'),
(34, 1, 1522217087, '::1', 'LOGIN'),
(35, 1, 1522223603, '::1', 'LOGOFF'),
(36, 1, 1522223605, '::1', 'LOGIN'),
(37, 1, 1522237709, '::1', 'LOGOFF'),
(38, 1, 1522237712, '::1', 'LOGIN');

-- --------------------------------------------------------

--
-- Table structure for table `mystates`
--

CREATE TABLE `mystates` (
  `stateName` char(50) DEFAULT NULL,
  `stateId` char(10) NOT NULL,
  `noOfDristrict` int(4) DEFAULT NULL,
  `progress` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mystates`
--

INSERT INTO `mystates` (`stateName`, `stateId`, `noOfDristrict`, `progress`) VALUES
('Uttar Pradesh', 'stateUP', 75, '1/10/12'),
('Uttra Khand', 'UK', 51, '10/45/90');

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE `pm` (
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`id`, `id2`, `title`, `user1`, `user2`, `message`, `timestamp`, `user1read`, `user2read`) VALUES
(2, 1, ',ljkhkhkjhkjh', 2, 1, 'kjhkjhkjhkjhjk\r\n', 1522062699, 'yes', 'yes'),
(1, 2, 'lmlmlm', 1, 2, 'lmlml\r\n', 1522062717, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `prob_bijnor`
--

CREATE TABLE `prob_bijnor` (
  `problemId` char(10) NOT NULL,
  `problemHead` char(70) DEFAULT NULL,
  `problemSumm` char(100) DEFAULT NULL,
  `problemStatus` char(10) DEFAULT NULL,
  `problemSolvedBy` char(10) DEFAULT NULL,
  `problemDeptId` char(10) NOT NULL,
  `problemCategory` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prob_bijnor`
--

INSERT INTO `prob_bijnor` (`problemId`, `problemHead`, `problemSumm`, `problemStatus`, `problemSolvedBy`, `problemDeptId`, `problemCategory`) VALUES
('1', 'doCode', 'doCode.txt', 'NOACTIVE', 'NONE', '1', 'S'),
('78', 'World', 'world.txt', 'NOACTIVE', 'NONE', '0', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'site_title', 'Chat', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `statedepartments`
--

CREATE TABLE `statedepartments` (
  `deptName` char(20) NOT NULL,
  `deptId` char(10) NOT NULL,
  `deptIco` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statedepartments`
--

INSERT INTO `statedepartments` (`deptName`, `deptId`, `deptIco`) VALUES
('water', '0', 'water'),
('soil', '1', 'soil');

-- --------------------------------------------------------

--
-- Table structure for table `stateup`
--

CREATE TABLE `stateup` (
  `districtName` char(20) DEFAULT NULL,
  `districtID` char(10) NOT NULL,
  `dCName` char(20) DEFAULT NULL,
  `dCMobile` int(11) DEFAULT NULL,
  `dCEmail` char(30) DEFAULT NULL,
  `dCPass` char(15) DEFAULT NULL,
  `dCIsVerified` char(1) DEFAULT NULL,
  `districtProgress` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stateup`
--

INSERT INTO `stateup` (`districtName`, `districtID`, `dCName`, `dCMobile`, `dCEmail`, `dCPass`, `dCIsVerified`, `districtProgress`) VALUES
('bijnor', 'bijnor', 'helloworld', 2147483647, 'helloworl.org.in@gmail.com', 'helloworld', 'Y', '1/5/11'),
('moradabad', 'mb', 'hello', 656565, 'ads@kjh.sd', 'hello', 'N', '1/8/10');

-- --------------------------------------------------------

--
-- Table structure for table `stateupteamdetails`
--

CREATE TABLE `stateupteamdetails` (
  `teamAdminId` char(10) NOT NULL,
  `teamMembersName` char(100) NOT NULL,
  `teamMembersEmail` text NOT NULL,
  `teamProblemId` char(10) NOT NULL,
  `teamName` char(10) NOT NULL,
  `teamWorkingStatus` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stateupteamdetails`
--

INSERT INTO `stateupteamdetails` (`teamAdminId`, `teamMembersName`, `teamMembersEmail`, `teamProblemId`, `teamName`, `teamWorkingStatus`) VALUES
('4545', 'World,hell,WP,Penguin', 'world@gmail.com,hell@gmail.com,WP@gmail.com,penguin@gmail.com', '1', 'helloworld', 'TAKEN');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `uId` char(10) NOT NULL,
  `uName` char(20) DEFAULT NULL,
  `uEmail` char(50) DEFAULT NULL,
  `uPhone` int(10) DEFAULT NULL,
  `instituteId` char(10) DEFAULT NULL,
  `uPass` char(10) DEFAULT NULL,
  `uState` char(15) DEFAULT NULL,
  `uDistrict` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`uId`, `uName`, `uEmail`, `uPhone`, `instituteId`, `uPass`, `uState`, `uDistrict`) VALUES
('123465', 'hello world', 'helloworld@gmail.com', 2147483647, '456123', 'helloworld', 'uttar pradesh', 'moradabad'),
('4545', 'hello', 'jh@kjh.do', 843976318, '87554', 'helloworld', 'uttar pradesh', 'bijnor');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(36) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `usersalt` varchar(8) NOT NULL,
  `userid` varchar(32) DEFAULT NULL,
  `userlevel` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL,
  `previous_visit` int(11) UNSIGNED DEFAULT '0',
  `actkey` varchar(35) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `regdate` int(11) UNSIGNED NOT NULL,
  `lastip` varchar(15) DEFAULT NULL,
  `user_login_attempts` tinyint(4) DEFAULT NULL,
  `user_home_path` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `password`, `usersalt`, `userid`, `userlevel`, `email`, `timestamp`, `previous_visit`, `actkey`, `ip`, `regdate`, `lastip`, `user_login_attempts`, `user_home_path`) VALUES
(1, 'Admin', 'Super', 'Admin', '232c54d8675023d328f26f35bf2ff54c9dddfbb5f641a77e207a68ef1d34d0a3', 'K3Tuq7jm', '91b04654a05c6f669223525c00e8476a', 10, 'aicte3@gmail.com', 1522238762, 1522237709, '9PK71OSMitoKl0zJ', '::1', 1522154173, '::1', 0, NULL),
(2, 'User', 'Krishna', 'Kumar singh', '123', '123', '123', 1, 'ks671523@gmail.com', 12, 1, '12', '12', 12, '1212', 12, '12'),
(4, 'krishna', 'krishna', 'kumar singh', '4caedfa1f6a19fcea93819f0ac940ebb6c4cba15e19d0784029827d2977625c6', 'UpOBOAIy', '0', 3, 'example12@gmail.com', 1522162159, 0, 'hVC68PEoPXBke7uX', '::1', 1522162159, NULL, NULL, NULL),
(5, 'Vaibhav', 'Vaibhav', 'tyagi', 'b0143a7c2d3634eb66b15e4be2d7a319f2bd25ae769536bb4236297fa94bec19', 'ajb5wZYj', '0', 3, 'vai12@gmail.com', 1522162257, 0, 'qNETqZm9E6EEvdFS', '::1', 1522162257, NULL, NULL, NULL),
(6, 'asdfg', 'asdfg', 'asdfg', '7a4357e219d55f66b96bd563efdf9164fd99278294eab7e0fc29921864c48c54', 'ihFHZ3kK', '9e4cb9dda0937300f4f18e192d1e0378', 10, 'asdfgh@gmail.com', 1522175068, 1522175068, 'ejmcAYVrE8o91h2l', '::1', 1522162621, '::1', 0, NULL),
(8, 'globalas', 'Rachit', 'Gahlot', '6a295eb8855115a7adae5ba0d6d490123f3eeb734656e89b85f0856345282e1f', '5RVKNg7p', '0', 3, 'rachit@gmail.com', 1522173095, 0, 'EIs29NWXRH2f0U4J', '::1', 1522173095, NULL, NULL, NULL),
(9, 'Vishal', 'Gupta', 'Hupta', 'ad35290378a504173f8b2cfe42a9e5df6b3e1d91c8c219c9f11969a02b52fc50', '9rKQzr0h', '0', 3, 'vishal@gmail.com', 1522173474, 0, 'gDARN9ZVqYL6SoXK', '::1', 1522173474, NULL, NULL, NULL),
(10, 'Vishala', 'Gupta', 'Hupta', 'afa54baae96a8d5a86e236cc5f0ea9503d541bd6ef30a3c0f7e291628e414e66', '2lEPilNj', '0', 3, 'vishail@gmail.com', 1522174053, 0, '11zQsee14NhuQ6R8', '::1', 1522174053, NULL, NULL, NULL),
(11, 'kjhkjh', 'kjh', 'hghg', '410e4774fb5e1992d5ecfbc2793446e3ef5c6f737d5567aed95b65361434f9f4', 'YSS82Q2l', '0', 3, 'trtr@h.k', 1522174810, 0, 'dJNIzwPtjVYW4W8A', '::1', 1522174810, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 4, 2),
(3, 5, 2),
(4, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_guests`
--
ALTER TABLE `active_guests`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `active_users`
--
ALTER TABLE `active_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `log_table`
--
ALTER TABLE `log_table`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banlist`
--
ALTER TABLE `banlist`
  MODIFY `ban_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `log_table`
--
ALTER TABLE `log_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
