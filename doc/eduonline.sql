/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : eduonline
Target Host     : localhost:3306
Target Database : eduonline
Date: 2018-03-11 14:51:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '绯荤粺绠＄悊', null, null, '0', 'fa fa-cog', '0', '2017-09-16 23:13:52', '2017-09-16 23:13:55');
INSERT INTO `sys_menu` VALUES ('2', '1', '绠＄悊鍛樺垪琛�', 'sys/user.flt', null, '1', 'fa fa-user', '1', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('3', '1', '瑙掕壊绠＄悊', 'sys/role.flt', null, '1', 'fa fa-user-secret', '2', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('4', '1', '鑿滃崟绠＄悊', 'sys/menu.flt', null, '1', 'fa fa-th-list', '3', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL鐩戞帶', 'druid/sql.html', null, '1', 'fa fa-bug', '4', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('15', '2', '鏌ョ湅', null, 'sys:user:list,sys:user:info', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('16', '2', '鏂板', null, 'sys:user:save,sys:role:select', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('17', '2', '淇敼', null, 'sys:user:update,sys:role:select', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('18', '2', '鍒犻櫎', null, 'sys:user:delete', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('19', '3', '鏌ョ湅', null, 'sys:role:list,sys:role:info', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('20', '3', '鏂板', null, 'sys:role:save,sys:menu:perms', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('21', '3', '淇敼', null, 'sys:role:update,sys:menu:perms', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('22', '3', '鍒犻櫎', null, 'sys:role:delete', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('23', '4', '鏌ョ湅', null, 'sys:menu:list,sys:menu:info', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('24', '4', '鏂板', null, 'sys:menu:save,sys:menu:select', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('25', '4', '淇敼', null, 'sys:menu:update,sys:menu:select', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('26', '4', '鍒犻櫎', null, 'sys:menu:delete', '2', null, '0', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('27', '1', '鍙傛暟绠＄悊', 'sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('29', '1', '绯荤粺鏃ュ織', 'sys/log.flt', 'sys:log:list', '1', 'fa fa-file-text-o', '7', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('30', '1', '鏂囦欢涓婁紶', 'sys/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6', '2017-09-16 22:45:14', '2017-09-16 22:45:19');
INSERT INTO `sys_menu` VALUES ('33', '40', '瑙嗛瀹℃牳', 'video/examine.flt', null, '1', 'fa fa-eye', '1', '2017-11-12 17:20:56', '2017-11-12 17:20:56');
INSERT INTO `sys_menu` VALUES ('34', '40', '鎺ㄨ崘绠＄悊', 'video/videoreCommend.flt', null, '1', 'fa fa-file-video-o', '2', '2017-11-12 17:49:16', '2018-03-02 00:44:17');
INSERT INTO `sys_menu` VALUES ('35', '0', '鐢ㄦ埛绠＄悊', null, null, '0', 'fa fa-user-o', '2', '2017-11-12 18:16:11', '2017-11-12 18:16:11');
INSERT INTO `sys_menu` VALUES ('36', '35', '鐢ㄦ埛鍒楄〃', 'user/userList.flt', null, '1', 'fa fa-users', '0', '2017-11-12 18:17:35', '2017-11-12 18:17:35');
INSERT INTO `sys_menu` VALUES ('38', '40', '鍒嗙被绠＄悊', 'video/sort.flt', '', '1', 'fa fa-sort', '0', '2018-02-08 00:32:11', '2018-03-07 17:28:48');
INSERT INTO `sys_menu` VALUES ('39', '40', '娣诲姞璇剧▼', 'video/addCourses.flt', null, '1', 'fa fa-newspaper-o', '0', '2018-02-10 08:52:32', '2018-03-07 17:29:58');
INSERT INTO `sys_menu` VALUES ('40', '0', 'App鍐呭绠＄悊', null, null, '0', 'fa fa-mobile-phone', '1', '2018-03-01 05:17:46', '2018-03-07 17:27:34');
INSERT INTO `sys_menu` VALUES ('41', '40', '鍏ㄩ儴璇剧▼', 'video/allCourses.flt', null, '1', 'fa fa-th-large', '3', '2018-03-07 17:34:05', '2018-03-07 17:34:05');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '瓒呯骇绠＄悊鍛�', '鎷ユ湁鎵�鏈夋潈闄�', '1', '2017-09-16 22:45:14', '2017-11-12 16:01:15');
INSERT INTO `sys_role` VALUES ('3', 'test', 'test', '1', '2017-11-12 15:36:44', '2017-11-12 15:55:46');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('15', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('16', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('17', '1', '5');
INSERT INTO `sys_role_menu` VALUES ('18', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('19', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('20', '1', '8');
INSERT INTO `sys_role_menu` VALUES ('21', '1', '9');
INSERT INTO `sys_role_menu` VALUES ('22', '1', '10');
INSERT INTO `sys_role_menu` VALUES ('23', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('24', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('25', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('26', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('27', '1', '27');
INSERT INTO `sys_role_menu` VALUES ('28', '1', '30');
INSERT INTO `sys_role_menu` VALUES ('29', '1', '29');
INSERT INTO `sys_role_menu` VALUES ('33', '3', '1');
INSERT INTO `sys_role_menu` VALUES ('34', '3', '5');
INSERT INTO `sys_role_menu` VALUES ('35', '3', '29');
INSERT INTO `sys_role_menu` VALUES ('36', '3', '1');
INSERT INTO `sys_role_menu` VALUES ('37', '3', '2');
INSERT INTO `sys_role_menu` VALUES ('38', '3', '15');
INSERT INTO `sys_role_menu` VALUES ('39', '3', '16');
INSERT INTO `sys_role_menu` VALUES ('40', '3', '17');
INSERT INTO `sys_role_menu` VALUES ('41', '3', '18');
INSERT INTO `sys_role_menu` VALUES ('42', '3', '5');
INSERT INTO `sys_role_menu` VALUES ('43', '3', '29');
INSERT INTO `sys_role_menu` VALUES ('44', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('45', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('46', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('47', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('48', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('49', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('50', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('51', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('52', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('53', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('54', '1', '23');
INSERT INTO `sys_role_menu` VALUES ('55', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('56', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('57', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('58', '1', '5');
INSERT INTO `sys_role_menu` VALUES ('60', '4', '1');
INSERT INTO `sys_role_menu` VALUES ('61', '5', '1');
INSERT INTO `sys_role_menu` VALUES ('63', '6', '1');
INSERT INTO `sys_role_menu` VALUES ('65', '7', '1');
INSERT INTO `sys_role_menu` VALUES ('67', '8', '1');
INSERT INTO `sys_role_menu` VALUES ('69', '9', '1');
INSERT INTO `sys_role_menu` VALUES ('71', '10', '1');
INSERT INTO `sys_role_menu` VALUES ('73', '11', '1');
INSERT INTO `sys_role_menu` VALUES ('75', '12', '1');
INSERT INTO `sys_role_menu` VALUES ('77', '13', '1');
INSERT INTO `sys_role_menu` VALUES ('79', '14', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'admin@email.com', '15622283782', '1', null, '2017-09-16 11:11:11', '2017-09-16 22:20:53');
INSERT INTO `sys_user` VALUES ('7', 'test1', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'wrw@email.com', '15622283782', null, '1', '2018-03-01 05:17:46', '2018-03-01 05:17:46');
INSERT INTO `sys_user` VALUES ('13', 'wrw', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', null, null, '1', '1', '2017-11-12 15:00:46', '2017-11-12 15:00:46');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('6', '1', '1');
INSERT INTO `sys_user_role` VALUES ('15', '6', '1');
INSERT INTO `sys_user_role` VALUES ('16', '7', '1');

-- ----------------------------
-- Table structure for us_attachment
-- ----------------------------
DROP TABLE IF EXISTS `us_attachment`;
CREATE TABLE `us_attachment` (
  `id` bigint(200) NOT NULL,
  `filename` varchar(255) NOT NULL COMMENT '鏂囦欢鍚�',
  `path` varchar(255) NOT NULL COMMENT '瑙嗛鍦板潃',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for us_course
-- ----------------------------
DROP TABLE IF EXISTS `us_course`;
CREATE TABLE `us_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '璇剧▼鍚�',
  `introduce` varchar(200) NOT NULL COMMENT '绠�浠�',
  `create_time` date NOT NULL,
  `modify_time` date DEFAULT NULL,
  `pic_url` varchar(200) DEFAULT NULL COMMENT '璇剧▼灏侀潰',
  `free_state` varchar(2) NOT NULL COMMENT '鏄惁鍏嶈垂',
  `cover_id` bigint(20) DEFAULT NULL,
  `salary` decimal(5,2) DEFAULT NULL,
  `commend_state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:鏈帹鑽�,1:鎺ㄨ崘',
  `offlinecourse_id` bigint(20) DEFAULT NULL,
  `state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:姝ｅ父,1:鍒犻櫎',
  PRIMARY KEY (`id`),
  KEY `cover_id` (`cover_id`),
  KEY `offlinecourse_id` (`offlinecourse_id`),
  CONSTRAINT `us_course_ibfk_1` FOREIGN KEY (`cover_id`) REFERENCES `us_cover` (`id`),
  CONSTRAINT `us_course_ibfk_2` FOREIGN KEY (`offlinecourse_id`) REFERENCES `us_offlinecourse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_course
-- ----------------------------

-- ----------------------------
-- Table structure for us_course_sort
-- ----------------------------
DROP TABLE IF EXISTS `us_course_sort`;
CREATE TABLE `us_course_sort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) NOT NULL,
  `sort_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `sort_id` (`sort_id`),
  CONSTRAINT `us_course_sort_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `us_course` (`id`),
  CONSTRAINT `us_course_sort_ibfk_2` FOREIGN KEY (`sort_id`) REFERENCES `us_sort` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_course_sort
-- ----------------------------

-- ----------------------------
-- Table structure for us_course_video
-- ----------------------------
DROP TABLE IF EXISTS `us_course_video`;
CREATE TABLE `us_course_video` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(200) NOT NULL,
  `video_id` bigint(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `us_course_video_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `us_course` (`id`),
  CONSTRAINT `us_course_video_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `us_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_course_video
-- ----------------------------

-- ----------------------------
-- Table structure for us_cover
-- ----------------------------
DROP TABLE IF EXISTS `us_cover`;
CREATE TABLE `us_cover` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `picurl` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `modifytime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_cover
-- ----------------------------

-- ----------------------------
-- Table structure for us_offlinecourse
-- ----------------------------
DROP TABLE IF EXISTS `us_offlinecourse`;
CREATE TABLE `us_offlinecourse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '娲诲姩鏍囬',
  `cretate_time` datetime NOT NULL COMMENT '鍒涘缓鏃堕棿',
  `start_time` date NOT NULL COMMENT '娲诲姩寮�濮嬫椂闂�',
  `end_time` date NOT NULL COMMENT '娲诲姩缁撴潫鏃堕棿',
  `place` varchar(255) NOT NULL COMMENT '娲诲姩鍦扮偣',
  `detail` varchar(255) NOT NULL COMMENT '娲诲姩璇︽儏',
  `state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:姝ｅ父,1:鍒犻櫎',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_offlinecourse
-- ----------------------------

-- ----------------------------
-- Table structure for us_order
-- ----------------------------
DROP TABLE IF EXISTS `us_order`;
CREATE TABLE `us_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) NOT NULL COMMENT '璁㈠崟鍙�',
  `user_id` bigint(20) NOT NULL COMMENT '鎴风敤Id',
  `create_time` datetime NOT NULL,
  `state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:寰呮敮浠� 1:浜ゆ槗鎴愬姛 2:鍙栨秷璁㈠崟',
  `summoney` decimal(10,0) DEFAULT NULL,
  `payment_type` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:鏈敮浠�,1:寰俊,2:鏀粯瀹�',
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `us_order_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `us_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_order
-- ----------------------------

-- ----------------------------
-- Table structure for us_order_course
-- ----------------------------
DROP TABLE IF EXISTS `us_order_course`;
CREATE TABLE `us_order_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `us_order_course_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `us_order` (`id`),
  CONSTRAINT `us_order_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `us_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_order_course
-- ----------------------------

-- ----------------------------
-- Table structure for us_shopcar
-- ----------------------------
DROP TABLE IF EXISTS `us_shopcar`;
CREATE TABLE `us_shopcar` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(200) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` bigint(200) NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:鏈鐞�,2:宸插垹闄�',
  `order_state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:鏈彁浜�.1:宸叉彁浜�',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `course_id` (`course_id`),
  CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `us_user` (`id`),
  CONSTRAINT `us_shopcar_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `us_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of us_shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for us_sort
-- ----------------------------
DROP TABLE IF EXISTS `us_sort`;
CREATE TABLE `us_sort` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `create_time` date NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) NOT NULL COMMENT '0:涓�绾у垎绫�,1: 浜岀骇鍒嗙被,2:涓夌骇鍒嗙被',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `us_sort_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `us_sort` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_sort
-- ----------------------------
INSERT INTO `us_sort` VALUES ('1', '鍔炲叕鏁堢巼', '2018-02-07', null, null, '0');
INSERT INTO `us_sort` VALUES ('2', '鑱屼笟鍙戝睍', '2018-02-07', null, null, '0');
INSERT INTO `us_sort` VALUES ('3', '缂栫▼寮�鍙�', '2018-02-07', null, null, '0');
INSERT INTO `us_sort` VALUES ('4', '浜у搧鍜岃璁�', '2018-02-07', null, null, '0');
INSERT INTO `us_sort` VALUES ('5', '鐢熸椿鏂瑰紡', '2018-02-07', null, null, '0');
INSERT INTO `us_sort` VALUES ('6', '浜插瓙鏁欒偛', '2018-02-07', null, null, '0');
INSERT INTO `us_sort` VALUES ('7', '璇█瀛︿範', '2018-02-07', null, null, '0');
INSERT INTO `us_sort` VALUES ('8', '鍔炲叕杞欢', '2018-02-07', null, '1', '1');
INSERT INTO `us_sort` VALUES ('9', '宸ヤ綔鏁堢巼', '2018-02-07', null, '1', '1');
INSERT INTO `us_sort` VALUES ('10', '鐢佃剳鍩虹', '2018-02-07', null, '1', '1');
INSERT INTO `us_sort` VALUES ('11', 'PPT', '2018-02-07', null, '8', '2');
INSERT INTO `us_sort` VALUES ('12', 'Excel', '2018-02-07', null, '8', '2');
INSERT INTO `us_sort` VALUES ('13', 'Word', '2018-02-07', null, '8', '2');
INSERT INTO `us_sort` VALUES ('15', 'Project', '2018-02-07', null, '10', '2');
INSERT INTO `us_sort` VALUES ('16', 'Outlook', '2018-02-07', null, '10', '2');
INSERT INTO `us_sort` VALUES ('17', 'Keynote', '2018-02-07', null, '10', '2');
INSERT INTO `us_sort` VALUES ('18', '鏇村杞欢', '2018-02-07', null, '10', '2');
INSERT INTO `us_sort` VALUES ('19', '鏃堕棿绠＄悊', '2018-02-07', null, '9', '2');
INSERT INTO `us_sort` VALUES ('20', '鎬濈淮瀵煎浘', '2018-02-07', null, '9', '2');
INSERT INTO `us_sort` VALUES ('21', '鍩虹鎿嶄綔', '2018-02-07', null, '10', '2');
INSERT INTO `us_sort` VALUES ('22', '甯哥敤宸ュ叿', '2018-02-07', null, '10', '2');
INSERT INTO `us_sort` VALUES ('23', '姹傝亴搴旇仒', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('26', '涓汉鎻愬崌', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('28', '鑱屽満鑳藉姏', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('29', '涓撲笟宀椾綅', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('30', '绠＄悊鑳藉姏', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('31', '鑱屼笟鑰冭瘯', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('32', '甯傚満钀ラ攢', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('33', '鍟嗕笟鍒涗笟', '2018-02-07', null, '2', '1');
INSERT INTO `us_sort` VALUES ('34', '缂栫▼璇█', '2018-02-07', null, '3', '1');
INSERT INTO `us_sort` VALUES ('35', '浜哄伐鏅鸿兘涓庢暟鎹�', '2018-02-07', null, '3', '1');
INSERT INTO `us_sort` VALUES ('36', '鍓嶇寮�鍙�', '2018-02-07', null, '3', '1');
INSERT INTO `us_sort` VALUES ('37', '鍚庣寮�鍙�', '2018-02-07', null, '3', '1');
INSERT INTO `us_sort` VALUES ('38', '绉诲姩寮�鍙�', '2018-02-07', null, '3', '1');
INSERT INTO `us_sort` VALUES ('39', '绯荤粺/纭欢', '2018-02-07', null, '3', '1');
INSERT INTO `us_sort` VALUES ('40', '浜у搧绛栧垝', '2018-02-07', null, '4', '1');
INSERT INTO `us_sort` VALUES ('41', '浜у搧杩愮淮', '2018-02-07', null, '4', '1');
INSERT INTO `us_sort` VALUES ('42', '骞抽潰璁捐', '2018-02-07', null, '4', '1');
INSERT INTO `us_sort` VALUES ('43', '鐢ㄦ埛浣撻獙', '2018-02-07', null, '4', '1');
INSERT INTO `us_sort` VALUES ('44', '璁捐杞欢', '2018-02-07', null, '4', '1');
INSERT INTO `us_sort` VALUES ('45', '鍔ㄦ极璁捐', '2018-02-07', null, '4', '1');
INSERT INTO `us_sort` VALUES ('46', '娓告垙缇庢湳', '2018-02-07', null, '4', '1');
INSERT INTO `us_sort` VALUES ('47', '鐭ヨ瘑绠＄悊', '2018-02-07', null, '26', '2');
INSERT INTO `us_sort` VALUES ('48', '涔犳儻鍏绘垚', '2018-02-07', null, '26', '2');
INSERT INTO `us_sort` VALUES ('49', '婕旇涓庡彛鎵�', '2018-02-07', null, '26', '2');
INSERT INTO `us_sort` VALUES ('50', '涓汉鍝佺墝', '2018-02-07', null, '26', '2');
INSERT INTO `us_sort` VALUES ('51', '鎬濈淮鏂瑰紡', '2018-02-07', null, '26', '2');

-- ----------------------------
-- Table structure for us_user
-- ----------------------------
DROP TABLE IF EXISTS `us_user`;
CREATE TABLE `us_user` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `account` varchar(11) NOT NULL COMMENT '璐﹀彿',
  `password` varchar(32) NOT NULL COMMENT '瀵嗙爜',
  `user_name` varchar(12) DEFAULT NULL COMMENT '鏄电О',
  `state` varchar(2) DEFAULT '0' COMMENT '0:姝ｅ父 1:绂佺敤',
  `create_time` datetime NOT NULL COMMENT '鍒涘缓鏃堕棿',
  `modify_time` datetime DEFAULT NULL COMMENT '淇敼鏃堕棿',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_user
-- ----------------------------

-- ----------------------------
-- Table structure for us_user_attend
-- ----------------------------
DROP TABLE IF EXISTS `us_user_attend`;
CREATE TABLE `us_user_attend` (
  `id` bigint(200) NOT NULL,
  `user_id` bigint(200) NOT NULL,
  `course_id` bigint(200) NOT NULL,
  `create_time` date NOT NULL COMMENT '鍙傚姞鏃堕棿',
  `attend_state` varchar(2) NOT NULL COMMENT '鍙傚姞鐨勭被鍨嬧�斺��0:绾夸笂,1:绾夸笅',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `us_user_attend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `us_user` (`id`),
  CONSTRAINT `us_user_attend_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `us_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_user_attend
-- ----------------------------

-- ----------------------------
-- Table structure for us_user_collection
-- ----------------------------
DROP TABLE IF EXISTS `us_user_collection`;
CREATE TABLE `us_user_collection` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(200) NOT NULL,
  `course_id` bigint(200) NOT NULL,
  `create_time` date NOT NULL COMMENT '鏀惰棌鏃堕棿',
  `collection` varchar(2) NOT NULL DEFAULT '0' COMMENT '0锛氭湭鏀惰棌锛�1锛氬凡鏀惰棌',
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `us_user_collection_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `us_user` (`id`),
  CONSTRAINT `us_user_collection_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `us_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_user_collection
-- ----------------------------

-- ----------------------------
-- Table structure for us_user_join_plan
-- ----------------------------
DROP TABLE IF EXISTS `us_user_join_plan`;
CREATE TABLE `us_user_join_plan` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(200) NOT NULL COMMENT '鐢ㄦ埛id',
  `course_id` bigint(200) NOT NULL COMMENT '绋嬭id',
  `create_time` datetime NOT NULL COMMENT '鍒涘缓鏃堕棿',
  `modify_time` datetime DEFAULT NULL COMMENT '淇敼鏃堕棿',
  `clocksetting_state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:鏈缃� 1:宸茶缃�',
  `join_state` varchar(2) NOT NULL DEFAULT '0' COMMENT '鏄惁鍔犲叆0锛氭湭鍔犲叆1锛氬凡鍔犲叆',
  `clock_state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0锛氭湭鍚敤 1锛氬凡鍚姩',
  `content` varchar(255) DEFAULT NULL COMMENT '鎻愮ず鍐呭',
  `hour` varchar(255) DEFAULT NULL COMMENT '灏忔椂 0~23',
  `miuntes` varchar(255) DEFAULT NULL COMMENT '鍒嗛挓 0~59',
  `daysofweek` varchar(255) DEFAULT NULL COMMENT '[1,2,3,4,5,6,7]--浠ｈ〃鏃ャ�佷竴銆佷簩銆佷笁銆佸洓銆佷簲銆佸叚',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `us_user_join_plan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `us_user` (`id`),
  CONSTRAINT `us_user_join_plan_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `us_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_user_join_plan
-- ----------------------------

-- ----------------------------
-- Table structure for us_user_offlinecourse
-- ----------------------------
DROP TABLE IF EXISTS `us_user_offlinecourse`;
CREATE TABLE `us_user_offlinecourse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `offlinecourse_id` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `state` varchar(2) NOT NULL DEFAULT '0' COMMENT '0:姝ｅ父,1:',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `offlinecourse_id` (`offlinecourse_id`),
  CONSTRAINT `us_user_offlinecourse_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `us_user` (`id`),
  CONSTRAINT `us_user_offlinecourse_ibfk_2` FOREIGN KEY (`offlinecourse_id`) REFERENCES `us_offlinecourse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_user_offlinecourse
-- ----------------------------

-- ----------------------------
-- Table structure for us_user_own_courses
-- ----------------------------
DROP TABLE IF EXISTS `us_user_own_courses`;
CREATE TABLE `us_user_own_courses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `coursesIds` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `modity_time` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT '0' COMMENT '0:姝ｅ父,1:绂佺敤',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `us_user_own_courses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `us_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_user_own_courses
-- ----------------------------

-- ----------------------------
-- Table structure for us_video
-- ----------------------------
DROP TABLE IF EXISTS `us_video`;
CREATE TABLE `us_video` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '瑙嗛鏍囬',
  `create_time` datetime NOT NULL COMMENT '涓婁紶鏃堕棿',
  `modify_time` datetime DEFAULT NULL COMMENT '淇敼鏃堕棿',
  `path` varchar(255) NOT NULL COMMENT '灏侀潰瀛樻斁浣嶇疆',
  `examine_state` varchar(2) DEFAULT NULL COMMENT '瀹℃牳鐘舵��',
  `attachment_id` bigint(200) DEFAULT NULL COMMENT '闄勪欢锛堣棰戞湰浣擄級',
  `state` varchar(255) DEFAULT '0' COMMENT '0:姝ｅ父 1:鍒犻櫎',
  PRIMARY KEY (`id`),
  KEY `attachment_id` (`attachment_id`),
  CONSTRAINT `us_video_ibfk_1` FOREIGN KEY (`attachment_id`) REFERENCES `us_attachment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_video
-- ----------------------------
