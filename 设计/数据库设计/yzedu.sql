/*
Navicat MySQL Data Transfer

Source Server         : MySQL57-rain
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : yzedu

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-26 22:54:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ability
-- ----------------------------
DROP TABLE IF EXISTS `ability`;
CREATE TABLE `ability` (
  `ability_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) unsigned NOT NULL,
  `ability_theory` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_language` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_innovate` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_think` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `ability_teamwork` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`ability_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ability
-- ----------------------------

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `admin_account` char(10) NOT NULL,
  `admin_password` char(40) NOT NULL,
  `admin_authority` varchar(6) NOT NULL DEFAULT '000000',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for advice
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice` (
  `advice_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(1) unsigned NOT NULL,
  `advice_content` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`advice_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of advice
-- ----------------------------

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `announcement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL,
  `announcement_title` varchar(50) NOT NULL,
  `announcement_content` varchar(255) NOT NULL,
  `announcement_stick` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of announcement
-- ----------------------------

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `banner_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL DEFAULT '-1',
  `banner_image` varchar(255) NOT NULL DEFAULT '0.png',
  `banner_type` tinyint(1) NOT NULL DEFAULT '0',
  `banner_link` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of banner
-- ----------------------------

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `bill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `bill_money` decimal(8,2) NOT NULL DEFAULT '0.00',
  `bill_details` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for circle_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `circle_dynamic`;
CREATE TABLE `circle_dynamic` (
  `circle_dynamic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL,
  `circle_dynamic_author` int(11) unsigned NOT NULL,
  `circle_dynamic_content` varchar(255) DEFAULT NULL,
  `dynamic_image_count` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`circle_dynamic_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of circle_dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `classification_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classification_name` varchar(25) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`classification_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of classification
-- ----------------------------

-- ----------------------------
-- Table structure for communication
-- ----------------------------
DROP TABLE IF EXISTS `communication`;
CREATE TABLE `communication` (
  `communication_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) unsigned NOT NULL,
  `communication_author` int(11) unsigned NOT NULL,
  `communication_content` varchar(255) NOT NULL,
  `communication_image_count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication
-- ----------------------------

-- ----------------------------
-- Table structure for communication_comment
-- ----------------------------
DROP TABLE IF EXISTS `communication_comment`;
CREATE TABLE `communication_comment` (
  `communication_comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) unsigned NOT NULL,
  `communication_comment_user` int(11) unsigned NOT NULL,
  `communication_reply` int(11) unsigned NOT NULL,
  `communication_comment_content` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_comment_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication_comment
-- ----------------------------

-- ----------------------------
-- Table structure for communication_image
-- ----------------------------
DROP TABLE IF EXISTS `communication_image`;
CREATE TABLE `communication_image` (
  `communication_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) unsigned NOT NULL,
  `communication_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(255) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication_image
-- ----------------------------

-- ----------------------------
-- Table structure for communication_praise
-- ----------------------------
DROP TABLE IF EXISTS `communication_praise`;
CREATE TABLE `communication_praise` (
  `communication_praise_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) unsigned NOT NULL,
  `communication_praise_user` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`communication_praise_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of communication_praise
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `course_code` char(13) NOT NULL,
  `course_name` varchar(25) NOT NULL,
  `course_introduce` varchar(255) DEFAULT NULL,
  `school_id` int(11) NOT NULL DEFAULT '-1',
  `faculty_id` int(11) NOT NULL DEFAULT '-1',
  `class_id` int(11) NOT NULL DEFAULT '-1',
  `course_classification` int(11) unsigned NOT NULL,
  `course_sum_student` int(11) NOT NULL DEFAULT '-1',
  `course_learn_student` int(11) unsigned NOT NULL DEFAULT '0',
  `course_cover` varchar(255) NOT NULL DEFAULT '0.png',
  `course_type` tinyint(1) NOT NULL DEFAULT '4',
  `course_finish` int(3) unsigned NOT NULL DEFAULT '0',
  `course_sum` int(3) unsigned NOT NULL DEFAULT '0',
  `course_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modifide` datetime NOT NULL,
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for course_material
-- ----------------------------
DROP TABLE IF EXISTS `course_material`;
CREATE TABLE `course_material` (
  `course_material_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `course_material_name` varchar(25) NOT NULL,
  `course_material_url` varchar(255) NOT NULL,
  `course_material_size` varchar(25) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`course_material_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of course_material
-- ----------------------------

-- ----------------------------
-- Table structure for dynamic_comment
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_comment`;
CREATE TABLE `dynamic_comment` (
  `dynamic_comment _id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dynamic_comment_author` int(11) unsigned NOT NULL,
  `circle_dynamic_id` int(11) unsigned NOT NULL,
  `dynamic_reply_user` int(11) unsigned NOT NULL,
  `dynamic_comment_content` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`dynamic_comment _id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dynamic_comment
-- ----------------------------

-- ----------------------------
-- Table structure for dynamic_image
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_image`;
CREATE TABLE `dynamic_image` (
  `dynamic_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `circle_dynamic_id` int(11) unsigned NOT NULL,
  `dynamic_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`dynamic_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dynamic_image
-- ----------------------------

-- ----------------------------
-- Table structure for dynamic_praise
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_praise`;
CREATE TABLE `dynamic_praise` (
  `dynamic_praise_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dynamic_praise_user` int(11) unsigned NOT NULL,
  `circle_dynamic_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`dynamic_praise_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of dynamic_praise
-- ----------------------------

-- ----------------------------
-- Table structure for edu_admin
-- ----------------------------
DROP TABLE IF EXISTS `edu_admin`;
CREATE TABLE `edu_admin` (
  `edu_admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL,
  `edu_admin_number` char(10) NOT NULL,
  `edu_admin_name` varchar(20) NOT NULL,
  `edu_admin_password` char(40) NOT NULL,
  `edu_admin_authority` varchar(6) NOT NULL DEFAULT '000000',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`edu_admin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of edu_admin
-- ----------------------------

-- ----------------------------
-- Table structure for enter
-- ----------------------------
DROP TABLE IF EXISTS `enter`;
CREATE TABLE `enter` (
  `enter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_name` varchar(20) NOT NULL,
  `school_type` tinyint(1) NOT NULL DEFAULT '0',
  `school_badge` varchar(255) NOT NULL DEFAULT '0.png',
  `school_introduce` varchar(255) DEFAULT NULL,
  `school_city` varchar(20) DEFAULT NULL,
  `school_province` varchar(20) DEFAULT NULL,
  `school_license` varchar(255) NOT NULL,
  `applicant_user_name` varchar(20) NOT NULL,
  `applicant_user_id` char(18) NOT NULL,
  `receiver_phone` char(11) NOT NULL,
  `receiver_mail` varchar(40) NOT NULL,
  `enter_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`enter_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of enter
-- ----------------------------
INSERT INTO `enter` VALUES ('1', '杭州测试学校001', '2', '0.png', '这是第一个测试学校', '杭州', '浙江', '0.png', '张三', '120136198512041295', '18512369632', 'zhangs@163.com', '0', '2018-03-24 22:10:10', '2018-03-24 22:10:52');
INSERT INTO `enter` VALUES ('2', '杭州测试学校002', '2', '0.png', '2', '杭州', '浙江', '0.png', '李四', '120136198811114919', '15203681239', '1235ls@126.com', '0', '2018-03-24 22:12:52', '2018-03-24 22:13:31');
INSERT INTO `enter` VALUES ('3', '某机构001', '3', '0.png', '机构1', null, null, '0.png', '老王', '120341199011032314', '18866661111', '15315613@qq.com', '0', '2018-03-24 22:14:47', '2018-03-24 22:14:50');
INSERT INTO `enter` VALUES ('4', '杭州测试小学', '1', '0.png', '小学1', '杭州', '浙江', '0.png', '孙权', '439523198612061293', '13386791025', 'sunquan@163.com', '0', '2018-03-24 22:16:28', '2018-03-24 22:16:31');
INSERT INTO `enter` VALUES ('5', '宁波信息学院002', '1', '1.png', '测试介绍004', '嘉兴', '浙江', '7.png', '胡空间', '201803261947327295', '15702025840', '7db4tstbq@ask.com', '0', '2016-06-02 09:23:53', '2011-04-17 05:40:45');
INSERT INTO `enter` VALUES ('6', '绍兴测试学校004', '2', '4.png', '测试介绍002', '衡州', '浙江', '2.png', '习明', '201803261947329670', '13501960658', 'ere0mc8k050e7@yahoo.com.cn', '0', '2016-06-02 09:23:53', '2011-04-17 05:40:45');
INSERT INTO `enter` VALUES ('7', '金华测试小学', '2', '3.png', '测试介绍001', '衡州', '浙江', '8.png', '张美丽', '201803261947323848', '15907161750', '96r1l66svbuuptz@163.net', '0', '2016-06-02 09:23:53', '2011-04-17 05:40:45');
INSERT INTO `enter` VALUES ('8', '台州通信学院001', '2', '7.png', '测试介绍003', '温州', '浙江', '3.png', '苗陆', '201803261947321729', '15807167033', '0k59lp63ft7p5@126.com', '0', '2016-06-02 09:23:53', '2011-04-17 05:40:45');
INSERT INTO `enter` VALUES ('9', '台州测试学校003', '3', '3.png', '测试介绍003', '杭州', '浙江', '8.png', '戴发', '201803261947322275', '15804935742', 'bt1fucvkkztu6v56@hotmail.com', '0', '2016-06-02 09:23:53', '2011-04-17 05:40:45');
INSERT INTO `enter` VALUES ('10', '丽水信息学院001', '3', '10.png', '测试介绍003', '台州', '浙江', '10.png', '王利', '201803261947325772', '13104926331', 'tdm8j53cf6234@qq.com', '0', '2016-06-02 09:23:53', '2011-04-17 05:40:45');
INSERT INTO `enter` VALUES ('11', '衡州某机构004', '1', '3.png', '测试介绍007', '丽水', '浙江', '5.png', '苗同', '201803261947515131', '13907054048', 'iqo70b0yemd@yeah.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('12', '衡州信息学院002', '3', '6.png', '测试介绍005', '金华', '浙江', '4.png', '韩丽', '201803261947516110', '13806111769', 'b8jj8eb4ut@yeah.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('13', '宁波某机构004', '3', '0.png', '测试介绍001', '杭州', '浙江', '6.png', '王航空', '201803261947519787', '15905101680', 'dqhn1bpzjp9wm4j26@3721.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('14', '舟山信息学院002', '3', '5.png', '测试介绍007', '台州', '浙江', '5.png', '毛同', '201803261947510193', '15707703403', '59exihghlq@googlemail.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('15', '台州测试学校003', '1', '2.png', '测试介绍002', '绍兴', '浙江', '7.png', '戴娟', '201803261947514082', '13308106722', 'r4qdgalfj@sohu.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('16', '嘉兴信息小学002', '1', '0.png', '测试介绍001', '衡州', '浙江', '7.png', '赵我', '201803261947519616', '13600934965', '2tmyd48kiwl1drn2@yeah.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('17', '宁波测试学校003', '1', '4.png', '测试介绍002', '宁波', '浙江', '6.png', '赵发', '201803261947512715', '15006205110', 'zv0qtz7zutdu8oa@yahoo.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('18', '舟山测试小学', '3', '2.png', '测试介绍007', '宁波', '浙江', '6.png', '张莉莉', '201803261947516233', '13306753502', 'euqdj4hiuz7sdei@263.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('19', '绍兴某机构004', '2', '7.png', '测试介绍004', '舟山', '浙江', '9.png', '周娟娟', '201803261947515827', '13507063534', 'chcltwiwf9nsej@yeah.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('20', '衡州信息小学002', '2', '8.png', '测试介绍007', '金华', '浙江', '0.png', '戴长城', '201803261947519149', '15602196877', 'brqaanu79mn87v@hotmail.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('21', '嘉兴测试小学', '2', '0.png', '测试介绍001', '杭州', '浙江', '5.png', '毛泰', '201803261947516270', '13604224941', 'fbl7ssy3d@yeah.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('22', '台州信息学院001', '1', '7.png', '测试介绍002', '丽水', '浙江', '7.png', '胡丽', '201803261947519833', '13206218573', '0swnput7gwqnd9cxyvnu@3721.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('23', '丽水某机构004', '1', '10.png', '测试介绍002', '丽水', '浙江', '0.png', '戴利', '201803261947514183', '15208857273', 'rgor9dovgri7ee@gmail.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('24', '金华测试小学', '2', '10.png', '测试介绍003', '温州', '浙江', '4.png', '王克', '201803261947512430', '13402778605', 'i333k6kqp9veyf@sina.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('25', '衡州信息学院002', '2', '3.png', '测试介绍007', '衡州', '浙江', '2.png', '戴泰', '201803261947518940', '13200711568', 'm3wxr0vp50m55@0355.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('26', '衡州信息小学001', '2', '6.png', '测试介绍001', '金华', '浙江', '4.png', '戴办法', '201803261947519586', '13405707292', 'cd14mxpr0lrw5wb2phr@aol.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('27', '台州信息学院001', '2', '10.png', '测试介绍007', '宁波', '浙江', '0.png', '李娟', '201803261947511327', '13304437280', 'w1pkkp2z4adjm@live.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('28', '舟山某机构003', '2', '4.png', '测试介绍005', '杭州', '浙江', '2.png', '武大', '201803261947511338', '13303683699', 'm36rx3jjti3@163.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('29', '杭州测试学校003', '2', '1.png', '测试介绍001', '衡州', '浙江', '1.png', '张莉莉', '201803261947518742', '13703560611', 'fcxrqb69ur5fhjocxa@263.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('30', '金华信息学院001', '1', '3.png', '测试介绍005', '杭州', '浙江', '1.png', '韩莉莉', '201803261947511227', '15105427397', 'as9v2oh92@hotmail.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('31', '宁波信息小学001', '1', '6.png', '测试介绍005', '绍兴', '浙江', '5.png', '赵泰', '201803261947512838', '13001093280', 'fwplqdr1d71x2nlocbl7@qq.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('32', '绍兴测试小学', '2', '10.png', '测试介绍003', '丽水', '浙江', '2.png', '武莉莉', '201803261947510904', '13403970499', 's2bpibm83m9fg31w@live.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('33', '宁波信息学院001', '3', '4.png', '测试介绍002', '温州', '浙江', '7.png', '王胡霍', '201803261947511713', '15806285443', 'ozsoo9upvdeude6j@live.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('34', '嘉兴某机构003', '2', '9.png', '测试介绍007', '丽水', '浙江', '9.png', '朱长城', '201803261947519474', '15705708087', 't1227yvhh01bw66@3721.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('35', '温州测试学校004', '3', '1.png', '测试介绍006', '湖州', '浙江', '2.png', '张克', '201803261947516647', '13705282398', 'xv2opadvz1kmmbo@yeah.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('36', '衡州信息学院002', '2', '6.png', '测试介绍002', '金华', '浙江', '4.png', '胡层层', '201803261947514063', '15300177907', 'duvhiua75ss@163.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('37', '台州信息学院001', '3', '3.png', '测试介绍006', '杭州', '浙江', '8.png', '戴发', '201803261947514248', '13201278551', 'zfeu9nakt7ni2ou@3721.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('38', '丽水信息学院002', '1', '3.png', '测试介绍004', '舟山', '浙江', '2.png', '张留', '201803261947519005', '15208828175', 'ojb9ly1nqun9vdqutyuj@163.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('39', '金华信息学院002', '2', '5.png', '测试介绍003', '衡州', '浙江', '7.png', '戴晨光', '201803261947516679', '15704845152', '7t4ldjk3hyf4hn@yahoo.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('40', '温州测试学校003', '3', '3.png', '测试介绍006', '衡州', '浙江', '8.png', '陈航空', '201803261947516017', '13803278574', 'gsp6nsa07@msn.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('41', '绍兴信息学院002', '3', '9.png', '测试介绍004', '衡州', '浙江', '6.png', '朱层层', '201803261947510858', '13502908759', 'mz9ef8ks1jj21qw@sina.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('42', '台州信息小学001', '2', '0.png', '测试介绍001', '舟山', '浙江', '2.png', '李胡霍', '201803261947514453', '15307886357', 'juixqqr4mk10f@sohu.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('43', '嘉兴测试小学', '1', '7.png', '测试介绍006', '舟山', '浙江', '4.png', '朱莉莉', '201803261947516355', '13907232978', 'i1h5ywem7v@263.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('44', '绍兴信息小学001', '2', '3.png', '测试介绍003', '嘉兴', '浙江', '2.png', '习克', '201803261947510540', '15206158186', 'a01sht5na8@sohu.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('45', '宁波信息学院001', '3', '1.png', '测试介绍001', '嘉兴', '浙江', '9.png', '张娟娟', '201803261947518256', '15805961411', 'mpv6nzl3n9rgpzeu@msn.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('46', '绍兴信息小学002', '2', '4.png', '测试介绍005', '台州', '浙江', '10.png', '陈同', '201803261947519976', '15807180366', '1t1i3fjzt0yq@ask.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('47', '舟山信息小学002', '1', '5.png', '测试介绍003', '丽水', '浙江', '0.png', '张发', '201803261947513838', '13203014085', '14hw7bee8uhs@qq.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('48', '台州信息小学001', '1', '7.png', '测试介绍006', '金华', '浙江', '6.png', '张空间', '201803261947518634', '15304903889', 'n6boz6wktyr8lhapjwj@sina.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('49', '台州信息小学002', '2', '4.png', '测试介绍006', '宁波', '浙江', '6.png', '胡留', '201803261947516262', '15905923951', 'glbnh6p5ihpupf4zsd1x@163.net', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('50', '温州信息学院002', '1', '4.png', '测试介绍006', '嘉兴', '浙江', '4.png', '陈娜娜', '201803261947513840', '13601612778', 'q6y6vzs34bv8u1mohau@yahoo.com', '0', '2014-02-11 06:26:47', '2016-01-11 20:26:16');
INSERT INTO `enter` VALUES ('51', '丽水通信学院001', '3', '0.png', '测试介绍002', '丽水', '浙江', '1.png', '苗和', '201803261948086878', '13905191278', '8jdyvjjgf@163.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('52', '温州测试学校003', '3', '6.png', '测试介绍006', '金华', '浙江', '8.png', '赵胡霍', '201803261948085202', '13906550904', 'gziyimtyxlc@ask.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('53', '宁波通信学院001', '3', '0.png', '测试介绍006', '湖州', '浙江', '8.png', '苗犯的', '201803261948083993', '13407402573', '37v8sn9dbwcb83cvp@sina.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('54', '绍兴测试小学', '2', '1.png', '测试介绍004', '台州', '浙江', '6.png', '王克', '201803261948088618', '15303125131', '19yanuelsh9du@163.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('55', '舟山某机构003', '3', '2.png', '测试介绍004', '绍兴', '浙江', '5.png', '苗明', '201803261948081252', '15800525311', 'xdl49k4i9@0355.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('56', '温州信息小学001', '2', '10.png', '测试介绍003', '宁波', '浙江', '10.png', '毛犯的', '201803261948085495', '13502002071', 'sqhuh4n1sugevoyn39d@yahoo.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('57', '绍兴信息学院002', '1', '5.png', '测试介绍003', '绍兴', '浙江', '1.png', '胡留', '201803261948080729', '15804985271', 'za1lcga8fvzg9uhj@0355.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('58', '嘉兴某机构004', '2', '4.png', '测试介绍003', '杭州', '浙江', '5.png', '韩发', '201803261948087999', '15604216056', 'kw96fb3hzp9j244fak@163.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('59', '杭州测试学校003', '2', '10.png', '测试介绍006', '湖州', '浙江', '0.png', '毛泰', '201803261948084918', '13603846902', '2n2uufxaq6b0uf4md@sohu.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('60', '台州信息学院002', '2', '8.png', '测试介绍002', '湖州', '浙江', '1.png', '朱利', '201803261948080194', '15105882528', 'sseb0maulkaq27maqq81@0355.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('61', '宁波信息小学001', '2', '7.png', '测试介绍004', '绍兴', '浙江', '9.png', '朱明', '201803261948086712', '13400708352', 'sviilwa2tshnbkpge1b@163.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('62', '舟山测试学校003', '3', '1.png', '测试介绍002', '绍兴', '浙江', '9.png', '王泰', '201803261948081340', '13604034450', 'o8kbmojkr3@yahoo.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('63', '台州信息小学001', '1', '3.png', '测试介绍003', '宁波', '浙江', '7.png', '张泰', '201803261948086868', '13408805984', 'e41lwnb50sbh83kaf@msn.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('64', '金华测试学校003', '2', '10.png', '测试介绍001', '丽水', '浙江', '4.png', '胡留', '201803261948085626', '15602133764', 'zq0kdzju0eil4@0355.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('65', '杭州信息学院002', '3', '10.png', '测试介绍004', '温州', '浙江', '0.png', '张办法', '201803261948087237', '13304512281', '98r9xcv3usqh20gcv5@sina.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('66', '台州信息小学002', '2', '3.png', '测试介绍007', '丽水', '浙江', '1.png', '习发', '201803261948085735', '13306794844', 'clkfzme7j0divehpt9i8@263.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('67', '台州信息学院001', '1', '10.png', '测试介绍002', '温州', '浙江', '7.png', '武娟', '201803261948084332', '13507607593', 'jgpcn2n6thrl@263.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('68', '金华测试小学', '3', '1.png', '测试介绍005', '台州', '浙江', '8.png', '周留', '201803261948088546', '13508756947', 'aa8f4ibi9e@yeah.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('69', '台州通信学院001', '1', '8.png', '测试介绍005', '嘉兴', '浙江', '2.png', '毛莉莉', '201803261948085891', '15501167877', '2qu5j99pzxqyh51zmyvw@126.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('70', '金华信息学院002', '2', '4.png', '测试介绍007', '台州', '浙江', '0.png', '赵长城', '201803261948082961', '13803003344', 'l19wddz2fzp@aol.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('71', '金华测试学校003', '1', '4.png', '测试介绍005', '湖州', '浙江', '1.png', '陈我', '201803261948085524', '15604571379', 's88cbrgz3m@yeah.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('72', '嘉兴某机构003', '1', '7.png', '测试介绍005', '衡州', '浙江', '9.png', '习层层', '201803261948082522', '13906555131', '9am03oyqsv6h@qq.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('73', '台州信息学院002', '2', '8.png', '测试介绍002', '绍兴', '浙江', '7.png', '武代发', '201803261948084983', '13301485834', 'pa59cha29ijp2gw75@gmail.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('74', '绍兴通信学院001', '3', '0.png', '测试介绍006', '湖州', '浙江', '10.png', '习利', '201803261948081219', '13400352851', 'xjjzxdrvl4@3721.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('75', '嘉兴信息小学001', '1', '8.png', '测试介绍006', '金华', '浙江', '5.png', '武娟娟', '201803261948083400', '15305017364', '879z1z25d@qq.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('76', '温州信息学院001', '1', '1.png', '测试介绍005', '金华', '浙江', '10.png', '陈大', '201803261948082078', '15102407324', 'uhp17gv091ino6x5@163.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('77', '宁波信息小学001', '2', '2.png', '测试介绍006', '湖州', '浙江', '5.png', '武大', '201803261948082413', '15108262280', 'dw2a1fturav@163.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('78', '丽水测试小学', '3', '3.png', '测试介绍001', '衡州', '浙江', '0.png', '韩空间', '201803261948089703', '15806277336', 'ui6sl3ahsb556iq40csj@aol.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('79', '绍兴信息学院001', '1', '1.png', '测试介绍004', '杭州', '浙江', '0.png', '朱娟娟', '201803261948081499', '13304863680', '80t92lozskt2i18e9u26@3721.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('80', '绍兴信息学院002', '3', '2.png', '测试介绍004', '金华', '浙江', '10.png', '陈同', '201803261948085745', '15101854015', 'qb4v3836ptyjplfkdh4q@0355.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('81', '丽水某机构004', '1', '3.png', '测试介绍003', '绍兴', '浙江', '3.png', '朱娜娜', '201803261948081237', '15501703774', 'x25l245mh4byb5h638@263.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('82', '台州某机构004', '1', '9.png', '测试介绍002', '绍兴', '浙江', '10.png', '周同', '201803261948084571', '13902711643', 'kgk744cvxl4yzezn5i0@qq.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('83', '舟山测试学校003', '3', '1.png', '测试介绍003', '金华', '浙江', '6.png', '周娟娟', '201803261948084846', '13908185449', 'oqj51tkot5ubeifx3zf@3721.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('84', '台州某机构003', '3', '6.png', '测试介绍002', '衡州', '浙江', '6.png', '戴代发', '201803261948087544', '13206467503', 'y1vscnri82fgh1kwjkp@gmail.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('85', '台州某机构004', '3', '0.png', '测试介绍004', '金华', '浙江', '9.png', '胡层层', '201803261948083958', '13602784418', 'nl69snai0mbfld@3721.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('86', '宁波信息小学002', '3', '4.png', '测试介绍003', '金华', '浙江', '6.png', '胡利', '201803261948087537', '13101763295', '2xyl6k263j8kzyr4xf@263.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('87', '杭州测试小学', '1', '3.png', '测试介绍001', '杭州', '浙江', '8.png', '毛犯的', '201803261948080118', '15001316813', 'l66f3in7tojtmu@ask.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('88', '衡州某机构004', '1', '10.png', '测试介绍002', '绍兴', '浙江', '8.png', '李航空', '201803261948080786', '15003984586', 'mdg2jcwqo4n@msn.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('89', '衡州信息学院002', '2', '4.png', '测试介绍002', '绍兴', '浙江', '5.png', '苗同', '201803261948088951', '15504096287', '2cv45zt7d0i73n@126.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('90', '嘉兴测试学校003', '3', '3.png', '测试介绍003', '宁波', '浙江', '6.png', '陈空间', '201803261948087050', '13907718096', '1gbxvlbr979q@yeah.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('91', '嘉兴测试学校004', '3', '4.png', '测试介绍003', '舟山', '浙江', '2.png', '朱办法', '201803261948088251', '15805371869', 'y5kdyl20zu4altfr@yeah.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('92', '丽水某机构004', '2', '10.png', '测试介绍003', '绍兴', '浙江', '8.png', '周留', '201803261948088330', '13208381630', 'gtl1wa8xa6i5hmc@163.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('93', '绍兴测试学校003', '2', '8.png', '测试介绍007', '丽水', '浙江', '4.png', '苗代发', '201803261948089699', '13901827634', 'pjskyizop@qq.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('94', '丽水测试小学', '2', '3.png', '测试介绍006', '嘉兴', '浙江', '5.png', '王美丽', '201803261948081752', '15203893899', 'z5smailk4d8dip7@sohu.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('95', '台州信息小学002', '3', '0.png', '测试介绍006', '衡州', '浙江', '1.png', '朱发', '201803261948085716', '15703600450', '06pcdc655rpqa@263.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('96', '绍兴信息小学001', '1', '9.png', '测试介绍001', '金华', '浙江', '1.png', '王利', '201803261948086342', '13907751752', '7dwntj0x7i8tx4s@3721.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('97', '丽水测试学校003', '1', '3.png', '测试介绍006', '温州', '浙江', '6.png', '戴娟娟', '201803261948083593', '15604818424', 'b54abhsw7f@yeah.net', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('98', '嘉兴信息学院002', '3', '4.png', '测试介绍007', '嘉兴', '浙江', '8.png', '苗留', '201803261948088643', '13101148840', '0qus7vj14kpd@googlemail.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('99', '台州测试学校004', '1', '4.png', '测试介绍004', '舟山', '浙江', '6.png', '韩美丽', '201803261948086145', '13908376361', '0j0urjd3l4kjsj@hotmail.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('100', '温州通信学院001', '3', '10.png', '测试介绍006', '宁波', '浙江', '6.png', '毛美丽', '201803261948088528', '13607935881', '830ek1a1lg5@msn.com', '0', '2016-08-11 23:45:55', '2011-09-01 08:09:43');
INSERT INTO `enter` VALUES ('101', '舟山某机构004', '2', '8.png', '测试介绍006', '宁波', '浙江', '0.png', '胡发', '201803261948244467', '15908686189', 'iz0p7iuroard7wukr@googlemail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('102', '宁波某机构004', '3', '8.png', '测试介绍007', '台州', '浙江', '1.png', '习改', '201803261948243369', '15208153271', 'm86igo0thwhr34@msn.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('103', '衡州某机构003', '1', '3.png', '测试介绍002', '宁波', '浙江', '9.png', '韩大', '201803261948242864', '13901833242', '49qu9bb3kf@yahoo.com.cn', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('104', '嘉兴通信学院001', '3', '6.png', '测试介绍001', '衡州', '浙江', '5.png', '陈陆', '201803261948249191', '15204534095', '2qm3vjmfwhzjm90l@aol.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('105', '丽水信息小学002', '3', '6.png', '测试介绍002', '丽水', '浙江', '1.png', '朱娟', '201803261948248444', '13007205601', '4nj0zeuygulu6807@yahoo.com.cn', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('106', '衡州某机构003', '2', '0.png', '测试介绍002', '舟山', '浙江', '7.png', '陈克', '201803261948243559', '15903940295', 'ubx99ychtody@126.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('107', '丽水信息小学001', '1', '1.png', '测试介绍004', '绍兴', '浙江', '5.png', '张发', '201803261948242870', '15206820598', 'ox0shqud0k7be@sohu.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('108', '金华测试学校004', '1', '10.png', '测试介绍006', '杭州', '浙江', '0.png', '胡空间', '201803261948246985', '15102772110', 'ignhlxjvvwwhxi2r@yahoo.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('109', '丽水测试学校004', '3', '4.png', '测试介绍005', '杭州', '浙江', '9.png', '习长城', '201803261948247451', '15905246704', '4y9saqa4r8ibwj0bj1ia@263.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('110', '舟山测试学校004', '2', '10.png', '测试介绍006', '嘉兴', '浙江', '3.png', '胡胡霍', '201803261948245928', '15307582989', '1dwz7kwk991s41ula@163.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('111', '台州测试学校003', '3', '5.png', '测试介绍001', '衡州', '浙江', '10.png', '胡层层', '201803261948244075', '15507220599', 'x6yalbah7llzy@msn.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('112', '台州通信学院001', '1', '8.png', '测试介绍006', '舟山', '浙江', '3.png', '胡娟娟', '201803261948247583', '15005938282', '8ovrqblav0@3721.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('113', '舟山信息小学001', '3', '1.png', '测试介绍004', '金华', '浙江', '1.png', '赵长城', '201803261948246299', '15701701520', 'x89fq03d6@yeah.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('114', '衡州测试学校003', '2', '8.png', '测试介绍002', '嘉兴', '浙江', '7.png', '苗利', '201803261948244531', '13004342712', 'dct38vqch3@qq.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('115', '衡州信息小学001', '3', '3.png', '测试介绍003', '宁波', '浙江', '2.png', '戴层层', '201803261948246670', '15700505025', 'bizwhmvel4g5@ask.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('116', '丽水信息学院002', '3', '5.png', '测试介绍005', '绍兴', '浙江', '0.png', '习娟', '201803261948245577', '15101957676', 'bv8q8buojxun5shs@126.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('117', '舟山测试学校004', '1', '10.png', '测试介绍005', '丽水', '浙江', '2.png', '周改', '201803261948249726', '13904582466', '4t2bvxmzycq3zq7javmn@sohu.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('118', '宁波某机构003', '3', '8.png', '测试介绍004', '温州', '浙江', '7.png', '习航空', '201803261948248022', '13702327273', '8xt8pgcdfg@googlemail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('119', '嘉兴信息小学001', '3', '7.png', '测试介绍002', '金华', '浙江', '8.png', '韩人', '201803261948241789', '13803654161', 'rqxuhl1w9r3zry@163.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('120', '衡州某机构004', '3', '8.png', '测试介绍006', '衡州', '浙江', '5.png', '李娟', '201803261948249753', '13304727356', 'b7gidqtyji618vspo@163.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('121', '温州通信学院001', '1', '4.png', '测试介绍003', '丽水', '浙江', '5.png', '赵莉莉', '201803261948248677', '13007463132', '6tgky39clk1aqp@msn.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('122', '杭州信息学院001', '3', '3.png', '测试介绍004', '衡州', '浙江', '3.png', '朱娜娜', '201803261948242980', '15704253034', '902n1992dqpb4ii9@yahoo.com.cn', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('123', '丽水测试学校003', '1', '3.png', '测试介绍006', '金华', '浙江', '8.png', '戴我', '201803261948240927', '13604652699', '687sxbdyz0gn3n2wbwk@googlemail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('124', '杭州测试学校004', '3', '2.png', '测试介绍004', '舟山', '浙江', '3.png', '韩留', '201803261948245396', '13302896931', 'yf32cgon636vvu0mtdal@gmail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('125', '舟山某机构003', '1', '10.png', '测试介绍003', '湖州', '浙江', '7.png', '习代发', '201803261948245792', '13207406437', 'crz3ske0t6zgqm41x1u1@sina.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('126', '舟山测试学校003', '1', '4.png', '测试介绍003', '台州', '浙江', '0.png', '王胡霍', '201803261948242369', '13906050210', 'cpejk88eftp31h2@126.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('127', '宁波测试小学', '3', '8.png', '测试介绍005', '丽水', '浙江', '1.png', '朱利', '201803261948241323', '13006791147', 'b0ubbuwt9d@msn.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('128', '绍兴测试小学', '3', '4.png', '测试介绍003', '丽水', '浙江', '3.png', '苗改', '201803261948245662', '13108160479', '1ljnrvtn8qncpezvq60x@sina.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('129', '杭州测试学校004', '3', '5.png', '测试介绍001', '嘉兴', '浙江', '4.png', '陈空间', '201803261948242397', '15605432878', 'i4ootuc0vs48sf@sohu.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('130', '舟山某机构003', '3', '2.png', '测试介绍003', '嘉兴', '浙江', '5.png', '习犯的', '201803261948242624', '15508293408', 'wu5i00mxadxp6s3u1q@googlemail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('131', '温州某机构004', '2', '9.png', '测试介绍001', '温州', '浙江', '9.png', '武发', '201803261948246085', '13404317622', 'cvy9u7mbt27jad61@googlemail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('132', '温州信息学院001', '3', '4.png', '测试介绍004', '湖州', '浙江', '8.png', '王利', '201803261948247129', '15700690572', 'ojz0sf00ux7t@163.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('133', '嘉兴信息小学002', '3', '6.png', '测试介绍006', '宁波', '浙江', '0.png', '韩大', '201803261948241923', '15105796787', '89bw9ayxz0ds@live.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('134', '宁波测试学校004', '3', '1.png', '测试介绍002', '嘉兴', '浙江', '6.png', '毛晨光', '201803261948244996', '15100562812', 'jytt1ppsa0@googlemail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('135', '杭州通信学院001', '3', '6.png', '测试介绍007', '丽水', '浙江', '9.png', '毛娟娟', '201803261948245285', '13102276839', 'es6dx432easa@263.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('136', '台州信息学院002', '2', '1.png', '测试介绍007', '宁波', '浙江', '7.png', '张丽', '201803261948240919', '13607183999', '6ixawgs9oncd4@msn.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('137', '绍兴信息学院001', '2', '0.png', '测试介绍001', '丽水', '浙江', '2.png', '韩代发', '201803261948248927', '13401678421', 'djgxxr0uohe85txhvp9s@aol.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('138', '舟山信息学院002', '1', '10.png', '测试介绍006', '舟山', '浙江', '4.png', '习留', '201803261948240563', '15007021015', 'ukc695q5satg4kyus@126.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('139', '金华信息学院002', '3', '8.png', '测试介绍001', '嘉兴', '浙江', '1.png', '朱和', '201803261948241466', '13001245379', 'mosmrzhsl@126.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('140', '绍兴通信学院001', '1', '2.png', '测试介绍004', '丽水', '浙江', '3.png', '陈代发', '201803261948246491', '13002702146', 'kiaenrr8jmy@yahoo.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('141', '杭州信息学院002', '3', '8.png', '测试介绍005', '宁波', '浙江', '3.png', '毛发', '201803261948245817', '15608050943', '7z07s50ezegi6z1k@googlemail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('142', '舟山信息学院002', '2', '0.png', '测试介绍004', '温州', '浙江', '7.png', '武丽', '201803261948242222', '15602140212', 'm6xrcsxqted6@3721.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('143', '丽水信息学院002', '1', '7.png', '测试介绍004', '台州', '浙江', '3.png', '王晨光', '201803261948248983', '13705768879', 'a9ylezwepx8cd2z7@126.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('144', '绍兴测试学校003', '2', '7.png', '测试介绍005', '衡州', '浙江', '9.png', '赵丽', '201803261948246245', '15806906454', '64ie2wpbw7@ask.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('145', '台州测试学校003', '1', '1.png', '测试介绍004', '杭州', '浙江', '3.png', '周利', '201803261948244410', '15601661546', 'khxvlyy3hk@126.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('146', '丽水某机构004', '3', '6.png', '测试介绍002', '杭州', '浙江', '1.png', '朱美丽', '201803261948246020', '13900204964', 'm7klqin1an6@aol.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('147', '衡州通信学院001', '2', '2.png', '测试介绍002', '宁波', '浙江', '2.png', '朱娜娜', '201803261948248375', '15804763907', 'eruy6nhtxs4u@0355.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('148', '嘉兴测试小学', '3', '8.png', '测试介绍001', '舟山', '浙江', '10.png', '周层层', '201803261948248872', '13207817427', '7p3gtp3fcbgrh9cqkkxu@163.net', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('149', '舟山测试学校004', '3', '5.png', '测试介绍001', '嘉兴', '浙江', '0.png', '胡晨光', '201803261948245489', '13107714889', 'w3er1uxzt5a7@gmail.com', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');
INSERT INTO `enter` VALUES ('150', '金华某机构003', '2', '1.png', '测试介绍007', '舟山', '浙江', '5.png', '戴明', '201803261948241865', '13100824599', 'npnw7ojynxelzeh56w@yahoo.com.cn', '0', '2015-01-17 00:02:14', '2011-11-15 04:58:04');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `exam_start_time` datetime NOT NULL,
  `exam_end_time` datetime NOT NULL,
  `exam_state` tinyint(2) NOT NULL DEFAULT '11',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of exam
-- ----------------------------

-- ----------------------------
-- Table structure for exam_item
-- ----------------------------
DROP TABLE IF EXISTS `exam_item`;
CREATE TABLE `exam_item` (
  `exam_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `exam_item_question` varchar(50) NOT NULL,
  `exam_item_score` tinyint(2) unsigned NOT NULL,
  `exam_item_type` tinyint(2) NOT NULL DEFAULT '3',
  `exam_item_option1` varchar(50) DEFAULT NULL,
  `exam_item_option2` varchar(50) DEFAULT NULL,
  `exam_item_option3` varchar(50) DEFAULT NULL,
  `exam_item_option4` varchar(50) DEFAULT NULL,
  `exam_item_answer` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`exam_item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of exam_item
-- ----------------------------

-- ----------------------------
-- Table structure for exercises
-- ----------------------------
DROP TABLE IF EXISTS `exercises`;
CREATE TABLE `exercises` (
  `exercises_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) unsigned NOT NULL,
  `exercises_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`exercises_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of exercises
-- ----------------------------

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `faculty_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) unsigned NOT NULL,
  `faculty_code` char(4) NOT NULL,
  `faculty_introduce` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`faculty_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of faculty
-- ----------------------------

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grade _id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) unsigned NOT NULL,
  `grade _course` int(11) unsigned NOT NULL,
  `grade_mark` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`grade _id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of grade
-- ----------------------------

-- ----------------------------
-- Table structure for grade_class
-- ----------------------------
DROP TABLE IF EXISTS `grade_class`;
CREATE TABLE `grade_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faculty_id` int(11) unsigned NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `class_code` char(4) NOT NULL,
  `class_introduce` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of grade_class
-- ----------------------------

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `knowledge_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowledge_content` varchar(255) NOT NULL,
  `knowledge_rank` tinyint(1) NOT NULL DEFAULT '1',
  `lesson_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`knowledge_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `lesson_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `lesson_title` varchar(20) NOT NULL,
  `lesson_video_url` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`lesson_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of lesson
-- ----------------------------

-- ----------------------------
-- Table structure for live_announcement
-- ----------------------------
DROP TABLE IF EXISTS `live_announcement`;
CREATE TABLE `live_announcement` (
  `live_announcement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `live_room_id` int(11) unsigned NOT NULL,
  `live_announcement_content` varchar(255) NOT NULL,
  `live_announcement_stick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`live_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of live_announcement
-- ----------------------------

-- ----------------------------
-- Table structure for live_room
-- ----------------------------
DROP TABLE IF EXISTS `live_room`;
CREATE TABLE `live_room` (
  `live_room_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `live_room_number` char(10) NOT NULL,
  `teacher_id` int(11) unsigned NOT NULL,
  `live_room_name` varchar(255) NOT NULL,
  `live_room_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `live_room_image` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`live_room_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of live_room
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_type` tinyint(1) NOT NULL,
  `message_ content` varchar(255) NOT NULL,
  `message_link` varchar(255) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for mistake
-- ----------------------------
DROP TABLE IF EXISTS `mistake`;
CREATE TABLE `mistake` (
  `mistake_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `exam_item_id` int(11) unsigned NOT NULL,
  `student_id` int(11) unsigned NOT NULL,
  `mistake_note` varchar(255) NOT NULL,
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`mistake_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mistake
-- ----------------------------

-- ----------------------------
-- Table structure for mycourse
-- ----------------------------
DROP TABLE IF EXISTS `mycourse`;
CREATE TABLE `mycourse` (
  `mycourse_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `course_id` int(11) unsigned NOT NULL,
  `learn_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`mycourse_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mycourse
-- ----------------------------

-- ----------------------------
-- Table structure for platform_course
-- ----------------------------
DROP TABLE IF EXISTS `platform_course`;
CREATE TABLE `platform_course` (
  `platform_course_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`platform_course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of platform_course
-- ----------------------------

-- ----------------------------
-- Table structure for platform_image
-- ----------------------------
DROP TABLE IF EXISTS `platform_image`;
CREATE TABLE `platform_image` (
  `platform_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `platform_information_id` int(11) unsigned NOT NULL,
  `platform_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`platform_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of platform_image
-- ----------------------------

-- ----------------------------
-- Table structure for platform_information
-- ----------------------------
DROP TABLE IF EXISTS `platform_information`;
CREATE TABLE `platform_information` (
  `platform_information_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `platform_information_title` varbinary(50) NOT NULL,
  `platform_information_content` varchar(255) NOT NULL,
  `platform_information_author` varchar(20) NOT NULL,
  `information_image_count` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`platform_information_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of platform_information
-- ----------------------------

-- ----------------------------
-- Table structure for practical_training
-- ----------------------------
DROP TABLE IF EXISTS `practical_training`;
CREATE TABLE `practical_training` (
  `practical_training_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `practical_training_describe` varchar(255) DEFAULT NULL,
  `practical_training_plan` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`practical_training_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of practical_training
-- ----------------------------

-- ----------------------------
-- Table structure for practice
-- ----------------------------
DROP TABLE IF EXISTS `practice`;
CREATE TABLE `practice` (
  `practice_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `exam_item_id` int(11) unsigned NOT NULL,
  `practice_answer` varchar(255) NOT NULL,
  `practice_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`practice_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of practice
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `school_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_code` char(5) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `school_badge` varchar(255) NOT NULL DEFAULT '0.png',
  `school_introduce` varchar(255) DEFAULT NULL,
  `school_background` varchar(255) NOT NULL DEFAULT '',
  `school_city` varchar(255) DEFAULT NULL,
  `school_province` varchar(255) DEFAULT NULL,
  `school_type` tinyint(2) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of school
-- ----------------------------

-- ----------------------------
-- Table structure for school_image
-- ----------------------------
DROP TABLE IF EXISTS `school_image`;
CREATE TABLE `school_image` (
  `school_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_information_id` int(11) unsigned NOT NULL,
  `school_image_url` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`school_image_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of school_image
-- ----------------------------

-- ----------------------------
-- Table structure for school_information
-- ----------------------------
DROP TABLE IF EXISTS `school_information`;
CREATE TABLE `school_information` (
  `school_information_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_information_title` varchar(50) NOT NULL,
  `school_information_author` varchar(20) NOT NULL,
  `school_information_content` varchar(255) NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `information_image_count` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `gmt_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`school_information_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of school_information
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) NOT NULL,
  `student_number` char(10) NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `faculty_id` int(11) unsigned NOT NULL,
  `class_id` int(11) unsigned NOT NULL,
  `student_password` char(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for subscribe
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `subscribe_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `live_room_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`subscribe_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `task_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(20) NOT NULL,
  `task _type` tinyint(1) NOT NULL DEFAULT '1',
  `course_id` int(11) unsigned NOT NULL,
  `task_start_time` datetime NOT NULL,
  `task_end_time` datetime NOT NULL,
  `task_state` tinyint(1) NOT NULL DEFAULT '1',
  `task_publish` int(11) unsigned NOT NULL,
  `task_link` varchar(255) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of task
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(20) NOT NULL,
  `school_id` int(11) unsigned NOT NULL,
  `teacher_number` char(10) NOT NULL,
  `teacher_password` char(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_account` char(12) NOT NULL,
  `user_password` char(40) NOT NULL,
  `user_phone` char(11) NOT NULL,
  `user_sex` char(2) NOT NULL DEFAULT '男',
  `user_age` tinyint(3) unsigned NOT NULL,
  `user_avatar` varchar(255) NOT NULL DEFAULT '0.png',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '120110040225', '123456', '18758576147', '男', '22', '0.png', '2018-03-24 22:20:05', '2018-03-24 22:20:09');
INSERT INTO `user` VALUES ('2', '120110056987', '123654', '18758576148', '女', '20', '0.png', '2018-03-24 22:20:37', '2018-03-24 22:20:39');
INSERT INTO `user` VALUES ('3', '156156561667', '123456', '18758576149', '男', '21', '0.png', '2018-03-24 22:20:59', '2018-03-24 22:21:03');
INSERT INTO `user` VALUES ('4', '326265894981', '123456', '18758576150', '女', '22', '0.png', '2018-03-24 22:21:32', '2018-03-24 22:21:36');
INSERT INTO `user` VALUES ('5', '121156106417', '123456', '15012345678', '男', '35', '0.png', '2018-03-24 22:22:08', '2018-03-24 22:22:11');

-- ----------------------------
-- Table structure for wallet
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `wallet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `wallet_password` char(40) NOT NULL,
  `wallet_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`wallet_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wallet
-- ----------------------------
