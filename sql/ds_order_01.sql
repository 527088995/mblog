/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_order_01

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:18:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order_info_00
-- ----------------------------
DROP TABLE IF EXISTS `order_info_00`;
CREATE TABLE `order_info_00` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费--没有参与优惠之前的价格',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）1零钱 2支付宝,3微信',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_00
-- ----------------------------
INSERT INTO `order_info_00` VALUES ('40', '40', '40', '40', '40', '40', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_00` VALUES ('51', '10', null, null, null, '1', '6', null, '123', null, null, null, null, null, null, null, null, null, '0', null, null, null, null, '0', null, '0', null, null, null, null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, null, null, null, null, '0', '2019-03-08 19:18:21', '12', '12', '13', '13', '13', '13');

-- ----------------------------
-- Table structure for order_info_01
-- ----------------------------
DROP TABLE IF EXISTS `order_info_01`;
CREATE TABLE `order_info_01` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_01
-- ----------------------------
INSERT INTO `order_info_01` VALUES ('1', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_02
-- ----------------------------
DROP TABLE IF EXISTS `order_info_02`;
CREATE TABLE `order_info_02` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_02
-- ----------------------------
INSERT INTO `order_info_02` VALUES ('2', '2', '2', '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_03
-- ----------------------------
DROP TABLE IF EXISTS `order_info_03`;
CREATE TABLE `order_info_03` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_03
-- ----------------------------
INSERT INTO `order_info_03` VALUES ('3', '3', '3', '3', '3', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_04
-- ----------------------------
DROP TABLE IF EXISTS `order_info_04`;
CREATE TABLE `order_info_04` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_04
-- ----------------------------
INSERT INTO `order_info_04` VALUES ('4', '4', '4', '4', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_05
-- ----------------------------
DROP TABLE IF EXISTS `order_info_05`;
CREATE TABLE `order_info_05` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_05
-- ----------------------------
INSERT INTO `order_info_05` VALUES ('5', '5', '5', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_06
-- ----------------------------
DROP TABLE IF EXISTS `order_info_06`;
CREATE TABLE `order_info_06` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_06
-- ----------------------------
INSERT INTO `order_info_06` VALUES ('6', '6', '6', '6', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_06` VALUES ('310808955276648448', '310799423121022976', '310808955276648449', '0', '0', '1', '5', 'updateTest1', '13333333333', '山东省', '青岛市', '李沧区', '123ce', '44', '767688', '44', '0', null, '0', null, '44', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '310799423121022976', '2019-03-08 16:03:49', '310799423121022976', '2019-03-08 16:03:49', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_06` VALUES ('310812062832287744', '310799423121022976', '310812062832287745', '0', '0', '1', '1', 'updateTest1', '13333333333', '山东省', '青岛市', '李沧区', '123ce', '44', '767688', '44', '0', null, '0', null, '44', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '310799423121022976', '2019-03-08 16:16:10', '310799423121022976', '2019-03-08 16:16:10', '0', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_06` VALUES ('311906042550571008', '310724947817680896', '311906042554765312', '0', '0', '1', '1', '李四', '15253227723', '北京市', '北京城区', '西城区', '测试', '30033', '2100', '30033', '0', null, '0', null, '30033', null, null, '1', '0', '0', null, '1', '测试备注', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '310724947817680896', '2019-03-11 16:43:15', '310724947817680896', '2019-03-11 16:43:15', '6', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_06` VALUES ('311906950114070528', '310724947817680896', '311906950114070529', '0', '0', '1', '1', '王五', '15253227723', '北京市', '北京城区', '东城区', '123456789', '30033', '2100', '30033', '0', null, '0', null, '30033', null, null, '1', '0', '0', null, '1', '测试', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '310724947817680896', '2019-03-11 16:46:52', '310724947817680896', '2019-03-11 16:46:52', '6', null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_07
-- ----------------------------
DROP TABLE IF EXISTS `order_info_07`;
CREATE TABLE `order_info_07` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_07
-- ----------------------------
INSERT INTO `order_info_07` VALUES ('7', '7', '7', '7', '7', '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_08
-- ----------------------------
DROP TABLE IF EXISTS `order_info_08`;
CREATE TABLE `order_info_08` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_08
-- ----------------------------
INSERT INTO `order_info_08` VALUES ('8', '8', '8', '8', '8', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_info_09
-- ----------------------------
DROP TABLE IF EXISTS `order_info_09`;
CREATE TABLE `order_info_09` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `order_code` varchar(18) DEFAULT NULL COMMENT '订单号',
  `is_split` tinyint(1) DEFAULT NULL COMMENT '是否拆单',
  `order_pid` varchar(18) DEFAULT NULL COMMENT '父级订单号',
  `is_main` tinyint(1) DEFAULT '1' COMMENT '是否主单',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（字典order_status）',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `province` varchar(100) DEFAULT NULL COMMENT '省',
  `city` varchar(100) DEFAULT NULL COMMENT '市',
  `district` varchar(100) DEFAULT NULL COMMENT '区',
  `detail` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `total_money` bigint(12) DEFAULT NULL COMMENT '订单总金额包含运费',
  `retail_money` bigint(12) DEFAULT NULL COMMENT '订单零售金额',
  `total_product_money` bigint(12) DEFAULT NULL COMMENT '商品总价',
  `total_weight` bigint(12) DEFAULT NULL COMMENT '运费',
  `freight` int(10) DEFAULT NULL COMMENT '重量',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态',
  `pay_type` bigint(1) DEFAULT NULL COMMENT '支付方式（字典pay_type）',
  `pay_money` bigint(12) DEFAULT NULL COMMENT '支付金额',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_remark` varchar(500) DEFAULT NULL COMMENT '支付备注',
  `packets_type` tinyint(1) DEFAULT '0' COMMENT '礼包等级对应ProductTypeEnums',
  `is_virtual` tinyint(1) DEFAULT NULL COMMENT '是否虚拟发货订单',
  `received_status` tinyint(1) DEFAULT '0' COMMENT '收货状态',
  `received_date` datetime DEFAULT NULL COMMENT '收货时间',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '订单来源（字典order_from）',
  `buyer_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `seller_remark` varchar(300) DEFAULT NULL COMMENT '买家备注',
  `express_id` bigint(18) DEFAULT NULL COMMENT '物流公司ID',
  `express_type` tinyint(2) DEFAULT NULL COMMENT '物流方式（字典express_type）区分是快递还是礼包',
  `express_status` tinyint(1) DEFAULT '0' COMMENT '快递流转状态，0、未知，1、接单，2、打印，3、捡货，4、复核，5、打包，6、称重，7，已发货，8、发货异常，9、关闭，10、关闭',
  `express_weight` int(10) DEFAULT NULL COMMENT '包裹重量',
  `express_name` varchar(100) DEFAULT NULL COMMENT '物流名称',
  `express_code` varchar(100) DEFAULT NULL COMMENT '物流单号',
  `is_profit` tinyint(1) DEFAULT '0' COMMENT '是否计算返佣',
  `ship_status` tinyint(1) DEFAULT '0' COMMENT '发货状态0=未发货1=已发货',
  `ship_date` datetime DEFAULT NULL COMMENT '发货时间',
  `payment_number` varchar(100) DEFAULT NULL COMMENT '支付流水号',
  `refund_type` tinyint(1) DEFAULT '0' COMMENT '0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款\r\n            0:无退货退款;1申请退货;2申请退款',
  `comment_status` tinyint(1) DEFAULT NULL COMMENT '评论状态0：未评论；1：已评论；默认0',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(18) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '删除标识0：正常；1：删除。默认为0。',
  `settlement_date` datetime DEFAULT NULL COMMENT '结算时间',
  `extend_should_money` bigint(20) DEFAULT '0' COMMENT '推广奖励应反金额',
  `extend_actual_money` bigint(20) DEFAULT '0' COMMENT '推广奖励实反金额',
  `store_should_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励应反金额',
  `store_actual_money` bigint(20) DEFAULT '0' COMMENT '店铺奖励实反金额',
  `consume_should_money` bigint(20) DEFAULT '0' COMMENT '消费奖励应反金额',
  `consume_actual_money` bigint(20) DEFAULT '0' COMMENT '消费奖励实反金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_info_09
-- ----------------------------
INSERT INTO `order_info_09` VALUES ('9', '9', '9', '9', '9', '9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_09` VALUES ('999', '88998289', '123123123', '1', '0', '1', '1', '孙曹永121', '15192509019', '山东省', '青岛市', '市北区', '合肥路', '123123', '123123', '123123', '123', '22', '1', '1', '123123', '2019-02-25 17:13:32', '123123', '0', null, '1', '2019-02-25 17:13:38', '1', '123123曲师大所', '奥术大师多阿萨德阿萨德', '1', '1', '1', '123', '申通', '12312312312321', '1', null, '2019-02-25 17:14:00', '123123123123', '1', '1', '大狮阿萨德', '88998289', '2019-02-25 17:14:15', '88998289', '2019-02-25 17:14:19', '1', null, '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for order_product_00
-- ----------------------------
DROP TABLE IF EXISTS `order_product_00`;
CREATE TABLE `order_product_00` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_00
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_01
-- ----------------------------
DROP TABLE IF EXISTS `order_product_01`;
CREATE TABLE `order_product_01` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_01
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_02
-- ----------------------------
DROP TABLE IF EXISTS `order_product_02`;
CREATE TABLE `order_product_02` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_02
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_03
-- ----------------------------
DROP TABLE IF EXISTS `order_product_03`;
CREATE TABLE `order_product_03` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_03
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_04
-- ----------------------------
DROP TABLE IF EXISTS `order_product_04`;
CREATE TABLE `order_product_04` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_04
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_05
-- ----------------------------
DROP TABLE IF EXISTS `order_product_05`;
CREATE TABLE `order_product_05` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_05
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_06
-- ----------------------------
DROP TABLE IF EXISTS `order_product_06`;
CREATE TABLE `order_product_06` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_06
-- ----------------------------
INSERT INTO `order_product_06` VALUES ('310808956673351680', '310799423121022976', '0', '310808955276648448', '310808955276648449', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '10', '312', '23', '12', null, null, null, '310799423121022976', '2019-03-08 16:03:49', '310799423121022976', '2019-03-08 16:03:49', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_06` VALUES ('310808957348634624', '310799423121022976', '0', '310808955276648448', '310808955276648449', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '21', '213', '21', '21', null, null, null, '310799423121022976', '2019-03-08 16:03:49', '310799423121022976', '2019-03-08 16:03:49', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_06` VALUES ('310812062882619392', '310799423121022976', '0', '310812062832287744', '310812062832287745', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '10', '312', '23', '12', null, null, null, '310799423121022976', '2019-03-08 16:16:10', '310799423121022976', '2019-03-08 16:16:10', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_06` VALUES ('310812062916173824', '310799423121022976', '0', '310812062832287744', '310812062832287745', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '21', '213', '21', '21', null, null, null, '310799423121022976', '2019-03-08 16:16:10', '310799423121022976', '2019-03-08 16:16:10', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_06` VALUES ('311906042856755200', '310724947817680896', '0', '311906042550571008', '311906042554765312', '265020796099559424', '1', '/system/2019-03-07/fbc8fb876d5e4e6681a51c061cae3e50.jpg', '265020796200222720', 'w22w21', '洗衣液', '1', '2100', '555', '30033', '21', null, null, null, '310724947817680896', '2019-03-11 16:43:15', '310724947817680896', '2019-03-11 16:43:15', '0', '包装方式 袋装,香味 薰衣草,重量 200g,', '', '0.00000', '0.00000');
INSERT INTO `order_product_06` VALUES ('311906950181179392', '310724947817680896', '0', '311906950114070528', '311906950114070529', '265020796099559424', '1', '/system/2019-03-07/fbc8fb876d5e4e6681a51c061cae3e50.jpg', '265020796200222720', 'w22w21', '洗衣液', '1', '2100', '555', '30033', '21', null, null, null, '310724947817680896', '2019-03-11 16:46:52', '310724947817680896', '2019-03-11 16:46:52', '0', '包装方式 袋装,香味 薰衣草,重量 200g,', '', '0.00000', '0.00000');

-- ----------------------------
-- Table structure for order_product_07
-- ----------------------------
DROP TABLE IF EXISTS `order_product_07`;
CREATE TABLE `order_product_07` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_07
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_08
-- ----------------------------
DROP TABLE IF EXISTS `order_product_08`;
CREATE TABLE `order_product_08` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_08
-- ----------------------------

-- ----------------------------
-- Table structure for order_product_09
-- ----------------------------
DROP TABLE IF EXISTS `order_product_09`;
CREATE TABLE `order_product_09` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `member_id` bigint(18) NOT NULL COMMENT '用户ID',
  `order_pid` bigint(18) NOT NULL COMMENT '父单ID',
  `order_id` bigint(18) NOT NULL COMMENT '订单ID',
  `order_code` bigint(18) NOT NULL COMMENT '订单号',
  `product_id` bigint(18) NOT NULL COMMENT '产品ID',
  `product_type` bigint(18) NOT NULL COMMENT '产品类型',
  `product_image` varchar(300) NOT NULL COMMENT '产品主图',
  `sku_id` bigint(18) NOT NULL COMMENT 'skuId',
  `sku_code` varchar(255) NOT NULL COMMENT 'skuCode',
  `sku_name` varchar(300) NOT NULL COMMENT 'sku名称',
  `quantity` int(10) NOT NULL COMMENT '购买数量',
  `cost_price` bigint(12) NOT NULL COMMENT '成本价',
  `prime_price` bigint(12) NOT NULL COMMENT '原价',
  `current_price` bigint(12) DEFAULT NULL COMMENT '现价',
  `supply_price` bigint(20) DEFAULT NULL COMMENT '供货价',
  `refund_status` tinyint(1) DEFAULT NULL COMMENT '退货状态（字典refund_status）',
  `refund_id` bigint(18) DEFAULT NULL COMMENT '运费',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注信息',
  `create_by` bigint(18) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` bigint(18) NOT NULL COMMENT '修改人',
  `update_date` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(2) NOT NULL COMMENT '删除标识0：正常；1：删除。默认为0。',
  `product_property` varchar(1000) DEFAULT '' COMMENT '产品属性',
  `characteristic` varchar(255) DEFAULT '' COMMENT '外部标识',
  `consume_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `spread_profit` decimal(7,5) NOT NULL DEFAULT '0.00000' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品表';

-- ----------------------------
-- Records of order_product_09
-- ----------------------------
INSERT INTO `order_product_09` VALUES ('1', '88998289', '0', '1', '123123123', '1', '1', '111', '1', '12312', '电脑', '12', '1213', '123', '12321', '12312', '1', '1', '1111111', '88998289', '2019-02-25 17:46:18', '88998289', '2019-02-25 17:46:25', '1', '', '', '0.00000', '0.00000');
