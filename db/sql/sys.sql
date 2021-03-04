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

 Date: 04/03/2021 19:34:23
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
INSERT INTO `sys_dept` VALUES (1067246875800000062, 1067246875800000063, '1067246875800000066,1067246875800000063', '技术部', 2, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000063, 1067246875800000066, '1067246875800000066', '长沙分公司', 1, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000064, 1067246875800000066, '1067246875800000066', '上海分公司', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000065, 1067246875800000064, '1067246875800000066,1067246875800000064', '市场部', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000066, 0, '0', '人人开源集团', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000067, 1067246875800000064, '1067246875800000066,1067246875800000064', '销售部', 0, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');
INSERT INTO `sys_dept` VALUES (1067246875800000068, 1067246875800000063, '1067246875800000066,1067246875800000063', '产品部', 1, 1067246875800000001, '2020-11-21 11:35:57', 1067246875800000001, '2020-11-21 11:35:57');

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
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000018, 'name', 'Process Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000018, 'name', '流程管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000018, 'name', '流程管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000019, 'name', 'Model Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000019, 'name', '模型管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000019, 'name', '模型管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000020, 'name', 'Running Process', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000020, 'name', '运行中的流程', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000020, 'name', '運行中的流程', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000021, 'name', 'SMS Service', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000021, 'name', '短信服务', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000021, 'name', '短信服務', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000022, 'name', 'Mail Template', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000022, 'name', '邮件模板', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000022, 'name', '郵件模板', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000023, 'name', 'Mail Log', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000023, 'name', '邮件发送记录', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000023, 'name', '郵件發送記錄', 'zh-TW ');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000024, 'name', 'Message Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000024, 'name', '消息管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000024, 'name', '消息管理', 'zh-TW');
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
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000030, 'name', 'Timed Task', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000030, 'name', '定时任务', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000030, 'name', '定時任務', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000031, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000031, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000031, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000032, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000032, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000032, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000033, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000033, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000033, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000034, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000034, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000034, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000035, 'name', 'Setting', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000035, 'name', '系统设置', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000035, 'name', '系統設置', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000036, 'name', 'Pause', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000036, 'name', '暂停', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000036, 'name', '暫停', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000037, 'name', 'Resume', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000037, 'name', '恢复', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000037, 'name', '恢復', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000038, 'name', 'Execute', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000038, 'name', '立即执行', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000038, 'name', '立即執行', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000039, 'name', 'Log List', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000039, 'name', '日志列表', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000039, 'name', '日誌列表', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000040, 'name', 'Parameter Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000040, 'name', '参数管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000040, 'name', '參數管理', 'zh-TW');
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
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000052, 'name', 'News Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000052, 'name', '新闻管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000052, 'name', '新聞管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000053, 'name', 'System Monitoring', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000053, 'name', '系统监控', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000053, 'name', '系統監控', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000054, 'name', 'Demo', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000054, 'name', '功能示例', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000054, 'name', '功能示例', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000055, 'name', 'User Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000055, 'name', '用户管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000055, 'name', '用戶管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000056, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000056, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000056, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000057, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000057, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000057, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000058, 'name', 'Export', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000058, 'name', '导出', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000058, 'name', '導出', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000059, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000059, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000059, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000060, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000060, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000060, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000061, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000061, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1067246875800000061, 'name', '刪除', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150940491508928513, 'name', 'Process Management', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150940491508928513, 'name', '流程管理', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150940491508928513, 'name', '流程管理', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941310262235138, 'name', 'Personal Office', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941310262235138, 'name', '个人办公', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941310262235138, 'name', '個人辦公', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941384811794433, 'name', 'My To-do', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941384811794433, 'name', '我的待办', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941384811794433, 'name', '我的待辦', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941447038488577, 'name', 'Task Already', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941447038488577, 'name', '已办任务', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941447038488577, 'name', '已辦任務', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941506626965506, 'name', 'Initiation Process', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941506626965506, 'name', '发起流程', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941506626965506, 'name', '發起流程', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941588046794754, 'name', 'My Application', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941588046794754, 'name', '我的申请', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1150941588046794754, 'name', '我的申請', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1151384841607028738, 'name', 'To Be Signed', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1151384841607028738, 'name', '待签收任务', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1151384841607028738, 'name', '待簽收任務', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1156748733921165314, 'name', 'Interface Document', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1156748733921165314, 'name', '接口文档', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1156748733921165314, 'name', '接口文檔', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842114, 'name', 'Correction Request', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842114, 'name', '转正申请', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842114, 'name', '轉正申請', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842115, 'name', 'Administrative Regions', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842115, 'name', '行政区域', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842115, 'name', '行政區域', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842116, 'name', 'View', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842116, 'name', '查看', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842116, 'name', '查看', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842117, 'name', 'Add', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842117, 'name', '新增', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842117, 'name', '新增', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842118, 'name', 'Edit', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842118, 'name', '修改', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842118, 'name', '修改', 'zh-TW');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842119, 'name', 'Delete', 'en-US');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842119, 'name', '删除', 'zh-CN');
INSERT INTO `sys_language` VALUES ('sys_menu', 1158267114314842119, 'name', '刪除', 'zh-TW');
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
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1067246875800000002, 0, NULL, NULL, 0, 'icon-safetycertificate', 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000003, 1067246875800000055, NULL, 'sys:user:save,sys:dept:list,sys:role:list', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000004, 1067246875800000055, NULL, 'sys:user:update,sys:dept:list,sys:role:list', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000005, 1067246875800000055, NULL, 'sys:user:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000006, 1067246875800000055, NULL, 'sys:user:export', 1, NULL, 4, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000007, 1067246875800000002, 'sys/role', NULL, 0, 'icon-team', 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000008, 1067246875800000007, NULL, 'sys:role:page,sys:role:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000009, 1067246875800000007, NULL, 'sys:role:save,sys:menu:select,sys:dept:list', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000010, 1067246875800000007, NULL, 'sys:role:update,sys:menu:select,sys:dept:list', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000011, 1067246875800000007, NULL, 'sys:role:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000012, 1067246875800000002, 'sys/dept', NULL, 0, 'icon-apartment', 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000014, 1067246875800000012, NULL, 'sys:dept:list,sys:dept:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000015, 1067246875800000012, NULL, 'sys:dept:save', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000016, 1067246875800000012, NULL, 'sys:dept:update', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000017, 1067246875800000012, NULL, 'sys:dept:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000018, 1150940491508928513, 'activiti/process', 'sys:process:all', 0, 'icon-detail', 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000019, 1150940491508928513, 'activiti/model', 'sys:model:all', 0, 'icon-appstore-fill', 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000020, 1150940491508928513, 'activiti/running', 'sys:running:all', 0, 'icon-play-square', 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000021, 1067246875800000024, 'message/sms', 'sys:sms:all', 0, 'icon-message-fill', 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000022, 1067246875800000024, 'message/mail_template', 'sys:mail:all', 0, 'icon-mail', 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000023, 1067246875800000024, 'message/mail_log', 'sys:mail:log', 0, 'icon-detail-fill', 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000024, 0, NULL, NULL, 0, 'icon-message', 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000025, 1067246875800000035, 'sys/menu', NULL, 0, 'icon-unorderedlist', 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000026, 1067246875800000025, NULL, 'sys:menu:list,sys:menu:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000027, 1067246875800000025, NULL, 'sys:menu:save', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000028, 1067246875800000025, NULL, 'sys:menu:update', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000029, 1067246875800000025, NULL, 'sys:menu:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000030, 1067246875800000035, 'job/schedule', NULL, 0, 'icon-dashboard', 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000031, 1067246875800000030, NULL, 'sys:schedule:page,sys:schedule:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000032, 1067246875800000030, NULL, 'sys:schedule:save', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000033, 1067246875800000030, NULL, 'sys:schedule:update', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000034, 1067246875800000030, NULL, 'sys:schedule:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000035, 0, NULL, NULL, 0, 'icon-setting', 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000036, 1067246875800000030, NULL, 'sys:schedule:pause', 1, NULL, 4, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000037, 1067246875800000030, NULL, 'sys:schedule:resume', 1, NULL, 5, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000038, 1067246875800000030, NULL, 'sys:schedule:run', 1, NULL, 6, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000039, 1067246875800000030, NULL, 'sys:schedule:log', 1, NULL, 7, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000040, 1067246875800000035, 'sys/params', '', 0, 'icon-fileprotect', 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000041, 1067246875800000035, 'sys/dict-type', NULL, 0, 'icon-golden-fill', 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000042, 1067246875800000041, NULL, 'sys:dict:page,sys:dict:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000043, 1067246875800000041, NULL, 'sys:dict:save', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000044, 1067246875800000041, NULL, 'sys:dict:update', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000045, 1067246875800000041, NULL, 'sys:dict:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000046, 0, NULL, NULL, 0, 'icon-container', 4, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000047, 1067246875800000035, 'oss/oss', 'sys:oss:all', 0, 'icon-upload', 4, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000048, 1067246875800000046, 'sys/log-login', 'sys:log:login', 0, 'icon-filedone', 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000049, 1067246875800000046, 'sys/log-operation', 'sys:log:operation', 0, 'icon-solution', 1, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000050, 1067246875800000046, 'sys/log-error', 'sys:log:error', 0, 'icon-file-exception', 2, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000051, 1067246875800000053, '{{ window.SITE_CONFIG[\"apiURL\"] }}/druid/sql.html', NULL, 0, 'icon-database', 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000052, 1067246875800000054, 'demo/news', 'demo:news:all', 0, 'icon-file-word', 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000053, 0, NULL, NULL, 0, 'icon-desktop', 5, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000054, 0, NULL, NULL, 0, 'icon-windows', 6, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000055, 1067246875800000002, 'sys/user', NULL, 0, 'icon-user', 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000056, 1067246875800000055, NULL, 'sys:user:page,sys:user:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000057, 1067246875800000040, NULL, 'sys:params:save', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000058, 1067246875800000040, NULL, 'sys:params:export', 1, NULL, 4, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000059, 1067246875800000040, '', 'sys:params:page,sys:params:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000060, 1067246875800000040, NULL, 'sys:params:update', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000061, 1067246875800000040, '', 'sys:params:delete', 1, '', 3, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1150940491508928513, 0, NULL, NULL, 0, 'icon-reloadtime', 4, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1150941310262235138, 0, NULL, NULL, 0, 'icon-user', 4, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1150941384811794433, 1150941310262235138, 'activiti/my-todo-task', 'sys:task:all', 0, 'icon-dashboard', 1, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1150941447038488577, 1150941310262235138, 'activiti/my-join-task', 'sys:his:all', 0, 'icon-check-square', 3, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1150941506626965506, 1150940491508928513, 'activiti/process-initiation', 'sys:process:all', 0, 'icon-play-square', 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1150941588046794754, 1150941310262235138, 'activiti/my-apply', 'sys:task:all', 0, 'icon-edit-square', 2, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1151384841607028738, 1150941310262235138, 'activiti/my-todo-task-pool', '', 0, 'icon-interation', 5, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1156748733921165314, 1067246875800000053, '{{ window.SITE_CONFIG[\"apiURL\"] }}/swagger-ui.html', '', 0, 'icon-file-word', 2, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1158267114314842114, 1150941310262235138, 'activiti/demo/correction', 'activiti:correction:all', 0, 'icon-issuesclose', 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1158267114314842115, 1067246875800000035, 'sys/region', NULL, 0, 'icon-location', 4, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1158267114314842116, 1158267114314842115, NULL, 'sys:region:list,sys:region:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1158267114314842117, 1158267114314842115, NULL, 'sys:region:save', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1158267114314842118, 1158267114314842115, NULL, 'sys:region:update', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1158267114314842119, 1158267114314842115, NULL, 'sys:region:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1344537445501620226, 1067246875800000002, 'demo/test2', NULL, 0, 'icon-desktop', 0, 1067246875800000001, '2020-12-31 15:18:16', 1067246875800000001, '2020-12-31 15:18:16');
INSERT INTO `sys_menu` VALUES (1344537445501620227, 1344537445501620226, NULL, 'demo:test2:page,demo:test2:info', 1, NULL, 0, 1067246875800000001, '2020-12-31 15:18:16', 1067246875800000001, '2020-12-31 15:18:16');
INSERT INTO `sys_menu` VALUES (1344537445501620228, 1344537445501620226, NULL, 'demo:test2:save', 1, NULL, 1, 1067246875800000001, '2020-12-31 15:18:16', 1067246875800000001, '2020-12-31 15:18:16');
INSERT INTO `sys_menu` VALUES (1344537445501620229, 1344537445501620226, NULL, 'demo:test2:update', 1, NULL, 2, 1067246875800000001, '2020-12-31 15:18:16', 1067246875800000001, '2020-12-31 15:18:16');
INSERT INTO `sys_menu` VALUES (1344537445501620230, 1344537445501620226, NULL, 'demo:test2:delete', 1, NULL, 3, 1067246875800000001, '2020-12-31 15:18:16', 1067246875800000001, '2020-12-31 15:18:16');
INSERT INTO `sys_menu` VALUES (1344537445501620231, 1344537445501620226, NULL, 'demo:test2:export', 1, NULL, 4, 1067246875800000001, '2020-12-31 15:18:16', 1067246875800000001, '2020-12-31 15:18:16');
INSERT INTO `sys_menu` VALUES (1344537445774249985, 1067246875800000002, 'demo/test1', NULL, 0, 'icon-desktop', 0, 1067246875800000001, '2020-12-31 15:16:51', 1067246875800000001, '2020-12-31 15:16:51');
INSERT INTO `sys_menu` VALUES (1344537445774249986, 1344537445774249985, NULL, 'demo:test1:page,demo:test1:info', 1, NULL, 0, 1067246875800000001, '2020-12-31 15:16:51', 1067246875800000001, '2020-12-31 15:16:51');
INSERT INTO `sys_menu` VALUES (1344537445774249987, 1344537445774249985, NULL, 'demo:test1:save', 1, NULL, 1, 1067246875800000001, '2020-12-31 15:16:51', 1067246875800000001, '2020-12-31 15:16:51');
INSERT INTO `sys_menu` VALUES (1344537445774249988, 1344537445774249985, NULL, 'demo:test1:update', 1, NULL, 2, 1067246875800000001, '2020-12-31 15:16:51', 1067246875800000001, '2020-12-31 15:16:51');
INSERT INTO `sys_menu` VALUES (1344537445774249989, 1344537445774249985, NULL, 'demo:test1:delete', 1, NULL, 3, 1067246875800000001, '2020-12-31 15:16:51', 1067246875800000001, '2020-12-31 15:16:51');
INSERT INTO `sys_menu` VALUES (1344537445774249990, 1344537445774249985, NULL, 'demo:test1:export', 1, NULL, 4, 1067246875800000001, '2020-12-31 15:16:51', 1067246875800000001, '2020-12-31 15:16:51');

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
INSERT INTO `sys_role` VALUES (1341976522773581826, '办公人员', '', NULL, 1067246875800000001, '2020-12-24 13:18:30', NULL, '2021-03-04 11:31:29', NULL, NULL);

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
INSERT INTO `sys_role_data_scope` VALUES (1367437536532955137, 1341976522773581826, 1067246875800000062, NULL, '2021-03-04 11:31:29');

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
INSERT INTO `sys_role_menu` VALUES (1367437536381960193, 1341976522773581826, 1150941310262235138, NULL, '2021-03-04 11:31:29');
INSERT INTO `sys_role_menu` VALUES (1367437536398737409, 1341976522773581826, 1158267114314842114, NULL, '2021-03-04 11:31:29');
INSERT INTO `sys_role_menu` VALUES (1367437536419708930, 1341976522773581826, 1150941384811794433, NULL, '2021-03-04 11:31:29');
INSERT INTO `sys_role_menu` VALUES (1367437536436486145, 1341976522773581826, 1150941588046794754, NULL, '2021-03-04 11:31:29');
INSERT INTO `sys_role_menu` VALUES (1367437536449069058, 1341976522773581826, 1150941447038488577, NULL, '2021-03-04 11:31:29');
INSERT INTO `sys_role_menu` VALUES (1367437536465846273, 1341976522773581826, 1151384841607028738, NULL, '2021-03-04 11:31:29');
INSERT INTO `sys_role_menu` VALUES (1367437536482623490, 1341976522773581826, 1067246875800000003, NULL, '2021-03-04 11:31:29');
INSERT INTO `sys_role_menu` VALUES (1367437536503595010, 1341976522773581826, 1067246875800000056, NULL, '2021-03-04 11:31:29');

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
INSERT INTO `sys_role_user` VALUES (1341976630093238273, 1341976522773581826, 1341976112734228481, 1067246875800000001, '2020-12-24 13:18:56');

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
INSERT INTO `sys_user` VALUES (1341976112734228481, '1171874514', '$2a$10$012Kx2ba5jzqr9gLlG4MX.bnQJTD9UWqF57XDo2N3.fPtLne02u/m', '吕时海', NULL, 0, '1171874514@qq.com', '13780128842', 1067246875800000065, 0, 1, 1067246875800000001, '2020-12-24 13:16:53', 1067246875800000001, '2020-12-24 13:18:56', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL);

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
INSERT INTO `sys_user_token` VALUES (1330359036709974017, 1067246875800000001, 'd931aff74fc89d0824a21167d2615f6a', '2021-03-04 22:32:55', '2021-03-04 10:32:55', '2020-11-22 11:54:46');
INSERT INTO `sys_user_token` VALUES (1341976913774989316, 1341976112734228481, 'db8a4dc001a4fcb97d2cffb71cfc3f8e', '2021-03-04 23:27:03', '2021-03-04 11:27:03', '2020-12-24 13:20:04');

SET FOREIGN_KEY_CHECKS = 1;
