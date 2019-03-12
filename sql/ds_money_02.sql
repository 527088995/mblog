/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_money_02

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:18:16
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
INSERT INTO `money_list_04` VALUES ('311833947762216960', '311139381971144704', '1', '0', null, '57034', '3', '311833874433200128', null, '1', null, '2019-03-11 11:56:47', null, '2019-03-11 11:56:47', '0', '132****2222', '311833874437394432', '13222222222');
INSERT INTO `money_list_04` VALUES ('311836370799054848', '311139381971144704', '1', '0', null, '57034', '3', '311836271444381696', null, '1', null, '2019-03-11 12:06:24', null, '2019-03-11 12:06:24', '0', '132****2222', '311836271448576000', '13222222222');
INSERT INTO `money_list_04` VALUES ('311855669433487360', '311139381971144704', '1', '0', null, '57034', '3', '311855575434940416', null, '1', null, '2019-03-11 13:23:06', null, '2019-03-11 13:23:06', '0', '132****2222', '311855575439134720', '13222222222');
INSERT INTO `money_list_04` VALUES ('311861436358217728', '311139381971144704', '1', '0', null, '57034', '3', '311861312521392128', null, '1', null, '2019-03-11 13:46:01', null, '2019-03-11 13:46:01', '0', '132****2222', '311861312521392129', '13222222222');
INSERT INTO `money_list_04` VALUES ('311863145096704000', '311139381971144704', '1', '0', null, '57034', '3', '311861743905558528', null, '1', null, '2019-03-11 13:52:48', null, '2019-03-11 13:52:48', '0', '132****2222', '311861743909752832', '13222222222');
INSERT INTO `money_list_04` VALUES ('311864739313905664', '311139381971144704', '1', '0', null, '57034', '3', '311864648620462080', null, '1', null, '2019-03-11 13:59:08', null, '2019-03-11 13:59:08', '0', '132****2222', '311864648620462081', '13222222222');
INSERT INTO `money_list_04` VALUES ('311865639218606080', '311139381971144704', '1', '0', null, '57034', '3', '311865551964491776', null, '1', null, '2019-03-11 14:02:43', null, '2019-03-11 14:02:43', '0', '132****2222', '311865551968686080', '13222222222');
INSERT INTO `money_list_04` VALUES ('311866680739786752', '311139381971144704', '1', '0', null, '57034', '3', '311866615665152000', null, '1', null, '2019-03-11 14:06:51', null, '2019-03-11 14:06:51', '0', '132****2222', '311866615669346304', '13222222222');
INSERT INTO `money_list_04` VALUES ('311867411270103041', '311139381971144704', '1', '0', null, '57034', '3', '311867317305102336', null, '1', null, '2019-03-11 14:09:45', null, '2019-03-11 14:09:45', '0', '132****2222', '311867317309296640', '13222222222');
INSERT INTO `money_list_04` VALUES ('311869331577663488', '311139381971144704', '1', '0', null, '57034', '3', '311869275034243072', null, '1', null, '2019-03-11 14:17:23', null, '2019-03-11 14:17:23', '0', '132****2222', '311869275038437376', '13222222222');

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
INSERT INTO `prize_list_04` VALUES ('311166215500754944', '311139381971144704', '311163862118715392', '311163862118715393', '2', '13222222222', '', null, '0', null, '311141114554241024', '2019-03-09 15:43:27', '311141114554241024', '2019-03-09 15:43:27', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311166750433898496', '311139381971144704', '311163862118715392', '311163862118715393', '2', '13222222222', '', null, '0', null, '311141114554241024', '2019-03-09 15:45:35', '311141114554241024', '2019-03-09 15:45:35', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311168442122530816', '311139381971144704', '311168277294764032', '311168277298958336', '2', '13222222222', '', null, '0', null, '311141114554241024', '2019-03-09 15:52:18', '311141114554241024', '2019-03-09 15:52:18', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311169778733969408', '311139381971144704', '311169221390651392', '311169221394845696', '2', '13222222222', '', null, '0', null, '311141114554241024', '2019-03-09 15:57:37', '311141114554241024', '2019-03-09 15:57:37', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311171459165089792', '311139381971144704', '311171368014467072', '311171368018661376', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-09 16:04:17', '311141114554241024', '2019-03-09 16:04:17', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311174135382700032', '311139381971144704', '311173969825124352', '311173969825124353', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-09 16:14:55', '311141114554241024', '2019-03-09 16:14:55', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311175472002527232', '311139381971144704', '311175384123461632', '311175384127655936', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-09 16:20:14', '311141114554241024', '2019-03-09 16:20:14', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311180393896636417', '311139381971144704', '311178259323047936', '311178259327242240', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-09 16:39:47', '311141114554241024', '2019-03-09 16:39:47', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311182337797156864', '311139381971144704', '311180412519337984', '311180412519337985', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311182338078175232', '311139381971144704', '311180412519337984', '311180412519337985', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-09 16:47:31', '311141114554241024', '2019-03-09 16:47:31', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311833947787382784', '311139381971144704', '311833874433200128', '311833874437394432', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 11:56:47', '311141114554241024', '2019-03-11 11:56:47', '0', null, null);
INSERT INTO `prize_list_04` VALUES ('311836370832609280', '311139381971144704', '311836271444381696', '311836271448576000', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311855669462847488', '311139381971144704', '311855575434940416', '311855575439134720', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311861436395966464', '311139381971144704', '311861312521392128', '311861312521392129', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311863155444051968', '311139381971144704', '311861743905558528', '311861743909752832', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:52:50', '311141114554241024', '2019-03-11 13:52:50', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311864739360043008', '311139381971144704', '311864648620462080', '311864648620462081', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311865639252160512', '311139381971144704', '311865551964491776', '311865551968686080', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311866680760758272', '311139381971144704', '311866615665152000', '311866615669346304', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311867411299463168', '311139381971144704', '311867317305102336', '311867317309296640', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****2222', '白金');
INSERT INTO `prize_list_04` VALUES ('311869331607023616', '311139381971144704', '311869275034243072', '311869275038437376', '3', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****2222', '白金');

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
INSERT INTO `prize_produce_list_04` VALUES ('311836370606116864', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311836370606116865', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311836370685808640', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311836370761306112', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311836370832609280', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311836370857775104', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311836370929078272', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311836370996187136', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 12:06:24', '311141114554241024', '2019-03-11 12:06:24', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311836371063296000', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 12:06:25', '311141114554241024', '2019-03-11 12:06:25', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311836371142987776', '311141114554241024', '311836271444381696', '311836271448576000', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 12:06:25', '311141114554241024', '2019-03-11 12:06:25', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311855669244743680', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311855669244743681', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311855669320241152', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311855669395738624', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311855669462847488', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311855669500596224', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311855669571899392', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311855669643202560', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311855669706117120', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311855669773225984', '311141114554241024', '311855575434940416', '311855575439134720', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:23:06', '311141114554241024', '2019-03-11 13:23:06', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311861436081393664', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:46:00', '311141114554241024', '2019-03-11 13:46:00', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311861436110753792', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:46:00', '311141114554241024', '2019-03-11 13:46:00', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311861436236582912', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311861436236582913', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311861436333051904', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311861436333051905', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311861436395966464', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311861436404355072', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311861436471463936', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311861436534378496', '311141114554241024', '311861312521392128', '311861312521392129', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:46:01', '311141114554241024', '2019-03-11 13:46:01', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311862139243884544', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:48:52', '311141114554241024', '2019-03-11 13:48:52', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311862203584507904', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:49:03', '311141114554241024', '2019-03-11 13:49:03', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311862867672854528', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:51:42', '311141114554241024', '2019-03-11 13:51:42', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311862871061852160', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:51:43', '311141114554241024', '2019-03-11 13:51:43', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311862875721723904', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:51:44', '311141114554241024', '2019-03-11 13:51:44', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311862881350479872', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:51:45', '311141114554241024', '2019-03-11 13:51:45', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311862883674124288', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:51:46', '311141114554241024', '2019-03-11 13:51:46', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311862885968408576', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:51:46', '311141114554241024', '2019-03-11 13:51:46', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311863088154832896', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:52:34', '311141114554241024', '2019-03-11 13:52:34', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311863155444051968', '311141114554241024', '311861743905558528', '311861743909752832', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:52:50', '311141114554241024', '2019-03-11 13:52:50', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311864719852335104', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 13:59:04', '311141114554241024', '2019-03-11 13:59:04', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311864721739771904', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 13:59:04', '311141114554241024', '2019-03-11 13:59:04', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311864721802686464', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 13:59:04', '311141114554241024', '2019-03-11 13:59:04', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311864739104190464', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311864739217436672', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311864739221630976', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311864739280351232', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311864739292934144', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311864739355848704', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311864739360043008', '311141114554241024', '311864648620462080', '311864648620462081', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 13:59:08', '311141114554241024', '2019-03-11 13:59:08', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311865639000502272', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311865639034056704', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311865639063416832', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311865639117942784', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311865639180857344', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311865639180857345', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311865639247966208', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311865639252160512', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:02:43', '311141114554241024', '2019-03-11 14:02:43', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311865882819588096', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:03:41', '311141114554241024', '2019-03-11 14:03:41', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311865882932834304', '311141114554241024', '311865551964491776', '311865551968686080', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:03:41', '311141114554241024', '2019-03-11 14:03:41', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311866680592986112', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311866680626540545', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311866680639123456', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311866680676872192', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311866680676872193', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311866680714620928', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311866680714620929', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311866680760758272', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311866680760758273', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:06:51', '311141114554241024', '2019-03-11 14:06:51', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311866789900742656', '311141114554241024', '311866615665152000', '311866615669346304', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:07:17', '311141114554241024', '2019-03-11 14:07:17', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311867411077165056', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311867411106525184', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311867411140079616', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311867411156856833', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311867411211382784', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311867411236548608', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311867411270103040', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311867411299463168', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:09:45', '311141114554241024', '2019-03-11 14:09:45', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311867411723087872', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:09:56', '311141114554241024', '2019-03-11 14:09:56', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311867479821807616', '311141114554241024', '311867317305102336', '311867317309296640', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:10:13', '311141114554241024', '2019-03-11 14:10:13', '0', '132****3333', null);
INSERT INTO `prize_produce_list_04` VALUES ('311869331384725504', '311141114554241024', '311869275034243072', '311869275038437376', '2', '13288888888', '', null, '36082', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****8888', null);
INSERT INTO `prize_produce_list_04` VALUES ('311869331384725505', '311141114554241024', '311869275034243072', '311869275038437376', '3', '13288888888', '', null, '26771', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****8888', '青铜');
INSERT INTO `prize_produce_list_04` VALUES ('311869331485388800', '311141114554241024', '311869275034243072', '311869275038437376', '3', '13277777777', '', null, '22115', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****7777', '白银');
INSERT INTO `prize_produce_list_04` VALUES ('311869331548303360', '311141114554241024', '311869275034243072', '311869275038437376', '3', '13233333333', '', null, '10475', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****3333', '黄金');
INSERT INTO `prize_produce_list_04` VALUES ('311869331607023616', '311141114554241024', '311869275034243072', '311869275038437376', '3', '13222222222', '', null, '57034', null, '311141114554241024', '2019-03-11 14:17:23', '311141114554241024', '2019-03-11 14:17:23', '0', '132****2222', '白金');
INSERT INTO `prize_produce_list_04` VALUES ('311869332542353408', '311141114554241024', '311869275034243072', '311869275038437376', '2', '13277777777', '', null, '16295', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****7777', null);
INSERT INTO `prize_produce_list_04` VALUES ('311869344747778048', '311141114554241024', '311869275034243072', '311869275038437376', '2', '13266666666', '', null, '15131', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****6666', null);
INSERT INTO `prize_produce_list_04` VALUES ('311869344835858432', '311141114554241024', '311869275034243072', '311869275038437376', '2', '13255555555', '', null, '13967', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****5555', null);
INSERT INTO `prize_produce_list_04` VALUES ('311869344898772992', '311141114554241024', '311869275034243072', '311869275038437376', '2', '13244444444', '', null, '12803', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****4444', null);
INSERT INTO `prize_produce_list_04` VALUES ('311869344957493248', '311141114554241024', '311869275034243072', '311869275038437376', '2', '13233333333', '', null, '11639', null, '311141114554241024', '2019-03-11 14:17:26', '311141114554241024', '2019-03-11 14:17:26', '0', '132****3333', null);

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
