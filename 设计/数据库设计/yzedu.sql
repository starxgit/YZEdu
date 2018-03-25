/*
 Navicat MySQL Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : localhost:3306
 Source Schema         : yzedu

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : 65001

 Date: 25/03/2018 12:24:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ability
-- ----------------------------
DROP TABLE IF EXISTS `ability`;
CREATE TABLE `ability`  (
  `ability_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int(11) UNSIGNED NOT NULL,
  `ability_theory` tinyint(3) UNSIGNED NOT NULL DEFAULT 100,
  `ability_language` tinyint(3) UNSIGNED NOT NULL DEFAULT 100,
  `ability_innovate` tinyint(3) UNSIGNED NOT NULL DEFAULT 100,
  `ability_think` tinyint(3) UNSIGNED NOT NULL DEFAULT 100,
  `ability_teamwork` tinyint(3) UNSIGNED NOT NULL DEFAULT 100,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`ability_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_account` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_authority` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000',
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for advice
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice`  (
  `advice_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(1) UNSIGNED NOT NULL,
  `advice_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`advice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `announcement_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_id` int(11) UNSIGNED NOT NULL,
  `announcement_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `announcement_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `announcement_stick` tinyint(1) NOT NULL DEFAULT 0,
  `gmt_del` tinyint(1) NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`announcement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `banner_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL DEFAULT -1,
  `banner_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `banner_type` tinyint(1) NOT NULL DEFAULT 0,
  `banner_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `bill_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `bill_money` decimal(8, 2) NOT NULL DEFAULT 0.00,
  `bill_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for circle_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `circle_dynamic`;
CREATE TABLE `circle_dynamic`  (
  `circle_dynamic_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_id` int(11) UNSIGNED NOT NULL,
  `circle_dynamic_author` int(11) UNSIGNED NOT NULL,
  `circle_dynamic_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dynamic_image_count` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`circle_dynamic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `classification_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classification_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`classification_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for communication
-- ----------------------------
DROP TABLE IF EXISTS `communication`;
CREATE TABLE `communication`  (
  `communication_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) UNSIGNED NOT NULL,
  `communication_author` int(11) UNSIGNED NOT NULL,
  `communication_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `communication_image_count` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`communication_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for communication_comment
-- ----------------------------
DROP TABLE IF EXISTS `communication_comment`;
CREATE TABLE `communication_comment`  (
  `communication_comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) UNSIGNED NOT NULL,
  `communication_comment_user` int(11) UNSIGNED NOT NULL,
  `communication_reply` int(11) UNSIGNED NOT NULL,
  `communication_comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`communication_comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for communication_image
-- ----------------------------
DROP TABLE IF EXISTS `communication_image`;
CREATE TABLE `communication_image`  (
  `communication_image_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) UNSIGNED NOT NULL,
  `communication_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(255) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`communication_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for communication_praise
-- ----------------------------
DROP TABLE IF EXISTS `communication_praise`;
CREATE TABLE `communication_praise`  (
  `communication_praise_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `communication_id` int(11) UNSIGNED NOT NULL,
  `communication_praise_user` int(11) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`communication_praise_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_code` char(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL DEFAULT -1,
  `faculty_id` int(11) NOT NULL DEFAULT -1,
  `class_id` int(11) NOT NULL DEFAULT -1,
  `course_classification` int(11) UNSIGNED NOT NULL,
  `course_sum_student` int(11) NOT NULL DEFAULT -1,
  `course_learn_student` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `course_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `course_type` tinyint(1) NOT NULL DEFAULT 4,
  `course_finish` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `course_sum` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `course_price` decimal(8, 2) NOT NULL DEFAULT 0.00,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modifide` datetime(0) NOT NULL,
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for course_material
-- ----------------------------
DROP TABLE IF EXISTS `course_material`;
CREATE TABLE `course_material`  (
  `course_material_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` int(11) UNSIGNED NOT NULL,
  `course_material_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_material_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_material_size` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`course_material_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dynamic_comment
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_comment`;
CREATE TABLE `dynamic_comment`  (
  `dynamic_comment _id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dynamic_comment_author` int(11) UNSIGNED NOT NULL,
  `circle_dynamic_id` int(11) UNSIGNED NOT NULL,
  `dynamic_reply_user` int(11) UNSIGNED NOT NULL,
  `dynamic_comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`dynamic_comment _id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dynamic_image
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_image`;
CREATE TABLE `dynamic_image`  (
  `dynamic_image_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `circle_dynamic_id` int(11) UNSIGNED NOT NULL,
  `dynamic_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`dynamic_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dynamic_praise
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_praise`;
CREATE TABLE `dynamic_praise`  (
  `dynamic_praise_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dynamic_praise_user` int(11) UNSIGNED NOT NULL,
  `circle_dynamic_id` int(11) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`dynamic_praise_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for edu_admin
-- ----------------------------
DROP TABLE IF EXISTS `edu_admin`;
CREATE TABLE `edu_admin`  (
  `edu_admin_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_id` int(11) UNSIGNED NOT NULL,
  `edu_admin_number` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edu_admin_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edu_admin_password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edu_admin_authority` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '000000',
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`edu_admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for enter
-- ----------------------------
DROP TABLE IF EXISTS `enter`;
CREATE TABLE `enter`  (
  `enter_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_type` tinyint(1) NOT NULL DEFAULT 0,
  `school_badge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `school_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applicant_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applicant_user_id` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receiver_mail` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `enter_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`enter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of enter
-- ----------------------------
INSERT INTO `enter` VALUES (1, '杭州测试学校001', 2, '0.png', '这是第一个测试学校', '杭州', '浙江', '0.png', '张三', '120136198512041295', '18512369632', 'zhangs@163.com', 0, '2018-03-24 22:10:10', '2018-03-24 22:10:52');
INSERT INTO `enter` VALUES (2, '杭州测试学校002', 2, '0.png', '2', '杭州', '浙江', '0.png', '李四', '120136198811114919', '15203681239', '1235ls@126.com', 0, '2018-03-24 22:12:52', '2018-03-24 22:13:31');
INSERT INTO `enter` VALUES (3, '某机构001', 3, '0.png', '机构1', NULL, NULL, '0.png', '老王', '120341199011032314', '18866661111', '15315613@qq.com', 0, '2018-03-24 22:14:47', '2018-03-24 22:14:50');
INSERT INTO `enter` VALUES (4, '杭州测试小学', 1, '0.png', '小学1', '杭州', '浙江', '0.png', '孙权', '439523198612061293', '13386791025', 'sunquan@163.com', 0, '2018-03-24 22:16:28', '2018-03-24 22:16:31');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `exam_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` int(11) UNSIGNED NOT NULL,
  `exam_start_time` datetime(0) NOT NULL,
  `exam_end_time` datetime(0) NOT NULL,
  `exam_state` tinyint(2) NOT NULL DEFAULT 11,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for exam_item
-- ----------------------------
DROP TABLE IF EXISTS `exam_item`;
CREATE TABLE `exam_item`  (
  `exam_item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_item_question` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exam_item_score` tinyint(2) UNSIGNED NOT NULL,
  `exam_item_type` tinyint(2) NOT NULL DEFAULT 3,
  `exam_item_option1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exam_item_option2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exam_item_option3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exam_item_option4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exam_item_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`exam_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for exercises
-- ----------------------------
DROP TABLE IF EXISTS `exercises`;
CREATE TABLE `exercises`  (
  `exercises_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) UNSIGNED NOT NULL,
  `exercises_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`exercises_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty`  (
  `faculty_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_id` int(11) UNSIGNED NOT NULL,
  `faculty_code` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `faculty_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`faculty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `grade _id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int(11) UNSIGNED NOT NULL,
  `grade _course` int(11) UNSIGNED NOT NULL,
  `grade_mark` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`grade _id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for grade_class
-- ----------------------------
DROP TABLE IF EXISTS `grade_class`;
CREATE TABLE `grade_class`  (
  `class_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) UNSIGNED NOT NULL,
  `class_code` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `knowledge_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `knowledge_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `knowledge_rank` tinyint(1) NOT NULL DEFAULT 1,
  `lesson_id` int(11) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`knowledge_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson`  (
  `lesson_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` int(11) UNSIGNED NOT NULL,
  `lesson_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lesson_video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`lesson_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for live_announcement
-- ----------------------------
DROP TABLE IF EXISTS `live_announcement`;
CREATE TABLE `live_announcement`  (
  `live_announcement_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `live_room_id` int(11) UNSIGNED NOT NULL,
  `live_announcement_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `live_announcement_stick` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`live_announcement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for live_room
-- ----------------------------
DROP TABLE IF EXISTS `live_room`;
CREATE TABLE `live_room`  (
  `live_room_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `live_room_number` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) UNSIGNED NOT NULL,
  `live_room_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `live_room_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`live_room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `message_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_type` tinyint(1) NOT NULL,
  `message_ content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gmt_del` tinyint(1) NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mistake
-- ----------------------------
DROP TABLE IF EXISTS `mistake`;
CREATE TABLE `mistake`  (
  `mistake_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` int(11) UNSIGNED NOT NULL,
  `exam_item_id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) UNSIGNED NOT NULL,
  `mistake_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`mistake_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mycourse
-- ----------------------------
DROP TABLE IF EXISTS `mycourse`;
CREATE TABLE `mycourse`  (
  `mycourse_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `course_id` int(11) UNSIGNED NOT NULL,
  `learn_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`mycourse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for platform_course
-- ----------------------------
DROP TABLE IF EXISTS `platform_course`;
CREATE TABLE `platform_course`  (
  `platform_course_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` int(11) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`platform_course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for platform_image
-- ----------------------------
DROP TABLE IF EXISTS `platform_image`;
CREATE TABLE `platform_image`  (
  `platform_image_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `platform_information_id` int(11) UNSIGNED NOT NULL,
  `platform_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`platform_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for platform_information
-- ----------------------------
DROP TABLE IF EXISTS `platform_information`;
CREATE TABLE `platform_information`  (
  `platform_information_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `platform_information_title` varbinary(50) NOT NULL,
  `platform_information_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `platform_information_author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `information_image_count` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) DEFAULT NULL,
  `gmt_modified` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`platform_information_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for practical_training
-- ----------------------------
DROP TABLE IF EXISTS `practical_training`;
CREATE TABLE `practical_training`  (
  `practical_training_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` int(11) UNSIGNED NOT NULL,
  `practical_training_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `practical_training_plan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`practical_training_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for practice
-- ----------------------------
DROP TABLE IF EXISTS `practice`;
CREATE TABLE `practice`  (
  `practice_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `exam_item_id` int(11) UNSIGNED NOT NULL,
  `practice_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `practice_grade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`practice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `school_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_code` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_badge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `school_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_type` tinyint(2) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`school_id`, `school_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for school_image
-- ----------------------------
DROP TABLE IF EXISTS `school_image`;
CREATE TABLE `school_image`  (
  `school_image_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_information_id` int(11) UNSIGNED NOT NULL,
  `school_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `gmt_del` tinyint(1) NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`school_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for school_information
-- ----------------------------
DROP TABLE IF EXISTS `school_information`;
CREATE TABLE `school_information`  (
  `school_information_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `school_information_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_information_author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_information_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_id` int(11) UNSIGNED NOT NULL,
  `information_image_count` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`school_information_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_number` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_id` int(11) UNSIGNED NOT NULL,
  `faculty_id` int(11) UNSIGNED NOT NULL,
  `class_id` int(11) UNSIGNED NOT NULL,
  `student_password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`student_id`, `student_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for subscribe
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe`  (
  `subscribe_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `live_room_id` int(11) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`subscribe_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `task_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `task _type` tinyint(1) NOT NULL DEFAULT 1,
  `course_id` int(11) UNSIGNED NOT NULL,
  `task_start_time` datetime(0) NOT NULL,
  `task_end_time` datetime(0) NOT NULL,
  `task_state` tinyint(1) NOT NULL DEFAULT 1,
  `task_publish` int(11) UNSIGNED NOT NULL,
  `task_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_id` int(11) UNSIGNED NOT NULL,
  `teacher_number` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`teacher_id`, `teacher_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_account` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男',
  `user_age` tinyint(3) UNSIGNED NOT NULL,
  `user_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.png',
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`user_id`, `user_account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '120110040225', '123456', '18758576147', '男', 22, '0.png', '2018-03-24 22:20:05', '2018-03-24 22:20:09');
INSERT INTO `user` VALUES (2, '120110056987', '123654', '18758576148', '女', 20, '0.png', '2018-03-24 22:20:37', '2018-03-24 22:20:39');
INSERT INTO `user` VALUES (3, '156156561667', '123456', '18758576149', '男', 21, '0.png', '2018-03-24 22:20:59', '2018-03-24 22:21:03');
INSERT INTO `user` VALUES (4, '326265894981', '123456', '18758576150', '女', 22, '0.png', '2018-03-24 22:21:32', '2018-03-24 22:21:36');
INSERT INTO `user` VALUES (5, '121156106417', '123456', '15012345678', '男', 35, '0.png', '2018-03-24 22:22:08', '2018-03-24 22:22:11');

-- ----------------------------
-- Table structure for wallet
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet`  (
  `wallet_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `wallet_password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wallet_balance` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `gmt_create` datetime(0) NOT NULL,
  `gmt_modified` datetime(0) NOT NULL,
  PRIMARY KEY (`wallet_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
