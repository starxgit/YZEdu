/*
Navicat MySQL Data Transfer

Source Server         : MySQL57-rain
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : yzedu

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-30 00:07:40
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
  `classification_own` int(1) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of enter
-- ----------------------------
INSERT INTO `enter` VALUES ('1', '杭州测试学校001', '2', '0.png', '这是第一个测试学校', '杭州', '浙江', '0.png', '张三', '120136198512041295', '18512369632', 'zhangs@163.com', '0', '2018-03-24 22:10:10', '2018-03-24 22:10:52');
INSERT INTO `enter` VALUES ('2', '杭州测试学校002', '2', '0.png', '2', '杭州', '浙江', '0.png', '李四', '120136198811114919', '15203681239', '1235ls@126.com', '0', '2018-03-24 22:12:52', '2018-03-24 22:13:31');
INSERT INTO `enter` VALUES ('3', '某机构001', '3', '0.png', '机构1', null, null, '0.png', '老王', '120341199011032314', '18866661111', '15315613@qq.com', '0', '2018-03-24 22:14:47', '2018-03-24 22:14:50');
INSERT INTO `enter` VALUES ('4', '杭州测试小学', '1', '0.png', '小学1', '杭州', '浙江', '0.png', '孙权', '439523198612061293', '13386791025', 'sunquan@163.com', '0', '2018-03-24 22:16:28', '2018-03-24 22:16:31');
INSERT INTO `enter` VALUES ('5', '舟山信息学院002', '1', '2.png', '测试介绍002', '舟山', '浙江', '4.png', '韩娟', '201803281206171228', '13602127306', 'qj6bqn8rg0exrkh7ol@msn.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('6', '杭州信息小学001', '1', '4.png', '测试介绍006', '舟山', '浙江', '2.png', '习莉莉', '201803281206173684', '15904515018', 'dct5i3m7994chmz@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('7', '舟山测试学校004', '3', '4.png', '测试介绍003', '嘉兴', '浙江', '1.png', '陈发', '201803281206171070', '15706043819', '7qf9ic7mmgrlgeok6s@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('8', '台州测试学校003', '2', '6.png', '测试介绍006', '衡州', '浙江', '7.png', '苗泰', '201803281206174458', '13605594651', '1l85uv9dn109lye20b@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('9', '衡州测试学校004', '2', '5.png', '测试介绍001', '绍兴', '浙江', '6.png', '苗改', '201803281206170237', '15804788590', 'lu5vyavvtmcge@sohu.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('10', '绍兴测试学校004', '1', '1.png', '测试介绍006', '台州', '浙江', '4.png', '戴办法', '201803281206176492', '15008133987', 'o0izoe235gfujcict@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('11', '宁波通信学院001', '1', '2.png', '测试介绍003', '丽水', '浙江', '0.png', '张代发', '201803281206176650', '15304181031', 'hehyugrjouvt4j849vzs@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('12', '金华通信学院001', '1', '6.png', '测试介绍002', '温州', '浙江', '3.png', '陈美丽', '201803281206176129', '13507452924', '42o3w0ao3vuok70zk@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('13', '衡州信息学院001', '3', '3.png', '测试介绍002', '温州', '浙江', '8.png', '周航空', '201803281206178945', '13301810559', 'pcxvzo3sne4h4uztrkhc@yahoo.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('14', '宁波信息学院002', '1', '1.png', '测试介绍001', '衡州', '浙江', '3.png', '胡娟娟', '201803281206172155', '13804216086', '263lp1509nm3sq8ni10@163.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('15', '衡州测试学校004', '3', '3.png', '测试介绍002', '绍兴', '浙江', '7.png', '陈克', '201803281206171374', '13002615668', '29a955bj3mnr3@163.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('16', '衡州信息小学002', '2', '3.png', '测试介绍005', '宁波', '浙江', '1.png', '毛利', '201803281206176356', '13407277285', 'zyn2scyuny15znh@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('17', '衡州测试学校004', '1', '0.png', '测试介绍004', '金华', '浙江', '7.png', '韩我', '201803281206175487', '15505541747', 'gha2g9wfb36c@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('18', '杭州信息学院002', '1', '0.png', '测试介绍002', '嘉兴', '浙江', '6.png', '陈美丽', '201803281206173855', '13500971627', 'fg6kq7uf54h0y@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('19', '温州测试学校004', '3', '0.png', '测试介绍001', '湖州', '浙江', '5.png', '张胡霍', '201803281206171063', '15008083263', 'tzfajlbl866p@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('20', '衡州某机构004', '3', '1.png', '测试介绍002', '舟山', '浙江', '1.png', '苗长城', '201803281206170325', '13304654339', 'bbscccenba@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('21', '衡州信息学院001', '1', '3.png', '测试介绍002', '宁波', '浙江', '0.png', '毛层层', '201803281206178359', '13005206760', '40llg3jp0wsw2n7ciez@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('22', '金华测试学校004', '2', '7.png', '测试介绍006', '台州', '浙江', '6.png', '戴办法', '201803281206179543', '15307956358', '4n3htqc7gqhtykj55oy@sohu.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('23', '舟山通信学院001', '3', '10.png', '测试介绍006', '宁波', '浙江', '0.png', '戴长城', '201803281206170938', '13405608245', 'l118i7m0ij4wxfjgy@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('24', '宁波信息小学002', '3', '5.png', '测试介绍004', '杭州', '浙江', '3.png', '韩改', '201803281206173887', '15800750685', '0vvsn78p6s995f@sohu.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('25', '舟山测试学校004', '1', '9.png', '测试介绍005', '台州', '浙江', '6.png', '习克', '201803281206172663', '15107731160', 'cfahnd99vayyqmn5fex@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('26', '杭州测试小学', '1', '6.png', '测试介绍007', '丽水', '浙江', '4.png', '胡同', '201803281206170172', '13205280095', '5uhiuadka4eibm9@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('27', '金华信息小学002', '1', '8.png', '测试介绍006', '绍兴', '浙江', '0.png', '胡办法', '201803281206174606', '15804246954', 'c9m0fqkfpx0wc@yahoo.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('28', '金华信息小学001', '3', '5.png', '测试介绍007', '舟山', '浙江', '8.png', '赵泰', '201803281206170414', '13606001980', 'vftjkcmbkgkl3p@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('29', '台州某机构004', '2', '3.png', '测试介绍006', '舟山', '浙江', '5.png', '毛胡霍', '201803281206170090', '15108867809', 'v059u5avm@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('30', '宁波信息学院002', '1', '0.png', '测试介绍002', '衡州', '浙江', '7.png', '李我', '201803281206178885', '15903288967', 'q7kljp5zgn@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('31', '台州某机构003', '1', '7.png', '测试介绍003', '衡州', '浙江', '9.png', '武莉莉', '201803281206173012', '13706941521', 'igbs924yi@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('32', '温州测试学校003', '1', '7.png', '测试介绍003', '衡州', '浙江', '3.png', '李留', '201803281206170174', '13303857828', 'f8p9haxvd@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('33', '嘉兴某机构004', '3', '4.png', '测试介绍001', '湖州', '浙江', '7.png', '韩明', '201803281206175777', '13902798845', 'ci1b3e6cdfw2qoj4yw@yahoo.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('34', '丽水信息小学001', '1', '8.png', '测试介绍001', '宁波', '浙江', '2.png', '周留', '201803281206176578', '15303916939', 's4n0how5f1@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('35', '宁波信息小学002', '3', '2.png', '测试介绍003', '丽水', '浙江', '9.png', '毛代发', '201803281206172962', '15706520163', 'jvb85ur47syxo4zht@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('36', '嘉兴信息小学001', '1', '10.png', '测试介绍005', '金华', '浙江', '1.png', '苗和', '201803281206174333', '13800226246', 'sfsfdq79rf6uia4xj5m@googlemail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('37', '宁波测试小学', '1', '5.png', '测试介绍003', '温州', '浙江', '3.png', '苗留', '201803281206174545', '15108697713', '2ech44y2ylt8iqifp0@googlemail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('38', '舟山测试学校003', '1', '4.png', '测试介绍002', '湖州', '浙江', '7.png', '武改', '201803281206175991', '15807423684', 'vxqcxupw4de76tgv@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('39', '温州信息小学001', '2', '8.png', '测试介绍007', '丽水', '浙江', '6.png', '朱层层', '201803281206173042', '13705833394', 'vsxh8vsu2@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('40', '宁波信息学院001', '1', '6.png', '测试介绍002', '衡州', '浙江', '5.png', '王和', '201803281206179035', '13103496235', '3pf7qw5m85strsi3dphq@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('41', '丽水信息学院001', '2', '7.png', '测试介绍006', '杭州', '浙江', '6.png', '习美丽', '201803281206176583', '13306822825', 'ozpkbb6on42h@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('42', '嘉兴信息学院002', '3', '2.png', '测试介绍006', '温州', '浙江', '2.png', '张我', '201803281206178448', '15702560818', '8o4kd109dwqvaezqkdq@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('43', '宁波信息小学001', '2', '5.png', '测试介绍001', '衡州', '浙江', '2.png', '赵办法', '201803281206170155', '13104931064', 'ndpz8a2h52casitg94rz@163.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('44', '嘉兴某机构004', '2', '7.png', '测试介绍002', '衡州', '浙江', '10.png', '习留', '201803281206174475', '15307955958', '3fuaic43sp4ysdcps@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('45', '宁波测试学校004', '2', '4.png', '测试介绍007', '宁波', '浙江', '1.png', '武长城', '201803281206178646', '13900763868', '9p51gamf10mu5yum3@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('46', '台州某机构004', '3', '8.png', '测试介绍002', '台州', '浙江', '0.png', '习同', '201803281206174986', '13902414704', 'nsujlfjmbn99blt@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('47', '丽水信息小学002', '1', '0.png', '测试介绍002', '湖州', '浙江', '1.png', '毛胡霍', '201803281206175154', '13005957466', 'w62qetisuqp9@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('48', '衡州测试学校004', '3', '8.png', '测试介绍007', '杭州', '浙江', '6.png', '戴同', '201803281206176577', '15807321875', 'q8zpt7wa8wt0n3j8@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('49', '温州测试小学', '1', '5.png', '测试介绍007', '嘉兴', '浙江', '4.png', '朱人', '201803281206173193', '15506331324', 'kqxrh5jgjgfn21d@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('50', '温州某机构004', '2', '7.png', '测试介绍002', '温州', '浙江', '10.png', '王发', '201803281206174892', '13805480882', 'ljwi20k0pr2vfga0@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('51', '宁波测试学校004', '2', '2.png', '测试介绍003', '绍兴', '浙江', '3.png', '张莉莉', '201803281206176241', '13307437155', 'oeil8nsanp0w@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('52', '台州信息学院002', '1', '2.png', '测试介绍001', '舟山', '浙江', '5.png', '苗莉莉', '201803281206176761', '15806938707', 'fi1unxx3h4e88fe2rvi@qq.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('53', '绍兴信息学院001', '1', '3.png', '测试介绍007', '衡州', '浙江', '0.png', '韩美丽', '201803281206179901', '15204402094', 'yodkk0icnt8f709fb8@sohu.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('54', '温州测试小学', '3', '9.png', '测试介绍006', '丽水', '浙江', '4.png', '陈娟娟', '201803281206174790', '13307068612', 'xtsx5rpc18ckmwbabm@163.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('55', '衡州通信学院001', '3', '7.png', '测试介绍004', '台州', '浙江', '5.png', '赵明', '201803281206178379', '13802461994', '18fte1hhzxx6wmivzz6@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('56', '嘉兴信息学院002', '1', '9.png', '测试介绍003', '温州', '浙江', '2.png', '李娟', '201803281206177770', '13000931953', 'aura5bvco@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('57', '舟山测试学校003', '1', '0.png', '测试介绍007', '舟山', '浙江', '4.png', '苗改', '201803281206176155', '13102291390', 'lhd5pt6jvtc69quzrcy@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('58', '杭州信息学院002', '3', '5.png', '测试介绍004', '杭州', '浙江', '7.png', '朱晨光', '201803281206172813', '13300737389', 'sxr9ri8iax6o9460@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('59', '衡州信息学院002', '1', '2.png', '测试介绍004', '绍兴', '浙江', '10.png', '周泰', '201803281206171381', '15301513341', '90fa8tsk3d9@yahoo.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('60', '丽水测试学校004', '1', '2.png', '测试介绍005', '台州', '浙江', '8.png', '武娟', '201803281206170644', '13106387034', 'q316773ohcjb5pwccxcb@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('61', '台州信息学院001', '1', '0.png', '测试介绍007', '宁波', '浙江', '8.png', '毛晨光', '201803281206176143', '13408151586', '5f287ebo00@163.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('62', '舟山某机构004', '3', '1.png', '测试介绍003', '舟山', '浙江', '0.png', '胡大', '201803281206170826', '13001492675', 'tjo97lkpwsbihk0k2@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('63', '金华某机构004', '2', '4.png', '测试介绍004', '绍兴', '浙江', '5.png', '戴胡霍', '201803281206174857', '15907356711', '1sexuz0oz49w@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('64', '绍兴某机构004', '3', '3.png', '测试介绍003', '宁波', '浙江', '2.png', '王办法', '201803281206174861', '15702094133', 'd4l4xsz1mb@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('65', '衡州某机构004', '2', '8.png', '测试介绍007', '嘉兴', '浙江', '9.png', '戴娜娜', '201803281206170648', '15001673172', 'jmkm4ehda76usdesjp4d@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('66', '温州某机构003', '2', '6.png', '测试介绍003', '台州', '浙江', '9.png', '胡留', '201803281206176703', '13706881014', '39cfos78y1jwp@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('67', '丽水信息小学001', '2', '10.png', '测试介绍006', '舟山', '浙江', '6.png', '赵留', '201803281206176902', '15100038555', '8rbo3wd2sx7@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('68', '金华信息学院001', '3', '4.png', '测试介绍006', '湖州', '浙江', '10.png', '赵丽', '201803281206173129', '15906383143', 'sxnh15tg26enxgpz0@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('69', '嘉兴信息学院002', '2', '1.png', '测试介绍004', '湖州', '浙江', '7.png', '朱明', '201803281206176749', '15506770157', 'll0vaawp7by9m0klo9@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('70', '台州测试学校003', '2', '2.png', '测试介绍003', '台州', '浙江', '10.png', '李层层', '201803281206175920', '15202128025', '9vew25n57e9s5ymbn2n0@msn.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('71', '宁波测试学校004', '1', '10.png', '测试介绍001', '湖州', '浙江', '1.png', '武晨光', '201803281206170837', '15207727901', 'ltx01o1fw4hzt@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('72', '绍兴信息小学001', '2', '3.png', '测试介绍006', '温州', '浙江', '5.png', '韩娟娟', '201803281206177551', '15908660907', 'piqz0uiae@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('73', '金华信息小学001', '1', '5.png', '测试介绍002', '衡州', '浙江', '3.png', '戴改', '201803281206177861', '13505212887', 'cwvlzttqjkafloeif2@163.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('74', '金华测试小学', '1', '5.png', '测试介绍006', '宁波', '浙江', '0.png', '陈层层', '201803281206174334', '15107203391', '03fs34z6a1fr@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('75', '温州测试学校003', '3', '3.png', '测试介绍003', '嘉兴', '浙江', '4.png', '赵层层', '201803281206170104', '13708695121', 'toj3ji3a0ph83m8@263.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('76', '金华信息学院001', '3', '7.png', '测试介绍005', '金华', '浙江', '0.png', '习陆', '201803281206174591', '15608147454', '19w1r99bzl4k7osr1is@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('77', '杭州通信学院001', '3', '8.png', '测试介绍004', '温州', '浙江', '8.png', '李留', '201803281206170443', '13500440866', 'ky67e5x0lo@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('78', '金华某机构003', '2', '9.png', '测试介绍004', '台州', '浙江', '0.png', '武和', '201803281206171066', '15103182671', 'kei49v3u7q4@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('79', '舟山测试小学', '2', '6.png', '测试介绍006', '温州', '浙江', '4.png', '李陆', '201803281206179036', '15308712109', 'b6i1lst8qmx6605@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('80', '金华某机构003', '2', '8.png', '测试介绍001', '台州', '浙江', '1.png', '张娟娟', '201803281206176178', '15102077291', 'i8za8rj9gsgj47yi0@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('81', '丽水测试学校004', '2', '7.png', '测试介绍001', '宁波', '浙江', '1.png', '王改', '201803281206177260', '15008472504', 'ape05p6dbuztfp382@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('82', '丽水信息学院001', '2', '0.png', '测试介绍001', '衡州', '浙江', '1.png', '毛长城', '201803281206174670', '13902770166', '33xf8a2e1llm3b3gdo5@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('83', '金华信息学院001', '2', '1.png', '测试介绍004', '台州', '浙江', '8.png', '张代发', '201803281206178272', '15208820332', 'zww4z1nlzokzn@googlemail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('84', '舟山信息小学001', '1', '4.png', '测试介绍007', '杭州', '浙江', '0.png', '毛陆', '201803281206174246', '13007089080', 'ixv1wdmeddipcix5t2@263.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('85', '温州信息小学002', '1', '10.png', '测试介绍005', '台州', '浙江', '2.png', '戴层层', '201803281206170123', '15501447974', '987bt4v713at2i@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('86', '杭州测试小学', '2', '8.png', '测试介绍002', '丽水', '浙江', '9.png', '周犯的', '201803281206176864', '13603447527', 'i89ytancl0z88d@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('87', '舟山信息学院001', '2', '3.png', '测试介绍002', '舟山', '浙江', '0.png', '朱办法', '201803281206175921', '15100048056', 'qjxnaskgy@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('88', '金华测试小学', '1', '6.png', '测试介绍004', '金华', '浙江', '8.png', '韩克', '201803281206174668', '13000556598', 'rd8ruc4ig@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('89', '嘉兴信息小学002', '2', '0.png', '测试介绍002', '衡州', '浙江', '8.png', '张办法', '201803281206177825', '15603870323', 'f5ogzhdmjnovovgs2y4@yahoo.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('90', '温州测试小学', '2', '1.png', '测试介绍003', '衡州', '浙江', '7.png', '戴克', '201803281206176424', '15504241534', '5y0n2vc2ftxos470d@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('91', '舟山信息学院001', '2', '6.png', '测试介绍005', '湖州', '浙江', '10.png', '张利', '201803281206173388', '13703025564', 't2cia3qcpb6@yahoo.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('92', '宁波信息小学001', '2', '5.png', '测试介绍004', '台州', '浙江', '2.png', '习我', '201803281206178283', '15101072652', 'wosm87pucshod@163.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('93', '绍兴测试小学', '3', '8.png', '测试介绍005', '丽水', '浙江', '7.png', '习美丽', '201803281206175952', '15003485817', 'okz61tga7yt1094@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('94', '舟山某机构003', '1', '4.png', '测试介绍001', '台州', '浙江', '4.png', '苗长城', '201803281206171971', '15002225948', 'lyfu4nfe1@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('95', '绍兴通信学院001', '1', '7.png', '测试介绍006', '宁波', '浙江', '10.png', '李人', '201803281206178625', '15503444104', 'i66l669a7j@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('96', '绍兴测试学校004', '3', '4.png', '测试介绍006', '丽水', '浙江', '8.png', '韩娜娜', '201803281206172615', '13103683477', 'rr3trzu9ka9vzmokwr@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('97', '宁波信息小学002', '1', '1.png', '测试介绍007', '舟山', '浙江', '7.png', '武和', '201803281206173722', '13403174729', '8ehwourtdm@qq.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('98', '台州通信学院001', '3', '3.png', '测试介绍001', '绍兴', '浙江', '8.png', '李改', '201803281206173251', '13502583768', 'naqy93v4rj7lojf@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('99', '金华测试小学', '3', '9.png', '测试介绍001', '杭州', '浙江', '1.png', '毛陆', '201803281206170091', '13707056153', '0l9ahhfhsirgs@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('100', '绍兴信息小学001', '1', '10.png', '测试介绍005', '绍兴', '浙江', '3.png', '胡空间', '201803281206177622', '13208604236', '4qug9aub0ds9q8ls@163.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('101', '衡州测试学校004', '1', '6.png', '测试介绍005', '温州', '浙江', '6.png', '毛航空', '201803281206178629', '13903465200', 'e1qd69wx68wf6lrsh@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('102', '温州某机构003', '2', '5.png', '测试介绍002', '杭州', '浙江', '3.png', '韩克', '201803281206179163', '15800147417', 'deyo9b2j6yawq@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('103', '丽水信息学院002', '1', '1.png', '测试介绍005', '衡州', '浙江', '6.png', '毛层层', '201803281206177512', '13002538348', 'qdl112cf4qvodf@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('104', '金华通信学院001', '1', '4.png', '测试介绍005', '嘉兴', '浙江', '5.png', '毛明', '201803281206170494', '13801777485', 'j90xt9iz6tzkk@263.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('105', '杭州测试小学', '1', '0.png', '测试介绍006', '丽水', '浙江', '1.png', '戴泰', '201803281206170316', '15606626401', '496tipwkqfqv@yahoo.com.cn', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('106', '衡州测试小学', '2', '8.png', '测试介绍002', '丽水', '浙江', '7.png', '张航空', '201803281206174279', '13502337703', 'jus7ijj6wrq4p3nev4fq@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('107', '舟山信息小学002', '1', '2.png', '测试介绍001', '金华', '浙江', '0.png', '王空间', '201803281206170344', '13206960969', 'ajadokzdcu8oyfv@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('108', '杭州信息小学002', '1', '5.png', '测试介绍001', '金华', '浙江', '10.png', '陈莉莉', '201803281206179917', '13508592545', 'sma8auvquj0crabvq@sohu.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('109', '丽水信息学院001', '1', '0.png', '测试介绍002', '绍兴', '浙江', '6.png', '张莉莉', '201803281206179979', '13402900541', 'whqaxh8pw6m3fov18yiw@live.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('110', '嘉兴测试小学', '3', '5.png', '测试介绍005', '杭州', '浙江', '6.png', '胡大', '201803281206170853', '13207164347', 'hdcjfad1tz0o3vy9o@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('111', '衡州测试学校003', '1', '4.png', '测试介绍007', '金华', '浙江', '10.png', '赵代发', '201803281206178592', '13407313267', 'c0t91gjpyigo@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('112', '丽水某机构003', '1', '1.png', '测试介绍007', '绍兴', '浙江', '10.png', '习娟', '201803281206175284', '15102588289', 'k84ygr5gqkn4duh4kel9@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('113', '衡州测试学校004', '1', '0.png', '测试介绍007', '宁波', '浙江', '7.png', '苗我', '201803281206177636', '13407888567', '96gl1shcn@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('114', '杭州信息小学002', '3', '6.png', '测试介绍004', '宁波', '浙江', '5.png', '习美丽', '201803281206170529', '15808696403', 'y40lbukqgw@qq.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('115', '衡州测试学校004', '1', '6.png', '测试介绍007', '丽水', '浙江', '8.png', '戴我', '201803281206171075', '13802634532', 'rbtkumz38xfojxy3y1x@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('116', '宁波测试小学', '1', '2.png', '测试介绍007', '湖州', '浙江', '5.png', '毛和', '201803281206179395', '13803680463', 'vac56h0lm@163.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('117', '绍兴某机构004', '3', '5.png', '测试介绍007', '金华', '浙江', '5.png', '李留', '201803281206170330', '15007292925', '4ft6axl8hsicg@yeah.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('118', '绍兴测试学校004', '3', '8.png', '测试介绍001', '台州', '浙江', '9.png', '习长城', '201803281206178606', '13606557871', '8op4rylguli3y@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('119', '台州测试小学', '2', '2.png', '测试介绍002', '绍兴', '浙江', '0.png', '周娟', '201803281206175776', '13704157110', 'jlt8dv6oa7hqb@yahoo.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('120', '温州信息小学002', '2', '7.png', '测试介绍001', '台州', '浙江', '6.png', '毛丽', '201803281206173946', '13901301155', 'gmqq2zmwtdgezo@163.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('121', '杭州测试小学', '1', '1.png', '测试介绍001', '湖州', '浙江', '7.png', '朱明', '201803281206174809', '13602322791', 'ejg0ci98k2r1@qq.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('122', '宁波信息小学002', '3', '2.png', '测试介绍007', '金华', '浙江', '3.png', '习大', '201803281206173954', '15700073367', '6kiprz5ep0wtgcht1n@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('123', '舟山测试学校004', '2', '8.png', '测试介绍005', '宁波', '浙江', '2.png', '武长城', '201803281206175049', '13602868932', 'qgl5ncj6qat@263.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('124', '金华信息小学001', '1', '0.png', '测试介绍001', '宁波', '浙江', '2.png', '王娟', '201803281206177268', '15000385686', 'q5e0ao76o@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('125', '台州某机构004', '2', '2.png', '测试介绍003', '绍兴', '浙江', '5.png', '胡办法', '201803281206177175', '13908765183', 'c17fk4qftu@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('126', '杭州信息学院001', '1', '10.png', '测试介绍003', '湖州', '浙江', '3.png', '朱我', '201803281206175799', '13102290992', 'ns8o9plwb52c97kg21e@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('127', '衡州信息小学002', '1', '4.png', '测试介绍007', '杭州', '浙江', '9.png', '武代发', '201803281206179026', '13605652833', 'bmu9wtmhi1@263.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('128', '嘉兴通信学院001', '2', '5.png', '测试介绍006', '衡州', '浙江', '6.png', '陈层层', '201803281206172657', '15107225035', 'f29k1sthp5vddb0t3g@263.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('129', '金华测试学校003', '3', '2.png', '测试介绍001', '衡州', '浙江', '7.png', '戴改', '201803281206173021', '13901108493', 'kpalxajfya9t64jjm53@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('130', '杭州某机构004', '2', '9.png', '测试介绍004', '台州', '浙江', '5.png', '赵莉莉', '201803281206171083', '15905786168', 'j32t6yxs2jf2@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('131', '杭州测试小学', '2', '2.png', '测试介绍002', '衡州', '浙江', '0.png', '韩航空', '201803281206174872', '13407280841', '01nqqecy1bn@googlemail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('132', '丽水通信学院001', '1', '4.png', '测试介绍002', '丽水', '浙江', '4.png', '王长城', '201803281206170763', '13108365681', 'e1rmrzflt7vthttt@263.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('133', '宁波测试学校004', '3', '4.png', '测试介绍005', '嘉兴', '浙江', '0.png', '张航空', '201803281206176202', '15703777108', 'ejcfimiexj@163.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('134', '舟山测试学校004', '3', '7.png', '测试介绍002', '金华', '浙江', '9.png', '韩泰', '201803281206177477', '13106362078', 'xnwg0fsdxpcbrv@3721.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('135', '台州信息小学002', '2', '1.png', '测试介绍004', '嘉兴', '浙江', '3.png', '毛大', '201803281206176564', '15000247265', '386p2ipz8gknnngk@googlemail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('136', '宁波信息学院002', '3', '10.png', '测试介绍006', '温州', '浙江', '10.png', '陈克', '201803281206176305', '15603535262', 'fbdgcnakdnv0rdlii@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('137', '嘉兴某机构003', '2', '8.png', '测试介绍003', '湖州', '浙江', '6.png', '王克', '201803281206174124', '15708533204', 'ef21fepp85gdvafj7@sina.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('138', '宁波某机构003', '1', '0.png', '测试介绍003', '丽水', '浙江', '9.png', '李陆', '201803281206172578', '13104056699', 'cp2rh6qrp4h1@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('139', '衡州信息小学002', '3', '6.png', '测试介绍001', '宁波', '浙江', '5.png', '毛层层', '201803281206172478', '13705796344', '3mzo0a0ln24o5qben14@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('140', '温州通信学院001', '3', '6.png', '测试介绍004', '丽水', '浙江', '4.png', '李办法', '201803281206173974', '13004036742', '6filkqtc3o@163.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('141', '金华测试学校003', '3', '2.png', '测试介绍002', '温州', '浙江', '9.png', '王我', '201803281206179612', '15806244163', '4a3l54klj3pzsg9v@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('142', '舟山通信学院001', '1', '4.png', '测试介绍002', '嘉兴', '浙江', '1.png', '周克', '201803281206179660', '13505999054', 'zvuiuxdi8ee@126.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('143', '金华信息小学002', '3', '10.png', '测试介绍001', '台州', '浙江', '2.png', '习大', '201803281206172200', '15601436638', 'iwg0yslo0oqwc@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('144', '杭州某机构004', '2', '1.png', '测试介绍001', '金华', '浙江', '10.png', '张晨光', '201803281206171355', '15900184813', 'b6olqjobkubiilj2wgf@hotmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('145', '温州测试学校003', '2', '8.png', '测试介绍003', '绍兴', '浙江', '2.png', '苗娜娜', '201803281206173928', '13307651859', 'fy0ayg1ps@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('146', '嘉兴测试小学', '2', '5.png', '测试介绍003', '丽水', '浙江', '5.png', '王犯的', '201803281206178563', '15807052055', 'b5ngtmf1m@aol.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('147', '台州通信学院001', '1', '0.png', '测试介绍001', '金华', '浙江', '1.png', '戴克', '201803281206175027', '13405237044', 'f00ajepc731y35dd3@163.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('148', '舟山通信学院001', '3', '2.png', '测试介绍007', '宁波', '浙江', '2.png', '张改', '201803281206171213', '13702196089', 'cq22gc1odyqfy2w@ask.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('149', '丽水某机构003', '1', '0.png', '测试介绍007', '台州', '浙江', '8.png', '朱同', '201803281206174756', '13808526688', '7lqi9wv7bdzl8m@0355.net', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('150', '衡州信息学院001', '3', '0.png', '测试介绍001', '绍兴', '浙江', '8.png', '赵利', '201803281206172906', '13001087051', 'dmvh92pc4ohz@gmail.com', '0', '2017-12-30 23:37:09', '2018-03-12 21:41:26');
INSERT INTO `enter` VALUES ('151', '宁波信息小学002', '2', '7.png', '测试介绍005', '绍兴', '浙江', '10.png', '王办法', '201803281717197772', '13504820961', 'pvufmwaes3zte1a6e@ask.com', '0', '2017-11-23 18:52:19', '2018-01-18 22:36:56');

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
  `school_id` int(11) unsigned NOT NULL DEFAULT '0',
  `faculty_code` char(4) NOT NULL DEFAULT '',
  `faculty_name` varchar(50) NOT NULL DEFAULT '',
  `faculty_introduce` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`faculty_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6240 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO `faculty` VALUES ('5826', '305', 'cffc', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5827', '305', '9243', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5828', '305', 'f4de', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5829', '305', 'eb04', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5830', '305', '1718', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5831', '309', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5832', '317', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5834', '329', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5835', '333', '207e', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5836', '333', 'e567', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5837', '333', '72c9', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5838', '333', 'bca1', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5839', '333', '43d5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5840', '341', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5841', '345', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5842', '353', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5843', '357', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5844', '365', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5845', '369', '012c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5846', '369', '7a09', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5847', '369', 'e479', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5848', '369', 'c701', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5849', '369', 'be9b', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5850', '377', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5851', '381', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5852', '389', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5853', '393', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5854', '401', '9f3e', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5855', '401', 'd99d', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5856', '401', '50cf', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5857', '401', 'bac3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5858', '401', 'bc70', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5859', '405', 'ffb9', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5860', '405', '584e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5861', '405', '9d22', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5862', '405', '04a2', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5863', '405', '9692', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5864', '413', '7dac', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5865', '413', 'b543', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5866', '413', '3fe5', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5867', '413', '2043', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5868', '413', '51bf', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5869', '417', 'ff42', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5870', '417', 'ca0d', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5871', '417', 'ab96', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5872', '417', '0551', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5873', '417', '16d3', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5874', '425', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5875', '429', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5876', '437', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5877', '441', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5878', '449', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5879', '453', '85a5', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5880', '453', '406e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5881', '453', '3a84', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5882', '453', '29ab', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5883', '453', '7dd9', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5884', '461', 'bdbc', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5885', '461', '30fd', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5886', '461', 'a126', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5887', '461', 'cb8b', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5888', '461', '9eb0', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5889', '465', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5890', '473', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5891', '477', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5892', '485', '791b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5893', '485', 'd816', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5894', '485', '270a', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5895', '485', '5cc4', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5896', '485', '73af', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5897', '489', '8959', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5898', '489', '3e29', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5899', '489', '71ab', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5900', '489', '1769', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5901', '489', '1062', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5902', '497', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5903', '501', '8d1a', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5904', '501', 'cefc', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5905', '501', 'cb83', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5906', '501', '9707', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5907', '501', '9f39', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5908', '509', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5909', '513', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5910', '521', 'cbe6', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5911', '521', '1288', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5912', '521', 'b089', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5913', '521', '37ac', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5914', '521', '6fc5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5915', '525', '4614', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5916', '525', 'e410', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5917', '525', '6247', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5918', '525', '6860', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5919', '525', 'd04a', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5920', '533', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5921', '537', 'b81f', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5922', '537', 'abf4', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5923', '537', 'c214', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5924', '537', '9afb', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5925', '537', 'a854', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5926', '545', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5927', '549', 'ced7', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5928', '549', '44ee', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5929', '549', 'c0e7', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5930', '549', '0984', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5931', '549', '2daa', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5932', '557', '1849', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5933', '557', 'ebe3', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5934', '557', '454f', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5935', '557', '80be', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5936', '557', 'e727', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5937', '561', '1389', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5938', '561', 'b51a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5939', '561', '9c4d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5940', '561', '726d', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5941', '561', '1e3f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5942', '569', '63f2', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5943', '569', 'd8a6', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5944', '569', '44d0', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5945', '569', '8e2b', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5946', '569', 'a86f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5947', '573', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5948', '581', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5949', '585', '62e4', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5950', '585', 'c3f2', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5951', '585', '37d2', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5952', '585', 'f7e3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5953', '585', '87a0', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5954', '593', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5955', '597', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5956', '605', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5957', '609', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5958', '617', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5959', '621', 'a1c1', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5960', '621', 'a48f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5961', '621', 'a707', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5962', '621', 'b743', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5963', '621', 'cdcc', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5964', '629', '0093', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5965', '629', '0fa7', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5966', '629', '618d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5967', '629', '3209', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5968', '629', '6231', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5969', '633', '8a47', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5970', '633', '336f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5971', '633', 'a034', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5972', '633', '4f93', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5973', '633', '849e', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5974', '641', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5975', '645', '8d3c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5976', '645', '0558', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5977', '645', '7b47', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5978', '645', '2ce3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5979', '645', 'e542', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5980', '653', 'b563', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5981', '653', '1f2b', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5982', '653', '79c5', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5983', '653', 'ac26', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5984', '653', 'b689', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5985', '657', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5986', '665', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5987', '669', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5988', '677', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5989', '681', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5990', '689', 'dbef', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5991', '689', '58c5', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5992', '689', '9a3f', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5993', '689', '5d39', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5994', '689', '814b', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5995', '693', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5996', '701', '4e4c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5997', '701', 'dff5', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5998', '701', 'f029', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('5999', '701', '4ca1', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6000', '701', '83ce', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6001', '705', '12b3', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6002', '705', 'ed22', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6003', '705', 'bc0d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6004', '705', 'abe6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6005', '705', '3af4', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6006', '713', '7dfb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6007', '713', 'fc22', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6008', '713', '49ba', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6009', '713', '46f7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6010', '713', 'a527', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6011', '717', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6012', '725', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6013', '729', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6014', '737', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6015', '741', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6016', '749', '3b42', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6017', '749', '9446', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6018', '749', '1f31', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6019', '749', '63fc', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6020', '749', 'e10a', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6021', '753', '59e5', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6022', '753', '1916', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6023', '753', 'ffc0', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6024', '753', '39df', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6025', '753', '32d6', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6026', '761', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6027', '765', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6028', '773', '7b4d', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6029', '773', '2ac8', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6030', '773', '3b91', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6031', '773', 'f7f3', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6032', '773', '8889', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6033', '777', '62ca', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6034', '777', '854f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6035', '777', '3e38', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6036', '777', '7887', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6037', '777', 'e4fc', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6038', '785', '4b0b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6039', '785', 'e5c2', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6040', '785', '6006', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6041', '785', '2713', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6042', '785', '810f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6043', '789', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6044', '797', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6045', '801', '646a', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6046', '801', 'dfb0', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6047', '801', 'a4c0', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6048', '801', '668a', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6049', '801', '3fae', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6050', '809', 'b8bb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6051', '809', 'a895', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6052', '809', '1005', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6053', '809', 'de5c', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6054', '809', 'da95', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6055', '813', '6364', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6056', '813', '4014', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6057', '813', '3dad', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6058', '813', '3400', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6059', '813', '47e8', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6060', '821', '7d9e', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6061', '821', '07c9', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6062', '821', 'ec21', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6063', '821', '87c9', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6064', '821', '9900', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6065', '825', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6066', '833', '8fcb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6067', '833', '5fd7', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6068', '833', '875e', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6069', '833', '1494', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6070', '833', 'fad4', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6071', '837', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6072', '845', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6073', '849', '7aa0', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6074', '849', 'ad3a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6075', '849', '1f08', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6076', '849', '412f', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6077', '849', '06d7', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6078', '857', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6079', '861', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6080', '869', '7cb8', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6081', '869', 'c006', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6082', '869', '412e', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6083', '869', 'e3fe', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6084', '869', 'acc9', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6085', '873', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6086', '881', 'c94d', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6087', '881', '6e3d', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6088', '881', 'd5c2', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6089', '881', 'd9f7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6090', '881', 'd475', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6091', '885', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6092', '893', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6093', '897', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6094', '905', 'fccd', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6095', '905', '9e07', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6096', '905', '9c2b', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6097', '905', '4976', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6098', '905', '1f09', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6099', '909', '5940', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6100', '909', 'dc74', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6101', '909', 'a348', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6102', '909', '340a', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6103', '909', '0132', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6104', '917', '0363', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6105', '917', 'd25e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6106', '917', '4c66', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6107', '917', '6120', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6108', '917', 'ed97', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6109', '921', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6110', '929', '62e7', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6111', '929', '787a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6112', '929', 'c9e9', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6113', '929', '414b', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6114', '929', '4b53', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6115', '933', '4d3b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6116', '933', '85f8', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6117', '933', '87ea', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6118', '933', '3334', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6119', '933', '426c', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6120', '941', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6121', '945', '237b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6122', '945', 'cdaf', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6123', '945', '2a46', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6124', '945', '8024', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6125', '945', 'a9c5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6126', '953', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6127', '957', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6128', '965', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6129', '969', '8d1b', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6130', '969', 'af4e', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6131', '969', 'a95c', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6132', '969', 'd4dc', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6133', '969', '1a70', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6134', '977', '16a5', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6135', '977', '3fac', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6136', '977', '191c', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6137', '977', '74ff', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6138', '977', 'e063', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6139', '981', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6140', '989', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6141', '993', '5c58', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6142', '993', 'db1c', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6143', '993', 'f9ba', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6144', '993', '4434', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6145', '993', '5dfe', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6146', '1001', '0484', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6147', '1001', '5890', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6148', '1001', '10b2', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6149', '1001', 'f87f', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6150', '1001', '0ab1', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6151', '1005', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6152', '1013', '6d57', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6153', '1013', 'daea', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6154', '1013', '2bfb', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6155', '1013', 'f1f6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6156', '1013', '52b5', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6157', '1017', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6158', '1025', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6159', '1029', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6160', '1037', 'a6db', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6161', '1037', '9401', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6162', '1037', '9b63', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6163', '1037', 'e6b6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6164', '1037', '7944', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6165', '1041', '0b67', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6166', '1041', '021f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6167', '1041', 'b15d', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6168', '1041', 'b7b7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6169', '1041', '337a', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6170', '1049', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6171', '1053', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6172', '1061', '827d', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6173', '1061', '47c0', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6174', '1061', '8a21', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6175', '1061', 'fd5a', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6176', '1061', '1e4d', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6177', '1065', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6178', '1073', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6179', '1077', 'd2db', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6180', '1077', 'c819', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6181', '1077', '7f6c', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6182', '1077', '9fd6', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6183', '1077', '72b6', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6184', '1085', 'ad63', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6185', '1085', '794b', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6186', '1085', 'af8a', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6187', '1085', '4453', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6188', '1085', 'ebe3', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6189', '1089', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6190', '1097', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6191', '1101', '13db', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6192', '1101', '43dc', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6193', '1101', 'c6a7', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6194', '1101', 'c465', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6195', '1101', '1f32', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6196', '1109', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6197', '1113', '2d4c', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6198', '1113', '5444', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6199', '1113', '8800', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6200', '1113', 'bc92', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6201', '1113', 'f112', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6202', '1121', '4bfb', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6203', '1121', 'f98a', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6204', '1121', 'bc28', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6205', '1121', 'c95c', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6206', '1121', 'efb6', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6207', '1125', 'e0a9', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6208', '1125', '5760', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6209', '1125', '0645', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6210', '1125', 'a2d9', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6211', '1125', 'c3a8', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6212', '1133', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6213', '1137', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6214', '1145', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6215', '1149', 'baea', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6216', '1149', '9911', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6217', '1149', '0065', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6218', '1149', 'bf82', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6219', '1149', '087f', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6221', '1161', 'da69', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6222', '1161', 'bb3f', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6223', '1161', '0734', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6224', '1161', '140d', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6225', '1161', '24c4', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6226', '1169', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6227', '1173', 'e153', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6228', '1173', '4032', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6229', '1173', 'f1d7', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6230', '1173', '10b7', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6231', '1173', '0591', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6232', '1181', '3366', '计算机系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6233', '1181', '83ad', '会计系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6234', '1181', 'df15', '工商管理系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6235', '1181', '42f8', '外语系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6236', '1181', '6cab', '机械系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6237', '1185', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6238', '1193', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');
INSERT INTO `faculty` VALUES ('6239', '1197', '0000', '默认系', '测试介绍', '2018-01-01 00:00:00', '2018-01-01 00:00:00');

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
  `class_name` varchar(40) NOT NULL,
  `class_introduce` varchar(255) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1823 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of grade_class
-- ----------------------------
INSERT INTO `grade_class` VALUES ('167', '5826', '305', '55c7', '测试1班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('168', '5826', '305', '55c7', '测试2班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('169', '5826', '305', '55c7', '测试3班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('170', '5826', '305', '55c7', '测试4班', '这是班级介绍', '2018-02-24 08:14:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('171', '5827', '305', 'cc8e', '测试1班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('172', '5827', '305', 'cc8e', '测试2班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('173', '5827', '305', 'cc8e', '测试3班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('174', '5827', '305', 'cc8e', '测试4班', '这是班级介绍', '2018-01-01 20:36:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('175', '5828', '305', '3b7b', '测试1班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('176', '5828', '305', '3b7b', '测试2班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('177', '5828', '305', '3b7b', '测试3班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('178', '5828', '305', '3b7b', '测试4班', '这是班级介绍', '2018-03-17 09:34:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('179', '5829', '305', 'c8e2', '测试1班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('180', '5829', '305', 'c8e2', '测试2班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('181', '5829', '305', 'c8e2', '测试3班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('182', '5829', '305', 'c8e2', '测试4班', '这是班级介绍', '2018-01-02 04:51:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('183', '5830', '305', 'cef7', '测试1班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('184', '5830', '305', 'cef7', '测试2班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('185', '5830', '305', 'cef7', '测试3班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('186', '5830', '305', 'cef7', '测试4班', '这是班级介绍', '2018-01-28 22:29:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('187', '5831', '309', '3025', '测试1班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('188', '5831', '309', '3025', '测试2班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('189', '5831', '309', '3025', '测试3班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('190', '5831', '309', '3025', '测试4班', '这是班级介绍', '2018-03-12 19:27:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('191', '5832', '317', '68ee', '测试1班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('192', '5832', '317', '68ee', '测试2班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('193', '5832', '317', '68ee', '测试3班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('194', '5832', '317', '68ee', '测试4班', '这是班级介绍', '2018-03-23 13:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('199', '5834', '329', '2796', '测试1班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('200', '5834', '329', '2796', '测试2班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('201', '5834', '329', '2796', '测试3班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('202', '5834', '329', '2796', '测试4班', '这是班级介绍', '2018-02-26 15:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('203', '5835', '333', 'd10f', '测试1班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('204', '5835', '333', 'd10f', '测试2班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('205', '5835', '333', 'd10f', '测试3班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('206', '5835', '333', 'd10f', '测试4班', '这是班级介绍', '2018-02-22 18:38:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('207', '5836', '333', 'f68d', '测试1班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('208', '5836', '333', 'f68d', '测试2班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('209', '5836', '333', 'f68d', '测试3班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('210', '5836', '333', 'f68d', '测试4班', '这是班级介绍', '2018-03-14 23:42:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('211', '5837', '333', '0776', '测试1班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('212', '5837', '333', '0776', '测试2班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('213', '5837', '333', '0776', '测试3班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('214', '5837', '333', '0776', '测试4班', '这是班级介绍', '2018-03-02 12:27:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('215', '5838', '333', '83dc', '测试1班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('216', '5838', '333', '83dc', '测试2班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('217', '5838', '333', '83dc', '测试3班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('218', '5838', '333', '83dc', '测试4班', '这是班级介绍', '2018-03-11 13:18:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('219', '5839', '333', 'b9ed', '测试1班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('220', '5839', '333', 'b9ed', '测试2班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('221', '5839', '333', 'b9ed', '测试3班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('222', '5839', '333', 'b9ed', '测试4班', '这是班级介绍', '2018-03-14 23:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('223', '5840', '341', '2fac', '测试1班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('224', '5840', '341', '2fac', '测试2班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('225', '5840', '341', '2fac', '测试3班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('226', '5840', '341', '2fac', '测试4班', '这是班级介绍', '2018-01-08 03:08:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('227', '5841', '345', '66b5', '测试1班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('228', '5841', '345', '66b5', '测试2班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('229', '5841', '345', '66b5', '测试3班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('230', '5841', '345', '66b5', '测试4班', '这是班级介绍', '2018-02-05 08:29:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('231', '5842', '353', 'ea8d', '测试1班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('232', '5842', '353', 'ea8d', '测试2班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('233', '5842', '353', 'ea8d', '测试3班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('234', '5842', '353', 'ea8d', '测试4班', '这是班级介绍', '2018-02-24 22:36:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('235', '5843', '357', '8e5f', '测试1班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('236', '5843', '357', '8e5f', '测试2班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('237', '5843', '357', '8e5f', '测试3班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('238', '5843', '357', '8e5f', '测试4班', '这是班级介绍', '2018-03-10 09:14:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('239', '5844', '365', 'de8b', '测试1班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('240', '5844', '365', 'de8b', '测试2班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('241', '5844', '365', 'de8b', '测试3班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('242', '5844', '365', 'de8b', '测试4班', '这是班级介绍', '2018-02-05 21:33:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('243', '5845', '369', 'a3bc', '测试1班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('244', '5845', '369', 'a3bc', '测试2班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('245', '5845', '369', 'a3bc', '测试3班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('246', '5845', '369', 'a3bc', '测试4班', '这是班级介绍', '2018-02-14 17:28:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('247', '5846', '369', '9939', '测试1班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('248', '5846', '369', '9939', '测试2班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('249', '5846', '369', '9939', '测试3班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('250', '5846', '369', '9939', '测试4班', '这是班级介绍', '2018-01-26 05:47:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('251', '5847', '369', '635b', '测试1班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('252', '5847', '369', '635b', '测试2班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('253', '5847', '369', '635b', '测试3班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('254', '5847', '369', '635b', '测试4班', '这是班级介绍', '2018-01-09 05:31:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('255', '5848', '369', 'e9cc', '测试1班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('256', '5848', '369', 'e9cc', '测试2班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('257', '5848', '369', 'e9cc', '测试3班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('258', '5848', '369', 'e9cc', '测试4班', '这是班级介绍', '2018-03-22 16:26:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('259', '5849', '369', 'b6f4', '测试1班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('260', '5849', '369', 'b6f4', '测试2班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('261', '5849', '369', 'b6f4', '测试3班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('262', '5849', '369', 'b6f4', '测试4班', '这是班级介绍', '2018-02-01 18:14:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('263', '5850', '377', '4082', '测试1班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('264', '5850', '377', '4082', '测试2班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('265', '5850', '377', '4082', '测试3班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('266', '5850', '377', '4082', '测试4班', '这是班级介绍', '2018-03-18 12:02:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('267', '5851', '381', 'ccd8', '测试1班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('268', '5851', '381', 'ccd8', '测试2班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('269', '5851', '381', 'ccd8', '测试3班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('270', '5851', '381', 'ccd8', '测试4班', '这是班级介绍', '2018-02-09 08:33:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('271', '5852', '389', '0f4c', '测试1班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('272', '5852', '389', '0f4c', '测试2班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('273', '5852', '389', '0f4c', '测试3班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('274', '5852', '389', '0f4c', '测试4班', '这是班级介绍', '2018-01-24 10:11:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('275', '5853', '393', '1a67', '测试1班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('276', '5853', '393', '1a67', '测试2班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('277', '5853', '393', '1a67', '测试3班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('278', '5853', '393', '1a67', '测试4班', '这是班级介绍', '2018-03-04 01:17:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('279', '5854', '401', '82d8', '测试1班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('280', '5854', '401', '82d8', '测试2班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('281', '5854', '401', '82d8', '测试3班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('282', '5854', '401', '82d8', '测试4班', '这是班级介绍', '2018-02-02 17:35:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('283', '5855', '401', '8fe7', '测试1班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('284', '5855', '401', '8fe7', '测试2班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('285', '5855', '401', '8fe7', '测试3班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('286', '5855', '401', '8fe7', '测试4班', '这是班级介绍', '2018-01-11 11:59:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('287', '5856', '401', '21b2', '测试1班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('288', '5856', '401', '21b2', '测试2班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('289', '5856', '401', '21b2', '测试3班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('290', '5856', '401', '21b2', '测试4班', '这是班级介绍', '2018-01-15 10:12:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('291', '5857', '401', '12ba', '测试1班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('292', '5857', '401', '12ba', '测试2班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('293', '5857', '401', '12ba', '测试3班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('294', '5857', '401', '12ba', '测试4班', '这是班级介绍', '2018-01-06 07:56:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('295', '5858', '401', '1af8', '测试1班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('296', '5858', '401', '1af8', '测试2班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('297', '5858', '401', '1af8', '测试3班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('298', '5858', '401', '1af8', '测试4班', '这是班级介绍', '2018-03-14 00:14:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('299', '5859', '405', 'a2d3', '测试1班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('300', '5859', '405', 'a2d3', '测试2班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('301', '5859', '405', 'a2d3', '测试3班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('302', '5859', '405', 'a2d3', '测试4班', '这是班级介绍', '2018-03-06 03:40:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('303', '5860', '405', '0268', '测试1班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('304', '5860', '405', '0268', '测试2班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('305', '5860', '405', '0268', '测试3班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('306', '5860', '405', '0268', '测试4班', '这是班级介绍', '2018-01-09 02:16:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('307', '5861', '405', 'db90', '测试1班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('308', '5861', '405', 'db90', '测试2班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('309', '5861', '405', 'db90', '测试3班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('310', '5861', '405', 'db90', '测试4班', '这是班级介绍', '2018-01-30 22:30:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('311', '5862', '405', '773e', '测试1班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('312', '5862', '405', '773e', '测试2班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('313', '5862', '405', '773e', '测试3班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('314', '5862', '405', '773e', '测试4班', '这是班级介绍', '2018-03-03 17:23:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('315', '5863', '405', '1f27', '测试1班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('316', '5863', '405', '1f27', '测试2班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('317', '5863', '405', '1f27', '测试3班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('318', '5863', '405', '1f27', '测试4班', '这是班级介绍', '2018-03-11 15:31:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('319', '5864', '413', '024b', '测试1班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('320', '5864', '413', '024b', '测试2班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('321', '5864', '413', '024b', '测试3班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('322', '5864', '413', '024b', '测试4班', '这是班级介绍', '2018-02-06 04:25:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('323', '5865', '413', 'e406', '测试1班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('324', '5865', '413', 'e406', '测试2班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('325', '5865', '413', 'e406', '测试3班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('326', '5865', '413', 'e406', '测试4班', '这是班级介绍', '2018-01-22 23:58:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('327', '5866', '413', 'ac47', '测试1班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('328', '5866', '413', 'ac47', '测试2班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('329', '5866', '413', 'ac47', '测试3班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('330', '5866', '413', 'ac47', '测试4班', '这是班级介绍', '2018-01-25 20:43:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('331', '5867', '413', 'f3a5', '测试1班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('332', '5867', '413', 'f3a5', '测试2班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('333', '5867', '413', 'f3a5', '测试3班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('334', '5867', '413', 'f3a5', '测试4班', '这是班级介绍', '2018-02-07 10:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('335', '5868', '413', 'c7b8', '测试1班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('336', '5868', '413', 'c7b8', '测试2班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('337', '5868', '413', 'c7b8', '测试3班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('338', '5868', '413', 'c7b8', '测试4班', '这是班级介绍', '2018-02-12 16:46:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('339', '5869', '417', '0cca', '测试1班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('340', '5869', '417', '0cca', '测试2班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('341', '5869', '417', '0cca', '测试3班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('342', '5869', '417', '0cca', '测试4班', '这是班级介绍', '2018-03-21 10:49:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('343', '5870', '417', '944f', '测试1班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('344', '5870', '417', '944f', '测试2班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('345', '5870', '417', '944f', '测试3班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('346', '5870', '417', '944f', '测试4班', '这是班级介绍', '2018-03-21 16:46:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('347', '5871', '417', 'b4dc', '测试1班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('348', '5871', '417', 'b4dc', '测试2班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('349', '5871', '417', 'b4dc', '测试3班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('350', '5871', '417', 'b4dc', '测试4班', '这是班级介绍', '2018-03-09 00:58:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('351', '5872', '417', '4be8', '测试1班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('352', '5872', '417', '4be8', '测试2班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('353', '5872', '417', '4be8', '测试3班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('354', '5872', '417', '4be8', '测试4班', '这是班级介绍', '2018-01-12 02:13:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('355', '5873', '417', '0f27', '测试1班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('356', '5873', '417', '0f27', '测试2班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('357', '5873', '417', '0f27', '测试3班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('358', '5873', '417', '0f27', '测试4班', '这是班级介绍', '2018-03-11 17:42:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('359', '5874', '425', 'bf57', '测试1班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('360', '5874', '425', 'bf57', '测试2班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('361', '5874', '425', 'bf57', '测试3班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('362', '5874', '425', 'bf57', '测试4班', '这是班级介绍', '2018-01-20 18:37:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('363', '5875', '429', 'c2a9', '测试1班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('364', '5875', '429', 'c2a9', '测试2班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('365', '5875', '429', 'c2a9', '测试3班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('366', '5875', '429', 'c2a9', '测试4班', '这是班级介绍', '2018-02-11 20:33:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('367', '5876', '437', '651b', '测试1班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('368', '5876', '437', '651b', '测试2班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('369', '5876', '437', '651b', '测试3班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('370', '5876', '437', '651b', '测试4班', '这是班级介绍', '2018-03-10 21:14:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('371', '5877', '441', 'ae9a', '测试1班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('372', '5877', '441', 'ae9a', '测试2班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('373', '5877', '441', 'ae9a', '测试3班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('374', '5877', '441', 'ae9a', '测试4班', '这是班级介绍', '2018-02-02 09:49:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('375', '5878', '449', 'a38c', '测试1班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('376', '5878', '449', 'a38c', '测试2班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('377', '5878', '449', 'a38c', '测试3班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('378', '5878', '449', 'a38c', '测试4班', '这是班级介绍', '2018-02-03 13:40:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('379', '5879', '453', '9657', '测试1班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('380', '5879', '453', '9657', '测试2班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('381', '5879', '453', '9657', '测试3班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('382', '5879', '453', '9657', '测试4班', '这是班级介绍', '2018-02-11 23:40:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('383', '5880', '453', '1d2f', '测试1班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('384', '5880', '453', '1d2f', '测试2班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('385', '5880', '453', '1d2f', '测试3班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('386', '5880', '453', '1d2f', '测试4班', '这是班级介绍', '2018-01-30 08:07:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('387', '5881', '453', '5cdf', '测试1班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('388', '5881', '453', '5cdf', '测试2班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('389', '5881', '453', '5cdf', '测试3班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('390', '5881', '453', '5cdf', '测试4班', '这是班级介绍', '2018-01-31 09:23:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('391', '5882', '453', 'ac58', '测试1班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('392', '5882', '453', 'ac58', '测试2班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('393', '5882', '453', 'ac58', '测试3班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('394', '5882', '453', 'ac58', '测试4班', '这是班级介绍', '2018-03-07 17:02:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('395', '5883', '453', '0b68', '测试1班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('396', '5883', '453', '0b68', '测试2班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('397', '5883', '453', '0b68', '测试3班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('398', '5883', '453', '0b68', '测试4班', '这是班级介绍', '2018-01-08 10:55:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('399', '5884', '461', '9c76', '测试1班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('400', '5884', '461', '9c76', '测试2班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('401', '5884', '461', '9c76', '测试3班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('402', '5884', '461', '9c76', '测试4班', '这是班级介绍', '2018-03-06 07:43:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('403', '5885', '461', '8688', '测试1班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('404', '5885', '461', '8688', '测试2班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('405', '5885', '461', '8688', '测试3班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('406', '5885', '461', '8688', '测试4班', '这是班级介绍', '2018-02-12 04:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('407', '5886', '461', 'f917', '测试1班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('408', '5886', '461', 'f917', '测试2班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('409', '5886', '461', 'f917', '测试3班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('410', '5886', '461', 'f917', '测试4班', '这是班级介绍', '2018-01-17 03:28:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('411', '5887', '461', '8090', '测试1班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('412', '5887', '461', '8090', '测试2班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('413', '5887', '461', '8090', '测试3班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('414', '5887', '461', '8090', '测试4班', '这是班级介绍', '2018-03-16 02:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('415', '5888', '461', '7446', '测试1班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('416', '5888', '461', '7446', '测试2班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('417', '5888', '461', '7446', '测试3班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('418', '5888', '461', '7446', '测试4班', '这是班级介绍', '2018-02-10 23:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('419', '5889', '465', '28ca', '测试1班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('420', '5889', '465', '28ca', '测试2班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('421', '5889', '465', '28ca', '测试3班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('422', '5889', '465', '28ca', '测试4班', '这是班级介绍', '2018-01-16 17:01:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('423', '5890', '473', 'd9b9', '测试1班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('424', '5890', '473', 'd9b9', '测试2班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('425', '5890', '473', 'd9b9', '测试3班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('426', '5890', '473', 'd9b9', '测试4班', '这是班级介绍', '2018-02-12 03:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('427', '5891', '477', '35ac', '测试1班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('428', '5891', '477', '35ac', '测试2班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('429', '5891', '477', '35ac', '测试3班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('430', '5891', '477', '35ac', '测试4班', '这是班级介绍', '2018-03-15 06:53:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('431', '5892', '485', '515b', '测试1班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('432', '5892', '485', '515b', '测试2班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('433', '5892', '485', '515b', '测试3班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('434', '5892', '485', '515b', '测试4班', '这是班级介绍', '2018-03-19 10:33:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('435', '5893', '485', '89cc', '测试1班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('436', '5893', '485', '89cc', '测试2班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('437', '5893', '485', '89cc', '测试3班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('438', '5893', '485', '89cc', '测试4班', '这是班级介绍', '2018-03-03 04:21:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('439', '5894', '485', 'e397', '测试1班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('440', '5894', '485', 'e397', '测试2班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('441', '5894', '485', 'e397', '测试3班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('442', '5894', '485', 'e397', '测试4班', '这是班级介绍', '2018-01-03 09:58:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('443', '5895', '485', 'e55e', '测试1班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('444', '5895', '485', 'e55e', '测试2班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('445', '5895', '485', 'e55e', '测试3班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('446', '5895', '485', 'e55e', '测试4班', '这是班级介绍', '2018-03-10 16:52:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('447', '5896', '485', '1d1b', '测试1班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('448', '5896', '485', '1d1b', '测试2班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('449', '5896', '485', '1d1b', '测试3班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('450', '5896', '485', '1d1b', '测试4班', '这是班级介绍', '2018-02-24 21:43:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('451', '5897', '489', '19f4', '测试1班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('452', '5897', '489', '19f4', '测试2班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('453', '5897', '489', '19f4', '测试3班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('454', '5897', '489', '19f4', '测试4班', '这是班级介绍', '2018-02-12 13:40:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('455', '5898', '489', '83a5', '测试1班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('456', '5898', '489', '83a5', '测试2班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('457', '5898', '489', '83a5', '测试3班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('458', '5898', '489', '83a5', '测试4班', '这是班级介绍', '2018-02-25 13:23:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('459', '5899', '489', '4154', '测试1班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('460', '5899', '489', '4154', '测试2班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('461', '5899', '489', '4154', '测试3班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('462', '5899', '489', '4154', '测试4班', '这是班级介绍', '2018-02-22 15:47:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('463', '5900', '489', 'e5d1', '测试1班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('464', '5900', '489', 'e5d1', '测试2班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('465', '5900', '489', 'e5d1', '测试3班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('466', '5900', '489', 'e5d1', '测试4班', '这是班级介绍', '2018-01-27 17:36:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('467', '5901', '489', '2719', '测试1班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('468', '5901', '489', '2719', '测试2班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('469', '5901', '489', '2719', '测试3班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('470', '5901', '489', '2719', '测试4班', '这是班级介绍', '2018-03-04 02:13:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('471', '5902', '497', '4086', '测试1班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('472', '5902', '497', '4086', '测试2班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('473', '5902', '497', '4086', '测试3班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('474', '5902', '497', '4086', '测试4班', '这是班级介绍', '2018-01-17 15:47:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('475', '5903', '501', '0019', '测试1班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('476', '5903', '501', '0019', '测试2班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('477', '5903', '501', '0019', '测试3班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('478', '5903', '501', '0019', '测试4班', '这是班级介绍', '2018-03-01 23:27:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('479', '5904', '501', 'c63f', '测试1班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('480', '5904', '501', 'c63f', '测试2班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('481', '5904', '501', 'c63f', '测试3班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('482', '5904', '501', 'c63f', '测试4班', '这是班级介绍', '2018-02-10 16:04:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('483', '5905', '501', 'd4a0', '测试1班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('484', '5905', '501', 'd4a0', '测试2班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('485', '5905', '501', 'd4a0', '测试3班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('486', '5905', '501', 'd4a0', '测试4班', '这是班级介绍', '2018-03-14 09:37:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('487', '5906', '501', '3d9f', '测试1班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('488', '5906', '501', '3d9f', '测试2班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('489', '5906', '501', '3d9f', '测试3班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('490', '5906', '501', '3d9f', '测试4班', '这是班级介绍', '2018-01-18 11:46:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('491', '5907', '501', 'e7f7', '测试1班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('492', '5907', '501', 'e7f7', '测试2班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('493', '5907', '501', 'e7f7', '测试3班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('494', '5907', '501', 'e7f7', '测试4班', '这是班级介绍', '2018-01-11 17:47:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('495', '5908', '509', '3ed7', '测试1班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('496', '5908', '509', '3ed7', '测试2班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('497', '5908', '509', '3ed7', '测试3班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('498', '5908', '509', '3ed7', '测试4班', '这是班级介绍', '2018-02-13 15:24:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('499', '5909', '513', 'b6b3', '测试1班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('500', '5909', '513', 'b6b3', '测试2班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('501', '5909', '513', 'b6b3', '测试3班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('502', '5909', '513', 'b6b3', '测试4班', '这是班级介绍', '2018-03-11 17:35:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('503', '5910', '521', '84f3', '测试1班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('504', '5910', '521', '84f3', '测试2班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('505', '5910', '521', '84f3', '测试3班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('506', '5910', '521', '84f3', '测试4班', '这是班级介绍', '2018-02-03 08:40:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('507', '5911', '521', 'd4b3', '测试1班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('508', '5911', '521', 'd4b3', '测试2班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('509', '5911', '521', 'd4b3', '测试3班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('510', '5911', '521', 'd4b3', '测试4班', '这是班级介绍', '2018-01-08 07:29:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('511', '5912', '521', '467a', '测试1班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('512', '5912', '521', '467a', '测试2班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('513', '5912', '521', '467a', '测试3班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('514', '5912', '521', '467a', '测试4班', '这是班级介绍', '2018-03-08 15:58:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('515', '5913', '521', '3ad1', '测试1班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('516', '5913', '521', '3ad1', '测试2班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('517', '5913', '521', '3ad1', '测试3班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('518', '5913', '521', '3ad1', '测试4班', '这是班级介绍', '2018-02-15 19:11:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('519', '5914', '521', '0b18', '测试1班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('520', '5914', '521', '0b18', '测试2班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('521', '5914', '521', '0b18', '测试3班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('522', '5914', '521', '0b18', '测试4班', '这是班级介绍', '2018-02-12 14:02:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('523', '5915', '525', '06c5', '测试1班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('524', '5915', '525', '06c5', '测试2班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('525', '5915', '525', '06c5', '测试3班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('526', '5915', '525', '06c5', '测试4班', '这是班级介绍', '2018-01-28 15:29:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('527', '5916', '525', '38af', '测试1班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('528', '5916', '525', '38af', '测试2班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('529', '5916', '525', '38af', '测试3班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('530', '5916', '525', '38af', '测试4班', '这是班级介绍', '2018-01-06 23:51:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('531', '5917', '525', 'f24c', '测试1班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('532', '5917', '525', 'f24c', '测试2班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('533', '5917', '525', 'f24c', '测试3班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('534', '5917', '525', 'f24c', '测试4班', '这是班级介绍', '2018-02-14 15:48:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('535', '5918', '525', '153f', '测试1班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('536', '5918', '525', '153f', '测试2班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('537', '5918', '525', '153f', '测试3班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('538', '5918', '525', '153f', '测试4班', '这是班级介绍', '2018-03-04 23:20:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('539', '5919', '525', 'bc86', '测试1班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('540', '5919', '525', 'bc86', '测试2班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('541', '5919', '525', 'bc86', '测试3班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('542', '5919', '525', 'bc86', '测试4班', '这是班级介绍', '2018-01-28 09:53:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('543', '5920', '533', '445a', '测试1班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('544', '5920', '533', '445a', '测试2班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('545', '5920', '533', '445a', '测试3班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('546', '5920', '533', '445a', '测试4班', '这是班级介绍', '2018-03-01 03:51:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('547', '5921', '537', '3528', '测试1班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('548', '5921', '537', '3528', '测试2班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('549', '5921', '537', '3528', '测试3班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('550', '5921', '537', '3528', '测试4班', '这是班级介绍', '2018-02-05 08:05:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('551', '5922', '537', 'e5ee', '测试1班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('552', '5922', '537', 'e5ee', '测试2班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('553', '5922', '537', 'e5ee', '测试3班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('554', '5922', '537', 'e5ee', '测试4班', '这是班级介绍', '2018-03-10 04:51:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('555', '5923', '537', '18fb', '测试1班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('556', '5923', '537', '18fb', '测试2班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('557', '5923', '537', '18fb', '测试3班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('558', '5923', '537', '18fb', '测试4班', '这是班级介绍', '2018-01-08 22:22:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('559', '5924', '537', '5a44', '测试1班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('560', '5924', '537', '5a44', '测试2班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('561', '5924', '537', '5a44', '测试3班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('562', '5924', '537', '5a44', '测试4班', '这是班级介绍', '2018-01-26 00:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('563', '5925', '537', '795b', '测试1班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('564', '5925', '537', '795b', '测试2班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('565', '5925', '537', '795b', '测试3班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('566', '5925', '537', '795b', '测试4班', '这是班级介绍', '2018-03-11 10:43:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('567', '5926', '545', 'e378', '测试1班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('568', '5926', '545', 'e378', '测试2班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('569', '5926', '545', 'e378', '测试3班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('570', '5926', '545', 'e378', '测试4班', '这是班级介绍', '2018-02-23 11:08:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('571', '5927', '549', '9cea', '测试1班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('572', '5927', '549', '9cea', '测试2班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('573', '5927', '549', '9cea', '测试3班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('574', '5927', '549', '9cea', '测试4班', '这是班级介绍', '2018-02-07 10:10:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('575', '5928', '549', '00da', '测试1班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('576', '5928', '549', '00da', '测试2班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('577', '5928', '549', '00da', '测试3班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('578', '5928', '549', '00da', '测试4班', '这是班级介绍', '2018-02-13 11:47:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('579', '5929', '549', '22b7', '测试1班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('580', '5929', '549', '22b7', '测试2班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('581', '5929', '549', '22b7', '测试3班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('582', '5929', '549', '22b7', '测试4班', '这是班级介绍', '2018-03-07 13:45:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('583', '5930', '549', '6066', '测试1班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('584', '5930', '549', '6066', '测试2班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('585', '5930', '549', '6066', '测试3班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('586', '5930', '549', '6066', '测试4班', '这是班级介绍', '2018-02-18 06:11:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('587', '5931', '549', 'd4f9', '测试1班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('588', '5931', '549', 'd4f9', '测试2班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('589', '5931', '549', 'd4f9', '测试3班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('590', '5931', '549', 'd4f9', '测试4班', '这是班级介绍', '2018-03-11 13:57:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('591', '5932', '557', 'b681', '测试1班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('592', '5932', '557', 'b681', '测试2班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('593', '5932', '557', 'b681', '测试3班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('594', '5932', '557', 'b681', '测试4班', '这是班级介绍', '2018-02-10 23:21:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('595', '5933', '557', '5a67', '测试1班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('596', '5933', '557', '5a67', '测试2班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('597', '5933', '557', '5a67', '测试3班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('598', '5933', '557', '5a67', '测试4班', '这是班级介绍', '2018-02-28 16:08:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('599', '5934', '557', 'f38e', '测试1班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('600', '5934', '557', 'f38e', '测试2班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('601', '5934', '557', 'f38e', '测试3班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('602', '5934', '557', 'f38e', '测试4班', '这是班级介绍', '2018-02-28 17:19:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('603', '5935', '557', '2609', '测试1班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('604', '5935', '557', '2609', '测试2班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('605', '5935', '557', '2609', '测试3班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('606', '5935', '557', '2609', '测试4班', '这是班级介绍', '2018-03-21 23:51:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('607', '5936', '557', '2681', '测试1班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('608', '5936', '557', '2681', '测试2班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('609', '5936', '557', '2681', '测试3班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('610', '5936', '557', '2681', '测试4班', '这是班级介绍', '2018-01-07 07:29:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('611', '5937', '561', '9443', '测试1班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('612', '5937', '561', '9443', '测试2班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('613', '5937', '561', '9443', '测试3班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('614', '5937', '561', '9443', '测试4班', '这是班级介绍', '2018-02-21 06:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('615', '5938', '561', '43e2', '测试1班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('616', '5938', '561', '43e2', '测试2班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('617', '5938', '561', '43e2', '测试3班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('618', '5938', '561', '43e2', '测试4班', '这是班级介绍', '2018-01-25 09:22:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('619', '5939', '561', 'bac9', '测试1班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('620', '5939', '561', 'bac9', '测试2班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('621', '5939', '561', 'bac9', '测试3班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('622', '5939', '561', 'bac9', '测试4班', '这是班级介绍', '2018-03-19 09:28:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('623', '5940', '561', '7a70', '测试1班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('624', '5940', '561', '7a70', '测试2班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('625', '5940', '561', '7a70', '测试3班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('626', '5940', '561', '7a70', '测试4班', '这是班级介绍', '2018-02-14 05:16:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('627', '5941', '561', '5645', '测试1班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('628', '5941', '561', '5645', '测试2班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('629', '5941', '561', '5645', '测试3班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('630', '5941', '561', '5645', '测试4班', '这是班级介绍', '2018-01-18 14:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('631', '5942', '569', '44a4', '测试1班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('632', '5942', '569', '44a4', '测试2班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('633', '5942', '569', '44a4', '测试3班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('634', '5942', '569', '44a4', '测试4班', '这是班级介绍', '2018-02-28 17:55:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('635', '5943', '569', '296c', '测试1班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('636', '5943', '569', '296c', '测试2班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('637', '5943', '569', '296c', '测试3班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('638', '5943', '569', '296c', '测试4班', '这是班级介绍', '2018-03-01 06:36:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('639', '5944', '569', '09d7', '测试1班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('640', '5944', '569', '09d7', '测试2班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('641', '5944', '569', '09d7', '测试3班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('642', '5944', '569', '09d7', '测试4班', '这是班级介绍', '2018-03-17 21:49:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('643', '5945', '569', 'dfa2', '测试1班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('644', '5945', '569', 'dfa2', '测试2班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('645', '5945', '569', 'dfa2', '测试3班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('646', '5945', '569', 'dfa2', '测试4班', '这是班级介绍', '2018-02-28 16:58:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('647', '5946', '569', 'c976', '测试1班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('648', '5946', '569', 'c976', '测试2班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('649', '5946', '569', 'c976', '测试3班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('650', '5946', '569', 'c976', '测试4班', '这是班级介绍', '2018-02-03 11:01:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('651', '5947', '573', '8f30', '测试1班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('652', '5947', '573', '8f30', '测试2班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('653', '5947', '573', '8f30', '测试3班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('654', '5947', '573', '8f30', '测试4班', '这是班级介绍', '2018-01-02 20:21:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('655', '5948', '581', '784b', '测试1班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('656', '5948', '581', '784b', '测试2班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('657', '5948', '581', '784b', '测试3班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('658', '5948', '581', '784b', '测试4班', '这是班级介绍', '2018-03-03 00:54:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('659', '5949', '585', '8ae1', '测试1班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('660', '5949', '585', '8ae1', '测试2班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('661', '5949', '585', '8ae1', '测试3班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('662', '5949', '585', '8ae1', '测试4班', '这是班级介绍', '2018-03-12 11:29:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('663', '5950', '585', '6cea', '测试1班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('664', '5950', '585', '6cea', '测试2班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('665', '5950', '585', '6cea', '测试3班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('666', '5950', '585', '6cea', '测试4班', '这是班级介绍', '2018-02-16 16:34:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('667', '5951', '585', '4148', '测试1班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('668', '5951', '585', '4148', '测试2班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('669', '5951', '585', '4148', '测试3班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('670', '5951', '585', '4148', '测试4班', '这是班级介绍', '2018-03-18 21:06:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('671', '5952', '585', 'ce6a', '测试1班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('672', '5952', '585', 'ce6a', '测试2班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('673', '5952', '585', 'ce6a', '测试3班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('674', '5952', '585', 'ce6a', '测试4班', '这是班级介绍', '2018-03-19 14:17:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('675', '5953', '585', '96f5', '测试1班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('676', '5953', '585', '96f5', '测试2班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('677', '5953', '585', '96f5', '测试3班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('678', '5953', '585', '96f5', '测试4班', '这是班级介绍', '2018-01-30 10:38:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('679', '5954', '593', '1ed0', '测试1班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('680', '5954', '593', '1ed0', '测试2班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('681', '5954', '593', '1ed0', '测试3班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('682', '5954', '593', '1ed0', '测试4班', '这是班级介绍', '2018-02-26 08:26:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('683', '5955', '597', 'db94', '测试1班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('684', '5955', '597', 'db94', '测试2班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('685', '5955', '597', 'db94', '测试3班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('686', '5955', '597', 'db94', '测试4班', '这是班级介绍', '2018-03-20 09:27:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('687', '5956', '605', 'c95a', '测试1班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('688', '5956', '605', 'c95a', '测试2班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('689', '5956', '605', 'c95a', '测试3班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('690', '5956', '605', 'c95a', '测试4班', '这是班级介绍', '2018-01-27 21:03:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('691', '5957', '609', '8cf1', '测试1班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('692', '5957', '609', '8cf1', '测试2班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('693', '5957', '609', '8cf1', '测试3班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('694', '5957', '609', '8cf1', '测试4班', '这是班级介绍', '2018-02-23 18:09:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('695', '5958', '617', '4bce', '测试1班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('696', '5958', '617', '4bce', '测试2班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('697', '5958', '617', '4bce', '测试3班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('698', '5958', '617', '4bce', '测试4班', '这是班级介绍', '2018-01-14 16:40:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('699', '5959', '621', 'a449', '测试1班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('700', '5959', '621', 'a449', '测试2班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('701', '5959', '621', 'a449', '测试3班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('702', '5959', '621', 'a449', '测试4班', '这是班级介绍', '2018-01-15 18:23:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('703', '5960', '621', '90f5', '测试1班', '这是班级介绍', '2018-03-05 03:55:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('704', '5960', '621', '90f5', '测试2班', '这是班级介绍', '2018-03-05 03:55:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('705', '5960', '621', '90f5', '测试3班', '这是班级介绍', '2018-03-05 03:55:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('706', '5960', '621', '90f5', '测试4班', '这是班级介绍', '2018-03-05 03:55:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('707', '5961', '621', '70e8', '测试1班', '这是班级介绍', '2018-03-14 22:28:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('708', '5961', '621', '70e8', '测试2班', '这是班级介绍', '2018-03-14 22:28:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('709', '5961', '621', '70e8', '测试3班', '这是班级介绍', '2018-03-14 22:28:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('710', '5961', '621', '70e8', '测试4班', '这是班级介绍', '2018-03-14 22:28:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('711', '5962', '621', '844c', '测试1班', '这是班级介绍', '2018-02-19 02:48:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('712', '5962', '621', '844c', '测试2班', '这是班级介绍', '2018-02-19 02:48:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('713', '5962', '621', '844c', '测试3班', '这是班级介绍', '2018-02-19 02:48:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('714', '5962', '621', '844c', '测试4班', '这是班级介绍', '2018-02-19 02:48:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('715', '5963', '621', '0991', '测试1班', '这是班级介绍', '2018-03-12 04:45:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('716', '5963', '621', '0991', '测试2班', '这是班级介绍', '2018-03-12 04:45:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('717', '5963', '621', '0991', '测试3班', '这是班级介绍', '2018-03-12 04:45:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('718', '5963', '621', '0991', '测试4班', '这是班级介绍', '2018-03-12 04:45:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('719', '5964', '629', '40c5', '测试1班', '这是班级介绍', '2018-03-22 05:50:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('720', '5964', '629', '40c5', '测试2班', '这是班级介绍', '2018-03-22 05:50:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('721', '5964', '629', '40c5', '测试3班', '这是班级介绍', '2018-03-22 05:50:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('722', '5964', '629', '40c5', '测试4班', '这是班级介绍', '2018-03-22 05:50:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('723', '5965', '629', 'd04d', '测试1班', '这是班级介绍', '2018-01-27 16:39:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('724', '5965', '629', 'd04d', '测试2班', '这是班级介绍', '2018-01-27 16:39:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('725', '5965', '629', 'd04d', '测试3班', '这是班级介绍', '2018-01-27 16:39:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('726', '5965', '629', 'd04d', '测试4班', '这是班级介绍', '2018-01-27 16:39:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('727', '5966', '629', '47dc', '测试1班', '这是班级介绍', '2018-02-06 13:35:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('728', '5966', '629', '47dc', '测试2班', '这是班级介绍', '2018-02-06 13:35:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('729', '5966', '629', '47dc', '测试3班', '这是班级介绍', '2018-02-06 13:35:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('730', '5966', '629', '47dc', '测试4班', '这是班级介绍', '2018-02-06 13:35:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('731', '5967', '629', '2aaf', '测试1班', '这是班级介绍', '2018-02-16 02:12:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('732', '5967', '629', '2aaf', '测试2班', '这是班级介绍', '2018-02-16 02:12:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('733', '5967', '629', '2aaf', '测试3班', '这是班级介绍', '2018-02-16 02:12:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('734', '5967', '629', '2aaf', '测试4班', '这是班级介绍', '2018-02-16 02:12:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('735', '5968', '629', 'e394', '测试1班', '这是班级介绍', '2018-02-21 10:05:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('736', '5968', '629', 'e394', '测试2班', '这是班级介绍', '2018-02-21 10:05:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('737', '5968', '629', 'e394', '测试3班', '这是班级介绍', '2018-02-21 10:05:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('738', '5968', '629', 'e394', '测试4班', '这是班级介绍', '2018-02-21 10:05:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('739', '5969', '633', 'b04c', '测试1班', '这是班级介绍', '2018-02-27 14:35:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('740', '5969', '633', 'b04c', '测试2班', '这是班级介绍', '2018-02-27 14:35:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('741', '5969', '633', 'b04c', '测试3班', '这是班级介绍', '2018-02-27 14:35:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('742', '5969', '633', 'b04c', '测试4班', '这是班级介绍', '2018-02-27 14:35:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('743', '5970', '633', 'd330', '测试1班', '这是班级介绍', '2018-01-16 10:10:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('744', '5970', '633', 'd330', '测试2班', '这是班级介绍', '2018-01-16 10:10:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('745', '5970', '633', 'd330', '测试3班', '这是班级介绍', '2018-01-16 10:10:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('746', '5970', '633', 'd330', '测试4班', '这是班级介绍', '2018-01-16 10:10:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('747', '5971', '633', '0a51', '测试1班', '这是班级介绍', '2018-02-23 08:00:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('748', '5971', '633', '0a51', '测试2班', '这是班级介绍', '2018-02-23 08:00:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('749', '5971', '633', '0a51', '测试3班', '这是班级介绍', '2018-02-23 08:00:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('750', '5971', '633', '0a51', '测试4班', '这是班级介绍', '2018-02-23 08:00:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('751', '5972', '633', '9704', '测试1班', '这是班级介绍', '2018-01-07 03:03:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('752', '5972', '633', '9704', '测试2班', '这是班级介绍', '2018-01-07 03:03:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('753', '5972', '633', '9704', '测试3班', '这是班级介绍', '2018-01-07 03:03:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('754', '5972', '633', '9704', '测试4班', '这是班级介绍', '2018-01-07 03:03:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('755', '5973', '633', '8080', '测试1班', '这是班级介绍', '2018-01-19 21:23:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('756', '5973', '633', '8080', '测试2班', '这是班级介绍', '2018-01-19 21:23:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('757', '5973', '633', '8080', '测试3班', '这是班级介绍', '2018-01-19 21:23:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('758', '5973', '633', '8080', '测试4班', '这是班级介绍', '2018-01-19 21:23:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('759', '5974', '641', '06a1', '测试1班', '这是班级介绍', '2018-01-18 06:14:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('760', '5974', '641', '06a1', '测试2班', '这是班级介绍', '2018-01-18 06:14:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('761', '5974', '641', '06a1', '测试3班', '这是班级介绍', '2018-01-18 06:14:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('762', '5974', '641', '06a1', '测试4班', '这是班级介绍', '2018-01-18 06:14:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('763', '5975', '645', '998c', '测试1班', '这是班级介绍', '2018-03-06 23:43:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('764', '5975', '645', '998c', '测试2班', '这是班级介绍', '2018-03-06 23:43:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('765', '5975', '645', '998c', '测试3班', '这是班级介绍', '2018-03-06 23:43:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('766', '5975', '645', '998c', '测试4班', '这是班级介绍', '2018-03-06 23:43:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('767', '5976', '645', 'f830', '测试1班', '这是班级介绍', '2018-01-05 18:46:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('768', '5976', '645', 'f830', '测试2班', '这是班级介绍', '2018-01-05 18:46:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('769', '5976', '645', 'f830', '测试3班', '这是班级介绍', '2018-01-05 18:46:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('770', '5976', '645', 'f830', '测试4班', '这是班级介绍', '2018-01-05 18:46:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('771', '5977', '645', '988a', '测试1班', '这是班级介绍', '2018-01-18 00:15:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('772', '5977', '645', '988a', '测试2班', '这是班级介绍', '2018-01-18 00:15:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('773', '5977', '645', '988a', '测试3班', '这是班级介绍', '2018-01-18 00:15:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('774', '5977', '645', '988a', '测试4班', '这是班级介绍', '2018-01-18 00:15:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('775', '5978', '645', '735d', '测试1班', '这是班级介绍', '2018-03-21 07:51:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('776', '5978', '645', '735d', '测试2班', '这是班级介绍', '2018-03-21 07:51:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('777', '5978', '645', '735d', '测试3班', '这是班级介绍', '2018-03-21 07:51:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('778', '5978', '645', '735d', '测试4班', '这是班级介绍', '2018-03-21 07:51:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('779', '5979', '645', 'e22a', '测试1班', '这是班级介绍', '2018-03-01 09:55:25', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('780', '5979', '645', 'e22a', '测试2班', '这是班级介绍', '2018-03-01 09:55:25', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('781', '5979', '645', 'e22a', '测试3班', '这是班级介绍', '2018-03-01 09:55:25', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('782', '5979', '645', 'e22a', '测试4班', '这是班级介绍', '2018-03-01 09:55:25', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('783', '5980', '653', 'e8ca', '测试1班', '这是班级介绍', '2018-01-03 00:33:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('784', '5980', '653', 'e8ca', '测试2班', '这是班级介绍', '2018-01-03 00:33:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('785', '5980', '653', 'e8ca', '测试3班', '这是班级介绍', '2018-01-03 00:33:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('786', '5980', '653', 'e8ca', '测试4班', '这是班级介绍', '2018-01-03 00:33:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('787', '5981', '653', '162a', '测试1班', '这是班级介绍', '2018-02-09 10:14:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('788', '5981', '653', '162a', '测试2班', '这是班级介绍', '2018-02-09 10:14:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('789', '5981', '653', '162a', '测试3班', '这是班级介绍', '2018-02-09 10:14:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('790', '5981', '653', '162a', '测试4班', '这是班级介绍', '2018-02-09 10:14:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('791', '5982', '653', '8530', '测试1班', '这是班级介绍', '2018-01-18 04:35:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('792', '5982', '653', '8530', '测试2班', '这是班级介绍', '2018-01-18 04:35:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('793', '5982', '653', '8530', '测试3班', '这是班级介绍', '2018-01-18 04:35:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('794', '5982', '653', '8530', '测试4班', '这是班级介绍', '2018-01-18 04:35:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('795', '5983', '653', '9d07', '测试1班', '这是班级介绍', '2018-02-14 07:15:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('796', '5983', '653', '9d07', '测试2班', '这是班级介绍', '2018-02-14 07:15:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('797', '5983', '653', '9d07', '测试3班', '这是班级介绍', '2018-02-14 07:15:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('798', '5983', '653', '9d07', '测试4班', '这是班级介绍', '2018-02-14 07:15:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('799', '5984', '653', '4e81', '测试1班', '这是班级介绍', '2018-01-01 22:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('800', '5984', '653', '4e81', '测试2班', '这是班级介绍', '2018-01-01 22:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('801', '5984', '653', '4e81', '测试3班', '这是班级介绍', '2018-01-01 22:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('802', '5984', '653', '4e81', '测试4班', '这是班级介绍', '2018-01-01 22:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('803', '5985', '657', 'b6e6', '测试1班', '这是班级介绍', '2018-01-19 04:42:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('804', '5985', '657', 'b6e6', '测试2班', '这是班级介绍', '2018-01-19 04:42:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('805', '5985', '657', 'b6e6', '测试3班', '这是班级介绍', '2018-01-19 04:42:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('806', '5985', '657', 'b6e6', '测试4班', '这是班级介绍', '2018-01-19 04:42:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('807', '5986', '665', 'c724', '测试1班', '这是班级介绍', '2018-01-26 08:50:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('808', '5986', '665', 'c724', '测试2班', '这是班级介绍', '2018-01-26 08:50:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('809', '5986', '665', 'c724', '测试3班', '这是班级介绍', '2018-01-26 08:50:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('810', '5986', '665', 'c724', '测试4班', '这是班级介绍', '2018-01-26 08:50:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('811', '5987', '669', '5171', '测试1班', '这是班级介绍', '2018-01-11 16:00:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('812', '5987', '669', '5171', '测试2班', '这是班级介绍', '2018-01-11 16:00:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('813', '5987', '669', '5171', '测试3班', '这是班级介绍', '2018-01-11 16:00:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('814', '5987', '669', '5171', '测试4班', '这是班级介绍', '2018-01-11 16:00:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('815', '5988', '677', 'cbb6', '测试1班', '这是班级介绍', '2018-01-20 12:07:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('816', '5988', '677', 'cbb6', '测试2班', '这是班级介绍', '2018-01-20 12:07:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('817', '5988', '677', 'cbb6', '测试3班', '这是班级介绍', '2018-01-20 12:07:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('818', '5988', '677', 'cbb6', '测试4班', '这是班级介绍', '2018-01-20 12:07:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('819', '5989', '681', '84f2', '测试1班', '这是班级介绍', '2018-03-02 16:55:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('820', '5989', '681', '84f2', '测试2班', '这是班级介绍', '2018-03-02 16:55:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('821', '5989', '681', '84f2', '测试3班', '这是班级介绍', '2018-03-02 16:55:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('822', '5989', '681', '84f2', '测试4班', '这是班级介绍', '2018-03-02 16:55:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('823', '5990', '689', '60ef', '测试1班', '这是班级介绍', '2018-03-21 08:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('824', '5990', '689', '60ef', '测试2班', '这是班级介绍', '2018-03-21 08:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('825', '5990', '689', '60ef', '测试3班', '这是班级介绍', '2018-03-21 08:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('826', '5990', '689', '60ef', '测试4班', '这是班级介绍', '2018-03-21 08:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('827', '5991', '689', '3f2c', '测试1班', '这是班级介绍', '2018-02-20 06:18:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('828', '5991', '689', '3f2c', '测试2班', '这是班级介绍', '2018-02-20 06:18:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('829', '5991', '689', '3f2c', '测试3班', '这是班级介绍', '2018-02-20 06:18:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('830', '5991', '689', '3f2c', '测试4班', '这是班级介绍', '2018-02-20 06:18:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('831', '5992', '689', '5d32', '测试1班', '这是班级介绍', '2018-03-08 15:22:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('832', '5992', '689', '5d32', '测试2班', '这是班级介绍', '2018-03-08 15:22:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('833', '5992', '689', '5d32', '测试3班', '这是班级介绍', '2018-03-08 15:22:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('834', '5992', '689', '5d32', '测试4班', '这是班级介绍', '2018-03-08 15:22:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('835', '5993', '689', '8d1e', '测试1班', '这是班级介绍', '2018-01-26 06:57:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('836', '5993', '689', '8d1e', '测试2班', '这是班级介绍', '2018-01-26 06:57:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('837', '5993', '689', '8d1e', '测试3班', '这是班级介绍', '2018-01-26 06:57:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('838', '5993', '689', '8d1e', '测试4班', '这是班级介绍', '2018-01-26 06:57:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('839', '5994', '689', '8696', '测试1班', '这是班级介绍', '2018-03-10 23:36:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('840', '5994', '689', '8696', '测试2班', '这是班级介绍', '2018-03-10 23:36:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('841', '5994', '689', '8696', '测试3班', '这是班级介绍', '2018-03-10 23:36:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('842', '5994', '689', '8696', '测试4班', '这是班级介绍', '2018-03-10 23:36:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('843', '5995', '693', '00f6', '测试1班', '这是班级介绍', '2018-03-12 11:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('844', '5995', '693', '00f6', '测试2班', '这是班级介绍', '2018-03-12 11:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('845', '5995', '693', '00f6', '测试3班', '这是班级介绍', '2018-03-12 11:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('846', '5995', '693', '00f6', '测试4班', '这是班级介绍', '2018-03-12 11:12:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('847', '5996', '701', '9d74', '测试1班', '这是班级介绍', '2018-01-19 09:03:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('848', '5996', '701', '9d74', '测试2班', '这是班级介绍', '2018-01-19 09:03:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('849', '5996', '701', '9d74', '测试3班', '这是班级介绍', '2018-01-19 09:03:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('850', '5996', '701', '9d74', '测试4班', '这是班级介绍', '2018-01-19 09:03:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('851', '5997', '701', 'da42', '测试1班', '这是班级介绍', '2018-01-18 23:56:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('852', '5997', '701', 'da42', '测试2班', '这是班级介绍', '2018-01-18 23:56:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('853', '5997', '701', 'da42', '测试3班', '这是班级介绍', '2018-01-18 23:56:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('854', '5997', '701', 'da42', '测试4班', '这是班级介绍', '2018-01-18 23:56:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('855', '5998', '701', '3f4f', '测试1班', '这是班级介绍', '2018-03-13 07:34:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('856', '5998', '701', '3f4f', '测试2班', '这是班级介绍', '2018-03-13 07:34:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('857', '5998', '701', '3f4f', '测试3班', '这是班级介绍', '2018-03-13 07:34:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('858', '5998', '701', '3f4f', '测试4班', '这是班级介绍', '2018-03-13 07:34:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('859', '5999', '701', 'ea10', '测试1班', '这是班级介绍', '2018-02-07 02:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('860', '5999', '701', 'ea10', '测试2班', '这是班级介绍', '2018-02-07 02:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('861', '5999', '701', 'ea10', '测试3班', '这是班级介绍', '2018-02-07 02:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('862', '5999', '701', 'ea10', '测试4班', '这是班级介绍', '2018-02-07 02:42:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('863', '6000', '701', 'b865', '测试1班', '这是班级介绍', '2018-02-12 09:52:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('864', '6000', '701', 'b865', '测试2班', '这是班级介绍', '2018-02-12 09:52:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('865', '6000', '701', 'b865', '测试3班', '这是班级介绍', '2018-02-12 09:52:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('866', '6000', '701', 'b865', '测试4班', '这是班级介绍', '2018-02-12 09:52:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('867', '6001', '705', '6f0f', '测试1班', '这是班级介绍', '2018-02-15 06:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('868', '6001', '705', '6f0f', '测试2班', '这是班级介绍', '2018-02-15 06:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('869', '6001', '705', '6f0f', '测试3班', '这是班级介绍', '2018-02-15 06:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('870', '6001', '705', '6f0f', '测试4班', '这是班级介绍', '2018-02-15 06:04:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('871', '6002', '705', '44a7', '测试1班', '这是班级介绍', '2018-01-29 05:50:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('872', '6002', '705', '44a7', '测试2班', '这是班级介绍', '2018-01-29 05:50:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('873', '6002', '705', '44a7', '测试3班', '这是班级介绍', '2018-01-29 05:50:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('874', '6002', '705', '44a7', '测试4班', '这是班级介绍', '2018-01-29 05:50:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('875', '6003', '705', '43b3', '测试1班', '这是班级介绍', '2018-02-26 07:11:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('876', '6003', '705', '43b3', '测试2班', '这是班级介绍', '2018-02-26 07:11:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('877', '6003', '705', '43b3', '测试3班', '这是班级介绍', '2018-02-26 07:11:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('878', '6003', '705', '43b3', '测试4班', '这是班级介绍', '2018-02-26 07:11:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('879', '6004', '705', '8c73', '测试1班', '这是班级介绍', '2018-01-27 09:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('880', '6004', '705', '8c73', '测试2班', '这是班级介绍', '2018-01-27 09:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('881', '6004', '705', '8c73', '测试3班', '这是班级介绍', '2018-01-27 09:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('882', '6004', '705', '8c73', '测试4班', '这是班级介绍', '2018-01-27 09:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('883', '6005', '705', 'f78d', '测试1班', '这是班级介绍', '2018-01-30 16:17:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('884', '6005', '705', 'f78d', '测试2班', '这是班级介绍', '2018-01-30 16:17:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('885', '6005', '705', 'f78d', '测试3班', '这是班级介绍', '2018-01-30 16:17:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('886', '6005', '705', 'f78d', '测试4班', '这是班级介绍', '2018-01-30 16:17:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('887', '6006', '713', '6be2', '测试1班', '这是班级介绍', '2018-03-23 21:29:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('888', '6006', '713', '6be2', '测试2班', '这是班级介绍', '2018-03-23 21:29:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('889', '6006', '713', '6be2', '测试3班', '这是班级介绍', '2018-03-23 21:29:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('890', '6006', '713', '6be2', '测试4班', '这是班级介绍', '2018-03-23 21:29:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('891', '6007', '713', '5187', '测试1班', '这是班级介绍', '2018-02-06 16:04:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('892', '6007', '713', '5187', '测试2班', '这是班级介绍', '2018-02-06 16:04:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('893', '6007', '713', '5187', '测试3班', '这是班级介绍', '2018-02-06 16:04:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('894', '6007', '713', '5187', '测试4班', '这是班级介绍', '2018-02-06 16:04:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('895', '6008', '713', '065f', '测试1班', '这是班级介绍', '2018-01-12 12:38:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('896', '6008', '713', '065f', '测试2班', '这是班级介绍', '2018-01-12 12:38:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('897', '6008', '713', '065f', '测试3班', '这是班级介绍', '2018-01-12 12:38:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('898', '6008', '713', '065f', '测试4班', '这是班级介绍', '2018-01-12 12:38:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('899', '6009', '713', '69f9', '测试1班', '这是班级介绍', '2018-01-23 20:11:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('900', '6009', '713', '69f9', '测试2班', '这是班级介绍', '2018-01-23 20:11:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('901', '6009', '713', '69f9', '测试3班', '这是班级介绍', '2018-01-23 20:11:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('902', '6009', '713', '69f9', '测试4班', '这是班级介绍', '2018-01-23 20:11:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('903', '6010', '713', 'f2c4', '测试1班', '这是班级介绍', '2018-02-23 21:40:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('904', '6010', '713', 'f2c4', '测试2班', '这是班级介绍', '2018-02-23 21:40:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('905', '6010', '713', 'f2c4', '测试3班', '这是班级介绍', '2018-02-23 21:40:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('906', '6010', '713', 'f2c4', '测试4班', '这是班级介绍', '2018-02-23 21:40:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('907', '6011', '717', '2eb3', '测试1班', '这是班级介绍', '2018-01-07 04:15:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('908', '6011', '717', '2eb3', '测试2班', '这是班级介绍', '2018-01-07 04:15:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('909', '6011', '717', '2eb3', '测试3班', '这是班级介绍', '2018-01-07 04:15:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('910', '6011', '717', '2eb3', '测试4班', '这是班级介绍', '2018-01-07 04:15:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('911', '6012', '725', '1883', '测试1班', '这是班级介绍', '2018-02-15 13:28:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('912', '6012', '725', '1883', '测试2班', '这是班级介绍', '2018-02-15 13:28:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('913', '6012', '725', '1883', '测试3班', '这是班级介绍', '2018-02-15 13:28:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('914', '6012', '725', '1883', '测试4班', '这是班级介绍', '2018-02-15 13:28:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('915', '6013', '729', 'e4b0', '测试1班', '这是班级介绍', '2018-03-01 03:51:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('916', '6013', '729', 'e4b0', '测试2班', '这是班级介绍', '2018-03-01 03:51:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('917', '6013', '729', 'e4b0', '测试3班', '这是班级介绍', '2018-03-01 03:51:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('918', '6013', '729', 'e4b0', '测试4班', '这是班级介绍', '2018-03-01 03:51:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('919', '6014', '737', '932b', '测试1班', '这是班级介绍', '2018-01-19 20:19:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('920', '6014', '737', '932b', '测试2班', '这是班级介绍', '2018-01-19 20:19:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('921', '6014', '737', '932b', '测试3班', '这是班级介绍', '2018-01-19 20:19:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('922', '6014', '737', '932b', '测试4班', '这是班级介绍', '2018-01-19 20:19:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('923', '6015', '741', 'b6fa', '测试1班', '这是班级介绍', '2018-02-15 20:12:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('924', '6015', '741', 'b6fa', '测试2班', '这是班级介绍', '2018-02-15 20:12:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('925', '6015', '741', 'b6fa', '测试3班', '这是班级介绍', '2018-02-15 20:12:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('926', '6015', '741', 'b6fa', '测试4班', '这是班级介绍', '2018-02-15 20:12:08', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('927', '6016', '749', '1d16', '测试1班', '这是班级介绍', '2018-01-22 22:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('928', '6016', '749', '1d16', '测试2班', '这是班级介绍', '2018-01-22 22:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('929', '6016', '749', '1d16', '测试3班', '这是班级介绍', '2018-01-22 22:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('930', '6016', '749', '1d16', '测试4班', '这是班级介绍', '2018-01-22 22:02:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('931', '6017', '749', '08c7', '测试1班', '这是班级介绍', '2018-01-18 18:20:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('932', '6017', '749', '08c7', '测试2班', '这是班级介绍', '2018-01-18 18:20:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('933', '6017', '749', '08c7', '测试3班', '这是班级介绍', '2018-01-18 18:20:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('934', '6017', '749', '08c7', '测试4班', '这是班级介绍', '2018-01-18 18:20:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('935', '6018', '749', 'ee16', '测试1班', '这是班级介绍', '2018-01-07 18:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('936', '6018', '749', 'ee16', '测试2班', '这是班级介绍', '2018-01-07 18:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('937', '6018', '749', 'ee16', '测试3班', '这是班级介绍', '2018-01-07 18:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('938', '6018', '749', 'ee16', '测试4班', '这是班级介绍', '2018-01-07 18:46:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('939', '6019', '749', 'd2a1', '测试1班', '这是班级介绍', '2018-02-23 12:03:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('940', '6019', '749', 'd2a1', '测试2班', '这是班级介绍', '2018-02-23 12:03:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('941', '6019', '749', 'd2a1', '测试3班', '这是班级介绍', '2018-02-23 12:03:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('942', '6019', '749', 'd2a1', '测试4班', '这是班级介绍', '2018-02-23 12:03:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('943', '6020', '749', '08f9', '测试1班', '这是班级介绍', '2018-01-10 23:24:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('944', '6020', '749', '08f9', '测试2班', '这是班级介绍', '2018-01-10 23:24:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('945', '6020', '749', '08f9', '测试3班', '这是班级介绍', '2018-01-10 23:24:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('946', '6020', '749', '08f9', '测试4班', '这是班级介绍', '2018-01-10 23:24:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('947', '6021', '753', 'a784', '测试1班', '这是班级介绍', '2018-02-13 12:30:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('948', '6021', '753', 'a784', '测试2班', '这是班级介绍', '2018-02-13 12:30:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('949', '6021', '753', 'a784', '测试3班', '这是班级介绍', '2018-02-13 12:30:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('950', '6021', '753', 'a784', '测试4班', '这是班级介绍', '2018-02-13 12:30:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('951', '6022', '753', 'bbce', '测试1班', '这是班级介绍', '2018-01-07 05:18:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('952', '6022', '753', 'bbce', '测试2班', '这是班级介绍', '2018-01-07 05:18:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('953', '6022', '753', 'bbce', '测试3班', '这是班级介绍', '2018-01-07 05:18:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('954', '6022', '753', 'bbce', '测试4班', '这是班级介绍', '2018-01-07 05:18:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('955', '6023', '753', 'efe0', '测试1班', '这是班级介绍', '2018-03-05 02:00:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('956', '6023', '753', 'efe0', '测试2班', '这是班级介绍', '2018-03-05 02:00:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('957', '6023', '753', 'efe0', '测试3班', '这是班级介绍', '2018-03-05 02:00:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('958', '6023', '753', 'efe0', '测试4班', '这是班级介绍', '2018-03-05 02:00:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('959', '6024', '753', '5d30', '测试1班', '这是班级介绍', '2018-02-14 04:53:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('960', '6024', '753', '5d30', '测试2班', '这是班级介绍', '2018-02-14 04:53:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('961', '6024', '753', '5d30', '测试3班', '这是班级介绍', '2018-02-14 04:53:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('962', '6024', '753', '5d30', '测试4班', '这是班级介绍', '2018-02-14 04:53:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('963', '6025', '753', 'a0c1', '测试1班', '这是班级介绍', '2018-02-19 00:46:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('964', '6025', '753', 'a0c1', '测试2班', '这是班级介绍', '2018-02-19 00:46:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('965', '6025', '753', 'a0c1', '测试3班', '这是班级介绍', '2018-02-19 00:46:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('966', '6025', '753', 'a0c1', '测试4班', '这是班级介绍', '2018-02-19 00:46:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('967', '6026', '761', 'd1ad', '测试1班', '这是班级介绍', '2018-03-07 10:56:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('968', '6026', '761', 'd1ad', '测试2班', '这是班级介绍', '2018-03-07 10:56:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('969', '6026', '761', 'd1ad', '测试3班', '这是班级介绍', '2018-03-07 10:56:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('970', '6026', '761', 'd1ad', '测试4班', '这是班级介绍', '2018-03-07 10:56:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('971', '6027', '765', 'b586', '测试1班', '这是班级介绍', '2018-03-03 08:52:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('972', '6027', '765', 'b586', '测试2班', '这是班级介绍', '2018-03-03 08:52:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('973', '6027', '765', 'b586', '测试3班', '这是班级介绍', '2018-03-03 08:52:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('974', '6027', '765', 'b586', '测试4班', '这是班级介绍', '2018-03-03 08:52:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('975', '6028', '773', 'ad2e', '测试1班', '这是班级介绍', '2018-01-01 06:39:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('976', '6028', '773', 'ad2e', '测试2班', '这是班级介绍', '2018-01-01 06:39:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('977', '6028', '773', 'ad2e', '测试3班', '这是班级介绍', '2018-01-01 06:39:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('978', '6028', '773', 'ad2e', '测试4班', '这是班级介绍', '2018-01-01 06:39:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('979', '6029', '773', '6113', '测试1班', '这是班级介绍', '2018-02-07 19:46:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('980', '6029', '773', '6113', '测试2班', '这是班级介绍', '2018-02-07 19:46:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('981', '6029', '773', '6113', '测试3班', '这是班级介绍', '2018-02-07 19:46:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('982', '6029', '773', '6113', '测试4班', '这是班级介绍', '2018-02-07 19:46:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('983', '6030', '773', '4ebd', '测试1班', '这是班级介绍', '2018-03-06 14:31:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('984', '6030', '773', '4ebd', '测试2班', '这是班级介绍', '2018-03-06 14:31:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('985', '6030', '773', '4ebd', '测试3班', '这是班级介绍', '2018-03-06 14:31:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('986', '6030', '773', '4ebd', '测试4班', '这是班级介绍', '2018-03-06 14:31:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('987', '6031', '773', '105f', '测试1班', '这是班级介绍', '2018-03-10 19:16:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('988', '6031', '773', '105f', '测试2班', '这是班级介绍', '2018-03-10 19:16:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('989', '6031', '773', '105f', '测试3班', '这是班级介绍', '2018-03-10 19:16:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('990', '6031', '773', '105f', '测试4班', '这是班级介绍', '2018-03-10 19:16:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('991', '6032', '773', 'c8f0', '测试1班', '这是班级介绍', '2018-02-12 18:40:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('992', '6032', '773', 'c8f0', '测试2班', '这是班级介绍', '2018-02-12 18:40:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('993', '6032', '773', 'c8f0', '测试3班', '这是班级介绍', '2018-02-12 18:40:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('994', '6032', '773', 'c8f0', '测试4班', '这是班级介绍', '2018-02-12 18:40:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('995', '6033', '777', '9c4d', '测试1班', '这是班级介绍', '2018-02-27 12:06:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('996', '6033', '777', '9c4d', '测试2班', '这是班级介绍', '2018-02-27 12:06:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('997', '6033', '777', '9c4d', '测试3班', '这是班级介绍', '2018-02-27 12:06:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('998', '6033', '777', '9c4d', '测试4班', '这是班级介绍', '2018-02-27 12:06:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('999', '6034', '777', 'b893', '测试1班', '这是班级介绍', '2018-03-05 06:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1000', '6034', '777', 'b893', '测试2班', '这是班级介绍', '2018-03-05 06:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1001', '6034', '777', 'b893', '测试3班', '这是班级介绍', '2018-03-05 06:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1002', '6034', '777', 'b893', '测试4班', '这是班级介绍', '2018-03-05 06:30:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1003', '6035', '777', '1c5f', '测试1班', '这是班级介绍', '2018-02-11 07:38:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1004', '6035', '777', '1c5f', '测试2班', '这是班级介绍', '2018-02-11 07:38:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1005', '6035', '777', '1c5f', '测试3班', '这是班级介绍', '2018-02-11 07:38:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1006', '6035', '777', '1c5f', '测试4班', '这是班级介绍', '2018-02-11 07:38:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1007', '6036', '777', '19ce', '测试1班', '这是班级介绍', '2018-01-18 15:27:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1008', '6036', '777', '19ce', '测试2班', '这是班级介绍', '2018-01-18 15:27:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1009', '6036', '777', '19ce', '测试3班', '这是班级介绍', '2018-01-18 15:27:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1010', '6036', '777', '19ce', '测试4班', '这是班级介绍', '2018-01-18 15:27:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1011', '6037', '777', '698a', '测试1班', '这是班级介绍', '2018-01-07 03:25:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1012', '6037', '777', '698a', '测试2班', '这是班级介绍', '2018-01-07 03:25:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1013', '6037', '777', '698a', '测试3班', '这是班级介绍', '2018-01-07 03:25:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1014', '6037', '777', '698a', '测试4班', '这是班级介绍', '2018-01-07 03:25:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1015', '6038', '785', 'dd5a', '测试1班', '这是班级介绍', '2018-01-18 04:15:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1016', '6038', '785', 'dd5a', '测试2班', '这是班级介绍', '2018-01-18 04:15:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1017', '6038', '785', 'dd5a', '测试3班', '这是班级介绍', '2018-01-18 04:15:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1018', '6038', '785', 'dd5a', '测试4班', '这是班级介绍', '2018-01-18 04:15:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1019', '6039', '785', 'eea6', '测试1班', '这是班级介绍', '2018-03-14 16:57:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1020', '6039', '785', 'eea6', '测试2班', '这是班级介绍', '2018-03-14 16:57:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1021', '6039', '785', 'eea6', '测试3班', '这是班级介绍', '2018-03-14 16:57:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1022', '6039', '785', 'eea6', '测试4班', '这是班级介绍', '2018-03-14 16:57:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1023', '6040', '785', 'a292', '测试1班', '这是班级介绍', '2018-02-06 23:27:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1024', '6040', '785', 'a292', '测试2班', '这是班级介绍', '2018-02-06 23:27:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1025', '6040', '785', 'a292', '测试3班', '这是班级介绍', '2018-02-06 23:27:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1026', '6040', '785', 'a292', '测试4班', '这是班级介绍', '2018-02-06 23:27:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1027', '6041', '785', '12a1', '测试1班', '这是班级介绍', '2018-01-28 15:05:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1028', '6041', '785', '12a1', '测试2班', '这是班级介绍', '2018-01-28 15:05:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1029', '6041', '785', '12a1', '测试3班', '这是班级介绍', '2018-01-28 15:05:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1030', '6041', '785', '12a1', '测试4班', '这是班级介绍', '2018-01-28 15:05:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1031', '6042', '785', 'b509', '测试1班', '这是班级介绍', '2018-02-25 16:28:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1032', '6042', '785', 'b509', '测试2班', '这是班级介绍', '2018-02-25 16:28:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1033', '6042', '785', 'b509', '测试3班', '这是班级介绍', '2018-02-25 16:28:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1034', '6042', '785', 'b509', '测试4班', '这是班级介绍', '2018-02-25 16:28:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1035', '6043', '789', '4523', '测试1班', '这是班级介绍', '2018-01-04 12:44:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1036', '6043', '789', '4523', '测试2班', '这是班级介绍', '2018-01-04 12:44:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1037', '6043', '789', '4523', '测试3班', '这是班级介绍', '2018-01-04 12:44:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1038', '6043', '789', '4523', '测试4班', '这是班级介绍', '2018-01-04 12:44:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1039', '6044', '797', '1d66', '测试1班', '这是班级介绍', '2018-01-15 08:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1040', '6044', '797', '1d66', '测试2班', '这是班级介绍', '2018-01-15 08:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1041', '6044', '797', '1d66', '测试3班', '这是班级介绍', '2018-01-15 08:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1042', '6044', '797', '1d66', '测试4班', '这是班级介绍', '2018-01-15 08:41:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1043', '6045', '801', '9c41', '测试1班', '这是班级介绍', '2018-02-08 06:27:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1044', '6045', '801', '9c41', '测试2班', '这是班级介绍', '2018-02-08 06:27:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1045', '6045', '801', '9c41', '测试3班', '这是班级介绍', '2018-02-08 06:27:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1046', '6045', '801', '9c41', '测试4班', '这是班级介绍', '2018-02-08 06:27:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1047', '6046', '801', '31e2', '测试1班', '这是班级介绍', '2018-03-14 13:44:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1048', '6046', '801', '31e2', '测试2班', '这是班级介绍', '2018-03-14 13:44:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1049', '6046', '801', '31e2', '测试3班', '这是班级介绍', '2018-03-14 13:44:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1050', '6046', '801', '31e2', '测试4班', '这是班级介绍', '2018-03-14 13:44:22', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1051', '6047', '801', '5a26', '测试1班', '这是班级介绍', '2018-01-24 02:15:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1052', '6047', '801', '5a26', '测试2班', '这是班级介绍', '2018-01-24 02:15:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1053', '6047', '801', '5a26', '测试3班', '这是班级介绍', '2018-01-24 02:15:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1054', '6047', '801', '5a26', '测试4班', '这是班级介绍', '2018-01-24 02:15:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1055', '6048', '801', '926d', '测试1班', '这是班级介绍', '2018-01-30 07:25:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1056', '6048', '801', '926d', '测试2班', '这是班级介绍', '2018-01-30 07:25:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1057', '6048', '801', '926d', '测试3班', '这是班级介绍', '2018-01-30 07:25:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1058', '6048', '801', '926d', '测试4班', '这是班级介绍', '2018-01-30 07:25:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1059', '6049', '801', 'deef', '测试1班', '这是班级介绍', '2018-03-05 09:06:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1060', '6049', '801', 'deef', '测试2班', '这是班级介绍', '2018-03-05 09:06:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1061', '6049', '801', 'deef', '测试3班', '这是班级介绍', '2018-03-05 09:06:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1062', '6049', '801', 'deef', '测试4班', '这是班级介绍', '2018-03-05 09:06:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1063', '6050', '809', 'd079', '测试1班', '这是班级介绍', '2018-01-27 22:11:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1064', '6050', '809', 'd079', '测试2班', '这是班级介绍', '2018-01-27 22:11:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1065', '6050', '809', 'd079', '测试3班', '这是班级介绍', '2018-01-27 22:11:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1066', '6050', '809', 'd079', '测试4班', '这是班级介绍', '2018-01-27 22:11:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1067', '6051', '809', 'dfcc', '测试1班', '这是班级介绍', '2018-01-18 11:16:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1068', '6051', '809', 'dfcc', '测试2班', '这是班级介绍', '2018-01-18 11:16:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1069', '6051', '809', 'dfcc', '测试3班', '这是班级介绍', '2018-01-18 11:16:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1070', '6051', '809', 'dfcc', '测试4班', '这是班级介绍', '2018-01-18 11:16:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1071', '6052', '809', '1f34', '测试1班', '这是班级介绍', '2018-02-27 23:19:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1072', '6052', '809', '1f34', '测试2班', '这是班级介绍', '2018-02-27 23:19:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1073', '6052', '809', '1f34', '测试3班', '这是班级介绍', '2018-02-27 23:19:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1074', '6052', '809', '1f34', '测试4班', '这是班级介绍', '2018-02-27 23:19:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1075', '6053', '809', '41e7', '测试1班', '这是班级介绍', '2018-02-19 03:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1076', '6053', '809', '41e7', '测试2班', '这是班级介绍', '2018-02-19 03:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1077', '6053', '809', '41e7', '测试3班', '这是班级介绍', '2018-02-19 03:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1078', '6053', '809', '41e7', '测试4班', '这是班级介绍', '2018-02-19 03:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1079', '6054', '809', '4f4e', '测试1班', '这是班级介绍', '2018-03-17 13:52:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1080', '6054', '809', '4f4e', '测试2班', '这是班级介绍', '2018-03-17 13:52:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1081', '6054', '809', '4f4e', '测试3班', '这是班级介绍', '2018-03-17 13:52:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1082', '6054', '809', '4f4e', '测试4班', '这是班级介绍', '2018-03-17 13:52:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1083', '6055', '813', 'eb54', '测试1班', '这是班级介绍', '2018-01-30 02:23:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1084', '6055', '813', 'eb54', '测试2班', '这是班级介绍', '2018-01-30 02:23:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1085', '6055', '813', 'eb54', '测试3班', '这是班级介绍', '2018-01-30 02:23:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1086', '6055', '813', 'eb54', '测试4班', '这是班级介绍', '2018-01-30 02:23:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1087', '6056', '813', '35a6', '测试1班', '这是班级介绍', '2018-01-06 18:11:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1088', '6056', '813', '35a6', '测试2班', '这是班级介绍', '2018-01-06 18:11:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1089', '6056', '813', '35a6', '测试3班', '这是班级介绍', '2018-01-06 18:11:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1090', '6056', '813', '35a6', '测试4班', '这是班级介绍', '2018-01-06 18:11:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1091', '6057', '813', '117a', '测试1班', '这是班级介绍', '2018-02-19 09:20:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1092', '6057', '813', '117a', '测试2班', '这是班级介绍', '2018-02-19 09:20:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1093', '6057', '813', '117a', '测试3班', '这是班级介绍', '2018-02-19 09:20:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1094', '6057', '813', '117a', '测试4班', '这是班级介绍', '2018-02-19 09:20:42', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1095', '6058', '813', '49cb', '测试1班', '这是班级介绍', '2018-01-07 22:45:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1096', '6058', '813', '49cb', '测试2班', '这是班级介绍', '2018-01-07 22:45:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1097', '6058', '813', '49cb', '测试3班', '这是班级介绍', '2018-01-07 22:45:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1098', '6058', '813', '49cb', '测试4班', '这是班级介绍', '2018-01-07 22:45:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1099', '6059', '813', '588c', '测试1班', '这是班级介绍', '2018-02-01 23:16:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1100', '6059', '813', '588c', '测试2班', '这是班级介绍', '2018-02-01 23:16:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1101', '6059', '813', '588c', '测试3班', '这是班级介绍', '2018-02-01 23:16:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1102', '6059', '813', '588c', '测试4班', '这是班级介绍', '2018-02-01 23:16:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1103', '6060', '821', '14d7', '测试1班', '这是班级介绍', '2018-01-14 23:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1104', '6060', '821', '14d7', '测试2班', '这是班级介绍', '2018-01-14 23:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1105', '6060', '821', '14d7', '测试3班', '这是班级介绍', '2018-01-14 23:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1106', '6060', '821', '14d7', '测试4班', '这是班级介绍', '2018-01-14 23:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1107', '6061', '821', 'e0fd', '测试1班', '这是班级介绍', '2018-03-09 20:59:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1108', '6061', '821', 'e0fd', '测试2班', '这是班级介绍', '2018-03-09 20:59:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1109', '6061', '821', 'e0fd', '测试3班', '这是班级介绍', '2018-03-09 20:59:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1110', '6061', '821', 'e0fd', '测试4班', '这是班级介绍', '2018-03-09 20:59:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1111', '6062', '821', 'f797', '测试1班', '这是班级介绍', '2018-01-09 15:28:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1112', '6062', '821', 'f797', '测试2班', '这是班级介绍', '2018-01-09 15:28:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1113', '6062', '821', 'f797', '测试3班', '这是班级介绍', '2018-01-09 15:28:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1114', '6062', '821', 'f797', '测试4班', '这是班级介绍', '2018-01-09 15:28:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1115', '6063', '821', '0d67', '测试1班', '这是班级介绍', '2018-02-04 20:58:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1116', '6063', '821', '0d67', '测试2班', '这是班级介绍', '2018-02-04 20:58:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1117', '6063', '821', '0d67', '测试3班', '这是班级介绍', '2018-02-04 20:58:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1118', '6063', '821', '0d67', '测试4班', '这是班级介绍', '2018-02-04 20:58:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1119', '6064', '821', '566c', '测试1班', '这是班级介绍', '2018-02-19 03:43:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1120', '6064', '821', '566c', '测试2班', '这是班级介绍', '2018-02-19 03:43:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1121', '6064', '821', '566c', '测试3班', '这是班级介绍', '2018-02-19 03:43:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1122', '6064', '821', '566c', '测试4班', '这是班级介绍', '2018-02-19 03:43:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1123', '6065', '825', '707d', '测试1班', '这是班级介绍', '2018-01-05 06:36:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1124', '6065', '825', '707d', '测试2班', '这是班级介绍', '2018-01-05 06:36:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1125', '6065', '825', '707d', '测试3班', '这是班级介绍', '2018-01-05 06:36:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1126', '6065', '825', '707d', '测试4班', '这是班级介绍', '2018-01-05 06:36:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1127', '6066', '833', '139c', '测试1班', '这是班级介绍', '2018-03-07 18:17:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1128', '6066', '833', '139c', '测试2班', '这是班级介绍', '2018-03-07 18:17:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1129', '6066', '833', '139c', '测试3班', '这是班级介绍', '2018-03-07 18:17:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1130', '6066', '833', '139c', '测试4班', '这是班级介绍', '2018-03-07 18:17:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1131', '6067', '833', '5294', '测试1班', '这是班级介绍', '2018-03-11 18:24:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1132', '6067', '833', '5294', '测试2班', '这是班级介绍', '2018-03-11 18:24:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1133', '6067', '833', '5294', '测试3班', '这是班级介绍', '2018-03-11 18:24:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1134', '6067', '833', '5294', '测试4班', '这是班级介绍', '2018-03-11 18:24:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1135', '6068', '833', '47b4', '测试1班', '这是班级介绍', '2018-01-19 03:14:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1136', '6068', '833', '47b4', '测试2班', '这是班级介绍', '2018-01-19 03:14:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1137', '6068', '833', '47b4', '测试3班', '这是班级介绍', '2018-01-19 03:14:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1138', '6068', '833', '47b4', '测试4班', '这是班级介绍', '2018-01-19 03:14:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1139', '6069', '833', 'a51b', '测试1班', '这是班级介绍', '2018-01-10 16:51:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1140', '6069', '833', 'a51b', '测试2班', '这是班级介绍', '2018-01-10 16:51:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1141', '6069', '833', 'a51b', '测试3班', '这是班级介绍', '2018-01-10 16:51:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1142', '6069', '833', 'a51b', '测试4班', '这是班级介绍', '2018-01-10 16:51:43', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1143', '6070', '833', '8d9c', '测试1班', '这是班级介绍', '2018-03-05 05:12:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1144', '6070', '833', '8d9c', '测试2班', '这是班级介绍', '2018-03-05 05:12:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1145', '6070', '833', '8d9c', '测试3班', '这是班级介绍', '2018-03-05 05:12:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1146', '6070', '833', '8d9c', '测试4班', '这是班级介绍', '2018-03-05 05:12:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1147', '6071', '837', '557d', '测试1班', '这是班级介绍', '2018-02-22 17:13:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1148', '6071', '837', '557d', '测试2班', '这是班级介绍', '2018-02-22 17:13:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1149', '6071', '837', '557d', '测试3班', '这是班级介绍', '2018-02-22 17:13:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1150', '6071', '837', '557d', '测试4班', '这是班级介绍', '2018-02-22 17:13:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1151', '6072', '845', 'ee15', '测试1班', '这是班级介绍', '2018-02-02 15:00:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1152', '6072', '845', 'ee15', '测试2班', '这是班级介绍', '2018-02-02 15:00:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1153', '6072', '845', 'ee15', '测试3班', '这是班级介绍', '2018-02-02 15:00:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1154', '6072', '845', 'ee15', '测试4班', '这是班级介绍', '2018-02-02 15:00:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1155', '6073', '849', 'c1c8', '测试1班', '这是班级介绍', '2018-01-20 03:53:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1156', '6073', '849', 'c1c8', '测试2班', '这是班级介绍', '2018-01-20 03:53:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1157', '6073', '849', 'c1c8', '测试3班', '这是班级介绍', '2018-01-20 03:53:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1158', '6073', '849', 'c1c8', '测试4班', '这是班级介绍', '2018-01-20 03:53:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1159', '6074', '849', '76b3', '测试1班', '这是班级介绍', '2018-03-04 00:34:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1160', '6074', '849', '76b3', '测试2班', '这是班级介绍', '2018-03-04 00:34:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1161', '6074', '849', '76b3', '测试3班', '这是班级介绍', '2018-03-04 00:34:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1162', '6074', '849', '76b3', '测试4班', '这是班级介绍', '2018-03-04 00:34:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1163', '6075', '849', '0f59', '测试1班', '这是班级介绍', '2018-01-18 11:26:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1164', '6075', '849', '0f59', '测试2班', '这是班级介绍', '2018-01-18 11:26:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1165', '6075', '849', '0f59', '测试3班', '这是班级介绍', '2018-01-18 11:26:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1166', '6075', '849', '0f59', '测试4班', '这是班级介绍', '2018-01-18 11:26:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1167', '6076', '849', 'c199', '测试1班', '这是班级介绍', '2018-02-27 07:11:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1168', '6076', '849', 'c199', '测试2班', '这是班级介绍', '2018-02-27 07:11:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1169', '6076', '849', 'c199', '测试3班', '这是班级介绍', '2018-02-27 07:11:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1170', '6076', '849', 'c199', '测试4班', '这是班级介绍', '2018-02-27 07:11:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1171', '6077', '849', '23de', '测试1班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1172', '6077', '849', '23de', '测试2班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1173', '6077', '849', '23de', '测试3班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1174', '6077', '849', '23de', '测试4班', '这是班级介绍', '2018-02-07 07:59:59', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1175', '6078', '857', '2e5d', '测试1班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1176', '6078', '857', '2e5d', '测试2班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1177', '6078', '857', '2e5d', '测试3班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1178', '6078', '857', '2e5d', '测试4班', '这是班级介绍', '2018-03-17 21:15:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1179', '6079', '861', '7b53', '测试1班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1180', '6079', '861', '7b53', '测试2班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1181', '6079', '861', '7b53', '测试3班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1182', '6079', '861', '7b53', '测试4班', '这是班级介绍', '2018-01-13 03:38:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1183', '6080', '869', 'fd2c', '测试1班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1184', '6080', '869', 'fd2c', '测试2班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1185', '6080', '869', 'fd2c', '测试3班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1186', '6080', '869', 'fd2c', '测试4班', '这是班级介绍', '2018-01-01 02:21:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1187', '6081', '869', '131e', '测试1班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1188', '6081', '869', '131e', '测试2班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1189', '6081', '869', '131e', '测试3班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1190', '6081', '869', '131e', '测试4班', '这是班级介绍', '2018-03-10 09:37:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1191', '6082', '869', '27bb', '测试1班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1192', '6082', '869', '27bb', '测试2班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1193', '6082', '869', '27bb', '测试3班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1194', '6082', '869', '27bb', '测试4班', '这是班级介绍', '2018-01-07 23:40:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1195', '6083', '869', '5d1b', '测试1班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1196', '6083', '869', '5d1b', '测试2班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1197', '6083', '869', '5d1b', '测试3班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1198', '6083', '869', '5d1b', '测试4班', '这是班级介绍', '2018-02-06 00:24:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1199', '6084', '869', '26e4', '测试1班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1200', '6084', '869', '26e4', '测试2班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1201', '6084', '869', '26e4', '测试3班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1202', '6084', '869', '26e4', '测试4班', '这是班级介绍', '2018-01-12 20:32:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1203', '6085', '873', 'fccc', '测试1班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1204', '6085', '873', 'fccc', '测试2班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1205', '6085', '873', 'fccc', '测试3班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1206', '6085', '873', 'fccc', '测试4班', '这是班级介绍', '2018-03-19 05:00:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1207', '6086', '881', 'fb92', '测试1班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1208', '6086', '881', 'fb92', '测试2班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1209', '6086', '881', 'fb92', '测试3班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1210', '6086', '881', 'fb92', '测试4班', '这是班级介绍', '2018-01-11 08:45:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1211', '6087', '881', '9d4d', '测试1班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1212', '6087', '881', '9d4d', '测试2班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1213', '6087', '881', '9d4d', '测试3班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1214', '6087', '881', '9d4d', '测试4班', '这是班级介绍', '2018-01-04 22:37:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1215', '6088', '881', '50a5', '测试1班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1216', '6088', '881', '50a5', '测试2班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1217', '6088', '881', '50a5', '测试3班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1218', '6088', '881', '50a5', '测试4班', '这是班级介绍', '2018-02-14 21:27:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1219', '6089', '881', '1eb1', '测试1班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1220', '6089', '881', '1eb1', '测试2班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1221', '6089', '881', '1eb1', '测试3班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1222', '6089', '881', '1eb1', '测试4班', '这是班级介绍', '2018-03-03 11:31:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1223', '6090', '881', 'fa22', '测试1班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1224', '6090', '881', 'fa22', '测试2班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1225', '6090', '881', 'fa22', '测试3班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1226', '6090', '881', 'fa22', '测试4班', '这是班级介绍', '2018-01-19 18:07:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1227', '6091', '885', '904f', '测试1班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1228', '6091', '885', '904f', '测试2班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1229', '6091', '885', '904f', '测试3班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1230', '6091', '885', '904f', '测试4班', '这是班级介绍', '2018-03-16 11:27:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1231', '6092', '893', 'f491', '测试1班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1232', '6092', '893', 'f491', '测试2班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1233', '6092', '893', 'f491', '测试3班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1234', '6092', '893', 'f491', '测试4班', '这是班级介绍', '2018-02-06 16:59:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1235', '6093', '897', '51ad', '测试1班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1236', '6093', '897', '51ad', '测试2班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1237', '6093', '897', '51ad', '测试3班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1238', '6093', '897', '51ad', '测试4班', '这是班级介绍', '2018-01-08 09:01:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1239', '6094', '905', '8490', '测试1班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1240', '6094', '905', '8490', '测试2班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1241', '6094', '905', '8490', '测试3班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1242', '6094', '905', '8490', '测试4班', '这是班级介绍', '2018-02-20 06:40:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1243', '6095', '905', '0da9', '测试1班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1244', '6095', '905', '0da9', '测试2班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1245', '6095', '905', '0da9', '测试3班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1246', '6095', '905', '0da9', '测试4班', '这是班级介绍', '2018-02-28 01:34:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1247', '6096', '905', 'b256', '测试1班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1248', '6096', '905', 'b256', '测试2班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1249', '6096', '905', 'b256', '测试3班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1250', '6096', '905', 'b256', '测试4班', '这是班级介绍', '2018-02-25 09:02:44', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1251', '6097', '905', 'd44b', '测试1班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1252', '6097', '905', 'd44b', '测试2班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1253', '6097', '905', 'd44b', '测试3班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1254', '6097', '905', 'd44b', '测试4班', '这是班级介绍', '2018-01-14 03:15:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1255', '6098', '905', 'bc9a', '测试1班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1256', '6098', '905', 'bc9a', '测试2班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1257', '6098', '905', 'bc9a', '测试3班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1258', '6098', '905', 'bc9a', '测试4班', '这是班级介绍', '2018-03-13 20:41:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1259', '6099', '909', '35d5', '测试1班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1260', '6099', '909', '35d5', '测试2班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1261', '6099', '909', '35d5', '测试3班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1262', '6099', '909', '35d5', '测试4班', '这是班级介绍', '2018-01-05 10:21:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1263', '6100', '909', 'fc53', '测试1班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1264', '6100', '909', 'fc53', '测试2班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1265', '6100', '909', 'fc53', '测试3班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1266', '6100', '909', 'fc53', '测试4班', '这是班级介绍', '2018-01-10 20:15:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1267', '6101', '909', '8fa1', '测试1班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1268', '6101', '909', '8fa1', '测试2班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1269', '6101', '909', '8fa1', '测试3班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1270', '6101', '909', '8fa1', '测试4班', '这是班级介绍', '2018-03-08 01:41:36', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1271', '6102', '909', 'eab2', '测试1班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1272', '6102', '909', 'eab2', '测试2班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1273', '6102', '909', 'eab2', '测试3班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1274', '6102', '909', 'eab2', '测试4班', '这是班级介绍', '2018-01-16 18:39:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1275', '6103', '909', '510a', '测试1班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1276', '6103', '909', '510a', '测试2班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1277', '6103', '909', '510a', '测试3班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1278', '6103', '909', '510a', '测试4班', '这是班级介绍', '2018-03-12 14:47:40', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1279', '6104', '917', 'acbd', '测试1班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1280', '6104', '917', 'acbd', '测试2班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1281', '6104', '917', 'acbd', '测试3班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1282', '6104', '917', 'acbd', '测试4班', '这是班级介绍', '2018-01-25 16:17:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1283', '6105', '917', 'e25b', '测试1班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1284', '6105', '917', 'e25b', '测试2班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1285', '6105', '917', 'e25b', '测试3班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1286', '6105', '917', 'e25b', '测试4班', '这是班级介绍', '2018-02-14 15:44:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1287', '6106', '917', 'f89f', '测试1班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1288', '6106', '917', 'f89f', '测试2班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1289', '6106', '917', 'f89f', '测试3班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1290', '6106', '917', 'f89f', '测试4班', '这是班级介绍', '2018-03-17 04:04:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1291', '6107', '917', '9b01', '测试1班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1292', '6107', '917', '9b01', '测试2班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1293', '6107', '917', '9b01', '测试3班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1294', '6107', '917', '9b01', '测试4班', '这是班级介绍', '2018-01-06 16:41:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1295', '6108', '917', '0f98', '测试1班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1296', '6108', '917', '0f98', '测试2班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1297', '6108', '917', '0f98', '测试3班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1298', '6108', '917', '0f98', '测试4班', '这是班级介绍', '2018-02-27 11:22:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1299', '6109', '921', 'a12d', '测试1班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1300', '6109', '921', 'a12d', '测试2班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1301', '6109', '921', 'a12d', '测试3班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1302', '6109', '921', 'a12d', '测试4班', '这是班级介绍', '2018-02-15 23:46:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1303', '6110', '929', '21bc', '测试1班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1304', '6110', '929', '21bc', '测试2班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1305', '6110', '929', '21bc', '测试3班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1306', '6110', '929', '21bc', '测试4班', '这是班级介绍', '2018-01-31 23:22:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1307', '6111', '929', 'eaed', '测试1班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1308', '6111', '929', 'eaed', '测试2班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1309', '6111', '929', 'eaed', '测试3班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1310', '6111', '929', 'eaed', '测试4班', '这是班级介绍', '2018-01-03 16:02:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1311', '6112', '929', '0bba', '测试1班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1312', '6112', '929', '0bba', '测试2班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1313', '6112', '929', '0bba', '测试3班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1314', '6112', '929', '0bba', '测试4班', '这是班级介绍', '2018-03-05 11:54:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1315', '6113', '929', '8709', '测试1班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1316', '6113', '929', '8709', '测试2班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1317', '6113', '929', '8709', '测试3班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1318', '6113', '929', '8709', '测试4班', '这是班级介绍', '2018-01-12 09:00:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1319', '6114', '929', 'b7ea', '测试1班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1320', '6114', '929', 'b7ea', '测试2班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1321', '6114', '929', 'b7ea', '测试3班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1322', '6114', '929', 'b7ea', '测试4班', '这是班级介绍', '2018-03-15 02:05:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1323', '6115', '933', 'd26c', '测试1班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1324', '6115', '933', 'd26c', '测试2班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1325', '6115', '933', 'd26c', '测试3班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1326', '6115', '933', 'd26c', '测试4班', '这是班级介绍', '2018-01-15 12:50:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1327', '6116', '933', '3d22', '测试1班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1328', '6116', '933', '3d22', '测试2班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1329', '6116', '933', '3d22', '测试3班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1330', '6116', '933', '3d22', '测试4班', '这是班级介绍', '2018-03-06 17:33:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1331', '6117', '933', 'cd86', '测试1班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1332', '6117', '933', 'cd86', '测试2班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1333', '6117', '933', 'cd86', '测试3班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1334', '6117', '933', 'cd86', '测试4班', '这是班级介绍', '2018-01-22 06:27:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1335', '6118', '933', '7f6d', '测试1班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1336', '6118', '933', '7f6d', '测试2班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1337', '6118', '933', '7f6d', '测试3班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1338', '6118', '933', '7f6d', '测试4班', '这是班级介绍', '2018-01-24 04:37:37', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1339', '6119', '933', 'fa13', '测试1班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1340', '6119', '933', 'fa13', '测试2班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1341', '6119', '933', 'fa13', '测试3班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1342', '6119', '933', 'fa13', '测试4班', '这是班级介绍', '2018-03-06 01:44:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1343', '6120', '941', 'd457', '测试1班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1344', '6120', '941', 'd457', '测试2班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1345', '6120', '941', 'd457', '测试3班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1346', '6120', '941', 'd457', '测试4班', '这是班级介绍', '2018-03-16 22:54:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1347', '6121', '945', '6c75', '测试1班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1348', '6121', '945', '6c75', '测试2班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1349', '6121', '945', '6c75', '测试3班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1350', '6121', '945', '6c75', '测试4班', '这是班级介绍', '2018-01-28 09:03:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1351', '6122', '945', '9dce', '测试1班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1352', '6122', '945', '9dce', '测试2班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1353', '6122', '945', '9dce', '测试3班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1354', '6122', '945', '9dce', '测试4班', '这是班级介绍', '2018-02-07 02:36:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1355', '6123', '945', 'efdf', '测试1班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1356', '6123', '945', 'efdf', '测试2班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1357', '6123', '945', 'efdf', '测试3班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1358', '6123', '945', 'efdf', '测试4班', '这是班级介绍', '2018-03-21 07:25:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1359', '6124', '945', '4cca', '测试1班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1360', '6124', '945', '4cca', '测试2班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1361', '6124', '945', '4cca', '测试3班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1362', '6124', '945', '4cca', '测试4班', '这是班级介绍', '2018-01-17 22:51:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1363', '6125', '945', 'be41', '测试1班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1364', '6125', '945', 'be41', '测试2班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1365', '6125', '945', 'be41', '测试3班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1366', '6125', '945', 'be41', '测试4班', '这是班级介绍', '2018-01-25 03:24:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1367', '6126', '953', 'b685', '测试1班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1368', '6126', '953', 'b685', '测试2班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1369', '6126', '953', 'b685', '测试3班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1370', '6126', '953', 'b685', '测试4班', '这是班级介绍', '2018-03-05 01:09:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1371', '6127', '957', '3552', '测试1班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1372', '6127', '957', '3552', '测试2班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1373', '6127', '957', '3552', '测试3班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1374', '6127', '957', '3552', '测试4班', '这是班级介绍', '2018-01-22 05:00:28', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1375', '6128', '965', '32b1', '测试1班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1376', '6128', '965', '32b1', '测试2班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1377', '6128', '965', '32b1', '测试3班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1378', '6128', '965', '32b1', '测试4班', '这是班级介绍', '2018-02-04 13:03:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1379', '6129', '969', '5343', '测试1班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1380', '6129', '969', '5343', '测试2班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1381', '6129', '969', '5343', '测试3班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1382', '6129', '969', '5343', '测试4班', '这是班级介绍', '2018-02-12 09:01:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1383', '6130', '969', 'eb27', '测试1班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1384', '6130', '969', 'eb27', '测试2班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1385', '6130', '969', 'eb27', '测试3班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1386', '6130', '969', 'eb27', '测试4班', '这是班级介绍', '2018-01-27 16:12:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1387', '6131', '969', '647c', '测试1班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1388', '6131', '969', '647c', '测试2班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1389', '6131', '969', '647c', '测试3班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1390', '6131', '969', '647c', '测试4班', '这是班级介绍', '2018-01-25 13:44:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1391', '6132', '969', 'c1a8', '测试1班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1392', '6132', '969', 'c1a8', '测试2班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1393', '6132', '969', 'c1a8', '测试3班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1394', '6132', '969', 'c1a8', '测试4班', '这是班级介绍', '2018-03-06 12:25:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1395', '6133', '969', '4d68', '测试1班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1396', '6133', '969', '4d68', '测试2班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1397', '6133', '969', '4d68', '测试3班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1398', '6133', '969', '4d68', '测试4班', '这是班级介绍', '2018-01-25 07:26:54', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1399', '6134', '977', '8069', '测试1班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1400', '6134', '977', '8069', '测试2班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1401', '6134', '977', '8069', '测试3班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1402', '6134', '977', '8069', '测试4班', '这是班级介绍', '2018-01-29 08:04:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1403', '6135', '977', 'e7cd', '测试1班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1404', '6135', '977', 'e7cd', '测试2班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1405', '6135', '977', 'e7cd', '测试3班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1406', '6135', '977', 'e7cd', '测试4班', '这是班级介绍', '2018-02-17 16:08:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1407', '6136', '977', 'a5e4', '测试1班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1408', '6136', '977', 'a5e4', '测试2班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1409', '6136', '977', 'a5e4', '测试3班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1410', '6136', '977', 'a5e4', '测试4班', '这是班级介绍', '2018-01-15 03:01:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1411', '6137', '977', '25d9', '测试1班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1412', '6137', '977', '25d9', '测试2班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1413', '6137', '977', '25d9', '测试3班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1414', '6137', '977', '25d9', '测试4班', '这是班级介绍', '2018-03-11 19:21:17', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1415', '6138', '977', '76f1', '测试1班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1416', '6138', '977', '76f1', '测试2班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1417', '6138', '977', '76f1', '测试3班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1418', '6138', '977', '76f1', '测试4班', '这是班级介绍', '2018-01-23 08:26:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1419', '6139', '981', '56d9', '测试1班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1420', '6139', '981', '56d9', '测试2班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1421', '6139', '981', '56d9', '测试3班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1422', '6139', '981', '56d9', '测试4班', '这是班级介绍', '2018-01-23 14:36:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1423', '6140', '989', '8ef2', '测试1班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1424', '6140', '989', '8ef2', '测试2班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1425', '6140', '989', '8ef2', '测试3班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1426', '6140', '989', '8ef2', '测试4班', '这是班级介绍', '2018-01-25 06:30:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1427', '6141', '993', '3a5f', '测试1班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1428', '6141', '993', '3a5f', '测试2班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1429', '6141', '993', '3a5f', '测试3班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1430', '6141', '993', '3a5f', '测试4班', '这是班级介绍', '2018-01-06 23:54:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1431', '6142', '993', 'c510', '测试1班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1432', '6142', '993', 'c510', '测试2班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1433', '6142', '993', 'c510', '测试3班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1434', '6142', '993', 'c510', '测试4班', '这是班级介绍', '2018-01-27 18:01:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1435', '6143', '993', '5056', '测试1班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1436', '6143', '993', '5056', '测试2班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1437', '6143', '993', '5056', '测试3班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1438', '6143', '993', '5056', '测试4班', '这是班级介绍', '2018-02-12 22:00:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1439', '6144', '993', '5b38', '测试1班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1440', '6144', '993', '5b38', '测试2班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1441', '6144', '993', '5b38', '测试3班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1442', '6144', '993', '5b38', '测试4班', '这是班级介绍', '2018-03-15 00:11:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1443', '6145', '993', '26d2', '测试1班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1444', '6145', '993', '26d2', '测试2班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1445', '6145', '993', '26d2', '测试3班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1446', '6145', '993', '26d2', '测试4班', '这是班级介绍', '2018-02-11 02:26:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1447', '6146', '1001', '49aa', '测试1班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1448', '6146', '1001', '49aa', '测试2班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1449', '6146', '1001', '49aa', '测试3班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1450', '6146', '1001', '49aa', '测试4班', '这是班级介绍', '2018-02-16 07:55:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1451', '6147', '1001', '1137', '测试1班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1452', '6147', '1001', '1137', '测试2班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1453', '6147', '1001', '1137', '测试3班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1454', '6147', '1001', '1137', '测试4班', '这是班级介绍', '2018-03-05 10:04:34', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1455', '6148', '1001', '8644', '测试1班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1456', '6148', '1001', '8644', '测试2班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1457', '6148', '1001', '8644', '测试3班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1458', '6148', '1001', '8644', '测试4班', '这是班级介绍', '2018-03-22 12:07:31', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1459', '6149', '1001', '5300', '测试1班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1460', '6149', '1001', '5300', '测试2班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1461', '6149', '1001', '5300', '测试3班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1462', '6149', '1001', '5300', '测试4班', '这是班级介绍', '2018-01-20 16:44:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1463', '6150', '1001', '404b', '测试1班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1464', '6150', '1001', '404b', '测试2班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1465', '6150', '1001', '404b', '测试3班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1466', '6150', '1001', '404b', '测试4班', '这是班级介绍', '2018-03-02 10:05:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1467', '6151', '1005', 'dd54', '测试1班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1468', '6151', '1005', 'dd54', '测试2班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1469', '6151', '1005', 'dd54', '测试3班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1470', '6151', '1005', 'dd54', '测试4班', '这是班级介绍', '2018-01-02 20:03:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1471', '6152', '1013', '961a', '测试1班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1472', '6152', '1013', '961a', '测试2班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1473', '6152', '1013', '961a', '测试3班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1474', '6152', '1013', '961a', '测试4班', '这是班级介绍', '2018-02-27 02:10:27', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1475', '6153', '1013', '3830', '测试1班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1476', '6153', '1013', '3830', '测试2班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1477', '6153', '1013', '3830', '测试3班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1478', '6153', '1013', '3830', '测试4班', '这是班级介绍', '2018-03-07 04:05:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1479', '6154', '1013', 'bcfb', '测试1班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1480', '6154', '1013', 'bcfb', '测试2班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1481', '6154', '1013', 'bcfb', '测试3班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1482', '6154', '1013', 'bcfb', '测试4班', '这是班级介绍', '2018-02-07 05:54:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1483', '6155', '1013', '49cd', '测试1班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1484', '6155', '1013', '49cd', '测试2班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1485', '6155', '1013', '49cd', '测试3班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1486', '6155', '1013', '49cd', '测试4班', '这是班级介绍', '2018-01-05 03:43:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1487', '6156', '1013', 'dff3', '测试1班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1488', '6156', '1013', 'dff3', '测试2班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1489', '6156', '1013', 'dff3', '测试3班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1490', '6156', '1013', 'dff3', '测试4班', '这是班级介绍', '2018-01-21 12:25:39', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1491', '6157', '1017', '237a', '测试1班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1492', '6157', '1017', '237a', '测试2班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1493', '6157', '1017', '237a', '测试3班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1494', '6157', '1017', '237a', '测试4班', '这是班级介绍', '2018-01-04 15:16:12', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1495', '6158', '1025', 'b8e8', '测试1班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1496', '6158', '1025', 'b8e8', '测试2班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1497', '6158', '1025', 'b8e8', '测试3班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1498', '6158', '1025', 'b8e8', '测试4班', '这是班级介绍', '2018-02-09 06:12:51', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1499', '6159', '1029', 'de37', '测试1班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1500', '6159', '1029', 'de37', '测试2班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1501', '6159', '1029', 'de37', '测试3班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1502', '6159', '1029', 'de37', '测试4班', '这是班级介绍', '2018-01-01 06:53:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1503', '6160', '1037', '575f', '测试1班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1504', '6160', '1037', '575f', '测试2班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1505', '6160', '1037', '575f', '测试3班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1506', '6160', '1037', '575f', '测试4班', '这是班级介绍', '2018-01-04 02:02:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1507', '6161', '1037', '24cf', '测试1班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1508', '6161', '1037', '24cf', '测试2班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1509', '6161', '1037', '24cf', '测试3班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1510', '6161', '1037', '24cf', '测试4班', '这是班级介绍', '2018-03-10 01:38:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1511', '6162', '1037', '0f26', '测试1班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1512', '6162', '1037', '0f26', '测试2班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1513', '6162', '1037', '0f26', '测试3班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1514', '6162', '1037', '0f26', '测试4班', '这是班级介绍', '2018-01-13 07:45:38', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1515', '6163', '1037', '89c0', '测试1班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1516', '6163', '1037', '89c0', '测试2班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1517', '6163', '1037', '89c0', '测试3班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1518', '6163', '1037', '89c0', '测试4班', '这是班级介绍', '2018-03-16 23:42:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1519', '6164', '1037', 'cb87', '测试1班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1520', '6164', '1037', 'cb87', '测试2班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1521', '6164', '1037', 'cb87', '测试3班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1522', '6164', '1037', 'cb87', '测试4班', '这是班级介绍', '2018-03-21 17:45:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1523', '6165', '1041', '0d00', '测试1班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1524', '6165', '1041', '0d00', '测试2班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1525', '6165', '1041', '0d00', '测试3班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1526', '6165', '1041', '0d00', '测试4班', '这是班级介绍', '2018-03-13 21:37:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1527', '6166', '1041', 'fcb3', '测试1班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1528', '6166', '1041', 'fcb3', '测试2班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1529', '6166', '1041', 'fcb3', '测试3班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1530', '6166', '1041', 'fcb3', '测试4班', '这是班级介绍', '2018-01-21 03:32:14', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1531', '6167', '1041', '5b99', '测试1班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1532', '6167', '1041', '5b99', '测试2班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1533', '6167', '1041', '5b99', '测试3班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1534', '6167', '1041', '5b99', '测试4班', '这是班级介绍', '2018-01-02 13:47:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1535', '6168', '1041', '0940', '测试1班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1536', '6168', '1041', '0940', '测试2班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1537', '6168', '1041', '0940', '测试3班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1538', '6168', '1041', '0940', '测试4班', '这是班级介绍', '2018-02-10 19:12:21', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1539', '6169', '1041', '4b2c', '测试1班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1540', '6169', '1041', '4b2c', '测试2班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1541', '6169', '1041', '4b2c', '测试3班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1542', '6169', '1041', '4b2c', '测试4班', '这是班级介绍', '2018-01-02 20:40:20', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1543', '6170', '1049', '33f0', '测试1班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1544', '6170', '1049', '33f0', '测试2班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1545', '6170', '1049', '33f0', '测试3班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1546', '6170', '1049', '33f0', '测试4班', '这是班级介绍', '2018-03-07 19:57:53', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1547', '6171', '1053', 'c7e2', '测试1班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1548', '6171', '1053', 'c7e2', '测试2班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1549', '6171', '1053', 'c7e2', '测试3班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1550', '6171', '1053', 'c7e2', '测试4班', '这是班级介绍', '2018-03-20 10:30:46', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1551', '6172', '1061', 'a71e', '测试1班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1552', '6172', '1061', 'a71e', '测试2班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1553', '6172', '1061', 'a71e', '测试3班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1554', '6172', '1061', 'a71e', '测试4班', '这是班级介绍', '2018-03-17 10:20:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1555', '6173', '1061', '4c23', '测试1班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1556', '6173', '1061', '4c23', '测试2班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1557', '6173', '1061', '4c23', '测试3班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1558', '6173', '1061', '4c23', '测试4班', '这是班级介绍', '2018-03-22 06:53:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1559', '6174', '1061', '06e9', '测试1班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1560', '6174', '1061', '06e9', '测试2班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1561', '6174', '1061', '06e9', '测试3班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1562', '6174', '1061', '06e9', '测试4班', '这是班级介绍', '2018-02-26 22:13:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1563', '6175', '1061', 'fa95', '测试1班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1564', '6175', '1061', 'fa95', '测试2班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1565', '6175', '1061', 'fa95', '测试3班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1566', '6175', '1061', 'fa95', '测试4班', '这是班级介绍', '2018-01-17 20:37:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1567', '6176', '1061', 'a309', '测试1班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1568', '6176', '1061', 'a309', '测试2班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1569', '6176', '1061', 'a309', '测试3班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1570', '6176', '1061', 'a309', '测试4班', '这是班级介绍', '2018-03-22 11:59:23', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1571', '6177', '1065', 'b27e', '测试1班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1572', '6177', '1065', 'b27e', '测试2班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1573', '6177', '1065', 'b27e', '测试3班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1574', '6177', '1065', 'b27e', '测试4班', '这是班级介绍', '2018-01-08 16:34:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1575', '6178', '1073', 'be9d', '测试1班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1576', '6178', '1073', 'be9d', '测试2班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1577', '6178', '1073', 'be9d', '测试3班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1578', '6178', '1073', 'be9d', '测试4班', '这是班级介绍', '2018-03-22 20:54:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1579', '6179', '1077', '3522', '测试1班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1580', '6179', '1077', '3522', '测试2班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1581', '6179', '1077', '3522', '测试3班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1582', '6179', '1077', '3522', '测试4班', '这是班级介绍', '2018-01-30 03:15:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1583', '6180', '1077', 'c31f', '测试1班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1584', '6180', '1077', 'c31f', '测试2班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1585', '6180', '1077', 'c31f', '测试3班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1586', '6180', '1077', 'c31f', '测试4班', '这是班级介绍', '2018-03-09 22:48:24', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1587', '6181', '1077', 'c3ef', '测试1班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1588', '6181', '1077', 'c3ef', '测试2班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1589', '6181', '1077', 'c3ef', '测试3班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1590', '6181', '1077', 'c3ef', '测试4班', '这是班级介绍', '2018-03-10 19:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1591', '6182', '1077', 'd4a8', '测试1班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1592', '6182', '1077', 'd4a8', '测试2班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1593', '6182', '1077', 'd4a8', '测试3班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1594', '6182', '1077', 'd4a8', '测试4班', '这是班级介绍', '2018-01-31 05:05:52', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1595', '6183', '1077', '307c', '测试1班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1596', '6183', '1077', '307c', '测试2班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1597', '6183', '1077', '307c', '测试3班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1598', '6183', '1077', '307c', '测试4班', '这是班级介绍', '2018-01-05 12:40:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1599', '6184', '1085', 'fd82', '测试1班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1600', '6184', '1085', 'fd82', '测试2班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1601', '6184', '1085', 'fd82', '测试3班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1602', '6184', '1085', 'fd82', '测试4班', '这是班级介绍', '2018-03-06 07:54:15', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1603', '6185', '1085', '2784', '测试1班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1604', '6185', '1085', '2784', '测试2班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1605', '6185', '1085', '2784', '测试3班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1606', '6185', '1085', '2784', '测试4班', '这是班级介绍', '2018-01-01 00:41:10', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1607', '6186', '1085', '8caf', '测试1班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1608', '6186', '1085', '8caf', '测试2班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1609', '6186', '1085', '8caf', '测试3班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1610', '6186', '1085', '8caf', '测试4班', '这是班级介绍', '2018-01-16 11:16:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1611', '6187', '1085', 'e97b', '测试1班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1612', '6187', '1085', 'e97b', '测试2班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1613', '6187', '1085', 'e97b', '测试3班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1614', '6187', '1085', 'e97b', '测试4班', '这是班级介绍', '2018-03-03 00:50:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1615', '6188', '1085', 'bd70', '测试1班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1616', '6188', '1085', 'bd70', '测试2班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1617', '6188', '1085', 'bd70', '测试3班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1618', '6188', '1085', 'bd70', '测试4班', '这是班级介绍', '2018-02-18 14:10:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1619', '6189', '1089', 'dce9', '测试1班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1620', '6189', '1089', 'dce9', '测试2班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1621', '6189', '1089', 'dce9', '测试3班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1622', '6189', '1089', 'dce9', '测试4班', '这是班级介绍', '2018-03-06 00:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1623', '6190', '1097', 'df1b', '测试1班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1624', '6190', '1097', 'df1b', '测试2班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1625', '6190', '1097', 'df1b', '测试3班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1626', '6190', '1097', 'df1b', '测试4班', '这是班级介绍', '2018-03-14 00:54:07', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1627', '6191', '1101', '3306', '测试1班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1628', '6191', '1101', '3306', '测试2班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1629', '6191', '1101', '3306', '测试3班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1630', '6191', '1101', '3306', '测试4班', '这是班级介绍', '2018-02-11 12:03:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1631', '6192', '1101', '9818', '测试1班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1632', '6192', '1101', '9818', '测试2班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1633', '6192', '1101', '9818', '测试3班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1634', '6192', '1101', '9818', '测试4班', '这是班级介绍', '2018-01-03 19:35:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1635', '6193', '1101', 'cac3', '测试1班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1636', '6193', '1101', 'cac3', '测试2班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1637', '6193', '1101', 'cac3', '测试3班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1638', '6193', '1101', 'cac3', '测试4班', '这是班级介绍', '2018-01-26 03:05:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1639', '6194', '1101', '0748', '测试1班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1640', '6194', '1101', '0748', '测试2班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1641', '6194', '1101', '0748', '测试3班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1642', '6194', '1101', '0748', '测试4班', '这是班级介绍', '2018-03-08 00:14:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1643', '6195', '1101', '78a7', '测试1班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1644', '6195', '1101', '78a7', '测试2班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1645', '6195', '1101', '78a7', '测试3班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1646', '6195', '1101', '78a7', '测试4班', '这是班级介绍', '2018-02-23 01:45:35', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1647', '6196', '1109', '141b', '测试1班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1648', '6196', '1109', '141b', '测试2班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1649', '6196', '1109', '141b', '测试3班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1650', '6196', '1109', '141b', '测试4班', '这是班级介绍', '2018-01-07 23:43:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1651', '6197', '1113', 'f37c', '测试1班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1652', '6197', '1113', 'f37c', '测试2班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1653', '6197', '1113', 'f37c', '测试3班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1654', '6197', '1113', 'f37c', '测试4班', '这是班级介绍', '2018-01-20 19:11:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1655', '6198', '1113', '78b7', '测试1班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1656', '6198', '1113', '78b7', '测试2班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1657', '6198', '1113', '78b7', '测试3班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1658', '6198', '1113', '78b7', '测试4班', '这是班级介绍', '2018-03-10 07:17:13', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1659', '6199', '1113', 'd0b4', '测试1班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1660', '6199', '1113', 'd0b4', '测试2班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1661', '6199', '1113', 'd0b4', '测试3班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1662', '6199', '1113', 'd0b4', '测试4班', '这是班级介绍', '2018-03-11 11:50:04', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1663', '6200', '1113', '8fa8', '测试1班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1664', '6200', '1113', '8fa8', '测试2班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1665', '6200', '1113', '8fa8', '测试3班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1666', '6200', '1113', '8fa8', '测试4班', '这是班级介绍', '2018-01-02 10:29:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1667', '6201', '1113', '0eb2', '测试1班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1668', '6201', '1113', '0eb2', '测试2班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1669', '6201', '1113', '0eb2', '测试3班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1670', '6201', '1113', '0eb2', '测试4班', '这是班级介绍', '2018-02-10 16:14:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1671', '6202', '1121', 'e660', '测试1班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1672', '6202', '1121', 'e660', '测试2班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1673', '6202', '1121', 'e660', '测试3班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1674', '6202', '1121', 'e660', '测试4班', '这是班级介绍', '2018-01-11 23:13:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1675', '6203', '1121', 'c100', '测试1班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1676', '6203', '1121', 'c100', '测试2班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1677', '6203', '1121', 'c100', '测试3班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1678', '6203', '1121', 'c100', '测试4班', '这是班级介绍', '2018-03-22 06:28:05', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1679', '6204', '1121', '5e6d', '测试1班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1680', '6204', '1121', '5e6d', '测试2班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1681', '6204', '1121', '5e6d', '测试3班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1682', '6204', '1121', '5e6d', '测试4班', '这是班级介绍', '2018-01-10 02:30:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1683', '6205', '1121', '349e', '测试1班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1684', '6205', '1121', '349e', '测试2班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1685', '6205', '1121', '349e', '测试3班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1686', '6205', '1121', '349e', '测试4班', '这是班级介绍', '2018-01-21 01:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1687', '6206', '1121', '6e63', '测试1班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1688', '6206', '1121', '6e63', '测试2班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1689', '6206', '1121', '6e63', '测试3班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1690', '6206', '1121', '6e63', '测试4班', '这是班级介绍', '2018-01-03 01:27:30', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1691', '6207', '1125', 'd0e0', '测试1班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1692', '6207', '1125', 'd0e0', '测试2班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1693', '6207', '1125', 'd0e0', '测试3班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1694', '6207', '1125', 'd0e0', '测试4班', '这是班级介绍', '2018-03-19 04:48:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1695', '6208', '1125', '2677', '测试1班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1696', '6208', '1125', '2677', '测试2班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1697', '6208', '1125', '2677', '测试3班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1698', '6208', '1125', '2677', '测试4班', '这是班级介绍', '2018-03-14 06:08:56', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1699', '6209', '1125', 'bbfb', '测试1班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1700', '6209', '1125', 'bbfb', '测试2班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1701', '6209', '1125', 'bbfb', '测试3班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1702', '6209', '1125', 'bbfb', '测试4班', '这是班级介绍', '2018-03-01 15:09:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1703', '6210', '1125', '78d1', '测试1班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1704', '6210', '1125', '78d1', '测试2班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1705', '6210', '1125', '78d1', '测试3班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1706', '6210', '1125', '78d1', '测试4班', '这是班级介绍', '2018-03-13 23:26:11', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1707', '6211', '1125', 'bab4', '测试1班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1708', '6211', '1125', 'bab4', '测试2班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1709', '6211', '1125', 'bab4', '测试3班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1710', '6211', '1125', 'bab4', '测试4班', '这是班级介绍', '2018-01-10 06:36:26', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1711', '6212', '1133', '68dd', '测试1班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1712', '6212', '1133', '68dd', '测试2班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1713', '6212', '1133', '68dd', '测试3班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1714', '6212', '1133', '68dd', '测试4班', '这是班级介绍', '2018-03-22 18:27:18', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1715', '6213', '1137', '98bc', '测试1班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1716', '6213', '1137', '98bc', '测试2班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1717', '6213', '1137', '98bc', '测试3班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1718', '6213', '1137', '98bc', '测试4班', '这是班级介绍', '2018-02-16 00:11:41', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1719', '6214', '1145', '58e6', '测试1班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1720', '6214', '1145', '58e6', '测试2班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1721', '6214', '1145', '58e6', '测试3班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1722', '6214', '1145', '58e6', '测试4班', '这是班级介绍', '2018-01-31 14:31:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1723', '6215', '1149', 'beea', '测试1班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1724', '6215', '1149', 'beea', '测试2班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1725', '6215', '1149', 'beea', '测试3班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1726', '6215', '1149', 'beea', '测试4班', '这是班级介绍', '2018-01-22 11:01:47', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1727', '6216', '1149', 'c829', '测试1班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1728', '6216', '1149', 'c829', '测试2班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1729', '6216', '1149', 'c829', '测试3班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1730', '6216', '1149', 'c829', '测试4班', '这是班级介绍', '2018-01-18 15:13:00', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1731', '6217', '1149', '9dc2', '测试1班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1732', '6217', '1149', '9dc2', '测试2班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1733', '6217', '1149', '9dc2', '测试3班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1734', '6217', '1149', '9dc2', '测试4班', '这是班级介绍', '2018-02-13 06:16:50', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1735', '6218', '1149', 'f99e', '测试1班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1736', '6218', '1149', 'f99e', '测试2班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1737', '6218', '1149', 'f99e', '测试3班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1738', '6218', '1149', 'f99e', '测试4班', '这是班级介绍', '2018-02-23 05:01:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1739', '6219', '1149', 'afeb', '测试1班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1740', '6219', '1149', 'afeb', '测试2班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1741', '6219', '1149', 'afeb', '测试3班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1742', '6219', '1149', 'afeb', '测试4班', '这是班级介绍', '2018-01-02 08:48:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1747', '6221', '1161', '3c45', '测试1班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1748', '6221', '1161', '3c45', '测试2班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1749', '6221', '1161', '3c45', '测试3班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1750', '6221', '1161', '3c45', '测试4班', '这是班级介绍', '2018-01-06 06:47:57', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1751', '6222', '1161', 'ada2', '测试1班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1752', '6222', '1161', 'ada2', '测试2班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1753', '6222', '1161', 'ada2', '测试3班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1754', '6222', '1161', 'ada2', '测试4班', '这是班级介绍', '2018-01-10 09:31:58', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1755', '6223', '1161', '2266', '测试1班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1756', '6223', '1161', '2266', '测试2班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1757', '6223', '1161', '2266', '测试3班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1758', '6223', '1161', '2266', '测试4班', '这是班级介绍', '2018-01-21 07:58:32', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1759', '6224', '1161', 'd9eb', '测试1班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1760', '6224', '1161', 'd9eb', '测试2班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1761', '6224', '1161', 'd9eb', '测试3班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1762', '6224', '1161', 'd9eb', '测试4班', '这是班级介绍', '2018-01-02 00:12:09', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1763', '6225', '1161', '33d8', '测试1班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1764', '6225', '1161', '33d8', '测试2班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1765', '6225', '1161', '33d8', '测试3班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1766', '6225', '1161', '33d8', '测试4班', '这是班级介绍', '2018-03-18 09:11:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1767', '6226', '1169', 'd7bd', '测试1班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1768', '6226', '1169', 'd7bd', '测试2班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1769', '6226', '1169', 'd7bd', '测试3班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1770', '6226', '1169', 'd7bd', '测试4班', '这是班级介绍', '2018-03-22 01:57:48', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1771', '6227', '1173', '153a', '测试1班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1772', '6227', '1173', '153a', '测试2班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1773', '6227', '1173', '153a', '测试3班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1774', '6227', '1173', '153a', '测试4班', '这是班级介绍', '2018-03-19 21:14:45', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1775', '6228', '1173', '0c8d', '测试1班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1776', '6228', '1173', '0c8d', '测试2班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1777', '6228', '1173', '0c8d', '测试3班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1778', '6228', '1173', '0c8d', '测试4班', '这是班级介绍', '2018-03-21 16:56:06', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1779', '6229', '1173', 'db86', '测试1班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1780', '6229', '1173', 'db86', '测试2班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1781', '6229', '1173', 'db86', '测试3班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1782', '6229', '1173', 'db86', '测试4班', '这是班级介绍', '2018-03-05 12:03:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1783', '6230', '1173', '9535', '测试1班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1784', '6230', '1173', '9535', '测试2班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1785', '6230', '1173', '9535', '测试3班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1786', '6230', '1173', '9535', '测试4班', '这是班级介绍', '2018-03-03 19:10:49', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1787', '6231', '1173', 'c36b', '测试1班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1788', '6231', '1173', 'c36b', '测试2班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1789', '6231', '1173', 'c36b', '测试3班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1790', '6231', '1173', 'c36b', '测试4班', '这是班级介绍', '2018-02-09 03:25:01', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1791', '6232', '1181', 'b1a4', '测试1班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1792', '6232', '1181', 'b1a4', '测试2班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1793', '6232', '1181', 'b1a4', '测试3班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1794', '6232', '1181', 'b1a4', '测试4班', '这是班级介绍', '2018-02-11 17:49:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1795', '6233', '1181', 'beec', '测试1班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1796', '6233', '1181', 'beec', '测试2班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1797', '6233', '1181', 'beec', '测试3班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1798', '6233', '1181', 'beec', '测试4班', '这是班级介绍', '2018-02-15 18:48:02', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1799', '6234', '1181', '05ed', '测试1班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1800', '6234', '1181', '05ed', '测试2班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1801', '6234', '1181', '05ed', '测试3班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1802', '6234', '1181', '05ed', '测试4班', '这是班级介绍', '2018-01-27 06:39:33', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1803', '6235', '1181', '1066', '测试1班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1804', '6235', '1181', '1066', '测试2班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1805', '6235', '1181', '1066', '测试3班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1806', '6235', '1181', '1066', '测试4班', '这是班级介绍', '2018-01-20 02:48:03', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1807', '6236', '1181', '1d5c', '测试1班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1808', '6236', '1181', '1d5c', '测试2班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1809', '6236', '1181', '1d5c', '测试3班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1810', '6236', '1181', '1d5c', '测试4班', '这是班级介绍', '2018-01-24 22:04:16', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1811', '6237', '1185', '18eb', '测试1班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1812', '6237', '1185', '18eb', '测试2班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1813', '6237', '1185', '18eb', '测试3班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1814', '6237', '1185', '18eb', '测试4班', '这是班级介绍', '2018-01-08 17:57:19', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1815', '6238', '1193', '4106', '测试1班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1816', '6238', '1193', '4106', '测试2班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1817', '6238', '1193', '4106', '测试3班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1818', '6238', '1193', '4106', '测试4班', '这是班级介绍', '2018-01-22 15:13:55', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1819', '6239', '1197', '023a', '测试1班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1820', '6239', '1197', '023a', '测试2班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1821', '6239', '1197', '023a', '测试3班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');
INSERT INTO `grade_class` VALUES ('1822', '6239', '1197', '023a', '测试4班', '这是班级介绍', '2018-01-13 10:58:29', '2018-03-29 23:04:26');

-- ----------------------------
-- Table structure for happyread
-- ----------------------------
DROP TABLE IF EXISTS `happyread`;
CREATE TABLE `happyread` (
  `happyread_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `happyread_title` varchar(40) NOT NULL,
  `happyread_content` varchar(255) DEFAULT NULL,
  `Happyread_link` varchar(255) DEFAULT NULL,
  `happyread_img` varchar(255) NOT NULL,
  `gmt_del` int(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`happyread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of happyread
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
-- Table structure for platform_bill
-- ----------------------------
DROP TABLE IF EXISTS `platform_bill`;
CREATE TABLE `platform_bill` (
  `platform_bill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `platform_bill_title` varchar(40) NOT NULL,
  `platform_bill_detail` varchar(255) DEFAULT NULL,
  `platform_bill_money` decimal(10,2) NOT NULL,
  `platform_bill_balance` decimal(14,2) NOT NULL,
  `gmt_del` int(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`platform_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of platform_bill
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
  `school_code` char(5) NOT NULL DEFAULT '',
  `school_name` varchar(50) NOT NULL DEFAULT '',
  `school_badge` varchar(255) NOT NULL DEFAULT '0.png',
  `school_introduce` varchar(255) DEFAULT NULL,
  `school_background` varchar(255) NOT NULL DEFAULT '',
  `school_city` varchar(255) DEFAULT NULL,
  `school_province` varchar(255) DEFAULT NULL,
  `school_type` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `gmt_create` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('305', '8edb0', '绍兴信息大学001', '10.png', '测试介绍007', '0.png', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('309', 'ff7dd', '丽水某机构003', '3.png', '测试介绍004', '7.png', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('317', 'e6a1c', '衡州信息小学002', '7.png', '测试介绍002', '0.png', '嘉兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('329', 'c6a35', '金华某机构003', '3.png', '测试介绍007', '7.png', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('333', '83782', '台州测试学校004', '4.png', '测试介绍007', '8.png', '衡州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('341', 'fbc46', '杭州信息小学002', '4.png', '测试介绍001', '6.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('345', 'b8fe4', '温州信息小学001', '3.png', '测试介绍006', '3.png', '杭州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('353', '78fc6', '金华某机构004', '1.png', '测试介绍005', '0.png', '杭州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('357', 'dec09', '衡州某机构004', '4.png', '测试介绍004', '2.png', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('365', 'eefd7', '台州某机构004', '0.png', '测试介绍007', '1.png', '衡州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('369', 'ac38f', '衡州信息学院002', '9.png', '测试介绍004', '2.png', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('377', '008f7', '嘉兴某机构004', '5.png', '测试介绍006', '0.png', '衡州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('381', '6ec32', '舟山某机构003', '4.png', '测试介绍003', '4.png', '金华', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('389', 'f2c52', '绍兴某机构003', '1.png', '测试介绍003', '6.png', '温州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('393', 'aad0d', '丽水信息小学002', '2.png', '测试介绍001', '0.png', '衡州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('401', '37698', '衡州信息学院001', '6.png', '测试介绍005', '10.png', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('405', 'f8c09', '台州信息学院002', '10.png', '测试介绍005', '7.png', '衡州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('413', 'b0ee3', '丽水信息学院001', '10.png', '测试介绍003', '3.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('417', 'a304e', '丽水测试学校003', '7.png', '测试介绍001', '6.png', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('425', 'd17e6', '台州信息小学001', '3.png', '测试介绍003', '0.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('429', '395b3', '衡州某机构003', '8.png', '测试介绍005', '9.png', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('437', '75135', '金华测试小学', '5.png', '测试介绍003', '4.png', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('441', '75963', '温州测试小学', '2.png', '测试介绍002', '5.png', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('449', '410fa', '舟山信息小学001', '4.png', '测试介绍003', '6.png', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('453', 'a7f16', '嘉兴测试学校004', '3.png', '测试介绍004', '8.png', '湖州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('461', '8908b', '杭州信息学院002', '2.png', '测试介绍007', '3.png', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('465', '506ef', '金华测试小学', '4.png', '测试介绍001', '6.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('473', 'c1ce7', '台州信息小学002', '1.png', '测试介绍002', '5.png', '嘉兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('477', 'ac4c4', '温州某机构003', '6.png', '测试介绍004', '2.png', '湖州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('485', '77013', '杭州测试学校003', '7.png', '测试介绍003', '2.png', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('489', '77892', '嘉兴测试学校003', '9.png', '测试介绍004', '7.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('497', '9c5e3', '丽水测试小学', '0.png', '测试介绍005', '4.png', '衡州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('501', '53f28', '金华通信学院001', '0.png', '测试介绍003', '10.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('509', '73026', '台州某机构003', '7.png', '测试介绍001', '5.png', '台州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('513', '90740', '台州信息小学002', '9.png', '测试介绍004', '1.png', '衡州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('521', 'd26bc', '宁波测试学校003', '5.png', '测试介绍005', '9.png', '衡州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('525', '85d70', '台州通信学院001', '7.png', '测试介绍004', '2.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('533', '02e98', '台州信息小学001', '8.png', '测试介绍005', '1.png', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('537', 'ba537', '舟山信息学院001', '5.png', '测试介绍003', '10.png', '衡州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('545', '8e944', '衡州测试小学', '4.png', '测试介绍007', '10.png', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('549', 'c9ca6', '丽水测试学校004', '8.png', '测试介绍003', '6.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('557', 'fa68e', '温州信息学院002', '10.png', '测试介绍002', '8.png', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('561', 'a807e', '杭州信息学院002', '10.png', '测试介绍004', '4.png', '湖州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('569', '8dd08', '舟山信息学院001', '7.png', '测试介绍007', '1.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('573', '52844', '嘉兴某机构003', '0.png', '测试介绍002', '6.png', '衡州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('581', '73019', '宁波某机构004', '3.png', '测试介绍003', '6.png', '宁波', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('585', '874a6', '舟山测试学校004', '4.png', '测试介绍006', '4.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('593', '5668a', '杭州测试小学', '7.png', '测试介绍001', '0.png', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('597', '18f51', '舟山信息小学001', '2.png', '测试介绍002', '1.png', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('605', '4556e', '台州信息小学001', '1.png', '测试介绍004', '1.png', '湖州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('609', 'edc4e', '衡州测试小学', '1.png', '测试介绍004', '3.png', '衡州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('617', '61e85', '绍兴某机构003', '2.png', '测试介绍004', '8.png', '衡州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('621', 'b9998', '丽水测试学校003', '8.png', '测试介绍004', '5.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('629', '82779', '舟山测试学校004', '9.png', '测试介绍001', '6.png', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('633', '66c81', '衡州测试学校003', '5.png', '测试介绍002', '0.png', '衡州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('641', 'bd7c1', '温州信息小学001', '9.png', '测试介绍007', '3.png', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('645', '27034', '温州测试学校004', '4.png', '测试介绍003', '5.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('653', '915fd', '杭州测试学校003', '1.png', '测试介绍001', '10.png', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('657', '581e9', '舟山某机构003', '10.png', '测试介绍004', '0.png', '温州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('665', '1d5d3', '金华信息小学002', '0.png', '测试介绍001', '9.png', '嘉兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('669', 'd8f81', '绍兴信息小学001', '5.png', '测试介绍003', '5.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('677', 'e3d37', '温州信息小学001', '9.png', '测试介绍002', '7.png', '杭州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('681', '3c30e', '宁波信息小学001', '1.png', '测试介绍005', '1.png', '衡州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('689', '4ff15', '丽水信息学院001', '1.png', '测试介绍007', '2.png', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('693', '4114d', '丽水信息小学001', '8.png', '测试介绍002', '0.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('701', 'c808a', '宁波信息学院002', '7.png', '测试介绍007', '0.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('705', '811f1', '宁波信息学院001', '2.png', '测试介绍005', '6.png', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('713', 'aadfd', '绍兴测试学校003', '4.png', '测试介绍004', '7.png', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('717', '96ec0', '嘉兴某机构004', '2.png', '测试介绍003', '8.png', '衡州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('725', 'de2ed', '舟山信息小学002', '0.png', '测试介绍003', '7.png', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('729', '05d50', '舟山某机构004', '10.png', '测试介绍005', '0.png', '宁波', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('737', '958d4', '金华某机构004', '2.png', '测试介绍001', '6.png', '绍兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('741', '06cb5', '丽水测试小学', '0.png', '测试介绍005', '5.png', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('749', '80cb2', '绍兴信息学院002', '4.png', '测试介绍005', '4.png', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('753', 'de244', '温州测试学校003', '6.png', '测试介绍004', '0.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('761', 'cfda1', '金华某机构003', '2.png', '测试介绍006', '1.png', '温州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('765', '5d678', '台州某机构003', '10.png', '测试介绍006', '4.png', '绍兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('773', '44b7f', '杭州通信学院001', '4.png', '测试介绍004', '5.png', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('777', '1d2f6', '杭州通信学院001', '3.png', '测试介绍002', '7.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('785', 'fc42a', '衡州测试学校004', '1.png', '测试介绍003', '5.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('789', '6d3ea', '杭州信息小学001', '5.png', '测试介绍004', '9.png', '杭州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('797', '44f9b', '杭州测试小学', '1.png', '测试介绍004', '4.png', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('801', '15f1c', '金华测试学校003', '2.png', '测试介绍007', '1.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('809', '230da', '衡州信息学院001', '4.png', '测试介绍002', '8.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('813', '58412', '衡州通信学院001', '6.png', '测试介绍007', '8.png', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('821', 'f6c82', '舟山信息学院002', '10.png', '测试介绍003', '9.png', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('825', 'e6d1c', '温州信息小学002', '4.png', '测试介绍003', '3.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('833', '9a7da', '台州信息学院002', '7.png', '测试介绍006', '7.png', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('837', 'e859d', '舟山测试小学', '0.png', '测试介绍004', '4.png', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('845', '3e617', '宁波某机构004', '9.png', '测试介绍002', '5.png', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('849', '4b549', '衡州信息学院001', '8.png', '测试介绍007', '9.png', '丽水', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('857', 'bc11e', '台州某机构004', '6.png', '测试介绍003', '7.png', '温州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('861', '49c87', '绍兴信息小学002', '2.png', '测试介绍003', '8.png', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('869', 'bb37e', '杭州信息学院002', '9.png', '测试介绍003', '0.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('873', '1ba1d', '宁波某机构004', '2.png', '测试介绍007', '8.png', '杭州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('881', 'c97ce', '金华通信学院001', '2.png', '测试介绍001', '4.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('885', 'c5294', '绍兴信息小学002', '0.png', '测试介绍002', '7.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('893', 'd2e41', '舟山某机构004', '7.png', '测试介绍002', '1.png', '湖州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('897', 'd13dc', '温州信息小学002', '10.png', '测试介绍003', '2.png', '嘉兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('905', '0b68f', '杭州测试学校004', '9.png', '测试介绍005', '0.png', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('909', 'cf539', '金华信息学院002', '6.png', '测试介绍005', '5.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('917', '193f9', '丽水测试学校003', '9.png', '测试介绍005', '6.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('921', '0fa78', '绍兴某机构004', '5.png', '测试介绍005', '0.png', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('929', '54b03', '台州通信学院001', '0.png', '测试介绍002', '10.png', '衡州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('933', '554ad', '杭州测试学校004', '9.png', '测试介绍007', '5.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('941', 'cc658', '嘉兴某机构004', '1.png', '测试介绍005', '4.png', '温州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('945', '949c2', '绍兴信息学院002', '9.png', '测试介绍005', '5.png', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('953', '49e9c', '宁波某机构003', '7.png', '测试介绍006', '8.png', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('957', '5714b', '舟山某机构004', '10.png', '测试介绍006', '0.png', '丽水', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('965', '55479', '金华某机构004', '6.png', '测试介绍005', '3.png', '丽水', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('969', 'c6195', '丽水测试学校003', '1.png', '测试介绍006', '6.png', '台州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('977', '81bd1', '金华信息学院002', '8.png', '测试介绍001', '10.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('981', '6b10c', '杭州某机构003', '2.png', '测试介绍001', '2.png', '衡州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('989', '4035b', '嘉兴某机构003', '0.png', '测试介绍004', '2.png', '嘉兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('993', 'd6052', '衡州通信学院001', '8.png', '测试介绍003', '10.png', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1001', '2d5cd', '绍兴通信学院001', '6.png', '测试介绍007', '1.png', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1005', '05838', '金华信息小学001', '0.png', '测试介绍006', '9.png', '湖州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1013', '7b222', '台州测试学校004', '5.png', '测试介绍001', '8.png', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1017', '0f1db', '丽水测试小学', '6.png', '测试介绍003', '1.png', '台州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1025', 'f97f4', '舟山某机构003', '2.png', '测试介绍004', '0.png', '舟山', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1029', '8684e', '台州测试小学', '0.png', '测试介绍001', '6.png', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1037', 'ed2f1', '舟山测试学校003', '1.png', '测试介绍002', '0.png', '舟山', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1041', 'bb8da', '丽水通信学院001', '6.png', '测试介绍004', '2.png', '嘉兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1049', '476be', '衡州某机构004', '7.png', '测试介绍001', '7.png', '台州', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1053', 'e64a4', '金华信息小学001', '6.png', '测试介绍007', '6.png', '宁波', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1061', 'f826c', '嘉兴信息学院001', '9.png', '测试介绍007', '8.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1065', '7b751', '舟山信息小学001', '6.png', '测试介绍006', '5.png', '温州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1073', '3d72f', '金华某机构003', '7.png', '测试介绍001', '3.png', '绍兴', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1077', '07e95', '绍兴信息学院001', '9.png', '测试介绍002', '0.png', '衡州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1085', '04a44', '宁波信息学院001', '6.png', '测试介绍005', '4.png', '温州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1089', 'ec82d', '台州测试小学', '8.png', '测试介绍005', '7.png', '金华', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1097', 'cba83', '金华测试小学', '9.png', '测试介绍005', '10.png', '湖州', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1101', '7f677', '温州测试学校003', '8.png', '测试介绍001', '0.png', '杭州', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1109', 'cb1de', '台州信息小学002', '1.png', '测试介绍006', '1.png', '嘉兴', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1113', '6656e', '杭州信息学院001', '0.png', '测试介绍003', '10.png', '绍兴', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1121', '33841', '温州测试学校004', '5.png', '测试介绍003', '9.png', '金华', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1125', 'cd31d', '衡州通信学院001', '1.png', '测试介绍003', '6.png', '宁波', '浙江', '2', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1133', '593d7', '台州信息小学002', '8.png', '测试介绍006', '9.png', '舟山', '浙江', '1', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1137', 'bb037', '绍兴某机构003', '10.png', '测试介绍007', '5.png', '丽水', '浙江', '3', '2017-12-27 07:19:22', '2018-03-04 12:36:56');
INSERT INTO `school` VALUES ('1145', '9e3ce', '台州信息小学001', '3.png', '测试介绍003', '8.png', '绍兴', '浙江', '1', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1149', '19999', '宁波测试学校004', '9.png', '测试介绍004', '2.png', '杭州', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1161', '3b020', '金华信息学院001', '1.png', '测试介绍005', '7.png', '台州', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1169', 'ac759', '嘉兴某机构003', '1.png', '测试介绍001', '0.png', '嘉兴', '浙江', '3', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1173', '74e35', '金华信息学院002', '4.png', '测试介绍002', '2.png', '金华', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1181', '10ea6', '绍兴测试学校004', '7.png', '测试介绍001', '8.png', '温州', '浙江', '2', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1193', '72b0c', '丽水测试小学', '10.png', '测试介绍003', '2.png', '绍兴', '浙江', '1', '2017-12-21 01:16:38', '2018-03-06 03:22:59');
INSERT INTO `school` VALUES ('1197', 'bc9ed', '温州信息小学001', '3.png', '测试介绍001', '3.png', '绍兴', '浙江', '1', '2017-12-21 01:16:38', '2018-03-06 03:22:59');

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
-- Table structure for sensitive_word
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_word`;
CREATE TABLE `sensitive_word` (
  `sensitive_word_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `gmt_del` int(1) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`sensitive_word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensitive_word
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
