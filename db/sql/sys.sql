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

 Date: 07/03/2021 17:58:21
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
INSERT INTO `sys_log_error` VALUES (1368478468371918849, '/sys/user', 'POST', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'org.springframework.dao.DataIntegrityViolationException: \r\n### Error updating database.  Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n### The error may exist in com/example/authority/modules/sys/dao/SysUserDao.java (best guess)\r\n### The error may involve com.example.authority.modules.sys.dao.SysUserDao.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO sys_user  ( id, update_date, creator, gender, dept_id, mobile,  updater, real_name, password, super_admin, email, status, username, create_date )  VALUES  ( ?, ?, ?, ?, ?, ?,  ?, ?, ?, ?, ?, ?, ?, ? )\r\n### Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\n; Field \'login_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:251)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441)\r\n	at com.sun.proxy.$Proxy68.insert(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.insert(SqlSessionTemplate.java:272)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:58)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy70.insert(Unknown Source)\r\n	at com.example.authority.common.service.impl.BaseServiceImpl.insert(BaseServiceImpl.java:164)\r\n	at com.example.authority.modules.sys.service.impl.SysUserServiceImpl.save(SysUserServiceImpl.java:105)\r\n	at com.example.authority.modules.sys.service.impl.SysUserServiceImpl$$FastClassBySpringCGLIB$$2013c02e.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:367)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:118)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at com.example.authority.modules.sys.service.impl.SysUserServiceImpl$$EnhancerBySpringCGLIB$$3075e57b.save(<generated>)\r\n	at com.example.authority.modules.sys.controller.SysUserController.save(SysUserController.java:123)\r\n	at com.example.authority.modules.sys.controller.SysUserController$$FastClassBySpringCGLIB$$bf81fee6.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at com.example.authority.modules.log.aspect.LogOperationAspect.around(LogOperationAspect.java:53)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor$1.proceed(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:82)\r\n	at org.apache.shiro.authz.aop.AuthorizingMethodInterceptor.invoke(AuthorizingMethodInterceptor.java:39)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor.invoke(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:115)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:95)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at com.example.authority.modules.sys.controller.SysUserController$$EnhancerBySpringCGLIB$$730b4974.save(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:190)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:105)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:878)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:792)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1040)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:943)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:652)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:733)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:112)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.example.authority.common.xss.XssFilter.doFilter(XssFilter.java:30)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:358)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:271)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:202)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:143)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:374)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1590)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:129)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:953)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:370)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.update(PreparedStatementHandler.java:47)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.update(RoutingStatementHandler.java:74)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.update(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.update(Unknown Source)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doUpdate(MybatisSimpleExecutor.java:54)\r\n	at org.apache.ibatis.executor.BaseExecutor.update(BaseExecutor.java:117)\r\n	at org.apache.ibatis.executor.CachingExecutor.update(CachingExecutor.java:76)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.update(DefaultSqlSession.java:197)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.insert(DefaultSqlSession.java:184)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:427)\r\n	... 117 more\r\n', 1067246875800000001, '2021-03-07 16:27:47');
INSERT INTO `sys_log_error` VALUES (1368479294712721409, '/sys/user', 'POST', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'org.springframework.dao.DataIntegrityViolationException: \r\n### Error updating database.  Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n### The error may exist in com/example/authority/modules/sys/dao/SysUserDao.java (best guess)\r\n### The error may involve com.example.authority.modules.sys.dao.SysUserDao.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO sys_user  ( id, update_date, creator, gender, dept_id, mobile,  updater, real_name, password, super_admin, email, status, username, create_date )  VALUES  ( ?, ?, ?, ?, ?, ?,  ?, ?, ?, ?, ?, ?, ?, ? )\r\n### Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\n; Field \'login_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:251)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441)\r\n	at com.sun.proxy.$Proxy68.insert(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.insert(SqlSessionTemplate.java:272)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:58)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.$Proxy70.insert(Unknown Source)\r\n	at com.example.authority.common.service.impl.BaseServiceImpl.insert(BaseServiceImpl.java:164)\r\n	at com.example.authority.modules.sys.service.impl.SysUserServiceImpl.save(SysUserServiceImpl.java:105)\r\n	at com.example.authority.modules.sys.service.impl.SysUserServiceImpl$$FastClassBySpringCGLIB$$2013c02e.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:367)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:118)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at com.example.authority.modules.sys.service.impl.SysUserServiceImpl$$EnhancerBySpringCGLIB$$3075e57b.save(<generated>)\r\n	at com.example.authority.modules.sys.controller.SysUserController.save(SysUserController.java:123)\r\n	at com.example.authority.modules.sys.controller.SysUserController$$FastClassBySpringCGLIB$$bf81fee6.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at com.example.authority.modules.log.aspect.LogOperationAspect.around(LogOperationAspect.java:53)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor$1.proceed(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:82)\r\n	at org.apache.shiro.authz.aop.AuthorizingMethodInterceptor.invoke(AuthorizingMethodInterceptor.java:39)\r\n	at org.apache.shiro.spring.security.interceptor.AopAllianceAnnotationsAuthorizingMethodInterceptor.invoke(AopAllianceAnnotationsAuthorizingMethodInterceptor.java:115)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:95)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at com.example.authority.modules.sys.controller.SysUserController$$EnhancerBySpringCGLIB$$730b4974.save(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:190)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:105)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:878)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:792)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1040)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:943)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:652)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:733)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:112)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.example.authority.common.xss.XssFilter.doFilter(XssFilter.java:30)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:358)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:271)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:202)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:143)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:374)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1590)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:129)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:953)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:370)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:498)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.update(PreparedStatementHandler.java:47)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.update(RoutingStatementHandler.java:74)\r\n	at sun.reflect.GeneratedMethodAccessor87.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.update(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor87.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.$Proxy143.update(Unknown Source)\r\n	at com.baomidou.mybatisplus.core.executor.MybatisSimpleExecutor.doUpdate(MybatisSimpleExecutor.java:54)\r\n	at org.apache.ibatis.executor.BaseExecutor.update(BaseExecutor.java:117)\r\n	at org.apache.ibatis.executor.CachingExecutor.update(CachingExecutor.java:76)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.update(DefaultSqlSession.java:197)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.insert(DefaultSqlSession.java:184)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:427)\r\n	... 117 more\r\n', 1067246875800000001, '2021-03-07 16:31:04');

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
INSERT INTO `sys_log_login` VALUES (1368482295435350018, 0, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '192.168.1.6', 'admin', 1067246875800000001, '2021-03-07 16:42:59');

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
INSERT INTO `sys_menu` VALUES (1067246875800000025, 1067246875800000035, 'sys/menu', NULL, 0, 'icon-unorderedlist', 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000026, 1067246875800000025, NULL, 'sys:menu:list,sys:menu:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000027, 1067246875800000025, NULL, 'sys:menu:save', 1, NULL, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000028, 1067246875800000025, NULL, 'sys:menu:update', 1, NULL, 2, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000029, 1067246875800000025, NULL, 'sys:menu:delete', 1, NULL, 3, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
INSERT INTO `sys_menu` VALUES (1067246875800000035, 0, NULL, NULL, 0, 'icon-setting', 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53');
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
INSERT INTO `sys_menu` VALUES (1067246875800000053, 0, NULL, NULL, 0, 'icon-desktop', 5, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000055, 1067246875800000002, 'sys/user', NULL, 0, 'icon-user', 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1067246875800000056, 1067246875800000055, NULL, 'sys:user:page,sys:user:info', 1, NULL, 0, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');
INSERT INTO `sys_menu` VALUES (1156748733921165314, 1067246875800000053, '{{ window.SITE_CONFIG[\"apiURL\"] }}/swagger-ui.html', '', 0, 'icon-file-word', 2, 1067246875800000001, '2020-11-21 11:35:54', 1067246875800000001, '2020-11-21 11:35:54');

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_username`(`username`) USING BTREE,
  INDEX `idx_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1067246875800000001, 'admin', '$2a$10$012Kx2ba5jzqr9gLlG4MX.bnQJTD9UWqF57XDo2N3.fPtLne02u/m', '管理员', NULL, 0, 'root@renren.io', '13612345678', NULL, 1, 1, 1067246875800000001, '2020-11-21 11:35:53', 1067246875800000001, '2020-11-21 11:35:53', NULL);
INSERT INTO `sys_user` VALUES (1368482737376579586, '1171874514', '$2a$10$FaJa.cW5NsVXefRhndSIt.E6uPBF3Gk8TOJy2y24jrJSAAnBfR5GG', '吕时海', NULL, 0, '1171874514@qq.com', '13780128842', 1067246875800000065, 0, 1, 1067246875800000001, '2021-03-07 16:44:44', 1067246875800000001, '2021-03-07 16:44:44', NULL);

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

SET FOREIGN_KEY_CHECKS = 1;
