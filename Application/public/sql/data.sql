# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: tp31
# Generation Time: 2017-06-05 08:42:47 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tp_projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tp_projects`;

CREATE TABLE `tp_projects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `create_at` datetime NOT NULL,
  `modify_at` datetime NOT NULL,
  `ishidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `tp_projects` WRITE;
/*!40000 ALTER TABLE `tp_projects` DISABLE KEYS */;

INSERT INTO `tp_projects` (`id`, `name`, `description`, `create_at`, `modify_at`, `ishidden`)
VALUES
	(1,'213','213','2017-06-05 16:07:10','2017-06-05 16:07:10',0);

/*!40000 ALTER TABLE `tp_projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tp_test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tp_test`;

CREATE TABLE `tp_test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `sex` tinyint(1) DEFAULT '0' COMMENT '0 man, 1 woman',
  `age` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `tp_test` WRITE;
/*!40000 ALTER TABLE `tp_test` DISABLE KEYS */;

INSERT INTO `tp_test` (`id`, `name`, `sex`, `age`)
VALUES
	(1,'notus',0,18),
	(2,'bugber',0,20),
	(3,'haili',1,16),
	(4,'kari',1,35),
	(5,'ham',1,16);

/*!40000 ALTER TABLE `tp_test` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tp_users`;

CREATE TABLE `tp_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `privilege` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 admin, 1 guest',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `tp_users` WRITE;
/*!40000 ALTER TABLE `tp_users` DISABLE KEYS */;

INSERT INTO `tp_users` (`id`, `name`, `password`, `email`, `privilege`)
VALUES
	(2,'notus','ba00819f263287af1ff0100c5a323355','hehe_xiao@qq.com',1);

/*!40000 ALTER TABLE `tp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
