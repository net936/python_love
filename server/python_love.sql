/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_love

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 23/07/2024 21:54:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1721742404646.jpeg', 'https://gitapp.cn/', '2024-07-23 21:46:47.487106');
INSERT INTO `b_ad` VALUES (2, 'ad/1721742411555.jpeg', 'https://m3u8player.org', '2024-07-23 21:46:54.411133');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '气质', '2024-07-22 21:10:38.541391');
INSERT INTO `b_classification` VALUES (2, '型男', '2024-07-22 21:10:43.280476');
INSERT INTO `b_classification` VALUES (3, '优雅', '2024-07-22 21:11:00.565874');
INSERT INTO `b_classification` VALUES (4, '可爱', '2024-07-22 21:11:05.369367');
INSERT INTO `b_classification` VALUES (5, '清纯', '2024-07-22 21:11:10.863286');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '222222222222', '2024-07-23 21:42:57.080469', 0, 3, 11);
INSERT INTO `b_comment` VALUES (2, '11111111111', '2024-07-23 21:42:58.656382', 0, 3, 11);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈哈88899999', '武松', '222211@gmail.com', '55555534', '2024-07-23 21:47:27.261617');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-22 21:09:50.771036');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-22 21:26:27.866601');
INSERT INTO `b_login_log` VALUES (3, 'fafafa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-22 21:56:47.064447');
INSERT INTO `b_login_log` VALUES (4, 'ccc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-22 22:11:09.504119');
INSERT INTO `b_login_log` VALUES (5, 'www', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-23 20:18:38.256149');
INSERT INTO `b_login_log` VALUES (6, 'eee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-23 20:19:15.370381');
INSERT INTO `b_login_log` VALUES (7, 'fff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-23 20:19:54.967410');
INSERT INTO `b_login_log` VALUES (8, 'ggg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-23 20:20:41.037531');
INSERT INTO `b_login_log` VALUES (9, 'bbb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-23 20:21:15.864397');
INSERT INTO `b_login_log` VALUES (10, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', '2024-07-23 21:24:23.483426');
INSERT INTO `b_login_log` VALUES (11, 'bbb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-23 21:45:08.404676');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '哈哈哈哈', '2024-07-23 21:47:00.917440');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1446 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-22 21:09:13.584610', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-22 21:09:13.594878', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-22 21:09:13.596177', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-22 21:09:48.506752', '/myapp/admin/adminLogin', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-22 21:09:50.784542', '/myapp/admin/adminLogin', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-22 21:09:52.028055', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-22 21:09:52.031220', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-22 21:09:53.993653', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-22 21:09:55.104629', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-22 21:09:55.734737', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-22 21:10:03.236656', '/myapp/admin/user/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-22 21:10:03.274432', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-22 21:10:18.076464', '/myapp/admin/user/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-22 21:10:18.127601', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-22 21:10:20.757706', '/myapp/admin/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-22 21:10:21.476956', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-22 21:10:38.551558', '/myapp/admin/classification/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-22 21:10:38.581876', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-22 21:10:43.286490', '/myapp/admin/classification/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-22 21:10:43.322339', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-22 21:11:00.565874', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-22 21:11:00.618624', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-22 21:11:05.374883', '/myapp/admin/classification/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-22 21:11:05.405686', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-22 21:11:10.871869', '/myapp/admin/classification/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-22 21:11:10.919598', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-22 21:11:23.811955', '/myapp/admin/classification/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-22 21:11:23.856267', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-22 21:11:25.066523', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-22 21:11:25.077946', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-22 21:17:37.525007', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-22 21:17:37.535286', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-22 21:18:22.068683', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-22 21:18:22.071375', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-22 21:19:01.218423', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-22 21:19:01.223046', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-22 21:19:36.309718', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-22 21:19:36.314293', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-22 21:19:51.546357', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-22 21:19:51.548227', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-22 21:20:01.590924', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-22 21:20:01.594854', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-22 21:20:12.670257', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-22 21:20:12.687164', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-22 21:20:53.637580', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-22 21:20:53.641300', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-22 21:21:05.538885', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-22 21:21:05.547852', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-22 21:21:15.889469', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-22 21:21:15.895148', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-22 21:22:10.118045', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-22 21:22:10.133382', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-22 21:22:57.277527', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-22 21:22:57.799178', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-22 21:22:57.807280', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-22 21:23:42.470084', '/myapp/admin/thing/create', 'POST', NULL, '389');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-22 21:23:42.520610', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-22 21:23:47.264964', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-22 21:23:47.278414', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-22 21:23:47.303247', '/upload/cover/1721654589859.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-22 21:23:47.596946', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-22 21:23:47.604093', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-22 21:23:47.620102', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-22 21:24:05.263303', '/upload/cover/1721654589859.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-22 21:24:37.944946', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-22 21:24:37.997817', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-22 21:26:24.932409', '/myapp/index/user/register', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-22 21:26:27.871157', '/myapp/index/user/login', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-22 21:26:27.934629', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-22 21:26:27.938318', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-22 21:26:27.940960', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-22 21:26:27.944636', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-22 21:26:29.790957', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-22 21:26:29.790957', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-22 21:26:29.811760', '/myapp/index/thing/getWishThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-22 21:26:29.824015', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-22 21:26:29.824015', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-22 21:26:29.857405', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-22 21:26:31.204895', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-22 21:26:31.212517', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-22 21:26:37.486997', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-22 21:26:41.703706', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-22 21:26:41.710369', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-22 21:26:48.241616', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-22 21:26:50.069748', '/myapp/index/thing/listUserThing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-22 21:26:50.073255', '/myapp/index/thing/listUserThing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-22 21:29:06.093643', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-22 21:29:06.095602', '/myapp/index/thing/listUserThing', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-22 21:29:08.316959', '/myapp/index/thing/listUserThing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-22 21:29:08.316959', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-22 21:29:08.344790', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-22 21:29:08.344790', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-22 21:29:08.358081', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-22 21:29:08.358081', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-22 21:29:08.367721', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-22 21:29:10.769059', '/myapp/index/user/info', 'GET', NULL, '2430');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-22 21:29:57.319912', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-22 21:29:57.329945', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-22 21:29:57.334673', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-22 21:29:57.342689', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-22 21:29:57.346222', '/myapp/admin/classification/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-22 21:29:57.349250', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-22 21:29:57.353956', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-22 21:35:45.396530', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-22 21:35:45.398484', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-22 21:35:45.570286', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-22 21:35:45.586649', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-22 21:40:02.680298', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-22 21:40:02.696664', '/myapp/index/thing/listUserThing', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-22 21:40:07.154984', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-22 21:40:07.158106', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-22 21:40:07.169716', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-22 21:40:07.185375', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-22 21:40:07.185375', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-22 21:40:07.191515', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-22 21:40:07.201433', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-22 21:40:09.467574', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-22 21:40:13.676827', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-22 21:40:13.678293', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-22 21:40:13.692864', '/myapp/index/thing/listUserThing', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-22 21:40:13.695520', '/myapp/index/thing/listUserThing', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-22 21:40:13.701613', '/myapp/index/thing/listUserThing', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-22 21:40:13.704021', '/myapp/index/thing/listUserThing', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-22 21:40:13.713073', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-22 21:42:40.062240', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-22 21:42:40.065296', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-22 21:42:58.126662', '/myapp/index/thing/create', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-22 21:42:58.170305', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-22 21:42:58.215504', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-22 21:43:12.941314', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-22 21:43:14.833754', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-22 21:43:50.093575', '/myapp/index/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-22 21:43:50.126651', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-22 21:43:54.826632', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-22 21:44:18.815821', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-22 21:44:18.825381', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-22 21:44:18.850760', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-22 21:44:22.775316', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-22 21:44:22.786976', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-22 21:44:22.789439', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-22 21:44:22.811885', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-22 21:44:22.818921', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-22 21:44:22.826418', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-22 21:44:22.846682', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-22 21:44:22.846682', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-22 21:44:25.558776', '/myapp/index/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-22 21:44:25.595728', '/myapp/index/thing/listUserThing', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-22 21:44:34.974668', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-22 21:46:16.284843', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-22 21:46:17.419786', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-22 21:46:18.724029', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-22 21:46:19.345309', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-22 21:46:19.354959', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-22 21:46:58.810853', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-22 21:46:59.083721', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-22 21:46:59.097279', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-22 21:47:00.816000', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-22 21:47:01.760955', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-22 21:47:01.763955', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-22 21:50:58.512424', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-22 21:50:58.516375', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-22 21:50:58.633825', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-22 21:54:28.677087', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-22 21:54:29.221087', '/myapp/admin/classification/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-22 21:54:29.227380', '/myapp/admin/classification/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-22 21:54:30.754138', '/upload/cover/1721654589859.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-22 21:54:56.963001', '/myapp/admin/thing/delete', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-22 21:54:57.039464', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-22 21:54:58.208941', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-22 21:55:45.315318', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-22 21:55:45.323166', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-22 21:56:04.777456', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-22 21:56:05.441457', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-22 21:56:05.458918', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-22 21:56:11.897924', '/myapp/admin/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-22 21:56:23.139090', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-22 21:56:23.635947', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-22 21:56:23.646094', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-22 21:56:33.231238', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-22 21:56:33.234197', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-22 21:56:33.247872', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-22 21:56:33.263767', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-22 21:56:42.722442', '/myapp/index/user/register', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-22 21:56:47.068617', '/myapp/index/user/login', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-22 21:56:47.184995', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-22 21:56:47.190787', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-22 21:56:47.194617', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-22 21:56:47.212995', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-22 21:56:47.233982', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-22 21:56:50.677764', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-22 21:56:50.686616', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-22 21:56:50.686616', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-22 21:56:50.702758', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-22 21:56:50.694115', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-22 21:56:50.710644', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-22 21:56:55.499157', '/myapp/index/user/update', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-22 21:56:58.155041', '/myapp/index/thing/getWishThingList', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-22 21:56:58.163758', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-22 21:56:58.171520', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-22 21:56:58.171520', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-22 21:56:58.171520', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-22 21:56:58.186626', '/myapp/index/thing/getWishThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-22 21:56:58.960113', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-22 21:56:58.964135', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-22 21:58:01.222867', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-22 21:58:01.229826', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-22 21:58:21.158662', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-22 21:58:21.161949', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-22 21:58:53.596842', '/myapp/index/thing/create', 'POST', NULL, '298');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-22 21:58:53.693047', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-22 21:58:53.748840', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-22 21:58:56.465078', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-22 21:58:58.212955', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-22 21:59:59.423290', '/myapp/index/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-22 21:59:59.476749', '/myapp/index/thing/listUserThing', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-22 22:00:03.111542', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-22 22:00:05.197590', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-22 22:00:13.363669', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-22 22:00:13.419647', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-22 22:00:52.726811', '/myapp/index/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-22 22:00:52.792255', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-22 22:01:49.223488', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-22 22:01:49.239884', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-22 22:01:49.320769', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-22 22:01:49.339967', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-22 22:01:52.607673', '/myapp/index/order/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-22 22:01:53.444504', '/myapp/index/thing/listUserThing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-22 22:01:53.453757', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-22 22:01:53.490399', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-22 22:02:18.844916', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-22 22:02:18.855907', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-22 22:02:18.871026', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-22 22:06:47.782795', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-22 22:06:47.800865', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-22 22:06:47.814739', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-22 22:06:55.136260', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-22 22:06:55.152304', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-22 22:06:55.155078', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-22 22:06:55.179060', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-22 22:06:55.187217', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-22 22:06:55.187217', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-22 22:06:55.201169', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-22 22:06:55.236302', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-22 22:08:32.052855', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-22 22:08:32.061464', '/myapp/index/thing/listUserThing', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-22 22:08:32.079604', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-22 22:09:08.834486', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-22 22:09:08.842916', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-22 22:09:08.843432', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-22 22:09:18.012478', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-22 22:09:18.037019', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-22 22:09:18.112177', '/myapp/admin/classification/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-22 22:09:18.123331', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-22 22:09:19.321813', '/myapp/index/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-22 22:09:19.362389', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-22 22:09:23.492979', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-22 22:09:27.321875', '/myapp/index/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-22 22:09:27.337970', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-22 22:09:27.347677', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-22 22:09:27.362283', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-22 22:09:27.385175', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-22 22:09:27.385175', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-22 22:09:31.847179', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-22 22:09:31.865051', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-22 22:09:31.870715', '/myapp/index/user/info', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-22 22:09:31.878729', '/myapp/index/user/info', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-22 22:09:31.888348', '/myapp/index/user/info', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-22 22:09:31.896137', '/myapp/index/user/info', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-22 22:09:34.321870', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-22 22:09:34.324498', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-22 22:09:34.337563', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-22 22:09:34.337563', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-22 22:09:34.366769', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-22 22:09:34.366769', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-22 22:09:40.299925', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-22 22:09:40.350168', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-22 22:09:40.357808', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-22 22:09:40.377167', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-22 22:09:40.382465', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-22 22:09:40.389486', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-22 22:09:44.906649', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-22 22:09:44.915415', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-22 22:09:44.946806', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-22 22:10:56.236792', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-22 22:10:56.240409', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-22 22:10:56.259486', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-22 22:11:00.743670', '/myapp/index/user/login', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-22 22:11:06.953018', '/myapp/index/user/register', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-22 22:11:09.510924', '/myapp/index/user/login', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-22 22:11:09.576563', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-22 22:11:09.584717', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-22 22:11:09.594184', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-22 22:11:09.611010', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-22 22:11:09.661413', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-22 22:11:10.783156', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-22 22:11:10.794343', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-22 22:11:10.823621', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-22 22:11:10.828094', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-22 22:11:10.839445', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-22 22:11:10.861415', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-22 22:11:11.818264', '/myapp/index/thing/listUserThing', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-22 22:11:11.831340', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-23 20:06:02.736648', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-23 20:06:02.752305', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-23 20:06:02.860871', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-23 20:06:02.862558', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-23 20:06:02.865231', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-23 20:06:02.868950', '/myapp/index/thing/listUserThing', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-23 20:06:02.878033', '/myapp/index/thing/listUserThing', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-23 20:06:02.881354', '/myapp/index/thing/listUserThing', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-23 20:06:02.890646', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-23 20:06:12.549608', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-23 20:06:12.550478', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-23 20:06:14.459619', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-23 20:06:14.467204', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-23 20:06:14.475924', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-23 20:06:14.494495', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-23 20:06:14.494495', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-23 20:06:15.009525', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-23 20:06:15.009525', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-23 20:06:15.016751', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-23 20:06:15.018216', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-23 20:06:15.018216', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-23 20:06:15.048931', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-23 20:06:21.590339', '/myapp/index/thing/listUserThing', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-23 20:06:21.590339', '/myapp/index/thing/listUserThing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-23 20:06:33.794188', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-23 20:06:34.834776', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-23 20:06:34.834776', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-23 20:08:27.533082', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-23 20:08:27.541190', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-23 20:08:28.861955', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-23 20:08:28.871986', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-23 20:08:28.894061', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-23 20:08:29.631448', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-23 20:08:29.640972', '/myapp/index/thing/listUserThing', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-23 20:08:29.655908', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-23 20:08:29.655908', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-23 20:08:29.670874', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-23 20:08:29.679233', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-23 20:08:29.682055', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-23 20:08:31.576083', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-23 20:08:31.579959', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-23 20:08:31.600684', '/myapp/index/thing/getRecommend', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-23 20:09:14.907989', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-23 20:09:14.925514', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-23 20:09:14.932394', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-23 20:09:16.141421', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-23 20:09:16.151502', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-23 20:09:16.157544', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-23 20:09:16.176715', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-23 20:09:16.180297', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-23 20:09:16.182466', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-23 20:09:16.194697', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-23 20:09:18.086844', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-23 20:09:18.104549', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-23 20:09:20.516063', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-23 20:09:20.520276', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-23 20:09:20.524034', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-23 20:09:20.534321', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-23 20:09:21.921785', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-23 20:09:21.939266', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-23 20:09:21.948759', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-23 20:09:21.953351', '/myapp/admin/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-23 20:09:21.972031', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-23 20:09:21.975409', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-23 20:09:21.983299', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-23 20:10:38.070217', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-23 20:10:38.079741', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-23 20:10:38.103637', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-23 20:10:39.498029', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-23 20:10:39.505061', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-23 20:10:39.521763', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-23 20:10:39.529966', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-23 20:10:40.422021', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-23 20:10:40.427164', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-23 20:10:40.437385', '/myapp/index/thing/getRecommend', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-23 20:10:41.163129', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-23 20:10:41.174367', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-23 20:10:41.180444', '/myapp/index/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-23 20:10:41.198885', '/myapp/index/classification/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-23 20:10:46.215546', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-23 20:10:46.221668', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-23 20:10:46.227658', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-23 20:10:46.237412', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-23 20:10:47.324950', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-23 20:10:47.322651', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-23 20:10:47.349088', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-23 20:10:47.943670', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-23 20:10:47.967201', '/myapp/index/thing/listUserThing', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-23 20:10:47.973659', '/myapp/index/thing/listUserThing', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-23 20:10:47.979338', '/myapp/index/thing/listUserThing', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-23 20:10:47.984167', '/myapp/index/thing/listUserThing', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-23 20:10:47.989209', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-23 20:10:47.999599', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-23 20:10:49.816720', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-23 20:10:49.826724', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-23 20:10:49.837650', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-23 20:10:50.697637', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-23 20:10:50.706001', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-23 20:10:50.721027', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-23 20:10:50.730870', '/myapp/admin/classification/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-23 20:10:50.734607', '/myapp/admin/classification/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-23 20:10:50.734607', '/myapp/admin/classification/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-23 20:10:50.761518', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-23 20:11:00.150369', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-23 20:11:00.159987', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-23 20:11:00.183472', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-23 20:11:00.209000', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-23 20:11:00.209000', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-23 20:11:01.918400', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-23 20:11:01.928629', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-23 20:11:01.943452', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-23 20:11:01.943452', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-23 20:11:01.943452', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-23 20:11:01.967087', '/myapp/index/thing/listUserThing', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-23 20:11:01.967087', '/myapp/index/thing/listUserThing', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-23 20:12:41.214318', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-23 20:12:41.218022', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-23 20:12:43.670711', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-23 20:12:43.679209', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-23 20:12:43.689990', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-23 20:12:43.698970', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-23 20:12:43.723877', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-23 20:12:43.723877', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-23 20:12:45.787154', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-23 20:12:45.795649', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-23 20:12:45.804089', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-23 20:12:45.846091', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-23 20:12:45.846091', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-23 20:12:47.395032', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-23 20:12:47.397714', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-23 20:12:47.405147', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-23 20:12:47.415218', '/myapp/index/thing/listUserThing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-23 20:12:47.415218', '/myapp/index/thing/listUserThing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-23 20:12:47.428144', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-23 20:12:47.437685', '/myapp/index/thing/listUserThing', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-23 20:13:10.248836', '/myapp/index/user/info', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-23 20:13:10.272313', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-23 20:13:12.347498', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-23 20:13:12.352755', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-23 20:13:12.368099', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-23 20:13:12.387009', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-23 20:13:12.387009', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-23 20:13:12.961305', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-23 20:13:12.969279', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-23 20:13:12.973578', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-23 20:13:12.988714', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-23 20:13:13.006914', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-23 20:13:13.023235', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-23 20:13:13.495455', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-23 20:13:13.512851', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-23 20:13:13.525562', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-23 20:13:13.530876', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-23 20:13:13.540113', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-23 20:13:14.163490', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-23 20:13:14.178758', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-23 20:13:14.178758', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-23 20:13:14.198724', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-23 20:13:14.207105', '/myapp/index/thing/listUserThing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-23 20:13:14.218086', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-23 20:13:14.225153', '/myapp/index/thing/listUserThing', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-23 20:13:18.399967', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-23 20:13:18.411872', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-23 20:13:20.627997', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-23 20:13:20.651202', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-23 20:13:20.659765', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-23 20:13:21.546321', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-23 20:13:21.550741', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-23 20:13:21.555529', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-23 20:13:21.567199', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-23 20:13:24.049120', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-23 20:13:24.053592', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-23 20:13:24.070966', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-23 20:13:26.086343', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-23 20:13:26.090919', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-23 20:13:26.103816', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-23 20:13:26.112324', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-23 20:13:27.436098', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-23 20:13:27.444010', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-23 20:13:27.451534', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-23 20:13:27.470635', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-23 20:13:27.480817', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-23 20:13:27.482567', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-23 20:13:27.488881', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-23 20:13:28.508359', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-23 20:13:28.518257', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-23 20:13:28.534790', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-23 20:13:28.538016', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-23 20:13:30.200286', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-23 20:13:30.203053', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-23 20:13:30.216757', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-23 20:13:30.228039', '/myapp/admin/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-23 20:13:30.233704', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-23 20:13:30.243939', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-23 20:13:30.251690', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-23 20:13:35.441748', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-23 20:13:44.854732', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-23 20:13:44.860120', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-23 20:13:53.488279', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-23 20:13:55.885484', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-23 20:13:55.890505', '/myapp/index/thing/listUserThing', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-23 20:18:18.556287', '/myapp/index/thing/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-23 20:18:18.604370', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-23 20:18:18.636696', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-23 20:18:23.581991', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-23 20:18:27.328347', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-23 20:18:27.334240', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-23 20:18:27.354180', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-23 20:18:35.382029', '/myapp/index/user/register', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-23 20:18:38.264842', '/myapp/index/user/login', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-23 20:18:38.354941', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-23 20:18:38.356830', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-23 20:18:38.364736', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-23 20:18:38.380974', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-23 20:18:38.396464', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-23 20:18:41.711220', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-23 20:18:41.729491', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-23 20:18:41.737678', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-23 20:18:41.745236', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-23 20:18:41.745236', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-23 20:18:41.760292', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-23 20:18:41.778573', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-23 20:19:01.749858', '/myapp/index/thing/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-23 20:19:01.785231', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-23 20:19:01.816535', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-23 20:19:04.426685', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-23 20:19:04.442651', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-23 20:19:04.442651', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-23 20:19:04.473708', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-23 20:19:12.790567', '/myapp/index/user/register', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-23 20:19:15.378399', '/myapp/index/user/login', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-23 20:19:15.435175', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-23 20:19:15.445877', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-23 20:19:15.462741', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-23 20:19:15.462741', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-23 20:19:15.496091', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-23 20:19:15.496091', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-23 20:19:18.525828', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-23 20:19:18.534392', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-23 20:19:18.538014', '/myapp/index/thing/getWishThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-23 20:19:18.541975', '/myapp/index/thing/getWishThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-23 20:19:18.557871', '/myapp/index/thing/getWishThingList', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-23 20:19:18.564045', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-23 20:19:18.581438', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-23 20:19:41.917031', '/myapp/index/thing/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-23 20:19:41.964488', '/myapp/index/thing/listUserThing', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-23 20:19:42.003127', '/upload/cover/1721737162806.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-23 20:19:44.047502', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-23 20:19:44.050206', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-23 20:19:44.076635', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-23 20:19:44.110180', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-23 20:19:44.110180', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-23 20:19:52.323364', '/myapp/index/user/register', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-23 20:19:54.973293', '/myapp/index/user/login', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-23 20:19:55.025098', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-23 20:19:55.029239', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-23 20:19:55.059167', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-23 20:19:55.072489', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-23 20:19:57.156960', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-23 20:19:57.159293', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-23 20:19:57.159293', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-23 20:19:57.189623', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-23 20:19:57.190637', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-23 20:19:57.206263', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-23 20:19:57.209595', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-23 20:20:22.326258', '/myapp/index/thing/create', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-23 20:20:22.362859', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-23 20:20:22.411587', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-23 20:20:25.011298', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-23 20:20:25.021140', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-23 20:20:25.036553', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-23 20:20:25.078808', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-23 20:20:25.078808', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-23 20:20:25.086381', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-23 20:20:36.737985', '/myapp/index/user/register', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-23 20:20:41.049964', '/myapp/index/user/login', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-23 20:20:41.099168', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-23 20:20:41.124948', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-23 20:20:41.139201', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-23 20:20:41.155096', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-23 20:20:42.755907', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-23 20:20:42.770879', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-23 20:20:42.822367', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-23 20:20:42.843332', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-23 20:20:42.848379', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-23 20:20:42.854057', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-23 20:20:42.860093', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-23 20:21:03.169301', '/myapp/index/thing/create', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-23 20:21:03.208872', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-23 20:21:03.247708', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-23 20:21:06.187804', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-23 20:21:06.189875', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-23 20:21:06.221809', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-23 20:21:06.255232', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-23 20:21:06.256021', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-23 20:21:06.256021', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-23 20:21:06.257603', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-23 20:21:13.848445', '/myapp/index/user/register', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-23 20:21:15.869435', '/myapp/index/user/login', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-23 20:21:15.914167', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-23 20:21:15.930182', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-23 20:21:15.933847', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-23 20:21:15.933847', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-23 20:21:17.378768', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-23 20:21:17.391759', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-23 20:21:17.407486', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-23 20:21:17.413637', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-23 20:21:17.421702', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-23 20:21:17.428746', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-23 20:21:17.434201', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-23 20:21:36.136363', '/myapp/index/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-23 20:21:36.171358', '/myapp/index/thing/listUserThing', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-23 20:21:36.232448', '/upload/cover/1721737281632.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-23 20:21:39.160289', '/myapp/admin/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-23 20:21:44.204934', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-23 20:21:59.507788', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-23 20:21:59.679531', '/myapp/admin/thing/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-23 20:22:01.898580', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-23 20:22:12.184304', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-23 20:22:12.293745', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-23 20:22:13.750453', '/upload/cover/1721737162806.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-23 20:22:32.532915', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-23 20:22:32.656546', '/myapp/admin/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-23 20:22:34.126263', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-23 20:22:48.399523', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-23 20:22:48.483955', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-23 20:22:49.777320', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-23 20:23:11.310116', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-23 20:23:11.402060', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-23 20:23:12.933312', '/upload/cover/1721737281632.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-23 20:23:24.962384', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-23 20:23:25.099493', '/myapp/admin/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-23 20:23:54.906524', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-23 20:24:07.868962', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-23 20:24:08.003143', '/myapp/admin/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-23 20:24:09.166034', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-23 20:24:11.814484', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-23 20:24:11.925021', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-23 20:24:13.040461', '/upload/cover/1721737162806.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-23 20:24:15.330620', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-23 20:24:15.432564', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-23 20:24:16.632390', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-23 20:24:19.084857', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-23 20:24:19.235139', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-23 20:24:20.434787', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-23 20:24:22.647684', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-23 20:24:22.783943', '/myapp/admin/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-23 20:24:26.744557', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-23 20:24:26.864250', '/myapp/admin/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-23 20:24:30.309381', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-23 20:24:30.659799', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-23 20:24:30.710501', '/myapp/admin/classification/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-23 20:24:33.686900', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-23 20:24:33.694645', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-23 20:24:33.701227', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-23 20:24:33.732907', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-23 20:24:33.749191', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-23 20:24:34.483269', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-23 20:24:35.018371', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-23 20:24:35.618392', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-23 20:24:36.050782', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-23 20:24:36.580721', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-23 20:24:37.650195', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-23 20:24:56.445232', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-23 20:24:56.901484', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-23 20:24:57.800057', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-23 20:24:58.207889', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-23 20:25:52.071564', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-23 20:25:52.101205', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-23 20:25:52.115194', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-23 20:25:52.120255', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-23 20:25:52.155557', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-23 20:25:52.185641', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-23 20:25:52.703707', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-23 20:25:52.717478', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-23 20:25:52.719496', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-23 20:25:52.754973', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-23 20:26:00.569334', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-23 20:26:01.234646', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-23 20:26:20.774793', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-23 20:26:20.774793', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-23 20:26:20.782707', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-23 20:26:20.790424', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-23 20:26:20.839132', '/myapp/index/thing/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-23 20:26:20.840852', '/myapp/index/thing/detail', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-23 20:27:46.326656', '/myapp/index/thing/addWishUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-23 20:27:46.391376', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-23 20:27:46.817092', '/myapp/index/thing/addCollectUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-23 20:27:46.878632', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-23 20:33:55.854174', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-23 20:33:55.863945', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-23 20:33:55.912506', '/myapp/index/notice/list_api', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-23 20:33:55.926272', '/myapp/index/notice/list_api', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-23 20:33:55.927401', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-23 20:33:55.934833', '/myapp/index/notice/list_api', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-23 20:33:57.488896', '/myapp/index/thing/listUserThing', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-23 20:33:57.749449', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-23 20:33:57.749449', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-23 20:33:57.755508', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-23 20:33:57.763537', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-23 20:33:57.795592', '/myapp/index/comment/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-23 20:33:57.812873', '/myapp/index/comment/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-23 20:34:05.564994', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-23 20:34:05.558485', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-23 20:34:05.571119', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-23 20:34:05.588628', '/myapp/index/thing/getRecommend', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-23 20:34:05.653764', '/myapp/index/thing/getRecommend', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-23 20:34:05.671910', '/myapp/index/thing/getRecommend', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-23 20:34:13.030716', '/myapp/index/thing/listUserThing', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-23 20:34:13.126959', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-23 20:34:13.132599', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-23 20:34:13.136039', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-23 20:34:13.143767', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-23 20:34:13.155713', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-23 20:34:13.179145', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-23 20:34:13.194982', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-23 20:34:41.089574', '/myapp/index/thing/getRecommend', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-23 20:34:41.103655', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-23 20:34:41.113232', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-23 20:34:41.123036', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-23 20:34:41.156436', '/myapp/index/thing/getRecommend', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-23 20:34:41.176552', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-23 20:34:41.180981', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-23 20:34:41.214552', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-23 20:34:41.215639', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-23 20:34:41.230480', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-23 20:34:45.335901', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-23 20:34:45.386314', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-23 20:34:45.393040', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-23 20:34:45.402739', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-23 20:34:45.417735', '/myapp/index/notice/list_api', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-23 20:34:45.425790', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-23 20:34:45.457397', '/myapp/index/notice/list_api', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-23 20:36:39.007783', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-23 20:36:39.010308', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-23 20:36:39.591862', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-23 20:36:39.600027', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-23 20:36:39.622716', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-23 20:36:39.619086', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-23 20:36:39.655950', '/myapp/index/thing/detail', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-23 20:36:39.670784', '/myapp/index/thing/detail', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-23 20:36:39.706631', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-23 20:37:03.983118', '/myapp/index/thing/listUserThing', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-23 20:37:04.050940', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-23 20:37:04.060960', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-23 20:37:04.071731', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-23 20:37:04.075322', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-23 20:37:04.099495', '/myapp/index/user/info', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-23 20:37:04.120450', '/myapp/index/user/info', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-23 20:40:18.250858', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-23 20:40:18.255486', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-23 20:43:56.180150', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-23 20:43:56.182299', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-23 20:43:56.182299', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-23 20:44:57.867518', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-23 20:44:57.865068', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-23 20:46:16.374223', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-23 20:46:16.378168', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-23 20:46:24.658261', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-23 20:46:24.678987', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-23 20:46:24.702688', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-23 20:46:24.706472', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-23 20:46:24.743367', '/myapp/admin/ad/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-23 20:46:24.761914', '/myapp/admin/ad/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-23 20:46:24.770019', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-23 20:46:24.793476', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-23 20:46:24.800006', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-23 20:46:24.802872', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-23 20:46:28.933979', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-23 20:46:28.941423', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-23 20:46:28.947850', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-23 20:46:28.953074', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-23 20:46:28.987249', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-23 20:46:28.989518', '/myapp/index/thing/getRecommend', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-23 20:46:29.008291', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-23 20:46:29.031575', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-23 20:46:29.031575', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-23 20:46:29.031575', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-23 20:46:31.290544', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-23 20:46:31.388574', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-23 20:46:31.405346', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-23 20:46:31.417794', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-07-23 20:46:31.417794', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-07-23 20:46:31.428947', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-07-23 20:46:31.455072', '/myapp/index/notice/list_api', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-07-23 20:46:31.468106', '/myapp/index/notice/list_api', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-07-23 20:51:32.271113', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-07-23 20:51:32.274750', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-07-23 20:51:32.279923', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-07-23 20:51:34.971726', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-07-23 20:51:34.992244', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-07-23 20:51:34.994732', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-07-23 20:51:35.003547', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-07-23 20:51:35.060053', '/myapp/admin/ad/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-07-23 20:51:35.068264', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-07-23 20:51:35.089642', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-07-23 20:51:35.140658', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-07-23 20:51:35.155239', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-07-23 20:51:35.168387', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-07-23 20:51:35.166387', '/upload/cover/1721656731766.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-07-23 20:51:35.991558', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-07-23 20:51:36.085325', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-07-23 20:51:36.107364', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-07-23 20:51:36.115347', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-07-23 20:51:36.120362', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-07-23 20:51:36.130171', '/myapp/index/user/info', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-07-23 20:51:36.153234', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-07-23 20:51:36.180594', '/myapp/index/user/info', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-07-23 20:52:07.955460', '/myapp/index/order/create', 'POST', NULL, '3653');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-07-23 20:53:55.945756', '/myapp/index/order/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-07-23 20:53:56.592710', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-07-23 20:53:56.602174', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-07-23 20:55:39.471238', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-07-23 20:55:39.475586', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-07-23 20:55:39.496132', '/myapp/index/order/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-07-23 20:55:39.488132', '/myapp/index/order/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-07-23 20:55:39.519545', '/myapp/index/order/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-07-23 20:55:39.868270', '/myapp/index/order/list', 'GET', NULL, '430');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-07-23 21:00:29.133726', '/myapp/index/thing/listUserThing', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-07-23 21:00:29.237519', '/myapp/index/order/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-07-23 21:03:11.834624', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-07-23 21:03:11.840615', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-07-23 21:03:11.842996', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-07-23 21:03:11.845033', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-07-23 21:03:11.852059', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-07-23 21:03:11.852059', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-07-23 21:03:11.859589', '/myapp/index/order/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-07-23 21:08:40.641893', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-07-23 21:08:40.658414', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-07-23 21:08:40.665490', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-07-23 21:08:40.689167', '/myapp/admin/ad/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-07-23 21:08:40.694610', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-07-23 21:08:40.709154', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-07-23 21:08:40.720374', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-07-23 21:08:40.736936', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-07-23 21:15:28.448756', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-07-23 21:15:28.472404', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-07-23 21:18:57.705869', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-07-23 21:18:57.723732', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-07-23 21:20:28.496485', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-07-23 21:20:28.508496', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-07-23 21:20:28.512002', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-07-23 21:20:28.526721', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-07-23 21:20:28.550347', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-07-23 21:20:28.553467', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-07-23 21:20:28.574352', '/upload/cover/1721737281632.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-07-23 21:20:28.593849', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-07-23 21:20:28.596876', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-07-23 21:20:33.415522', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-07-23 21:20:33.421963', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-07-23 21:20:33.428348', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-07-23 21:20:33.439364', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-07-23 21:20:33.439364', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-07-23 21:20:33.455782', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-07-23 21:20:41.342307', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-07-23 21:20:41.342307', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-07-23 21:20:41.355374', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-07-23 21:20:41.355374', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-07-23 21:20:41.371207', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-07-23 21:20:41.371207', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-07-23 21:22:50.370739', '/myapp/index/thing/listUserThing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-07-23 21:22:50.394680', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-07-23 21:22:50.394680', '/myapp/index/order/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-07-23 21:22:57.975387', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-07-23 21:22:57.979569', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-07-23 21:22:57.991221', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-07-23 21:22:58.003853', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-07-23 21:22:58.003853', '/upload/cover/1721737162806.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-07-23 21:22:58.003853', '/upload/cover/1721737162806.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-07-23 21:22:58.457873', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-07-23 21:22:58.460521', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-07-23 21:22:58.463809', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-07-23 21:22:58.464932', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-07-23 21:22:58.467049', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-07-23 21:22:58.477894', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-07-23 21:22:58.481156', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-07-23 21:22:59.899189', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-07-23 21:22:59.925958', '/myapp/index/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-07-23 21:22:59.933430', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-07-23 21:23:13.758664', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-07-23 21:23:13.771302', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-07-23 21:23:13.789952', '/myapp/index/thing/listUserThing', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-07-23 21:23:13.810087', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-07-23 21:23:13.816213', '/myapp/index/notice/list_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-07-23 21:23:13.831706', '/myapp/index/order/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-07-23 21:23:13.840004', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-07-23 21:23:13.845402', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-07-23 21:23:33.465795', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-07-23 21:23:38.806517', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-07-23 21:23:38.809144', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-07-23 21:24:04.300674', '/myapp/index/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-07-23 21:24:04.315686', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-07-23 21:24:04.347225', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-07-23 21:24:04.491047', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-07-23 21:24:04.491047', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-07-23 21:24:04.496627', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-07-23 21:24:04.527745', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-07-23 21:24:04.527745', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-07-23 21:24:04.527745', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-07-23 21:24:04.556377', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-07-23 21:24:04.556377', '/upload/cover/1721655767240.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-07-23 21:24:23.483426', '/myapp/index/user/login', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-07-23 21:24:23.612146', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-07-23 21:24:23.621452', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-07-23 21:24:23.612146', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-07-23 21:24:23.653169', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-07-23 21:24:27.877436', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-07-23 21:24:27.891816', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-07-23 21:24:27.908268', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-07-23 21:24:27.940157', '/myapp/index/user/info', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-07-23 21:24:27.940157', '/myapp/index/user/info', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-07-23 21:24:27.955974', '/myapp/index/user/info', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-07-23 21:24:30.163802', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-07-23 21:24:30.242238', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-07-23 21:24:30.252562', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-07-23 21:24:30.263796', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-07-23 21:24:30.275499', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-07-23 21:24:30.306019', '/myapp/admin/ad/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-07-23 21:24:30.306019', '/myapp/admin/ad/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-07-23 21:24:32.808330', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-07-23 21:24:32.816853', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-07-23 21:24:32.822200', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-07-23 21:24:32.822200', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-07-23 21:24:32.868128', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-07-23 21:24:32.885459', '/myapp/admin/ad/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-07-23 21:24:33.896228', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-07-23 21:24:33.896228', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-07-23 21:24:33.902582', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-07-23 21:24:33.902582', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-07-23 21:24:33.920049', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-07-23 21:24:33.924360', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-07-23 21:24:33.935096', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-07-23 21:24:35.934898', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-07-23 21:24:35.948464', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-07-23 21:24:35.958495', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-07-23 21:24:35.958495', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-07-23 21:24:36.022297', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-07-23 21:24:36.022297', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-07-23 21:24:37.815688', '/myapp/index/thing/addWishUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-07-23 21:24:37.945751', '/myapp/index/thing/detail', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-07-23 21:24:38.386421', '/myapp/index/thing/addCollectUser', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-07-23 21:24:38.450362', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-07-23 21:24:39.155039', '/myapp/index/thing/listUserThing', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-07-23 21:24:39.213868', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-07-23 21:24:39.227824', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-07-23 21:24:39.241854', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-07-23 21:24:39.263189', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-07-23 21:24:39.290304', '/myapp/admin/ad/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-07-23 21:24:39.305535', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-07-23 21:25:11.373330', '/myapp/index/order/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-07-23 21:25:11.775176', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-07-23 21:25:11.781502', '/myapp/index/notice/list_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-07-23 21:25:14.072039', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-07-23 21:25:14.087713', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-07-23 21:25:14.103827', '/myapp/index/user/info', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-07-23 21:25:14.119461', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-07-23 21:25:14.135198', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-07-23 21:25:14.168117', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-07-23 21:25:14.168117', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-07-23 21:25:14.183134', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-07-23 21:25:21.133157', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-07-23 21:25:21.166672', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-07-23 21:25:21.166672', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-07-23 21:25:55.245854', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-07-23 21:25:55.276500', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-07-23 21:25:55.278863', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-07-23 21:25:55.286709', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-07-23 21:25:55.329115', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-07-23 21:25:55.340242', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-07-23 21:27:44.113156', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-07-23 21:27:44.113156', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-07-23 21:27:44.161114', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-07-23 21:27:44.161114', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-07-23 21:27:44.177104', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-07-23 21:27:44.177104', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-07-23 21:30:58.444618', '/myapp/index/thing/listUserThing', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-07-23 21:30:58.448918', '/myapp/index/thing/listUserThing', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-07-23 21:30:58.496711', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-07-23 21:30:58.508950', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-07-23 21:30:58.518464', '/myapp/index/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-07-23 21:30:58.530034', '/myapp/index/order/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-07-23 21:30:58.543058', '/myapp/index/order/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-07-23 21:30:58.536348', '/myapp/index/order/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-07-23 21:30:58.580616', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-07-23 21:30:58.586152', '/myapp/index/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-07-23 21:30:58.591605', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-07-23 21:30:58.599104', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-07-23 21:31:09.930106', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-07-23 21:31:09.942152', '/myapp/index/thing/listUserThing', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-07-23 21:31:09.959187', '/myapp/index/thing/listUserThing', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-07-23 21:31:09.978173', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-07-23 21:31:09.989658', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-07-23 21:31:09.996344', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-07-23 21:31:10.024914', '/myapp/index/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-07-23 21:31:10.030024', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-07-23 21:31:18.650532', '/myapp/index/order/yes_order', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-07-23 21:31:18.688222', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-07-23 21:31:30.395327', '/myapp/index/order/cancel_order', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-07-23 21:31:30.420781', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-07-23 21:31:37.966307', '/myapp/index/order/yes_order', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-07-23 21:31:38.005037', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-07-23 21:32:00.614234', '/myapp/index/thing/listUserThing', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-07-23 21:32:00.636283', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-07-23 21:32:00.644903', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-07-23 21:32:00.810639', '/myapp/index/thing/listUserThing', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-07-23 21:32:00.830431', '/myapp/index/order/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-07-23 21:32:00.830431', '/myapp/index/order/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-07-23 21:32:37.727495', '/myapp/index/order/yes_order', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-07-23 21:32:37.774653', '/myapp/index/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-07-23 21:32:58.778245', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-07-23 21:32:58.778245', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-07-23 21:32:58.808412', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-07-23 21:32:58.814764', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-07-23 21:32:58.824954', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-07-23 21:32:58.824954', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-07-23 21:32:58.847944', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-07-23 21:32:58.847944', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-07-23 21:33:35.675713', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-07-23 21:33:35.689607', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-07-23 21:33:35.705649', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-07-23 21:33:35.720607', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-07-23 21:33:35.722667', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-07-23 21:33:35.737714', '/myapp/index/user/info', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-07-23 21:33:35.753273', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-07-23 21:33:35.758273', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-07-23 21:33:56.577864', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-07-23 21:33:56.592480', '/myapp/index/thing/listUserThing', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-07-23 21:33:56.625314', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-07-23 21:33:56.625314', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-07-23 21:33:56.643181', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-07-23 21:33:56.643181', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-07-23 21:33:56.675679', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-07-23 21:33:56.675679', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-07-23 21:35:02.097267', '/myapp/admin/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-07-23 21:36:04.605334', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-07-23 21:36:40.267078', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-07-23 21:37:05.079607', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-07-23 21:37:20.221039', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-07-23 21:38:15.244802', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-07-23 21:38:15.750643', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-07-23 21:38:33.672965', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-07-23 21:39:12.200176', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-07-23 21:39:12.642264', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-07-23 21:39:17.517601', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-07-23 21:39:17.517601', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-07-23 21:39:17.527374', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-07-23 21:39:17.550293', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-07-23 21:39:17.585890', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-07-23 21:39:17.585890', '/upload/cover/1721737249859.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-07-23 21:39:17.594950', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-07-23 21:39:17.603024', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-07-23 21:39:17.609631', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-07-23 21:39:17.635273', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-07-23 21:39:20.663100', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-07-23 21:39:20.671744', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-07-23 21:39:20.671744', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-07-23 21:39:20.690272', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-07-23 21:39:20.706899', '/myapp/index/thing/detail', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-07-23 21:39:20.735148', '/myapp/index/thing/detail', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-07-23 21:39:22.559893', '/myapp/index/thing/addWishUser', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-07-23 21:39:22.626277', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-07-23 21:39:23.154354', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-07-23 21:39:23.273030', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-07-23 21:39:23.288812', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-07-23 21:39:23.288812', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-07-23 21:39:23.321695', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-07-23 21:39:23.336607', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-07-23 21:39:23.353464', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-07-23 21:39:47.573020', '/myapp/index/order/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-07-23 21:39:47.652929', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-07-23 21:39:47.655815', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-07-23 21:39:49.140489', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-07-23 21:39:49.155820', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-07-23 21:39:49.155820', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-07-23 21:39:49.255137', '/myapp/index/order/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-07-23 21:39:49.265174', '/myapp/index/order/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-07-23 21:39:49.265174', '/myapp/index/order/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-07-23 21:39:49.281253', '/myapp/index/order/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-07-23 21:39:49.281253', '/myapp/index/order/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-07-23 21:39:52.938612', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-07-23 21:39:53.411366', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-07-23 21:40:42.109108', '/myapp/index/thing/listUserThing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-07-23 21:40:42.118140', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-07-23 21:40:42.147546', '/upload/cover/1721737281632.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-07-23 21:40:42.613224', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-07-23 21:40:42.640665', '/myapp/index/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-07-23 21:40:42.657446', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-07-23 21:40:59.523797', '/myapp/index/thing/listUserThing', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-07-23 21:40:59.533195', '/myapp/index/thing/listUserThing', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-07-23 21:41:02.717358', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-07-23 21:41:02.731936', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-07-23 21:41:02.731936', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-07-23 21:41:02.763041', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-07-23 21:41:04.760693', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-07-23 21:41:04.760693', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-07-23 21:41:04.776421', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-07-23 21:41:04.799015', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-07-23 21:41:04.824289', '/myapp/index/thing/getRecommend', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-07-23 21:41:04.839864', '/myapp/index/thing/getRecommend', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-07-23 21:41:05.735567', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-07-23 21:41:05.801907', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-07-23 21:41:05.801907', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-07-23 21:41:05.814424', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-07-23 21:41:05.830778', '/myapp/index/user/info', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-07-23 21:41:05.861516', '/myapp/index/user/info', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-07-23 21:41:05.877166', '/myapp/index/user/info', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-07-23 21:41:10.779917', '/myapp/index/order/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-07-23 21:41:10.823510', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-07-23 21:41:10.823510', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-07-23 21:41:11.719439', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-07-23 21:41:11.735295', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-07-23 21:41:11.750336', '/myapp/index/user/info', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-07-23 21:41:11.797726', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-07-23 21:41:11.814542', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-07-23 21:41:11.820268', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-07-23 21:41:11.830923', '/myapp/index/user/info', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-07-23 21:41:11.830923', '/myapp/index/user/info', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-07-23 21:41:14.596067', '/myapp/index/thing/listUserThing', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-07-23 21:41:14.634848', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-07-23 21:41:14.652108', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-07-23 21:41:35.687764', '/myapp/index/order/cancel_order', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-07-23 21:41:35.736197', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-07-23 21:41:43.746150', '/myapp/admin/ad/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-07-23 21:41:43.746150', '/myapp/admin/ad/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-07-23 21:41:43.775040', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-07-23 21:41:43.791234', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-07-23 21:41:43.821418', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-07-23 21:41:43.828552', '/myapp/admin/ad/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-07-23 21:41:43.857475', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-07-23 21:41:43.857475', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-07-23 21:42:15.009291', '/myapp/admin/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-07-23 21:42:18.637204', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-07-23 21:42:19.035803', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-07-23 21:42:24.353420', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-07-23 21:42:24.353420', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-07-23 21:42:24.923883', '/myapp/index/thing/listUserThing', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-07-23 21:42:24.952158', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-07-23 21:42:24.974732', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-07-23 21:42:30.678233', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-07-23 21:42:30.679455', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-07-23 21:42:31.730804', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-07-23 21:42:31.764025', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-07-23 21:42:31.769055', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-07-23 21:42:32.967007', '/myapp/index/thing/listUserThing', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-07-23 21:42:32.968691', '/myapp/index/thing/listUserThing', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-07-23 21:42:33.595679', '/myapp/index/thing/listUserThing', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-07-23 21:42:33.631350', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-07-23 21:42:33.632216', '/myapp/index/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-07-23 21:42:46.529356', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-07-23 21:42:46.530849', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-07-23 21:42:46.534218', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-07-23 21:42:46.553782', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-07-23 21:42:46.575037', '/upload/cover/1721737162806.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-07-23 21:42:46.575037', '/upload/cover/1721737162806.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-07-23 21:42:46.583267', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-07-23 21:42:48.213177', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-07-23 21:42:48.216828', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-07-23 21:42:48.221976', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-07-23 21:42:48.250736', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-07-23 21:42:48.280619', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-07-23 21:42:48.296521', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-07-23 21:42:49.968016', '/myapp/index/thing/addWishUser', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-07-23 21:42:50.022363', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-07-23 21:42:50.443788', '/myapp/index/thing/addCollectUser', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-07-23 21:42:50.505250', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-07-23 21:42:52.784460', '/myapp/index/thing/rate', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-07-23 21:42:57.092547', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-07-23 21:42:57.121286', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-07-23 21:42:58.663892', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-07-23 21:42:58.704083', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-07-23 21:42:59.835231', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-07-23 21:42:59.930744', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-07-23 21:42:59.930805', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-07-23 21:42:59.938822', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-07-23 21:42:59.964208', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-07-23 21:42:59.994743', '/myapp/index/notice/list_api', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-07-23 21:42:59.996123', '/myapp/index/notice/list_api', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-07-23 21:43:04.579967', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-07-23 21:43:04.595326', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-07-23 21:43:04.595326', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-07-23 21:43:04.646020', '/myapp/index/comment/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-07-23 21:43:04.675533', '/myapp/index/comment/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-07-23 21:43:04.690520', '/myapp/index/comment/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-07-23 21:43:26.603059', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-07-23 21:43:26.606931', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-07-23 21:43:26.611926', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-07-23 21:43:26.626266', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-07-23 21:43:27.726526', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-07-23 21:43:27.736542', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-07-23 21:43:27.741306', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-07-23 21:43:27.758038', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-07-23 21:43:27.792577', '/myapp/index/thing/detail', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-07-23 21:43:27.792577', '/myapp/index/thing/detail', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-07-23 21:43:43.337921', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-07-23 21:43:43.364835', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-07-23 21:43:43.379155', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-07-23 21:44:03.246078', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-07-23 21:44:03.272818', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-07-23 21:44:03.274698', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-07-23 21:44:17.399788', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-07-23 21:44:17.416509', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-07-23 21:44:17.416509', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-07-23 21:44:17.462378', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-07-23 21:44:30.630778', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-07-23 21:44:30.650086', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-07-23 21:44:30.676524', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-07-23 21:44:30.680615', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-07-23 21:44:30.692603', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-07-23 21:44:30.714575', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-07-23 21:44:32.435292', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-07-23 21:44:33.286358', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-07-23 21:44:34.133140', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-07-23 21:44:36.390875', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-07-23 21:44:36.398801', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-07-23 21:44:37.894069', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-07-23 21:44:37.927898', '/myapp/index/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-07-23 21:44:37.941677', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-07-23 21:45:06.064905', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-07-23 21:45:06.069798', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-07-23 21:45:06.099987', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-07-23 21:45:08.404676', '/myapp/index/user/login', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-07-23 21:45:08.462028', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-07-23 21:45:08.470147', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-07-23 21:45:08.480760', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-07-23 21:45:08.514226', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-07-23 21:45:09.918324', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-07-23 21:45:09.932544', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-07-23 21:45:09.949012', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-07-23 21:45:09.966496', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-07-23 21:45:09.994442', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-07-23 21:45:09.997540', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-07-23 21:45:09.999834', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-07-23 21:45:10.451677', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-07-23 21:45:10.463066', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-07-23 21:45:10.499162', '/myapp/index/user/info', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-07-23 21:45:11.113297', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-07-23 21:45:11.115621', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-07-23 21:45:11.132970', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-07-23 21:45:11.165876', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-07-23 21:45:12.110375', '/myapp/index/thing/listUserThing', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-07-23 21:45:12.126583', '/myapp/index/thing/listUserThing', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-07-23 21:45:12.138102', '/myapp/index/thing/listUserThing', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-07-23 21:45:12.138102', '/myapp/index/thing/listUserThing', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-07-23 21:45:12.165481', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-07-23 21:45:12.170751', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-07-23 21:45:12.179020', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-07-23 21:45:13.683230', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-07-23 21:45:13.945511', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-07-23 21:45:14.983268', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-07-23 21:45:14.996179', '/myapp/index/thing/listUserThing', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-07-23 21:45:21.134199', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-07-23 21:45:21.198668', '/myapp/admin/classification/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-07-23 21:45:22.330122', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-07-23 21:45:25.656997', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-07-23 21:45:25.709970', '/myapp/admin/classification/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-07-23 21:45:45.413811', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-07-23 21:45:46.580956', '/myapp/admin/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-07-23 21:46:26.216358', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-07-23 21:46:27.983887', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-07-23 21:46:28.544963', '/myapp/admin/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-07-23 21:46:29.430723', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-07-23 21:46:35.485477', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-07-23 21:46:37.970099', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-07-23 21:46:47.496624', '/myapp/admin/ad/create', 'POST', NULL, '293');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-07-23 21:46:47.519337', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-07-23 21:46:47.551861', '/upload/ad/1721742404646.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-07-23 21:46:54.419153', '/myapp/admin/ad/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-07-23 21:46:54.441775', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-07-23 21:46:54.473962', '/upload/ad/1721742411555.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2024-07-23 21:46:55.637660', '/myapp/admin/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2024-07-23 21:47:00.931034', '/myapp/admin/notice/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2024-07-23 21:47:00.950986', '/myapp/admin/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2024-07-23 21:47:04.258928', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2024-07-23 21:47:04.897187', '/myapp/admin/opLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2024-07-23 21:47:06.264761', '/myapp/admin/errorLog/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2024-07-23 21:47:07.732956', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2024-07-23 21:47:10.252360', '/myapp/admin/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2024-07-23 21:47:13.869451', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2024-07-23 21:47:13.874651', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2024-07-23 21:47:27.268193', '/myapp/index/feedback/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2024-07-23 21:47:28.515782', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2024-07-23 21:47:28.523237', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2024-07-23 21:47:31.467748', '/myapp/admin/overview/count', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2024-07-23 21:47:32.195706', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-07-23 21:47:34.905289', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1112');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-07-23 21:47:35.734264', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-07-23 21:47:35.804204', '/myapp/admin/classification/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-07-23 21:47:40.133362', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-07-23 21:47:40.140266', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-07-23 21:47:40.149921', '/myapp/index/notice/list_api', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-07-23 21:47:40.183381', '/myapp/index/notice/list_api', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-07-23 21:49:13.933301', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-07-23 21:49:13.945549', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-07-23 21:49:13.950872', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-07-23 21:49:13.978283', '/myapp/index/classification/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-07-23 21:49:13.994265', '/upload/cover/1721737281632.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-07-23 21:49:15.989766', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-07-23 21:49:15.995186', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-07-23 21:49:16.015083', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-07-23 21:49:16.540174', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-07-23 21:49:16.548313', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-07-23 21:49:16.563985', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-07-23 21:49:16.581944', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-07-23 21:49:56.493955', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-07-23 21:49:56.538489', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-07-23 21:49:56.545460', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-07-23 21:49:56.554041', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-07-23 21:49:56.603239', '/myapp/index/user/info', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-07-23 21:49:56.625813', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-07-23 21:49:56.651254', '/upload/cover/1721737201008.jpeg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-07-23 21:49:56.734508', '/myapp/index/thing/listUserThing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-07-23 21:49:56.754700', '/myapp/index/thing/listUserThing', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-07-23 21:49:56.756187', '/myapp/index/thing/listUserThing', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-07-23 21:49:56.786362', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-07-23 21:49:56.837739', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-07-23 21:49:56.843783', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-07-23 21:49:56.862050', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-07-23 21:49:56.872517', '/myapp/index/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-07-23 21:51:26.897237', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-07-23 21:51:26.909247', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-07-23 21:51:26.940769', '/myapp/index/notice/list_api', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-07-23 21:51:27.895903', '/myapp/index/thing/listUserThing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-07-23 21:51:27.900585', '/myapp/index/thing/listUserThing', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-07-23 21:51:27.926430', '/myapp/index/thing/listUserThing', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-07-23 21:51:27.942985', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-07-23 21:51:28.030822', '/myapp/index/user/info', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-07-23 21:51:28.035317', '/myapp/index/user/info', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-07-23 21:51:28.042406', '/myapp/index/user/info', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-07-23 21:51:33.996256', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-07-23 21:51:34.005856', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-07-23 21:51:34.051682', '/myapp/index/thing/getRecommend', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-07-23 21:51:34.786578', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-07-23 21:51:34.791041', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-07-23 21:51:34.805368', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-07-23 21:51:34.844174', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-07-23 21:52:27.941203', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-07-23 21:52:27.989349', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-07-23 21:52:27.991166', '/myapp/index/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-07-23 21:52:28.004720', '/upload/ad/1721742411555.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-07-23 21:52:28.039717', '/upload/ad/1721742411555.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-07-23 21:52:28.049292', '/upload/ad/1721742404646.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-07-23 21:52:28.059112', '/upload/ad/1721742404646.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-07-23 21:52:28.406910', '/upload/ad/1721742404646.jpeg', 'GET', NULL, '383');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-07-23 21:52:31.248709', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-07-23 21:52:31.248709', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-07-23 21:52:31.299437', '/myapp/index/thing/getRecommend', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-07-23 21:52:32.572597', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-07-23 21:52:32.583550', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-07-23 21:52:32.583550', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-07-23 21:52:32.633376', '/myapp/index/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-07-23 21:52:33.878561', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-07-23 21:52:33.894285', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-07-23 21:52:33.898095', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-07-23 21:52:33.898095', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-07-23 21:52:33.957715', '/myapp/index/thing/detail', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-07-23 21:52:33.983120', '/myapp/index/thing/detail', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-07-23 21:52:36.012578', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-07-23 21:52:36.022565', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-07-23 21:52:36.027865', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-07-23 21:52:36.077575', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-07-23 21:52:37.560512', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-07-23 21:52:37.573031', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-07-23 21:52:37.577718', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-07-23 21:52:37.645094', '/myapp/index/thing/getRecommend', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-07-23 21:52:37.678518', '/myapp/index/thing/getRecommend', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-07-23 21:52:37.686566', '/myapp/index/thing/getRecommend', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-07-23 21:52:39.542480', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-07-23 21:52:39.543928', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-07-23 21:52:39.560350', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-07-23 21:52:39.595548', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-07-23 21:52:40.507366', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-07-23 21:52:40.517446', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-07-23 21:52:40.543687', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-07-23 21:52:40.566892', '/myapp/index/user/info', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-07-23 21:52:40.617176', '/myapp/index/user/info', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2024-07-23 21:52:40.626018', '/myapp/index/user/info', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2024-07-23 21:52:41.774391', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2024-07-23 21:52:41.784389', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2024-07-23 21:52:41.817564', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2024-07-23 21:52:42.472628', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2024-07-23 21:52:42.482697', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2024-07-23 21:52:42.495380', '/myapp/index/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2024-07-23 21:52:42.529146', '/myapp/index/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2024-07-23 21:52:43.170173', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2024-07-23 21:52:43.185853', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2024-07-23 21:52:43.192884', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2024-07-23 21:52:43.228237', '/myapp/admin/ad/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2024-07-23 21:52:43.247585', '/myapp/admin/ad/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2024-07-23 21:52:43.260554', '/myapp/admin/ad/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2024-07-23 21:52:43.336849', '/upload/cover/1721737088249.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2024-07-23 21:52:44.060431', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2024-07-23 21:52:44.088181', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2024-07-23 21:52:44.088181', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2024-07-23 21:52:44.128203', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2024-07-23 21:52:44.165531', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2024-07-23 21:52:44.170055', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2024-07-23 21:52:44.178244', '/upload/cover/1721737125523.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2024-07-23 21:52:45.386681', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2024-07-23 21:52:45.404283', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2024-07-23 21:52:45.410300', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2024-07-23 21:52:45.424959', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2024-07-23 21:52:45.492445', '/myapp/admin/ad/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2024-07-23 21:52:45.492445', '/myapp/admin/ad/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2024-07-23 21:52:46.431127', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2024-07-23 21:52:46.439442', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2024-07-23 21:52:46.465611', '/myapp/index/thing/getRecommend', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2024-07-23 21:52:47.280901', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2024-07-23 21:52:47.293278', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2024-07-23 21:52:47.324968', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2024-07-23 21:52:47.338979', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2024-07-23 21:52:48.591813', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2024-07-23 21:52:48.591813', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2024-07-23 21:52:48.641909', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2024-07-23 21:52:48.624592', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2024-07-23 21:52:48.716806', '/myapp/admin/ad/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2024-07-23 21:52:48.724466', '/myapp/admin/ad/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2024-07-23 21:52:49.480995', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2024-07-23 21:52:49.506737', '/myapp/index/thing/getRecommend', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2024-07-23 21:52:49.524795', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2024-07-23 21:52:50.026108', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2024-07-23 21:52:50.036824', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2024-07-23 21:52:50.040689', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2024-07-23 21:52:50.092436', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2024-07-23 21:52:51.605451', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2024-07-23 21:52:51.626741', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2024-07-23 21:52:51.642371', '/myapp/index/user/info', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2024-07-23 21:52:51.660965', '/myapp/index/user/info', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2024-07-23 21:52:51.702258', '/myapp/index/user/info', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2024-07-23 21:52:51.702258', '/myapp/index/user/info', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2024-07-23 21:52:52.669576', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2024-07-23 21:52:52.677470', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2024-07-23 21:52:52.683919', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2024-07-23 21:52:52.722772', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2024-07-23 21:53:24.608423', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2024-07-23 21:53:25.502588', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2024-07-23 21:53:26.829686', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2024-07-23 21:53:29.102613', '/myapp/admin/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2024-07-23 21:53:32.376124', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2024-07-23 21:53:35.277379', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2024-07-23 21:53:37.496633', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2024-07-23 21:53:37.547806', '/upload/ad/1721742404646.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2024-07-23 21:53:37.547806', '/upload/ad/1721742404646.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2024-07-23 21:53:38.948280', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2024-07-23 21:53:39.054144', '/myapp/admin/classification/list', 'GET', NULL, '107');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_a` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_b` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_b_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1721739235928', '1', '2024-07-23 20:53:55.930423', '张三', '大学门口', '周六下午8点', '13288888', '', '9', '7', '张亚铜');
INSERT INTO `b_order` VALUES (2, '1721741111354', '2', '2024-07-23 21:25:11.361712', '周玲玲', '校园北门', '周五晚上8点', '1352222222', '123', '2', '9', '武松');
INSERT INTO `b_order` VALUES (3, '1721741987554', '1', '2024-07-23 21:39:47.568607', '王玲', '校园北门', '周五晚上8点', '13988888888', '333', '2', '4', '王萌萌');
INSERT INTO `b_order` VALUES (4, '1721742070759', '3', '2024-07-23 21:41:10.758570', '王玲', '校园北门', '周五晚上8点', '13988888888', '888', '2', '9', '武松');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 8, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (2, 7, 18, '127.0.0.3');
INSERT INTO `b_record` VALUES (3, 9, 11, '127.0.0.3');
INSERT INTO `b_record` VALUES (4, 2, 2, '127.0.0.3');
INSERT INTO `b_record` VALUES (5, 4, 3, '127.0.0.3');
INSERT INTO `b_record` VALUES (6, 3, 5, '127.0.0.3');
INSERT INTO `b_record` VALUES (7, 6, 1, '127.0.0.3');
INSERT INTO `b_record` VALUES (8, 5, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 8, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 3, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (11, 6, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (12, 9, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (13, 2, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (14, 7, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chefang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `shengao` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tizhong` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhiye` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (2, '周玲玲', 'cover/1721655767240.jpeg', '大家好，我今年25岁，来自美丽的城市。我的性格开朗、热爱生活，喜欢尝试新鲜事物。在工作中，我是一名市场专员，平时喜欢关注时尚和潮流，享受与团队合作带来的乐趣。业余时间，我喜欢阅读、旅行和健身，认为这不仅能放松心情，也能让我不断成长。\r\n\r\n我希望找到一个有责任感、幽默风趣的男生，共同分享生活中的点滴，携手迈向更美好的未来。如果你也喜欢探索世界，愿意一起追求梦想，那我们一定会有很多话题可以聊哦！期待能与你相识，谢谢！', '17866668888', '有房有车', '26岁', '北京市朝阳区', '0', '2024-07-22 21:42:58.086599', 3, 0, 0, 0, 4, 4, 3, '178cm', '66kg', '学生', '女');
INSERT INTO `b_thing` VALUES (3, '王晶晶', 'cover/1721656731766.jpeg', '大家好，我今年25岁，来自美丽的城市。我的性格开朗、热爱生活，喜欢尝试新鲜事物。在工作中，我是一名市场专员，平时喜欢关注时尚和潮流，享受与团队合作带来的乐趣。业余时间，我喜欢阅读、旅行和健身，认为这不仅能放松心情，也能让我不断成长。\r\n\r\n我希望找到一个有责任感、幽默风趣的男生，共同分享生活中的点滴，携手迈向更美好的未来。如果你也喜欢探索世界，愿意一起追求梦想，那我们一定会有很多话题可以聊哦！', '18977776666', '有房有车', '29岁', '河北沧州', '0', '2024-07-22 21:58:53.583578', 6, 0, 1, 1, 5, 5, 4, '167cm', '55kg', '程序员', '女');
INSERT INTO `b_thing` VALUES (4, '王萌萌', 'cover/1721737088249.jpeg', '大家好，我来自美丽的城市——成都。目前在一家互联网公司担任产品经理，工作比较忙碌，但我乐于面对挑战，享受解决问题的过程。 \r\n\r\n我性格开朗，喜欢结交新朋友，业余时间我喜欢打篮球、看电影和旅行，觉得这些活动能让我放松心情，增广见识。我爱尝试各种美食，尤其是火锅和川菜。如果你也喜欢推荐一些好吃的地方，我们一定会有聊不完的话题。\r\n\r\n我希望能找到一位有共同兴趣、真诚善良的伴侣，共同分享生活的点滴，携手走过未来的每一个阶段。期待能在这里认识到志同道合的你，谢谢！', '132222', '有房有车', '26岁', '乌镇人民路22号', '0', '2024-07-23 20:18:18.530843', 3, 0, 1, 0, 4, 6, 3, '188cm', '88kg', '律师', '女');
INSERT INTO `b_thing` VALUES (5, '潘金莲', 'cover/1721737125523.jpeg', '大家好，我来自美丽的城市——成都。目前在一家互联网公司担任产品经理，工作比较忙碌，但我乐于面对挑战，享受解决问题的过程。 \r\n\r\n我性格开朗，喜欢结交新朋友，业余时间我喜欢打篮球、看电影和旅行，觉得这些活动能让我放松心情，增广见识。我爱尝试各种美食，尤其是火锅和川菜。如果你也喜欢推荐一些好吃的地方，我们一定会有聊不完的话题。\r\n\r\n我希望能找到一位有共同兴趣、真诚善良的伴侣，共同分享生活的点滴，携手走过未来的每一个阶段。期待能在这里认识到志同道合的你，谢谢！', '132222', '有房有车', '25岁', '广州市白云区', '0', '2024-07-23 20:19:01.719931', 2, 0, 0, 0, 3, 7, 3, '188cm', '88kg', '律师', '女');
INSERT INTO `b_thing` VALUES (6, '王晓丽', 'cover/1721737162806.jpeg', '大家好，我来自美丽的城市——成都。目前在一家互联网公司担任产品经理，工作比较忙碌，但我乐于面对挑战，享受解决问题的过程。 \r\n\r\n我性格开朗，喜欢结交新朋友，业余时间我喜欢打篮球、看电影和旅行，觉得这些活动能让我放松心情，增广见识。我爱尝试各种美食，尤其是火锅和川菜。如果你也喜欢推荐一些好吃的地方，我们一定会有聊不完的话题。\r\n\r\n我希望能找到一位有共同兴趣、真诚善良的伴侣，共同分享生活的点滴，携手走过未来的每一个阶段。期待能在这里认识到志同道合的你，谢谢！', '132222', '有房有车', '21岁', '广州市白云区', '0', '2024-07-23 20:19:41.892262', 2, 0, 0, 0, 1, 8, 3, '177cm', '55kg', '会计', '女');
INSERT INTO `b_thing` VALUES (7, '张亚铜', 'cover/1721737201008.jpeg', '大家好，我来自美丽的城市——成都。目前在一家互联网公司担任产品经理，工作比较忙碌，但我乐于面对挑战，享受解决问题的过程。 \r\n\r\n我性格开朗，喜欢结交新朋友，业余时间我喜欢打篮球、看电影和旅行，觉得这些活动能让我放松心情，增广见识。我爱尝试各种美食，尤其是火锅和川菜。如果你也喜欢推荐一些好吃的地方，我们一定会有聊不完的话题。\r\n\r\n我希望能找到一位有共同兴趣、真诚善良的伴侣，共同分享生活的点滴，携手走过未来的每一个阶段。期待能在这里认识到志同道合的你，谢谢！', '13211111111', '有房有车', '28岁', '广州市白云区', '0', '2024-07-23 20:20:22.286277', 19, 0, 1, 1, 4, 9, 3, '177cm', '55kg', '学生', '女');
INSERT INTO `b_thing` VALUES (8, '刘德华', 'cover/1721737249859.jpeg', '大家好，我来自美丽的城市——成都。目前在一家互联网公司担任产品经理，工作比较忙碌，但我乐于面对挑战，享受解决问题的过程。 \r\n\r\n我性格开朗，喜欢结交新朋友，业余时间我喜欢打篮球、看电影和旅行，觉得这些活动能让我放松心情，增广见识。我爱尝试各种美食，尤其是火锅和川菜。如果你也喜欢推荐一些好吃的地方，我们一定会有聊不完的话题。\r\n\r\n我希望能找到一位有共同兴趣、真诚善良的伴侣，共同分享生活的点滴，携手走过未来的每一个阶段。期待能在这里认识到志同道合的你，谢谢！', '132222', '有房有车', '31岁', '广州市白云区', '0', '2024-07-23 20:21:03.160414', 2, 0, 0, 0, 2, 10, 3, '188cm', '88kg', '经理', '男');
INSERT INTO `b_thing` VALUES (9, '武松', 'cover/1721737281632.jpeg', '大家好，我来自美丽的城市——成都。目前在一家互联网公司担任产品经理，工作比较忙碌，但我乐于面对挑战，享受解决问题的过程。 \r\n\r\n我性格开朗，喜欢结交新朋友，业余时间我喜欢打篮球、看电影和旅行，觉得这些活动能让我放松心情，增广见识。我爱尝试各种美食，尤其是火锅和川菜。如果你也喜欢推荐一些好吃的地方，我们一定会有聊不完的话题。\r\n\r\n我希望能找到一位有共同兴趣、真诚善良的伴侣，共同分享生活的点滴，携手走过未来的每一个阶段。期待能在这里认识到志同道合的你，谢谢！', '132222', '有房有车', '28岁', '乌镇人民路22号', '0', '2024-07-23 20:21:36.119518', 12, 0, 1, 1, 2, 11, 3, '188cm', '88kg', '会计', '男');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (3, 3, 11);
INSERT INTO `b_thing_collect` VALUES (1, 7, 11);
INSERT INTO `b_thing_collect` VALUES (2, 9, 4);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (4, 3, 11);
INSERT INTO `b_thing_wish` VALUES (3, 4, 4);
INSERT INTO `b_thing_wish` VALUES (1, 7, 11);
INSERT INTO `b_thing_wish` VALUES (2, 9, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-22 21:10:03.217866', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (3, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-22 21:10:18.061582', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (4, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-22 21:26:24.916194', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (5, 'fafafa', '2e416649e6ca0a1cbf9a1210cf4ce234', '2', '0', 'fafa3333', '', '333', NULL, NULL, NULL, '2024-07-22 21:56:42.705963', 0, NULL, 0, NULL, '2e416649e6ca0a1cbf9a1210cf4ce234');
INSERT INTO `b_user` VALUES (6, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-22 22:11:06.937141', 0, NULL, 0, NULL, '9df62e693988eb4e1e1444ece0578579');
INSERT INTO `b_user` VALUES (7, 'www', '4eae35f1b35977a00ebd8086c259d4c9', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-23 20:18:35.369010', 0, NULL, 0, NULL, '4eae35f1b35977a00ebd8086c259d4c9');
INSERT INTO `b_user` VALUES (8, 'eee', 'd2f2297d6e829cd3493aa7de4416a18f', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-23 20:19:12.787032', 0, NULL, 0, NULL, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `b_user` VALUES (9, 'fff', '343d9040a671c45832ee5381860e2996', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-23 20:19:52.312345', 0, NULL, 0, NULL, '343d9040a671c45832ee5381860e2996');
INSERT INTO `b_user` VALUES (10, 'ggg', 'ba248c985ace94863880921d8900c53f', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-23 20:20:36.724086', 0, NULL, 0, NULL, 'ba248c985ace94863880921d8900c53f');
INSERT INTO `b_user` VALUES (11, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-23 20:21:13.833807', 0, NULL, 0, NULL, '08f8e0260c64418510cefb2b06eee5cd');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-22 21:05:11.923829');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-22 21:05:12.292097');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-22 21:05:12.382571');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-22 21:05:12.390575');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-22 21:05:12.398572');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-22 21:05:12.491963');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-22 21:05:12.549054');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-22 21:05:12.602351');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-22 21:05:12.614707');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-22 21:05:12.656240');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-22 21:05:12.661239');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-22 21:05:12.670239');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-22 21:05:12.718468');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-22 21:05:12.762252');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-22 21:05:12.828309');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-22 21:05:12.842267');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-22 21:05:12.898680');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-22 21:05:14.615089');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-22 21:05:14.682247');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-22 21:05:14.894524');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-22 21:05:15.000367');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240722_2104', '2024-07-22 21:05:15.900797');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-22 21:05:15.972902');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_thing_sex', '2024-07-22 21:14:40.618562');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_auto_20240722_2148', '2024-07-22 21:48:26.936703');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0008_order_receiver_time', '2024-07-23 20:43:05.971300');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0009_order_thing_b_title', '2024-07-23 20:49:27.970570');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
