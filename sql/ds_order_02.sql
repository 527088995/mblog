/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_order_02

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:18:52
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
INSERT INTO `order_info_04` VALUES ('311141833835433984', '311141114554241024', '311141833835433985', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '44', '767688', '44', '0', null, '0', null, '44', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 14:06:34', '311141114554241024', '2019-03-09 14:06:34', '0', '2019-03-09 14:55:03', '344', '310', '0', '0', '0', '0');
INSERT INTO `order_info_04` VALUES ('311163862118715392', '311141114554241024', '311163862118715393', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '44', '767688', '44', '0', null, '0', null, '44', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 15:34:06', '311141114554241024', '2019-03-09 15:34:06', '0', '2019-03-09 15:45:39', '344', '310', '344', '344', '0', '0');
INSERT INTO `order_info_04` VALUES ('311168277294764032', '311141114554241024', '311168277298958336', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 15:51:39', '311141114554241024', '2019-03-09 15:51:39', '0', '2019-03-09 15:54:47', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311169221390651392', '311141114554241024', '311169221394845696', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 15:55:24', '311141114554241024', '2019-03-09 15:55:24', '0', '2019-03-09 15:57:40', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311171368014467072', '311141114554241024', '311171368018661376', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 16:03:55', '311141114554241024', '2019-03-09 16:03:55', '0', '2019-03-09 16:05:26', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311173969825124352', '311141114554241024', '311173969825124353', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 16:14:16', '311141114554241024', '2019-03-09 16:14:16', '0', '2019-03-09 16:15:08', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311175384123461632', '311141114554241024', '311175384127655936', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 16:19:53', '311141114554241024', '2019-03-09 16:19:53', '0', '2019-03-09 16:20:31', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311178259323047936', '311141114554241024', '311178259327242240', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 16:31:18', '311141114554241024', '2019-03-09 16:31:18', '0', '2019-03-09 16:39:51', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311180412519337984', '311141114554241024', '311180412519337985', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-09 16:39:52', '311141114554241024', '2019-03-09 16:39:52', '0', '2019-03-09 16:47:35', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311829631567548416', '311141114554241024', '311829631571742720', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 11:39:37', '311141114554241024', '2019-03-11 11:39:37', '6', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_04` VALUES ('311831503145684992', '311141114554241024', '311831503149879296', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 11:47:04', '311141114554241024', '2019-03-11 11:47:04', '6', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_04` VALUES ('311833482001534976', '311141114554241024', '311833482009923584', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 11:54:56', '311141114554241024', '2019-03-11 11:54:56', '6', null, '0', '0', '0', '0', '0', '0');
INSERT INTO `order_info_04` VALUES ('311833874433200128', '311141114554241024', '311833874437394432', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 11:56:29', '311141114554241024', '2019-03-11 11:56:29', '6', '2019-03-11 11:56:51', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311836271444381696', '311141114554241024', '311836271448576000', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 12:06:00', '311141114554241024', '2019-03-11 12:06:00', '6', '2019-03-11 12:06:30', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311855575434940416', '311141114554241024', '311855575439134720', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 13:22:42', '311141114554241024', '2019-03-11 13:22:42', '6', '2019-03-11 13:23:08', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311861312521392128', '311141114554241024', '311861312521392129', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 13:45:31', '311141114554241024', '2019-03-11 13:45:31', '6', '2019-03-11 13:46:03', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311861743905558528', '311141114554241024', '311861743909752832', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 13:47:14', '311141114554241024', '2019-03-11 13:47:14', '6', '2019-03-11 13:54:08', '0', '0', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311864648620462080', '311141114554241024', '311864648620462081', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 13:58:46', '311141114554241024', '2019-03-11 13:58:46', '6', '2019-03-11 13:59:53', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311865551964491776', '311141114554241024', '311865551968686080', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 14:02:22', '311141114554241024', '2019-03-11 14:02:22', '6', '2019-03-11 14:03:43', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311866615665152000', '311141114554241024', '311866615669346304', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 14:06:35', '311141114554241024', '2019-03-11 14:06:35', '6', '2019-03-11 14:09:19', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311867317305102336', '311141114554241024', '311867317309296640', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 14:09:23', '311141114554241024', '2019-03-11 14:09:23', '6', '2019-03-11 14:10:24', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311869275034243072', '311141114554241024', '311869275038437376', '0', '0', '1', '5', '孙腾飞', '13299999999', '山东省', '青岛市', '李沧区', '巴拉巴拉巴拉呵呵哒', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '1', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 14:17:09', '311141114554241024', '2019-03-11 14:17:09', '6', '2019-03-11 14:17:29', '116396', '105917', '116396', '116396', '0', '0');
INSERT INTO `order_info_04` VALUES ('311917712119320576', '311141114554241024', '311917712123514880', '0', '0', '1', '1', 'updateTest1', '13333333333', '山东省', '青岛市', '李沧区', '123ce', '442000', '3100', '442000', '0', null, '0', null, '442000', null, null, '1', '0', '0', null, '1', '买家备注', null, null, null, '0', null, null, null, '0', '0', null, null, '0', null, null, '311141114554241024', '2019-03-11 17:29:38', '311141114554241024', '2019-03-11 17:29:38', '6', null, '0', '0', '0', '0', '0', '0');

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
INSERT INTO `order_product_04` VALUES ('311141833902542848', '311141114554241024', '0', '311141833835433984', '311141833835433985', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '31200', '2300', '12', null, null, null, '311141114554241024', '2019-03-09 14:06:34', '311141114554241024', '2019-03-09 14:06:34', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311141833986428928', '311141114554241024', '0', '311141833835433984', '311141833835433985', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '21300', '2100', '21', null, null, null, '311141114554241024', '2019-03-09 14:06:34', '311141114554241024', '2019-03-09 14:06:34', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311163862152269824', '311141114554241024', '0', '311163862118715392', '311163862118715393', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '31200', '2300', '12', null, null, null, '311141114554241024', '2019-03-09 15:34:06', '311141114554241024', '2019-03-09 15:34:06', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311163862185824256', '311141114554241024', '0', '311163862118715392', '311163862118715393', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '21300', '2100', '21', null, null, null, '311141114554241024', '2019-03-09 15:34:06', '311141114554241024', '2019-03-09 15:34:06', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311168277357678592', '311141114554241024', '0', '311168277294764032', '311168277298958336', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-09 15:51:39', '311141114554241024', '2019-03-09 15:51:39', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311168277441564672', '311141114554241024', '0', '311168277294764032', '311168277298958336', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-09 15:51:39', '311141114554241024', '2019-03-09 15:51:39', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311169221424205824', '311141114554241024', '0', '311169221390651392', '311169221394845696', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-09 15:55:24', '311141114554241024', '2019-03-09 15:55:24', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311169221457760256', '311141114554241024', '0', '311169221390651392', '311169221394845696', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-09 15:55:24', '311141114554241024', '2019-03-09 15:55:24', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311171368052215808', '311141114554241024', '0', '311171368014467072', '311171368018661376', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-09 16:03:55', '311141114554241024', '2019-03-09 16:03:55', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311171368131907584', '311141114554241024', '0', '311171368014467072', '311171368018661376', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-09 16:03:55', '311141114554241024', '2019-03-09 16:03:55', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311173969858678784', '311141114554241024', '0', '311173969825124352', '311173969825124353', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-09 16:14:16', '311141114554241024', '2019-03-09 16:14:16', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311173969888038912', '311141114554241024', '0', '311173969825124352', '311173969825124353', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-09 16:14:16', '311141114554241024', '2019-03-09 16:14:16', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311175384161210368', '311141114554241024', '0', '311175384123461632', '311175384127655936', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-09 16:19:53', '311141114554241024', '2019-03-09 16:19:53', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311175384228319232', '311141114554241024', '0', '311175384123461632', '311175384127655936', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-09 16:19:53', '311141114554241024', '2019-03-09 16:19:53', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311178259356602368', '311141114554241024', '0', '311178259323047936', '311178259327242240', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-09 16:31:18', '311141114554241024', '2019-03-09 16:31:18', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311178259390156800', '311141114554241024', '0', '311178259323047936', '311178259327242240', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-09 16:31:18', '311141114554241024', '2019-03-09 16:31:18', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311180412561281024', '311141114554241024', '0', '311180412519337984', '311180412519337985', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-09 16:39:52', '311141114554241024', '2019-03-09 16:39:52', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311180412628389888', '311141114554241024', '0', '311180412519337984', '311180412519337985', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-09 16:39:52', '311141114554241024', '2019-03-09 16:39:52', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311829631865344000', '311141114554241024', '0', '311829631567548416', '311829631571742720', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 11:39:37', '311141114554241024', '2019-03-11 11:39:37', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311829631903092736', '311141114554241024', '0', '311829631567548416', '311829631571742720', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 11:39:37', '311141114554241024', '2019-03-11 11:39:37', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311831503196016640', '311141114554241024', '0', '311831503145684992', '311831503149879296', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 11:47:04', '311141114554241024', '2019-03-11 11:47:04', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311831503233765376', '311141114554241024', '0', '311831503145684992', '311831503149879296', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 11:47:04', '311141114554241024', '2019-03-11 11:47:04', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311833482072838144', '311141114554241024', '0', '311833482001534976', '311833482009923584', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 11:54:56', '311141114554241024', '2019-03-11 11:54:56', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311833482118975488', '311141114554241024', '0', '311833482001534976', '311833482009923584', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 11:54:56', '311141114554241024', '2019-03-11 11:54:56', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311833874470948864', '311141114554241024', '0', '311833874433200128', '311833874437394432', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 11:56:29', '311141114554241024', '2019-03-11 11:56:29', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311833874508697600', '311141114554241024', '0', '311833874433200128', '311833874437394432', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 11:56:29', '311141114554241024', '2019-03-11 11:56:29', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311836272853667840', '311141114554241024', '0', '311836271444381696', '311836271448576000', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 12:06:00', '311141114554241024', '2019-03-11 12:06:00', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311836272891416576', '311141114554241024', '0', '311836271444381696', '311836271448576000', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 12:06:00', '311141114554241024', '2019-03-11 12:06:00', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311855576873586688', '311141114554241024', '0', '311855575434940416', '311855575439134720', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 13:22:42', '311141114554241024', '2019-03-11 13:22:42', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311855576911335424', '311141114554241024', '0', '311855575434940416', '311855575439134720', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 13:22:42', '311141114554241024', '2019-03-11 13:22:42', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311861312571723776', '311141114554241024', '0', '311861312521392128', '311861312521392129', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 13:45:31', '311141114554241024', '2019-03-11 13:45:31', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311861312605278208', '311141114554241024', '0', '311861312521392128', '311861312521392129', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 13:45:31', '311141114554241024', '2019-03-11 13:45:31', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311861743964278784', '311141114554241024', '0', '311861743905558528', '311861743909752832', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 13:47:14', '311141114554241024', '2019-03-11 13:47:14', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311861743993638912', '311141114554241024', '0', '311861743905558528', '311861743909752832', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 13:47:14', '311141114554241024', '2019-03-11 13:47:14', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311864650033942528', '311141114554241024', '0', '311864648620462080', '311864648620462081', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 13:58:46', '311141114554241024', '2019-03-11 13:58:46', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311864650075885568', '311141114554241024', '0', '311864648620462080', '311864648620462081', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 13:58:46', '311141114554241024', '2019-03-11 13:58:46', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311865552010629120', '311141114554241024', '0', '311865551964491776', '311865551968686080', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 14:02:22', '311141114554241024', '2019-03-11 14:02:22', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311865552039989248', '311141114554241024', '0', '311865551964491776', '311865551968686080', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 14:02:22', '311141114554241024', '2019-03-11 14:02:22', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311866615774203904', '311141114554241024', '0', '311866615665152000', '311866615669346304', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 14:06:35', '311141114554241024', '2019-03-11 14:06:35', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311866615807758336', '311141114554241024', '0', '311866615665152000', '311866615669346304', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 14:06:35', '311141114554241024', '2019-03-11 14:06:35', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311867317347045376', '311141114554241024', '0', '311867317305102336', '311867317309296640', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 14:09:23', '311141114554241024', '2019-03-11 14:09:23', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311867317384794112', '311141114554241024', '0', '311867317305102336', '311867317309296640', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 14:09:23', '311141114554241024', '2019-03-11 14:09:23', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311869275076186112', '311141114554241024', '0', '311869275034243072', '311869275038437376', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 14:17:09', '311141114554241024', '2019-03-11 14:17:09', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311869275109740544', '311141114554241024', '0', '311869275034243072', '311869275038437376', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 14:17:09', '311141114554241024', '2019-03-11 14:17:09', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311917712165457920', '311141114554241024', '0', '311917712119320576', '311917712123514880', '265021454164885504', '1', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '265021454290714625', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液 18.3斤超值 除菌除螨', '2', '1000', '312', '231000', '12', null, null, null, '311141114554241024', '2019-03-11 17:29:38', '311141114554241024', '2019-03-11 17:29:38', '0', '大小 20,包装方式 罐装,', '', '0.00000', '0.00000');
INSERT INTO `order_product_04` VALUES ('311917712199012352', '311141114554241024', '0', '311917712119320576', '311917712123514880', '265022973727670272', '1', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '265022973861888000', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', '1', '2100', '213', '211000', '21', null, null, null, '311141114554241024', '2019-03-11 17:29:38', '311141114554241024', '2019-03-11 17:29:38', '0', '屏幕 可触摸,尺寸 30寸,', '', '0.00000', '0.00000');

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
