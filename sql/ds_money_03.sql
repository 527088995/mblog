/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_money_03

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:18:24
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
INSERT INTO `money_list_02` VALUES ('311833947925794816', '311140276289032192', '1', '0', null, '13967', '2', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****5555', '311833874437394432', '13255555555');
INSERT INTO `money_list_02` VALUES ('311836370962632704', '311140276289032192', '1', '0', null, '13967', '2', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****5555', '311836271448576000', '13255555555');
INSERT INTO `money_list_02` VALUES ('311855669613842432', '311140276289032192', '1', '0', null, '13967', '2', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****5555', '311855575439134720', '13255555555');
INSERT INTO `money_list_02` VALUES ('311861436370800640', '311140276289032192', '1', '0', null, '13967', '2', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****5555', '311861312521392129', '13255555555');
INSERT INTO `money_list_02` VALUES ('311862872966066176', '311140276289032192', '1', '0', null, '13967', '2', '311861743905558528', null, '1', null, '2019-03-11 13:51:44', null, '2019-03-11 13:51:44', '0', '132****5555', '311861743909752832', '13255555555');
INSERT INTO `money_list_02` VALUES ('311864739192270849', '311140276289032192', '1', '0', null, '13967', '2', '311864648620462080', null, '1', null, '2019-03-11 13:59:08', null, '2019-03-11 13:59:08', '0', '132****5555', '311864648620462081', '13255555555');
INSERT INTO `money_list_02` VALUES ('311865639218606081', '311140276289032192', '1', '0', null, '13967', '2', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****5555', '311865551968686080', '13255555555');
INSERT INTO `money_list_02` VALUES ('311866680706232320', '311140276289032192', '1', '0', null, '13967', '2', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****5555', '311866615669346304', '13255555555');
INSERT INTO `money_list_02` VALUES ('311867411253325824', '311140276289032192', '1', '0', null, '13967', '2', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****5555', '311867317309296640', '13255555555');
INSERT INTO `money_list_02` VALUES ('311869344802304000', '311140276289032192', '1', '0', null, '13967', '2', '311869275034243072', null, '1', null, '2019-03-11 14:17:26', null, '2019-03-11 14:17:26', '0', '132****5555', '311869275038437376', '13255555555');

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
INSERT INTO `prize_list_02` VALUES ('311143485787230208', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:13:08', '311141114554241024', '2019-03-09 14:13:08', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311148171110010880', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:31:45', '311141114554241024', '2019-03-09 14:31:45', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311148498714513408', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:03', '311141114554241024', '2019-03-09 14:33:03', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311148702675128320', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:52', '311141114554241024', '2019-03-09 14:33:52', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311148889334239232', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:34:36', '311141114554241024', '2019-03-09 14:34:36', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311149494815576064', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:37:00', '311141114554241024', '2019-03-09 14:37:00', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311149883262652416', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:38:33', '311141114554241024', '2019-03-09 14:38:33', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311150116755361792', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:39:29', '311141114554241024', '2019-03-09 14:39:29', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311150314244165632', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '0', null, '311141114554241024', '2019-03-09 14:40:16', '311141114554241024', '2019-03-09 14:40:16', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311151024432107520', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '41', null, '311141114554241024', '2019-03-09 14:43:05', '311141114554241024', '2019-03-09 14:43:05', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311152041278197760', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '41', null, '311141114554241024', '2019-03-09 14:47:08', '311141114554241024', '2019-03-09 14:47:08', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311153609444577280', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '41', null, '311141114554241024', '2019-03-09 14:53:21', '311141114554241024', '2019-03-09 14:53:21', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311154025536311296', '311140276289032192', '311141833835433984', '311141833835433985', '2', '13255555555', '', null, '41', null, '311141114554241024', '2019-03-09 14:55:01', '311141114554241024', '2019-03-09 14:55:01', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311166105404469248', '311140276289032192', '311163862118715392', '311163862118715393', '2', '13255555555', '', null, '-24429', null, '311141114554241024', '2019-03-09 15:43:02', '311141114554241024', '2019-03-09 15:43:02', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311166441645043712', '311140276289032192', '311163862118715392', '311163862118715393', '2', '13255555555', '', null, '41', null, '311141114554241024', '2019-03-09 15:44:33', '311141114554241024', '2019-03-09 15:44:33', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311168441946370048', '311140276289032192', '311168277294764032', '311168277298958336', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311169473325723648', '311140276289032192', '311169221390651392', '311169221394845696', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 15:56:26', '311141114554241024', '2019-03-09 15:56:26', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311171459307696128', '311140276289032192', '311171368014467072', '311171368018661376', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311174135395282944', '311140276289032192', '311173969825124352', '311173969825124353', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311175472057053184', '311140276289032192', '311175384123461632', '311175384127655936', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311180393896636416', '311140276289032192', '311178259323047936', '311178259327242240', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311182333594464256', '311140276289032192', '311180412519337984', '311180412519337985', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311182338048815104', '311140276289032192', '311180412519337984', '311180412519337985', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311833947959349248', '311140276289032192', '311833874433200128', '311833874437394432', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_02` VALUES ('311836370996187136', '311140276289032192', '311836271444381696', '311836271448576000', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311855669643202560', '311140276289032192', '311855575434940416', '311855575439134720', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311861436404355072', '311140276289032192', '311861312521392128', '311861312521392129', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311862875721723904', '311140276289032192', '311861743905558528', '311861743909752832', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:51:44', '311141114554241024', '2019-03-11 13:51:44', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311864739217436672', '311140276289032192', '311864648620462080', '311864648620462081', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311865639247966208', '311140276289032192', '311865551964491776', '311865551968686080', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311866680714620929', '311140276289032192', '311866615665152000', '311866615669346304', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311867411270103040', '311140276289032192', '311867317305102336', '311867317309296640', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****5555', null);
INSERT INTO `prize_list_02` VALUES ('311869344835858432', '311140276289032192', '311869275034243072', '311869275038437376', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****5555', null);

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
