/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : xyl

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2016-04-07 20:27:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(8) NOT NULL auto_increment,
  `account` varchar(20) collate utf8_bin NOT NULL,
  `pwd` varchar(20) collate utf8_bin NOT NULL,
  `name` varchar(30) collate utf8_bin NOT NULL,
  `role` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '1', 'admin', '0');
INSERT INTO `t_admin` VALUES ('5', 'admin2', '1', 'admin2333222', '1');

-- ----------------------------
-- Table structure for `t_class`
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class` (
  `id` int(8) NOT NULL auto_increment,
  `grade` varchar(20) collate utf8_bin NOT NULL,
  `name` varchar(20) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO `t_class` VALUES ('1', '2016届', '软件101');
INSERT INTO `t_class` VALUES ('2', '2015届', '软件101');
INSERT INTO `t_class` VALUES ('5', '2016届', '软件102');
INSERT INTO `t_class` VALUES ('6', '2015届', '软件102');
INSERT INTO `t_class` VALUES ('7', '2015届', '软件104');
INSERT INTO `t_class` VALUES ('8', '2015届', '软件103');

-- ----------------------------
-- Table structure for `t_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(8) NOT NULL auto_increment,
  `title` varchar(50) collate utf8_bin NOT NULL,
  `text` varchar(1024) collate utf8_bin NOT NULL,
  `time` varchar(20) collate utf8_bin NOT NULL,
  `state` int(2) NOT NULL,
  `rtext` varchar(1024) collate utf8_bin default NULL,
  `rtime` varchar(20) collate utf8_bin default NULL,
  `stu_id` int(8) NOT NULL,
  `class_id` int(8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('1', '闹心', '闹心闹心按时打算打算的', '2016-03-27 21:36:05', '1', '别闹心', '2016-03-27 21:36:38', '7', '1');
INSERT INTO `t_message` VALUES ('2', 'asdasdasdasd', '阿萨德请问', '2016-03-27 21:37:11', '1', 'as大叔大婶', '2016-03-27 21:37:18', '5', '5');

-- ----------------------------
-- Table structure for `t_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` int(8) NOT NULL auto_increment,
  `title` varchar(50) collate utf8_bin NOT NULL,
  `text` varchar(1024) collate utf8_bin NOT NULL,
  `time` varchar(20) collate utf8_bin NOT NULL,
  `type` int(2) NOT NULL,
  `class_id` int(8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('1', '标题一', '1的水污染发生的发生大发', '2016-02-23 15:38:24', '0', '0');
INSERT INTO `t_news` VALUES ('3', '101010', '1010101010101010101010', '2016-03-03 20:35:30', '1', '1');
INSERT INTO `t_news` VALUES ('4', '2332', '324343', '2016-03-03 23:06:13', '1', '1');
INSERT INTO `t_news` VALUES ('5', '123123123123211', 'qweqwewqewqewqe', '2016-03-07 22:52:31', '1', '1');
INSERT INTO `t_news` VALUES ('6', '213412412412412414114141212', '2314而我撒旦飞洒地方', '2016-03-12 01:39:31', '1', '1');
INSERT INTO `t_news` VALUES ('7', '5616561', '士大夫士大夫撒飞洒地方是打发', '2016-03-12 02:55:52', '0', '0');
INSERT INTO `t_news` VALUES ('8', '明天举行颁奖仪式', '请问二天堂分公司的过分的话分店的', '2016-04-03 23:28:45', '1', '2');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(8) NOT NULL auto_increment,
  `time` varchar(20) collate utf8_bin NOT NULL,
  `text` varchar(1024) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '2016-04-03 22:30:01', '超级管理员admin登录记录');
INSERT INTO `t_role` VALUES ('2', '2016-04-03 22:31:03', '超级管理员admin登录记录');
INSERT INTO `t_role` VALUES ('3', '2016-04-03 23:58:49', '超级管理员admin登录记录');
INSERT INTO `t_role` VALUES ('4', '2016-04-04 00:00:29', '班级管理员admin2333222登录记录');
INSERT INTO `t_role` VALUES ('5', '2016-04-04 00:00:42', '超级管理员admin登录记录');
INSERT INTO `t_role` VALUES ('6', '2016-04-05 09:39:50', '超级管理员admin登录记录');
INSERT INTO `t_role` VALUES ('7', '2016-04-05 16:59:55', '超级管理员admin登录记录');
INSERT INTO `t_role` VALUES ('8', '2016-04-05 17:44:52', '超级管理员admin登录记录');
INSERT INTO `t_role` VALUES ('9', '2016-04-05 17:47:13', '班级管理员admin2333222登录记录');
INSERT INTO `t_role` VALUES ('10', '2016-04-07 20:26:58', '超级管理员admin登录记录');

-- ----------------------------
-- Table structure for `t_stu`
-- ----------------------------
DROP TABLE IF EXISTS `t_stu`;
CREATE TABLE `t_stu` (
  `id` int(8) NOT NULL auto_increment,
  `stu_no` varchar(20) collate utf8_bin NOT NULL,
  `pwd` varchar(20) collate utf8_bin NOT NULL,
  `name` varchar(20) collate utf8_bin NOT NULL,
  `tel` varchar(11) collate utf8_bin NOT NULL,
  `sex` varchar(2) collate utf8_bin NOT NULL,
  `birthday` varchar(10) collate utf8_bin NOT NULL,
  `qq` varchar(20) collate utf8_bin NOT NULL,
  `email` varchar(50) collate utf8_bin NOT NULL,
  `img` varchar(50) collate utf8_bin NOT NULL,
  `nickname` varchar(50) collate utf8_bin NOT NULL,
  `state` int(2) NOT NULL,
  `class_id` int(8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_stu
-- ----------------------------
INSERT INTO `t_stu` VALUES ('5', '1515484848', '1', '151545', '13885854452', '2', '2016-02-03', '11111111111', '1@qq.com', '20160327193322.jpg', '1256451', '0', '5');
INSERT INTO `t_stu` VALUES ('6', '2212222222', '4', '圣达菲', '1', '2', '2016-02-03', '123213123', '1@qq.com', '20160223101930.jpg', '123圣达菲', '0', '2');
INSERT INTO `t_stu` VALUES ('7', '1018151515', '1', '1515', '1514848777', '1', '1995-02-08', '787878788', '12321123@qq.com', '20160327200031.jpg', 'vvvv', '1', '1');
INSERT INTO `t_stu` VALUES ('8', '1018121212', '1', '1212', '13566669696', '1', '1995-03-08', '787414144', '2@qq.com', '20160327200118.jpg', 'mmmm', '1', '1');

-- ----------------------------
-- View structure for `class_stu`
-- ----------------------------
DROP VIEW IF EXISTS `class_stu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `class_stu` AS select sql_no_cache `t_stu`.`class_id` AS `class_id`,`t_class`.`grade` AS `grade`,`t_class`.`name` AS `class_name`,`t_stu`.`id` AS `stu_id`,`t_stu`.`stu_no` AS `stu_no`,`t_stu`.`pwd` AS `pwd`,`t_stu`.`name` AS `name`,`t_stu`.`sex` AS `sex`,`t_stu`.`birthday` AS `birthday`,`t_stu`.`qq` AS `qq`,`t_stu`.`email` AS `email`,`t_stu`.`img` AS `img`,`t_stu`.`nickname` AS `nickname`,`t_stu`.`state` AS `state`,`t_stu`.`tel` AS `tel`,`t_class`.`id` AS `id` from (`t_class` join `t_stu` on((`t_class`.`id` = `t_stu`.`class_id`))) ;

-- ----------------------------
-- View structure for `stu_message`
-- ----------------------------
DROP VIEW IF EXISTS `stu_message`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stu_message` AS select `t_stu`.`id` AS `id`,`t_stu`.`stu_no` AS `stu_no`,`t_stu`.`pwd` AS `pwd`,`t_stu`.`name` AS `name`,`t_stu`.`tel` AS `tel`,`t_stu`.`sex` AS `sex`,`t_stu`.`birthday` AS `birthday`,`t_stu`.`qq` AS `qq`,`t_stu`.`email` AS `email`,`t_stu`.`img` AS `img`,`t_stu`.`nickname` AS `nickname`,`t_stu`.`state` AS `state`,`t_stu`.`class_id` AS `class_id`,`t_message`.`id` AS `message_id`,`t_message`.`title` AS `title`,`t_message`.`text` AS `text`,`t_message`.`time` AS `time`,`t_message`.`state` AS `message_state`,`t_message`.`rtext` AS `rtext`,`t_message`.`rtime` AS `rtime` from (`t_message` join `t_stu` on((`t_stu`.`id` = `t_message`.`class_id`))) ;
