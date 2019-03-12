/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_comment_02

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:17:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product_comment_00
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_00`;
CREATE TABLE `product_comment_00` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_00
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_01
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_01`;
CREATE TABLE `product_comment_01` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_01
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_02
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_02`;
CREATE TABLE `product_comment_02` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_02
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_03
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_03`;
CREATE TABLE `product_comment_03` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_03
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_04
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_04`;
CREATE TABLE `product_comment_04` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_04
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_05
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_05`;
CREATE TABLE `product_comment_05` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_05
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_06
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_06`;
CREATE TABLE `product_comment_06` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_06
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_07
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_07`;
CREATE TABLE `product_comment_07` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_07
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_08
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_08`;
CREATE TABLE `product_comment_08` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_08
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment_09
-- ----------------------------
DROP TABLE IF EXISTS `product_comment_09`;
CREATE TABLE `product_comment_09` (
  `id` bigint(32) NOT NULL COMMENT '主键',
  `member_id` bigint(32) NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL COMMENT '流水类型：1-进账 2-出账',
  `money` bigint(32) DEFAULT '0' COMMENT '流水金额',
  `prize_type` tinyint(1) NOT NULL COMMENT '奖项类型：1-销售奖励 2-推荐奖励 3-其他奖励',
  `order_id` bigint(32) DEFAULT NULL COMMENT '产生流水记录的关联订单号',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `valid_status` tinyint(1) DEFAULT '1' COMMENT '有效状态 0：无效；1：有效；默认为1。',
  `create_by` bigint(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` bigint(32) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_status` tinyint(1) DEFAULT '0' COMMENT '删除标志 0：正常；1：删除。默认为0。',
  PRIMARY KEY (`id`),
  KEY `money_list_index_member_id` (`member_id`),
  KEY `money_list_index_member_id_type` (`member_id`,`type`) USING BTREE COMMENT '用户名和流水类型联合索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户资金流水';

-- ----------------------------
-- Records of product_comment_09
-- ----------------------------
