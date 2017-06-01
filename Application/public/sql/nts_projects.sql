-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2017 at 04:27 PM
-- Server version: 5.7.14-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aliphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `nts_projects`
--

CREATE TABLE `nts_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(40) NOT NULL COMMENT 'project name',
  `description` text,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  `modify_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'last modified time',
  `show` tinyint(1) DEFAULT '1' COMMENT 'show it or not'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nts_projects`
--

INSERT INTO `nts_projects` (`id`, `name`, `description`, `create_at`, `modify_at`, `show`) VALUES
(11, 'webnavi', '<p>个人简单网址导航页面.</p>\r\n<a class="btn btn-sm btn-info" target="_blank" href="http://www.baidu.com">演示</a>\r\n<a class="btn btn-sm btn-success" target="_blank" href="http://www.baidu.com">GitHub</a>', '2017-06-01 07:51:25', '2017-06-01 15:49:28', 1),
(12, 'ddada', 'dasdasda', '2017-06-01 07:54:24', '2017-06-01 07:54:24', 1),
(13, 'ddd', 'ddd', '2017-06-01 07:57:53', '2017-06-01 07:57:53', 1),
(14, 'dd', 'dd', '2017-06-01 07:57:58', '2017-06-01 07:57:58', 1),
(15, 'fwfw', 'fewfwef', '2017-06-01 07:58:03', '2017-06-01 07:58:03', 1),
(16, 'fewfewf', 'fwefewf', '2017-06-01 07:58:08', '2017-06-01 07:58:08', 1),
(17, 'fewfwef', 'fg3t43t2', '2017-06-01 07:58:14', '2017-06-01 07:58:14', 1),
(18, 'f2f', 'sfewfew', '2017-06-01 07:58:18', '2017-06-01 07:58:18', 1),
(19, 'f2f32', 'fsfdsfds', '2017-06-01 07:58:24', '2017-06-01 07:58:24', 1),
(20, 'fewf', '2fe2e', '2017-06-01 07:58:29', '2017-06-01 07:58:29', 1),
(21, 'fewf', 'fewfewf', '2017-06-01 07:58:34', '2017-06-01 07:58:34', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nts_projects`
--
ALTER TABLE `nts_projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nts_projects`
--
ALTER TABLE `nts_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
