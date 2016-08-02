/*
Navicat MySQL Data Transfer

Source Server         : me
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-08-02 11:45:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `think_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group
-- ----------------------------
INSERT INTO `think_auth_group` VALUES ('1', '管理员', '1', '1,2,3,4,5,6,7,8,9');
INSERT INTO `think_auth_group` VALUES ('2', '超级管理', '1', '1,2,3');
INSERT INTO `think_auth_group` VALUES ('3', '编辑文员', '1', '1');

-- ----------------------------
-- Table structure for `think_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_group_access
-- ----------------------------
INSERT INTO `think_auth_group_access` VALUES ('1', '1');
INSERT INTO `think_auth_group_access` VALUES ('2', '2');
INSERT INTO `think_auth_group_access` VALUES ('3', '3');

-- ----------------------------
-- Table structure for `think_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_rule`;
CREATE TABLE `think_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `menu` enum('0','1') DEFAULT '0' COMMENT '左侧菜单默认显示0',
  `pid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_auth_rule
-- ----------------------------
INSERT INTO `think_auth_rule` VALUES ('1', 'Home/Index/index', '首页', '1', '1', '0', '0', null);
INSERT INTO `think_auth_rule` VALUES ('2', 'Home/Cache/index', '缓存', '1', '1', '0', '0', null);
INSERT INTO `think_auth_rule` VALUES ('3', 'Home/Product/index', '产品列表', '1', '1', '20', '0', null);
INSERT INTO `think_auth_rule` VALUES ('4', 'Home/Product/edit', '产品编辑', '1', '1', '22', '1', null);
INSERT INTO `think_auth_rule` VALUES ('5', 'Home/About/index', '关于我们', '1', '1', '10', '0', null);
INSERT INTO `think_auth_rule` VALUES ('6', 'Home/Product/del', '删除', '1', '1', '', '1', null);
INSERT INTO `think_auth_rule` VALUES ('7', 'Home/System/index', '系统信息', '1', '1', '', '0', null);
INSERT INTO `think_auth_rule` VALUES ('8', 'Home/System/back', '数据备份', '1', '1', '', '0', '7');
INSERT INTO `think_auth_rule` VALUES ('9', 'Home/System/info', '服务器信息', '1', '1', '', '0', '7');

-- ----------------------------
-- Table structure for `think_user`
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES ('1', 'admin', '123');
INSERT INTO `think_user` VALUES ('2', 'lisi', '123');
INSERT INTO `think_user` VALUES ('3', 'wanghu', '123');
