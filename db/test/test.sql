/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : authority

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 26/02/2021 15:26:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `op` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1364595070184267779 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, 'adas', NULL, NULL, '2021-02-08 12:38:40', NULL, '2021-02-16 12:39:12');
INSERT INTO `test` VALUES (2, 'aaaa', NULL, NULL, '2021-02-17 12:38:44', NULL, '2021-02-24 12:39:15');
INSERT INTO `test` VALUES (1444444444444, '小由', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `test` VALUES (1333632002898055169, '小由', NULL, NULL, '2021-02-24 12:38:48', NULL, '2021-02-24 12:39:17');
INSERT INTO `test` VALUES (1333635170117697538, '小由', '12,13,14', NULL, '2021-02-24 12:38:50', NULL, '2021-02-24 12:39:19');
INSERT INTO `test` VALUES (1337586554999451649, '小由', NULL, NULL, '2021-02-24 12:38:52', NULL, '2021-02-24 12:39:21');
INSERT INTO `test` VALUES (1364165076614168577, '小由', NULL, NULL, '2021-02-24 12:38:54', NULL, '2021-02-24 12:39:23');
INSERT INTO `test` VALUES (1364429332249063426, '小由', NULL, NULL, '2021-02-24 12:38:55', NULL, '2021-02-24 12:39:24');

-- ----------------------------
-- Table structure for test_student
-- ----------------------------
DROP TABLE IF EXISTS `test_student`;
CREATE TABLE `test_student`  (
  `id` bigint(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_student
-- ----------------------------
INSERT INTO `test_student` VALUES (2, '岩学生', 1);

-- ----------------------------
-- Table structure for test_teacher
-- ----------------------------
DROP TABLE IF EXISTS `test_teacher`;
CREATE TABLE `test_teacher`  (
  `id` bigint(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_teacher
-- ----------------------------
INSERT INTO `test_teacher` VALUES (1, '吕老师');

SET FOREIGN_KEY_CHECKS = 1;
