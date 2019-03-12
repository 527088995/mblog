/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_member

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:17:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `data_base` tinyint(2) DEFAULT NULL COMMENT '当前用户数据所在数据库编号',
  `data_table` tinyint(2) DEFAULT NULL COMMENT '当前用户数据所在表编号',
  `user_name` varchar(32) DEFAULT '0' COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码   （登录密码至少8位字母+数字）',
  `salt` varchar(32) NOT NULL COMMENT '密码盐  UUID',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `invite_code` bigint(10) NOT NULL COMMENT '邀请码  10位随机数',
  `level_id` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户等级  0：粉丝 0以上推广员',
  `freeze_status` tinyint(2) DEFAULT '1' COMMENT '冻结状态  1-未冻结 2-冻结',
  `auth_status` tinyint(2) DEFAULT '1' COMMENT '实名状态  1-未实名 2-已实名',
  `identity_card` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `ref_member_id` bigint(32) DEFAULT NULL COMMENT '邀请人',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` varchar(64) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `province_code` varchar(100) DEFAULT '' COMMENT '省编号',
  `city_code` varchar(100) DEFAULT '' COMMENT '市编号',
  `member_source` tinyint(1) DEFAULT '0' COMMENT '会员来源 0：主动关注 1：二维码',
  `province_name` varchar(100) DEFAULT '' COMMENT '省名称',
  `city_name` varchar(100) DEFAULT '' COMMENT '市名称',
  `real_name` varchar(64) DEFAULT '' COMMENT '姓名',
  `nick_name` varchar(32) DEFAULT NULL COMMENT '用户昵称',
  `pay_password` varchar(32) DEFAULT '' COMMENT '支付密码 （6位纯数字）',
  `sex` tinyint(1) DEFAULT '0' COMMENT '性别 1:男 2:女',
  `qq` varchar(16) DEFAULT NULL COMMENT 'QQ号码',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `profession` tinyint(2) DEFAULT '0' COMMENT '职业',
  `generation` tinyint(2) DEFAULT '0' COMMENT '推广员代数',
  `store_reward_level_id` bigint(32) DEFAULT NULL COMMENT '店铺奖励等级ID',
  `to_promoter_date` datetime DEFAULT NULL COMMENT '成为推广员时间',
  `member_code` varchar(32) DEFAULT NULL COMMENT '用户编号   暂时同memberId',
  `head_image` varchar(255) DEFAULT NULL COMMENT '头像',
  `wechat_number` varchar(255) DEFAULT NULL COMMENT '微信号',
  `wechat_code_image` varchar(255) DEFAULT NULL COMMENT '微信二维码',
  `phone_view` tinyint(1) DEFAULT '0' COMMENT '是否显示手机号  1-显示   0-不显示   默认不显示',
  `wechat_view` tinyint(1) DEFAULT '0' COMMENT '是否显示微信号  1-显示   0-不显示   默认不显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='会员信息表';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1551013568393', null, null, '13280888572', 'd71a5b527db9a3e8e721bb6a7830491c', '67e4df6d97d5473f84eda679befc13ff', '13280888572', '3280888572', '1', '1', '1', null, null, null, '1551013568393', '2019-02-24 21:06:08', 'system', '2019-02-28 18:34:00', '0', '370000', '370200', '0', '山东省', '青岛市', '张三', null, '3fe8fabd760dd2e56fab408696587356', '1', '1111', '1986-02-01 15:47:29', '3', '1', '4', '2019-02-14 18:56:39', null, null, null, null, null, null);
INSERT INTO `member` VALUES ('1551013626628', null, null, '15762260317', '505e52197d25d7a4faefb5ac843ba734', '319a8b999bef4f57aed5fe12f9d833f9', '15762260317', '5762260317', '1', '1', '1', null, '1551013568393', null, '1551013626628', '2019-02-24 21:07:07', 'system', '2019-03-08 18:37:52', '0', '370000', '370200', '0', '山东省', '青岛市', '李四', null, null, '2', '2222', '1990-06-06 15:47:49', '4', '2', '1', '2019-02-20 18:56:43', null, null, null, null, null, null);
INSERT INTO `member` VALUES ('1551077750498', null, null, '13964894533', 'fb127a66c72458783a630c8963ca4b47', '9358c60e2c0f49989e080b3e5a6dbe38', '13964894533', '3964894533', '1', '1', '1', null, '1551013626628', null, '1551077750498', '2019-02-25 14:55:51', 'system', '2019-03-08 18:37:42', '0', '370000', '370200', '0', '山东省', '青岛市', '王五', null, '713820c96ccd09b0b52cc30837eb583a', '1', '3333', '1990-12-28 15:47:49', '1', '3', '2', '2019-02-26 18:56:57', null, null, null, null, null, null);
INSERT INTO `member` VALUES ('1551078156683', null, null, '18363904262', '', '65eca638b522492d9f32607ace1cc995', '18363904262', '8363904262', '0', '1', '1', null, '1551013568393', null, '1551078156683', '2019-02-25 15:02:37', '1551078156683', '2019-02-25 15:02:37', '0', '370000', '370200', '0', '山东省', '青岛市', '赵六', null, null, '1', '4444', '1990-07-21 15:47:49', '5', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('1551144311299', null, null, '18888888888', '5ee30bbae58b757da428229caae83cd2', '2a260121e8db4adf9b7fd3692364b0a4', '18888888888', '8888888888', '0', '1', '1', null, '1551013568393', null, '1551144311299', '2019-02-26 09:25:11', '1551144311299', '2019-02-26 09:25:11', '0', '370000', '370200', '0', '山东省', '青岛市', '小明', null, '5ee30bbae58b757da428229caae83cd2', '1', '5555', '1991-11-01 15:47:49', '7', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('1551239969603', null, null, '13333333333', '', '2a2f027c49a24f0193db874b66ab6bbd', '13333333333', '3333333333', '1', '1', '1', null, '1551013568393', null, '1551239969603', '2019-02-27 11:59:30', '1551239969603', '2019-02-27 11:59:30', '0', '', '', '0', '', '', '', null, '', '0', null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('1551240048613', null, null, '15777777777', '', '14369a8b88b94921b3ef616822edc06f', '15777777777', '5777777777', '1', '1', '1', null, '1551013568393', null, '1551240048613', '2019-02-27 12:00:49', '1551240048613', '2019-02-27 12:00:49', '0', '', '', '0', '', '', '', null, '', '0', null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('1551259692159', null, null, '15555555555', 'd54c6f3025c22bfa4a2b0948aa5d761d', '0661dc99c7a14c08901d6496588d8fd2', '15555555555', '5555555555', '1', '1', '1', null, '1551013568393', null, '1551259692159', '2019-02-27 17:28:12', '1551259692159', '2019-02-27 17:28:12', '0', '', '', '0', '', '', '负担', 'kaf', '530b13cc89d210263f953751ca8f5001', '0', '791471021', null, '0', '0', null, null, null, null, '791471021', null, null, null);
INSERT INTO `member` VALUES ('1551317302002', null, null, '16666666666', '', '0482bb0df2d740a2a26b5b3d52138a03', '16666666666', '6666666666', '1', '1', '1', null, '1551013568393', null, '1551317302002', '2019-02-28 09:28:22', '1551317302002', '2019-02-28 09:28:22', '0', '', '', '0', '', '', '', null, '', '0', null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('307944493758697472', null, null, '15711111111', '046bcafa949e9a0f16f8959e408f4e8a', 'fbe6b2cc281d48fda10a2f051356e983', '15711111111', '6063546967', '1', '1', '1', null, '1551013568393', null, '307944493758697472', '2019-02-28 18:21:29', '307944493758697472', '2019-02-28 18:21:29', '0', '', '', '0', '', '', '', null, '', '0', null, null, '0', '0', null, null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('307984731062956032', null, null, '15722222222', '', 'ecbe0e96548342b5a062070a35ff7ae1', '15722222222', '2424977620', '1', '1', '1', null, '1551013568393', null, '307984731062956032', '2019-02-28 21:01:22', 'system', '2019-03-08 10:13:22', '0', '', '', '0', '', '', '', null, '', '0', null, null, '0', '0', '3', null, null, null, null, null, null, null);
INSERT INTO `member` VALUES ('308605403158433792', null, null, '19999999999', 'e078a2db10ec69c87126af76d8bb60f2', 'dbefacc39b2c42acb0799154d8cc5897', '19999999999', '8465291285', '0', '1', '1', null, '1551013568393', null, '308605403158433792', '2019-03-02 14:07:42', '308605403158433792', '2019-03-02 14:07:42', '0', '', '', '0', '', '', '', '19999999999', '', '0', null, null, '0', '0', null, null, '308605403158433792', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('310003271362564096', null, null, '15253227721', 'd3df2c39a7188b482f0557b56d50cf53', 'a91b82e78dad4c4e94578ed5a4db6d0f', '15253227721', '5941942977', '1', '1', '1', null, null, null, '310003271362564096', '2019-03-06 10:42:19', 'system', '2019-03-06 10:58:47', '0', '', '', '0', '', '', '', '15253227723', 'a452655cd4cc27572ca056f30eeed800', '0', null, null, '0', '0', '1', null, '310003271362564096', null, 'm123456', null, '1', '0');
INSERT INTO `member` VALUES ('310015034023890944', null, null, '15253227724', '3b4365f3e99fa9681930a38fab73ce9b', 'e21675422e554f1ab952c62bb8df35a9', '15253227724', '7281644901', '0', '1', '1', null, null, null, '310015034023890944', '2019-03-06 11:29:04', '310015034023890944', '2019-03-06 11:29:04', '0', '', '', '0', '', '', '', '15253227724', '', '0', null, null, '0', '0', null, null, '310015034023890944', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('310724947817680896', null, null, '15253227723', '06d68e9cc854b0f73a0d926aa564a5ff', 'ce01641032b54405b1b6c08de5fb60bf', '15253227723', '4760529212', '0', '1', '1', null, null, null, '310724947817680896', '2019-03-08 10:30:01', '310724947817680896', '2019-03-08 10:30:01', '0', '', '', '0', '', '', '', 'mu', '', '0', null, null, '0', '0', null, null, '310724947817680896', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('310791941720002560', null, null, '18366210826', '424706cf4b6920daad4aefa69d5f0449', '6facb7e1e9474a9dbeb323532eb37af1', '18366210826', '5103477531', '1', '1', '1', null, null, null, '310791941720002560', '2019-03-08 14:56:13', '310791941720002560', '2019-03-08 14:56:13', '0', '', '', '0', '', '', '', 'lipeng', '', '0', null, null, '0', '0', '0', null, '310791941720002560', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('310799423121022976', null, null, '15192509019', '12a22150b9d5b0c87684a7e387c2e5b2', 'd3e0b17a14564d2d982c7cc86069d414', '15192509019', '742482018', '0', '1', '1', null, '1551144311299', null, '310799423121022976', '2019-03-08 15:25:57', '310799423121022976', '2019-03-08 15:25:57', '0', '', '', '0', '', '', '', 'suncaoyong', '', '0', null, null, '0', '0', null, null, '310799423121022976', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('310818451701002240', null, null, '18899996666', '86207c870e3f4587d4ec92cd09a2323b', '34654a27303a4982ba3bb7bf6ec93c87', '18899996666', '8260443901', '1', '1', '1', null, '310791941720002560', null, '310818451701002240', '2019-03-08 16:41:34', '310818451701002240', '2019-03-08 16:41:34', '0', '', '', '0', '', '', '', '古德曼', '', '0', null, null, '0', '0', '4', null, '310818451701002240', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311104201541701632', '3', '2', '18811111111', 'd4fb09b13c2988b9ae5fd473085c459e', '11631e25d7584aa289b5723018587aa6', '18811111111', '7646816545', '0', '1', '1', null, '308716350082150400', null, '311104201541701632', '2019-03-09 11:37:02', '311104201541701632', '2019-03-09 11:37:02', '0', '', '', '0', '', '', '', '188****1111', '', '0', null, null, '0', '0', null, null, '311104201541701632', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311139227314573312', '3', '2', '13211111111', '89852ac90f04ef0e89207b2d0d63f4a6', '537fe180faff4b9bb2d8bf837a799d33', '13211111111', '6027047093', '0', '1', '1', null, null, null, '311139227314573312', '2019-03-09 13:56:12', '311139227314573312', '2019-03-09 13:56:12', '0', '', '', '0', '', '', '', '132****1111', '', '0', null, null, '0', '0', '3', null, '311139227314573312', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311139381971144704', '2', '4', '13222222222', '17249f3b507c9d29b1f98c5ab00df222', 'a30b7a11573d49e4b79f0daa0322ff58', '13222222222', '8914094454', '0', '1', '1', null, '311139227314573312', null, '311139381971144704', '2019-03-09 13:56:49', '311139381971144704', '2019-03-09 13:56:49', '0', '', '', '0', '', '', '', '132****2222', '', '0', null, null, '0', '0', '4', null, '311139381971144704', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311139655368462336', '1', '6', '13233333333', 'dbe5814712d8b1f0eed3cf262c0a97f3', '113212f1c9c94840aa9a438a9078ccd6', '13233333333', '9527595940', '0', '1', '1', null, '311139381971144704', null, '311139655368462336', '2019-03-09 13:57:55', '311139655368462336', '2019-03-09 13:57:55', '0', '', '', '0', '', '', '', '132****3333', '', '0', null, null, '0', '0', '3', null, '311139655368462336', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311140143417675776', '1', '6', '13244444444', 'a88d2ab85db4e5a6ff4e023d029b2a63', 'd10a8308e5cc4ba588a0bfb56ac4a77a', '13244444444', '739080401', '0', '1', '1', null, '311139655368462336', null, '311140143417675776', '2019-03-09 13:59:51', '311140143417675776', '2019-03-09 13:59:51', '0', '', '', '0', '', '', '', '132****4444', '', '0', null, null, '0', '0', '2', null, '311140143417675776', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311140276289032192', '3', '2', '13255555555', '358cf98c8ebbc1ba9f5f0eba15af694c', '399b2ccc28b94f899200ebd958445475', '13255555555', '7957816191', '0', '1', '1', null, '311140143417675776', null, '311140276289032192', '2019-03-09 14:00:23', '311140276289032192', '2019-03-09 14:00:23', '0', '', '', '0', '', '', '', '132****5555', '', '0', null, null, '0', '0', '2', null, '311140276289032192', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311140627369054208', '0', '8', '13266666666', 'eacb9ee84c27e179a553e7e84990dc4e', '0d813aa5190444af8167f48a8e8a38df', '13266666666', '4342163565', '0', '1', '1', null, '311140276289032192', null, '311140627369054208', '2019-03-09 14:01:46', '311140627369054208', '2019-03-09 14:01:46', '0', '', '', '0', '', '', '', '132****6666', '', '0', null, null, '0', '0', '2', null, '311140627369054208', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311140774526210048', '0', '8', '13277777777', 'b1cd2bc9fe73d4ffcda27616e9154200', 'd3f58690479f4b39a250628c8ee6522f', '13277777777', '6813147016', '0', '1', '1', null, '311140627369054208', null, '311140774526210048', '2019-03-09 14:02:21', '311140774526210048', '2019-03-09 14:02:21', '0', '', '', '0', '', '', '', '132****7777', '', '0', null, null, '0', '0', '2', null, '311140774526210048', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311140943598604288', '0', '8', '13288888888', 'e47d2eac48d9ce642c18eb14d1a0031b', '299aa561262749879b9ac7c748e1da4a', '13288888888', '1895943659', '0', '1', '1', null, '311140774526210048', null, '311140943598604288', '2019-03-09 14:03:02', '311140943598604288', '2019-03-09 14:03:02', '0', '', '', '0', '', '', '', '132****8888', '', '0', null, null, '0', '0', '1', null, '311140943598604288', null, null, null, '0', '0');
INSERT INTO `member` VALUES ('311141114554241024', '2', '4', '13299999999', 'd4c522118f738f06ec30199ceb27edf2', 'fb283dd06c214429b965e5cb5fbcb098', '13299999999', '2287474072', '0', '1', '1', null, '311140943598604288', null, '311141114554241024', '2019-03-09 14:03:42', '311141114554241024', '2019-03-09 14:03:42', '0', '', '', '0', '', '', '', '132****9999', '', '0', null, null, '0', '0', '0', null, '311141114554241024', null, null, null, '0', '0');

-- ----------------------------
-- Table structure for member_address
-- ----------------------------
DROP TABLE IF EXISTS `member_address`;
CREATE TABLE `member_address` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户ID',
  `contact` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '收件人手机号',
  `zipcode` varchar(6) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '邮编',
  `province_id` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省ID',
  `province_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省名称',
  `city_id` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '市ID',
  `city_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '市名',
  `district_id` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '区ID',
  `district_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '区名称',
  `detail` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '详细地址',
  `is_default` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否是默认地址0：否；1：是。默认0',
  `remarks` varchar(4000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(32) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员地址表';

-- ----------------------------
-- Records of member_address
-- ----------------------------
INSERT INTO `member_address` VALUES ('16', '1551013568393', 'test', '13222222222', null, '100', '山东省', '100100', '青岛市', '100100111', '李沧区', '巴拉巴拉巴拉呵呵哒', '0', null, '1551013568393', '2019-02-26 17:26:33', '1551013568393', '2019-02-26 17:26:33', '0');
INSERT INTO `member_address` VALUES ('17', '1551144311299', 'updateTest1', '13333333333', null, '100', '山东省', '100100', '青岛市', '100100111', '李沧区', '123ce', '0', null, '1551144311299', '2019-02-26 20:27:32', '1551144311299', '2019-02-26 20:45:22', '0');
INSERT INTO `member_address` VALUES ('18', '1551144311299', 'test2', '13222222222', null, '100', '山东省', '100100', '青岛市', '100100111', '李沧区', '巴拉巴拉巴拉呵呵哒', '1', null, '1551144311299', '2019-02-26 20:28:08', '1551144311299', '2019-02-26 20:36:22', '0');
INSERT INTO `member_address` VALUES ('20', '310791941720002560', 'lp', '18366210826', null, '110000', '北京市', '110100', '北京市', '110101', '东城区', '百达大厦', '0', null, '310791941720002560', '2019-03-09 09:42:03', '310791941720002560', '2019-03-09 09:42:03', '0');
INSERT INTO `member_address` VALUES ('21', '310799423121022976', 'sunttff', '13222222222', null, '100', '山东省', '100100', '青岛市', '100100111', '李沧区', '巴拉巴拉巴拉呵呵哒', '0', null, '310799423121022976', '2019-03-09 10:20:26', '310799423121022976', '2019-03-09 10:20:26', '0');
INSERT INTO `member_address` VALUES ('22', '310791941720002560', 'lp', '18366210826', null, '120000', '天津市', '120100', '天津市', '120101', '和平区', '百达大厦', '0', null, '310791941720002560', '2019-03-09 11:07:04', '310791941720002560', '2019-03-09 11:07:04', '0');
INSERT INTO `member_address` VALUES ('23', '310791941720002560', '测试地址11111', '18366210826', null, '150000', '内蒙古自治区', '150100', '呼和浩特市', '150102', '新城区', '测试地址修改3测事实上司是似乎搜狐发生地方管理卡士大夫很老实的客户分离撒地方就会拉水电费就好了收到回复了看哈手动阀', '1', null, '310791941720002560', '2019-03-09 11:35:35', '310791941720002560', '2019-03-09 14:50:06', '0');
INSERT INTO `member_address` VALUES ('25', '311132429090181120', '孙腾飞', '13255555555', null, '100', '山东省', '100100', '青岛市', '100100111', '李沧区', '巴拉巴拉巴拉呵呵哒', '0', null, '311132429090181120', '2019-03-09 13:31:12', '311132429090181120', '2019-03-09 13:31:12', '0');
INSERT INTO `member_address` VALUES ('26', '311141114554241024', '孙腾飞', '13299999999', null, '100', '山东省', '100100', '青岛市', '100100111', '李沧区', '巴拉巴拉巴拉呵呵哒', '0', null, '311141114554241024', '2019-03-09 14:04:43', '311141114554241024', '2019-03-09 14:04:43', '0');
INSERT INTO `member_address` VALUES ('27', '310724947817680896', '张三丰', '15253227723', null, '370000', '山东省', '370100', '济南市', '370102', '历下区', '京口路11号', '1', null, '310724947817680896', '2019-03-11 11:49:17', '310724947817680896', '2019-03-11 15:45:29', '0');
INSERT INTO `member_address` VALUES ('29', '310724947817680896', '张三丰', '15253227723', null, '110000', '北京市', '110100', '北京城区', '110101', '东城区', '啊啊啊', '0', null, '310724947817680896', '2019-03-11 11:52:59', '310724947817680896', '2019-03-11 11:52:59', '0');
INSERT INTO `member_address` VALUES ('30', '310724947817680896', '李四', '15253227723', null, '110000', '北京市', '110100', '北京城区', '110102', '西城区', '测试', '0', null, '310724947817680896', '2019-03-11 14:09:27', '310724947817680896', '2019-03-11 14:09:27', '0');
INSERT INTO `member_address` VALUES ('31', '310724947817680896', '王五', '15253227723', null, '110000', '北京市', '110100', '北京城区', '110101', '东城区', '123456789', '0', null, '310724947817680896', '2019-03-11 15:26:27', '310724947817680896', '2019-03-11 15:26:27', '0');

-- ----------------------------
-- Table structure for member_auth
-- ----------------------------
DROP TABLE IF EXISTS `member_auth`;
CREATE TABLE `member_auth` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `auth_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '认证状态（字典auth_status）',
  `auth_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '证件类型（字典auth_type）',
  `real_name` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户名称',
  `idcard_no` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '身份证',
  `idcard_front_img` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '身份证正面',
  `idcard_back_img` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '身份证反面',
  `idcard_head_img` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '手持身份证照',
  `auth_remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '认证备注',
  `apply_by` bigint(32) DEFAULT NULL COMMENT '审核人',
  `apply_date` datetime DEFAULT NULL COMMENT '审核时间',
  `apply_status` tinyint(1) DEFAULT NULL COMMENT '审核状态（字典auth_apply_status）',
  `apply_remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审核备注',
  `remarks` varchar(4000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(32) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `member_id` (`member_id`) USING BTREE COMMENT '用户id唯一索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='会员实名认证登记表';

-- ----------------------------
-- Records of member_auth
-- ----------------------------

-- ----------------------------
-- Table structure for member_collection
-- ----------------------------
DROP TABLE IF EXISTS `member_collection`;
CREATE TABLE `member_collection` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `member_id` bigint(32) NOT NULL COMMENT '用户ID',
  `type` tinyint(2) DEFAULT NULL COMMENT '收藏类型（字典collection_type）1-商品',
  `sku_id` bigint(32) DEFAULT NULL COMMENT '产品skuID',
  `remarks` varchar(4000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(32) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员收藏表';

-- ----------------------------
-- Records of member_collection
-- ----------------------------
INSERT INTO `member_collection` VALUES ('1', '100010', '1', '1001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('2', '100010', '1', '1001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('3', '100010', '2', '2001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('4', '100010', '3', '1001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('5', '100010', '2', '2002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('6', '0', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('7', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('8', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('9', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('10', '23200', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('11', '23200', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('12', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('13', '23200', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('14', '23210', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('15', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('16', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('17', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('18', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('19', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('20', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('21', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('22', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('23', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('24', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('25', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('26', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('27', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('28', '23220', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('29', '23220', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('30', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('31', '23220', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('32', '23220', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('33', '23220', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('34', '23220', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('35', '23220', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('36', '23220', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('37', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('38', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('39', '23220', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('40', '23220', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('41', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('42', '23220', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('43', '23220', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('44', '23220', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('45', '23220', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('46', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('47', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('48', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('49', '23230', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('50', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('51', '23230', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('52', '23230', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('53', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('54', '23230', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('55', '23230', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('56', '23230', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('57', '23230', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('58', '23230', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('59', '23230', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('60', '23230', '1', '10008', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('61', '23230', '1', '10008', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('62', '23230', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('63', '23230', '1', '10008', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('64', '23230', '1', '10007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('65', '23230', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('66', '23230', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('67', '23230', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('68', '23230', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('69', '23230', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('70', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('71', '23230', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('72', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('73', '23230', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('74', '23230', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('75', '23230', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('76', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('77', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('78', '23240', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('79', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('80', '23240', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('81', '23240', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('82', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('83', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('84', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('85', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('86', '22950', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('87', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('88', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('89', '22950', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('90', '22950', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('91', '23260', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('92', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('93', '23260', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('94', '23260', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('95', '23260', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('96', '23260', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('97', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('98', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('99', '23240', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('100', '23240', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('101', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('102', '10000', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('103', '23240', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('104', '23240', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('105', '23240', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('106', '23240', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('107', '23240', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('108', '23270', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('109', '23270', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('110', '23270', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('111', '23270', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('112', '23270', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('113', '23240', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('114', '23240', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('115', '22950', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('116', '22950', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('117', '22950', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('118', '23280', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('119', '23280', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('120', '23280', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('121', '23280', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('122', '23280', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('123', '23280', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('124', '23280', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('125', '23280', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('126', '23280', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('127', '23280', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('128', '23280', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('129', '23280', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('130', '23280', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('131', '23280', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('132', '23280', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('133', '23280', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('134', '23280', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('135', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('136', '23290', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('137', '23290', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('138', '23290', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('139', '23290', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('140', '23290', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('141', '23290', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('142', '23300', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('143', '23300', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('144', '23300', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('145', '23300', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('146', '23300', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('147', '23300', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('148', '23300', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('149', '23300', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('150', '23300', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('151', '23300', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('152', '23300', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('153', '23300', '2', '20003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('154', '23300', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('155', '23300', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('156', '23300', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('157', '23300', '2', '20003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('158', '23300', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('159', '23300', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('160', '23300', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('161', '23300', '2', '20003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('162', '23300', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('163', '23300', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('164', '23300', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('165', '23300', '2', '20003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('166', '23300', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('167', '23300', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('168', '23310', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('169', '23310', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('170', '23310', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('171', '23310', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('172', '23310', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('173', '23310', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('174', '23310', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('175', '23310', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('176', '23310', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('177', '23310', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('178', '23310', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('179', '23310', '2', '20008', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('180', '23310', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('181', '23320', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('182', '23320', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('183', '23320', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('184', '23320', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('185', '23320', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('186', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('187', '23330', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('188', '23330', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('189', '23330', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('190', '23330', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('191', '23330', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('192', '23330', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('193', '23320', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('194', '23340', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('195', '23340', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('196', '23340', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('197', '23340', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('198', '23340', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('199', '23340', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('200', '23340', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('201', '23340', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('202', '23340', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('203', '23340', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('204', '23350', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('205', '23350', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('206', '23350', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('207', '23350', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('208', '23350', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('209', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('210', '23360', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('211', '23360', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('212', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('213', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('214', '23370', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('215', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('216', '23380', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('217', '23390', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('218', '23400', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('219', '23400', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('220', '23400', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('221', '23400', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('222', '23400', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('223', '23400', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('224', '23410', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('225', '23410', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('226', '23410', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('227', '23410', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('228', '23410', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('229', '23410', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('230', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('231', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('232', '23360', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('233', '23360', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('234', '23360', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('235', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('236', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('237', '23360', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('238', '23360', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('239', '23360', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('240', '23410', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('241', '23410', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('242', '23410', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('243', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('244', '23420', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('245', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('246', '23420', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('247', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('248', '23430', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('249', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('250', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('251', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('252', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('253', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('254', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('255', '23440', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('256', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('257', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('258', '23440', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('259', '23440', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('260', '23440', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('261', '23440', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('262', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('263', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('264', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('265', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('266', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('267', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('268', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('269', '23450', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('270', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('271', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('272', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('273', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('274', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('275', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('276', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('277', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('278', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('279', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('280', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('281', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('282', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('283', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('284', '23460', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('285', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('286', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('287', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('288', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('289', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('290', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('291', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('292', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('293', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('294', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('295', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('296', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('297', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('298', '23360', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('299', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('300', '23470', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('301', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('302', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('303', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('304', '23440', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('305', '23440', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('306', '23440', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('307', '23440', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('308', '23440', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('309', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('310', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('311', '23360', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('312', '23360', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('313', '23360', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('314', '23360', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('315', '23360', '1', '10005', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('316', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('317', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('318', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('319', '23360', '1', '10005', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('320', '23360', '1', '10007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('321', '23360', '1', '10006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('322', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('323', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('324', '23360', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('325', '23360', '1', '10005', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('326', '23360', '1', '10007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('327', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('328', '23360', '1', '10004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('329', '23360', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('330', '23360', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('331', '23360', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('332', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('333', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('334', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('335', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('336', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('337', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('338', '23440', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('339', '23360', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('340', '23360', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('341', '23360', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('342', '23360', '1', '10009', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('343', '23480', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('344', '23480', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('345', '23480', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('346', '23480', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('347', '23480', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('348', '23480', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('349', '23480', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('350', '23480', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('351', '23480', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('352', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('353', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('354', '23490', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('355', '23490', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('356', '23490', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('357', '23490', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('358', '23490', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('359', '23490', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('360', '23490', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('361', '23490', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('362', '23490', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('363', '23490', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('364', '23490', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('365', '23500', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('366', '23500', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('367', '23480', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('368', '23500', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('369', '23480', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('370', '23500', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('371', '23480', '2', '20003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('372', '23480', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('373', '23500', '2', '20006', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('374', '23480', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('375', '23480', '2', '20002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('376', '23480', '2', '20003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('377', '23480', '2', '20004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('378', '23480', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('379', '23480', '2', '20005', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('380', '23480', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('381', '23480', '2', '20005', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('382', '23500', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('383', '23480', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('384', '23500', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('385', '23480', '2', '20005', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('386', '23500', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('387', '23480', '3', '30004', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('388', '23500', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('389', '23480', '2', '20005', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('390', '23500', '1', '10002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('391', '23500', '1', '10001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('392', '23500', '2', '20007', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('393', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('394', '23510', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('395', '23510', '3', '30002', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('396', '23510', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('397', '23510', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('398', '23510', '2', '20001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('399', '23510', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('400', '23510', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('401', '23510', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('402', '23510', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('403', '23520', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('404', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('405', '23530', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('406', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('407', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('408', '23540', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('409', '23540', '1', '10003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('410', '23550', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('411', '23560', '3', '30001', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('412', '10000', '3', '30003', null, '0', '2019-02-22 14:25:31', '0', '2019-02-22 14:25:31', '0');
INSERT INTO `member_collection` VALUES ('413', '1551013568393', '1', '264558729087270912', null, '1551013568393', '2019-03-08 14:35:40', '1551013568393', '2019-03-08 14:35:40', '0');
INSERT INTO `member_collection` VALUES ('416', '1551013568393', '1', '1103116401865924609', null, '1551013568393', '2019-03-08 14:50:07', '1551013568393', '2019-03-08 14:50:07', '0');
INSERT INTO `member_collection` VALUES ('417', '310799423121022976', '1', '265021454290714625', null, '310799423121022976', '2019-03-08 15:48:06', '310799423121022976', '2019-03-08 15:48:06', '0');
INSERT INTO `member_collection` VALUES ('418', '310799423121022976', '1', '265021454290714625', null, '310799423121022976', '2019-03-08 15:48:06', '310799423121022976', '2019-03-08 15:48:06', '0');

-- ----------------------------
-- Table structure for member_ext
-- ----------------------------
DROP TABLE IF EXISTS `member_ext`;
CREATE TABLE `member_ext` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户id',
  `money_total` bigint(32) DEFAULT '0' COMMENT '可用零钱总金额',
  `free_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否冻结 1-未冻结 2-冻结',
  `recommend_total_money` bigint(32) DEFAULT '0' COMMENT '推荐奖励的总金额',
  `sale_total_money` bigint(32) DEFAULT '0' COMMENT '销售奖励的总金额',
  `store_reward_total_money` bigint(32) DEFAULT '0' COMMENT '店铺奖励的总金额',
  `other_total_money` bigint(32) DEFAULT '0' COMMENT '其他奖励总金额',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `order_total_money` bigint(32) DEFAULT '0' COMMENT '已完成订单金额/消费总额',
  `order_total_count` int(11) DEFAULT '0' COMMENT '已完成订单数量',
  `last_pay_time` datetime DEFAULT NULL COMMENT '最近购买时间',
  `recommend_order_total_money` bigint(32) DEFAULT '0' COMMENT '推广奖励订单总金额',
  `store_order_total_money` bigint(32) DEFAULT '0' COMMENT '店铺奖励订单总金额',
  `recommend_order_count` bigint(32) DEFAULT '0' COMMENT '推广奖励订单总数',
  `store_order_count` bigint(32) DEFAULT '0' COMMENT '店铺奖励订单总数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `money_info_index_member_id` (`member_id`) COMMENT '用户id唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=1104261458047004674 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员扩展信息';

-- ----------------------------
-- Records of member_ext
-- ----------------------------
INSERT INTO `member_ext` VALUES ('1', '1551077750498', '30021', '1', '0', '0', null, '0', null, '1', null, '2019-02-26 18:58:40', null, '2019-02-26 19:00:58', '0', '0', '0', '2019-02-26 19:00:50', '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('2', '1551013626628', '20010', '1', '0', '0', null, '0', null, '1', null, '2019-02-25 18:17:55', null, '2019-02-25 19:24:36', '0', '0', '0', '2019-02-25 19:24:28', '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('3', '1551078156683', '1001', '1', '0', '0', null, '0', null, '1', null, '2019-02-26 18:58:56', null, '2019-02-26 19:01:03', '0', '0', '0', '2019-02-23 19:00:53', '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('4', '1551144311299', '11100', '1', '0', '0', null, '0', null, '1', null, '2019-02-26 18:59:09', null, '2019-02-26 19:01:07', '0', '0', '0', '2019-02-24 19:00:58', '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('5', '1551013568393', '10000', '1', '0', '0', null, '0', null, '1', null, '2019-02-25 18:17:21', null, '2019-02-28 14:44:22', '0', '0', '0', '2019-02-25 19:24:22', '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1101064838111272962', '307944493758697472', '0', '1', '0', '0', null, '0', null, '1', '307944493758697472', '2019-02-28 18:21:29', '307944493758697472', '2019-02-28 18:21:29', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1101105077313142786', '307984731062956032', '0', '1', '0', '0', null, '0', null, '1', '307984731062956032', '2019-02-28 21:01:22', '307984731062956032', '2019-02-28 21:01:22', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1101725747414433793', '308605403158433792', '0', '1', '0', '0', null, '0', null, '1', '308605403158433792', '2019-03-02 14:07:42', '308605403158433792', '2019-03-02 14:07:42', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1103123615408902146', '310003271362564096', '0', '1', '0', '0', null, '0', null, '1', '310003271362564096', '2019-03-06 10:42:19', '310003271362564096', '2019-03-06 10:42:19', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1103135377499803650', '310015034023890944', '0', '1', '0', '0', null, '0', null, '1', '310015034023890944', '2019-03-06 11:29:04', '310015034023890944', '2019-03-06 11:29:04', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1103845292623142914', '310724947817680896', '0', '1', '0', '0', null, '0', null, '1', '310724947817680896', '2019-03-08 10:30:01', '310724947817680896', '2019-03-08 10:30:01', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1103912285929975810', '310791941720002560', '1000002', '1', '0', '0', '0', '0', null, '1', '310791941720002560', '2019-03-08 14:56:13', '310791941720002560', '2019-03-11 15:45:11', '0', '99999', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1103919768054034434', '310799423121022976', '0', '1', '0', '0', '0', '0', null, '1', '310799423121022976', '2019-03-08 15:25:57', '310799423121022976', '2019-03-08 15:25:57', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1103938795998728194', '310818451701002240', '0', '1', '0', '0', '0', '0', null, '1', '310818451701002240', '2019-03-08 16:41:34', '310818451701002240', '2019-03-08 17:21:35', '0', '31000133', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104224552747786241', '311104201541701632', '0', '1', '0', '0', '0', '0', null, '1', '311104201541701632', '2019-03-09 11:37:03', '311104201541701632', '2019-03-09 11:37:03', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104259571449065473', '311139227314573312', '0', '1', '0', '0', '0', '0', null, '1', '311139227314573312', '2019-03-09 13:56:13', '311139227314573312', '2019-03-09 13:56:13', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104259725585543170', '311139381971144704', '855510', '1', '57034', '0', '798476', '0', null, '1', '311139381971144704', '2019-03-09 13:56:49', '311139381971144704', '2019-03-11 14:17:26', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104259998869614594', '311139655368462336', '331710', '1', '185060', '0', '146650', '0', null, '1', '311139655368462336', '2019-03-09 13:57:55', '311139655368462336', '2019-03-11 14:17:26', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104260486918828033', '311140143417675776', '192045', '1', '192045', '0', '0', '0', null, '1', '311140143417675776', '2019-03-09 13:59:51', '311140143417675776', '2019-03-11 14:17:26', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104260619781795842', '311140276289032192', '209505', '1', '209505', '0', '0', '0', null, '1', '311140276289032192', '2019-03-09 14:00:23', '311140276289032192', '2019-03-11 14:17:26', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104260970916343810', '311140627369054208', '226965', '1', '226965', '0', '0', '0', null, '1', '311140627369054208', '2019-03-09 14:01:46', '311140627369054208', '2019-03-11 14:17:26', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104261118018973698', '311140774526210048', '576150', '1', '266540', '0', '309610', '0', null, '1', '311140774526210048', '2019-03-09 14:02:21', '311140774526210048', '2019-03-11 14:17:26', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104261287124922370', '311140943598604288', '942795', '1', '568001', '0', '374794', '0', null, '1', '311140943598604288', '2019-03-09 14:03:02', '311140943598604288', '2019-03-11 14:17:26', '0', '0', '0', null, '0', '0', '0', '0');
INSERT INTO `member_ext` VALUES ('1104261458047004673', '311141114554241024', '0', '1', '0', '0', '0', '0', null, '1', '311141114554241024', '2019-03-09 14:03:42', '311141114554241024', '2019-03-09 14:03:42', '0', '0', '0', null, '0', '0', '0', '0');

-- ----------------------------
-- Table structure for member_relation_level
-- ----------------------------
DROP TABLE IF EXISTS `member_relation_level`;
CREATE TABLE `member_relation_level` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `self_id` bigint(18) DEFAULT NULL COMMENT '自身会员Id',
  `parent_id` bigint(18) DEFAULT NULL COMMENT '上级ID',
  `relation_level` tinyint(4) DEFAULT NULL COMMENT '关系等级',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1104261458067976195 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员关系等级';

-- ----------------------------
-- Records of member_relation_level
-- ----------------------------
INSERT INTO `member_relation_level` VALUES ('1104259725661040642', '311139381971144704', '311139227314573312', '1', '2019-03-09 13:56:50');
INSERT INTO `member_relation_level` VALUES ('1104259725661040643', '311139655368462336', '311139227314573312', '2', '2019-03-09 13:57:56');
INSERT INTO `member_relation_level` VALUES ('1104259998890586113', '311139655368462336', '311139381971144704', '1', '2019-03-09 13:57:56');
INSERT INTO `member_relation_level` VALUES ('1104259998890586114', '311140143417675776', '311139227314573312', '3', '2019-03-09 13:59:52');
INSERT INTO `member_relation_level` VALUES ('1104259998890586115', '311140143417675776', '311139381971144704', '2', '2019-03-09 13:59:52');
INSERT INTO `member_relation_level` VALUES ('1104260486935605250', '311140143417675776', '311139655368462336', '1', '2019-03-09 13:59:52');
INSERT INTO `member_relation_level` VALUES ('1104260486935605251', '311140276289032192', '311139227314573312', '4', '2019-03-09 14:00:24');
INSERT INTO `member_relation_level` VALUES ('1104260486935605252', '311140276289032192', '311139381971144704', '3', '2019-03-09 14:00:24');
INSERT INTO `member_relation_level` VALUES ('1104260486935605253', '311140276289032192', '311139655368462336', '2', '2019-03-09 14:00:24');
INSERT INTO `member_relation_level` VALUES ('1104260619806961665', '311140276289032192', '311140143417675776', '1', '2019-03-09 14:00:24');
INSERT INTO `member_relation_level` VALUES ('1104260619806961666', '311140627369054208', '311139227314573312', '5', '2019-03-09 14:01:47');
INSERT INTO `member_relation_level` VALUES ('1104260619806961667', '311140627369054208', '311139381971144704', '4', '2019-03-09 14:01:47');
INSERT INTO `member_relation_level` VALUES ('1104260619806961668', '311140627369054208', '311139655368462336', '3', '2019-03-09 14:01:47');
INSERT INTO `member_relation_level` VALUES ('1104260619806961669', '311140627369054208', '311140143417675776', '2', '2019-03-09 14:01:47');
INSERT INTO `member_relation_level` VALUES ('1104260970933121025', '311140627369054208', '311140276289032192', '1', '2019-03-09 14:01:47');
INSERT INTO `member_relation_level` VALUES ('1104260970933121026', '311140774526210048', '311139227314573312', '6', '2019-03-09 14:02:22');
INSERT INTO `member_relation_level` VALUES ('1104260970933121027', '311140774526210048', '311139381971144704', '5', '2019-03-09 14:02:22');
INSERT INTO `member_relation_level` VALUES ('1104260970933121028', '311140774526210048', '311139655368462336', '4', '2019-03-09 14:02:22');
INSERT INTO `member_relation_level` VALUES ('1104260970933121029', '311140774526210048', '311140143417675776', '3', '2019-03-09 14:02:22');
INSERT INTO `member_relation_level` VALUES ('1104260970933121030', '311140774526210048', '311140276289032192', '2', '2019-03-09 14:02:22');
INSERT INTO `member_relation_level` VALUES ('1104261118031556609', '311140774526210048', '311140627369054208', '1', '2019-03-09 14:02:22');
INSERT INTO `member_relation_level` VALUES ('1104261118031556610', '311140943598604288', '311139227314573312', '7', '2019-03-09 14:03:03');
INSERT INTO `member_relation_level` VALUES ('1104261118031556611', '311140943598604288', '311139381971144704', '6', '2019-03-09 14:03:03');
INSERT INTO `member_relation_level` VALUES ('1104261118031556612', '311140943598604288', '311139655368462336', '5', '2019-03-09 14:03:03');
INSERT INTO `member_relation_level` VALUES ('1104261118031556613', '311140943598604288', '311140143417675776', '4', '2019-03-09 14:03:03');
INSERT INTO `member_relation_level` VALUES ('1104261118031556614', '311140943598604288', '311140276289032192', '3', '2019-03-09 14:03:03');
INSERT INTO `member_relation_level` VALUES ('1104261118031556615', '311140943598604288', '311140627369054208', '2', '2019-03-09 14:03:03');
INSERT INTO `member_relation_level` VALUES ('1104261287141699586', '311140943598604288', '311140774526210048', '1', '2019-03-09 14:03:03');
INSERT INTO `member_relation_level` VALUES ('1104261287141699587', '311141114554241024', '311139227314573312', '8', '2019-03-09 14:03:43');
INSERT INTO `member_relation_level` VALUES ('1104261287141699588', '311141114554241024', '311139381971144704', '7', '2019-03-09 14:03:43');
INSERT INTO `member_relation_level` VALUES ('1104261287141699589', '311141114554241024', '311139655368462336', '6', '2019-03-09 14:03:43');
INSERT INTO `member_relation_level` VALUES ('1104261287141699590', '311141114554241024', '311140143417675776', '5', '2019-03-09 14:03:43');
INSERT INTO `member_relation_level` VALUES ('1104261287141699591', '311141114554241024', '311140276289032192', '4', '2019-03-09 14:03:43');
INSERT INTO `member_relation_level` VALUES ('1104261287141699592', '311141114554241024', '311140627369054208', '3', '2019-03-09 14:03:43');
INSERT INTO `member_relation_level` VALUES ('1104261287141699593', '311141114554241024', '311140774526210048', '2', '2019-03-09 14:03:43');
INSERT INTO `member_relation_level` VALUES ('1104261458067976194', '311141114554241024', '311140943598604288', '1', '2019-03-09 14:03:43');

-- ----------------------------
-- Table structure for member_store_reward_level_log
-- ----------------------------
DROP TABLE IF EXISTS `member_store_reward_level_log`;
CREATE TABLE `member_store_reward_level_log` (
  `member_id` bigint(18) NOT NULL,
  `level_up_date` datetime DEFAULT NULL,
  `before_level` tinyint(1) DEFAULT NULL COMMENT '升级前的店铺等级',
  `after_level` tinyint(1) DEFAULT NULL COMMENT '升级后的店铺等级',
  `member_cur_money` bigint(11) DEFAULT NULL COMMENT '产生记录时用户累计消费额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户店铺等级升级记录';

-- ----------------------------
-- Records of member_store_reward_level_log
-- ----------------------------
INSERT INTO `member_store_reward_level_log` VALUES ('310818451701002240', '2019-03-08 17:27:44', '0', '4', '31000133');
INSERT INTO `member_store_reward_level_log` VALUES ('310818451701002240', '2019-03-08 17:54:56', '1', '4', '31000133');
INSERT INTO `member_store_reward_level_log` VALUES ('310818451701002240', '2019-03-08 18:03:19', '1', '4', '31000133');
