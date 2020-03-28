-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2020 at 04:39 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minipro`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activityid` int(11) NOT NULL,
  `activityname` varchar(200) NOT NULL,
  `aplace` varchar(100) NOT NULL,
  `adate` date NOT NULL,
  `atime` time NOT NULL,
  `vno` int(11) NOT NULL,
  `hourwork` int(50) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `astatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activityid`, `activityname`, `aplace`, `adate`, `atime`, `vno`, `hourwork`, `description`, `astatus`) VALUES
(1, 'cleaning', 'kattapana', '2020-02-21', '08:00:00', 50, 20, 'dfgh', 1),
(3, 'college cleaning', 'pala', '2020-02-28', '14:00:00', 25, 20, 'cvbn', 1),
(4, 'sevana varam', 'pala', '2020-02-18', '13:00:00', 20, 10, 'xsdgh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addpv`
--

CREATE TABLE `addpv` (
  `pid` int(11) NOT NULL,
  `poname` varchar(100) NOT NULL,
  `deptr` varchar(100) NOT NULL,
  `fperiod` date NOT NULL,
  `lperiod` date NOT NULL,
  `phone` bigint(11) NOT NULL,
  `pic` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addpv`
--

INSERT INTO `addpv` (`pid`, `poname`, `deptr`, `fperiod`, `lperiod`, `phone`, `pic`) VALUES
(1, 'grace', 'mca', '2020-03-27', '2020-03-28', 7410852963, 'photo/B612_20191120_120414_693.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `addvs`
--

CREATE TABLE `addvs` (
  `vid` int(11) NOT NULL,
  `vsname` varchar(100) NOT NULL,
  `vdeptr` varchar(100) NOT NULL,
  `vfperiod` date NOT NULL,
  `vlperiod` date NOT NULL,
  `vphone` bigint(20) NOT NULL,
  `vpic` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addvs`
--

INSERT INTO `addvs` (`vid`, `vsname`, `vdeptr`, `vfperiod`, `vlperiod`, `vphone`, `vpic`) VALUES
(1, 'xdfghj', 'xdfgh', '2020-03-18', '2020-03-20', 8520741963, 'photo/B612_20191120_120320_192.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `appid` int(11) NOT NULL,
  `applicationname` varchar(500) NOT NULL,
  `appplace` varchar(100) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `appstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`appid`, `applicationname`, `appplace`, `appdate`, `apptime`, `appstatus`) VALUES
(1, 'one day camp', 'kattapana', '2020-02-22', '08:00:00', 1),
(2, 'seven day camp', 'thookkupalam', '2020-02-15', '08:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applyactivity`
--

CREATE TABLE `applyactivity` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `applystatus` int(11) NOT NULL,
  `apprstatus` int(11) NOT NULL,
  `atte` int(11) NOT NULL,
  `atstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applyactivity`
--

INSERT INTO `applyactivity` (`id`, `userid`, `activityid`, `applystatus`, `apprstatus`, `atte`, `atstatus`) VALUES
(1, 4, 1, 1, 1, 20, 1),
(2, 5, 3, 1, 0, 80, 1),
(3, 5, 4, 1, 0, 80, 1),
(4, 6, 4, 1, 1, 40, 1),
(5, 6, 3, 1, 1, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applyapp`
--

CREATE TABLE `applyapp` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `appid` int(11) NOT NULL,
  `aplistatus` int(11) NOT NULL,
  `apprvstatus` int(11) NOT NULL,
  `ts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applyapp`
--

INSERT INTO `applyapp` (`id`, `userid`, `appid`, `aplistatus`, `apprvstatus`, `ts`) VALUES
(1, 4, 1, 1, 0, 0),
(2, 4, 2, 1, 1, 1),
(3, 5, 2, 1, 1, 1),
(4, 6, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `awardid` int(11) NOT NULL,
  `awardname` varchar(100) NOT NULL,
  `des` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`awardid`, `awardname`, `des`) VALUES
(1, 'Best NSS unit 2019', 'asdfgh'),
(2, 'best nss unit', 'asdcfvbn'),
(6, 'best nss 2021', 'asdfgh'),
(7, 'best NSS unit 2010', 'asdfgh'),
(8, 'best unit', 'zasdgyj'),
(9, 'best program officer', 'sderop'),
(10, 'asdfgh', 'xdvgnjmk');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `cid` int(11) NOT NULL,
  `cdate` date NOT NULL,
  `gname` varchar(100) NOT NULL,
  `cactivity` varchar(100) NOT NULL,
  `cstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`cid`, `cdate`, `gname`, `cactivity`, `cstatus`) VALUES
(1, '2020-03-12', 'g1', 'kitche', 0),
(10, '2020-03-19', 'g3', 'kitchenduty', 0),
(11, '2020-03-19', 'g6', 'equipment', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eregister`
--

CREATE TABLE `eregister` (
  `eid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `adno` int(20) NOT NULL,
  `class` varchar(100) NOT NULL,
  `sus` varchar(10) NOT NULL,
  `sup` varchar(10) NOT NULL,
  `att` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sadno` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  `vstatus` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eregister`
--

INSERT INTO `eregister` (`eid`, `userid`, `adno`, `class`, `sus`, `sup`, `att`, `sname`, `sadno`, `estatus`, `vstatus`, `vote`) VALUES
(1, 4, 11069, 'sxdfgh', 'yes', 'no', 125, 'sdfghj', 1254, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exps`
--

CREATE TABLE `exps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `adno` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faqid` int(11) NOT NULL,
  `fquestions` varchar(200) NOT NULL,
  `fanswers` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqid`, `fquestions`, `fanswers`) VALUES
(1, 'What is done in NSS?', 'The programme aims to instill the idea of social welfare in students, and to provide service to society without bias. NSS volunteers work to ensure that everyone who is needy gets help to enhance their standard of living and lead a life of dignity.'),
(2, 'what is nss moto?', '\"NOT ME BUT YOU\"'),
(3, 'what is nss unit?', 'hgfdszbv');

-- --------------------------------------------------------

--
-- Table structure for table `groupp`
--

CREATE TABLE `groupp` (
  `groupname` varchar(11) NOT NULL,
  `gnum` varchar(1000) NOT NULL,
  `leader` varchar(100) NOT NULL,
  `gstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupp`
--

INSERT INTO `groupp` (`groupname`, `gnum`, `leader`, `gstatus`) VALUES
('g4', 'fergy', 'fergy', 1),
('g6', 'minnu, fergy', 'minnu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `gid` int(11) NOT NULL,
  `activityname` varchar(100) NOT NULL,
  `image` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`gid`, `activityname`, `image`) VALUES
(1, 'sevendaycamp', 'photo/IMG_20200105_130313_344.jpg'),
(2, 'sevendaycamp', 'photo/IMG_20200119_115312_333.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `usertype` int(1) NOT NULL,
  `approvedstatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`, `emailid`, `usertype`, `approvedstatus`) VALUES
(1, 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'admin@gmail.com', 0, 0),
(2, '7a72dded4ac14cb0bdd37c59c0afada9', 'po@gmail.com', 1, 0),
(3, '0dfd332ef3fdcd5d2c409d76633d62f7', 'vs@gmail.com', 2, 0),
(4, 'e4d1b9371b671c84cd8b2ba7b696a08d', 'f@gmail.com', 3, 1),
(5, 'e4d1b9371b671c84cd8b2ba7b696a08d', 'm@gmail.com', 3, 1),
(6, 'e4d1b9371b671c84cd8b2ba7b696a08d', 'me@gmail.com', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_17_090045_create_students_table', 1),
(5, '2020_01_19_035731_create_admins_table', 1),
(8, '2020_02_04_103226_create_registers_table', 2),
(9, '2020_02_04_151943_create_exps_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `noticeid` int(11) NOT NULL,
  `matter` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noticeid`, `matter`, `date`, `time`) VALUES
(1, 'urget meetig', '2019-11-08', '12:05:00'),
(2, 'asdfg', '2019-11-22', '13:00:00'),
(3, 'meeting', '2020-02-14', '13:00:00'),
(4, 'meeting', '2020-02-12', '08:00:00'),
(5, 'meeting', '2020-02-13', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(11) NOT NULL,
  `adno` int(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(11) NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloodgroup` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `img` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcard` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verifystatus` int(11) NOT NULL,
  `saprstatus` int(11) NOT NULL,
  `actiapprove` int(11) NOT NULL,
  `vostatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `adno`, `userid`, `name`, `class`, `year`, `address`, `experience`, `phone`, `gender`, `bloodgroup`, `dob`, `img`, `idcard`, `verifystatus`, `saprstatus`, `actiapprove`, `vostatus`) VALUES
(3, 11065, 6, 'meenu', 'btech', 2, 'puthenchirayil', 'yes', 7356520925, 'female', 'o-ve', '1998-03-19', 'photo/04238_HD.jpg', 'photo/1518274450667.jpg', 1, 1, 1, 0),
(2, 11068, 5, 'minnu', 'zsxdfg', 2, 'zxcv', 'yes', 8410852369, 'Male', 'a-ve', '1998-03-16', 'photo/IMG_20200110_194332_186.jpg', 'photo/IMG_20200108_134937_830.jpg', 1, 1, 1, 1),
(1, 11069, 4, 'fergy', 'cs', 2, 'asdfgh', 'yes', 8108529630, 'female', 'o+ve', '1998-03-04', 'photo/IMG_20200102_095345_198.jpg', 'photo/IMG_20200107_191022_439.jpg', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sacti`
--

CREATE TABLE `sacti` (
  `seid` int(11) NOT NULL,
  `sactiname` varchar(50) NOT NULL,
  `showr` int(11) NOT NULL,
  `sstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sacti`
--

INSERT INTO `sacti` (`seid`, `sactiname`, `showr`, `sstatus`) VALUES
(1, 'kitche', 10, 1),
(2, 'kitchenduty', 10, 1),
(3, 'equipment', 10, 0),
(4, 'tvm', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `sid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `suggestion` varchar(2000) NOT NULL,
  `sstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`sid`, `userid`, `suggestion`, `sstatus`) VALUES
(2, 3, 'dfghjk', 1),
(8, 2, 'sdfghjkl ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activityid`);

--
-- Indexes for table `addpv`
--
ALTER TABLE `addpv`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `addvs`
--
ALTER TABLE `addvs`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `applyactivity`
--
ALTER TABLE `applyactivity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `activityid` (`activityid`);

--
-- Indexes for table `applyapp`
--
ALTER TABLE `applyapp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `appid` (`appid`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`awardid`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `gname` (`gname`),
  ADD UNIQUE KEY `cactivity` (`cactivity`);

--
-- Indexes for table `eregister`
--
ALTER TABLE `eregister`
  ADD PRIMARY KEY (`eid`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `adno` (`adno`);

--
-- Indexes for table `exps`
--
ALTER TABLE `exps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `groupp`
--
ALTER TABLE `groupp`
  ADD PRIMARY KEY (`groupname`),
  ADD UNIQUE KEY `leader` (`leader`),
  ADD UNIQUE KEY `gnum` (`gnum`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`noticeid`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`adno`),
  ADD KEY `userid` (`userid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sacti`
--
ALTER TABLE `sacti`
  ADD PRIMARY KEY (`seid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addpv`
--
ALTER TABLE `addpv`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `addvs`
--
ALTER TABLE `addvs`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `applyactivity`
--
ALTER TABLE `applyactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `applyapp`
--
ALTER TABLE `applyapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `awardid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `eregister`
--
ALTER TABLE `eregister`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exps`
--
ALTER TABLE `exps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `noticeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sacti`
--
ALTER TABLE `sacti`
  MODIFY `seid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applyactivity`
--
ALTER TABLE `applyactivity`
  ADD CONSTRAINT `applyactivity_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`),
  ADD CONSTRAINT `applyactivity_ibfk_2` FOREIGN KEY (`activityid`) REFERENCES `activity` (`activityid`);

--
-- Constraints for table `applyapp`
--
ALTER TABLE `applyapp`
  ADD CONSTRAINT `applyapp_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`),
  ADD CONSTRAINT `applyapp_ibfk_2` FOREIGN KEY (`appid`) REFERENCES `application` (`appid`);

--
-- Constraints for table `eregister`
--
ALTER TABLE `eregister`
  ADD CONSTRAINT `eregister_ibfk_1` FOREIGN KEY (`adno`) REFERENCES `registers` (`adno`);

--
-- Constraints for table `registers`
--
ALTER TABLE `registers`
  ADD CONSTRAINT `registers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`);

--
-- Constraints for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD CONSTRAINT `suggestion_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
