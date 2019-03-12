/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50643
Source Host           : 192.168.3.200:3306
Source Database       : ds_product

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-03-12 10:19:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(18) NOT NULL COMMENT '主键',
  `product_name` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT '' COMMENT '产品简介,简单介绍',
  `sale_count` int(11) DEFAULT NULL COMMENT '真实销量',
  `virtual_sell_count` int(11) NOT NULL DEFAULT '0' COMMENT '设置的虚拟销量',
  `sell_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '上下架：1上架，0下架',
  `content` text COMMENT '详细介绍',
  `standard_content` text COMMENT '产品规格',
  `service_content` text COMMENT '售后保障',
  `product_remark` text COMMENT '产品备注',
  `has_coupon` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有优惠券（0，无，1，有）',
  `has_present` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有赠品（0，无，1，有）',
  `has_combo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否套餐（0，无，1，有）',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '商品分类 ：1、普通产品，2、推广员大礼包，3、店铺升级大礼包',
  `view_count` int(11) DEFAULT NULL COMMENT '人气',
  `sync_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '物流同步状态，0未同步，1已同步',
  `virtual` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否虚拟商品，0不是，1是',
  `freight_rule_id` bigint(18) NOT NULL DEFAULT '0' COMMENT '运费的模板id(在jeesite存储)',
  `best_pro_status` tinyint(1) DEFAULT '0' COMMENT '该产品是否在首页显示(今日必推爆品)，0不是，1是',
  `sort_index` int(11) DEFAULT NULL COMMENT '排序序号',
  `product_image1` varchar(255) DEFAULT '' COMMENT '首张图',
  `product_image2` varchar(255) DEFAULT '',
  `product_image3` varchar(255) DEFAULT '',
  `product_image4` varchar(255) DEFAULT '',
  `product_image5` varchar(255) DEFAULT '',
  `remarks` varchar(4000) DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态: 0未删除，1已删除',
  `product_from` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '产品来源',
  `outside_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '原产品url',
  `stock_count` int(11) DEFAULT NULL COMMENT '库存,总库存',
  `consume_profit` bigint(11) NOT NULL DEFAULT '0' COMMENT '消费返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `consume_profit_scale` decimal(7,2) DEFAULT '0.00' COMMENT '消费返利(比例)',
  `spread_profit` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '推广返利，如果>0话则表示设置的全局返利设置不生效，以该值为准',
  `supplier_id` bigint(18) NOT NULL COMMENT '供货商id',
  `product_explain` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '产品服务说明,例如“24小时发发货”、“七天无理由退换”',
  `list_image` varchar(255) DEFAULT NULL COMMENT '列表展示图',
  `spec_image` varchar(255) DEFAULT NULL COMMENT '规格切换图',
  `reward_type` int(4) DEFAULT '0' COMMENT '设置奖励金额模式',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_status` (`sell_status`),
  KEY `index_bestProStatus` (`best_pro_status`),
  KEY `index_sortIndex` (`sort_index`),
  KEY `index_deleteFlag` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 产品表';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('264558728948858880', '苹果8', '', null, '0', '0', '<!--HTML--><p>撒旦法<br/></p>', '<!--HTML--><p>撒旦法</p>', '<!--HTML--><p>电饭锅</p>', null, '0', '0', '0', '1', null, '0', '2', '0', '1', '10', '/system/2019-03-06/289e8672ee73499d8e5d03ac1368f116.png', '/system/2019-03-06/90ea65a4cb70422983b5a5c9b747ee19.png', '/system/2019-03-06/6f9e71bccab7450e941352373c0dc0d2.png', '/system/2019-03-06/bfc075c6b20f4fd4b1d0012fa64e4486.png', '/system/2019-03-06/df465a1691364467a41010df293eb839.png', '<!--HTML--><p>大师傅</p>', 'system', '2019-03-06 11:29:48', 'system', '2019-03-07 13:30:21', '0', '1', '', null, '100', '0.20', '3.00', '1101298623169265664', null, '/system/2019-03-06/8b06ce61a2a3453d9c3ec6f915212556.png', '/system/2019-03-06/5cb5143487324fd5996fbd3db20cf13e.png', '1');
INSERT INTO `product` VALUES ('264659132551430144', '橘子5', '大礼包你好', null, '0', '1', '<!--HTML--><p>大</p>', null, null, null, '0', '0', '0', '2', null, '0', '1', '0', '0', '3', '/system/2019-03-06/62d90bceceb245abaad3a830f8ec6f53.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '<!--HTML--><p>热辣豆腐</p>', 'system', '2019-03-06 18:08:46', 'system', '2019-03-06 19:50:02', '0', null, null, '1000', '0', null, '0.00', '0', null, '/system/2019-03-06/e70b46ad23b848b1aae77c840f1b3b1d.png', '/system/2019-03-06/6b4cbcb4d2aa4ee997a9808159a49ce7.png', null);
INSERT INTO `product` VALUES ('264689553910759424', '柚子2', '算柚子', null, '0', '1', '<!--HTML--><p>发的</p>', null, null, null, '0', '0', '0', '2', null, '0', '1', '1098873609716449280', '0', '18', '/system/2019-03-06/98c219a61fa3407da864e7dd8d6ac864.png', '/system/2019-03-06/a581a0d09efa484082688900be11aa58.png', '/system/2019-03-06/c791a142ef6b441293f9a61f09f6d353.png', '/system/2019-03-06/dc77692df26243ad9a035daf0347fe82.png', '/system/2019-03-06/8ce407fc0f7947c2b739ccfaf8b2a1af.png', '', 'system', '2019-03-06 20:09:39', 'system', '2019-03-07 20:32:12', '0', null, null, '1000', '0', null, '0.00', '0', null, '/system/2019-03-06/38c04b594c204cd5af9567b573e30a2a.png', '/system/2019-03-06/28f5671b9f9541fcb1de6fcb03195546.png', null);
INSERT INTO `product` VALUES ('264896392593641472', '大士大夫', '', null, '0', '1', '<!--HTML--><p>大发阿斯蒂芬</p>', null, null, null, '0', '0', '0', '2', null, '0', '1', '0', '0', '10', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-07 09:51:34', 'system', '2019-03-07 09:51:34', '0', null, null, null, '0', null, '0.00', '0', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('264982679070965760', '黑猫洗洁精', '护手的洗洁精', null, '0', '0', '<!--HTML--><p>aa</p>', '<!--HTML--><p>bb</p>', '<!--HTML--><p>cc</p>', null, '0', '0', '0', '1', null, '0', '0', '1098873609716449280', '1', '12', '/system/2019-03-07/706cbc10e0d947939b55f99011e74ee9.png', '/system/2019-03-07/2868211f3345435ba43ee6bbb75f8ff1.png', '/system/2019-03-07/b118fd800d194318a81c600185479b84.png', '/system/2019-03-07/e27cb68caa0d442a886c6b30ad7868b0.png', '/system/2019-03-07/d9f31790f13f4165804038af8de19090.png', '<!--HTML--><p>dd</p>', 'system', '2019-03-07 15:34:26', 'system', '2019-03-07 15:34:26', '0', '1', 'www.baidul.com', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/24490925f14e41dfa7ad588ac3b722c2.png', '/system/2019-03-07/60e0a873ba8d474c8cd37fac94a629c5.png', null);
INSERT INTO `product` VALUES ('265020796099559424', '立白洗衣液', '宝洁汰渍正品机洗衣液9kg家庭装全效去渍洁净组合香味持久整箱批', null, '0', '0', '', '', '', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '1', '1', '/system/2019-03-07/fbc8fb876d5e4e6681a51c061cae3e50.jpg', '/system/2019-03-07/bb77d2aab5ad47cbba3dbe092504c1ab.jpg', '/system/2019-03-07/ff10ba33c956479c816388ddf1256294.jpg', '/system/2019-03-07/f94ada1b65fd405fae3c721c88fdf22c.jpg', '/system/2019-03-07/24f481af3f444c5b8a2805f19a2daf8f.jpg', '', 'system', '2019-03-07 18:05:54', 'system', '2019-03-07 18:05:54', '0', '1', 'https://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.1.3f587109S1Icyo&id=536127347707&user_id=217101303&cat_id=2&is_b=1&rn=7a98a5c08d2041c3d2b70cf9b9231d6a', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/08fd63161de04e988fef7d970783988a.jpg', '/system/2019-03-07/91600e8dacea49cba32fcbd04d38e7f2.jpg', null);
INSERT INTO `product` VALUES ('265021454164885504', '雕牌洗衣液', '奥妙 洗衣液 18.3斤超值 除菌除螨 大礼包 源自天然酵素(新老包装随机发货)', null, '0', '0', '<!--HTML--><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">奥妙 洗衣液 18.3斤超值 除菌除螨 大礼包 源自天然酵素(新老包装随机发货)</span></p>', '<!--HTML--><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">奥妙 洗衣液 18.3斤超值 除菌除螨 大礼包 源自天然酵素(新老包装随机发货)</span></p>', '<!--HTML--><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">奥妙 洗衣液 18.3斤超值 除菌除螨 大礼包 源自天然酵素(新老包装随机发货)</span></p>', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '1', '3', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '/system/2019-03-07/51319ae6f5b34aa8b11874b76937429a.jpg', '/system/2019-03-07/60c8143bbd5a44e5b58d326889bfa0c1.jpg', '/system/2019-03-07/3a68e0d6c7c3455298f599c8e1153738.jpg', '/system/2019-03-07/d8ed8c68e0a643e5a634355e6d4f9e7c.jpg', '<!--HTML--><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">奥妙 洗衣液 18.3斤超值 除菌除螨 大礼包 源自天然酵素(新老包装随机发货)</span></p>', 'system', '2019-03-07 18:08:31', 'system', '2019-03-07 18:08:31', '0', '1', 'https://item.jd.com/6930866.html?extension_id=eyJhZCI6IjE0NzYiLCJjaCI6IjIiLCJza3UiOiI2OTMwODY2IiwidHMiOiIxNTUxOTUyOTgzIiwidW5pcWlkIjoie1wiY2xpY2tfaWRcIjpcImQxMmJiMWY0LWM2NjgtNDM5MC1hMTQ3LWExOTU4MGVmZjI0M1wiLFwibWF0ZXJpYWxfaWRcIjpcIjM2NjMwMTk1OVwiLFwicG9zX', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/2fc6dee5a20f47cca9fc51849d31c68b.jpg', '/system/2019-03-07/f90cae652ce8400799884fdb548d1855.jpg', null);
INSERT INTO `product` VALUES ('265021864808218624', 'Jeepguide 皮带男真皮休闲复古针扣牛皮腰带青年中年裤带', '真皮休闲复古针扣牛皮腰带青年中年裤带', null, '0', '0', '<!--HTML--><ul id=\"parameter-brand\" class=\"p-parameter-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=17329,17330,12029&ev=exbrand_109068\" clstag=\"shangpin|keycount|product|pinpai_2\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: rgb(94, 105, 173); text-decoration-line: none;\">Jeepguide</a></p></li><li><p>商品名称：Jeepguide 皮带男真皮休闲复古针扣牛皮腰带青年中年裤带 10深咖色</p></li><li><p>商品编号：33028344764</p></li><li><p>店铺：&nbsp;<a href=\"https://mall.jd.com/index-722207.html\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: rgb(94, 105, 173); text-decoration-line: none;\">Jeepguide旗舰店</a></p></li><li><p>商品毛重：400.00g</p></li><li><p>商品产地：中国大陆</p></li><li><p>货号：10</p></li><li><p>带扣：针扣</p></li><li><p>风格：商务，休闲，时尚，复古，百搭，简约，其它</p></li><li><p>主材料：二层牛皮</p></li><li><p>材料特性：光面</p></li><li><p>适用人群：青年，中年</p></li><li><p>包装类型：单条礼盒</p></li><li><p>适用场景：商务，休闲，旅行，宴会</p></li></ul><p><br/></p>', '<!--HTML--><h3 style=\"margin: 0px; padding: 0px; font-weight: 400; font-size: 12px; float: left; width: 110px; text-align: right; color: rgb(153, 153, 153); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">基本信息</h3><ul style=\"margin: 0px 0px 0px 110px; padding: 0px; color: rgb(153, 153, 153); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><ul class=\"clearfix list-paddingleft-2\" style=\"list-style-type: square;\"><li style=\"\"><p>腰带长度（cm）</p></li><li style=\"\"><p>125</p></li><li style=\"\"><p>带扣长度（cm）</p></li><li style=\"\"><p>6.5</p></li><li style=\"\"><p>品牌</p></li><li style=\"\"><p>Jeepguide</p></li></ul><ul class=\"clearfix list-paddingleft-2\" style=\"list-style-type: square;\"><li style=\"\"><p>材质</p></li><li style=\"\"><p>牛皮</p></li></ul><ul class=\"clearfix list-paddingleft-2\" style=\"list-style-type: square;\"></ul></ul><p><br/></p>', '<!--HTML--><p>暂无</p>', null, '0', '0', '0', '1', null, '0', '0', '1098873609716449280', '1', '11', '/system/2019-03-07/70807ff8e07b435c8bda69e9b188aba6.jpg', '/system/2019-03-07/fc6988c4938f44fba1a7ab4804d96d46.jpg', '/system/2019-03-07/6867a2e0943d4db0b45016d02495d2d6.jpg', '/system/2019-03-07/f5e77495a18547f9ac9c10134ed3dd74.jpg', '/system/2019-03-07/db385a7e9697424eb49f2c7a9235af7d.jpg', '<!--HTML--><p>推荐1</p>', 'system', '2019-03-07 18:10:08', 'system', '2019-03-07 18:10:08', '0', '1', 'https://item.jd.com/33028344764.html', null, '0', null, '0.00', '1100925997734944768', null, '/system/2019-03-07/20ba286a8e894c08b5b64be40b84ba28.jpg', '/system/2019-03-07/5076f15d5fce4f769bae3584b4a22488.jpg', null);
INSERT INTO `product` VALUES ('265022973727670272', '海信电视', 'TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）', null, '0', '0', '<!--HTML--><p>2<span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）</span></p>', '<!--HTML--><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）</span></p>', '<!--HTML--><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）</span></p>', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '1', '14', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '/system/2019-03-07/3292ff7604154f49acc02e99842392e4.jpg', '/system/2019-03-07/d7e2e1cd51cd476d97f37c0dfdfc05ca.jpg', '/system/2019-03-07/5367dfd47cb04fcc870e6190fd8f11f4.jpg', '/system/2019-03-07/f626bdee2ccc436db63ecae796809c42.jpg', '<!--HTML--><p><span style=\"color: rgb(102, 102, 102); font-family: Arial, &quot;microsoft yahei&quot;; font-weight: 700; background-color: rgb(255, 255, 255);\">TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）</span></p>', 'system', '2019-03-07 18:14:33', 'system', '2019-03-08 11:20:31', '0', '1', 'https://item.jd.com/6933429.html?extension_id=eyJhZCI6IjE0NzYiLCJjaCI6IjIiLCJza3UiOiI2OTMzNDI5IiwidHMiOiIxNTUxOTUzNTk1IiwidW5pcWlkIjoie1wiY2xpY2tfaWRcIjpcIjM2NTlmYTg4LTJkN2YtNDVhOS1hZjA1LWI1ZGNmMWY3ZDY0ZVwiLFwibWF0ZXJpYWxfaWRcIjpcIjM2ODI2NTU4OVwiLFwicG9zX', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/b22f23ba825d4203b74fa5e7375a1ac8.jpg', '/system/2019-03-07/0ef1aa695ccd472a8c681e3d27abc236.jpg', null);
INSERT INTO `product` VALUES ('265038060311953408', '绿箭大礼包', '绿箭大礼包2', null, '0', '1', '<!--HTML--><p>打算</p>', null, null, null, '0', '0', '0', '2', null, '0', '1', '1099141550146027520', '0', '9', '/system/2019-03-07/50831523a7734abbb79f5fdcdd2cc88a.png', '', '', '', '', '', 'system', '2019-03-07 19:14:30', 'system', '2019-03-07 20:32:18', '0', null, null, '1000', '0', null, '0.00', '0', null, '/system/2019-03-07/c42aa41bcaba4cec8c05fe7970f6208a.png', '/system/2019-03-07/9eaff622b56c48868bb3024c913ff7b1.png', null);
INSERT INTO `product` VALUES ('265042110586662912', '益达口香糖', '口香糖大礼包', null, '0', '1', '<!--HTML--><p>撒地方</p>', null, null, null, '0', '0', '0', '2', null, '0', '1', '1099141550146027520', '0', '20', '/system/2019-03-07/59ad6759e88a48f4b2d23955e12e294b.png', '/system/2019-03-07/41e99483de3b421dbb1cb55843e8c907.png', '/system/2019-03-07/e87bb8156e0e47588adfd58c7c59f9bf.png', '/system/2019-03-07/0ea0662aabd84aad8bdf0ceadff45f3c.png', '/system/2019-03-07/c8f93cc3338a4aa99851aad703fc0cb8.png', '', 'system', '2019-03-07 19:30:35', 'system', '2019-03-11 16:50:13', '0', null, null, '10002', '0', null, '0.00', '0', null, '/system/2019-03-07/0a5ba3d380784c54a97b62a1a8d14c79.png', '/system/2019-03-07/5325bcecadf344ee80b0517df7705005.png', '0');
INSERT INTO `product` VALUES ('265262634268741632', '吹风机', '', null, '0', '0', '', '', '', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '1', '13', '/system/2019-03-08/246d06611d0344b69a23399ad7d71075.png', '/system/2019-03-08/7d3a4a9ef9b24ead942b11069ac3c725.png', '/system/2019-03-08/47b35a1e8acb4cfbbd327dc68af4080f.png', '/system/2019-03-08/d1deab5b95f14f5d8cc0704fab39766b.png', '/system/2019-03-08/47f9256f31a3453e8700b24401e5b70d.png', '', 'system', '2019-03-08 10:06:52', 'system', '2019-03-08 10:06:52', '0', '1', '', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-08/afe01a41212f48ccb7119ff2d4c517d3.png', '/system/2019-03-08/dd91df195ace49d1ac9e35041880a6ee.png', null);
INSERT INTO `product` VALUES ('265621407355379712', '卫生纸', 'aaa', null, '0', '1', '<!--HTML--><p>大师傅</p>', null, null, null, '0', '0', '0', '2', null, '0', '1', '1099141550146027520', '0', '4', '/product/2019-03-09/ad117252808342d79d06df0fc852ac99.png', '/product/2019-03-09/23270661a6674e16aa1ea5d556c5002a.png', '/product/2019-03-09/ff10631ae6bf4f5393f963dfb86ed2b6.png', '/product/2019-03-09/5cef81fbb88b4d6baff5c4b75abd997c.png', '/product/2019-03-09/2fd0f7ba2d444a8d8fbbaa432253bedb.png', '', 'system', '2019-03-09 09:52:31', 'system', '2019-03-09 09:52:31', '0', null, null, '1000', '0', null, '0.00', '0', null, '/product/2019-03-09/185fca830e6c4ac8b0a59cd2dc78bd85.png', '/product/2019-03-09/b25c91697fb147caa0b2c19661daa76a.png', null);
INSERT INTO `product` VALUES ('265623260878135296', '鼠标', '灵敏鼠标', null, '0', '0', '<!--HTML--><p>产品详细介绍<br/></p>', '<!--HTML--><p>规格1</p>', '<!--HTML--><p>售后保证2</p>', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '1', '12', '/product/2019-03-09/bd307a757c5a452eae6fdc4e4ce22e99.png', '/product/2019-03-09/7bf33adf5d294a328dd3968a25cb463a.png', '/product/2019-03-09/6f36d01cc13c4863a1c5c390cf15879d.png', '/product/2019-03-09/585c24c6c27f4fbeb3b7db315f96af50.png', '/product/2019-03-09/37482dbd305a490eb07ee651bbb8a867.png', '<!--HTML--><p>产品备注</p>', 'system', '2019-03-09 09:59:52', 'system', '2019-03-09 09:59:52', '0', '1', 'www.baidu.com', null, '0', null, '0.00', '1101298623169265664', null, '/product/2019-03-09/d8bb5f53ede043cda21ae1e38b062a4b.png', '/product/2019-03-09/8727d1239fa44a51ae21bc2b84ad09d4.png', null);
INSERT INTO `product` VALUES ('265682134899499008', '水杯2', '', null, '0', '0', '<!--HTML--><p>aa<br/></p>', '<!--HTML--><p>vv</p>', '<!--HTML--><p>bb</p>', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '0', '15', '/product/2019-03-09/894f9dcc00d14d76962fe53a2f38d861.png', '/product/2019-03-09/aefd120a8505464393482449656cc441.png', '/product/2019-03-09/190d857f435f47ff8c7b18faf8558cbf.png', '/product/2019-03-09/b1792c6d40f344cf820c53c8b7e287c7.png', '/product/2019-03-09/a073de25818749d8aabf735c9cbbfe3e.png', '<!--HTML--><p>vv</p>', 'system', '2019-03-09 13:53:49', 'system', '2019-03-09 15:07:20', '0', '1', '', null, '12', '0.56', '1.00', '265650844884467712', null, '/product/2019-03-09/66a05776351d4f0199bfcef8f25a270b.png', '/product/2019-03-09/12e47700bd544870b6d4bc2312b391ce.png', '1');
INSERT INTO `product` VALUES ('265718493831426048', '大家吼', 'bbb', null, '0', '0', '<!--HTML--><p>奥德赛</p>', '<!--HTML--><p>打发</p>', '<!--HTML--><p>阿道夫</p>', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '1', '16', '', '', '', '', '', '<!--HTML--><p>&nbsp;打</p>', 'system', '2019-03-09 16:18:18', 'system', '2019-03-09 17:48:04', '0', '1', 'aaa', null, '1003', '0.52', '0.72', '265650844884467712', 'aa', '/product/2019-03-09/ec161ea8aa93457397d38adc7eb11fec.png', '/product/2019-03-09/38b0afc33abd4440a1d7f88504016e96.png', '2');
INSERT INTO `product` VALUES ('265746414366777344', '红酒', 'aaa', null, '0', '0', '<!--HTML--><p><span style=\"text-decoration: underline;\">ad</span><br/></p>', '<!--HTML--><p>大幅度</p>', '<!--HTML--><p>aaa</p>', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '0', '17', '/product/2019-03-09/7365301209754a5db8f7d2080df4292e.png', '/product/2019-03-09/ef698818e4b5457db13f034df8b1abf0.png', '/product/2019-03-09/61611e4463b14b6e8239ab7f771a069e.png', '/product/2019-03-09/1d878b24d5a34e1e83739e817a116980.png', '/product/2019-03-09/e8d0d3b41e164c59a216a052eeeee6d0.png', '<!--HTML--><p>aaa</p>', 'system', '2019-03-09 18:09:15', 'system', '2019-03-09 18:09:15', '0', '1', 'www', null, '1000', '0.53', '0.73', '265650844884467712', 'vvv', '/product/2019-03-09/14beeaf0310f435f9659c13349bcff62.png', '/product/2019-03-09/fc4d614606af4ac7b7d9d37c306ae95c.png', '1');
INSERT INTO `product` VALUES ('266337227495452672', '清风手纸', '', null, '0', '0', '<!--HTML--><p>aa</p>', '<!--HTML--><p>bb</p>', '<!--HTML--><p>vv</p>', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '0', '18', '/product/2019-03-11/d11307b2edea475aad0db0f37f277abf.png', '/product/2019-03-11/d8e1f123979f418d85a60ac4254d111e.png', '/product/2019-03-11/503f90d421384b319892e88712e2ccb6.png', '/product/2019-03-11/d964b490b285457aba20d051c0e84d46.png', '/product/2019-03-11/a2b5631c94df4ef6a096961fc66c5237.png', '<!--HTML--><p>adf&nbsp;</p>', 'system', '2019-03-11 09:16:55', 'system', '2019-03-11 10:37:31', '0', '1', 'www.baidul.com', null, '1000', '0.54', '0.78', '265650844884467712', '服务aaa', '/product/2019-03-11/f58f5cbe498f4f35ae456367afd6cef8.png', '/null/2019-03-11/6e63a1b8bdcf48dd8463c106ea18bae7.png', '1');
INSERT INTO `product` VALUES ('266428063097565184', '大虎辣椒', '', null, '0', '0', '', '', '', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '0', '19', '', '', '', '', '', '', 'system', '2019-03-11 15:17:52', 'system', '2019-03-11 15:23:37', '0', '1', 'www.baidul.com', null, '2000', '0.54', '0.78', '266411122170228736', '', '', '', '1');
INSERT INTO `product` VALUES ('266433995921928192', '洗发露', '', null, '0', '0', '', '', '', null, '0', '0', '0', '1', null, '0', '0', '1099141550146027520', '0', '20', '', '', '', '', '', '', 'system', '2019-03-11 15:41:27', 'system', '2019-03-11 15:41:36', '0', '1', 'www.baidul.com', null, '4000', '0.54', '0.78', '266411122170228736', '', '/product/2019-03-11/299183291f784fa89206aaefbdd9c5ac.png', '', '1');
INSERT INTO `product` VALUES ('1101746532280508416', '小米电视', '小米电视黑色', null, '0', '0', '1212212121', '', '', null, '0', '0', '0', '1', null, '0', '2', '1099141550146027520', '1', '5', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-02 15:30:17', 'system', '2019-03-02 15:30:17', '0', '1', 'www.xiaomi.net', null, '12', null, '12.00', '1101298623169265664', '24小时发发货', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1101757067531182080', '超能洗衣液', '七彩帆吻肤洗衣液薰衣草香促销组合装持久留香4斤家用正品家庭装', null, '0', '0', '七彩帆吻肤洗衣液薰衣草香促销组合装持久留香4斤家用正品家庭装', '品牌: 七彩帆型号: 1产地: 中国大陆净含量: 2kg香味: 熏衣草香毛重: 2.1kg功效: 护色/增艳计价单位: 促销组合装适用范围: 棉麻织物 丝绸、毛料 贴身内衣/婴儿衣物是否量贩装: 是', '品牌: 七彩帆型号: 1产地: 中国大陆净含量: 2kg香味: 熏衣草香毛重: 2.1kg功效: 护色/增艳计价单位: 促销组合装适用范围: 棉麻织物 丝绸、毛料 贴身内衣/婴儿衣物是否量贩装: 是', null, '0', '0', '0', '1', null, '0', '2', '1098870361359761408', '0', '5', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '品牌: 七彩帆型号: 1产地: 中国大陆净含量: 2kg香味: 熏衣草香毛重: 2.1kg功效: 护色/增艳计价单位: 促销组合装适用范围: 棉麻织物 丝绸、毛料 贴身内衣/婴儿衣物是否量贩装: 是', 'system', '2019-03-02 16:12:09', 'system', '2019-03-02 16:12:09', '0', '1', 'https://item.taobao.com/item.htm?id=586705209120&ali_refid=a3_430673_1006:1198850022:N:%E7%93%B6%E8%A3%85%E6%B4%97%E8%A1%A3%E6%B6%B2:2750b8aa6b004a0840d7166553d6525c&ali_trackid=1_2750b8aa6b004a0840d7166553d6525c&spm=a2e15.8261149.07626516002.1', null, '11', null, '22.00', '1101298623169265664', '七天无理由退货', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1101769983755325440', 'test', 'ttt', null, '0', '0', '4444', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '0', '5', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '44', 'system', '2019-03-02 17:03:29', 'system', '2019-03-02 17:03:29', '0', '1', 'tttt', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1101774728610074624', '楼上的积分', '云南大苹果', null, '0', '0', 'a', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '0', '5', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-02 17:22:20', 'system', '2019-03-02 17:22:20', '0', '1', 'www.baidu.com', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1101779135786278912', '星巴克猫爪杯', 'tt', null, '0', '0', '', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '0', '5', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-02 17:39:51', 'system', '2019-03-07 17:56:33', '0', '1', 't', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1101779689972576256', '三星X100', 't', null, '0', '0', '', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '0', '5', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-02 17:42:03', 'system', '2019-03-07 17:55:57', '0', '1', 't', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1101779790262579200', '锤子01', 't', null, '0', '0', '', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '0', '5', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-02 17:42:27', 'system', '2019-03-07 17:55:43', '0', '1', 't', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1102816051601780736', '新年大礼包2', '新年好3', null, '0', '1', '', null, null, null, '0', '0', '0', '2', null, '0', '1', '0', '0', '5', '/system/2019-03-06/30a4c4c1efee4684bf9aee73e05a7bc5.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-05 14:20:11', 'system', '2019-03-06 20:03:54', '0', null, null, '1000', '0', null, '0.00', '0', null, '/system/2019-03-06/3c6149427bcc4556973c34769e8461c4.png', '/system/2019-03-06/66da53a38c724211ad17d480bca22961.png', null);
INSERT INTO `product` VALUES ('1102839393343471616', '橘子大礼包', '天橘子', null, '0', '0', null, null, null, null, '0', '0', '0', '2', null, '0', '0', '0', '0', '1', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '<!--HTML--><p>阿斯蒂芬</p>', 'system', '2019-03-05 15:52:56', 'system', '2019-03-11 20:00:25', '0', null, null, '1000', '0', null, '0.00', '0', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '0');
INSERT INTO `product` VALUES ('1102868348483190784', '大米饭', 'aa', null, '0', '0', '<!--HTML--><p>aaa</p>', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '1', '2', '/system/2019-03-05/03cc3f28b3e14a9ebff5dac2c4c2869a.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '<!--HTML--><p>bbb</p>', 'system', '2019-03-05 17:47:59', 'system', '2019-03-05 17:47:59', '0', '1', '', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1102870777261473792', '大礼包12', 'aasdf', null, '0', '0', '<!--HTML--><p>asdf</p>', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '1', '3', '/system/2019-03-05/165dc2adb635499c858f42b16104fa7c.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '<!--HTML--><p>dsaf</p>', 'system', '2019-03-05 17:57:38', 'system', '2019-03-05 17:57:38', '0', '1', 'ad', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1102891292233097216', '水果大全', 'aa', null, '0', '0', '', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '1', '3', '/system/2019-03-05/770314cfdb05401282463dde2d0b6584.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-05 19:19:09', 'system', '2019-03-05 19:19:09', '0', '1', '', null, '0', null, '0.00', '1100925997734944768', null, '/system/2019-03-05/770314cfdb05401282463dde2d0b6584.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1102896758318813184', '牛油果', 'aaa', null, '0', '0', '', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '1', '5', '/system/2019-03-05/fd1d964a1b8445f3a4080183ecd3a378.png', '/system/2019-03-05/43bba588fd284d6ea04e67467e4fec2a.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', '', 'system', '2019-03-05 19:40:53', 'system', '2019-03-05 19:40:53', '0', '1', '', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-05/c59b1ff852b346e09f8f701ff29187b7.png', '/system/2019-03-07/a32d13e727314c5f988e518cecbae919.png', null);
INSERT INTO `product` VALUES ('1102898012902248448', '苹果bb', '', null, '0', '0', '<!--HTML--><p>详细介绍a</p>', null, null, null, '0', '0', '0', '1', null, '0', '2', '0', '1', '5', '/system/2019-03-05/d47023b5b04b4ad6b4ac42f8649e7ede.png', '/system/2019-03-05/a254a244fc5e4210bfc2a2b23579877d.png', '/system/2019-03-05/38944c4bd9344ba4a754a464b0d1d647.png', '/system/2019-03-05/874e9a60f34f47cbb372d748f9afe78c.png', '/system/2019-03-05/4c13ca303e66455a92e230641d891190.png', '<!--HTML--><p>产品备注3</p>', 'system', '2019-03-05 19:45:52', 'system', '2019-03-06 08:57:41', '0', '1', '', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-05/bad02cbdc49b426fb58d63b1acfbefeb.png', '/system/2019-03-05/d2207d461b5f4c0f9f510969745887f3.png', null);
INSERT INTO `product` VALUES ('1103104685190328320', '水杯苹果', '', null, '0', '0', '<!--HTML--><p>aa</p>', '<!--HTML--><p>bb</p>', '<!--HTML--><p>vv</p>', null, '0', '0', '0', '1', null, '0', '2', '0', '1', '4', '/system/2019-03-06/c81100a02cf949c188f03134835a0b3a.png', '/system/2019-03-06/3a7f920108304fa88aabf9ca374969c4.png', '/system/2019-03-06/8628bb15df7447a285ff0f23ba6c2772.png', '/system/2019-03-06/a4d9b70570834ce7ab133b6cd381e96b.png', '/system/2019-03-06/98dcf54e381b450f9f2c7685f80fe39c.png', '<!--HTML--><p>ff</p>', 'system', '2019-03-06 09:27:06', 'system', '2019-03-06 09:27:06', '0', '1', '', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-06/cbc6ec416823454d9f8ebb40508388f5.png', '/system/2019-03-06/7c4fa6b9130a4f85981530f3912b5547.png', null);
INSERT INTO `product` VALUES ('1103115985262485504', '苹果xs', '', null, '0', '0', '<!--HTML--><p>aa</p>', '<!--HTML--><p>vvv</p>', '<!--HTML--><p>bbb</p>', null, '0', '0', '0', '1', null, '0', '2', '0', '1', '7', '/system/2019-03-06/4dd256ae5cf04e0180d9e6f7465b4392.png', '/system/2019-03-06/f7fc1849d6ce4533a375b4b04783e49d.png', '/system/2019-03-06/d42219231d414b3cb40d775228357db6.png', '/system/2019-03-06/c548ab246fa04d979f1f8a1a55a351a1.png', '/system/2019-03-06/0106ddd8afd94035ad505ac7991f1490.png', '<!--HTML--><p>bnnn</p>', 'system', '2019-03-06 10:12:00', 'system', '2019-03-06 10:12:00', '0', '1', '', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-06/620a5c8d726445999006a67172b924af.png', '/system/2019-03-06/42879d96ff6f40fa81b2fb3f0d4358ba.png', null);
INSERT INTO `product` VALUES ('1103116401748484096', '橘子6', '', null, '0', '0', '<!--HTML--><p>橘子啊</p>', '<!--HTML--><p>打发</p>', '<!--HTML--><p>发个</p>', null, '0', '0', '0', '1', null, '0', '2', '0', '1', '10', '/system/2019-03-06/82812e7ec08a41b88fd5bf3bb27b5771.png', '/system/2019-03-06/fca38c0cb5454514aac6d06bf6e575a5.png', '/system/2019-03-06/f6cf9a7d8284445f8ae51d43d01bf223.png', '/system/2019-03-06/c8281f4406af4157be1e492add41cf44.png', '/system/2019-03-06/e5d27aab29bd41cca1c923c242f2cef7.png', '<!--HTML--><p>讽德诵功</p>', 'system', '2019-03-06 10:13:40', 'system', '2019-03-06 10:13:40', '0', '1', '', null, '0', null, '0.00', '1101298623169265664', null, '/system/2019-03-06/631fded417234189b552926ae4c03be4.png', '/system/2019-03-06/7769cbfaa48045cab5eed42d1adb4f0d.png', null);

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` bigint(18) NOT NULL,
  `parent_code` bigint(18) DEFAULT NULL COMMENT '上级分类id,如果没有表示是一级分类,直接上级的id',
  `icon_url` varchar(255) DEFAULT '' COMMENT 'logo图片',
  `category_name` varchar(60) NOT NULL COMMENT '名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态，0未删除，1已删除',
  `tree_sort` int(10) DEFAULT NULL COMMENT '排序',
  `path_url` varchar(255) DEFAULT '' COMMENT '链接地址',
  `category_name_short` varchar(60) DEFAULT NULL COMMENT '分类名字的简称',
  `banner_url` varchar(255) DEFAULT '' COMMENT 'banner图地址',
  `remarks` varchar(4000) DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT NULL,
  `tree_leaf` char(1) DEFAULT '' COMMENT '是否最末级,1是最末级',
  `parent_codes` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `tree_level` decimal(4,0) NOT NULL COMMENT '层次级别,0是顶级。',
  `tree_sorts` varchar(2000) DEFAULT '' COMMENT '所有父级排序号',
  `tree_names` varchar(2000) DEFAULT '' COMMENT '全节点名',
  `sell_status` tinyint(1) DEFAULT '1' COMMENT '上架状态:1上架,0下架',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_status` (`status`),
  KEY `index_sortIndex` (`tree_sort`),
  KEY `index_sellStatus` (`sell_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 产品分类';

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('265623879014879232', '0', '', '测试分类1', '0', '120', '', null, '', '', 'system', '2019-03-09 10:02:20', 'system', '2019-03-09 10:02:20', '0', '0,', '0', '0000000120,', '测试分类1', '1');
INSERT INTO `product_category` VALUES ('265624650620014592', '265623879014879232', '', '测试子分类1', '0', '30', '', null, '', '', 'system', '2019-03-09 10:05:24', 'system', '2019-03-09 10:05:24', '0', '0,265623879014879232,', '1', '0000000120,0000000030,', '测试分类1/测试子分类1', '1');
INSERT INTO `product_category` VALUES ('265624842924658688', '265624650620014592', '', '测试子子分类1', '0', '30', '', null, '', '', 'system', '2019-03-09 10:06:10', 'system', '2019-03-09 10:06:10', '1', '0,265623879014879232,265624650620014592,', '2', '0000000120,0000000030,0000000030,', '测试分类1/测试子分类1/测试子子分类1', '1');
INSERT INTO `product_category` VALUES ('265632830409203712', '0', '', '测试分类2', '0', '150', '', null, '', 'a＇a', 'system', '2019-03-09 10:37:54', 'system', '2019-03-09 10:37:54', '1', '0,', '0', '0000000150,', '测试分类2', '1');
INSERT INTO `product_category` VALUES ('1099882335674810368', '0', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '家用电器', '0', '30', '', '', '', '', 'system', '2019-02-25 12:02:38', 'system', '2019-03-07 10:36:12', '0', '0,', '0', '0000000030,', '家用电器', '1');
INSERT INTO `product_category` VALUES ('1099882335674810369', '1099882335674810368', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '电视', '0', '30', '', '', '', '', 'system', '2019-02-25 13:24:39', 'system', '2019-02-25 13:24:39', '0', '0,1099882335674810368,', '1', '0000000030,0000000030,', '家用电器/电视', '1');
INSERT INTO `product_category` VALUES ('1099905075680411648', '1099882335674810369', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '平板电视', '0', '30', '', '', '', '', 'system', '2019-02-25 13:33:00', 'system', '2019-02-25 13:33:00', '1', '0,1099882335674810368,1099882335674810369,', '2', '0000000030,0000000030,0000000030,', '家用电器/电视/平板电视', '1');
INSERT INTO `product_category` VALUES ('1099905132827803648', '1099882335674810369', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '液晶电视', '0', '60', '', '', '', '', 'system', '2019-02-25 13:33:14', 'system', '2019-02-25 13:33:14', '1', '0,1099882335674810368,1099882335674810369,', '2', '0000000030,0000000030,0000000060,', '家用电器/电视/液晶电视', '1');
INSERT INTO `product_category` VALUES ('1099905210699251712', '1099882335674810369', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '普通电视', '0', '90', '', '', '', '', 'system', '2019-02-25 13:33:32', 'system', '2019-02-25 13:33:32', '1', '0,1099882335674810368,1099882335674810369,', '2', '0000000030,0000000030,0000000090,', '家用电器/电视/普通电视', '1');
INSERT INTO `product_category` VALUES ('1099905246413750272', '1099882335674810368', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '洗衣机', '0', '60', '', '', '', '', 'system', '2019-02-25 13:33:41', 'system', '2019-02-25 13:33:41', '0', '0,1099882335674810368,', '1', '0000000030,0000000060,', '家用电器/洗衣机', '1');
INSERT INTO `product_category` VALUES ('1099905290701406208', '1099905246413750272', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '滚筒洗衣机', '0', '30', '', '', '', '', 'system', '2019-02-25 13:33:51', 'system', '2019-02-25 13:33:51', '1', '0,1099882335674810368,1099905246413750272,', '2', '0000000030,0000000060,0000000030,', '家用电器/洗衣机/滚筒洗衣机', '1');
INSERT INTO `product_category` VALUES ('1099905356753305600', '1099905246413750272', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '波轮洗衣机', '0', '60', '', '', '', '', 'system', '2019-02-25 13:34:07', 'system', '2019-02-25 13:34:07', '1', '0,1099882335674810368,1099905246413750272,', '2', '0000000030,0000000060,0000000060,', '家用电器/洗衣机/波轮洗衣机', '1');
INSERT INTO `product_category` VALUES ('1100716758473551872', '0', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '日常用品', '0', '60', '', '', '', '', 'system', '2019-02-27 19:18:20', 'system', '2019-02-27 19:18:20', '0', '0,', '0', '0000000060,', '日常用品', '1');
INSERT INTO `product_category` VALUES ('1101399497248854016', '1100716758473551872', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '洗护用品', '0', '30', '', '', '', '', 'system', '2019-03-01 16:31:18', 'system', '2019-03-01 16:31:18', '0', '0,1100716758473551872,', '1', '0000000060,0000000030,', '日常用品/洗护用品', '1');
INSERT INTO `product_category` VALUES ('1101399589603233792', '1101399497248854016', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '肥皂', '0', '30', '', '', '', '2112', 'system', '2019-03-01 16:31:40', 'system', '2019-03-01 16:31:40', '1', '0,1100716758473551872,1101399497248854016,', '2', '0000000060,0000000030,0000000030,', '日常用品/洗护用品/肥皂', '1');
INSERT INTO `product_category` VALUES ('1101399651691515904', '1101399497248854016', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '洗衣液', '0', '60', '', '', '', '', 'system', '2019-03-01 16:31:55', 'system', '2019-03-01 16:31:55', '1', '0,1100716758473551872,1101399497248854016,', '2', '0000000060,0000000030,0000000060,', '日常用品/洗护用品/洗衣液', '0');
INSERT INTO `product_category` VALUES ('1101755558626123776', '1099882335674810368', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '电脑', '0', '90', '', '', '', '', 'system', '2019-03-02 16:06:09', 'system', '2019-03-02 16:06:38', '0', '0,1099882335674810368,', '1', '0000000030,0000000090,', '家用电器/电脑', '1');
INSERT INTO `product_category` VALUES ('1101755746556108800', '1101755558626123776', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '笔记本电脑', '0', '10', '', '', '', '', 'system', '2019-03-02 16:06:54', 'system', '2019-03-02 16:06:54', '1', '0,1099882335674810368,1101755558626123776,', '2', '0000000030,0000000090,0000000010,', '家用电器/电脑/笔记本电脑', '1');
INSERT INTO `product_category` VALUES ('1101755818316455936', '1101755558626123776', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '台式电脑', '0', '20', '', '', '', '', 'system', '2019-03-02 16:07:11', 'system', '2019-03-02 16:07:11', '1', '0,1099882335674810368,1101755558626123776,', '2', '0000000030,0000000090,0000000020,', '家用电器/电脑/台式电脑', '1');
INSERT INTO `product_category` VALUES ('1103107491473305600', '0', '/system/2019-03-07/e354f99fa281400ca4d47267ae991647.png', '通用类', '0', '90', '', '', '', '', 'system', '2019-03-06 09:38:15', 'system', '2019-03-06 09:38:15', '1', '0,', '0', '0000000090,', '通用类', '0');

-- ----------------------------
-- Table structure for product_category_con
-- ----------------------------
DROP TABLE IF EXISTS `product_category_con`;
CREATE TABLE `product_category_con` (
  `product_id` bigint(18) NOT NULL,
  `category_id` bigint(18) NOT NULL,
  KEY `index_productId` (`product_id`),
  KEY `index_categoryId` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 产品与分类的关系表';

-- ----------------------------
-- Records of product_category_con
-- ----------------------------
INSERT INTO `product_category_con` VALUES ('1101746532280508416', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('1101746532280508416', '1099905132827803648');
INSERT INTO `product_category_con` VALUES ('1101746532280508416', '1099905210699251712');
INSERT INTO `product_category_con` VALUES ('1101757067531182080', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('1101769983755325440', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('1101769983755325440', '1099905132827803648');
INSERT INTO `product_category_con` VALUES ('1101769983755325440', '1099905210699251712');
INSERT INTO `product_category_con` VALUES ('1101769983755325440', '1099905290701406208');
INSERT INTO `product_category_con` VALUES ('1101769983755325440', '1099905356753305600');
INSERT INTO `product_category_con` VALUES ('1101769983755325440', '1101755746556108800');
INSERT INTO `product_category_con` VALUES ('1101769983755325440', '1101755818316455936');
INSERT INTO `product_category_con` VALUES ('1101774728610074624', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('1101774728610074624', '1099905290701406208');
INSERT INTO `product_category_con` VALUES ('1101779135786278912', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('1101779135786278912', '1099905132827803648');
INSERT INTO `product_category_con` VALUES ('1101779135786278912', '1099905210699251712');
INSERT INTO `product_category_con` VALUES ('1101779689972576256', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('1101779689972576256', '1099905132827803648');
INSERT INTO `product_category_con` VALUES ('1101779689972576256', '1099905210699251712');
INSERT INTO `product_category_con` VALUES ('1101779689972576256', '1099905290701406208');
INSERT INTO `product_category_con` VALUES ('1101779689972576256', '1099905356753305600');
INSERT INTO `product_category_con` VALUES ('1101779689972576256', '1101755746556108800');
INSERT INTO `product_category_con` VALUES ('1101779689972576256', '1101755818316455936');
INSERT INTO `product_category_con` VALUES ('1101779790262579200', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('1101779790262579200', '1099905132827803648');
INSERT INTO `product_category_con` VALUES ('1101779790262579200', '1099905210699251712');
INSERT INTO `product_category_con` VALUES ('1101779790262579200', '1099905290701406208');
INSERT INTO `product_category_con` VALUES ('1101779790262579200', '1099905356753305600');
INSERT INTO `product_category_con` VALUES ('1101779790262579200', '1101755746556108800');
INSERT INTO `product_category_con` VALUES ('1101779790262579200', '1101755818316455936');
INSERT INTO `product_category_con` VALUES ('1102384951340859392', '1099905290701406208');
INSERT INTO `product_category_con` VALUES ('1103113667343069184', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('1103115165800116224', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('1103115985262485504', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('1103116401748484096', '1101399589603233792');
INSERT INTO `product_category_con` VALUES ('1103116401748484096', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('264558728948858880', '1101399589603233792');
INSERT INTO `product_category_con` VALUES ('264558728948858880', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('264982679070965760', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('265020796099559424', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('265021454164885504', '1101399589603233792');
INSERT INTO `product_category_con` VALUES ('265021454164885504', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('265021864808218624', '1101399589603233792');
INSERT INTO `product_category_con` VALUES ('265022136401985536', '1101399589603233792');
INSERT INTO `product_category_con` VALUES ('265022136401985536', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('265022973727670272', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('265022973727670272', '1099905132827803648');
INSERT INTO `product_category_con` VALUES ('265022973727670272', '1099905210699251712');
INSERT INTO `product_category_con` VALUES ('265262634268741632', '1101399651691515904');
INSERT INTO `product_category_con` VALUES ('265623260878135296', '1099905075680411648');
INSERT INTO `product_category_con` VALUES ('265682134899499008', '265624842924658688');
INSERT INTO `product_category_con` VALUES ('265718493831426048', '265632830409203712');
INSERT INTO `product_category_con` VALUES ('265746414366777344', '265632830409203712');
INSERT INTO `product_category_con` VALUES ('266337227495452672', '1101399589603233792');
INSERT INTO `product_category_con` VALUES ('266428063097565184', '265624842924658688');
INSERT INTO `product_category_con` VALUES ('266433995921928192', '1101399589603233792');

-- ----------------------------
-- Table structure for product_gift
-- ----------------------------
DROP TABLE IF EXISTS `product_gift`;
CREATE TABLE `product_gift` (
  `product_id` bigint(18) NOT NULL COMMENT '产品id',
  `need_address` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要填写地址',
  `reward_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '礼包奖励方式',
  `spread_scale` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '推广比例',
  `cost_reward` int(10) NOT NULL DEFAULT '0' COMMENT '消费奖励金额(0表示不赠送)',
  `spread_level` int(4) DEFAULT NULL COMMENT '推广深度',
  `level1` int(10) DEFAULT '0',
  `level2` int(10) DEFAULT '0',
  `level3` int(10) DEFAULT '0',
  `level4` int(10) DEFAULT '0',
  `level5` int(10) DEFAULT '0',
  `level6` int(10) DEFAULT '0',
  `level7` int(10) DEFAULT '0',
  `level8` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_gift
-- ----------------------------
INSERT INTO `product_gift` VALUES ('264659132551430144', '1', '1', '0.50', '1000', '3', '10', '2', '3', '0', '0', '0', '0', '0');
INSERT INTO `product_gift` VALUES ('264689553910759424', '1', '1', '0.50', '1000', '3', '10', '20', '30', '1', '2', '6', '7', '81');
INSERT INTO `product_gift` VALUES ('264896392593641472', '1', '1', '0.00', '0', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `product_gift` VALUES ('265038060311953408', '1', '1', '0.50', '0', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `product_gift` VALUES ('265042110586662912', '1', '1', '0.56', '100', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `product_gift` VALUES ('265621407355379712', '1', '1', '0.60', '10000', '3', '2', '3', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for product_tag_con
-- ----------------------------
DROP TABLE IF EXISTS `product_tag_con`;
CREATE TABLE `product_tag_con` (
  `tag_value` int(4) NOT NULL COMMENT '类似于标签id，但是要配合标签的type(定值)查询对应的标签名称',
  `product_id` bigint(20) NOT NULL,
  KEY `index_productId` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 产品标签的关联表';

-- ----------------------------
-- Records of product_tag_con
-- ----------------------------
INSERT INTO `product_tag_con` VALUES ('0', '1101746532280508416');
INSERT INTO `product_tag_con` VALUES ('3', '1101746532280508416');
INSERT INTO `product_tag_con` VALUES ('0', '1101757067531182080');
INSERT INTO `product_tag_con` VALUES ('1', '1101757067531182080');
INSERT INTO `product_tag_con` VALUES ('0', '1101769983755325440');
INSERT INTO `product_tag_con` VALUES ('1', '1101769983755325440');
INSERT INTO `product_tag_con` VALUES ('2', '1101769983755325440');
INSERT INTO `product_tag_con` VALUES ('0', '1101774728610074624');
INSERT INTO `product_tag_con` VALUES ('1', '1101774728610074624');
INSERT INTO `product_tag_con` VALUES ('0', '1101779135786278912');
INSERT INTO `product_tag_con` VALUES ('1', '1101779135786278912');
INSERT INTO `product_tag_con` VALUES ('0', '1101779689972576256');
INSERT INTO `product_tag_con` VALUES ('1', '1101779689972576256');
INSERT INTO `product_tag_con` VALUES ('0', '1102384951340859392');
INSERT INTO `product_tag_con` VALUES ('0', '1103113667343069184');
INSERT INTO `product_tag_con` VALUES ('0', '1103115165800116224');
INSERT INTO `product_tag_con` VALUES ('0', '1103115985262485504');
INSERT INTO `product_tag_con` VALUES ('4', '1102839393343471616');
INSERT INTO `product_tag_con` VALUES ('4', '1102839393343471616');
INSERT INTO `product_tag_con` VALUES ('3', '264558728948858880');
INSERT INTO `product_tag_con` VALUES ('1', '1103116401748484096');
INSERT INTO `product_tag_con` VALUES ('3', '1103116401748484096');
INSERT INTO `product_tag_con` VALUES ('1', '264982679070965760');
INSERT INTO `product_tag_con` VALUES ('0', '265020796099559424');
INSERT INTO `product_tag_con` VALUES ('0', '265021454164885504');
INSERT INTO `product_tag_con` VALUES ('1', '265021454164885504');
INSERT INTO `product_tag_con` VALUES ('0', '265021864808218624');
INSERT INTO `product_tag_con` VALUES ('1', '265021864808218624');
INSERT INTO `product_tag_con` VALUES ('2', '265021864808218624');
INSERT INTO `product_tag_con` VALUES ('3', '265021864808218624');
INSERT INTO `product_tag_con` VALUES ('0', '265022136401985536');
INSERT INTO `product_tag_con` VALUES ('1', '265022136401985536');
INSERT INTO `product_tag_con` VALUES ('0', '265022973727670272');
INSERT INTO `product_tag_con` VALUES ('1', '265022973727670272');
INSERT INTO `product_tag_con` VALUES ('0', '265262634268741632');
INSERT INTO `product_tag_con` VALUES ('0', '265623260878135296');
INSERT INTO `product_tag_con` VALUES ('0', '1101779790262579200');
INSERT INTO `product_tag_con` VALUES ('1', '1101779790262579200');
INSERT INTO `product_tag_con` VALUES ('2', '1101779790262579200');
INSERT INTO `product_tag_con` VALUES ('0', '265682134899499008');
INSERT INTO `product_tag_con` VALUES ('0', '265718493831426048');
INSERT INTO `product_tag_con` VALUES ('1', '265718493831426048');
INSERT INTO `product_tag_con` VALUES ('2', '265718493831426048');
INSERT INTO `product_tag_con` VALUES ('1', '265746414366777344');
INSERT INTO `product_tag_con` VALUES ('0', '266337227495452672');
INSERT INTO `product_tag_con` VALUES ('0', '266428063097565184');
INSERT INTO `product_tag_con` VALUES ('1', '266428063097565184');
INSERT INTO `product_tag_con` VALUES ('0', '266433995921928192');

-- ----------------------------
-- Table structure for sku
-- ----------------------------
DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku` (
  `id` bigint(18) NOT NULL,
  `product_id` bigint(18) NOT NULL,
  `sku_code` varchar(255) DEFAULT '' COMMENT 'sku编码',
  `bar_code` varchar(255) DEFAULT '' COMMENT '条形码',
  `sku_name` varchar(255) DEFAULT '' COMMENT 'sku的名称',
  `intro` varchar(255) DEFAULT '' COMMENT '产品简介',
  `cost_price` bigint(11) NOT NULL DEFAULT '0' COMMENT '成本价',
  `prime_price` bigint(11) NOT NULL DEFAULT '0' COMMENT '原价',
  `current_price` bigint(11) NOT NULL DEFAULT '0' COMMENT '现价',
  `supply_price` bigint(11) NOT NULL DEFAULT '0' COMMENT '供货价',
  `sale_count` int(11) NOT NULL DEFAULT '0' COMMENT '实际销量',
  `virtual_sell_count` int(11) NOT NULL DEFAULT '0' COMMENT '设置的虚拟销量',
  `sell_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '上下架,0下架，1上架，',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '秒杀产品时允许秒杀基数',
  `buy_max_num` int(11) NOT NULL DEFAULT '0' COMMENT '最大购买次数，大于等于1生效',
  `buy_min_quantity` int(11) NOT NULL DEFAULT '0' COMMENT '单次最小购买数量',
  `buy_max_quantity` int(11) NOT NULL DEFAULT '0' COMMENT '累计最大购买数量',
  `buy_single_max_quantity` int(11) NOT NULL DEFAULT '0' COMMENT '单次最大购买数量',
  `discount_status` int(11) NOT NULL DEFAULT '0' COMMENT '折扣控制（0不参与折扣，1参与折扣）',
  `buy_score` int(11) NOT NULL DEFAULT '0' COMMENT '购买赠送积分（0不赠送，1赠送）',
  `has_present` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有赠品(0、没有赠品，1、有赠品)',
  `sync_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '物流同步状态0，未同步，1已同步',
  `default_product` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1、默认sku产品，0、非默认产品，一个productId下原则上只允许一个默认产品',
  `like_count` int(11) NOT NULL DEFAULT '0' COMMENT '喜歡的数量',
  `sku_image1` varchar(255) DEFAULT '',
  `sku_image2` varchar(255) DEFAULT '',
  `sku_image3` varchar(255) DEFAULT '',
  `sku_image4` varchar(255) DEFAULT '',
  `sku_image5` varchar(255) DEFAULT '',
  `remarks` varchar(4000) DEFAULT '' COMMENT '备注',
  `create_by` varchar(11) DEFAULT '' COMMENT '创建人',
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(11) DEFAULT '' COMMENT '最后修改人',
  `update_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态，0未删除，1已删除',
  `list_image` varchar(255) DEFAULT NULL COMMENT '列表展示图',
  `spec_image` varchar(255) DEFAULT NULL COMMENT '规格切换图',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_productId` (`product_id`),
  KEY `index_skuCode` (`sku_code`),
  KEY `index_sellStatus` (`sell_status`),
  KEY `index_status` (`status`),
  KEY `index_defaultProduct` (`default_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 产品SKU';

-- ----------------------------
-- Records of sku
-- ----------------------------
INSERT INTO `sku` VALUES ('264558729087270912', '264558728948858880', '123', '12ef', '薰衣草,20adsf', '', '0', '0', '1000', '0', '73', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-06/289e8672ee73499d8e5d03ac1368f116.png', '/system/2019-03-06/90ea65a4cb70422983b5a5c9b747ee19.png', '/system/2019-03-06/6f9e71bccab7450e941352373c0dc0d2.png', '/system/2019-03-06/bfc075c6b20f4fd4b1d0012fa64e4486.png', '/system/2019-03-06/df465a1691364467a41010df293eb839.png', '', 'system', '2019-03-06 11:29:48', 'system', '2019-03-07 20:06:14', '0', '/system/2019-03-06/8b06ce61a2a3453d9c3ec6f915212556.png', '/system/2019-03-06/5cb5143487324fd5996fbd3db20cf13e.png');
INSERT INTO `sku` VALUES ('264659132647899136', '264659132551430144', '', '', '', '', '0', '20', '4230', '0', '10', '0', '1', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '', '', '', '', '', '', 'system', '2019-03-06 18:08:46', 'system', '2019-03-06 18:08:46', '0', null, null);
INSERT INTO `sku` VALUES ('264689553961091072', '264689553910759424', '', '', '', '', '0', '100', '1320', '0', '32', '0', '1', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'system', '2019-03-06 20:09:39', 'system', '2019-03-06 20:09:39', '0', null, null);
INSERT INTO `sku` VALUES ('264896392673333248', '264896392593641472', '', '', '', '', '1200', '0', '970', '0', '31', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'system', '2019-03-07 09:51:34', 'system', '2019-03-07 09:51:34', '0', null, null);
INSERT INTO `sku` VALUES ('264982691209281536', '264982679070965760', 'aaa', 'abbb', '薰衣草味白猫洗洁精', '护手的洗洁精', '1200', '100', '650', '0', '73', '50', '1', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-07/62e9234a101b4e18aab86904ad36a27e.png', '/system/2019-03-07/1a89eded6ff64c1c8c2baeb70da77366.png', '/system/2019-03-07/dd4c25bc15be41f296a143a83a930ec4.png', '/system/2019-03-07/23fe3557c6664481be1e7f2404142655.png', '/system/2019-03-07/d02214d08ec649fc92fbdee0c0a1e473.png', 'aa', 'system', '2019-03-07 15:34:29', 'system', '2019-03-07 16:46:20', '0', '/system/2019-03-07/d6973486737d4cd1b0bb9e47b395eb11.png', '/system/2019-03-07/cb721d7b169e463b89a665ed6269e9c8.png');
INSERT INTO `sku` VALUES ('265020796200222720', '265020796099559424', 'w22w21', '212w2', '洗衣液', '宝洁汰渍正品机洗衣液9kg家庭装全效去渍洁净组合香味持久整箱批', '2100', '555', '30033', '21', '30', '2', '1', '322293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-07/fbc8fb876d5e4e6681a51c061cae3e50.jpg', '/system/2019-03-07/bb77d2aab5ad47cbba3dbe092504c1ab.jpg', '/system/2019-03-07/ff10ba33c956479c816388ddf1256294.jpg', '/system/2019-03-07/f94ada1b65fd405fae3c721c88fdf22c.jpg', '/system/2019-03-07/24f481af3f444c5b8a2805f19a2daf8f.jpg', '', 'system', '2019-03-07 18:05:54', 'system', '2019-03-07 18:06:40', '0', '/system/2019-03-07/08fd63161de04e988fef7d970783988a.jpg', '/system/2019-03-07/91600e8dacea49cba32fcbd04d38e7f2.jpg');
INSERT INTO `sku` VALUES ('265021454290714625', '265021454164885504', '奥妙 洗衣液 1766776螨', '奥妙 洗衣液7667767', '奥妙 洗衣液 18.3斤超值 除菌除螨', '奥妙 洗衣液 18.3斤超值 除菌除螨 大礼包 源自天然酵素(新老包装随机发货)', '1000', '3120', '231000', '1200', '58', '13', '1', '231173', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/7ecee0a50bf04309836f351012d3be2c.jpg', '/system/2019-03-07/51319ae6f5b34aa8b11874b76937429a.jpg', '/system/2019-03-07/60c8143bbd5a44e5b58d326889bfa0c1.jpg', '/system/2019-03-07/3a68e0d6c7c3455298f599c8e1153738.jpg', '/system/2019-03-07/d8ed8c68e0a643e5a634355e6d4f9e7c.jpg', '', 'system', '2019-03-07 18:08:31', 'system', '2019-03-08 14:19:07', '0', '/system/2019-03-07/2fc6dee5a20f47cca9fc51849d31c68b.jpg', '/system/2019-03-07/f90cae652ce8400799884fdb548d1855.jpg');
INSERT INTO `sku` VALUES ('265021864904687616', '265021864808218624', 'skuj123456', 'tiaoma123456', 'Jeepguide 皮带男真皮休闲复古针', '真皮休闲复古针扣牛皮腰带青年中年裤带', '1000', '1500', '141000', '1000', '4', '19', '1', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-07/70807ff8e07b435c8bda69e9b188aba6.jpg', '/system/2019-03-07/fc6988c4938f44fba1a7ab4804d96d46.jpg', '/system/2019-03-07/6867a2e0943d4db0b45016d02495d2d6.jpg', '/system/2019-03-07/f5e77495a18547f9ac9c10134ed3dd74.jpg', '/system/2019-03-07/db385a7e9697424eb49f2c7a9235af7d.jpg', '备注1', 'system', '2019-03-07 18:10:08', 'system', '2019-03-07 18:12:17', '0', '/system/2019-03-07/20ba286a8e894c08b5b64be40b84ba28.jpg', '/system/2019-03-07/5076f15d5fce4f769bae3584b4a22488.jpg');
INSERT INTO `sku` VALUES ('265021864904687617', '265021864808218624', 'skuj1234567', 'tiaoma1234567', 'Jeepguide 皮带男真皮休闲复古2', '真皮休闲复古针扣牛皮腰带青年中年裤带', '1100', '1700', '161000', '1000', '60', '21', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/70807ff8e07b435c8bda69e9b188aba6.jpg', '/system/2019-03-07/fc6988c4938f44fba1a7ab4804d96d46.jpg', '/system/2019-03-07/6867a2e0943d4db0b45016d02495d2d6.jpg', '/system/2019-03-07/f5e77495a18547f9ac9c10134ed3dd74.jpg', '/system/2019-03-07/db385a7e9697424eb49f2c7a9235af7d.jpg', '', 'system', '2019-03-07 18:10:08', 'system', '2019-03-07 18:13:49', '0', '/system/2019-03-07/20ba286a8e894c08b5b64be40b84ba28.jpg', '/system/2019-03-07/5076f15d5fce4f769bae3584b4a22488.jpg');
INSERT INTO `sku` VALUES ('265021864904687618', '265021864808218624', 'skuj12345678', 'tiaoma12345678', 'Jeepguide 皮带男真皮休闲复古针', '真皮休闲复古针扣牛皮腰带青年中年裤带', '1300', '1700', '151000', '1200', '60', '11', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/70807ff8e07b435c8bda69e9b188aba6.jpg', '/system/2019-03-07/fc6988c4938f44fba1a7ab4804d96d46.jpg', '/system/2019-03-07/6867a2e0943d4db0b45016d02495d2d6.jpg', '/system/2019-03-07/f5e77495a18547f9ac9c10134ed3dd74.jpg', '/system/2019-03-07/db385a7e9697424eb49f2c7a9235af7d.jpg', '', 'system', '2019-03-07 18:10:08', 'system', '2019-03-07 18:14:35', '0', '/system/2019-03-07/20ba286a8e894c08b5b64be40b84ba28.jpg', '/system/2019-03-07/5076f15d5fce4f769bae3584b4a22488.jpg');
INSERT INTO `sku` VALUES ('265021864904687619', '265021864808218624', 'skuj12345', 'tiaoma12345', 'Jeepguide 皮带男真皮休闲复古针', '真皮休闲复古针扣牛皮腰带青年中年裤带', '1400', '1600', '221000', '1100', '60', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/70807ff8e07b435c8bda69e9b188aba6.jpg', '/system/2019-03-07/fc6988c4938f44fba1a7ab4804d96d46.jpg', '/system/2019-03-07/6867a2e0943d4db0b45016d02495d2d6.jpg', '/system/2019-03-07/f5e77495a18547f9ac9c10134ed3dd74.jpg', '/system/2019-03-07/db385a7e9697424eb49f2c7a9235af7d.jpg', '', 'system', '2019-03-07 18:10:08', 'system', '2019-03-11 11:32:12', '0', '/system/2019-03-07/20ba286a8e894c08b5b64be40b84ba28.jpg', '/system/2019-03-07/5076f15d5fce4f769bae3584b4a22488.jpg');
INSERT INTO `sku` VALUES ('265022973861888000', '265022973727670272', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）', '2100', '21300', '211000', '2100', '29', '21', '1', '93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '/system/2019-03-07/3292ff7604154f49acc02e99842392e4.jpg', '/system/2019-03-07/d7e2e1cd51cd476d97f37c0dfdfc05ca.jpg', '/system/2019-03-07/5367dfd47cb04fcc870e6190fd8f11f4.jpg', '/system/2019-03-07/f626bdee2ccc436db63ecae796809c42.jpg', '', 'system', '2019-03-07 18:14:33', 'system', '2019-03-07 18:15:02', '0', '/system/2019-03-07/b22f23ba825d4203b74fa5e7375a1ac8.jpg', '/system/2019-03-07/0ef1aa695ccd472a8c681e3d27abc236.jpg');
INSERT INTO `sku` VALUES ('265022973861888001', '265022973727670272', '3213212', '212121', '212121', 'TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）', '100000', '500000', '400000', '200000', '2', '2', '1', '3122319', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '/system/2019-03-07/3292ff7604154f49acc02e99842392e4.jpg', '/system/2019-03-07/d7e2e1cd51cd476d97f37c0dfdfc05ca.jpg', '/system/2019-03-07/5367dfd47cb04fcc870e6190fd8f11f4.jpg', '/system/2019-03-07/f626bdee2ccc436db63ecae796809c42.jpg', '', 'system', '2019-03-07 18:14:33', 'system', '2019-03-11 17:19:04', '0', '/system/2019-03-07/b22f23ba825d4203b74fa5e7375a1ac8.jpg', '/system/2019-03-07/0ef1aa695ccd472a8c681e3d27abc236.jpg');
INSERT INTO `sku` VALUES ('265022973866082304', '265022973727670272', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）', '12000', '100', '211000', '100', '95', '2', '1', '2121', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '/system/2019-03-07/3292ff7604154f49acc02e99842392e4.jpg', '/system/2019-03-07/d7e2e1cd51cd476d97f37c0dfdfc05ca.jpg', '/system/2019-03-07/5367dfd47cb04fcc870e6190fd8f11f4.jpg', '/system/2019-03-07/f626bdee2ccc436db63ecae796809c42.jpg', '', 'system', '2019-03-07 18:14:33', 'system', '2019-03-07 18:15:22', '0', '/system/2019-03-07/b22f23ba825d4203b74fa5e7375a1ac8.jpg', '/system/2019-03-07/0ef1aa695ccd472a8c681e3d27abc236.jpg');
INSERT INTO `sku` VALUES ('265022973866082305', '265022973727670272', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人', 'TCL 55T3 55英寸超高清34核人工智能曲面 7.9mm金属超薄4K电视（枪色）', '12000', '2112', '33232', '300', '95', '2', '1', '122121', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/265087a073fb4e70b3e4b569c7353610.jpg', '/system/2019-03-07/3292ff7604154f49acc02e99842392e4.jpg', '/system/2019-03-07/d7e2e1cd51cd476d97f37c0dfdfc05ca.jpg', '/system/2019-03-07/5367dfd47cb04fcc870e6190fd8f11f4.jpg', '/system/2019-03-07/f626bdee2ccc436db63ecae796809c42.jpg', '', 'system', '2019-03-07 18:14:33', 'system', '2019-03-07 18:15:59', '0', '/system/2019-03-07/b22f23ba825d4203b74fa5e7375a1ac8.jpg', '/system/2019-03-07/0ef1aa695ccd472a8c681e3d27abc236.jpg');
INSERT INTO `sku` VALUES ('265038060374867968', '265038060311953408', '', '', '', '', '1200', '2000', '31000', '0', '4', '0', '1', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'system', '2019-03-07 19:14:30', 'system', '2019-03-07 19:14:30', '0', null, null);
INSERT INTO `sku` VALUES ('265042110796378112', '265042110586662912', '', '', '益达口香糖', '', '1200', '10000', '10100', '0', '6', '0', '1', '10002', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-07/59ad6759e88a48f4b2d23955e12e294b.png', '/system/2019-03-07/41e99483de3b421dbb1cb55843e8c907.png', '/system/2019-03-07/e87bb8156e0e47588adfd58c7c59f9bf.png', '/system/2019-03-07/0ea0662aabd84aad8bdf0ceadff45f3c.png', '/system/2019-03-07/c8f93cc3338a4aa99851aad703fc0cb8.png', '', 'system', '2019-03-07 19:30:35', 'system', '2019-03-07 19:30:35', '0', '/system/2019-03-07/0a5ba3d380784c54a97b62a1a8d14c79.png', '/system/2019-03-07/5325bcecadf344ee80b0517df7705005.png');
INSERT INTO `sku` VALUES ('265262634398765056', '265262634268741632', '1233', '12334', '吹风机薰衣草', '', '1200', '1200', '231000', '23', '6', '0', '1', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-08/246d06611d0344b69a23399ad7d71075.png', '/system/2019-03-08/7d3a4a9ef9b24ead942b11069ac3c725.png', '/system/2019-03-08/47b35a1e8acb4cfbbd327dc68af4080f.png', '/system/2019-03-08/d1deab5b95f14f5d8cc0704fab39766b.png', '/system/2019-03-08/47f9256f31a3453e8700b24401e5b70d.png', '', 'system', '2019-03-08 10:06:52', 'system', '2019-03-08 10:09:48', '0', '/system/2019-03-08/afe01a41212f48ccb7119ff2d4c517d3.png', '/system/2019-03-08/dd91df195ace49d1ac9e35041880a6ee.png');
INSERT INTO `sku` VALUES ('265262634398765057', '265262634268741632', 'dsafasfga', 'sdfaf asdfa s', '吹风机', '', '1200', '0', '10000', '0', '9', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-08/246d06611d0344b69a23399ad7d71075.png', '/system/2019-03-08/7d3a4a9ef9b24ead942b11069ac3c725.png', '/system/2019-03-08/47b35a1e8acb4cfbbd327dc68af4080f.png', '/system/2019-03-08/d1deab5b95f14f5d8cc0704fab39766b.png', '/system/2019-03-08/47f9256f31a3453e8700b24401e5b70d.png', '', 'system', '2019-03-08 10:06:52', 'system', '2019-03-11 13:53:52', '0', '/system/2019-03-08/afe01a41212f48ccb7119ff2d4c517d3.png', '/system/2019-03-08/dd91df195ace49d1ac9e35041880a6ee.png');
INSERT INTO `sku` VALUES ('265621407401517056', '265621407355379712', '', '', '卫生纸', '', '1200', '100', '1010', '0', '9', '0', '1', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/product/2019-03-09/ad117252808342d79d06df0fc852ac99.png', '/product/2019-03-09/23270661a6674e16aa1ea5d556c5002a.png', '/product/2019-03-09/ff10631ae6bf4f5393f963dfb86ed2b6.png', '/product/2019-03-09/5cef81fbb88b4d6baff5c4b75abd997c.png', '/product/2019-03-09/2fd0f7ba2d444a8d8fbbaa432253bedb.png', '', 'system', '2019-03-09 09:52:31', 'system', '2019-03-09 09:52:31', '0', '/product/2019-03-09/185fca830e6c4ac8b0a59cd2dc78bd85.png', '/product/2019-03-09/b25c91697fb147caa0b2c19661daa76a.png');
INSERT INTO `sku` VALUES ('265623260974604288', '265623260878135296', null, null, '鼠标', null, '1200', '0', '10000', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/product/2019-03-09/bd307a757c5a452eae6fdc4e4ce22e99.png', '/product/2019-03-09/7bf33adf5d294a328dd3968a25cb463a.png', '/product/2019-03-09/6f36d01cc13c4863a1c5c390cf15879d.png', '/product/2019-03-09/585c24c6c27f4fbeb3b7db315f96af50.png', '/product/2019-03-09/37482dbd305a490eb07ee651bbb8a867.png', null, 'system', '2019-03-09 09:59:52', 'system', '2019-03-09 09:59:52', '0', '/product/2019-03-09/d8bb5f53ede043cda21ae1e38b062a4b.png', '/product/2019-03-09/8727d1239fa44a51ae21bc2b84ad09d4.png');
INSERT INTO `sku` VALUES ('265682134991773696', '265682134899499008', '21331', '21123123', '水杯2', 'bb', '2110', '0', '55500', '0', '9', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/product/2019-03-09/894f9dcc00d14d76962fe53a2f38d861.png', '/product/2019-03-09/aefd120a8505464393482449656cc441.png', '/product/2019-03-09/190d857f435f47ff8c7b18faf8558cbf.png', '/product/2019-03-09/b1792c6d40f344cf820c53c8b7e287c7.png', '/product/2019-03-09/a073de25818749d8aabf735c9cbbfe3e.png', '', 'system', '2019-03-09 13:53:49', 'system', '2019-03-09 14:12:07', '0', '/product/2019-03-09/66a05776351d4f0199bfcef8f25a270b.png', '/product/2019-03-09/12e47700bd544870b6d4bc2312b391ce.png');
INSERT INTO `sku` VALUES ('265718493932089344', '265718493831426048', 'adasda', 'dasfafd', '大家吼', 'bbb', '0', '0', '0', '0', '9', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '', '', '', '', '', '', 'system', '2019-03-09 16:18:18', 'system', '2019-03-11 13:54:31', '0', '/product/2019-03-09/ec161ea8aa93457397d38adc7eb11fec.png', '/product/2019-03-09/38b0afc33abd4440a1d7f88504016e96.png');
INSERT INTO `sku` VALUES ('265746414484217856', '265746414366777344', 'adsfasd', 'dasfadsf', '红酒', 'aaa', '3200', '3000', '3000', '3000', '10', '0', '1', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/product/2019-03-09/7365301209754a5db8f7d2080df4292e.png', '/product/2019-03-09/ef698818e4b5457db13f034df8b1abf0.png', '/product/2019-03-09/61611e4463b14b6e8239ab7f771a069e.png', '/product/2019-03-09/1d878b24d5a34e1e83739e817a116980.png', '/product/2019-03-09/e8d0d3b41e164c59a216a052eeeee6d0.png', '', 'system', '2019-03-09 18:09:15', 'system', '2019-03-11 13:56:09', '0', '/product/2019-03-09/14beeaf0310f435f9659c13349bcff62.png', '/product/2019-03-09/fc4d614606af4ac7b7d9d37c306ae95c.png');
INSERT INTO `sku` VALUES ('266337227617087488', '266337227495452672', '32rdsaf', 'dafdfasgad', '清风手纸', '', '0', '0', '0', '0', '10', '0', '1', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/product/2019-03-11/d11307b2edea475aad0db0f37f277abf.png', '/product/2019-03-11/d8e1f123979f418d85a60ac4254d111e.png', '/product/2019-03-11/503f90d421384b319892e88712e2ccb6.png', '/product/2019-03-11/d964b490b285457aba20d051c0e84d46.png', '/product/2019-03-11/a2b5631c94df4ef6a096961fc66c5237.png', '', 'system', '2019-03-11 09:16:55', 'system', '2019-03-11 09:27:00', '0', '/product/2019-03-11/f58f5cbe498f4f35ae456367afd6cef8.png', '/null/2019-03-11/6e63a1b8bdcf48dd8463c106ea18bae7.png');
INSERT INTO `sku` VALUES ('266337227617087489', '266337227495452672', 'adfdf', 'dfadsfzds', '清风手纸', '', '0', '0', '0', '0', '69', '0', '1', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/product/2019-03-11/d11307b2edea475aad0db0f37f277abf.png', '/product/2019-03-11/d8e1f123979f418d85a60ac4254d111e.png', '/product/2019-03-11/503f90d421384b319892e88712e2ccb6.png', '/product/2019-03-11/d964b490b285457aba20d051c0e84d46.png', '/product/2019-03-11/a2b5631c94df4ef6a096961fc66c5237.png', '', 'system', '2019-03-11 09:16:55', 'system', '2019-03-11 09:27:22', '0', '/product/2019-03-11/f58f5cbe498f4f35ae456367afd6cef8.png', '/null/2019-03-11/6e63a1b8bdcf48dd8463c106ea18bae7.png');
INSERT INTO `sku` VALUES ('266337227617087490', '266337227495452672', 'dsafadsgf', 'fdgadf', '清风手纸', '', '500', '5000', '1000', '0', '69', '0', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/product/2019-03-11/d11307b2edea475aad0db0f37f277abf.png', '/product/2019-03-11/d8e1f123979f418d85a60ac4254d111e.png', '/product/2019-03-11/503f90d421384b319892e88712e2ccb6.png', '/product/2019-03-11/d964b490b285457aba20d051c0e84d46.png', '/product/2019-03-11/a2b5631c94df4ef6a096961fc66c5237.png', '', 'system', '2019-03-11 09:16:55', 'system', '2019-03-11 17:18:20', '0', '/product/2019-03-11/f58f5cbe498f4f35ae456367afd6cef8.png', '/null/2019-03-11/6e63a1b8bdcf48dd8463c106ea18bae7.png');
INSERT INTO `sku` VALUES ('266428063235977216', '266428063097565184', null, null, '大虎辣椒', null, '0', '0', '0', '0', '69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '', '', '', '', '', null, 'system', '2019-03-11 15:17:52', 'system', '2019-03-11 15:17:52', '0', '', '');
INSERT INTO `sku` VALUES ('266433996018397184', '266433995921928192', 'asfe3', 'dsaf43', '洗发露', '', '2000', '6000', '5000', '3000', '10', '0', '1', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '', '', '', '', '', '', 'system', '2019-03-11 15:41:27', 'system', '2019-03-11 17:17:36', '0', '/product/2019-03-11/299183291f784fa89206aaefbdd9c5ac.png', '');
INSERT INTO `sku` VALUES ('1102816052503556096', '1102816051601780736', '', '', '', '', '1200', '1002', '10200', '0', '10', '0', '1', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'system', '2019-03-05 14:20:11', 'system', '2019-03-05 14:20:11', '0', null, null);
INSERT INTO `sku` VALUES ('1102839393716764672', '1102839393343471616', '', '', '', '', '1200', '10100', '320', '0', '50', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'system', '2019-03-05 15:52:56', 'system', '2019-03-05 15:52:56', '0', null, null);
INSERT INTO `sku` VALUES ('1103115997505658880', '1103115985262485504', '12', '12', '撒地方', '', '1200', '0', '10000', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-06/4dd256ae5cf04e0180d9e6f7465b4392.png', '/system/2019-03-06/f7fc1849d6ce4533a375b4b04783e49d.png', '/system/2019-03-06/d42219231d414b3cb40d775228357db6.png', '/system/2019-03-06/c548ab246fa04d979f1f8a1a55a351a1.png', '/system/2019-03-06/0106ddd8afd94035ad505ac7991f1490.png', '', 'system', '2019-03-06 10:12:03', 'system', '2019-03-11 11:25:29', '0', '/system/2019-03-06/620a5c8d726445999006a67172b924af.png', '/system/2019-03-06/42879d96ff6f40fa81b2fb3f0d4358ba.png');
INSERT INTO `sku` VALUES ('1103116401865924608', '1103116401748484096', null, null, null, '', '1200', '0', '10000', '0', '50', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '/system/2019-03-06/82812e7ec08a41b88fd5bf3bb27b5771.png', '/system/2019-03-06/fca38c0cb5454514aac6d06bf6e575a5.png', '/system/2019-03-06/f6cf9a7d8284445f8ae51d43d01bf223.png', '/system/2019-03-06/c8281f4406af4157be1e492add41cf44.png', '/system/2019-03-06/e5d27aab29bd41cca1c923c242f2cef7.png', null, 'system', '2019-03-06 10:13:40', 'system', '2019-03-06 18:55:45', '0', '/system/2019-03-06/631fded417234189b552926ae4c03be4.png', '/system/2019-03-06/7769cbfaa48045cab5eed42d1adb4f0d.png');
INSERT INTO `sku` VALUES ('1103116401865924609', '1103116401748484096', null, null, null, '', '1200', '0', '10000', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '/system/2019-03-06/82812e7ec08a41b88fd5bf3bb27b5771.png', '/system/2019-03-06/fca38c0cb5454514aac6d06bf6e575a5.png', '/system/2019-03-06/f6cf9a7d8284445f8ae51d43d01bf223.png', '/system/2019-03-06/c8281f4406af4157be1e492add41cf44.png', '/system/2019-03-06/e5d27aab29bd41cca1c923c242f2cef7.png', null, 'system', '2019-03-06 10:13:40', 'system', '2019-03-08 14:01:07', '0', '/system/2019-03-06/631fded417234189b552926ae4c03be4.png', '/system/2019-03-06/7769cbfaa48045cab5eed42d1adb4f0d.png');

-- ----------------------------
-- Table structure for sku_property
-- ----------------------------
DROP TABLE IF EXISTS `sku_property`;
CREATE TABLE `sku_property` (
  `id` bigint(18) NOT NULL,
  `property_name` varchar(255) NOT NULL COMMENT '属性名',
  `category_id` bigint(18) NOT NULL COMMENT '分类id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态，0未删除，1已删除',
  `remarks` varchar(4000) DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 属性名';

-- ----------------------------
-- Records of sku_property
-- ----------------------------
INSERT INTO `sku_property` VALUES ('265623981079072768', '测试属性1', '265624842924658688', '0', '', 'system', '2019-03-09 10:02:44', 'system', '2019-03-09 10:06:17');
INSERT INTO `sku_property` VALUES ('265630305710825472', '尺寸2', '265632830409203712', '0', '', 'system', '2019-03-09 10:27:52', 'system', '2019-03-09 10:38:15');
INSERT INTO `sku_property` VALUES ('265687153836703744', '2', '265632830409203712', '0', '', 'system', '2019-03-09 14:13:46', 'system', '2019-03-09 14:13:46');
INSERT INTO `sku_property` VALUES ('1099156752181547008', '颜色', '1099129163592736768', '1', '111', 'system', '2019-02-23 11:59:26', 'system', '2019-03-01 09:28:34');
INSERT INTO `sku_property` VALUES ('1099918150756913152', '尺寸', '1099905075680411648', '0', '', 'system', '2019-02-25 14:24:57', 'system', '2019-02-25 14:24:57');
INSERT INTO `sku_property` VALUES ('1099919695816871936', '颜色', '1099905075680411648', '0', '123', 'system', '2019-02-25 14:31:06', 'system', '2019-03-09 10:00:39');
INSERT INTO `sku_property` VALUES ('1101399849826242560', '大小', '1101399589603233792', '0', '', 'system', '2019-03-01 16:32:42', 'system', '2019-03-01 16:32:42');
INSERT INTO `sku_property` VALUES ('1101665415430705152', '屏幕', '1099905075680411648', '0', '', 'system', '2019-03-02 10:07:58', 'system', '2019-03-02 10:07:58');
INSERT INTO `sku_property` VALUES ('1101756128577511424', '香味', '1101399651691515904', '0', '', 'system', '2019-03-02 16:08:25', 'system', '2019-03-02 16:08:25');
INSERT INTO `sku_property` VALUES ('1101756264699453440', '重量', '1101399651691515904', '0', '', 'system', '2019-03-02 16:08:58', 'system', '2019-03-02 16:08:58');
INSERT INTO `sku_property` VALUES ('1101756375781400576', '包装方式', '1101399651691515904', '0', '', 'system', '2019-03-02 16:09:24', 'system', '2019-03-02 16:09:24');
INSERT INTO `sku_property` VALUES ('1103107726320775168', '重量', '1103107491473305600', '0', '', 'system', '2019-03-06 09:39:11', 'system', '2019-03-06 09:39:11');

-- ----------------------------
-- Table structure for sku_property_con
-- ----------------------------
DROP TABLE IF EXISTS `sku_property_con`;
CREATE TABLE `sku_property_con` (
  `sku_id` bigint(18) NOT NULL,
  `property_id` bigint(18) NOT NULL COMMENT '属性名表id',
  `property_value_id` bigint(18) NOT NULL COMMENT '属性值表id',
  `product_id` bigint(18) NOT NULL COMMENT '产品id',
  KEY `index_skuId` (`sku_id`),
  KEY `index_propertyId` (`property_id`),
  KEY `index_propertyValueId` (`property_value_id`),
  KEY `index_productId` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 产品、SKU和属性的关联表';

-- ----------------------------
-- Records of sku_property_con
-- ----------------------------
INSERT INTO `sku_property_con` VALUES ('1101746532624441344', '1099918150756913152', '1099918150870159360', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101746532624441344', '1099919695816871936', '1099919696185970688', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101746532628635648', '1099918150756913152', '1099918150870159360', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101746532628635648', '1099919695816871936', '1099919696072724480', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101746532624441345', '1099918150756913152', '1099918150824022016', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101746532624441345', '1099919695816871936', '1099919696185970688', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101746532624441346', '1099918150756913152', '1099918150824022016', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101746532624441346', '1099919695816871936', '1099919696072724480', '1101746532280508416');
INSERT INTO `sku_property_con` VALUES ('1101757067803811840', '1101756375781400576', '1101756375831732224', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811840', '1101756264699453440', '1101756264779145216', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811840', '1101756128577511424', '1101756128632037376', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006144', '1101756375781400576', '1101756375831732224', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006144', '1101756264699453440', '1101756264779145216', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006144', '1101756128577511424', '1101756128913055744', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811841', '1101756375781400576', '1101756375831732224', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811841', '1101756264699453440', '1101756264779145216', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811841', '1101756128577511424', '1101756128971776000', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006145', '1101756375781400576', '1101756375831732224', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006145', '1101756264699453440', '1101756264871419904', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006145', '1101756128577511424', '1101756128632037376', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811842', '1101756375781400576', '1101756375831732224', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811842', '1101756264699453440', '1101756264871419904', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811842', '1101756128577511424', '1101756128913055744', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006146', '1101756375781400576', '1101756375831732224', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006146', '1101756264699453440', '1101756264871419904', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006146', '1101756128577511424', '1101756128971776000', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811843', '1101756375781400576', '1101756375907229696', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811843', '1101756264699453440', '1101756264779145216', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811843', '1101756128577511424', '1101756128632037376', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006147', '1101756375781400576', '1101756375907229696', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006147', '1101756264699453440', '1101756264779145216', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006147', '1101756128577511424', '1101756128913055744', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811844', '1101756375781400576', '1101756375907229696', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811844', '1101756264699453440', '1101756264779145216', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811844', '1101756128577511424', '1101756128971776000', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006148', '1101756375781400576', '1101756375907229696', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006148', '1101756264699453440', '1101756264871419904', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006148', '1101756128577511424', '1101756128632037376', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811845', '1101756375781400576', '1101756375907229696', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811845', '1101756264699453440', '1101756264871419904', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067803811845', '1101756128577511424', '1101756128913055744', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006149', '1101756375781400576', '1101756375907229696', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006149', '1101756264699453440', '1101756264871419904', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101757067808006149', '1101756128577511424', '1101756128971776000', '1101757067531182080');
INSERT INTO `sku_property_con` VALUES ('1101770001753083904', '1101665415430705152', '1101665415476842496', '1101769983755325440');
INSERT INTO `sku_property_con` VALUES ('1101770001753083904', '1099919695816871936', '1099919695959478272', '1101769983755325440');
INSERT INTO `sku_property_con` VALUES ('1101770001753083905', '1101665415430705152', '1101665415476842496', '1101769983755325440');
INSERT INTO `sku_property_con` VALUES ('1101770001753083905', '1099919695816871936', '1099919696072724480', '1101769983755325440');
INSERT INTO `sku_property_con` VALUES ('1101774728979173376', '1101665415430705152', '1101665415527174144', '1101774728610074624');
INSERT INTO `sku_property_con` VALUES ('1101774728979173376', '1099919695816871936', '1099919695959478272', '1101774728610074624');
INSERT INTO `sku_property_con` VALUES ('1101774728979173377', '1101665415430705152', '1101665415476842496', '1101774728610074624');
INSERT INTO `sku_property_con` VALUES ('1101774728979173377', '1099919695816871936', '1099919695959478272', '1101774728610074624');
INSERT INTO `sku_property_con` VALUES ('1101779136121823232', '1101665415430705152', '1101665415476842496', '1101779135786278912');
INSERT INTO `sku_property_con` VALUES ('1101779136121823232', '1099919695816871936', '1099919695959478272', '1101779135786278912');
INSERT INTO `sku_property_con` VALUES ('1103113667460509696', '1101756264699453440', '1101756264779145216', '1103113667343069184');
INSERT INTO `sku_property_con` VALUES ('1103115298629529600', '1101756128577511424', '1101756128913055744', '1103115165800116224');
INSERT INTO `sku_property_con` VALUES ('1103115997505658880', '1101756264699453440', '1101756264779145216', '1103115985262485504');
INSERT INTO `sku_property_con` VALUES ('1103116401865924608', '1101756128577511424', '1101756128632037376', '1103116401748484096');
INSERT INTO `sku_property_con` VALUES ('1103116401865924608', '1101756264699453440', '1101756264779145216', '1103116401748484096');
INSERT INTO `sku_property_con` VALUES ('1103116401865924609', '1101756128577511424', '1101756128913055744', '1103116401748484096');
INSERT INTO `sku_property_con` VALUES ('1103116401865924609', '1101756264699453440', '1101756264779145216', '1103116401748484096');
INSERT INTO `sku_property_con` VALUES ('264558729087270912', '1101399849826242560', '1101399849868185600', '264558728948858880');
INSERT INTO `sku_property_con` VALUES ('264558729087270912', '1101756128577511424', '1101756128632037376', '264558728948858880');
INSERT INTO `sku_property_con` VALUES ('264982691209281536', '1101756128577511424', '1101756128632037376', '264982679070965760');
INSERT INTO `sku_property_con` VALUES ('265020796200222720', '1101756375781400576', '1101756375831732224', '265020796099559424');
INSERT INTO `sku_property_con` VALUES ('265020796200222720', '1101756128577511424', '1101756128632037376', '265020796099559424');
INSERT INTO `sku_property_con` VALUES ('265020796200222720', '1101756264699453440', '1101756264779145216', '265020796099559424');
INSERT INTO `sku_property_con` VALUES ('265021454290714625', '1101399849826242560', '1101399849868185600', '265021454164885504');
INSERT INTO `sku_property_con` VALUES ('265021454290714625', '1101756375781400576', '1101756375907229696', '265021454164885504');
INSERT INTO `sku_property_con` VALUES ('265021864904687616', '1101399849826242560', '1101399849868185600', '265021864808218624');
INSERT INTO `sku_property_con` VALUES ('265021864904687617', '1101399849826242560', '1101399849960460288', '265021864808218624');
INSERT INTO `sku_property_con` VALUES ('265021864904687618', '1101399849826242560', '1101399849914322944', '265021864808218624');
INSERT INTO `sku_property_con` VALUES ('265021864904687619', '1101399849826242560', '1101399849868185600', '265021864808218624');
INSERT INTO `sku_property_con` VALUES ('265022973861888000', '1101665415430705152', '1101665415476842496', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265022973861888000', '1099918150756913152', '1099918150824022016', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265022973866082304', '1101665415430705152', '1101665415476842496', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265022973866082304', '1099918150756913152', '1099918150870159360', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265022973861888001', '1101665415430705152', '1101665415527174144', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265022973861888001', '1099918150756913152', '1099918150824022016', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265022973866082305', '1101665415430705152', '1101665415527174144', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265022973866082305', '1099918150756913152', '1099918150870159360', '265022973727670272');
INSERT INTO `sku_property_con` VALUES ('265262634398765056', '1101756375781400576', '1101756375907229696', '265262634268741632');
INSERT INTO `sku_property_con` VALUES ('265262634398765056', '1101756128577511424', '1101756128632037376', '265262634268741632');
INSERT INTO `sku_property_con` VALUES ('265262634398765057', '1101756375781400576', '1101756375907229696', '265262634268741632');
INSERT INTO `sku_property_con` VALUES ('265262634398765057', '1101756128577511424', '1101756128913055744', '265262634268741632');
INSERT INTO `sku_property_con` VALUES ('265623260974604288', '1099918150756913152', '1099918150824022016', '265623260878135296');
INSERT INTO `sku_property_con` VALUES ('265623260974604288', '1099919695816871936', '1099919695959478272', '265623260878135296');
INSERT INTO `sku_property_con` VALUES ('265682134991773696', '265623981079072768', '265623981100044288', '265682134899499008');
INSERT INTO `sku_property_con` VALUES ('265718493932089344', '265630305710825472', '265630305748574208', '265718493831426048');
INSERT INTO `sku_property_con` VALUES ('265746414484217856', '265630305710825472', '265630305748574208', '265746414366777344');
INSERT INTO `sku_property_con` VALUES ('266337227617087488', '1101399849826242560', '1101399849868185600', '266337227495452672');
INSERT INTO `sku_property_con` VALUES ('266337227617087489', '1101399849826242560', '1101399849914322944', '266337227495452672');
INSERT INTO `sku_property_con` VALUES ('266337227617087490', '1101399849826242560', '1101399849960460288', '266337227495452672');
INSERT INTO `sku_property_con` VALUES ('266428063235977216', '265623981079072768', '265623981100044288', '266428063097565184');
INSERT INTO `sku_property_con` VALUES ('266433996018397184', '1101399849826242560', '1101399849868185600', '266433995921928192');

-- ----------------------------
-- Table structure for sku_property_value
-- ----------------------------
DROP TABLE IF EXISTS `sku_property_value`;
CREATE TABLE `sku_property_value` (
  `id` bigint(18) NOT NULL,
  `property_id` bigint(18) NOT NULL COMMENT '属性名的id',
  `property_value` varchar(255) DEFAULT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_propertyId` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='-- 属性值';

-- ----------------------------
-- Records of sku_property_value
-- ----------------------------
INSERT INTO `sku_property_value` VALUES ('265622558614425600', '1099919695816871936', '灰色');
INSERT INTO `sku_property_value` VALUES ('265623456421974016', '1099919695816871936', '蓝色');
INSERT INTO `sku_property_value` VALUES ('265623981100044288', '265623981079072768', '1');
INSERT INTO `sku_property_value` VALUES ('265630305748574208', '265630305710825472', '2cm');
INSERT INTO `sku_property_value` VALUES ('265687153870258176', '265687153836703744', '1');
INSERT INTO `sku_property_value` VALUES ('1099181171780694016', '1099156752181547008', '蓝色');
INSERT INTO `sku_property_value` VALUES ('1099181172023963648', '1099156752181547008', '白色');
INSERT INTO `sku_property_value` VALUES ('1099181172061712384', '1099156752181547008', '黄色');
INSERT INTO `sku_property_value` VALUES ('1099918150824022016', '1099918150756913152', '30寸');
INSERT INTO `sku_property_value` VALUES ('1099918150870159360', '1099918150756913152', '50寸');
INSERT INTO `sku_property_value` VALUES ('1099919695959478272', '1099919695816871936', '黑色');
INSERT INTO `sku_property_value` VALUES ('1099919696072724480', '1099919695816871936', '白色');
INSERT INTO `sku_property_value` VALUES ('1099919696185970688', '1099919695816871936', '黄色');
INSERT INTO `sku_property_value` VALUES ('1101399849868185600', '1101399849826242560', '20');
INSERT INTO `sku_property_value` VALUES ('1101399849914322944', '1101399849826242560', '10');
INSERT INTO `sku_property_value` VALUES ('1101399849960460288', '1101399849826242560', '30');
INSERT INTO `sku_property_value` VALUES ('1101665415476842496', '1101665415430705152', '可触摸');
INSERT INTO `sku_property_value` VALUES ('1101665415527174144', '1101665415430705152', '不可触摸');
INSERT INTO `sku_property_value` VALUES ('1101756128632037376', '1101756128577511424', '薰衣草');
INSERT INTO `sku_property_value` VALUES ('1101756128913055744', '1101756128577511424', '薄荷');
INSERT INTO `sku_property_value` VALUES ('1101756128971776000', '1101756128577511424', '皂香');
INSERT INTO `sku_property_value` VALUES ('1101756264779145216', '1101756264699453440', '200g');
INSERT INTO `sku_property_value` VALUES ('1101756264825282560', '1101756264699453440', '300g');
INSERT INTO `sku_property_value` VALUES ('1101756264871419904', '1101756264699453440', '500g');
INSERT INTO `sku_property_value` VALUES ('1101756375831732224', '1101756375781400576', '袋装');
INSERT INTO `sku_property_value` VALUES ('1101756375907229696', '1101756375781400576', '罐装');
INSERT INTO `sku_property_value` VALUES ('1103107726396272640', '1103107726320775168', '5kg');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` bigint(18) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(11) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(11) DEFAULT NULL COMMENT '最后修改人',
  `update_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除状态，0未删除，1已删除删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='供应商';

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('265625468664483840', '耐克', '', 'system', '2019-03-09 10:08:39', 'system', '2019-03-09 10:08:50', '1');
INSERT INTO `supplier` VALUES ('265650844884467712', '1231', '', 'system', '2019-03-09 11:49:29', 'system', '2019-03-09 11:49:33', '0');
INSERT INTO `supplier` VALUES ('266406745929904128', '321', '', 'system', '2019-03-11 13:53:10', 'system', '2019-03-11 13:53:20', '0');
INSERT INTO `supplier` VALUES ('266410867999600640', '啊', '', 'system', '2019-03-11 14:09:33', 'system', '2019-03-11 14:09:33', '0');
INSERT INTO `supplier` VALUES ('266411122170228736', '1232', '', 'system', '2019-03-11 14:10:33', 'system', '2019-03-11 14:45:26', '0');
INSERT INTO `supplier` VALUES ('1100925997734944768', '耐克', '鞋子', 'system', '2019-02-28 09:09:47', 'system', '2019-03-09 10:02:44', '1');
INSERT INTO `supplier` VALUES ('1101298623169265664', '阿迪', '阿迪达斯', 'system', '2019-03-01 09:50:28', 'system', '2019-03-01 09:50:28', '0');
