/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_money_01

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:18:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for money_list_00
-- ----------------------------
DROP TABLE IF EXISTS `money_list_00`;
CREATE TABLE `money_list_00` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_00
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_01
-- ----------------------------
DROP TABLE IF EXISTS `money_list_01`;
CREATE TABLE `money_list_01` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_01
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_02
-- ----------------------------
DROP TABLE IF EXISTS `money_list_02`;
CREATE TABLE `money_list_02` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_02
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_03
-- ----------------------------
DROP TABLE IF EXISTS `money_list_03`;
CREATE TABLE `money_list_03` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_03
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_04
-- ----------------------------
DROP TABLE IF EXISTS `money_list_04`;
CREATE TABLE `money_list_04` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_04
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_05
-- ----------------------------
DROP TABLE IF EXISTS `money_list_05`;
CREATE TABLE `money_list_05` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_05
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_06
-- ----------------------------
DROP TABLE IF EXISTS `money_list_06`;
CREATE TABLE `money_list_06` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_06
-- ----------------------------
INSERT INTO `money_list_06` VALUES ('311833947695108096', '311139655368462336', '1', '0', null, '10475', '3', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****3333', '311833874437394432', '13233333333');
INSERT INTO `money_list_06` VALUES ('311833947988709376', '311140143417675776', '1', '0', null, '12803', '2', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****4444', '311833874437394432', '13244444444');
INSERT INTO `money_list_06` VALUES ('311833948051623936', '311139655368462336', '1', '0', null, '11639', '2', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****3333', '311833874437394432', '13233333333');
INSERT INTO `money_list_06` VALUES ('311836370727751680', '311139655368462336', '1', '0', null, '10475', '3', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****3333', '311836271448576000', '13233333333');
INSERT INTO `money_list_06` VALUES ('311836371033935872', '311140143417675776', '1', '0', null, '12803', '2', '311836271444381696', null, '1', null, '2019-03-11 12:06:25', null, '2019-03-11 12:06:25', '0', '132****4444', '311836271448576000', '13244444444');
INSERT INTO `money_list_06` VALUES ('311836371096850432', '311139655368462336', '1', '0', null, '11639', '2', '311836271444381696', null, '1', null, '2019-03-11 12:06:25', null, '2019-03-11 12:06:25', '0', '132****3333', '311836271448576000', '13233333333');
INSERT INTO `money_list_06` VALUES ('311855669362184192', '311139655368462336', '1', '0', null, '10475', '3', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****3333', '311855575439134720', '13233333333');
INSERT INTO `money_list_06` VALUES ('311855669680951296', '311140143417675776', '1', '0', null, '12803', '2', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****4444', '311855575439134720', '13244444444');
INSERT INTO `money_list_06` VALUES ('311855669743865856', '311139655368462336', '1', '0', null, '11639', '2', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****3333', '311855575439134720', '13233333333');
INSERT INTO `money_list_06` VALUES ('311861436295303168', '311139655368462336', '1', '0', null, '10475', '3', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****3333', '311861312521392129', '13233333333');
INSERT INTO `money_list_06` VALUES ('311861436433715200', '311140143417675776', '1', '0', null, '12803', '2', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****4444', '311861312521392129', '13244444444');
INSERT INTO `money_list_06` VALUES ('311861436496629760', '311139655368462336', '1', '0', null, '11639', '2', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****3333', '311861312521392129', '13233333333');
INSERT INTO `money_list_06` VALUES ('311862877583994880', '311140143417675776', '1', '0', null, '12803', '2', '311861743905558528', null, '1', null, '2019-03-11 13:51:45', null, '2019-03-11 13:51:45', '0', '132****4444', '311861743909752832', '13244444444');
INSERT INTO `money_list_06` VALUES ('311862881719578624', '311139655368462336', '1', '0', null, '11639', '2', '311861743905558528', null, '1', null, '2019-03-11 13:51:46', null, '2019-03-11 13:51:46', '0', '132****3333', '311861743909752832', '13233333333');
INSERT INTO `money_list_06` VALUES ('311863080626057216', '311139655368462336', '1', '0', null, '10475', '3', '311861743905558528', null, '1', null, '2019-03-11 13:52:33', null, '2019-03-11 13:52:33', '0', '132****3333', '311861743909752832', '13233333333');
INSERT INTO `money_list_06` VALUES ('311864739259379712', '311139655368462336', '1', '0', null, '10475', '3', '311864648620462080', null, '1', null, '2019-03-11 13:59:08', null, '2019-03-11 13:59:08', '0', '132****3333', '311864648620462081', '13233333333');
INSERT INTO `money_list_06` VALUES ('311864739271962624', '311140143417675776', '1', '0', null, '12803', '2', '311864648620462080', null, '1', null, '2019-03-11 13:59:08', null, '2019-03-11 13:59:08', '0', '132****4444', '311864648620462081', '13244444444');
INSERT INTO `money_list_06` VALUES ('311864739322294272', '311139655368462336', '1', '0', null, '11639', '2', '311864648620462080', null, '1', null, '2019-03-11 13:59:08', null, '2019-03-11 13:59:08', '0', '132****3333', '311864648620462081', '13233333333');
INSERT INTO `money_list_06` VALUES ('311865639159885824', '311139655368462336', '1', '0', null, '10475', '3', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****3333', '311865551968686080', '13233333333');
INSERT INTO `money_list_06` VALUES ('311865826271981568', '311140143417675776', '1', '0', null, '12803', '2', '311865551964491776', null, '1', null, '2019-03-11 14:03:41', null, '2019-03-11 14:03:41', '0', '132****4444', '311865551968686080', '13244444444');
INSERT INTO `money_list_06` VALUES ('311865882899279872', '311139655368462336', '1', '0', null, '11639', '2', '311865551964491776', null, '1', null, '2019-03-11 14:03:41', null, '2019-03-11 14:03:41', '0', '132****3333', '311865551968686080', '13233333333');
INSERT INTO `money_list_06` VALUES ('311866680702038016', '311139655368462336', '1', '0', null, '10475', '3', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****3333', '311866615669346304', '13233333333');
INSERT INTO `money_list_06` VALUES ('311866680743981056', '311140143417675776', '1', '0', null, '12803', '2', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****4444', '311866615669346304', '13244444444');
INSERT INTO `money_list_06` VALUES ('311866681071136768', '311139655368462336', '1', '0', null, '11639', '2', '311866615665152000', null, '1', null, '2019-03-11 14:07:17', null, '2019-03-11 14:07:17', '0', '132****3333', '311866615669346304', '13233333333');
INSERT INTO `money_list_06` VALUES ('311867411211382785', '311139655368462336', '1', '0', null, '10475', '3', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****3333', '311867317309296640', '13233333333');
INSERT INTO `money_list_06` VALUES ('311867411542732800', '311140143417675776', '1', '0', null, '12803', '2', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****4444', '311867317309296640', '13244444444');
INSERT INTO `money_list_06` VALUES ('311867458854481920', '311139655368462336', '1', '0', null, '11639', '2', '311867317305102336', null, '1', null, '2019-03-11 14:10:01', null, '2019-03-11 14:10:01', '0', '132****3333', '311867317309296640', '13233333333');
INSERT INTO `money_list_06` VALUES ('311869331514748928', '311139655368462336', '1', '0', null, '10475', '3', '311869275034243072', null, '1', null, '2019-03-11 14:17:23', null, '2019-03-11 14:17:23', '0', '132****3333', '311869275038437376', '13233333333');
INSERT INTO `money_list_06` VALUES ('311869344865218560', '311140143417675776', '1', '0', null, '12803', '2', '311869275034243072', null, '1', null, '2019-03-11 14:17:26', null, '2019-03-11 14:17:26', '0', '132****4444', '311869275038437376', '13244444444');
INSERT INTO `money_list_06` VALUES ('311869344923938816', '311139655368462336', '1', '0', null, '11639', '2', '311869275034243072', null, '1', null, '2019-03-11 14:17:26', null, '2019-03-11 14:17:26', '0', '132****3333', '311869275038437376', '13233333333');

-- ----------------------------
-- Table structure for money_list_07
-- ----------------------------
DROP TABLE IF EXISTS `money_list_07`;
CREATE TABLE `money_list_07` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_07
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_08
-- ----------------------------
DROP TABLE IF EXISTS `money_list_08`;
CREATE TABLE `money_list_08` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_08
-- ----------------------------

-- ----------------------------
-- Table structure for money_list_09
-- ----------------------------
DROP TABLE IF EXISTS `money_list_09`;
CREATE TABLE `money_list_09` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `third_party` tinyint(1) DEFAULT '0' COMMENT '是否是第三方流水   1:是   0:否    默认0',
  `balance` bigint(32) DEFAULT NULL COMMENT '账户余额',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `money_type` tinyint(1) NOT NULL COMMENT '资金流水类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-消费  5-退款  6-提现  7-充值',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `order_code` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of money_list_09
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_00
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_00`;
CREATE TABLE `prize_list_00` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_00
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_01
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_01`;
CREATE TABLE `prize_list_01` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_01
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_02
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_02`;
CREATE TABLE `prize_list_02` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_02
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_03
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_03`;
CREATE TABLE `prize_list_03` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_03
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_04
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_04`;
CREATE TABLE `prize_list_04` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_04
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_05
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_05`;
CREATE TABLE `prize_list_05` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_05
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_06
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_06`;
CREATE TABLE `prize_list_06` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_06
-- ----------------------------
INSERT INTO `prize_list_06` VALUES ('311134780668661760', '308718253948276736', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:38:32', '311132429090181120', '2019-03-09 13:38:32', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311135314528063488', '308718253948276736', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:40:40', '311132429090181120', '2019-03-09 13:40:40', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311135474905665536', '308718253948276736', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:41:18', '311132429090181120', '2019-03-09 13:41:18', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311135703100968960', '308718253948276736', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:42:12', '311132429090181120', '2019-03-09 13:42:12', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311143485829173248', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:13:08', '311141114554241024', '2019-03-09 14:13:08', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311143485896282112', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:13:08', '311141114554241024', '2019-03-09 14:13:08', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148171151953920', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:31:45', '311141114554241024', '2019-03-09 14:31:45', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148171193896960', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:31:45', '311141114554241024', '2019-03-09 14:31:45', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148498756456448', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:03', '311141114554241024', '2019-03-09 14:33:03', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148498798399488', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:03', '311141114554241024', '2019-03-09 14:33:03', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148702712877056', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:52', '311141114554241024', '2019-03-09 14:33:52', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148702754820096', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:52', '311141114554241024', '2019-03-09 14:33:52', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148889401348096', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:34:36', '311141114554241024', '2019-03-09 14:34:36', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311148889464262656', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:34:36', '311141114554241024', '2019-03-09 14:34:36', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311149494882684928', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:37:00', '311141114554241024', '2019-03-09 14:37:00', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311149494945599488', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:37:00', '311141114554241024', '2019-03-09 14:37:00', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311149883329761280', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:38:33', '311141114554241024', '2019-03-09 14:38:33', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311149883443007488', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:38:33', '311141114554241024', '2019-03-09 14:38:33', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311150116818276352', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:39:29', '311141114554241024', '2019-03-09 14:39:29', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311150116860219392', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:39:29', '311141114554241024', '2019-03-09 14:39:29', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311150314307080192', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '0', null, '311141114554241024', '2019-03-09 14:40:16', '311141114554241024', '2019-03-09 14:40:16', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311150314374189056', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 14:40:16', '311141114554241024', '2019-03-09 14:40:16', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311151024490827776', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '37', null, '311141114554241024', '2019-03-09 14:43:05', '311141114554241024', '2019-03-09 14:43:05', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311151024553742336', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '34', null, '311141114554241024', '2019-03-09 14:43:05', '311141114554241024', '2019-03-09 14:43:05', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311152041345306624', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '37', null, '311141114554241024', '2019-03-09 14:47:08', '311141114554241024', '2019-03-09 14:47:08', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311152041412415488', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '34', null, '311141114554241024', '2019-03-09 14:47:08', '311141114554241024', '2019-03-09 14:47:08', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311153609511686144', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '37', null, '311141114554241024', '2019-03-09 14:53:21', '311141114554241024', '2019-03-09 14:53:21', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311153609574600704', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '34', null, '311141114554241024', '2019-03-09 14:53:21', '311141114554241024', '2019-03-09 14:53:21', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311154025595031552', '311140143417675776', '311141833835433984', '311141833835433985', '2', '13244444444', '', null, '37', null, '311141114554241024', '2019-03-09 14:55:01', '311141114554241024', '2019-03-09 14:55:01', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311154025641168896', '311139655368462336', '311141833835433984', '311141833835433985', '2', '13233333333', '', null, '34', null, '311141114554241024', '2019-03-09 14:55:01', '311141114554241024', '2019-03-09 14:55:01', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311166111528153088', '311140143417675776', '311163862118715392', '311163862118715393', '2', '13244444444', '', null, '-22393', null, '311141114554241024', '2019-03-09 15:43:04', '311141114554241024', '2019-03-09 15:43:04', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311166172593025024', '311139655368462336', '311163862118715392', '311163862118715393', '2', '13233333333', '', null, '-20357', null, '311141114554241024', '2019-03-09 15:43:17', '311141114554241024', '2019-03-09 15:43:17', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311166215433646080', '311139655368462336', '311163862118715392', '311163862118715393', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 15:43:27', '311141114554241024', '2019-03-09 15:43:27', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311166493314674688', '311140143417675776', '311163862118715392', '311163862118715393', '2', '13244444444', '', null, '37', null, '311141114554241024', '2019-03-09 15:44:34', '311141114554241024', '2019-03-09 15:44:34', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311166497194405888', '311139655368462336', '311163862118715392', '311163862118715393', '2', '13233333333', '', null, '34', null, '311141114554241024', '2019-03-09 15:44:35', '311141114554241024', '2019-03-09 15:44:35', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311166734420045824', '311139655368462336', '311163862118715392', '311163862118715393', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 15:45:31', '311141114554241024', '2019-03-09 15:45:31', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311168442030256128', '311140143417675776', '311168277294764032', '311168277298958336', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311168442030256129', '311139655368462336', '311168277294764032', '311168277298958336', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311168442093170688', '311139655368462336', '311168277294764032', '311168277298958336', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311169482746130432', '311140143417675776', '311169221390651392', '311169221394845696', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 15:56:27', '311141114554241024', '2019-03-09 15:56:27', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311169490165854208', '311139655368462336', '311169221390651392', '311169221394845696', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 15:56:28', '311141114554241024', '2019-03-09 15:56:28', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311169778658471936', '311139655368462336', '311169221390651392', '311169221394845696', '2', '13233333333', '', null, '0', null, '311141114554241024', '2019-03-09 15:57:36', '311141114554241024', '2019-03-09 15:57:36', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311171459093786624', '311139655368462336', '311171368014467072', '311171368018661376', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311171459395776512', '311140143417675776', '311171368014467072', '311171368018661376', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311171459454496768', '311139655368462336', '311171368014467072', '311171368018661376', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311174135319785472', '311139655368462336', '311173969825124352', '311173969825124353', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311174135458197504', '311140143417675776', '311173969825124352', '311173969825124353', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311174135516917760', '311139655368462336', '311173969825124352', '311173969825124353', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311175471914446848', '311139655368462336', '311175384123461632', '311175384127655936', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311175472132550656', '311140143417675776', '311175384123461632', '311175384127655936', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311175472208048128', '311139655368462336', '311175384123461632', '311175384127655936', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311180393837916160', '311139655368462336', '311178259323047936', '311178259327242240', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311180393967939584', '311140143417675776', '311178259323047936', '311178259327242240', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311180394022465536', '311139655368462336', '311178259323047936', '311178259327242240', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311182337725853696', '311139655368462336', '311180412519337984', '311180412519337985', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311182337771991040', '311140143417675776', '311180412519337984', '311180412519337985', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311182337847488512', '311139655368462336', '311180412519337984', '311180412519337985', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311182337990094848', '311139655368462336', '311180412519337984', '311180412519337985', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311182338157867008', '311140143417675776', '311180412519337984', '311180412519337985', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311182340720586752', '311139655368462336', '311180412519337984', '311180412519337985', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-09 16:47:32', '311141114554241024', '2019-03-09 16:47:32', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311833947728662528', '311139655368462336', '311833874433200128', '311833874437394432', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311833948022263808', '311140143417675776', '311833874433200128', '311833874437394432', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311833948089372672', '311139655368462336', '311833874433200128', '311833874437394432', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_06` VALUES ('311836370761306112', '311139655368462336', '311836271444381696', '311836271448576000', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311836371063296000', '311140143417675776', '311836271444381696', '311836271448576000', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 12:06:25', '311141114554241024', '2019-03-11 12:06:25', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311836371142987776', '311139655368462336', '311836271444381696', '311836271448576000', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 12:06:25', '311141114554241024', '2019-03-11 12:06:25', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311855669395738624', '311139655368462336', '311855575434940416', '311855575439134720', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311855669706117120', '311140143417675776', '311855575434940416', '311855575439134720', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311855669773225984', '311139655368462336', '311855575434940416', '311855575439134720', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311861436333051904', '311139655368462336', '311861312521392128', '311861312521392129', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311861436471463936', '311140143417675776', '311861312521392128', '311861312521392129', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311861436534378496', '311139655368462336', '311861312521392128', '311861312521392129', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311862881350479872', '311140143417675776', '311861743905558528', '311861743909752832', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:51:45', '311141114554241024', '2019-03-11 13:51:45', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311862883674124288', '311139655368462336', '311861743905558528', '311861743909752832', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:51:46', '311141114554241024', '2019-03-11 13:51:46', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311863088154832896', '311139655368462336', '311861743905558528', '311861743909752832', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:52:34', '311141114554241024', '2019-03-11 13:52:34', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311864739280351232', '311139655368462336', '311864648620462080', '311864648620462081', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311864739292934144', '311140143417675776', '311864648620462080', '311864648620462081', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311864739355848704', '311139655368462336', '311864648620462080', '311864648620462081', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311865639180857345', '311139655368462336', '311865551964491776', '311865551968686080', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311865882819588096', '311140143417675776', '311865551964491776', '311865551968686080', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:03:41', '311141114554241024', '2019-03-11 14:03:41', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311865882932834304', '311139655368462336', '311865551964491776', '311865551968686080', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:03:41', '311141114554241024', '2019-03-11 14:03:41', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311866680714620928', '311139655368462336', '311866615665152000', '311866615669346304', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311866680760758273', '311140143417675776', '311866615665152000', '311866615669346304', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311866789900742656', '311139655368462336', '311866615665152000', '311866615669346304', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:07:17', '311141114554241024', '2019-03-11 14:07:17', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311867411236548608', '311139655368462336', '311867317305102336', '311867317309296640', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311867411723087872', '311140143417675776', '311867317305102336', '311867317309296640', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:09:56', '311141114554241024', '2019-03-11 14:09:56', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311867479821807616', '311139655368462336', '311867317305102336', '311867317309296640', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:10:13', '311141114554241024', '2019-03-11 14:10:13', '0', '132****3333', null);
INSERT INTO `prize_list_06` VALUES ('311869331548303360', '311139655368462336', '311869275034243072', '311869275038437376', '3', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****3333', '黄金');
INSERT INTO `prize_list_06` VALUES ('311869344898772992', '311140143417675776', '311869275034243072', '311869275038437376', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****4444', null);
INSERT INTO `prize_list_06` VALUES ('311869344957493248', '311139655368462336', '311869275034243072', '311869275038437376', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****3333', null);

-- ----------------------------
-- Table structure for prize_list_07
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_07`;
CREATE TABLE `prize_list_07` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_07
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_08
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_08`;
CREATE TABLE `prize_list_08` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_08
-- ----------------------------

-- ----------------------------
-- Table structure for prize_list_09
-- ----------------------------
DROP TABLE IF EXISTS `prize_list_09`;
CREATE TABLE `prize_list_09` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '获得返利用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励表（按奖励收取人）';

-- ----------------------------
-- Records of prize_list_09
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_00
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_00`;
CREATE TABLE `prize_produce_list_00` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_00
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_01
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_01`;
CREATE TABLE `prize_produce_list_01` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_01
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_02
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_02`;
CREATE TABLE `prize_produce_list_02` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_02
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_03
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_03`;
CREATE TABLE `prize_produce_list_03` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_03
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_04
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_04`;
CREATE TABLE `prize_produce_list_04` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_04
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_05
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_05`;
CREATE TABLE `prize_produce_list_05` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_05
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_06
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_06`;
CREATE TABLE `prize_produce_list_06` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_06
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_07
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_07`;
CREATE TABLE `prize_produce_list_07` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_07
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_08
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_08`;
CREATE TABLE `prize_produce_list_08` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_08
-- ----------------------------

-- ----------------------------
-- Table structure for prize_produce_list_09
-- ----------------------------
DROP TABLE IF EXISTS `prize_produce_list_09`;
CREATE TABLE `prize_produce_list_09` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '产生返利人的用户id',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生返利记录的关联订单号',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `prize_type` tinyint(1) DEFAULT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-店铺奖励 4-其他奖励',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '手机号',
  `member_name` varchar(32) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户名',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `prize` bigint(32) DEFAULT NULL COMMENT '奖励金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间\\结算时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
  `level_name` varchar(64) DEFAULT NULL COMMENT '店铺奖励等级名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奖励产生表（按奖励产生人）';

-- ----------------------------
-- Records of prize_produce_list_09
-- ----------------------------
