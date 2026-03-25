/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
.
 .*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '电商对应城市表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '北京');
INSERT INTO `city` VALUES (2, '上海');
INSERT INTO `city` VALUES (3, '广州');

-- ----------------------------
-- Table structure for city_data
-- ----------------------------
DROP TABLE IF EXISTS `city_data`;
CREATE TABLE `city_data`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int NULL DEFAULT NULL COMMENT '城市id',
  `lirui` double NULL DEFAULT NULL COMMENT '利润',
  `dingdan` int NULL DEFAULT NULL COMMENT '订单数',
  `kehu` int NULL DEFAULT NULL COMMENT '客户数',
  `chanpinzhonglei` double NULL DEFAULT NULL COMMENT '产品种类',
  `guanggaohuafe` double NULL DEFAULT NULL COMMENT '广告花费',
  `yunshufeiyong` double NULL DEFAULT NULL COMMENT '运输费用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市对应数据统计表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of city_data
-- ----------------------------
INSERT INTO `city_data` VALUES (1, 1, 55, 9, 56, 0.46, 18, 6);
INSERT INTO `city_data` VALUES (2, 1, 25, 11, 21, 0.65, 34, 9);
INSERT INTO `city_data` VALUES (3, 1, 56, 7, 63, 0.3, 14, 5);
INSERT INTO `city_data` VALUES (4, 1, 33, 7, 29, 0.33, 16, 6);
INSERT INTO `city_data` VALUES (5, 1, 42, 24, 44, 0.76, 40, 16);
INSERT INTO `city_data` VALUES (6, 1, 82, 58, 90, 1.77, 68, 33);
INSERT INTO `city_data` VALUES (7, 1, 74, 49, 77, 1.46, 48, 27);
INSERT INTO `city_data` VALUES (8, 1, 78, 55, 80, 1.29, 59, 29);
INSERT INTO `city_data` VALUES (9, 1, 267, 216, 280, 4.8, 108, 64);
INSERT INTO `city_data` VALUES (10, 1, 185, 127, 216, 2.52, 61, 27);
INSERT INTO `city_data` VALUES (11, 1, 39, 19, 38, 0.57, 31, 15);
INSERT INTO `city_data` VALUES (12, 1, 41, 11, 40, 0.43, 21, 7);
INSERT INTO `city_data` VALUES (13, 1, 64, 38, 74, 1.04, 46, 22);
INSERT INTO `city_data` VALUES (14, 1, 108, 79, 120, 1.7, 75, 41);
INSERT INTO `city_data` VALUES (15, 1, 108, 63, 116, 1.48, 44, 26);
INSERT INTO `city_data` VALUES (16, 1, 33, 6, 29, 0.34, 13, 5);
INSERT INTO `city_data` VALUES (17, 1, 94, 66, 110, 1.54, 62, 31);
INSERT INTO `city_data` VALUES (18, 1, 186, 142, 192, 3.88, 93, 79);
INSERT INTO `city_data` VALUES (19, 1, 57, 31, 54, 0.96, 32, 14);
INSERT INTO `city_data` VALUES (20, 1, 22, 8, 17, 0.48, 23, 10);
INSERT INTO `city_data` VALUES (21, 2, 26, 37, 27, 1.163, 27, 13);
INSERT INTO `city_data` VALUES (22, 2, 85, 62, 71, 1.195, 60, 8);
INSERT INTO `city_data` VALUES (23, 2, 78, 38, 74, 1.363, 37, 7);
INSERT INTO `city_data` VALUES (24, 2, 21, 21, 36, 0.634, 40, 9);
INSERT INTO `city_data` VALUES (25, 2, 41, 42, 46, 0.915, 81, 13);
INSERT INTO `city_data` VALUES (26, 2, 56, 52, 69, 1.067, 92, 16);
INSERT INTO `city_data` VALUES (27, 2, 64, 30, 28, 0.924, 51, 2);
INSERT INTO `city_data` VALUES (28, 2, 55, 48, 74, 1.236, 75, 26);
INSERT INTO `city_data` VALUES (29, 3, 91, 45, 125, 0.82, 34, 23);
INSERT INTO `city_data` VALUES (30, 3, 65, 27, 78, 0.86, 45, 29);
INSERT INTO `city_data` VALUES (31, 3, 83, 60, 84, 1.09, 73, 27);
INSERT INTO `city_data` VALUES (32, 3, 109, 81, 121, 1.28, 68, 51);
INSERT INTO `city_data` VALUES (33, 3, 106, 77, 114, 1.07, 55, 51);
INSERT INTO `city_data` VALUES (34, 3, 109, 81, 121, 1.28, 68, 51);
INSERT INTO `city_data` VALUES (35, 3, 106, 77, 114, 1.07, 55, 51);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司名称',
  `star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '星级',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '颜色',
  `way` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '运输方式',
  `business` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物流公司' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, NULL, '5☆', '国际运输', '#007BFF', '空运', '国际货运航空');
INSERT INTO `company` VALUES (2, NULL, '5☆', '国际运输', '#007BFF', '空运', '空中货运物流');
INSERT INTO `company` VALUES (3, NULL, '4☆', '国际运输', '#007BFF', '空运', '货物快递');
INSERT INTO `company` VALUES (4, NULL, '3☆', '国际运输', '#007BFF', '空运', '普货空运');
INSERT INTO `company` VALUES (5, NULL, '5☆', '国际运输', '#007BFF', '海运', '跨境海运专线');
INSERT INTO `company` VALUES (6, NULL, '4☆', '国际运输', '#007BFF', '海运', '国际海运物流');
INSERT INTO `company` VALUES (7, NULL, '3☆', '国际运输', '#007BFF', '海运', '杂货海运');
INSERT INTO `company` VALUES (8, NULL, '5☆', '国际运输', '#007BFF', '陆运', '跨境电商物流陆运');
INSERT INTO `company` VALUES (9, NULL, '4☆', '国际运输', '#007BFF', '陆运', '欧盟卡车运输');
INSERT INTO `company` VALUES (10, NULL, '3☆', '国际运输', '#007BFF', '陆运', '铁路运输');
INSERT INTO `company` VALUES (11, NULL, '5☆', '仓储服务', '#0056B3', '国内仓储', '全自动仓储系统');
INSERT INTO `company` VALUES (12, NULL, '4☆', '仓储服务', '#0056B3', '国内仓储', '全国仓储配送');
INSERT INTO `company` VALUES (13, NULL, '3☆', '仓储服务', '#0056B3', '国内仓储', '小型仓储');
INSERT INTO `company` VALUES (14, NULL, '5☆', '仓储服务', '#0056B3', '海外仓储', '全球分布式仓库');
INSERT INTO `company` VALUES (15, NULL, '4☆', '仓储服务', '#0056B3', '海外仓储', '跨境仓储服务');
INSERT INTO `company` VALUES (16, NULL, '3☆', '仓储服务', '#0056B3', '海外仓储', '香港仓储');
INSERT INTO `company` VALUES (17, NULL, '5☆', '仓储服务', '#0056B3', '订单管理', '全自动订单处理系统');
INSERT INTO `company` VALUES (18, NULL, '4☆', '仓储服务', '#0056B3', '订单管理', '订单追踪系统');
INSERT INTO `company` VALUES (19, NULL, '3☆', '仓储服务', '#0056B3', '订单管理', '订单人工管理');
INSERT INTO `company` VALUES (20, NULL, '5☆', '配送服务', '#003366', '国内配送', '国内快递');
INSERT INTO `company` VALUES (21, NULL, '4☆', '配送服务', '#003366', '国内配送', '标准快递配送');
INSERT INTO `company` VALUES (22, NULL, '3☆', '配送服务', '#003366', '国内配送', '普通快递');
INSERT INTO `company` VALUES (23, NULL, '5☆', '配送服务', '#003366', '国际配送', '全球配送网络');
INSERT INTO `company` VALUES (24, NULL, '4☆', '配送服务', '#003366', '国际配送', '跨国配送');
INSERT INTO `company` VALUES (25, NULL, '3☆', '配送服务', '#003366', '国际配送', '标准国际配送');
INSERT INTO `company` VALUES (26, NULL, '4☆', '国际运输', '#007BFF', '空运', '空运速递服务');
INSERT INTO `company` VALUES (27, NULL, '4☆', '国际运输', '#007BFF', '海运', '集装箱海运');
INSERT INTO `company` VALUES (28, NULL, '4☆', '国际运输', '#007BFF', '陆运', '中国到东南亚陆运');
INSERT INTO `company` VALUES (29, NULL, '4☆', '仓储服务', '#0056B3', '国内仓储', '仓库管理系统');
INSERT INTO `company` VALUES (30, NULL, '4☆', '仓储服务', '#0056B3', '海外仓储', '欧美仓库管理');
INSERT INTO `company` VALUES (31, NULL, '4☆', '仓储服务', '#0056B3', '订单管理', '智能库存管理');
INSERT INTO `company` VALUES (32, NULL, '5☆', '配送服务', '#003366', '国内配送', '次日达配送');
INSERT INTO `company` VALUES (33, NULL, '4☆', '配送服务', '#003366', '国内配送', '地方配送服务');
INSERT INTO `company` VALUES (34, NULL, '4☆', '配送服务', '#003366', '国际配送', '海外直邮');

-- ----------------------------
-- Table structure for company_type
-- ----------------------------
DROP TABLE IF EXISTS `company_type`;
CREATE TABLE `company_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '星级',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '颜色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物流公司类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company_type
-- ----------------------------
INSERT INTO `company_type` VALUES (1, '5☆', '国际运输', '#007BFF');
INSERT INTO `company_type` VALUES (2, '5☆', '仓储服务', '#007BFF');
INSERT INTO `company_type` VALUES (3, '4☆', '配送服务', '#007BFF');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `form_col_num` int NULL DEFAULT 1 COMMENT '表单布局（单列 双列 三列）',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'logistics', '物流状态分布', NULL, NULL, 'Logistics', 'crud', 'com.ruoyi.system', 'system', 'logistics', '物流状态分布', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-14 10:10:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (2, 'logistics_quantity', '全球主要国家物流数量', NULL, NULL, 'LogisticsQuantity', 'crud', 'com.ruoyi.system', 'system', 'quantity', '全球主要国家物流数量', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-14 11:00:47', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (3, 'company', '物流公司', NULL, NULL, 'Company', 'crud', 'com.ruoyi.system', 'system', 'company', '物流公司', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-14 11:01:08', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (4, 'company_type', '物流公司类型', NULL, NULL, 'CompanyType', 'crud', 'com.ruoyi.system', 'system', 'type', '物流公司类型', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-14 12:03:04', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 'city_data', '城市对应数据统计表', NULL, NULL, 'CityData', 'crud', 'com.ruoyi.system', 'system', 'data', '城市对应数据统计', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-14 15:09:37', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (6, 'city', '电商对应城市表', NULL, NULL, 'City', 'crud', 'com.ruoyi.system', 'system', 'city', '电商对应城市', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-14 15:12:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'logistics_profit', '跨境电商利润数据', NULL, NULL, 'LogisticsProfit', 'crud', 'com.ruoyi.system', 'system', 'profit', '跨境电商利润数据', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-14 16:49:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (8, 'warehouses', '仓库表', NULL, NULL, 'Warehouses', 'crud', 'com.ruoyi.ech', 'ech', 'warehouses', '仓库', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-03-26 19:47:48', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-14 10:10:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (2, 1, 'status', '物流状态', 'varchar(255)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 2, 'admin', '2025-03-14 10:10:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (3, 1, 'num', '数量', 'int', 'Long', 'num', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-14 10:10:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (4, 1, 'percentage', '百分比', 'varchar(255)', 'String', 'percentage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-03-14 10:10:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (5, 2, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-14 11:00:47', '', NULL);
INSERT INTO `gen_table_column` VALUES (6, 2, 'country', '国家', 'varchar(255)', 'String', 'country', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-14 11:00:47', '', NULL);
INSERT INTO `gen_table_column` VALUES (7, 2, 'count', '物流数量', 'int', 'Long', 'count', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-14 11:00:47', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, 3, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-14 11:01:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, 3, 'name', '公司名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-14 11:01:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, 3, 'star', '星级', 'varchar(255)', 'String', 'star', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-14 11:01:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (11, 3, 'type', '类型', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2025-03-14 11:01:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (12, 3, 'color', '颜色', 'varchar(255)', 'String', 'color', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-03-14 11:01:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (13, 3, 'way', '运输方式', 'varchar(255)', 'String', 'way', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-14 11:01:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (14, 3, 'business', '服务', 'varchar(255)', 'String', 'business', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-03-14 11:01:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (15, 4, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-14 12:03:04', '', NULL);
INSERT INTO `gen_table_column` VALUES (16, 4, 'star', '星级', 'varchar(255)', 'String', 'star', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-14 12:03:04', '', NULL);
INSERT INTO `gen_table_column` VALUES (17, 4, 'type', '类型', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2025-03-14 12:03:04', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, 4, 'color', '颜色', 'varchar(255)', 'String', 'color', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-03-14 12:03:04', '', NULL);
INSERT INTO `gen_table_column` VALUES (19, 5, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (20, 5, 'city_id', '城市id', 'int', 'Long', 'cityId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (21, 5, 'lirui', '利润', 'double', 'Long', 'lirui', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (22, 5, 'dingdan', '订单数', 'int', 'Long', 'dingdan', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, 5, 'kehu', '客户数', 'int', 'Long', 'kehu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, 5, 'chanpinzhonglei', '产品种类', 'double', 'Long', 'chanpinzhonglei', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, 5, 'guanggaohuafe', '广告花费', 'double', 'Long', 'guanggaohuafe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, 5, 'yunshufeiyong', '运输费用', 'double', 'Long', 'yunshufeiyong', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2025-03-14 15:09:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, 6, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-14 15:12:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, 6, 'city', NULL, 'varchar(255)', 'String', 'city', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-14 15:12:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, 7, 'id', NULL, 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-14 16:49:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, 7, 'profit', '利润', 'double(10,2)', 'BigDecimal', 'profit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-14 16:49:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, 7, 'sales', '销售额', 'double(10,2)', 'BigDecimal', 'sales', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-14 16:49:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, 7, 'add_date', '日期', 'date', 'Date', 'addDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2025-03-14 16:49:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, 8, 'warehouse_id', '仓库唯一编号', 'varchar(20)', 'String', 'warehouseId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-26 19:47:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, 8, 'warehouse_name', '仓库名称', 'varchar(100)', 'String', 'warehouseName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, 8, 'location', '仓库所在位置', 'text', 'String', 'location', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, 8, 'warehouse_type', '仓库类型，如普通、冷藏等', 'varchar(50)', 'String', 'warehouseType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, 8, 'total_area', '仓库总面积（平方米）', 'decimal(10,2)', 'BigDecimal', 'totalArea', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, 8, 'available_area', '仓库可用面积（平方米）', 'decimal(10,2)', 'BigDecimal', 'availableArea', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, 8, 'shelf_count', '仓库内货架数量', 'int', 'Long', 'shelfCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, 8, 'storage_location_count', '仓库内货位数量', 'int', 'Long', 'storageLocationCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, 8, 'forklift_count', '仓库内叉车数量', 'int', 'Long', 'forkliftCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, 8, 'pallet_count', '仓库内托盘数量', 'int', 'Long', 'palletCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (43, 8, 'fire_extinguisher_count', '仓库内灭火器数量', 'int', 'Long', 'fireExtinguisherCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (44, 8, 'camera_count', '仓库内监控摄像头数量', 'int', 'Long', 'cameraCount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (45, 8, 'manager_name', '仓库管理员姓名', 'varchar(50)', 'String', 'managerName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (46, 8, 'manager_contact', '仓库管理员联系方式', 'varchar(20)', 'String', 'managerContact', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (47, 8, 'rent', '仓库月租金', 'decimal(10,2)', 'BigDecimal', 'rent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2025-03-26 19:47:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (48, 8, 'operation_cost', '仓库月运营成本', 'decimal(10,2)', 'BigDecimal', 'operationCost', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2025-03-26 19:47:49', '', NULL);

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流状态',
  `num` int NULL DEFAULT NULL COMMENT '数量',
  `percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物流状态分布' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES (1, '待处理', 300, '40');
INSERT INTO `logistics` VALUES (2, '处理中', 150, '20');
INSERT INTO `logistics` VALUES (3, '已完成', 200, '26.67');
INSERT INTO `logistics` VALUES (4, '已取消', 50, '6.67');
INSERT INTO `logistics` VALUES (5, '延迟', 50, '6.67');

-- ----------------------------
-- Table structure for logistics_profit
-- ----------------------------
DROP TABLE IF EXISTS `logistics_profit`;
CREATE TABLE `logistics_profit`  (
  `id` int NOT NULL,
  `profit` double(10, 2) NULL DEFAULT NULL COMMENT '利润',
  `sales` double(10, 2) NULL DEFAULT NULL COMMENT '销售额',
  `add_date` date NULL DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '跨境电商利润数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logistics_profit
-- ----------------------------
INSERT INTO `logistics_profit` VALUES (1, 4098.33, 68309.55, '2025-02-01');
INSERT INTO `logistics_profit` VALUES (2, 776.08, 42457.82, '2025-02-02');
INSERT INTO `logistics_profit` VALUES (3, 4414.97, 82216.80, '2025-02-03');
INSERT INTO `logistics_profit` VALUES (4, 4152.13, 31022.97, '2025-02-04');
INSERT INTO `logistics_profit` VALUES (5, 456.40, 39430.90, '2025-02-05');
INSERT INTO `logistics_profit` VALUES (6, 855.08, 54040.20, '2025-02-06');
INSERT INTO `logistics_profit` VALUES (7, 3221.13, 17950.79, '2025-02-07');
INSERT INTO `logistics_profit` VALUES (8, 3050.90, 11304.64, '2025-02-08');
INSERT INTO `logistics_profit` VALUES (9, 2933.43, 78326.90, '2025-02-09');
INSERT INTO `logistics_profit` VALUES (10, 1542.48, 2411.96, '2025-02-10');
INSERT INTO `logistics_profit` VALUES (11, 306.77, 43797.75, '2025-02-11');
INSERT INTO `logistics_profit` VALUES (12, 3484.52, 99799.29, '2025-02-12');
INSERT INTO `logistics_profit` VALUES (13, 554.92, 32414.93, '2025-02-13');
INSERT INTO `logistics_profit` VALUES (14, 1386.04, 53182.80, '2025-02-14');
INSERT INTO `logistics_profit` VALUES (15, 4970.25, 8450.45, '2025-02-15');
INSERT INTO `logistics_profit` VALUES (16, 2977.06, 48148.88, '2025-02-16');
INSERT INTO `logistics_profit` VALUES (17, 616.52, 81028.45, '2025-02-17');
INSERT INTO `logistics_profit` VALUES (18, 43.20, 40634.12, '2025-02-18');
INSERT INTO `logistics_profit` VALUES (19, 3668.92, 68212.40, '2025-02-19');
INSERT INTO `logistics_profit` VALUES (20, 3994.67, 16252.56, '2025-02-20');

-- ----------------------------
-- Table structure for logistics_quantity
-- ----------------------------
DROP TABLE IF EXISTS `logistics_quantity`;
CREATE TABLE `logistics_quantity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `count` int NULL DEFAULT NULL COMMENT '物流数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '全球主要国家物流数量' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logistics_quantity
-- ----------------------------
INSERT INTO `logistics_quantity` VALUES (1, '美国', 1178);
INSERT INTO `logistics_quantity` VALUES (2, '英国', 800);
INSERT INTO `logistics_quantity` VALUES (3, '德国', 600);
INSERT INTO `logistics_quantity` VALUES (4, '法国', 500);
INSERT INTO `logistics_quantity` VALUES (5, '日本', 400);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-03-14 10:05:49', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-03-14 10:05:49', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 10:09:37');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 11:00:30');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 11:30:33');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 15:08:23');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 16:49:09');
INSERT INTO `sys_logininfor` VALUES (105, NULL, '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-03-14 17:20:21');
INSERT INTO `sys_logininfor` VALUES (106, NULL, '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '* 必须填写', '2025-03-14 17:24:07');
INSERT INTO `sys_logininfor` VALUES (107, NULL, '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '* 必须填写', '2025-03-14 17:24:48');
INSERT INTO `sys_logininfor` VALUES (108, NULL, '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '* 必须填写', '2025-03-14 17:25:42');
INSERT INTO `sys_logininfor` VALUES (109, NULL, '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '* 必须填写', '2025-03-14 17:25:53');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:28:38');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-14 17:29:38');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:31:01');
INSERT INTO `sys_logininfor` VALUES (113, NULL, '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '* 必须填写', '2025-03-14 17:33:13');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-14 17:33:13');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:33:55');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-03-14 17:35:52');
INSERT INTO `sys_logininfor` VALUES (117, NULL, '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '* 必须填写', '2025-03-14 17:35:52');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:38:01');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误1次', '2025-03-14 17:38:28');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:38:46');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误1次', '2025-03-14 17:40:20');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:40:59');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:41:02');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:41:21');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误1次', '2025-03-14 17:42:03');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:42:12');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:42:56');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:43:19');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误1次', '2025-03-14 17:43:36');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误2次', '2025-03-14 17:43:37');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误3次', '2025-03-14 17:44:58');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:45:07');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:45:19');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:45:53');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 17:46:14');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误1次', '2025-03-14 18:42:29');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 18:42:34');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误1次', '2025-03-14 21:30:32');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 21:30:37');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 21:50:20');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 22:45:27');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-14 22:53:13');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-15 08:16:39');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-15 08:16:57');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-15 08:34:08');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-15 09:05:20');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-19 16:13:37');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误1次', '2025-03-19 16:20:33');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误2次', '2025-03-19 16:20:38');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '密码输入错误3次', '2025-03-19 16:20:40');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-19 16:20:42');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-26 15:50:40');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-26 18:51:05');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-26 19:41:41');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-26 19:47:25');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-26 19:59:10');
INSERT INTO `sys_logininfor` VALUES (157, '的', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-21 14:28:05');
INSERT INTO `sys_logininfor` VALUES (158, '332', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-21 14:28:14');
INSERT INTO `sys_logininfor` VALUES (159, '332', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-21 14:28:18');
INSERT INTO `sys_logininfor` VALUES (160, '1', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '1', '用户不存在/密码错误', '2025-11-22 10:48:35');
INSERT INTO `sys_logininfor` VALUES (161, '1', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '1', '用户不存在/密码错误', '2025-11-22 10:49:58');
INSERT INTO `sys_logininfor` VALUES (162, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 10:58:23');
INSERT INTO `sys_logininfor` VALUES (163, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 10:58:26');
INSERT INTO `sys_logininfor` VALUES (164, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 11:01:36');
INSERT INTO `sys_logininfor` VALUES (165, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 11:08:15');
INSERT INTO `sys_logininfor` VALUES (166, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 11:08:57');
INSERT INTO `sys_logininfor` VALUES (167, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 11:09:01');
INSERT INTO `sys_logininfor` VALUES (168, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 11:10:02');
INSERT INTO `sys_logininfor` VALUES (169, '1', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-11-22 11:10:57');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '密码输入错误1次', '2025-11-24 20:38:46');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '密码输入错误2次', '2025-11-24 20:38:50');
INSERT INTO `sys_logininfor` VALUES (172, 'test', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '密码输入错误1次', '2025-12-07 10:41:22');
INSERT INTO `sys_logininfor` VALUES (173, 'test', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '密码输入错误2次', '2025-12-07 10:41:38');
INSERT INTO `sys_logininfor` VALUES (174, 'test', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-12-07 10:42:31');
INSERT INTO `sys_logininfor` VALUES (175, 'test', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-12-07 10:42:32');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '用户不存在/密码错误', '2025-12-07 10:42:42');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2025-12-07 10:45:18');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-16 18:11:00');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-16 18:11:01');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-17 17:25:11');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '1', '密码输入错误1次', '2026-02-18 10:33:14');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-18 10:33:18');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-19 10:00:14');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-20 09:21:35');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-22 09:32:47');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2006 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2025-03-14 10:05:49', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2025-03-14 10:05:49', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2025-03-14 10:05:49', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '0', '1', '', 'fa fa-location-arrow', 'admin', '2025-03-14 10:05:49', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2025-03-14 10:05:49', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2025-03-14 10:05:49', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2025-03-14 10:05:49', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2025-03-14 10:05:49', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2025-03-14 10:05:49', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2025-03-14 10:05:49', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2025-03-14 10:05:49', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2025-03-14 10:05:49', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2025-03-14 10:05:49', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2025-03-14 10:05:49', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2025-03-14 10:05:49', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2025-03-14 10:05:49', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2025-03-14 10:05:49', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2025-03-14 10:05:49', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2025-03-14 10:05:49', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2025-03-14 10:05:49', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2025-03-14 10:05:49', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2025-03-14 10:05:49', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2025-03-14 10:05:49', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '仓库', 3, 1, '/ech/warehouses', '', 'C', '0', '1', 'ech:warehouses:view', '#', 'admin', '2025-03-26 19:49:05', '', NULL, '仓库菜单');
INSERT INTO `sys_menu` VALUES (2001, '仓库查询', 2000, 1, '#', '', 'F', '0', '1', 'ech:warehouses:list', '#', 'admin', '2025-03-26 19:49:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '仓库新增', 2000, 2, '#', '', 'F', '0', '1', 'ech:warehouses:add', '#', 'admin', '2025-03-26 19:49:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '仓库修改', 2000, 3, '#', '', 'F', '0', '1', 'ech:warehouses:edit', '#', 'admin', '2025-03-26 19:49:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '仓库删除', 2000, 4, '#', '', 'F', '0', '1', 'ech:warehouses:remove', '#', 'admin', '2025-03-26 19:49:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '仓库导出', 2000, 5, '#', '', 'F', '0', '1', 'ech:warehouses:export', '#', 'admin', '2025-03-26 19:49:05', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-03-14 10:05:49', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-03-14 10:05:49', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (3, '若依开源框架介绍', '1', 0x3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE9A1B9E79BAEE4BB8BE7BB8D3C2F7370616E3E3C2F703E3C703E3C666F6E7420636F6C6F723D2223333333333333223E52756F5969E5BC80E6BA90E9A1B9E79BAEE698AFE4B8BAE4BC81E4B89AE794A8E688B7E5AE9AE588B6E79A84E5908EE58FB0E8849AE6898BE69EB6E6A186E69EB6EFBC8CE4B8BAE4BC81E4B89AE68993E980A0E79A84E4B880E7AB99E5BC8FE8A7A3E586B3E696B9E6A188EFBC8CE9998DE4BD8EE4BC81E4B89AE5BC80E58F91E68890E69CACEFBC8CE68F90E58D87E5BC80E58F91E69588E78E87E38082E4B8BBE8A681E58C85E68BACE794A8E688B7E7AEA1E79086E38081E8A792E889B2E7AEA1E79086E38081E983A8E997A8E7AEA1E79086E38081E88F9CE58D95E7AEA1E79086E38081E58F82E695B0E7AEA1E79086E38081E5AD97E585B8E7AEA1E79086E380813C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE5B297E4BD8DE7AEA1E790863C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E5AE9AE697B6E4BBBBE58AA13C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE380813C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE69C8DE58AA1E79B91E68EA7E38081E799BBE5BD95E697A5E5BF97E38081E6938DE4BD9CE697A5E5BF97E38081E4BBA3E7A081E7949FE68890E7AD89E58A9FE883BDE38082E585B6E4B8ADEFBC8CE8BF98E694AFE68C81E5A49AE695B0E68DAEE6BA90E38081E695B0E68DAEE69D83E99990E38081E59BBDE99985E58C96E380815265646973E7BC93E5AD98E38081446F636B6572E983A8E7BDB2E38081E6BB91E58AA8E9AA8CE8AF81E7A081E38081E7ACACE4B889E696B9E8AEA4E8AF81E799BBE5BD95E38081E58886E5B883E5BC8FE4BA8BE58AA1E380813C2F7370616E3E3C666F6E7420636F6C6F723D2223333333333333223EE58886E5B883E5BC8FE69687E4BBB6E5AD98E582A83C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E58886E5BA93E58886E8A1A8E5A484E79086E7AD89E68A80E69CAFE789B9E782B9E380823C2F7370616E3E3C2F703E3C703E3C696D67207372633D2268747470733A2F2F666F727564612E67697465652E636F6D2F696D616765732F313730353033303538333937373430313635312F35656435646236615F313135313030342E706E6722207374796C653D2277696474683A20363470783B223E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE5AE98E7BD91E58F8AE6BC94E7A4BA3C2F7370616E3E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE5AE98E7BD91E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F72756F79692E7669703C2F613E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E3C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE69687E6A1A3E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F646F632E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F646F632E72756F79692E7669703C2F613E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E4B88DE58886E7A6BBE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F64656D6F2E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F64656D6F2E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E58886E7A6BBE78988E69CACE38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F7675652E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F7675652E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E5BEAEE69C8DE58AA1E78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F636C6F75642E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F636C6F75642E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E7A7BBE58AA8E7ABAFE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F68352E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F68352E72756F79692E7669703C2F613E3C2F703E3C703E3C6272207374796C653D22636F6C6F723A207267622834382C2034392C203531293B20666F6E742D66616D696C793A202671756F743B48656C766574696361204E6575652671756F743B2C2048656C7665746963612C20417269616C2C2073616E732D73657269663B20666F6E742D73697A653A20313270783B223E3C2F703E, '0', 'admin', '2025-03-14 10:05:49', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"logistics\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-14 10:10:05', 110);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/logistics', '127.0.0.1', '内网IP', '\"logistics\"', NULL, 0, NULL, '2025-03-14 10:10:09', 359);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"logistics_quantity\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-14 11:00:47', 92);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/logistics_quantity', '127.0.0.1', '内网IP', '\"logistics_quantity\"', NULL, 0, NULL, '2025-03-14 11:00:58', 241);
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"company\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-14 11:01:08', 37);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/company', '127.0.0.1', '内网IP', '\"company\"', NULL, 0, NULL, '2025-03-14 11:30:50', 307);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"company_type\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-14 12:03:04', 70);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/company_type', '127.0.0.1', '内网IP', '\"company_type\"', NULL, 0, NULL, '2025-03-14 12:03:07', 81);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"city_data\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-14 15:09:37', 145);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/city_data', '127.0.0.1', '内网IP', '\"city_data\"', NULL, 0, NULL, '2025-03-14 15:10:06', 323);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"city\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-14 15:12:05', 16);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/city', '127.0.0.1', '内网IP', '\"city\"', NULL, 0, NULL, '2025-03-14 15:12:09', 64);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"logistics_profit\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-14 16:49:20', 137);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/logistics_profit', '127.0.0.1', '内网IP', '\"logistics_profit\"', NULL, 0, NULL, '2025-03-14 16:49:25', 315);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"warehouses\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-26 19:47:49', 186);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/warehouses', '127.0.0.1', '内网IP', '\"warehouses\"', NULL, 0, NULL, '2025-03-26 19:47:56', 348);
INSERT INTO `sys_oper_log` VALUES (116, '仓库', 2, 'com.ruoyi.web.controller.logistics.WarehousesController.editSave()', 'POST', 1, NULL, NULL, '/logistics/warehouses/edit', '127.0.0.1', '内网IP', '{\"availableArea\":4500,\"cameraCount\":10,\"fireExtinguisherCount\":20,\"forkliftCount\":5,\"location\":\"北京市朝阳区望京街道 XX 号\",\"managerContact\":\"13800138000\",\"managerName\":\"张三\",\"operationCost\":20000,\"palletCount\":200,\"params\":{},\"rent\":50000,\"shelfCount\":100,\"storageLocationCount\":1000,\"totalArea\":5000,\"warehouseId\":\"WH001\",\"warehouseName\":\"北京一号仓库2\",\"warehouseType\":\"普通仓库\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-26 23:50:51', 120);
INSERT INTO `sys_oper_log` VALUES (117, '仓库', 1, 'com.ruoyi.web.controller.logistics.WarehousesController.addSave()', 'POST', 1, NULL, NULL, '/logistics/warehouses/add', '127.0.0.1', '内网IP', '{\"location\":\"3232\",\"params\":{},\"warehouseId\":\"WH1743004522946\",\"warehouseName\":\"温热微软\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'warehouse_type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\project\\dashuju\\dashuju-dianshang\\ruoyi-system\\target\\classes\\mapper\\logistics\\WarehousesMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.WarehousesMapper.insertWarehouses-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into warehouses          ( warehouse_id,             warehouse_name,             location )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'warehouse_type\' doesn\'t have a default value\n; Field \'warehouse_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'warehouse_type\' doesn\'t have a default value', '2025-03-26 23:55:23', 256);
INSERT INTO `sys_oper_log` VALUES (118, '仓库', 1, 'com.ruoyi.web.controller.logistics.WarehousesController.addSave()', 'POST', 1, NULL, NULL, '/logistics/warehouses/add', '127.0.0.1', '内网IP', '{\"location\":\"323\",\"params\":{},\"warehouseId\":\"WH1743004645482\",\"warehouseName\":\"请问\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'warehouse_type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\project\\dashuju\\dashuju-dianshang\\ruoyi-system\\target\\classes\\mapper\\logistics\\WarehousesMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.WarehousesMapper.insertWarehouses-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into warehouses          ( warehouse_id,             warehouse_name,             location )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'warehouse_type\' doesn\'t have a default value\n; Field \'warehouse_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'warehouse_type\' doesn\'t have a default value', '2025-03-26 23:57:25', 263);
INSERT INTO `sys_oper_log` VALUES (119, '仓库', 1, 'com.ruoyi.web.controller.logistics.WarehousesController.addSave()', 'POST', 1, NULL, NULL, '/logistics/warehouses/add', '127.0.0.1', '内网IP', '{\"location\":\"232\",\"params\":{},\"warehouseId\":\"WH1743004691491\",\"warehouseName\":\"趣味无穷\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-26 23:58:11', 10);
INSERT INTO `sys_oper_log` VALUES (120, '仓库', 2, 'com.ruoyi.web.controller.logistics.WarehousesController.editSave()', 'POST', 1, NULL, NULL, '/logistics/warehouses/edit', '127.0.0.1', '内网IP', '{\"location\":\"232\",\"params\":{},\"warehouseId\":\"WH1743004691491\",\"warehouseName\":\"趣味无穷2\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-26 23:58:35', 8);
INSERT INTO `sys_oper_log` VALUES (121, '仓库', 3, 'com.ruoyi.web.controller.logistics.WarehousesController.remove()', 'DELETE', 1, NULL, NULL, '/logistics/warehouses/remove/WH1743004691491', '127.0.0.1', '内网IP', '\"WH1743004691491\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-27 00:03:07', 68);
INSERT INTO `sys_oper_log` VALUES (122, '仓库', 3, 'com.ruoyi.web.controller.logistics.WarehousesController.remove()', 'DELETE', 1, NULL, NULL, '/logistics/warehouses/remove/WH030', '127.0.0.1', '内网IP', '\"WH030\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-27 00:03:13', 6);
INSERT INTO `sys_oper_log` VALUES (123, '仓库', 1, 'com.ruoyi.web.controller.logistics.WarehousesController.addSave()', 'POST', 1, NULL, NULL, '/logistics/warehouses/add', '127.0.0.1', '内网IP', '{\"location\":\"we23\",\"params\":{},\"warehouseId\":\"WH1743005043538\",\"warehouseName\":\"问问\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-27 00:04:03', 40);
INSERT INTO `sys_oper_log` VALUES (124, '仓库', 2, 'com.ruoyi.web.controller.logistics.WarehousesController.editSave()', 'POST', 1, NULL, NULL, '/logistics/warehouses/edit', '127.0.0.1', '内网IP', '{\"location\":\"we23\",\"params\":{},\"warehouseId\":\"WH1743005043538\",\"warehouseName\":\"问问33\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-27 00:04:08', 7);
INSERT INTO `sys_oper_log` VALUES (125, '仓库', 3, 'com.ruoyi.web.controller.logistics.WarehousesController.remove()', 'DELETE', 1, NULL, NULL, '/logistics/warehouses/remove/WH1743005043538', '127.0.0.1', '内网IP', '\"WH1743005043538\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-03-27 00:04:09', 7);
INSERT INTO `sys_oper_log` VALUES (126, '仓库', 2, 'com.ruoyi.web.controller.logistics.WarehousesController.editSave()', 'POST', 1, 'admin', '研发部门', '/logistics/warehouses/edit', '127.0.0.1', '内网IP', '{\"availableArea\":4650,\"cameraCount\":11,\"fireExtinguisherCount\":22,\"forkliftCount\":5,\"location\":\"银川市兴庆区西夏王陵 XX 号\",\"managerContact\":\"11100111000\",\"managerName\":\"王三十一\",\"operationCost\":22400,\"palletCount\":222,\"params\":{},\"rent\":51500,\"shelfCount\":111,\"storageLocationCount\":1110,\"totalArea\":5250,\"warehouseId\":\"WH029\",\"warehouseName\":\"银川二十九号仓库\",\"warehouseType\":\"普通仓库\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-12-07 10:46:55', 160);
INSERT INTO `sys_oper_log` VALUES (127, '仓库', 2, 'com.ruoyi.web.controller.logistics.WarehousesController.editSave()', 'POST', 1, 'admin', '研发部门', '/logistics/warehouses/edit', '127.0.0.1', '内网IP', '{\"availableArea\":4650,\"cameraCount\":11,\"fireExtinguisherCount\":22,\"forkliftCount\":5,\"location\":\"银川市兴庆区西夏王陵 XX 号\",\"managerContact\":\"11100111000\",\"managerName\":\"王三十一\",\"operationCost\":22400,\"palletCount\":222,\"params\":{},\"rent\":51500,\"shelfCount\":111,\"storageLocationCount\":1110,\"totalArea\":5250,\"warehouseId\":\"WH029\",\"warehouseName\":\"银川二十九号仓库\",\"warehouseType\":\"普通仓库\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2026-02-17 19:16:50', 183);
INSERT INTO `sys_oper_log` VALUES (128, '仓库', 1, 'com.ruoyi.web.controller.logistics.WarehousesController.addSave()', 'POST', 1, 'admin', '研发部门', '/logistics/warehouses/add', '127.0.0.1', '内网IP', '{\"location\":\"2\",\"params\":{},\"warehouseId\":\"WH1771327025420\",\"warehouseName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2026-02-17 19:17:05', 7);
INSERT INTO `sys_oper_log` VALUES (129, '仓库', 3, 'com.ruoyi.web.controller.logistics.WarehousesController.remove()', 'DELETE', 1, 'admin', '研发部门', '/logistics/warehouses/remove/WH1771327025420', '127.0.0.1', '内网IP', '\"WH1771327025420\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2026-02-17 19:17:11', 7);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-03-14 10:05:49', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-03-14 10:05:49', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2025-03-14 10:05:49', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2026-03-22 09:32:47', NULL, 'admin', '2025-03-14 10:05:49', '', '2026-03-22 09:32:47', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', NULL, NULL, 'admin', '2025-03-14 10:05:49', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (3, 103, 'test', '若依', '00', 'ry@202.com', '15666666667', '0', '', 'zlsj12345678', '', '0', '0', '127.0.0.1', NULL, NULL, 'admin', '2025-12-07 10:40:50', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '在线用户记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses`  (
  `warehouse_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '仓库唯一编号',
  `warehouse_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '仓库名称',
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '仓库所在位置',
  `warehouse_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库类型，如普通、冷藏等',
  `total_area` decimal(10, 2) NULL DEFAULT NULL COMMENT '仓库总面积（平方米）',
  `available_area` decimal(10, 2) NULL DEFAULT NULL COMMENT '仓库可用面积（平方米）',
  `shelf_count` int NULL DEFAULT NULL COMMENT '仓库内货架数量',
  `storage_location_count` int NULL DEFAULT NULL COMMENT '仓库内货位数量',
  `forklift_count` int NULL DEFAULT NULL COMMENT '仓库内叉车数量',
  `pallet_count` int NULL DEFAULT NULL COMMENT '仓库内托盘数量',
  `fire_extinguisher_count` int NULL DEFAULT NULL COMMENT '仓库内灭火器数量',
  `camera_count` int NULL DEFAULT NULL COMMENT '仓库内监控摄像头数量',
  `manager_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库管理员姓名',
  `manager_contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '仓库管理员联系方式',
  `rent` decimal(10, 2) NULL DEFAULT NULL COMMENT '仓库月租金',
  `operation_cost` decimal(10, 2) NULL DEFAULT NULL COMMENT '仓库月运营成本',
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '仓库表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES ('WH001', '北京一号仓库2', '北京市朝阳区望京街道 XX 号', '普通仓库', 5000.00, 4500.00, 100, 1000, 5, 200, 20, 10, '张三', '13800138000', 50000.00, 20000.00);
INSERT INTO `warehouses` VALUES ('WH002', '上海二号仓库', '上海市浦东新区张江路 XX 号', '冷藏仓库', 3000.00, 2500.00, 80, 800, 3, 150, 15, 8, '李四', '13900139000', 40000.00, 25000.00);
INSERT INTO `warehouses` VALUES ('WH003', '广州三号仓库', '广州市天河区珠江新城 XX 号', '普通仓库', 6000.00, 5200.00, 120, 1200, 6, 250, 25, 12, '王五', '13700137000', 60000.00, 22000.00);
INSERT INTO `warehouses` VALUES ('WH004', '深圳四号仓库', '深圳市南山区科技园 XX 号', '恒温仓库', 4000.00, 3500.00, 90, 900, 4, 180, 18, 9, '赵六', '13600136000', 45000.00, 23000.00);
INSERT INTO `warehouses` VALUES ('WH005', '成都五号仓库', '成都市武侯区高新区 XX 号', '普通仓库', 4500.00, 4000.00, 105, 1050, 5, 210, 21, 10, '孙七', '13500135000', 42000.00, 21000.00);
INSERT INTO `warehouses` VALUES ('WH006', '武汉六号仓库', '武汉市武昌区光谷广场 XX 号', '冷藏仓库', 3500.00, 3000.00, 85, 850, 3, 160, 16, 8, '周八', '13400134000', 38000.00, 24000.00);
INSERT INTO `warehouses` VALUES ('WH007', '杭州七号仓库', '杭州市滨江区物联网小镇 XX 号', '普通仓库', 5500.00, 4800.00, 110, 1100, 5, 220, 22, 11, '吴九', '13300133000', 52000.00, 22500.00);
INSERT INTO `warehouses` VALUES ('WH008', '南京八号仓库', '南京市鼓楼区新街口 XX 号', '恒温仓库', 4200.00, 3700.00, 95, 950, 4, 190, 19, 9, '郑十', '13200132000', 46000.00, 23500.00);
INSERT INTO `warehouses` VALUES ('WH009', '天津九号仓库', '天津市和平区小白楼 XX 号', '普通仓库', 5200.00, 4600.00, 108, 1080, 5, 215, 21, 10, '王十一', '13100131000', 51000.00, 22200.00);
INSERT INTO `warehouses` VALUES ('WH010', '重庆十号仓库', '重庆市渝中区解放碑 XX 号', '冷藏仓库', 3800.00, 3300.00, 88, 880, 3, 165, 17, 8, '李十二', '13000130000', 39000.00, 24500.00);
INSERT INTO `warehouses` VALUES ('WH011', '西安十一号仓库', '西安市雁塔区曲江新区 XX 号', '普通仓库', 4800.00, 4200.00, 102, 1020, 5, 205, 20, 10, '张十三', '12900129000', 43000.00, 21500.00);
INSERT INTO `warehouses` VALUES ('WH012', '长沙十二号仓库', '长沙市岳麓区岳麓山 XX 号', '恒温仓库', 4100.00, 3600.00, 92, 920, 4, 185, 18, 9, '刘十四', '12800128000', 44000.00, 23200.00);
INSERT INTO `warehouses` VALUES ('WH013', '青岛十三号仓库', '青岛市市南区五四广场 XX 号', '普通仓库', 5300.00, 4700.00, 112, 1120, 6, 230, 23, 11, '陈十五', '12700127000', 53000.00, 22800.00);
INSERT INTO `warehouses` VALUES ('WH014', '大连十四号仓库', '大连市中山区星海广场 XX 号', '冷藏仓库', 3600.00, 3100.00, 86, 860, 3, 170, 17, 8, '杨十六', '12600126000', 37000.00, 24200.00);
INSERT INTO `warehouses` VALUES ('WH015', '厦门十五号仓库', '厦门市思明区鼓浪屿 XX 号', '普通仓库', 4600.00, 4100.00, 106, 1060, 5, 212, 21, 10, '黄十七', '12500125000', 42500.00, 21800.00);
INSERT INTO `warehouses` VALUES ('WH016', '苏州十六号仓库', '苏州市姑苏区拙政园 XX 号', '恒温仓库', 4300.00, 3800.00, 96, 960, 4, 192, 19, 9, '周十八', '12400124000', 45500.00, 23300.00);
INSERT INTO `warehouses` VALUES ('WH017', '合肥十七号仓库', '合肥市蜀山区天鹅湖 XX 号', '普通仓库', 5100.00, 4500.00, 104, 1040, 5, 208, 20, 10, '吴十九', '12300123000', 50000.00, 22600.00);
INSERT INTO `warehouses` VALUES ('WH018', '福州十八号仓库', '福州市鼓楼区三坊七巷 XX 号', '冷藏仓库', 3700.00, 3200.00, 87, 870, 3, 172, 17, 8, '郑二十', '12200122000', 38500.00, 24300.00);
INSERT INTO `warehouses` VALUES ('WH019', '南昌十九号仓库', '南昌市东湖区滕王阁 XX 号', '普通仓库', 4700.00, 4200.00, 107, 1070, 5, 214, 21, 10, '王二十一', '12100121000', 43500.00, 21600.00);
INSERT INTO `warehouses` VALUES ('WH020', '南宁二十号仓库', '南宁市青秀区东盟商务区 XX 号', '恒温仓库', 4400.00, 3900.00, 97, 970, 4, 194, 19, 9, '李二十二', '12000120000', 46000.00, 23400.00);
INSERT INTO `warehouses` VALUES ('WH021', '昆明二十一号仓库', '昆明市五华区翠湖公园 XX 号', '普通仓库', 5400.00, 4800.00, 114, 1140, 6, 235, 23, 11, '张二十三', '11900119000', 54000.00, 22900.00);
INSERT INTO `warehouses` VALUES ('WH022', '贵阳二十二号仓库', '贵阳市云岩区甲秀楼 XX 号', '冷藏仓库', 3900.00, 3400.00, 89, 890, 3, 175, 18, 8, '刘二十四', '11800118000', 39500.00, 24400.00);
INSERT INTO `warehouses` VALUES ('WH023', '哈尔滨二十三号仓库', '哈尔滨市道里区中央大街 XX 号', '普通仓库', 5600.00, 5000.00, 116, 1160, 6, 240, 24, 12, '陈二十五', '11700117000', 55000.00, 23000.00);
INSERT INTO `warehouses` VALUES ('WH024', '长春二十四号仓库', '长春市南关区伪满皇宫 XX 号', '恒温仓库', 4900.00, 4400.00, 109, 1090, 5, 220, 22, 10, '杨二十六', '11600116000', 47000.00, 23600.00);
INSERT INTO `warehouses` VALUES ('WH025', '石家庄二十五号仓库', '石家庄市桥西区西柏坡 XX 号', '普通仓库', 5000.00, 4400.00, 103, 1030, 5, 206, 20, 10, '黄二十七', '11500115000', 49000.00, 22700.00);
INSERT INTO `warehouses` VALUES ('WH026', '太原二十六号仓库', '太原市迎泽区晋祠 XX 号', '冷藏仓库', 3850.00, 3350.00, 88, 880, 3, 170, 17, 8, '周二十八', '11400114000', 39200.00, 24100.00);
INSERT INTO `warehouses` VALUES ('WH027', '西宁二十七号仓库', '西宁市城西区塔尔寺 XX 号', '普通仓库', 4550.00, 4050.00, 101, 1010, 5, 202, 20, 10, '吴二十九', '11300113000', 42800.00, 21700.00);
INSERT INTO `warehouses` VALUES ('WH028', '兰州二十八号仓库', '兰州市城关区中山桥 XX 号', '恒温仓库', 4250.00, 3750.00, 93, 930, 4, 186, 18, 9, '郑三十', '11200112000', 44500.00, 23100.00);
INSERT INTO `warehouses` VALUES ('WH029', '银川二十九号仓库', '银川市兴庆区西夏王陵 XX 号', '普通仓库', 5250.00, 4650.00, 111, 1110, 5, 222, 22, 11, '王三十一', '11100111000', 51500.00, 22400.00);

SET FOREIGN_KEY_CHECKS = 1;
