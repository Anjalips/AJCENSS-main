-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 02:48 PM
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
(1, 'cleaning', 'kottayam', '2020-04-22', '09:00:00', 20, 10, 'cleaning at kottayam bus stand', 1);

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
  `pic` varchar(2000) NOT NULL,
  `pstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addpv`
--

INSERT INTO `addpv` (`pid`, `poname`, `deptr`, `fperiod`, `lperiod`, `phone`, `pic`, `pstatus`) VALUES
(1, 'dfghjk', 'dfghj', '2020-04-22', '2020-04-30', 9638524102, 'photo/home.jpg', 0),
(2, 'gefhg ghfuj', 'ftsyuikj', '2020-04-21', '2020-04-29', 9876543219, 'photo/â€ª+974 3094 8316â€¬ 20170606_012504 - Copy - Copy.jpg', 0);

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
  `vpic` varchar(5000) NOT NULL,
  `vsstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addvs`
--

INSERT INTO `addvs` (`vid`, `vsname`, `vdeptr`, `vfperiod`, `vlperiod`, `vphone`, `vpic`, `vsstatus`) VALUES
(1, 'Anjali p s', 'cs', '2020-04-22', '2020-04-25', 7345678910, 'photo/1.jpg', 0);

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
(1, 'sevendaycamp', 'thookupalam', '2020-04-29', '09:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applyactivity`
--

CREATE TABLE `applyactivity` (
  `apid` int(11) NOT NULL,
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

INSERT INTO `applyactivity` (`apid`, `userid`, `activityid`, `applystatus`, `apprstatus`, `atte`, `atstatus`) VALUES
(1, 6, 1, 1, 1, 80, 1),
(2, 5, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `applyapp`
--

CREATE TABLE `applyapp` (
  `applyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `appid` int(11) NOT NULL,
  `aplistatus` int(11) NOT NULL,
  `apprvstatus` int(11) NOT NULL,
  `ts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applyapp`
--

INSERT INTO `applyapp` (`applyid`, `userid`, `appid`, `aplistatus`, `apprvstatus`, `ts`) VALUES
(1, 6, 1, 1, 1, 1);

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
(10, 'asdfgh', 'xdvgnjmk'),
(13, 'hvjhg  jhju', 'vhgj hgujyg');

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
(1, '2020-04-23', 'g1', 'equipementkeeping', 0);

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
(1, 5, 11065, 'dd mca s3', 'no', 'no', 0, 'vishnu', 11069, 1, 1, 2),
(2, 6, 11063, 'mechaical s3', 'no', 'no', 80, 'fergy', 11063, 0, 0, 0);

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
-- Table structure for table `grace`
--

CREATE TABLE `grace` (
  `grid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `urno` varchar(50) NOT NULL,
  `class1` varchar(50) NOT NULL,
  `sub1` varchar(50) NOT NULL,
  `sc` varchar(50) NOT NULL,
  `sub2` varchar(50) NOT NULL,
  `scc` varchar(50) NOT NULL,
  `sub3` varchar(50) NOT NULL,
  `ss` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grace`
--

INSERT INTO `grace` (`grid`, `userid`, `urno`, `class1`, `sub1`, `sc`, `sub2`, `scc`, `sub3`, `ss`) VALUES
(1, 5, 'LAJC17MCA021 ', 'dfghj', 'xcbn', 'SDFGH5', 'xcvbn', 'SDFGH5', 'xdcfghn', 'SDFGH5');

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
('g1', 'Vishnu', 'vishnu', 1);

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
(1, 'cleaning', 'photo/â€ª+974 3094 8316â€¬ 20170606_012504 - Copy - Copy.jpg'),
(2, 'cleaning', 'photo/IMG_20180217_104355.jpg'),
(3, 'cleaning', 'photo/04978_HD - Copy.jpg'),
(4, 'cleaning', 'photo/000393521 - Copy-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `opss` varchar(150) NOT NULL,
  `usertype` int(1) NOT NULL,
  `approvedstatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`, `emailid`, `opss`, `usertype`, `approvedstatus`) VALUES
(1, 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'admin@gmail.com', '', 0, 0),
(2, '7a72dded4ac14cb0bdd37c59c0afada9', 'po@gmail.com', 'Po123', 1, 1),
(4, '0dfd332ef3fdcd5d2c409d76633d62f7', 'vs@gmail.com', 'Vs123', 2, 1),
(5, 'e4d1b9371b671c84cd8b2ba7b696a08d', 'f@gmail.com', 'Qq123456', 3, 1),
(6, '546f546f0ecb9980e208a7d4d59c64db', 'anjalips@mca.ajce.in', 'Qq1234567', 3, 1),
(7, 'e4d1b9371b671c84cd8b2ba7b696a08d', 'anjalips@mca.ajce.in', 'Qq123456', 3, 0),
(12, 'e4d1b9371b671c84cd8b2ba7b696a08d', 'k@gmail.com', 'Qq123456', 3, 1);

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
(1, 'urgent meeting', '2020-04-13', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `paymentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`paymentid`, `userid`, `amt`) VALUES
(1, 12, 1),
(2, 12, 1),
(3, 12, 0),
(4, 12, 0),
(5, 12, 1),
(6, 12, 1),
(7, 12, 1),
(8, 12, 1),
(9, 12, 1),
(10, 12, 1),
(11, 12, 1),
(12, 12, 1);

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
  `urno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `registers` (`id`, `adno`, `userid`, `name`, `class`, `year`, `address`, `experience`, `phone`, `gender`, `bloodgroup`, `urno`, `dob`, `img`, `idcard`, `verifystatus`, `saprstatus`, `actiapprove`, `vostatus`) VALUES
(2, 11063, 6, 'Vishnu', 'btech', 2, 'parachalil', 'yes', 7894561230, 'Male', 'b+ve', 'LAJC17MCA022', '1998-04-06', 'photo/9d00ea67cb534a8579556600955f1fe9.jpg', 'photo/1518769058551.jpg', 1, 1, 1, 1),
(1, 11065, 5, 'fergy', 'computer application', 2, 'puthenpuraikal', 'yes', 8356520945, 'Male', 'a+ve', 'LAJC17MCA021', '1998-04-07', 'photo/IMG-20180207-WA0017.jpg', 'photo/IMG-20180213-WA0016.jpg', 1, 0, 0, 1),
(4, 12336, 12, 'minnu', 'xcvbn', 2, 'xcbn', 'yes', 7894561230, 'Male', 'a+ve', 'LMKJN2', '2000-04-01', 'photo/â€ª+974 3094 8316â€¬ 20170606_012504 - Copy - Copy.jpg', 'photo/â€ª+974 3094 8316â€¬ 20170606_012504 - Copy.jpg', 0, 0, 0, 0),
(3, 12365, 7, 'geethu', 'cs', 2, 'sdfghj', 'yes', 8356520954, 'female', 'a-ve', 'LAJC17MCA024', '1998-04-02', 'photo/IMG_20200102_095345_198.jpg', 'photo/IMG_20200105_130313_344.jpg', 0, 0, 0, 0);

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
(1, 'equipementkeeping', 10, 1),
(2, 'cleanig', 10, 0);

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
(1, 4, 'improve time scheduling', 1),
(2, 6, 'nice performance', 1),
(3, 6, 'asdfgh', 1),
(5, 4, 'hgvfh', 1),
(6, 4, 'hjgvkmj', 1);

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
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `applyactivity`
--
ALTER TABLE `applyactivity`
  ADD PRIMARY KEY (`apid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `activityid` (`activityid`);

--
-- Indexes for table `applyapp`
--
ALTER TABLE `applyapp`
  ADD PRIMARY KEY (`applyid`),
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
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqid`);

--
-- Indexes for table `grace`
--
ALTER TABLE `grace`
  ADD PRIMARY KEY (`grid`),
  ADD UNIQUE KEY `userid` (`userid`);

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
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`noticeid`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`adno`),
  ADD UNIQUE KEY `urno` (`urno`),
  ADD KEY `userid` (`userid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sacti`
--
ALTER TABLE `sacti`
  ADD PRIMARY KEY (`seid`);

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
  MODIFY `activityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addpv`
--
ALTER TABLE `addpv`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addvs`
--
ALTER TABLE `addvs`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applyactivity`
--
ALTER TABLE `applyactivity`
  MODIFY `apid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applyapp`
--
ALTER TABLE `applyapp`
  MODIFY `applyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `awardid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eregister`
--
ALTER TABLE `eregister`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grace`
--
ALTER TABLE `grace`
  MODIFY `grid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `noticeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sacti`
--
ALTER TABLE `sacti`
  MODIFY `seid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `grace`
--
ALTER TABLE `grace`
  ADD CONSTRAINT `grace_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`);

--
-- Constraints for table `pay`
--
ALTER TABLE `pay`
  ADD CONSTRAINT `pay_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`);

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
