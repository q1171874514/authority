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

 Date: 06/03/2021 19:14:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `pid` bigint(0) NULL DEFAULT NULL COMMENT '上级ID',
  `pids` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所有上级ID，用逗号分开',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门名称',
  `sort` int unsigned NULL COMMENT '排序',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE,
  INDEX `idx_sort`(`sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1067246875800000064, 1067246875800000066, '1067246875800000066', '上海分公司', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000065, 1067246875800000064, '1067246875800000066,1067246875800000064', '市场部', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000066, 0, '0', '人人开源集团', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `dict_type_id` bigint(0) NOT NULL COMMENT '字典类型ID',
  `dict_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典标签',
  `dict_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典值',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int unsigned NULL COMMENT '排序',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_dict_type_value`(`dict_type_id`, `dict_value`) USING BTREE,
  INDEX `idx_sort`(`sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1160061112075464705, 1160061077912858625, '男', '0', '', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dict_data` VALUES (1160061146967879681, 1160061077912858625, '女', '1', '', 1, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dict_data` VALUES (1160061190127267841, 1160061077912858625, '保密', '2', '', 2, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典类型',
  `dict_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int unsigned NULL COMMENT '排序',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1160061077912858625, 'gender', '性别', '', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');

-- ----------------------------
-- Table structure for sys_language
-- ----------------------------
DROP TABLE IF EXISTS `sys_language`;
CREATE TABLE `sys_language`  (
  `table_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '表名',
  `table_id` bigint(0) NOT NULL COMMENT '表主键',
  `field_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段名',
  `field_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '字段值',
  `language` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '语言',
  PRIMARY KEY (`table_name`, `table_id`, `field_name`, `language`) USING BTREE,
  INDEX `idx_table_id`(`table_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '国际化' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_language
-- ----------------------------
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000002, 'name', 'Authority Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000002, 'name', '权限管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000002, 'name', '權限管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000003, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000003, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000003, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000004, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000004, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000004, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000005, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000005, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000005, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000006, 'name', 'Export', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000006, 'name', '导出', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000006, 'name', '導出', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000007, 'name', 'Role Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000007, 'name', '角色管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000007, 'name', '角色管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000008, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000008, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000008, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000009, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000009, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000009, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000010, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000010, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000010, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000011, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000011, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000011, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000012, 'name', 'Department Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000012, 'name', '部门管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000012, 'name', '部門管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000014, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000014, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000014, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000015, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000015, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000015, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000016, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000016, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000016, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000017, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000017, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000017, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000025, 'name', 'Menu Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000025, 'name', '菜单管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000025, 'name', '菜單管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000026, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000026, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000026, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000027, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000027, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000027, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000028, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000028, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000028, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000029, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000029, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000029, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000035, 'name', 'Setting', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000035, 'name', '系统设置', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000035, 'name', '系統設置', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000041, 'name', 'Dict Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000041, 'name', '字典管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000041, 'name', '字典管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000042, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000042, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000042, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000043, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000043, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000043, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000044, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000044, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000044, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000045, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000045, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000045, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000046, 'name', 'Log Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000046, 'name', '日志管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000046, 'name', '日誌管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000047, 'name', 'File Upload', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000047, 'name', '文件上传', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000047, 'name', '文件上傳', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000048, 'name', 'Login Log', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000048, 'name', '登录日志', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000048, 'name', '登錄日誌', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000049, 'name', 'Operation Log', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000049, 'name', '操作日志', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000049, 'name', '操作日誌', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000050, 'name', 'Error Log', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000050, 'name', '异常日志', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000050, 'name', '異常日誌', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000051, 'name', 'SQL Monitoring', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000051, 'name', 'SQL监控', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000051, 'name', 'SQL監控', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000053, 'name', 'System Monitoring', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000053, 'name', '系统监控', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000053, 'name', '系統監控', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000055, 'name', 'User Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000055, 'name', '用户管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000055, 'name', '用戶管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000056, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000056, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000056, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1156748733921165314, 'name', 'Interface Document', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1156748733921165314, 'name', '接口文档', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1156748733921165314, 'name', '接口文檔', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620226, 'name', '', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620226, 'name', '', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620226, 'name', '', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620227, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620227, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620227, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620228, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620228, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620228, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620229, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620229, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620229, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620230, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620230, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620230, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620231, 'name', 'Export', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620231, 'name', '导出', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445501620231, 'name', '導出', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249985, 'name', '', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249985, 'name', '', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249985, 'name', '', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249986, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249986, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249986, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249987, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249987, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249987, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249988, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249988, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249988, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249989, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249989, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249989, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249990, 'name', 'Export', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249990, 'name', '导出', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1344537445774249990, 'name', '導出', 'zh-TW');

-- ----------------------------
-- Table structure for sys_log_error
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_error`;
CREATE TABLE `sys_log_error`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `request_uri` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求URI',
  `request_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求方式',
  `request_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请求参数',
  `user_agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理',
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作IP',
  `error_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '异常信息',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '异常日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log_error
-- ----------------------------
INSERT INTO `sys_log_error` VALUES (1368106872331386882, '/sys/oss/page', 'GET', '{\"_t\":\"1615017070838\",\"limit\":\"10\",\"page\":\"1\",\"orderField\":\"create_name\",\"order\":\"asc\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\r\n### The error may exist in com/example/authority/modules/oss/dao/SysOssDao.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT id, creator, creator_name, url, create_date FROM sys_oss ORDER BY create_name LIMIT ?,?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:239)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441)\r\n	at com.sun.proxy.$Proxy67.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:224)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.executeForIPage(MybatisMapperMethod.java:115)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:86)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy110.selectPage(Unknown Source)\r\n	at com.example.authority.modules.oss.service.impl.SysOssServiceImpl.page(SysOssServiceImpl.java:29)\r\n	at com.example.authority.modules.oss.service.impl.SysOssServiceImpl$$FastClassBySpringCGLIB$$7a03a460.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:687)\r\n	at com.example.authority.modules.oss.service.impl.SysOssServiceImpl$$EnhancerBySpringCGLIB$$8287cedc.page(<generated>)\r\n	at com.example.authority.modules.oss.controller.SysOssController.page(SysOssController.java:60)\r\n	at com.example.authority.modules.oss.controller.SysOssController$$FastClassBySpringCGLIB$$23c10c4e.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor$1.proceed(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:82)\r\n	at org.apache.shiro.authz.aop.AuthorizingMethodInterceptor.invoke(AuthorizingMethodInterceptor.java:39)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor.invoke(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:115)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:95)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at com.example.authority.modules.oss.controller.SysOssController$$EnhancerBySpringCGLIB$$10358dc6.page(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:190)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:105)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:878)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:792)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1040)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:943)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:626)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:733)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:112)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.example.authority.common.xss.XssFilter.doFilter(XssFilter.java:30)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:358)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:271)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:202)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:143)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:374)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1590)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:120)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:953)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:370)\r\n	at com.zaxxer.hikari.pool.ProxyPreparedStatement.execute(ProxyPreparedStatement.java:44)\r\n	at com.zaxxer.hikari.pool.HikariProxyPreparedStatement.execute(HikariProxyPreparedStatement.java)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at sun.reflect.GeneratedMethodAccessor75.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.query(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor75.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.query(Unknown Source)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doQuery(MybatisSimpleExecutor.java:67)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:325)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:89)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:147)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:140)\r\n	at sun.reflect.GeneratedMethodAccessor120.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:427)\r\n	... 99 more\r\n', 1067246875800000001, '2021-03-06 07:51:11');
INSERT INTO `sys_log_error` VALUES (1368106881059733505, '/sys/oss/page', 'GET', '{\"_t\":\"1615017073251\",\"limit\":\"10\",\"page\":\"1\",\"orderField\":\"create_name\",\"order\":\"desc\"}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\r\n### The error may exist in com/example/authority/modules/oss/dao/SysOssDao.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT id, creator, creator_name, url, create_date FROM sys_oss ORDER BY create_name DESC LIMIT ?,?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:239)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441)\r\n	at com.sun.proxy.$Proxy67.selectList(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:224)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.executeForIPage(MybatisMapperMethod.java:115)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:86)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy110.selectPage(Unknown Source)\r\n	at com.example.authority.modules.oss.service.impl.SysOssServiceImpl.page(SysOssServiceImpl.java:29)\r\n	at com.example.authority.modules.oss.service.impl.SysOssServiceImpl$$FastClassBySpringCGLIB$$7a03a460.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:687)\r\n	at com.example.authority.modules.oss.service.impl.SysOssServiceImpl$$EnhancerBySpringCGLIB$$8287cedc.page(<generated>)\r\n	at com.example.authority.modules.oss.controller.SysOssController.page(SysOssController.java:60)\r\n	at com.example.authority.modules.oss.controller.SysOssController$$FastClassBySpringCGLIB$$23c10c4e.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor$1.proceed(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:82)\r\n	at org.apache.shiro.authz.aop.AuthorizingMethodInterceptor.invoke(AuthorizingMethodInterceptor.java:39)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor.invoke(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:115)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:95)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at com.example.authority.modules.oss.controller.SysOssController$$EnhancerBySpringCGLIB$$10358dc6.page(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:190)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:105)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:878)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:792)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1040)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:943)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:626)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:733)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:112)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.example.authority.common.xss.XssFilter.doFilter(XssFilter.java:30)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:358)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:271)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:202)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:143)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:374)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1590)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'create_name\' in \'order clause\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:120)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:953)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:370)\r\n	at com.zaxxer.hikari.pool.ProxyPreparedStatement.execute(ProxyPreparedStatement.java:44)\r\n	at com.zaxxer.hikari.pool.HikariProxyPreparedStatement.execute(HikariProxyPreparedStatement.java)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at sun.reflect.GeneratedMethodAccessor75.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.query(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor75.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.query(Unknown Source)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doQuery(MybatisSimpleExecutor.java:67)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:325)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:89)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:147)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:140)\r\n	at sun.reflect.GeneratedMethodAccessor120.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:427)\r\n	... 99 more\r\n', 1067246875800000001, '2021-03-06 07:51:13');

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `operation` tinyint unsigned NULL COMMENT '用户操作   0：用户登录   1：用户退出',
  `status` tinyint unsigned NOT NULL COMMENT '状态  0：失败    1：成功    2：账号已锁定',
  `user_agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理',
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作IP',
  `creator_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (1368115902110060546, 0, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'admin', 1067246875800000001, '2021-03-06 08:27:04');
INSERT INTO `sys_log_login` VALUES (1368117634617659393, 0, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'admin', 1067246875800000001, '2021-03-06 08:33:57');
INSERT INTO `sys_log_login` VALUES (1368130723471781889, 0, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'admin', 1067246875800000001, '2021-03-06 09:25:58');

-- ----------------------------
-- Table structure for sys_log_operation
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_operation`;
CREATE TABLE `sys_log_operation`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `operation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户操作',
  `request_uri` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求URI',
  `request_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求方式',
  `request_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请求参数',
  `request_time` int unsigned NOT NULL COMMENT '请求时长(毫秒)',
  `user_agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理',
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作IP',
  `status` tinyint unsigned NOT NULL COMMENT '状态  0：失败   1：成功',
  `creator_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log_operation
-- ----------------------------
INSERT INTO `sys_log_operation` VALUES (1368096049995251714, '删除', '/sys/oss', 'DELETE', '[1368094885060870146]', 17, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 07:08:11');
INSERT INTO `sys_log_operation` VALUES (1368096136330805250, '删除', '/sys/oss', 'DELETE', '[1368095945515139073]', 16, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 07:08:32');
INSERT INTO `sys_log_operation` VALUES (1368103580415115265, '上传文件', '/sys/oss/upload', 'POST', NULL, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 07:38:06');
INSERT INTO `sys_log_operation` VALUES (1368113138000805890, '上传文件', '/sys/oss/upload', 'POST', NULL, 33, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:16:05');
INSERT INTO `sys_log_operation` VALUES (1368117960905150465, '删除', '/sys/menu/1067246875800000040', 'DELETE', '1067246875800000040', 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:35:15');
INSERT INTO `sys_log_operation` VALUES (1368117995764011009, '删除', '/sys/menu/1067246875800000059', 'DELETE', '1067246875800000059', 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:35:23');
INSERT INTO `sys_log_operation` VALUES (1368118011412959234, '删除', '/sys/menu/1067246875800000057', 'DELETE', '1067246875800000057', 30, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:35:27');
INSERT INTO `sys_log_operation` VALUES (1368118030689980418, '删除', '/sys/menu/1067246875800000060', 'DELETE', '1067246875800000060', 27, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:35:32');
INSERT INTO `sys_log_operation` VALUES (1368118044950614017, '删除', '/sys/menu/1067246875800000061', 'DELETE', '1067246875800000061', 26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:35:35');
INSERT INTO `sys_log_operation` VALUES (1368118060125605889, '删除', '/sys/menu/1067246875800000058', 'DELETE', '1067246875800000058', 22, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:35:39');
INSERT INTO `sys_log_operation` VALUES (1368118075422232577, '删除', '/sys/menu/1067246875800000040', 'DELETE', '1067246875800000040', 24, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:35:42');
INSERT INTO `sys_log_operation` VALUES (1368118378162900994, '删除', '/sys/menu/1067246875800000030', 'DELETE', '1067246875800000030', 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:36:54');
INSERT INTO `sys_log_operation` VALUES (1368118402334674946, '删除', '/sys/menu/1067246875800000031', 'DELETE', '1067246875800000031', 29, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:00');
INSERT INTO `sys_log_operation` VALUES (1368118404960309249, '删除', '/sys/menu/1067246875800000031', 'DELETE', '1067246875800000031', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:01');
INSERT INTO `sys_log_operation` VALUES (1368118408542244865, '删除', '/sys/menu/1067246875800000032', 'DELETE', '1067246875800000032', 28, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:02');
INSERT INTO `sys_log_operation` VALUES (1368118411499229185, '删除', '/sys/menu/1067246875800000032', 'DELETE', '1067246875800000032', 15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:02');
INSERT INTO `sys_log_operation` VALUES (1368118418252058626, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 33, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118418348527617, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118418486939650, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118418763763713, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118418981867522, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118419246108674, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118419539709953, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 16, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118419795562497, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 18, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118420084969473, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 18, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118420311461890, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:04');
INSERT INTO `sys_log_operation` VALUES (1368118420596674561, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:05');
INSERT INTO `sys_log_operation` VALUES (1368118420944801793, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:05');
INSERT INTO `sys_log_operation` VALUES (1368118422861598721, '删除', '/sys/menu/1067246875800000033', 'DELETE', '1067246875800000033', 17, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:05');
INSERT INTO `sys_log_operation` VALUES (1368118535403163650, '删除', '/sys/menu/1067246875800000034', 'DELETE', '1067246875800000034', 30, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:32');
INSERT INTO `sys_log_operation` VALUES (1368118548527140866, '删除', '/sys/menu/1067246875800000036', 'DELETE', '1067246875800000036', 27, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:35');
INSERT INTO `sys_log_operation` VALUES (1368118557163212802, '删除', '/sys/menu/1067246875800000037', 'DELETE', '1067246875800000037', 25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:37');
INSERT INTO `sys_log_operation` VALUES (1368118566797529090, '删除', '/sys/menu/1067246875800000038', 'DELETE', '1067246875800000038', 23, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:39');
INSERT INTO `sys_log_operation` VALUES (1368118577165848577, '删除', '/sys/menu/1067246875800000039', 'DELETE', '1067246875800000039', 23, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:42');
INSERT INTO `sys_log_operation` VALUES (1368118618106449921, '删除', '/sys/menu/1067246875800000030', 'DELETE', '1067246875800000030', 22, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:37:52');
INSERT INTO `sys_log_operation` VALUES (1368118753817350146, '删除', '/sys/menu/1158267114314842116', 'DELETE', '1158267114314842116', 26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:38:24');
INSERT INTO `sys_log_operation` VALUES (1368118771102076929, '删除', '/sys/menu/1158267114314842117', 'DELETE', '1158267114314842117', 34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:38:28');
INSERT INTO `sys_log_operation` VALUES (1368118779201277954, '删除', '/sys/menu/1158267114314842118', 'DELETE', '1158267114314842118', 19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:38:30');
INSERT INTO `sys_log_operation` VALUES (1368118790039359490, '删除', '/sys/menu/1158267114314842119', 'DELETE', '1158267114314842119', 25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:38:33');
INSERT INTO `sys_log_operation` VALUES (1368118833651732481, '删除', '/sys/menu/1158267114314842115', 'DELETE', '1158267114314842115', 29, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:38:43');
INSERT INTO `sys_log_operation` VALUES (1368118889968652290, '删除', '/sys/menu/1067246875800000021', 'DELETE', '1067246875800000021', 26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:38:56');
INSERT INTO `sys_log_operation` VALUES (1368118924059955201, '删除', '/sys/menu/1067246875800000022', 'DELETE', '1067246875800000022', 25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:39:05');
INSERT INTO `sys_log_operation` VALUES (1368118938744213506, '删除', '/sys/menu/1067246875800000023', 'DELETE', '1067246875800000023', 25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:39:08');
INSERT INTO `sys_log_operation` VALUES (1368118985779138562, '删除', '/sys/menu/1067246875800000024', 'DELETE', '1067246875800000024', 21, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:39:19');
INSERT INTO `sys_log_operation` VALUES (1368119218697228290, '删除', '/sys/menu/1067246875800000018', 'DELETE', '1067246875800000018', 28, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:15');
INSERT INTO `sys_log_operation` VALUES (1368119229052964866, '删除', '/sys/menu/1150941506626965506', 'DELETE', '1150941506626965506', 26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:17');
INSERT INTO `sys_log_operation` VALUES (1368119239912017921, '删除', '/sys/menu/1067246875800000019', 'DELETE', '1067246875800000019', 25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:20');
INSERT INTO `sys_log_operation` VALUES (1368119249575694337, '删除', '/sys/menu/1067246875800000020', 'DELETE', '1067246875800000020', 19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:22');
INSERT INTO `sys_log_operation` VALUES (1368119298900709377, '删除', '/sys/menu/1150940491508928513', 'DELETE', '1150940491508928513', 26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:34');
INSERT INTO `sys_log_operation` VALUES (1368119337760935937, '删除', '/sys/menu/1151384841607028738', 'DELETE', '1151384841607028738', 29, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:43');
INSERT INTO `sys_log_operation` VALUES (1368119350645837826, '删除', '/sys/menu/1150941447038488577', 'DELETE', '1150941447038488577', 25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:46');
INSERT INTO `sys_log_operation` VALUES (1368119358275276802, '删除', '/sys/menu/1150941588046794754', 'DELETE', '1150941588046794754', 24, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:48');
INSERT INTO `sys_log_operation` VALUES (1368119368362577921, '删除', '/sys/menu/1150941384811794433', 'DELETE', '1150941384811794433', 27, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:51');
INSERT INTO `sys_log_operation` VALUES (1368119384170909697, '删除', '/sys/menu/1158267114314842114', 'DELETE', '1158267114314842114', 30, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:54');
INSERT INTO `sys_log_operation` VALUES (1368119396049178626, '删除', '/sys/menu/1150941310262235138', 'DELETE', '1150941310262235138', 19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:40:57');
INSERT INTO `sys_log_operation` VALUES (1368119452072497154, '删除', '/sys/menu/1067246875800000052', 'DELETE', '1067246875800000052', 28, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:41:10');
INSERT INTO `sys_log_operation` VALUES (1368119466228273154, '删除', '/sys/menu/1067246875800000054', 'DELETE', '1067246875800000054', 23, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 1, 'admin', 1067246875800000001, '2021-03-06 08:41:14');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `pid` bigint(0) NULL DEFAULT NULL COMMENT '上级ID，一级菜单为0',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `permissions` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:list,sys:user:save)',
  `type` tinyint unsigned NULL COMMENT '类型   0：菜单   1：按钮',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE,
  INDEX `idx_sort`(`sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文件上传' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oss
-- ----------------------------
INSERT INTO `sys_oss` VALUES (1368113137870782465, 'http://192.168.1.6/20210306/85bc90889bdf4ed78daaa93388289423.png', 1067246875800000001, '2021-03-06 08:16:05', 'admin');

-- ----------------------------
-- Table structure for sys_params
-- ----------------------------
DROP TABLE IF EXISTS `sys_params`;
CREATE TABLE `sys_params`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `param_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数编码',
  `param_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数值',
  `param_type` tinyint unsigned NULL COMMENT '类型   0：系统参数   1：非系统参数',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_param_code`(`param_code`) USING BTREE,
  INDEX `idx_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_params
-- ----------------------------
INSERT INTO `sys_params` VALUES (1067246875800000073, 'CLOUD_STORAGE_CONFIG_KEY', '{\"type\":5,\"qiniuDomain\":\"\",\"qiniuPrefix\":\"\",\"qiniuAccessKey\":\"\",\"qiniuSecretKey\":\"\",\"qiniuBucketName\":\"\",\"aliyunDomain\":\"http://aa\",\"aliyunPrefix\":\"路径前缀\",\"aliyunEndPoint\":\"EndPoint\",\"aliyunAccessKeyId\":\"AccessKeyId\",\"aliyunAccessKeySecret\":\"AccessKeySecr\",\"aliyunBucketName\":\"BucketName\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudAppId\":0,\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\",\"qcloudRegion\":\"\",\"fastdfsDomain\":\"\",\"localDomain\":\"http://192.168.1.6\",\"localPrefix\":\"\",\"localPath\":\"E:/renren-up\"}', 0, '云存储配置信息', 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_params` VALUES (1067246875800000074, 'SMS_CONFIG_KEY', '{\"platform\":1,\"aliyunAccessKeyId\":\"1\",\"aliyunAccessKeySecret\":\"1\",\"aliyunSignName\":\"1\",\"aliyunTemplateCode\":\"1\",\"qcloudAppId\":2,\"qcloudAppKey\":\"2\",\"qcloudSignName\":\"2\",\"qcloudTemplateId\":\"2\"}', 0, '短信配置信息', 1067246875800000001, '2020-11-21 11:35:58', 1067246875800000001, '2020-11-21 11:35:58');
INSERT INTO `sys_params` VALUES (1067246875800000075, 'MAIL_CONFIG_KEY', '{\"smtp\":\"smtp.163.com\",\"port\":25,\"username\":\"renrenio_test@163.com\",\"password\":\"renren123456\"}', 0, '邮件配置信息', 1067246875800000001, '2020-11-21 11:35:58', 1067246875800000001, '2020-11-21 11:35:58');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `created_time` datetime(0) NULL DEFAULT NULL,
  `enabled` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_dept_id`(`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1341976522773581826, '办公人员', '', NULL, 1067246875800000001, '2020-12-24 13:18:30', NULL, '2021-03-05 10:42:18', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_data_scope`;
CREATE TABLE `sys_role_data_scope`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色数据权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_data_scope
-- ----------------------------
INSERT INTO `sys_role_data_scope` VALUES (1367787548131545089, 1341976522773581826, 1067246875800000062, 1067246875800000001, '2021-03-05 10:42:18');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单ID',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_menu_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色菜单关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1367787547875692546, 1341976522773581826, 1067246875800000002, 1067246875800000001, '2021-03-05 10:42:18');
INSERT INTO `sys_role_menu` VALUES (1367787547913441281, 1341976522773581826, 1067246875800000055, 1067246875800000001, '2021-03-05 10:42:18');
INSERT INTO `sys_role_menu` VALUES (1367787547938607105, 1341976522773581826, 1067246875800000056, 1067246875800000001, '2021-03-05 10:42:18');
INSERT INTO `sys_role_menu` VALUES (1367787547955384322, 1341976522773581826, 1067246875800000003, 1067246875800000001, '2021-03-05 10:42:18');
INSERT INTO `sys_role_menu` VALUES (1367787547972161538, 1341976522773581826, 1067246875800000004, 1067246875800000001, '2021-03-05 10:42:18');
INSERT INTO `sys_role_menu` VALUES (1367787547988938753, 1341976522773581826, 1067246875800000005, 1067246875800000001, '2021-03-05 10:42:18');
INSERT INTO `sys_role_menu` VALUES (1367787547997327362, 1341976522773581826, 1067246875800000006, 1067246875800000001, '2021-03-05 10:42:18');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色用户关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1367786961419718658, 1341976522773581826, 1341976112734228481, 1067246875800000001, '2021-03-05 10:39:59');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `head_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` tinyint unsigned NULL COMMENT '性别   0：男   1：女    2：保密',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `super_admin` tinyint unsigned NULL COMMENT '超级管理员   0：否   1：是',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '状态  0：停用   1：正常',
  `creator` bigint(0) NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updater` bigint(0) NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `identity_cards` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证',
  `company` int(0) NULL DEFAULT NULL,
  `created_time` datetime(0) NULL DEFAULT NULL,
  `enabled` bit(1) NULL DEFAULT NULL,
  `id_del` bit(1) NULL DEFAULT NULL,
  `login_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_key` int(0) NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_username`(`username`) USING BTREE,
  INDEX `idx_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1067246875800000001, 'admin', '$2a$10$012Kx2ba5jzqr9gLlG4MX.bnQJTD9UWqF57XDo2N3.fPtLne02u/m', '管理员', NULL, 0, 'root@renren.io', '13612345678', NULL, 1, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `user_id` bigint(0) NOT NULL COMMENT '用户id',
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户token',
  `expire_date` datetime(0) NULL DEFAULT NULL COMMENT '过期时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  UNIQUE INDEX `token`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户Token' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES (1330359036709974017, 1067246875800000001, '42194b1ae72c812ccdb040db930cbe1f', '2021-03-06 21:25:58', '2021-03-06 09:25:58', '2020-11-22 11:54:46');
INSERT INTO `sys_user_token` VALUES (1341976913774989316, 1341976112734228481, 'db8a4dc001a4fcb97d2cffb71cfc3f8e', '2021-03-05 00:50:59', '2021-03-04 12:50:59', '2020-12-24 13:20:04');

SET FOREIGN_KEY_CHECKS = 1;
