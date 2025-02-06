/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : common_springboot

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 04/11/2024 22:59:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for material_info
-- ----------------------------
DROP TABLE IF EXISTS `material_info`;
CREATE TABLE `material_info` (
  `id` varchar(100) NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 材料编码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 材料名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='材料管理';

-- ----------------------------
-- Records of material_info
-- ----------------------------
BEGIN;
INSERT INTO `material_info` VALUES ('78cf26b23e3be15521ee23d293195edd', '0', '2024-10-28 17:59:02.000000', '0', '2024-10-28 17:59:17.825000', 'z22', 'z2材料1');
INSERT INTO `material_info` VALUES ('8783ca1c511ec65c11f119c8b34fedc5', NULL, NULL, '0', '2024-10-28 17:59:08.586000', 'z1', 'z1材料1');
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '请求参数',
  `time` bigint NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES (1, 'admin', '修改定时任务', 'com.suke.czx.modules.job.controller.ScheduleJobController.update()', '{\"jobId\":1,\"beanName\":\"testTask\",\"methodName\":\"test\",\"params\":\"test\",\"cronExpression\":\"0 0/30 * * * ?\",\"status\":0,\"remark\":\"有参数测试\",\"createTime\":\"Dec 1, 2016 11:16:46 PM\"}', 78, '0:0:0:0:0:0:0:1', '2018-01-08 17:22:23');
INSERT INTO `sys_log` VALUES (2, 'sk', '用户登录', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '\"sk\"', 1713, '0:0:0:0:0:0:0:1', '2019-04-18 13:59:11');
INSERT INTO `sys_log` VALUES (3, 'sk', '用户登录', 'com.suke.czx.modules.sys.controller.SysLoginController.login()', '\"sk\"', 11, '0:0:0:0:0:0:0:1', '2019-04-18 13:59:43');
INSERT INTO `sys_log` VALUES (4, 'admin', '保存配置', 'com.suke.czx.modules.sys.controller.SysConfigController.save()', '{\"id\":2,\"configKey\":\"test\",\"configValue\":\"test\",\"remark\":\"测试\"}', 65, '0:0:0:0:0:0:0:1', '2019-04-18 15:07:25');
INSERT INTO `sys_log` VALUES (5, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"menuId\":31,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"测试\",\"type\":0,\"orderNum\":0}', 8, '0:0:0:0:0:0:0:1', '2019-04-18 15:23:03');
INSERT INTO `sys_log` VALUES (6, 'admin', '删除菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.delete()', '31', 7, '0:0:0:0:0:0:0:1', '2019-04-18 15:24:26');
INSERT INTO `sys_log` VALUES (7, 'admin', '删除角色', 'com.suke.czx.modules.sys.controller.SysRoleController.delete()', '[5]', 9, '0:0:0:0:0:0:0:1', '2019-04-18 16:00:11');
INSERT INTO `sys_log` VALUES (8, 'admin', '保存角色', 'com.suke.czx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":6,\"roleName\":\"测试2\",\"remark\":\"测试2\",\"createUserId\":1,\"menuIdList\":[1,3,19,20,21,22],\"createTime\":\"Apr 18, 2019 4:02:00 PM\"}', 76, '0:0:0:0:0:0:0:1', '2019-04-18 16:02:01');
INSERT INTO `sys_log` VALUES (9, 'admin', '删除角色', 'com.suke.czx.modules.sys.controller.SysRoleController.delete()', '[6]', 5, '0:0:0:0:0:0:0:1', '2019-04-18 16:02:09');
INSERT INTO `sys_log` VALUES (10, 'admin', '删除用户', 'com.suke.czx.modules.sys.controller.SysUserController.delete()', '[7]', 8, '0:0:0:0:0:0:0:1', '2019-04-18 16:04:59');
INSERT INTO `sys_log` VALUES (11, 'admin', '保存用户', 'com.suke.czx.modules.sys.controller.SysUserController.save()', '{\"userId\":8,\"username\":\"sk\",\"password\":\"f84d76f5e13503d2ef9580eb8472615c395ea2010ac582035d86a4bd7d9ac73c\",\"salt\":\"v4rnaIJ4zl29yGhXdjOO\",\"email\":\"sk@sk.com\",\"mobile\":\"12345678963\",\"status\":1,\"createUserId\":1,\"createTime\":\"Apr 18, 2019 4:08:20 PM\",\"roleIdList\":[]}', 66, '0:0:0:0:0:0:0:1', '2019-04-18 16:08:21');
INSERT INTO `sys_log` VALUES (12, 'admin', '删除用户', 'com.suke.czx.modules.sys.controller.SysUserController.delete()', '[8]', 9, '0:0:0:0:0:0:0:1', '2019-04-18 16:08:25');
INSERT INTO `sys_log` VALUES (13, 'admin', '保存角色', 'com.suke.czx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":7,\"roleName\":\"1\",\"remark\":\"1\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18],\"createTime\":\"Apr 18, 2019 4:09:08 PM\"}', 23, '0:0:0:0:0:0:0:1', '2019-04-18 16:09:08');
INSERT INTO `sys_log` VALUES (14, 'admin', '保存角色', 'com.suke.czx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":8,\"roleName\":\"2\",\"remark\":\"2\",\"createUserId\":1,\"menuIdList\":[1,2,15,16,17,18],\"createTime\":\"Apr 18, 2019 4:09:15 PM\"}', 9, '0:0:0:0:0:0:0:1', '2019-04-18 16:09:15');
INSERT INTO `sys_log` VALUES (15, 'admin', '保存角色', 'com.suke.czx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":9,\"roleName\":\"3\",\"remark\":\"3\",\"createUserId\":1,\"menuIdList\":[1,6,7,8,9,10,11,12,13,14],\"createTime\":\"Apr 18, 2019 4:09:22 PM\"}', 8, '0:0:0:0:0:0:0:1', '2019-04-18 16:09:23');
INSERT INTO `sys_log` VALUES (16, 'admin', '删除角色', 'com.suke.czx.modules.sys.controller.SysRoleController.delete()', '[7,8,9]', 5, '0:0:0:0:0:0:0:1', '2019-04-18 16:09:29');
INSERT INTO `sys_log` VALUES (17, 'admin', '保存用户', 'com.suke.czx.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"sk\",\"password\":\"cc523ea48e608b07a8ddc08aa774e07a0dc176bebe86bf528bb79775ea73a26b\",\"salt\":\"rKn3NKzdWEyuIqGaoyiZ\",\"email\":\"sk@sk.com\",\"mobile\":\"18365412365\",\"status\":1,\"createUserId\":1,\"createTime\":\"Apr 22, 2019 11:32:18 AM\",\"roleIdList\":[]}', 76, '0:0:0:0:0:0:0:1', '2019-04-22 11:32:18');
INSERT INTO `sys_log` VALUES (18, 'admin', '删除用户', 'com.suke.czx.modules.sys.controller.SysUserController.delete()', '[2]', 8, '0:0:0:0:0:0:0:1', '2019-04-22 11:32:23');
INSERT INTO `sys_log` VALUES (19, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":5,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"代码生成\",\"url\":\"modules/gen/generator.html\",\"type\":0,\"icon\":\"fa fa-th-list\",\"orderNum\":4}', 10, '127.0.0.1', '2019-04-28 15:31:25');
INSERT INTO `sys_log` VALUES (20, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":5,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"代码生成\",\"url\":\"modules/gen/generator.html\",\"type\":0,\"icon\":\"fa fa-th-list\",\"orderNum\":2}', 6, '127.0.0.1', '2019-04-28 15:32:08');
INSERT INTO `sys_log` VALUES (21, 'admin', '修改APK版本管理数据', 'com.suke.czx.modules.apkversion.controller.ApkVersionController.update()', '{\"id\":1,\"appName\":\"1\",\"updateContent\":\"2\",\"versionCode\":1,\"versionName\":\"2\",\"downloadUrl\":\"2\",\"md5Value\":\"1\",\"fileSize\":\"1\",\"createTime\":\"Apr 28, 2019 4:06:12 PM\",\"updateTime\":\"Apr 28, 2019 4:06:16 PM\",\"userId\":1,\"isForce\":0,\"isIgnorable\":0,\"isSilent\":0}', 12, '127.0.0.1', '2019-05-02 18:28:15');
INSERT INTO `sys_log` VALUES (22, 'admin', '新增APK版本管理数据', 'com.suke.czx.modules.apkversion.controller.ApkVersionController.save()', '{\"id\":2,\"appName\":\"瑞智云\",\"updateContent\":\"拉拉拉\",\"versionCode\":77,\"versionName\":\"1.7.7\",\"packageName\":\"com.ski.mobile.app.psm.sk_psm\",\"fileName\":\"app_version_1.7.7_e90074e4c96f4b8bb3381163e3525a74.apk\",\"md5Value\":\"f76a41c8f9527dfdd53f26ce4e4cfa78\",\"fileSize\":\"20178083\"}', 17, '127.0.0.1', '2019-05-02 18:48:44');
INSERT INTO `sys_log` VALUES (23, 'admin', '修改APK版本管理数据', 'com.suke.czx.modules.apkversion.controller.ApkVersionController.update()', '{\"id\":2,\"appName\":\"瑞智云\",\"updateContent\":\"拉拉拉\",\"versionCode\":77,\"versionName\":\"1.7.7\",\"packageName\":\"com.ski.mobile.app.psm.sk_psm\",\"fileName\":\"app_version_1.7.7_e90074e4c96f4b8bb3381163e3525a74.apk\",\"md5Value\":\"f76a41c8f9527dfdd53f26ce4e4cfa78\",\"fileSize\":\"20178083\",\"isForce\":0,\"isIgnorable\":1,\"isSilent\":1}', 17, '127.0.0.1', '2019-05-02 18:49:57');
INSERT INTO `sys_log` VALUES (24, 'admin', '修改APK版本管理数据', 'com.suke.czx.modules.apkversion.controller.ApkVersionController.update()', '{\"id\":1,\"appName\":\"1\",\"updateContent\":\"2\",\"versionCode\":1,\"versionName\":\"2\",\"downloadUrl\":\"11111\",\"md5Value\":\"1\",\"fileSize\":\"1\",\"createTime\":\"Apr 28, 2019 4:06:12 PM\",\"updateTime\":\"Apr 28, 2019 4:06:16 PM\",\"userId\":1,\"isForce\":0,\"isIgnorable\":1,\"isSilent\":1}', 16, '127.0.0.1', '2019-05-02 18:51:48');
INSERT INTO `sys_log` VALUES (25, 'admin', '删除APK版本管理数据', 'com.suke.czx.modules.apkversion.controller.ApkVersionController.delete()', '[2]', 12, '127.0.0.1', '2019-05-02 19:07:03');
INSERT INTO `sys_log` VALUES (26, 'admin', '保存角色', 'com.suke.czx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":8,\"roleName\":\"测试\",\"remark\":\"测试\",\"createUserId\":1,\"menuIdList\":[40,35,36,37,38,39],\"createTime\":\"Dec 26, 2019 4:57:39 PM\"}', 162, '192.168.0.133', '2019-12-26 16:57:39');
INSERT INTO `sys_log` VALUES (27, 'admin', '删除角色', 'com.suke.czx.modules.sys.controller.SysRoleController.delete()', '[8,7,6]', 8, '192.168.0.133', '2019-12-26 16:57:51');
INSERT INTO `sys_log` VALUES (28, 'admin', '删除配置', 'com.suke.czx.modules.sys.controller.SysConfigController.delete()', '[2]', 41, '192.168.0.133', '2021-04-08 09:58:07');
INSERT INTO `sys_log` VALUES (29, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 24, 2021 2:57:36 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"111111111\",\"linkId\":\"1624517856648\",\"linkMax\":0,\"linkName\":\"测试\",\"linkStatus\":\"开\",\"linkType\":\"链\"}', 59, '192.168.0.133', '2021-06-24 14:57:37');
INSERT INTO `sys_log` VALUES (30, 'admin', '删除连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.delete()', '[\"1624517856648\"]', 47, '127.0.0.1', '2021-06-30 16:04:21');
INSERT INTO `sys_log` VALUES (31, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 4:07:14 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111\",\"linkId\":\"1625040434697\",\"linkMax\":0,\"linkName\":\"测试 \",\"linkStatus\":\"开\",\"linkType\":\"链\"}', 26, '127.0.0.1', '2021-06-30 16:07:15');
INSERT INTO `sys_log` VALUES (32, 'admin', '删除连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.delete()', '[\"1625040434697\"]', 21, '127.0.0.1', '2021-06-30 16:08:45');
INSERT INTO `sys_log` VALUES (33, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 4:08:54 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"11111\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试\",\"linkStatus\":\"开\",\"linkType\":\"链\"}', 9, '127.0.0.1', '2021-06-30 16:08:54');
INSERT INTO `sys_log` VALUES (34, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试\",\"linkStatus\":\"false\",\"linkType\":\"链\"}', 20, '127.0.0.1', '2021-06-30 16:12:40');
INSERT INTO `sys_log` VALUES (35, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试\",\"linkStatus\":\"true\",\"linkType\":\"链\"}', 22, '127.0.0.1', '2021-06-30 16:12:54');
INSERT INTO `sys_log` VALUES (36, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试\",\"linkStatus\":\"true\",\"linkType\":\"链\"}', 3, '127.0.0.1', '2021-06-30 16:13:07');
INSERT INTO `sys_log` VALUES (37, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 4:15:56 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"11111\",\"linkId\":\"1625040956791\",\"linkMax\":0,\"linkName\":\"测试2222\",\"linkStatus\":\"开\",\"linkType\":\"二维码\"}', 21, '127.0.0.1', '2021-06-30 16:15:57');
INSERT INTO `sys_log` VALUES (38, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 4:16:06 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111\",\"linkId\":\"1625040966056\",\"linkMax\":0,\"linkName\":\"测试33333\",\"linkStatus\":\"开\",\"linkType\":\"邀请码\"}', 21, '127.0.0.1', '2021-06-30 16:16:06');
INSERT INTO `sys_log` VALUES (39, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"11111\",\"linkId\":\"1625040956791\",\"linkMax\":0,\"linkName\":\"测试2222\",\"linkStatus\":\"true\",\"linkType\":\"二维码\"}', 21, '127.0.0.1', '2021-06-30 16:21:33');
INSERT INTO `sys_log` VALUES (40, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"11111\",\"linkId\":\"1625040956791\",\"linkMax\":0,\"linkName\":\"测试2222\",\"linkStatus\":\"true\",\"linkType\":\"二维码\"}', 2, '127.0.0.1', '2021-06-30 16:21:39');
INSERT INTO `sys_log` VALUES (41, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childComment\":\"2222\",\"childId\":\"1625043737573\",\"childInviteCode\":\"23333\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 5:02:17 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 40, '127.0.0.1', '2021-06-30 17:02:18');
INSERT INTO `sys_log` VALUES (42, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childComment\":\"ddddd\",\"childId\":\"1625044021055\",\"childInviteCode\":\"dddd\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 5:07:01 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 22, '127.0.0.1', '2021-06-30 17:07:01');
INSERT INTO `sys_log` VALUES (43, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childComment\":\"sss\",\"childId\":\"1625044026495\",\"childInviteCode\":\"e232323\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 5:07:06 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 21, '127.0.0.1', '2021-06-30 17:07:07');
INSERT INTO `sys_log` VALUES (44, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.update()', '{\"childClickCount\":0,\"childComment\":\"sss\",\"childId\":\"1625044026495\",\"childInviteCode\":\"e232323\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 14, '127.0.0.1', '2021-06-30 17:07:16');
INSERT INTO `sys_log` VALUES (45, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.update()', '{\"childClickCount\":0,\"childComment\":\"sss\",\"childId\":\"1625044026495\",\"childInviteCode\":\"e232323\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 4, '127.0.0.1', '2021-06-30 17:07:19');
INSERT INTO `sys_log` VALUES (46, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.update()', '{\"childClickCount\":0,\"childComment\":\"sss\",\"childId\":\"1625044026495\",\"childInviteCode\":\"e232323\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 4, '127.0.0.1', '2021-06-30 17:08:40');
INSERT INTO `sys_log` VALUES (47, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.update()', '{\"childClickCount\":0,\"childComment\":\"sss\",\"childId\":\"1625044026495\",\"childInviteCode\":\"e232323\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 4, '127.0.0.1', '2021-06-30 17:08:57');
INSERT INTO `sys_log` VALUES (48, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.update()', '{\"childClickCount\":0,\"childComment\":\"sss\",\"childId\":\"1625044026495\",\"childInviteCode\":\"e232323\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 3, '127.0.0.1', '2021-06-30 17:10:11');
INSERT INTO `sys_log` VALUES (49, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625044026495\"]', 30, '127.0.0.1', '2021-06-30 17:10:17');
INSERT INTO `sys_log` VALUES (50, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.update()', '{\"childClickCount\":333,\"childComment\":\"ddddd\",\"childId\":\"1625044021055\",\"childInviteCode\":\"dddd\",\"childMax\":3333,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 20, '127.0.0.1', '2021-06-30 17:11:26');
INSERT INTO `sys_log` VALUES (51, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 5:22:48 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"232323\",\"linkId\":\"1625044968627\",\"linkMax\":0,\"linkName\":\"32323\",\"linkStatus\":\"\",\"linkType\":\"邀请码\"}', 24, '127.0.0.1', '2021-06-30 17:22:49');
INSERT INTO `sys_log` VALUES (52, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 5:22:53 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"22222222222222222\",\"linkId\":\"1625044973916\",\"linkMax\":0,\"linkName\":\"23232\",\"linkStatus\":\"\",\"linkType\":\"邀请码\"}', 22, '127.0.0.1', '2021-06-30 17:22:54');
INSERT INTO `sys_log` VALUES (53, 'admin', '删除连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.delete()', '[\"1625044973916\"]', 19, '127.0.0.1', '2021-06-30 17:22:55');
INSERT INTO `sys_log` VALUES (54, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 5:23:20 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"222222222222222\",\"linkId\":\"1625045000085\",\"linkMax\":0,\"linkName\":\"333\",\"linkStatus\":\"\",\"linkType\":\"邀请码\"}', 21, '127.0.0.1', '2021-06-30 17:23:20');
INSERT INTO `sys_log` VALUES (55, 'admin', '删除连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.delete()', '[\"1625045000085\"]', 22, '127.0.0.1', '2021-06-30 17:23:22');
INSERT INTO `sys_log` VALUES (56, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"Jun 30, 2021 5:24:16 PM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"3333\",\"linkId\":\"1625045056236\",\"linkMax\":0,\"linkName\":\"3333\",\"linkStatus\":\"\",\"linkType\":\"邀请码\"}', 7, '127.0.0.1', '2021-06-30 17:24:16');
INSERT INTO `sys_log` VALUES (57, 'admin', '删除连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.delete()', '[\"1625045056236\"]', 20, '127.0.0.1', '2021-06-30 17:24:18');
INSERT INTO `sys_log` VALUES (58, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"Jun 30, 2021 12:00:00 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试\",\"linkStatus\":\"true\",\"linkType\":\"链\"}', 30, '127.0.0.1', '2021-07-01 09:57:36');
INSERT INTO `sys_log` VALUES (59, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childComment\":\"111111\",\"childId\":\"1625104995845\",\"childInviteCode\":\"111\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"二维码\",\"createTime\":\"Jul 1, 2021 10:03:15 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040956791\"}', 26, '127.0.0.1', '2021-07-01 10:03:16');
INSERT INTO `sys_log` VALUES (60, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childComment\":\"221212\",\"childId\":\"1625105008101\",\"childInviteCode\":\"2121\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"链\",\"createTime\":\"Jul 1, 2021 10:03:28 AM\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040534327\"}', 24, '127.0.0.1', '2021-07-01 10:03:28');
INSERT INTO `sys_log` VALUES (61, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625112413090\"]', 39, '127.0.0.1', '2021-07-01 15:47:11');
INSERT INTO `sys_log` VALUES (62, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', NULL, 64, '0:0:0:0:0:0:0:1', '2021-07-01 16:31:08');
INSERT INTO `sys_log` VALUES (63, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', NULL, 65, '127.0.0.1', '2021-07-01 16:32:58');
INSERT INTO `sys_log` VALUES (64, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625104995845\"]', 34, '127.0.0.1', '2021-07-01 16:38:52');
INSERT INTO `sys_log` VALUES (65, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625127372217\"]', 38, '127.0.0.1', '2021-07-01 16:43:48');
INSERT INTO `sys_log` VALUES (66, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625127304589\"]', 7, '127.0.0.1', '2021-07-01 16:43:49');
INSERT INTO `sys_log` VALUES (67, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625127494471\"]', 22, '127.0.0.1', '2021-07-01 16:43:51');
INSERT INTO `sys_log` VALUES (68, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625127574018\"]', 21, '127.0.0.1', '2021-07-01 16:43:52');
INSERT INTO `sys_log` VALUES (69, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625128267765\"]', 9, '127.0.0.1', '2021-07-01 16:43:53');
INSERT INTO `sys_log` VALUES (70, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.updateQRcode()', NULL, 41, '127.0.0.1', '2021-07-01 16:48:35');
INSERT INTO `sys_log` VALUES (71, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.updateQRcode()', NULL, 10, '127.0.0.1', '2021-07-01 16:48:54');
INSERT INTO `sys_log` VALUES (72, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.updateQRcode()', NULL, 48, '127.0.0.1', '2021-07-01 16:50:37');
INSERT INTO `sys_log` VALUES (73, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.updateQRcode()', NULL, 7, '127.0.0.1', '2021-07-01 16:51:19');
INSERT INTO `sys_log` VALUES (74, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.updateQRcode()', NULL, 14148, '127.0.0.1', '2021-07-01 16:52:01');
INSERT INTO `sys_log` VALUES (75, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.updateQRcode()', NULL, 23, '127.0.0.1', '2021-07-01 16:53:27');
INSERT INTO `sys_log` VALUES (76, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.updateQRcode()', NULL, 1901, '127.0.0.1', '2021-07-01 16:55:35');
INSERT INTO `sys_log` VALUES (77, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625105008101\"]', 12, '127.0.0.1', '2021-07-01 16:59:38');
INSERT INTO `sys_log` VALUES (78, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childClickQrcode\":null,\"childClickUrl\":\"https://blog.csdn.net/qq_42962779/article/details/115486951\",\"childComment\":\"1212212\",\"childId\":\"1625129989362\",\"childInviteCode\":\"\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"链\",\"createTime\":\"2021-07-01 16:59:49\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040534327\"}', 26, '127.0.0.1', '2021-07-01 16:59:49');
INSERT INTO `sys_log` VALUES (79, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childClickQrcode\":null,\"childClickUrl\":\"https://blog.csdn.net/hongyuancao/article/details/90024527\",\"childComment\":\"344444\",\"childId\":\"1625130000574\",\"childInviteCode\":\"\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"链\",\"createTime\":\"2021-07-01 17:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040534327\"}', 22, '127.0.0.1', '2021-07-01 17:00:01');
INSERT INTO `sys_log` VALUES (80, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625130000574\"]', 8, '127.0.0.1', '2021-07-01 17:00:28');
INSERT INTO `sys_log` VALUES (81, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625129989362\"]', 20, '127.0.0.1', '2021-07-01 17:00:29');
INSERT INTO `sys_log` VALUES (82, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试链\",\"linkStatus\":\"false\",\"linkType\":\"链\",\"inviteCodeUrl\":null}', 24, '127.0.0.1', '2021-07-01 17:02:56');
INSERT INTO `sys_log` VALUES (83, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"11111\",\"linkId\":\"1625040956791\",\"linkMax\":0,\"linkName\":\"测试二维码\",\"linkStatus\":\"false\",\"linkType\":\"二维码\",\"inviteCodeUrl\":null}', 19, '127.0.0.1', '2021-07-01 17:03:08');
INSERT INTO `sys_log` VALUES (84, 'admin', '删除连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.delete()', '[\"1625044968627\"]', 21, '127.0.0.1', '2021-07-01 17:03:13');
INSERT INTO `sys_log` VALUES (85, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111\",\"linkId\":\"1625040966056\",\"linkMax\":0,\"linkName\":\"测试邀请码\",\"linkStatus\":\"false\",\"linkType\":\"邀请码\",\"inviteCodeUrl\":null}', 19, '127.0.0.1', '2021-07-01 17:03:20');
INSERT INTO `sys_log` VALUES (86, 'admin', '修改连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.update()', '{\"childClickCount\":333,\"childClickQrcode\":\"http://localhost:8099/upfile/null\",\"childClickUrl\":null,\"childComment\":\"ddddd\",\"childId\":\"1625044021055\",\"childInviteCode\":\"dddd4444444\",\"childMax\":3333,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040966056\"}', 20, '127.0.0.1', '2021-07-01 17:03:36');
INSERT INTO `sys_log` VALUES (87, 'admin', '删除连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.delete()', '[\"1625040966056\"]', 49, '127.0.0.1', '2021-07-01 17:09:39');
INSERT INTO `sys_log` VALUES (88, 'admin', '新增连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.save()', '{\"createTime\":\"2021-07-01 17:09:53\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"111111\",\"linkId\":\"1625130593555\",\"linkMax\":0,\"linkName\":\"测试 邀请码\",\"linkStatus\":\"\",\"linkType\":\"邀请码\",\"inviteCodeUrl\":\"https://blog.csdn.net/hongyuancao/article/details/90024527\"}', 25, '127.0.0.1', '2021-07-01 17:09:54');
INSERT INTO `sys_log` VALUES (89, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childClickQrcode\":null,\"childClickUrl\":\"https://bscscan.com/token/0xc748673057861a797275cd8a068abb95a902e8de\",\"childComment\":\"测试\",\"childId\":\"1625132557625\",\"childInviteCode\":\"\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"链\",\"createTime\":\"2021-07-01 17:42:37\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040534327\"}', 41, '127.0.0.1', '2021-07-01 17:42:38');
INSERT INTO `sys_log` VALUES (90, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childClickQrcode\":null,\"childClickUrl\":null,\"childComment\":\"11111\",\"childId\":\"1625133622270\",\"childInviteCode\":\"lalalalalala\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"邀请码\",\"createTime\":\"2021-07-01 18:00:22\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625130593555\"}', 42, '127.0.0.1', '2021-07-01 18:00:22');
INSERT INTO `sys_log` VALUES (91, 'admin', '新增表单数据', 'com.suke.czx.modules.from.controller.TbFromController.save()', NULL, 9, '127.0.0.1', '2021-07-08 10:47:36');
INSERT INTO `sys_log` VALUES (92, 'admin', '新增表单子表数据', 'com.suke.czx.modules.from.controller.TbFromChildController.save()', NULL, 40, '127.0.0.1', '2021-07-08 11:21:43');
INSERT INTO `sys_log` VALUES (93, 'admin', '新增表单数据', 'com.suke.czx.modules.from.controller.TbFromController.save()', NULL, 41, '127.0.0.1', '2021-07-08 11:24:28');
INSERT INTO `sys_log` VALUES (94, 'admin', '新增表单子表数据', 'com.suke.czx.modules.from.controller.TbFromChildController.save()', NULL, 23, '127.0.0.1', '2021-07-08 11:24:43');
INSERT INTO `sys_log` VALUES (95, 'admin', '删除表单子表数据', 'com.suke.czx.modules.from.controller.TbFromChildController.delete()', '[\"1625714682889\"]', 36, '127.0.0.1', '2021-07-08 11:31:06');
INSERT INTO `sys_log` VALUES (96, 'admin', '删除表单子表数据', 'com.suke.czx.modules.from.controller.TbFromChildController.delete()', '[\"1625714502953\"]', 9, '127.0.0.1', '2021-07-08 11:31:12');
INSERT INTO `sys_log` VALUES (97, 'admin', '新增表单子表数据', 'com.suke.czx.modules.from.controller.TbFromChildController.save()', NULL, 24, '127.0.0.1', '2021-07-08 11:31:28');
INSERT INTO `sys_log` VALUES (98, 'admin', '修改表单子表数据', 'com.suke.czx.modules.from.controller.TbFromChildController.update()', NULL, 40, '127.0.0.1', '2021-07-08 11:33:23');
INSERT INTO `sys_log` VALUES (99, 'admin', '修改表单子表数据', 'com.suke.czx.modules.from.controller.TbFromChildController.update()', NULL, 40, '127.0.0.1', '2021-07-08 11:34:25');
INSERT INTO `sys_log` VALUES (100, 'admin', '修改表单数据', 'com.suke.czx.modules.from.controller.TbFromController.update()', NULL, 26, '127.0.0.1', '2021-07-08 11:34:35');
INSERT INTO `sys_log` VALUES (101, 'admin', '修改用户', 'com.suke.czx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"password\":\"$2a$10$XZc3ZznwtuHYD8d5RimS4OucmM/UzKohgHpw8yw05DHb73UX.4DTC\",\"email\":\"yzcheng90@qq.com\",\"mobile\":\"13612345678\",\"status\":1,\"createUserId\":1,\"createTime\":\"2016-11-11 11:11:11\",\"roleIdList\":null}', 165, '127.0.0.1', '2021-07-08 14:40:40');
INSERT INTO `sys_log` VALUES (102, 'admin', '修改用户', 'com.suke.czx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"password\":\"$2a$10$RG5KOoicH3f3IH948VW3AOzhJKepSteupeuQ8JAB28ElsYH3KlU4a\",\"email\":\"yzcheng90@qq.com\",\"mobile\":\"13612345678\",\"status\":1,\"createUserId\":1,\"createTime\":\"2016-11-11 11:11:11\",\"roleIdList\":null}', 95, '127.0.0.1', '2021-07-08 14:40:52');
INSERT INTO `sys_log` VALUES (103, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试链\",\"linkStatus\":\"true\",\"linkType\":\"链\",\"inviteCodeUrl\":null,\"gotoPageUrl\":\"http://localhost:8099/link?id=1625040534327\"}', 24, '127.0.0.1', '2021-07-08 14:46:03');
INSERT INTO `sys_log` VALUES (104, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试链\",\"linkStatus\":\"true\",\"linkType\":\"链\",\"inviteCodeUrl\":null,\"gotoPageUrl\":\"http://localhost:8099/link?id=1625040534327\"}', 5, '127.0.0.1', '2021-07-08 14:49:50');
INSERT INTO `sys_log` VALUES (105, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试链\",\"linkStatus\":\"true\",\"linkType\":\"链\",\"inviteCodeUrl\":null,\"gotoPageUrl\":\"http://localhost:8099/link?id=1625040534327\"}', 3, '127.0.0.1', '2021-07-08 14:50:22');
INSERT INTO `sys_log` VALUES (106, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"11111\",\"linkId\":\"1625040956791\",\"linkMax\":0,\"linkName\":\"测试二维码\",\"linkStatus\":\"true\",\"linkType\":\"二维码\",\"inviteCodeUrl\":null,\"gotoPageUrl\":\"http://localhost:8099/qrcode?id=1625040956791\"}', 21, '127.0.0.1', '2021-07-08 14:50:35');
INSERT INTO `sys_log` VALUES (107, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-07-01 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"111111\",\"linkId\":\"1625130593555\",\"linkMax\":0,\"linkName\":\"测试 邀请码\",\"linkStatus\":\"true\",\"linkType\":\"邀请码\",\"inviteCodeUrl\":\"https://blog.csdn.net/hongyuancao/article/details/90024527\",\"gotoPageUrl\":\"http://localhost:8099/invitecode?id=1625130593555\"}', 21, '127.0.0.1', '2021-07-08 14:50:41');
INSERT INTO `sys_log` VALUES (108, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试链\",\"linkStatus\":\"false\",\"linkType\":\"链\",\"inviteCodeUrl\":null,\"gotoPageUrl\":\"http://localhost:8099/link?id=1625040534327\"}', 21, '127.0.0.1', '2021-07-08 15:01:14');
INSERT INTO `sys_log` VALUES (109, 'admin', '修改连接表数据', 'com.suke.czx.modules.link.controller.TbLinkController.update()', '{\"createTime\":\"2021-06-30 00:00:00\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkClickCount\":0,\"linkComment\":\"1111123222\",\"linkId\":\"1625040534327\",\"linkMax\":0,\"linkName\":\"测试链\",\"linkStatus\":\"true\",\"linkType\":\"链\",\"inviteCodeUrl\":null,\"gotoPageUrl\":\"http://localhost:8099/link?id=1625040534327\"}', 21, '127.0.0.1', '2021-07-08 15:01:18');
INSERT INTO `sys_log` VALUES (110, 'admin', '修改用户', 'com.suke.czx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"password\":null,\"email\":\"yzcheng90@qq.com\",\"mobile\":\"13612345678\",\"status\":0,\"createUserId\":1,\"createTime\":\"2016-11-11 11:11:11\",\"roleIdList\":null}', 32, '127.0.0.1', '2021-07-08 15:03:34');
INSERT INTO `sys_log` VALUES (111, 'admin', '修改用户', 'com.suke.czx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"password\":null,\"email\":\"yzcheng90@qq.com\",\"mobile\":\"13612345678\",\"status\":1,\"createUserId\":1,\"createTime\":\"2016-11-11 11:11:11\",\"roleIdList\":null}', 27, '127.0.0.1', '2021-07-08 15:03:37');
INSERT INTO `sys_log` VALUES (112, 'admin', '修改用户', 'com.suke.czx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"password\":null,\"email\":\"yzcheng90@qq.com\",\"mobile\":\"13612345678\",\"status\":0,\"createUserId\":1,\"createTime\":\"2016-11-11 11:11:11\",\"roleIdList\":null}', 24, '127.0.0.1', '2021-07-08 15:05:24');
INSERT INTO `sys_log` VALUES (113, 'admin', '修改用户', 'com.suke.czx.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"admin\",\"password\":null,\"email\":\"yzcheng90@qq.com\",\"mobile\":\"13612345678\",\"status\":1,\"createUserId\":1,\"createTime\":\"2016-11-11 11:11:11\",\"roleIdList\":null}', 9, '127.0.0.1', '2021-07-08 15:05:26');
INSERT INTO `sys_log` VALUES (114, 'admin', '保存用户', 'com.suke.czx.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"cs\",\"password\":\"$2a$10$UvVljfYuIk5MaBB/329XuuXCTdXhBvMgjOzw//9/ud7eyc69ZXT42\",\"email\":\"\",\"mobile\":\"15263654789\",\"status\":1,\"createUserId\":1,\"createTime\":\"2021-07-08 15:08:27\",\"roleIdList\":null}', 95, '127.0.0.1', '2021-07-08 15:08:28');
INSERT INTO `sys_log` VALUES (115, 'admin', '删除用户', 'com.suke.czx.modules.sys.controller.SysUserController.delete()', '[3]', 25, '127.0.0.1', '2021-07-13 17:43:35');
INSERT INTO `sys_log` VALUES (116, 'admin', '删除用户', 'com.suke.czx.modules.sys.controller.SysUserController.delete()', '[2]', 20, '127.0.0.1', '2021-07-13 17:43:37');
INSERT INTO `sys_log` VALUES (117, 'admin', '新增连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.save()', '{\"childClickCount\":0,\"childClickQrcode\":null,\"childClickUrl\":\"https://www.baidu.com/\",\"childComment\":\"baidu\",\"childId\":\"1626318929582\",\"childInviteCode\":\"\",\"childMax\":0,\"childStatus\":\"true\",\"childType\":\"链\",\"createTime\":\"2021-07-15 11:15:29\",\"createUserId\":\"1\",\"createUsername\":\"admin\",\"linkId\":\"1625040534327\"}', 42, '127.0.0.1', '2021-07-15 11:15:30');
INSERT INTO `sys_log` VALUES (118, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625126319094\"]', 42, '127.0.0.1', '2021-07-15 11:19:35');
INSERT INTO `sys_log` VALUES (119, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625126364908\"]', 21, '127.0.0.1', '2021-07-15 11:19:36');
INSERT INTO `sys_log` VALUES (120, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625126420943\"]', 20, '127.0.0.1', '2021-07-15 11:19:37');
INSERT INTO `sys_log` VALUES (121, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625126837888\"]', 20, '127.0.0.1', '2021-07-15 11:19:38');
INSERT INTO `sys_log` VALUES (122, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625126973952\"]', 22, '127.0.0.1', '2021-07-15 11:19:39');
INSERT INTO `sys_log` VALUES (123, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625128377698\"]', 18, '127.0.0.1', '2021-07-15 11:19:40');
INSERT INTO `sys_log` VALUES (124, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625129314834\"]', 20, '127.0.0.1', '2021-07-15 11:19:41');
INSERT INTO `sys_log` VALUES (125, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625129333881\"]', 20, '127.0.0.1', '2021-07-15 11:19:43');
INSERT INTO `sys_log` VALUES (126, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625129436913\"]', 19, '127.0.0.1', '2021-07-15 11:19:44');
INSERT INTO `sys_log` VALUES (127, 'admin', '删除连接子表数据', 'com.suke.czx.modules.link.controller.TbLinkChildController.delete()', '[\"1625129479353\"]', 20, '127.0.0.1', '2021-07-15 11:19:46');
INSERT INTO `sys_log` VALUES (128, 'admin', '删除菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.delete()', '{\"menuId\":35,\"isHide\":false,\"isKeepAlive\":false,\"isAffix\":false,\"isIframe\":false,\"orderSort\":0,\"disabled\":false}', 29, '127.0.0.1', '2023-01-29 14:16:16');
INSERT INTO `sys_log` VALUES (129, 'admin', '删除菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.delete()', '{\"menuId\":33,\"isHide\":false,\"isKeepAlive\":false,\"isAffix\":false,\"isIframe\":false,\"orderSort\":0,\"disabled\":false}', 11, '127.0.0.1', '2023-01-29 14:16:20');
INSERT INTO `sys_log` VALUES (130, 'admin', '删除菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.delete()', '{\"menuId\":37,\"isHide\":false,\"isKeepAlive\":false,\"isAffix\":false,\"isIframe\":false,\"orderSort\":0,\"disabled\":false}', 22, '127.0.0.1', '2023-01-29 14:16:28');
INSERT INTO `sys_log` VALUES (131, 'admin', '删除菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.delete()', '{\"menuId\":36,\"isHide\":false,\"isKeepAlive\":false,\"isAffix\":false,\"isIframe\":false,\"orderSort\":0,\"disabled\":false}', 8, '127.0.0.1', '2023-01-29 14:16:30');
INSERT INTO `sys_log` VALUES (132, 'admin', '删除菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.delete()', '{\"menuId\":34,\"isHide\":false,\"isKeepAlive\":false,\"isAffix\":false,\"isIframe\":false,\"orderSort\":0,\"disabled\":false}', 9, '127.0.0.1', '2023-01-29 14:16:34');
INSERT INTO `sys_log` VALUES (133, 'admin', '删除菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.delete()', '{\"menuId\":39,\"isHide\":false,\"isKeepAlive\":false,\"isAffix\":false,\"isIframe\":false,\"orderSort\":0,\"disabled\":false}', 21, '127.0.0.1', '2023-01-29 14:16:38');
INSERT INTO `sys_log` VALUES (134, 'admin', '保存用户', 'com.suke.czx.modules.sys.controller.SysUserController.save()', '{\"userId\":\"53e3215ed12b227b59b6b3b9e9efb984\",\"username\":\"test\",\"password\":\"$2a$10$OWnrThY1UGfGiu/UoEeT5e4uisibIhkhAHaENe/2hbjqYAt6XujDG\",\"email\":\"yzcheng90@qq.com\",\"mobile\":\"13888888888\",\"status\":1,\"createUserId\":\"0\",\"createTime\":\"Jan 29, 2023 2:31:15 PM\",\"roleIdList\":[5]}', 85, '127.0.0.1', '2023-01-29 14:31:16');
INSERT INTO `sys_log` VALUES (135, 'admin', '保存用户', 'com.suke.czx.modules.sys.controller.SysUserController.save()', '{\"userId\":\"25f7a656e24056f0231378e72808e2f6\",\"username\":\"zwz\",\"password\":\"$2a$10$rZ9cpsH.W6lvJ2j7Azxgquxn8i47lB5x9ovN5OOVvBdJTo8sO6e0.\",\"email\":\"602459150@qq.com\",\"mobile\":\"13111111111\",\"status\":1,\"createUserId\":\"0\",\"createTime\":\"Oct 25, 2024, 10:24:38 PM\",\"roleIdList\":[4]}', 227, '127.0.0.1', '2024-10-25 22:24:39');
INSERT INTO `sys_log` VALUES (136, 'admin', '保存角色', 'com.suke.czx.modules.sys.controller.SysRoleController.save()', '{\"roleId\":9,\"roleName\":\"普通用户\",\"remark\":\"普通用户\",\"createUserId\":\"0\",\"createTime\":\"Oct 25, 2024, 10:25:39 PM\",\"menuIdList\":[1]}', 83, '127.0.0.1', '2024-10-25 22:25:39');
INSERT INTO `sys_log` VALUES (137, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"path\":\"/customManager\",\"name\":\"customManager\",\"menuType\":\"menu\",\"component\":\"\",\"redirect\":\"\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户管理\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 26, '127.0.0.1', '2024-10-25 22:27:06');
INSERT INTO `sys_log` VALUES (138, 'admin', '新增材料管理数据', 'com.suke.czx.modules.material.controller.MaterialInfoController.save()', '{\"code\":\"z1\",\"id\":\"8783ca1c511ec65c11f119c8b34fedc5\",\"name\":\"z1材料\"}', 174, '127.0.0.1', '2024-10-25 23:23:36');
INSERT INTO `sys_log` VALUES (139, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":40,\"parentId\":0,\"path\":\"/customManager\",\"name\":\"customManager\",\"component\":\"custom/index\",\"redirect\":\"\",\"title\":\"客户管理\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户管理\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"admin\"}}', 145, '127.0.0.1', '2024-10-26 01:01:47');
INSERT INTO `sys_log` VALUES (140, 'admin', '新增客户管理数据', 'com.suke.czx.modules.custom.controller.SystemCustomInfoController.save()', '{\"address\":\"11\",\"contacts\":\"22\",\"createBy\":\"\",\"customCode\":\"33\",\"customName\":\"44\",\"id\":\"7e960c4f47e0b5d5169e3ef6fd8ec813\",\"telephone\":\"55\",\"updateBy\":\"\"}', 187, '127.0.0.1', '2024-10-28 17:21:18');
INSERT INTO `sys_log` VALUES (141, 'admin', '修改客户管理数据', 'com.suke.czx.modules.custom.controller.SystemCustomInfoController.update()', '{\"address\":\"114\",\"contacts\":\"224\",\"createBy\":\"\",\"customCode\":\"334\",\"customName\":\"444\",\"id\":\"7e960c4f47e0b5d5169e3ef6fd8ec813\",\"telephone\":\"554\",\"updateBy\":\"\"}', 46, '127.0.0.1', '2024-10-28 17:21:31');
INSERT INTO `sys_log` VALUES (142, 'admin', '新增客户管理数据', 'com.suke.czx.modules.custom.controller.SystemCustomInfoController.save()', '{\"address\":\"44\",\"contacts\":\"5\",\"createBy\":\"\",\"customCode\":\"1\",\"customName\":\"2\",\"id\":\"277002c5f2f9da7709005dfb662e3fae\",\"telephone\":\"3\",\"updateBy\":\"\"}', 27, '127.0.0.1', '2024-10-28 17:23:37');
INSERT INTO `sys_log` VALUES (143, 'admin', '删除客户管理数据', 'com.suke.czx.modules.custom.controller.SystemCustomInfoController.delete()', '{\"address\":\"44\",\"contacts\":\"5\",\"createBy\":\"\",\"customCode\":\"1\",\"customName\":\"2\",\"id\":\"277002c5f2f9da7709005dfb662e3fae\",\"telephone\":\"3\",\"updateBy\":\"\"}', 61, '127.0.0.1', '2024-10-28 17:23:43');
INSERT INTO `sys_log` VALUES (144, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":40,\"path\":\"/list\",\"name\":\"/custom\",\"menuType\":\"menu\",\"component\":\"/custom/index\",\"redirect\":\"\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 41, '127.0.0.1', '2024-10-28 17:30:24');
INSERT INTO `sys_log` VALUES (145, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":40,\"parentId\":0,\"path\":\"/customManager\",\"name\":\"customManager\",\"component\":\"\",\"redirect\":\"\",\"title\":\"客户管理\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户管理\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"admin\"},\"children\":[{\"menuId\":41,\"parentId\":40,\"path\":\"/list\",\"name\":\"/custom\",\"component\":\"/custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}]}', 42, '127.0.0.1', '2024-10-28 17:30:37');
INSERT INTO `sys_log` VALUES (146, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":40,\"path\":\"/list\",\"name\":\"/customManager\",\"component\":\"/custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 22, '127.0.0.1', '2024-10-28 17:32:44');
INSERT INTO `sys_log` VALUES (147, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":40,\"path\":\"/custom\",\"name\":\"/customManager\",\"component\":\"/custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 20, '127.0.0.1', '2024-10-28 17:33:28');
INSERT INTO `sys_log` VALUES (148, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":40,\"path\":\"/custom\",\"name\":\"/customManager\",\"component\":\"custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 28, '127.0.0.1', '2024-10-28 17:34:33');
INSERT INTO `sys_log` VALUES (149, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":40,\"parentId\":0,\"path\":\"/customManager\",\"name\":\"customManager\",\"component\":\"layout/routerView/parent\",\"redirect\":\"\",\"title\":\"客户管理\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户管理\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"admin\"},\"children\":[{\"menuId\":41,\"parentId\":40,\"path\":\"/custom\",\"name\":\"/customManager\",\"component\":\"custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}]}', 20, '127.0.0.1', '2024-10-28 17:36:15');
INSERT INTO `sys_log` VALUES (150, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":40,\"path\":\"/list\",\"name\":\"/customManager\",\"component\":\"custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 15, '127.0.0.1', '2024-10-28 17:36:58');
INSERT INTO `sys_log` VALUES (151, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":40,\"path\":\"/customList\",\"name\":\"/customManager\",\"component\":\"custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 21, '127.0.0.1', '2024-10-28 17:37:14');
INSERT INTO `sys_log` VALUES (152, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":40,\"path\":\"/customList\",\"name\":\"/customManager\",\"component\":\"custom/index\",\"redirect\":\"\",\"title\":\"客户列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"客户列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 9, '127.0.0.1', '2024-10-28 17:37:32');
INSERT INTO `sys_log` VALUES (153, 'admin', '修改角色', 'com.suke.czx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"管理员\",\"remark\":\"管理员\",\"createUserId\":\"0\",\"createTime\":\"Apr 18, 2019, 10:12:05 AM\",\"menuIdList\":[1,2,3,4,5,40,41]}', 160, '127.0.0.1', '2024-10-28 17:38:06');
INSERT INTO `sys_log` VALUES (154, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"path\":\"/materialManger\",\"name\":\"/materialManger\",\"menuType\":\"menu\",\"component\":\"layout/routerView/parent\",\"redirect\":\"\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"材料管理\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-quanxian\",\"roles\":\"\"}}', 36, '127.0.0.1', '2024-10-28 17:44:25');
INSERT INTO `sys_log` VALUES (155, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"parentId\":42,\"path\":\"/materialList\",\"name\":\"/materialList\",\"menuType\":\"menu\",\"component\":\"material/index\",\"redirect\":\"\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"材料列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"\",\"roles\":\"\"}}', 22, '127.0.0.1', '2024-10-28 17:45:59');
INSERT INTO `sys_log` VALUES (156, 'admin', '修改角色', 'com.suke.czx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"管理员\",\"remark\":\"管理员\",\"createUserId\":\"0\",\"createUserName\":\"admin\",\"createTime\":\"Apr 18, 2019, 10:12:05 AM\",\"menuIdList\":[1,2,3,4,5,40,41,42,43]}', 84, '127.0.0.1', '2024-10-28 17:50:06');
INSERT INTO `sys_log` VALUES (157, 'admin', '新增材料管理数据', 'com.suke.czx.modules.material.controller.MaterialInfoController.save()', '{\"code\":\"z2\",\"createBy\":\"0\",\"createTime\":\"Oct 28, 2024, 5:59:02 PM\",\"id\":\"78cf26b23e3be15521ee23d293195edd\",\"name\":\"z2材料\"}', 160, '127.0.0.1', '2024-10-28 17:59:03');
INSERT INTO `sys_log` VALUES (158, 'admin', '修改材料管理数据', 'com.suke.czx.modules.material.controller.MaterialInfoController.update()', '{\"code\":\"z1\",\"id\":\"8783ca1c511ec65c11f119c8b34fedc5\",\"name\":\"z1材料1\",\"updateBy\":\"0\",\"updateTime\":\"Oct 28, 2024, 5:59:08 PM\"}', 34, '127.0.0.1', '2024-10-28 17:59:09');
INSERT INTO `sys_log` VALUES (159, 'admin', '修改材料管理数据', 'com.suke.czx.modules.material.controller.MaterialInfoController.update()', '{\"code\":\"z22\",\"createBy\":\"0\",\"createTime\":\"Oct 28, 2024, 5:59:02 PM\",\"id\":\"78cf26b23e3be15521ee23d293195edd\",\"name\":\"z2材料1\",\"updateBy\":\"0\",\"updateTime\":\"Oct 28, 2024, 5:59:17 PM\"}', 23, '127.0.0.1', '2024-10-28 17:59:18');
INSERT INTO `sys_log` VALUES (160, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"path\":\"/orderManager\",\"name\":\"orderManager\",\"menuType\":\"menu\",\"component\":\"\",\"redirect\":\"\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"订单管理\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 75, '127.0.0.1', '2024-10-28 23:23:58');
INSERT INTO `sys_log` VALUES (161, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":44,\"parentId\":0,\"path\":\"/orderManager\",\"name\":\"orderManager\",\"component\":\"layout/routerView/parent\",\"redirect\":\"\",\"title\":\"订单管理\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"订单管理\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 27, '127.0.0.1', '2024-10-28 23:24:06');
INSERT INTO `sys_log` VALUES (162, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"path\":\"/orderList\",\"name\":\"orderList\",\"menuType\":\"menu\",\"component\":\"order/index\",\"redirect\":\"\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"订单列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 21, '127.0.0.1', '2024-10-28 23:24:53');
INSERT INTO `sys_log` VALUES (163, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":45,\"parentId\":44,\"path\":\"/orderList\",\"name\":\"orderList\",\"component\":\"order/index\",\"redirect\":\"\",\"title\":\"订单列表\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"订单列表\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"iconfont icon-biaodan\",\"roles\":\"\"}}', 18, '127.0.0.1', '2024-10-28 23:25:03');
INSERT INTO `sys_log` VALUES (164, 'admin', '修改角色', 'com.suke.czx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"管理员\",\"remark\":\"管理员\",\"createUserId\":\"0\",\"createUserName\":\"admin\",\"createTime\":\"Apr 18, 2019, 10:12:05 AM\",\"menuIdList\":[1,2,3,4,5,40,41,42,43,44,45]}', 222, '127.0.0.1', '2024-10-28 23:25:43');
INSERT INTO `sys_log` VALUES (165, 'admin', '新增客户管理数据', 'com.suke.czx.modules.custom.controller.SystemCustomInfoController.save()', '{\"address\":\"\",\"contacts\":\"\",\"createBy\":\"0\",\"createTime\":\"Oct 29, 2024, 5:52:55 PM\",\"customCode\":\"zz1\",\"customName\":\"zz1\",\"id\":\"8f36772c055dc45037ebc220b4bf3d47\",\"telephone\":\"\",\"updateBy\":\"0\",\"updateTime\":\"Oct 29, 2024, 5:52:55 PM\"}', 172, '127.0.0.1', '2024-10-29 17:52:56');
INSERT INTO `sys_log` VALUES (166, 'admin', '新增订单管理数据', 'com.suke.czx.modules.order.controller.SystemOrderController.save()', '{\"id\":\"0a3837d8773725e841f1a536d6d9c732\",\"createBy\":\"0\",\"createTime\":\"Oct 29, 2024, 6:06:02 PM\",\"updateBy\":\"0\",\"updateTime\":\"Oct 29, 2024, 6:06:02 PM\",\"address\":\"\",\"contacts\":\"\",\"customCode\":\"zz1\",\"customName\":\"zz1\",\"imageAttachment\":\"\",\"materialName\":\"\",\"orderStatus\":\"\",\"outGoingSupplier\":\"\",\"processingTechnology\":\"\",\"remark\":\"\",\"telephone\":\"\",\"weight\":\"\",\"materialCode\":\"z1\"}', 167, '127.0.0.1', '2024-10-29 18:06:03');
INSERT INTO `sys_log` VALUES (167, 'admin', '修改订单管理数据', 'com.suke.czx.modules.order.controller.SystemOrderController.updateStatus()', '{\"id\":\"0a3837d8773725e841f1a536d6d9c732\",\"updateBy\":\"0\",\"updateTime\":\"Oct 29, 2024, 11:36:29 PM\",\"sendingStatus\":1}', 223, '127.0.0.1', '2024-10-29 23:36:30');
INSERT INTO `sys_log` VALUES (168, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"path\":\"/newOrder\",\"name\":\"newOrder\",\"menuType\":\"menu\",\"component\":\"order/newOrder\",\"redirect\":\"\",\"orderSort\":1,\"isLink\":false,\"meta\":{\"title\":\"新增订单\",\"isLink\":\"\",\"isHide\":true,\"isKeepAlive\":false,\"isAffix\":false,\"isIframe\":true,\"icon\":\"\",\"roles\":\"\"}}', 142, '127.0.0.1', '2024-10-30 18:23:25');
INSERT INTO `sys_log` VALUES (169, 'admin', '新增订单管理数据', 'com.suke.czx.modules.order.controller.SystemOrderController.save()', '{\"id\":\"d6aa6c6a9890a50446de120a8f30ba66\",\"createBy\":\"0\",\"createTime\":\"Oct 30, 2024, 11:37:23 PM\",\"updateBy\":\"0\",\"updateTime\":\"Oct 30, 2024, 11:37:23 PM\",\"actualExpressFee\":1,\"actualFare\":2,\"actualOutgoingPayment\":3,\"actualRepayment\":4,\"address\":\"5\",\"advanceAmount\":5,\"advanceReceivedAmount\":6,\"contacts\":\"\",\"customCode\":\"\",\"customName\":\"\",\"imageAttachment\":\"\",\"materialName\":\"\",\"orderStatus\":\"\",\"outGoingSupplier\":\"\",\"processingTechnology\":\"\",\"remark\":\"\",\"telephone\":\"\",\"weight\":\"\",\"materialCode\":\"\"}', 188, '127.0.0.1', '2024-10-30 23:37:23');
INSERT INTO `sys_log` VALUES (170, 'admin', '修改订单管理数据', 'com.suke.czx.modules.order.controller.SystemOrderController.updateStatus()', '{\"id\":\"0a3837d8773725e841f1a536d6d9c732\",\"updateBy\":\"0\",\"updateTime\":\"Oct 31, 2024, 11:27:28 PM\",\"sendingStatus\":1}', 299, '127.0.0.1', '2024-10-31 23:27:29');
INSERT INTO `sys_log` VALUES (171, 'admin', '修改订单管理数据', 'com.suke.czx.modules.order.controller.SystemOrderController.userPerformance()', '{\"startTime\":\"Sep 11, 2024, 12:00:00 AM\",\"endTime\":\"Oct 31, 2024, 12:00:00 AM\",\"userId\":\"0\"}', 60, '127.0.0.1', '2024-11-01 02:01:22');
INSERT INTO `sys_log` VALUES (172, 'admin', '修改订单管理数据', 'com.suke.czx.modules.order.controller.SystemOrderController.userPerformance()', '{\"startTime\":\"Sep 11, 2024, 12:00:00 AM\",\"endTime\":\"Oct 31, 2024, 12:00:00 AM\",\"userId\":\"0\"}', 85, '127.0.0.1', '2024-11-04 16:53:08');
INSERT INTO `sys_log` VALUES (173, 'admin', '保存菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.save()', '{\"path\":\"/order/userPerformance\",\"name\":\"userPerformance\",\"menuType\":\"menu\",\"component\":\"/order/userPerformance\",\"redirect\":\"\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"个人业绩\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"\",\"roles\":\"\"}}', 149, '127.0.0.1', '2024-11-04 17:17:51');
INSERT INTO `sys_log` VALUES (174, 'admin', '修改角色', 'com.suke.czx.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"管理员\",\"remark\":\"管理员\",\"createUserId\":\"0\",\"createUserName\":\"admin\",\"createTime\":\"Apr 18, 2019, 10:12:05 AM\",\"menuIdList\":[1,2,3,4,5,40,41,42,43,44,45,47]}', 321, '127.0.0.1', '2024-11-04 17:18:13');
INSERT INTO `sys_log` VALUES (175, 'admin', '修改菜单', 'com.suke.czx.modules.sys.controller.SysMenuController.update()', '{\"menuId\":47,\"parentId\":0,\"path\":\"/order/userPerformance\",\"name\":\"userPerformance\",\"component\":\"order/userPerformance\",\"redirect\":\"\",\"title\":\"个人业绩\",\"orderSort\":0,\"isLink\":false,\"meta\":{\"title\":\"个人业绩\",\"isLink\":\"\",\"isHide\":false,\"isKeepAlive\":true,\"isAffix\":false,\"isIframe\":false,\"icon\":\"\",\"roles\":\"\"}}', 54, '127.0.0.1', '2024-11-04 17:18:52');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_new
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_new`;
CREATE TABLE `sys_menu_new` (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `parent_id` int DEFAULT NULL COMMENT '菜单父ID',
  `name` varchar(255) DEFAULT NULL COMMENT '路由名称',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径',
  `redirect` varchar(255) DEFAULT NULL COMMENT '路由重定向，有子集 children 时',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `is_link` varchar(255) DEFAULT NULL COMMENT '外链/内嵌时链接地址（http:xxx.com），开启外链条件，`1、isLink: 链接地址不为空`',
  `is_hide` int DEFAULT NULL COMMENT '是否隐藏',
  `is_keep_alive` int DEFAULT NULL COMMENT '是否缓存',
  `is_affix` int DEFAULT NULL COMMENT '是否固定',
  `is_iframe` int DEFAULT NULL COMMENT '是否内嵌，开启条件，`1、isIframe:true 2、isLink：链接地址不为空`',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `roles` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `order_sort` int DEFAULT NULL COMMENT '排序',
  `disabled` int DEFAULT NULL COMMENT '是否显示：1显示，0不显示',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu_new
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_new` VALUES (1, 0, 'home', '/home', NULL, 'home/index', '首页', NULL, 0, 1, 1, 0, 'iconfont icon-shouye', 'admin,common', 1, 1);
INSERT INTO `sys_menu_new` VALUES (2, 0, 'system', '/system', '/system/menu', 'layout/routerView/parent', '系统管理', NULL, 0, 1, 0, 0, 'iconfont icon-xitongshezhi', 'admin', 2, 1);
INSERT INTO `sys_menu_new` VALUES (3, 0, 'logs', '/logs', NULL, 'layout/routerView/parent', '日志管理', NULL, 0, 1, 0, 0, 'el-icon-office-building', 'admin', 3, 1);
INSERT INTO `sys_menu_new` VALUES (4, 0, 'codeGen', '/codeGen', NULL, 'code/index', '代码生成', NULL, 0, 1, 0, 0, 'el-icon-set-up', 'admin', 98, 1);
INSERT INTO `sys_menu_new` VALUES (5, 0, 'swagger', '/swagger', NULL, 'layout/routerView/parent', '接口文档', 'http://localhost:8080/swagger-ui/index.html', 0, 1, 0, 1, 'el-icon-news', 'admin', 99, 1);
INSERT INTO `sys_menu_new` VALUES (20, 2, 'systemUser', '/systemUser', NULL, 'user/index', '用户管理', NULL, 0, 1, 0, 0, 'el-icon-user', 'admin', 1, 1);
INSERT INTO `sys_menu_new` VALUES (21, 2, 'systemRole', '/systemRole', NULL, 'role/index', '角色管理', NULL, 0, 1, 0, 0, 'el-icon-lock', 'admin', 2, 1);
INSERT INTO `sys_menu_new` VALUES (22, 2, 'systemMenu', '/systemMenu', NULL, 'menu/index', '菜单管理', NULL, 0, 1, 0, 0, 'el-icon-box', 'admin', 3, 1);
INSERT INTO `sys_menu_new` VALUES (23, 2, 'personal', '/personal', NULL, 'personal/index', '个人中心', NULL, 0, 1, 0, 0, 'iconfont icon-gerenzhongxin', 'admin,common', 4, 0);
INSERT INTO `sys_menu_new` VALUES (31, 3, 'optionLog', '/optionLog', NULL, 'optionLog/index', '操作日志', NULL, 0, 1, 0, 0, 'el-icon-tickets', 'admin', 1, 1);
INSERT INTO `sys_menu_new` VALUES (32, 3, 'loginLog', '/loginLog', NULL, 'loginLog/index', '登录日志', NULL, 0, 1, 0, 0, 'el-icon-tickets', 'admin', 2, 1);
INSERT INTO `sys_menu_new` VALUES (38, 2, 'apkVersion', '/apkVersion', NULL, 'apk/index', 'APK版本管理', NULL, 0, 1, 0, 0, 'iconfont icon-caidan', 'admin', 99, 1);
INSERT INTO `sys_menu_new` VALUES (40, 0, 'customManager', '/customManager', '', 'layout/routerView/parent', '客户管理', '', 0, 1, 0, 0, 'iconfont icon-biaodan', 'admin', 0, 1);
INSERT INTO `sys_menu_new` VALUES (41, 40, '/customManager', '/customList', '', 'custom/index', '客户列表', '', 0, 1, 0, 0, 'iconfont icon-biaodan', 'admin', 0, 1);
INSERT INTO `sys_menu_new` VALUES (42, 0, '/materialManger', '/materialManger', '', 'layout/routerView/parent', '材料管理', '', 0, 1, 0, 0, 'iconfont icon-quanxian', 'admin', 0, 1);
INSERT INTO `sys_menu_new` VALUES (43, 42, '/materialList', '/materialList', '', 'material/index', '材料列表', '', 0, 1, 0, 0, '', 'admin', 0, 1);
INSERT INTO `sys_menu_new` VALUES (44, 0, 'orderManager', '/orderManager', '', 'layout/routerView/parent', '订单管理', '', 0, 1, 0, 0, 'iconfont icon-biaodan', 'admin', 0, 1);
INSERT INTO `sys_menu_new` VALUES (45, 44, 'orderList', '/orderList', '', 'order/index', '订单列表', '', 0, 1, 0, 0, 'iconfont icon-biaodan', 'admin', 0, 1);
INSERT INTO `sys_menu_new` VALUES (46, 44, 'newOrder', '/newOrder', '', 'order/newOrder', '新增订单', '', 0, 1, 0, 0, '', 'admin', 1, 1);
INSERT INTO `sys_menu_new` VALUES (47, 0, 'userPerformance', '/order/userPerformance', '', 'order/userPerformance', '个人业绩', '', 0, 1, 0, 0, '', '', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------
BEGIN;
INSERT INTO `sys_oss` VALUES (6, 'sm6duzblr.hn-bkt.clouddn.com/task/2024-11-01/233b84e66cd5401ca29f2c455f2bfbbe.jpg', '2024-11-01 02:21:36');
INSERT INTO `sys_oss` VALUES (7, 'sm6duzblr.hn-bkt.clouddn.com/task/2024-11-01/5c10dea587524cbd912442c770bae390.jpg', '2024-11-01 11:02:09');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (4, '管理员', '管理员', 0, '2019-04-18 10:12:05');
INSERT INTO `sys_role` VALUES (5, '测试', '测试', 1, '2019-12-26 16:51:37');
INSERT INTO `sys_role` VALUES (9, '普通用户', '普通用户', 0, '2024-10-25 22:25:39');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (75, 9, 1);
INSERT INTO `sys_role_menu` VALUES (103, 4, 1);
INSERT INTO `sys_role_menu` VALUES (104, 4, 2);
INSERT INTO `sys_role_menu` VALUES (105, 4, 3);
INSERT INTO `sys_role_menu` VALUES (106, 4, 4);
INSERT INTO `sys_role_menu` VALUES (107, 4, 5);
INSERT INTO `sys_role_menu` VALUES (108, 4, 40);
INSERT INTO `sys_role_menu` VALUES (109, 4, 41);
INSERT INTO `sys_role_menu` VALUES (110, 4, 42);
INSERT INTO `sys_role_menu` VALUES (111, 4, 43);
INSERT INTO `sys_role_menu` VALUES (112, 4, 44);
INSERT INTO `sys_role_menu` VALUES (113, 4, 45);
INSERT INTO `sys_role_menu` VALUES (114, 4, 47);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` varchar(50) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '密码',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机号',
  `status` tinyint DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `photo` varchar(500) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('0', 'admin', '$2a$10$RG5KOoicH3f3IH948VW3AOzhJKepSteupeuQ8JAB28ElsYH3KlU4a', 'yzcheng90@qq.com', '13612345678', 1, '1', '2016-11-11 11:11:11', NULL, NULL);
INSERT INTO `sys_user` VALUES ('25f7a656e24056f0231378e72808e2f6', 'zwz', '$2a$10$rZ9cpsH.W6lvJ2j7Azxgquxn8i47lB5x9ovN5OOVvBdJTo8sO6e0.', '602459150@qq.com', '13111111111', 1, '0', '2024-10-25 22:24:39', NULL, NULL);
INSERT INTO `sys_user` VALUES ('53e3215ed12b227b59b6b3b9e9efb984', 'test', '$2a$10$OWnrThY1UGfGiu/UoEeT5e4uisibIhkhAHaENe/2hbjqYAt6XujDG', 'yzcheng90@qq.com', '13888888888', 1, '0', '2023-01-29 14:31:16', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (2, '53e3215ed12b227b59b6b3b9e9efb984', 5);
INSERT INTO `sys_user_role` VALUES (3, '25f7a656e24056f0231378e72808e2f6', 4);
COMMIT;

-- ----------------------------
-- Table structure for system_custom_info
-- ----------------------------
DROP TABLE IF EXISTS `system_custom_info`;
CREATE TABLE `system_custom_info` (
  `id` varchar(100) NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 地址',
  `contacts` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 联系人',
  `custom_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户编码',
  `custom_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户名称',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 电话号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='客户管理';

-- ----------------------------
-- Records of system_custom_info
-- ----------------------------
BEGIN;
INSERT INTO `system_custom_info` VALUES ('7e960c4f47e0b5d5169e3ef6fd8ec813', '', NULL, '', NULL, '114', '224', '334', '444', '554');
INSERT INTO `system_custom_info` VALUES ('8f36772c055dc45037ebc220b4bf3d47', '0', '2024-10-29 17:52:55.541000', '0', '2024-10-29 17:52:55.542000', '', '', 'zz1', 'zz1', '');
COMMIT;

-- ----------------------------
-- Table structure for system_order
-- ----------------------------
DROP TABLE IF EXISTS `system_order`;
CREATE TABLE `system_order` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Id',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `actual_express_fee` decimal(19,2) DEFAULT NULL COMMENT '快递费实付金额',
  `actual_fare` decimal(19,2) DEFAULT NULL COMMENT '车费实付金额',
  `actual_outgoing_payment` decimal(19,2) DEFAULT NULL COMMENT '外发付款实付金额',
  `actual_repayment` decimal(19,2) DEFAULT NULL COMMENT '回金实付金额',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 地址',
  `advance_amount` decimal(19,2) DEFAULT NULL COMMENT '预付金额',
  `advance_received_amount` decimal(19,2) DEFAULT NULL COMMENT '预付实收金额',
  `contacts` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 联系人',
  `custom_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户编码',
  `custom_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户名称',
  `delivery_time` datetime(6) DEFAULT NULL COMMENT '交货时间',
  `express_collection_amount` decimal(19,2) DEFAULT NULL COMMENT '快递代收金额',
  `express_fee` decimal(19,2) DEFAULT NULL COMMENT '快递费',
  `express_received_amount` decimal(19,2) DEFAULT NULL COMMENT '快递代收实收金额',
  `fare` decimal(19,2) DEFAULT NULL COMMENT '车费',
  `final_payment_amount` decimal(19,2) DEFAULT NULL COMMENT '尾款金额',
  `final_received_amount` decimal(19,2) DEFAULT NULL COMMENT '尾款实收金额',
  `image_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '上传图片',
  `material_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '材料名称',
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '订单状态',
  `out_going` bit(1) DEFAULT NULL COMMENT '是否外发',
  `out_going_amount` decimal(19,2) DEFAULT NULL COMMENT '外发金额',
  `out_going_supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '外发供应商',
  `outgoing_payment` decimal(19,2) DEFAULT NULL COMMENT '外发付款金额',
  `process_num` bigint DEFAULT NULL COMMENT '件数',
  `processing_technology` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '加工工艺',
  `received_amount` decimal(19,2) DEFAULT NULL COMMENT '已收金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '加工备注',
  `repayment` decimal(19,2) DEFAULT NULL COMMENT '回金',
  `supplier_collection_amount` decimal(19,2) DEFAULT NULL COMMENT '供应商代收金额',
  `supplier_received_amount` decimal(19,2) DEFAULT NULL COMMENT '供应商代收实收金额',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT ' 电话号码',
  `total_amount` decimal(19,2) DEFAULT NULL COMMENT '总金额(包含回金、外发、税金）',
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '重量',
  `material_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '材料编码',
  `delete_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `sending_status` tinyint(1) DEFAULT '0' COMMENT '是否发货',
  `payment_status` tinyint(1) DEFAULT '0' COMMENT '是否收款',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单管理';

-- ----------------------------
-- Records of system_order
-- ----------------------------
BEGIN;
INSERT INTO `system_order` VALUES ('0a3837d8773725e841f1a536d6d9c732', '0', '2024-10-29 18:06:02.533000', '0', '2024-10-31 23:27:28.205000', NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'zz1', 'zz1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', 2.00, '12', 'z1', 0, 1, 0);
INSERT INTO `system_order` VALUES ('d6aa6c6a9890a50446de120a8f30ba66', '0', '2024-10-30 23:37:23.205000', '0', '2024-10-30 23:37:23.205000', 1.00, 2.00, 3.00, 4.00, '5', 5.00, 6.00, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', 11.00, '111', '', 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for tb_apk_version
-- ----------------------------
DROP TABLE IF EXISTS `tb_apk_version`;
CREATE TABLE `tb_apk_version` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `update_content` varchar(2000) DEFAULT NULL COMMENT '更新内容',
  `version_code` int DEFAULT NULL COMMENT '版本码',
  `version_name` varchar(20) DEFAULT NULL COMMENT '版本号',
  `package_name` varchar(255) DEFAULT NULL COMMENT '包名',
  `download_url` varchar(255) DEFAULT NULL COMMENT '下载地址',
  `app_name` varchar(255) DEFAULT NULL COMMENT 'APP名',
  `md5_value` varchar(255) DEFAULT NULL COMMENT 'MD5值',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `file_size` varchar(255) DEFAULT NULL COMMENT '文件大小',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `user_id` varchar(50) DEFAULT NULL COMMENT '上传人',
  `is_force` tinyint DEFAULT NULL COMMENT '是否强制安装',
  `is_ignorable` tinyint DEFAULT NULL COMMENT '是否可忽略该版本',
  `is_silent` tinyint DEFAULT NULL COMMENT '是否静默下载',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='APK版本管理';

-- ----------------------------
-- Records of tb_apk_version
-- ----------------------------
BEGIN;
INSERT INTO `tb_apk_version` VALUES (3, '新增v1.0.0版本', 445, '4.4.5', 'com.sup.android.superb', 'https://cdn.wowud1.cc/task/2023-01-27/ef79def81fca4249a2e3c065c9d8c93f.apk', '皮皮虾', 'aef5b96315f0eee773f8838738605a32', 'aef5b96315f0eee773f8838738605a32.apk', '51870114', '2023-01-27 17:00:35', '2023-01-27 17:00:35', '0', 0, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for tb_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_login_log`;
CREATE TABLE `tb_login_log` (
  `log_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录日志ID',
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `option_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '操作',
  `option_time` datetime DEFAULT NULL COMMENT '操作时间',
  `option_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '操作IP',
  `option_terminal` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '操作终端',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='登录日志管理';

-- ----------------------------
-- Records of tb_login_log
-- ----------------------------
BEGIN;
INSERT INTO `tb_login_log` VALUES ('02a8518ac0cb5241ab2a543d536059a9', 'admin', '用户退出成功', '2023-01-23 15:44:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('0635b2dfc870c682724a287ad63594d8', 'admin', '用户登录成功', '2023-01-28 13:31:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('067811b5276a9563c743e533e2bc8234', 'admin', '用户登录成功', '2024-10-26 00:29:57', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('0c98d023c1232a3050504a2697bd586a', 'admin', '用户登录成功', '2023-01-23 15:55:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('0d0e366a7ce73786f04478b355843d13', 'admin', '用户登录成功', '2024-10-26 00:53:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Safari/605.1.15');
INSERT INTO `tb_login_log` VALUES ('0fd6ba2a6f4981586a2209e891b1660a', 'admin', '用户退出成功', '2023-01-23 21:13:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('116be420907d6d43626c2c51c3ebe284', 'admin', '用户登录成功', '2023-01-28 17:57:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('12ceefc8da0e4b4fba94a23cdb71a873', 'admin', '用户登录成功', '2023-01-23 15:41:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('21c4063aaa0945b814a60c6145a8c913', 'admin', '用户登录失败', NULL, '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('227c9e89518229e5f6b0e5f2fcd1113e', 'admin', '用户登录成功[手机号]', '2023-01-28 18:25:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('25e44604b4ce1a4349f41b5ba572a978', 'admin', '用户退出成功', '2023-01-24 20:07:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('27af0f5d7d0ae1d34a2dca9f03fae484', NULL, '用户登录失败', NULL, '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('2e0eb73ea2dd6f20953d53d7a9f72b0d', 'admin', '用户登录失败', NULL, '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('3024e30b5bcee1e87e240f5823ba695e', 'admin', '用户登录成功', '2023-01-23 15:36:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('3536758cc8f5c841f8e8238a138a661f', 'admin', '用户登录成功', '2024-10-25 22:55:45', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('3fd8296b7fbb08117d653d28b6455144', 'admin', '用户登录成功', '2024-10-25 23:00:31', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('40b8e297e7d4364db7dd96dd7a80de4c', 'test', '用户登录成功', '2023-01-23 21:13:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('43874d58505abd7e67e74ebad14dfc9c', 'admin', '用户登录成功', '2023-01-25 14:30:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('441ba63f0ca357a520d7f1e61a4e6ee4', 'admin', '用户登录成功', '2023-01-28 18:24:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('46fbcf8c017e87fe8407bfdb195742f7', 'admin', '用户登录成功', '2023-01-23 15:46:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('502daa96b9c966902218784af60628bf', 'admin', '用户登录成功', '2024-10-25 23:20:27', '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('514adb2762a6d9e3725298131cc84645', 'test', '用户退出成功', '2023-01-23 21:13:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('5e234a3dca8f514c3892992fe302f1b3', 'admin', '用户登录成功', '2023-01-28 13:36:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('6302b74c9bed8674bfe9ef0985576dc1', 'test', '用户退出成功', '2023-01-24 20:07:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('6589640f61250c2a107b788dd7e774ca', 'admin', '用户登录成功', '2023-01-29 14:04:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('67082e76251ea6fd96444d9e8490ed8f', 'admin', '用户登录成功', '2023-01-23 15:39:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('7328fecb140f7d18d3710d28e73be9d1', 'admin', '用户登录成功', '2023-01-24 20:07:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('744fa2acd97af52a25290775d14365c2', 'admin', '用户登录成功', '2024-10-30 22:18:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('78248a471e0f8785d15aa4de6ce58e49', 'admin', '用户登录成功[手机号]', '2023-01-28 17:40:57', '0:0:0:0:0:0:0:1', 'PostmanRuntime/7.1.5');
INSERT INTO `tb_login_log` VALUES ('7c20d7315f7744b0db6e811700ec58b6', 'admin', '用户登录失败', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('7fbb3fb4677daf6c0c2406afe325e9ff', 'admin', '用户退出成功', '2023-01-23 15:39:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('819d9bb443d88ff884de2897950eeea9', 'admin', '用户登录成功', '2024-10-30 23:37:05', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('882fe48862bf8e8d10ec15e0195ca8fc', 'admin', '用户登录成功', '2023-01-23 21:13:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('888349d329d08fe812fe9e51b80fbe95', 'admin', '用户登录成功', '2023-01-26 16:11:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('8892540509afa3265f7699600a2f8bb4', 'admin', '用户退出成功', '2023-01-23 15:55:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('924f382efc5a7eaf8814b8ff2d966862', 'admin', '用户退出成功', '2023-01-23 15:41:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('942dc3d890ed07b135b36198c9d0a6c6', 'admin', '用户登录成功', '2024-10-28 17:16:29', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('9ddba3bf93926e1b2c6ce4ac77c5cab3', 'admin', '用户登录成功', '2023-01-29 14:01:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('a3e70585a385990ed42af5be51006865', 'admin', '用户登录成功', '2023-01-27 16:16:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('a54fd63759f55e29e7aa9639255e97e7', 'admin', '用户登录成功[手机号]', '2023-01-28 17:59:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('a59c1498299567bfdb86c8a9634bc737', 'admin', '用户退出成功', '2023-01-27 22:48:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('a9cca1773f9b79483df0ace2fdd92403', 'admin', '用户登录成功', '2023-01-24 15:02:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('ba7016dc4b2ae16909fa8bc38faaf1b1', 'admin', '用户登录失败', NULL, '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('bf1d84eed14ab10cd79d61cd2522e423', 'admin', '用户登录成功', '2024-10-26 00:22:08', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('bf2d72c9e5ba4d1a5de12a448f7ddc48', 'admin', '用户登录成功', '2024-10-25 22:23:36', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('c91275151fd6776e65c5cab546c0b07e', 'admin', '用户登录成功', '2024-10-26 00:04:00', '192.168.1.18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('d01440fa28be7d0dfa0dff32b7b638d7', 'admin', '用户登录成功', '2023-01-28 13:56:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('d804774b0e2249542c4a29b950853362', 'test', '用户登录成功', '2023-01-24 20:07:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('d859fb30f7488e826f1052185c876808', 'admin', '用户登录成功', '2023-01-29 13:53:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('db34a158120f91a3fef7f91fec0d2472', 'admin', '用户登录成功', '2023-01-27 22:48:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36');
INSERT INTO `tb_login_log` VALUES ('e1be67a4f4cfeed527904f5beb5c23ef', 'admin', '用户登录失败', NULL, '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('e2b10eeff126e0f0b100bb5af7320d0c', NULL, '用户登录失败', NULL, '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('f330789c1ecabecf61b82b56c834b6a0', 'admin', '用户登录成功', '2024-11-04 16:52:57', '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
INSERT INTO `tb_login_log` VALUES ('fb4db2d11706acda832d8e9d23baa023', 'admin', '用户登录失败', NULL, '127.0.0.1', 'ApiPOST Runtime +https://www.apipost.cn');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
