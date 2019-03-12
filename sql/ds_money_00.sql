/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_money_00

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:17:57
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
INSERT INTO `money_list_08` VALUES ('311833947502170112', '311140943598604288', '1', '0', null, '36082', '2', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****8888', '311833874437394432', '13288888888');
INSERT INTO `money_list_08` VALUES ('311833947506364416', '311140943598604288', '1', '0', null, '26771', '3', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****8888', '311833874437394432', '13288888888');
INSERT INTO `money_list_08` VALUES ('311833947623804928', '311140774526210048', '1', '0', null, '22115', '3', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****7777', '311833874437394432', '13277777777');
INSERT INTO `money_list_08` VALUES ('311833947791577088', '311140774526210048', '1', '0', null, '16295', '2', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****7777', '311833874437394432', '13277777777');
INSERT INTO `money_list_08` VALUES ('311833947862880256', '311140627369054208', '1', '0', null, '15131', '2', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****6666', '311833874437394432', '13266666666');
INSERT INTO `money_list_08` VALUES ('311836370518036480', '311140943598604288', '1', '0', null, '36082', '2', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****8888', '311836271448576000', '13288888888');
INSERT INTO `money_list_08` VALUES ('311836370522230784', '311140943598604288', '1', '0', null, '26771', '3', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****8888', '311836271448576000', '13288888888');
INSERT INTO `money_list_08` VALUES ('311836370656448512', '311140774526210048', '1', '0', null, '22115', '3', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****7777', '311836271448576000', '13277777777');
INSERT INTO `money_list_08` VALUES ('311836370824220672', '311140774526210048', '1', '0', null, '16295', '2', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****7777', '311836271448576000', '13277777777');
INSERT INTO `money_list_08` VALUES ('311836370903912448', '311140627369054208', '1', '0', null, '15131', '2', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****6666', '311836271448576000', '13266666666');
INSERT INTO `money_list_08` VALUES ('311855669135691776', '311140943598604288', '1', '0', null, '36082', '2', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****8888', '311855575439134720', '13288888888');
INSERT INTO `money_list_08` VALUES ('311855669135691777', '311140943598604288', '1', '0', null, '26771', '3', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****8888', '311855575439134720', '13288888888');
INSERT INTO `money_list_08` VALUES ('311855669295075328', '311140774526210048', '1', '0', null, '22115', '3', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****7777', '311855575439134720', '13277777777');
INSERT INTO `money_list_08` VALUES ('311855669471236096', '311140774526210048', '1', '0', null, '16295', '2', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****7777', '311855575439134720', '13277777777');
INSERT INTO `money_list_08` VALUES ('311855669542539264', '311140627369054208', '1', '0', null, '15131', '2', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****6666', '311855575439134720', '13266666666');
INSERT INTO `money_list_08` VALUES ('311861436056227840', '311140943598604288', '1', '0', null, '36082', '2', '311861312521392128', null, '1', null, '2019-03-11 13:46:00', null, '2019-03-11 13:46:00', '0', '132****8888', '311861312521392129', '13288888888');
INSERT INTO `money_list_08` VALUES ('311861436093976576', '311140943598604288', '1', '0', null, '26771', '3', '311861312521392128', null, '1', null, '2019-03-11 13:46:00', null, '2019-03-11 13:46:00', '0', '132****8888', '311861312521392129', '13288888888');
INSERT INTO `money_list_08` VALUES ('311861436203028480', '311140774526210048', '1', '0', null, '22115', '3', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****7777', '311861312521392129', '13277777777');
INSERT INTO `money_list_08` VALUES ('311861436207222784', '311140774526210048', '1', '0', null, '16295', '2', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****7777', '311861312521392129', '13277777777');
INSERT INTO `money_list_08` VALUES ('311861436295303169', '311140627369054208', '1', '0', null, '15131', '2', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****6666', '311861312521392129', '13266666666');
INSERT INTO `money_list_08` VALUES ('311862022256357376', '311140943598604288', '1', '0', null, '36082', '2', '311861743905558528', null, '1', null, '2019-03-11 13:48:48', null, '2019-03-11 13:48:48', '0', '132****8888', '311861743909752832', '13288888888');
INSERT INTO `money_list_08` VALUES ('311862203534176256', '311140943598604288', '1', '0', null, '26771', '3', '311861743905558528', null, '1', null, '2019-03-11 13:49:03', null, '2019-03-11 13:49:03', '0', '132****8888', '311861743909752832', '13288888888');
INSERT INTO `money_list_08` VALUES ('311862867240841216', '311140774526210048', '1', '0', null, '16295', '2', '311861743905558528', null, '1', null, '2019-03-11 13:51:42', null, '2019-03-11 13:51:42', '0', '132****7777', '311861743909752832', '13277777777');
INSERT INTO `money_list_08` VALUES ('311862869400907776', '311140627369054208', '1', '0', null, '15131', '2', '311861743905558528', null, '1', null, '2019-03-11 13:51:43', null, '2019-03-11 13:51:43', '0', '132****6666', '311861743909752832', '13266666666');
INSERT INTO `money_list_08` VALUES ('311862881346285568', '311140774526210048', '1', '0', null, '22115', '3', '311861743905558528', null, '1', null, '2019-03-11 13:51:45', null, '2019-03-11 13:51:45', '0', '132****7777', '311861743909752832', '13277777777');
INSERT INTO `money_list_08` VALUES ('311864719617454080', '311140943598604288', '1', '0', null, '36082', '2', '311864648620462080', null, '1', null, '2019-03-11 13:59:03', null, '2019-03-11 13:59:03', '0', '132****8888', '311864648620462081', '13288888888');
INSERT INTO `money_list_08` VALUES ('311864721697828864', '311140774526210048', '1', '0', null, '16295', '2', '311864648620462080', null, '1', null, '2019-03-11 13:59:04', null, '2019-03-11 13:59:04', '0', '132****7777', '311864648620462081', '13277777777');
INSERT INTO `money_list_08` VALUES ('311864721748160512', '311140943598604288', '1', '0', null, '26771', '3', '311864648620462080', null, '1', null, '2019-03-11 13:59:04', null, '2019-03-11 13:59:04', '0', '132****8888', '311864648620462081', '13288888888');
INSERT INTO `money_list_08` VALUES ('311864722096287744', '311140627369054208', '1', '0', null, '15131', '2', '311864648620462080', null, '1', null, '2019-03-11 13:59:08', null, '2019-03-11 13:59:08', '0', '132****6666', '311864648620462081', '13266666666');
INSERT INTO `money_list_08` VALUES ('311864739192270848', '311140774526210048', '1', '0', null, '22115', '3', '311864648620462080', null, '1', null, '2019-03-11 13:59:08', null, '2019-03-11 13:59:08', '0', '132****7777', '311864648620462081', '13277777777');
INSERT INTO `money_list_08` VALUES ('311865638979530752', '311140943598604288', '1', '0', null, '36082', '2', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****8888', '311865551968686080', '13288888888');
INSERT INTO `money_list_08` VALUES ('311865639017279488', '311140943598604288', '1', '0', null, '26771', '3', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****8888', '311865551968686080', '13288888888');
INSERT INTO `money_list_08` VALUES ('311865639029862400', '311140774526210048', '1', '0', null, '16295', '2', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****7777', '311865551968686080', '13277777777');
INSERT INTO `money_list_08` VALUES ('311865639075999744', '311140774526210048', '1', '0', null, '22115', '3', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****7777', '311865551968686080', '13277777777');
INSERT INTO `money_list_08` VALUES ('311865639159885825', '311140627369054208', '1', '0', null, '15131', '2', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****6666', '311865551968686080', '13266666666');
INSERT INTO `money_list_08` VALUES ('311866680546848768', '311140943598604288', '1', '0', null, '36082', '2', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****8888', '311866615669346304', '13288888888');
INSERT INTO `money_list_08` VALUES ('311866680605569024', '311140943598604288', '1', '0', null, '26771', '3', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****8888', '311866615669346304', '13288888888');
INSERT INTO `money_list_08` VALUES ('311866680626540544', '311140774526210048', '1', '0', null, '16295', '2', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****7777', '311866615669346304', '13277777777');
INSERT INTO `money_list_08` VALUES ('311866680651706368', '311140774526210048', '1', '0', null, '22115', '3', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****7777', '311866615669346304', '13277777777');
INSERT INTO `money_list_08` VALUES ('311866680660094976', '311140627369054208', '1', '0', null, '15131', '2', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****6666', '311866615669346304', '13266666666');
INSERT INTO `money_list_08` VALUES ('311867411022639104', '311140943598604288', '1', '0', null, '36082', '2', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****8888', '311867317309296640', '13288888888');
INSERT INTO `money_list_08` VALUES ('311867411089747968', '311140943598604288', '1', '0', null, '26771', '3', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****8888', '311867317309296640', '13288888888');
INSERT INTO `money_list_08` VALUES ('311867411102330880', '311140774526210048', '1', '0', null, '16295', '2', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****7777', '311867317309296640', '13277777777');
INSERT INTO `money_list_08` VALUES ('311867411144273920', '311140774526210048', '1', '0', null, '22115', '3', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****7777', '311867317309296640', '13277777777');
INSERT INTO `money_list_08` VALUES ('311867411156856832', '311140627369054208', '1', '0', null, '15131', '2', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****6666', '311867317309296640', '13266666666');
INSERT INTO `money_list_08` VALUES ('311869331288256512', '311140943598604288', '1', '0', null, '26771', '3', '311869275034243072', null, '1', null, '2019-03-11 14:17:23', null, '2019-03-11 14:17:23', '0', '132****8888', '311869275038437376', '13288888888');
INSERT INTO `money_list_08` VALUES ('311869331288256513', '311140943598604288', '1', '0', null, '36082', '2', '311869275034243072', null, '1', null, '2019-03-11 14:17:23', null, '2019-03-11 14:17:23', '0', '132****8888', '311869275038437376', '13288888888');
INSERT INTO `money_list_08` VALUES ('311869331460222976', '311140774526210048', '1', '0', null, '22115', '3', '311869275034243072', null, '1', null, '2019-03-11 14:17:23', null, '2019-03-11 14:17:23', '0', '132****7777', '311869275038437376', '13277777777');
INSERT INTO `money_list_08` VALUES ('311869331598635008', '311140774526210048', '1', '0', null, '16295', '2', '311869275034243072', null, '1', null, '2019-03-11 14:17:23', null, '2019-03-11 14:17:23', '0', '132****7777', '311869275038437376', '13277777777');
INSERT INTO `money_list_08` VALUES ('311869344701640704', '311140627369054208', '1', '0', null, '15131', '2', '311869275034243072', null, '1', null, '2019-03-11 14:17:26', null, '2019-03-11 14:17:26', '0', '132****6666', '311869275038437376', '13266666666');

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
  `nick_name` varchar(255) DEFAULT '' COMMENT '昵称',
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
INSERT INTO `prize_list_08` VALUES ('311143485602680832', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:13:08', '311141114554241024', '2019-03-09 14:13:08', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311143485665595392', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:13:08', '311141114554241024', '2019-03-09 14:13:08', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311143485728509952', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:13:08', '311141114554241024', '2019-03-09 14:13:08', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148170921267200', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:31:45', '311141114554241024', '2019-03-09 14:31:45', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148170984181760', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:31:45', '311141114554241024', '2019-03-09 14:31:45', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148171047096320', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:31:45', '311141114554241024', '2019-03-09 14:31:45', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148498571907072', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:03', '311141114554241024', '2019-03-09 14:33:03', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148498613850112', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:03', '311141114554241024', '2019-03-09 14:33:03', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148498672570368', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:03', '311141114554241024', '2019-03-09 14:33:03', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148702486384640', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:52', '311141114554241024', '2019-03-09 14:33:52', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148702545104896', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:52', '311141114554241024', '2019-03-09 14:33:52', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148702608019456', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:33:52', '311141114554241024', '2019-03-09 14:33:52', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148889132912640', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:34:36', '311141114554241024', '2019-03-09 14:34:36', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148889195827200', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:34:36', '311141114554241024', '2019-03-09 14:34:36', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311148889267130368', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:34:36', '311141114554241024', '2019-03-09 14:34:36', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311149494589083648', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:37:00', '311141114554241024', '2019-03-09 14:37:00', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311149494660386816', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:37:00', '311141114554241024', '2019-03-09 14:37:00', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311149494748467200', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:37:00', '311141114554241024', '2019-03-09 14:37:00', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311149882885165056', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:38:33', '311141114554241024', '2019-03-09 14:38:33', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311149883111657472', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:38:33', '311141114554241024', '2019-03-09 14:38:33', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311149883178766336', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:38:33', '311141114554241024', '2019-03-09 14:38:33', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311150082475315200', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:39:23', '311141114554241024', '2019-03-09 14:39:23', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311150096039694336', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:39:29', '311141114554241024', '2019-03-09 14:39:29', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311150116692447232', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:39:29', '311141114554241024', '2019-03-09 14:39:29', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311150313904427008', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 14:40:16', '311141114554241024', '2019-03-09 14:40:16', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311150314122530816', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 14:40:16', '311141114554241024', '2019-03-09 14:40:16', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311150314185445376', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '0', null, '311141114554241024', '2019-03-09 14:40:16', '311141114554241024', '2019-03-09 14:40:16', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311151024226586624', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '106', null, '311141114554241024', '2019-03-09 14:43:05', '311141114554241024', '2019-03-09 14:43:05', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311151024293695488', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '48', null, '311141114554241024', '2019-03-09 14:43:05', '311141114554241024', '2019-03-09 14:43:05', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311151024364998656', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '44', null, '311141114554241024', '2019-03-09 14:43:05', '311141114554241024', '2019-03-09 14:43:05', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311152040930070528', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '106', null, '311141114554241024', '2019-03-09 14:47:07', '311141114554241024', '2019-03-09 14:47:07', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311152041143980032', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '48', null, '311141114554241024', '2019-03-09 14:47:08', '311141114554241024', '2019-03-09 14:47:08', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311152041211088896', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '44', null, '311141114554241024', '2019-03-09 14:47:08', '311141114554241024', '2019-03-09 14:47:08', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311153609008369664', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '106', null, '311141114554241024', '2019-03-09 14:53:21', '311141114554241024', '2019-03-09 14:53:21', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311153609209696256', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '48', null, '311141114554241024', '2019-03-09 14:53:21', '311141114554241024', '2019-03-09 14:53:21', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311153609377468416', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '44', null, '311141114554241024', '2019-03-09 14:53:21', '311141114554241024', '2019-03-09 14:53:21', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311154013985198080', '311140943598604288', '311141833835433984', '311141833835433985', '2', '13288888888', '', null, '106', null, '311141114554241024', '2019-03-09 14:55:01', '311141114554241024', '2019-03-09 14:55:01', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311154025406287872', '311140774526210048', '311141833835433984', '311141833835433985', '2', '13277777777', '', null, '48', null, '311141114554241024', '2019-03-09 14:55:01', '311141114554241024', '2019-03-09 14:55:01', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311154025469202432', '311140627369054208', '311141833835433984', '311141833835433985', '2', '13266666666', '', null, '44', null, '311141114554241024', '2019-03-09 14:55:01', '311141114554241024', '2019-03-09 14:55:01', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166086316191744', '311140943598604288', '311163862118715392', '311163862118715393', '2', '13288888888', '', null, '-63109', null, '311141114554241024', '2019-03-09 15:42:56', '311141114554241024', '2019-03-09 15:42:56', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166088270737408', '311140774526210048', '311163862118715392', '311163862118715393', '2', '13277777777', '', null, '-28500', null, '311141114554241024', '2019-03-09 15:42:58', '311141114554241024', '2019-03-09 15:42:58', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166100006400000', '311140627369054208', '311163862118715392', '311163862118715393', '2', '13266666666', '', null, '-26465', null, '311141114554241024', '2019-03-09 15:43:00', '311141114554241024', '2019-03-09 15:43:00', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166207560937472', '311140943598604288', '311163862118715392', '311163862118715393', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 15:43:25', '311141114554241024', '2019-03-09 15:43:25', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166215316205568', '311140774526210048', '311163862118715392', '311163862118715393', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 15:43:27', '311141114554241024', '2019-03-09 15:43:27', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166390600364032', '311140943598604288', '311163862118715392', '311163862118715393', '2', '13288888888', '', null, '106', null, '311141114554241024', '2019-03-09 15:44:14', '311141114554241024', '2019-03-09 15:44:14', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166428143579136', '311140774526210048', '311163862118715392', '311163862118715393', '2', '13277777777', '', null, '48', null, '311141114554241024', '2019-03-09 15:44:19', '311141114554241024', '2019-03-09 15:44:19', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166434569252864', '311140627369054208', '311163862118715392', '311163862118715393', '2', '13266666666', '', null, '44', null, '311141114554241024', '2019-03-09 15:44:19', '311141114554241024', '2019-03-09 15:44:19', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166650483634176', '311140943598604288', '311163862118715392', '311163862118715393', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 15:45:11', '311141114554241024', '2019-03-09 15:45:11', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311166683136290816', '311140774526210048', '311163862118715392', '311163862118715393', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 15:45:18', '311141114554241024', '2019-03-09 15:45:18', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311168417753624576', '311140943598604288', '311168277294764032', '311168277298958336', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 15:52:12', '311141114554241024', '2019-03-09 15:52:12', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311168441799569408', '311140774526210048', '311168277294764032', '311168277298958336', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311168441845706752', '311140943598604288', '311168277294764032', '311168277298958336', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311168441875066880', '311140627369054208', '311168277294764032', '311168277298958336', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311168441921204224', '311140774526210048', '311168277294764032', '311168277298958336', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311169357827174400', '311140943598604288', '311169221390651392', '311169221394845696', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 15:55:56', '311141114554241024', '2019-03-09 15:55:56', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311169358338879488', '311140774526210048', '311169221390651392', '311169221394845696', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 15:56:11', '311141114554241024', '2019-03-09 15:56:11', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311169418128683008', '311140627369054208', '311169221390651392', '311169221394845696', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 15:56:24', '311141114554241024', '2019-03-09 15:56:24', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311169418132877312', '311140943598604288', '311169221390651392', '311169221394845696', '2', '13288888888', '', null, '0', null, '311141114554241024', '2019-03-09 15:56:11', '311141114554241024', '2019-03-09 15:56:11', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311169768411787264', '311140774526210048', '311169221390651392', '311169221394845696', '2', '13277777777', '', null, '0', null, '311141114554241024', '2019-03-09 15:57:34', '311141114554241024', '2019-03-09 15:57:34', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311171458909237248', '311140943598604288', '311171368014467072', '311171368018661376', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311171458909237249', '311140943598604288', '311171368014467072', '311171368018661376', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311171459001511936', '311140774526210048', '311171368014467072', '311171368018661376', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311171459135729664', '311140774526210048', '311171368014467072', '311171368018661376', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311171459228004352', '311140627369054208', '311171368014467072', '311171368018661376', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311174135135236096', '311140943598604288', '311173969825124352', '311173969825124353', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311174135164596224', '311140943598604288', '311173969825124352', '311173969825124353', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311174135227510784', '311140774526210048', '311173969825124352', '311173969825124353', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311174135235899392', '311140774526210048', '311173969825124352', '311173969825124353', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311174135319785473', '311140627369054208', '311173969825124352', '311173969825124353', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311175471625039872', '311140943598604288', '311175384123461632', '311175384127655936', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311175471625039873', '311140943598604288', '311175384123461632', '311175384127655936', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311175471721508864', '311140774526210048', '311175384123461632', '311175384127655936', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311175471855726592', '311140774526210048', '311175384123461632', '311175384127655936', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311175471968972800', '311140627369054208', '311175384123461632', '311175384127655936', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311180381712183296', '311140943598604288', '311178259323047936', '311178259327242240', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 16:39:44', '311141114554241024', '2019-03-09 16:39:44', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311180393716281344', '311140943598604288', '311178259323047936', '311178259327242240', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311180393745641472', '311140774526210048', '311178259323047936', '311178259327242240', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311180393779195904', '311140774526210048', '311178259323047936', '311178259327242240', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311180393842110464', '311140627369054208', '311178259323047936', '311178259327242240', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182325688201216', '311140943598604288', '311180412519337984', '311180412519337985', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 16:47:28', '311141114554241024', '2019-03-09 16:47:28', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182325751115776', '311140774526210048', '311180412519337984', '311180412519337985', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 16:47:28', '311141114554241024', '2019-03-09 16:47:28', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182325784670208', '311140943598604288', '311180412519337984', '311180412519337985', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-09 16:47:28', '311141114554241024', '2019-03-09 16:47:28', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182325826613249', '311140627369054208', '311180412519337984', '311180412519337985', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 16:47:28', '311141114554241024', '2019-03-09 16:47:28', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182326187323392', '311140774526210048', '311180412519337984', '311180412519337985', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-09 16:47:28', '311141114554241024', '2019-03-09 16:47:28', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182337801351168', '311140943598604288', '311180412519337984', '311180412519337985', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182337851682816', '311140943598604288', '311180412519337984', '311180412519337985', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182337881042944', '311140774526210048', '311180412519337984', '311180412519337985', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182337910403072', '311140774526210048', '311180412519337984', '311180412519337985', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311182337943957504', '311140627369054208', '311180412519337984', '311180412519337985', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311833947573473280', '311140943598604288', '311833874433200128', '311833874437394432', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311833947573473281', '311140943598604288', '311833874433200128', '311833874437394432', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311833947661553664', '311140774526210048', '311833874433200128', '311833874437394432', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311833947820937216', '311140774526210048', '311833874433200128', '311833874437394432', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311833947896434688', '311140627369054208', '311833874433200128', '311833874437394432', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_08` VALUES ('311836370606116864', '311140943598604288', '311836271444381696', '311836271448576000', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311836370606116865', '311140943598604288', '311836271444381696', '311836271448576000', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311836370685808640', '311140774526210048', '311836271444381696', '311836271448576000', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311836370857775104', '311140774526210048', '311836271444381696', '311836271448576000', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311836370929078272', '311140627369054208', '311836271444381696', '311836271448576000', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311855669244743680', '311140943598604288', '311855575434940416', '311855575439134720', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311855669244743681', '311140943598604288', '311855575434940416', '311855575439134720', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311855669320241152', '311140774526210048', '311855575434940416', '311855575439134720', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311855669500596224', '311140774526210048', '311855575434940416', '311855575439134720', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311855669571899392', '311140627369054208', '311855575434940416', '311855575439134720', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311861436081393664', '311140943598604288', '311861312521392128', '311861312521392129', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:46:00', '311141114554241024', '2019-03-11 13:46:00', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311861436110753792', '311140943598604288', '311861312521392128', '311861312521392129', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:46:00', '311141114554241024', '2019-03-11 13:46:00', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311861436236582912', '311140774526210048', '311861312521392128', '311861312521392129', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311861436236582913', '311140774526210048', '311861312521392128', '311861312521392129', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311861436333051905', '311140627369054208', '311861312521392128', '311861312521392129', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311862139243884544', '311140943598604288', '311861743905558528', '311861743909752832', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:48:52', '311141114554241024', '2019-03-11 13:48:52', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311862203584507904', '311140943598604288', '311861743905558528', '311861743909752832', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:49:03', '311141114554241024', '2019-03-11 13:49:03', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311862867672854528', '311140774526210048', '311861743905558528', '311861743909752832', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:51:42', '311141114554241024', '2019-03-11 13:51:42', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311862871061852160', '311140627369054208', '311861743905558528', '311861743909752832', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:51:43', '311141114554241024', '2019-03-11 13:51:43', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311862885968408576', '311140774526210048', '311861743905558528', '311861743909752832', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:51:46', '311141114554241024', '2019-03-11 13:51:46', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311864719852335104', '311140943598604288', '311864648620462080', '311864648620462081', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:59:04', '311141114554241024', '2019-03-11 13:59:04', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311864721739771904', '311140774526210048', '311864648620462080', '311864648620462081', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:59:04', '311141114554241024', '2019-03-11 13:59:04', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311864721802686464', '311140943598604288', '311864648620462080', '311864648620462081', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:59:04', '311141114554241024', '2019-03-11 13:59:04', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311864739104190464', '311140627369054208', '311864648620462080', '311864648620462081', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311864739221630976', '311140774526210048', '311864648620462080', '311864648620462081', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311865639000502272', '311140943598604288', '311865551964491776', '311865551968686080', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311865639034056704', '311140943598604288', '311865551964491776', '311865551968686080', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311865639063416832', '311140774526210048', '311865551964491776', '311865551968686080', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311865639117942784', '311140774526210048', '311865551964491776', '311865551968686080', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311865639180857344', '311140627369054208', '311865551964491776', '311865551968686080', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311866680592986112', '311140943598604288', '311866615665152000', '311866615669346304', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311866680626540545', '311140943598604288', '311866615665152000', '311866615669346304', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311866680639123456', '311140774526210048', '311866615665152000', '311866615669346304', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311866680676872192', '311140774526210048', '311866615665152000', '311866615669346304', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311866680676872193', '311140627369054208', '311866615665152000', '311866615669346304', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311867411077165056', '311140943598604288', '311867317305102336', '311867317309296640', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311867411106525184', '311140943598604288', '311867317305102336', '311867317309296640', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311867411140079616', '311140774526210048', '311867317305102336', '311867317309296640', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311867411156856833', '311140774526210048', '311867317305102336', '311867317309296640', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311867411211382784', '311140627369054208', '311867317305102336', '311867317309296640', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****6666', null);
INSERT INTO `prize_list_08` VALUES ('311869331384725504', '311140943598604288', '311869275034243072', '311869275038437376', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****8888', null);
INSERT INTO `prize_list_08` VALUES ('311869331384725505', '311140943598604288', '311869275034243072', '311869275038437376', '3', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****8888', '青铜');
INSERT INTO `prize_list_08` VALUES ('311869331485388800', '311140774526210048', '311869275034243072', '311869275038437376', '3', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****7777', '白银');
INSERT INTO `prize_list_08` VALUES ('311869332542353408', '311140774526210048', '311869275034243072', '311869275038437376', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****7777', null);
INSERT INTO `prize_list_08` VALUES ('311869344747778048', '311140627369054208', '311869275034243072', '311869275038437376', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****6666', null);

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
INSERT INTO `prize_produce_list_00` VALUES ('40', '40', '40', '12', '2', '11', '测试11', '33', '11', '2019-03-08 09:32:00', '11', '2019-03-08 09:32:08', '11', '2019-03-08 09:32:08', '0', '', null);
INSERT INTO `prize_produce_list_00` VALUES ('41', '40', '40', '12', '2', '12', '测试22', '33', '22', '2019-03-08 09:32:22', '22', '2019-03-08 09:32:27', '22', '2019-03-08 09:32:27', '0', '', null);
INSERT INTO `prize_produce_list_00` VALUES ('311134780668661760', '311132429090181120', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:38:32', '311132429090181120', '2019-03-09 13:38:32', '0', '', null);
INSERT INTO `prize_produce_list_00` VALUES ('311135314528063488', '311132429090181120', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:40:40', '311132429090181120', '2019-03-09 13:40:40', '0', '', null);
INSERT INTO `prize_produce_list_00` VALUES ('311135474905665536', '311132429090181120', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:41:18', '311132429090181120', '2019-03-09 13:41:18', '0', '', null);
INSERT INTO `prize_produce_list_00` VALUES ('311135703100968960', '311132429090181120', '311134028990664704', '311134028994859008', '2', '13244444444', '', null, '0', null, '311132429090181120', '2019-03-09 13:42:12', '311132429090181120', '2019-03-09 13:42:12', '0', '', null);

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
