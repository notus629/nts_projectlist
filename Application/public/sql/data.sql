/*
Navicat MySQL Data Transfer

Source Server         : wamp
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : aliphp

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-06-02 08:56:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nts_projects
-- ----------------------------
DROP TABLE IF EXISTS `nts_projects`;
CREATE TABLE `nts_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL COMMENT 'project name',
  `description` text,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  `modify_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'last modified time',
  `show` tinyint(1) DEFAULT '1' COMMENT 'show it or not',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nts_projects
-- ----------------------------
INSERT INTO `nts_projects` VALUES ('11', 'webnavi', '<p>个人简单网址导航页面.</p>\r\n<a class=\"btn btn-sm btn-info\" target=\"_blank\" href=\"http://www.baidu.com\">演示</a>\r\n<a class=\"btn btn-sm btn-success\" target=\"_blank\" href=\"http://www.baidu.com\">GitHub</a>', '2017-06-01 07:51:25', '2017-06-01 15:49:28', '1');
INSERT INTO `nts_projects` VALUES ('12', 'ddada', 'dasdasda', '2017-06-01 07:54:24', '2017-06-01 07:54:24', '1');
INSERT INTO `nts_projects` VALUES ('13', 'ddd', 'ddd', '2017-06-01 07:57:53', '2017-06-01 07:57:53', '1');
INSERT INTO `nts_projects` VALUES ('14', 'dd', 'dd', '2017-06-01 07:57:58', '2017-06-01 07:57:58', '1');
INSERT INTO `nts_projects` VALUES ('15', 'fwfw', 'fewfwef', '2017-06-01 07:58:03', '2017-06-01 07:58:03', '1');
INSERT INTO `nts_projects` VALUES ('16', 'fewfewf', 'fwefewf', '2017-06-01 07:58:08', '2017-06-01 07:58:08', '1');
INSERT INTO `nts_projects` VALUES ('17', 'fewfwef', 'fg3t43t2', '2017-06-01 07:58:14', '2017-06-01 07:58:14', '1');
INSERT INTO `nts_projects` VALUES ('18', 'f2f', 'sfewfew', '2017-06-01 07:58:18', '2017-06-01 07:58:18', '1');
INSERT INTO `nts_projects` VALUES ('19', 'f2f32', 'fsfdsfds', '2017-06-01 07:58:24', '2017-06-01 07:58:24', '1');
INSERT INTO `nts_projects` VALUES ('20', 'fewf', '2fe2e', '2017-06-01 07:58:29', '2017-06-01 07:58:29', '1');
INSERT INTO `nts_projects` VALUES ('21', 'fewf', 'fewfewf', '2017-06-01 07:58:34', '2017-06-01 07:58:34', '1');

-- ----------------------------
-- Table structure for nts_user
-- ----------------------------
DROP TABLE IF EXISTS `nts_user`;
CREATE TABLE `nts_user` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `previlege` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '权限',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员和用户表';

-- ----------------------------
-- Records of nts_user
-- ----------------------------
INSERT INTO `nts_user` VALUES ('1', null, 'notus', 'ba00819f263287af1ff0100c5a323355', '1');
