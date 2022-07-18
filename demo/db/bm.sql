-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: imall
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信用户id',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货人姓名',
  `mobile` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `province` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省份',
  `city` char(30) DEFAULT NULL COMMENT '城市',
  `district` char(30) DEFAULT NULL COMMENT '区/县',
  `detailed_address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详细地址',
  `is_default` tinyint DEFAULT NULL COMMENT '1为默认，2为非默认',
  `created` char(20) DEFAULT NULL COMMENT '创建时间',
  `updated` char(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1109,'oUT385ZLmRr6R_a9xKSfSW9SekYI','张先生','13364809604','北京市','北京市','朝阳区','和平街都20号楼205',1,'2022-06-23 14:42:46',''),(1110,'oUT385ZLmRr6R_a9xKSfSW9SekYI','李先生','13580609702','山西省','阳泉市','郊区','某某街都2508号5栋450',2,'2022-06-23 14:43:50',''),(1111,'oUT385ZLmRr6R_a9xKSfSW9SekYI','zchengo','15060894035','浙江省','杭州市','上城区','某某街道708号',2,'2022-06-23 14:44:32','2022-06-23 14:44:42');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '类目编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类目名称',
  `parent_id` bigint DEFAULT NULL COMMENT '父级类目编号',
  `level` tinyint DEFAULT NULL COMMENT '类目级别',
  `sort` int DEFAULT NULL COMMENT '类目排序',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2077 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2055,'蔬菜',1,1,1,'2022-06-23 11:48:33',''),(2056,'水果',1,1,2,'2022-06-23 11:48:43',''),(2057,'菜心',2055,2,20,'2022-06-23 11:48:57',''),(2058,'上海青',2055,2,23,'2022-06-23 11:55:27',''),(2061,'火龙果',2056,2,34,'2022-06-23 12:15:23',''),(2062,'柠檬',2056,2,33,'2022-06-23 12:38:43',''),(2063,'苹果',2056,2,12,'2022-06-23 12:58:50',''),(2064,'香蕉',2056,2,5,'2022-06-23 13:04:19',''),(2065,'香梨',2056,2,23,'2022-06-23 13:18:29',''),(2066,'西柚',2056,2,55,'2022-06-23 13:44:04',''),(2067,'西瓜',2056,2,23,'2022-06-23 13:54:53',''),(2068,'甜瓜',2056,2,22,'2022-06-23 14:06:43',''),(2069,'秋葵',2055,2,30,'2022-06-23 14:10:10',''),(2070,'胡萝卜',2055,2,60,'2022-06-23 14:13:16',''),(2071,'土豆',2055,2,33,'2022-06-23 14:15:37',''),(2072,'玉米',2055,2,12,'2022-06-23 14:17:39',''),(2073,'海鲜菇',2055,2,5,'2022-06-23 14:20:47',''),(2074,'洋葱',2055,2,23,'2022-06-23 14:22:43',''),(2075,'香菜',2055,2,50,'2022-06-23 14:24:59',''),(2076,'菜椒',2055,2,45,'2022-06-23 14:29:18','');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `category_id` bigint DEFAULT NULL COMMENT '类目编号',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品标题',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `quantity` int DEFAULT NULL COMMENT '商品数量',
  `image_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品备注',
  `sales` int DEFAULT NULL COMMENT '商品销量',
  `status` tinyint DEFAULT NULL COMMENT '商品状态',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (36,2057,'中花菜心 500g','菜心',5.00,500,'http://localhost:8401/image/IMG_0001.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 11:52:44','2022-06-23 11:52:54'),(37,2058,'有机上海青 300g','上海青',8.00,330,'http://localhost:8401/image/IMG_0002.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 11:56:18','2022-06-23 11:56:31'),(39,2061,'红心火龙果 200g','火龙果',13.00,30,'http://localhost:8401/image/IMG_0003.PNG','图片仅供参考，请以实物为准',0,2,'2022-06-23 12:26:53','2022-06-23 12:57:55'),(40,2062,'安岳柠檬 120g','柠檬',3.00,340,'http://localhost:8401/image/IMG_0004.PNG','图片仅供参考，请以实物为准',0,2,'2022-06-23 12:47:36','2022-06-23 12:58:22'),(41,2063,'南非冰糖小苹果 450g','苹果',10.00,220,'http://localhost:8401/image/IMG_0005.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 13:02:01',''),(42,2064,'香蕉 500g','香蕉',8.00,450,'http://localhost:8401/image/IMG_0006.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 13:05:19',''),(43,2065,'新疆香梨 400g','香梨',10.00,23,'http://localhost:8401/image/IMG_0007.JPG','图片仅供参考，请以实物为准',0,1,'2022-06-23 13:34:35',''),(44,2066,'红西柚 500g','红西柚',7.00,60,'http://localhost:8401/image/IMG_0008.JPG','图片仅供参考，请以实物为准',0,1,'2022-06-23 13:44:59',''),(45,2067,'麒麟瓜 5kg','麒麟瓜',32.00,200,'http://localhost:8401/image/IMG_0009.JPG','图片仅供参考，请以实物为准',0,1,'2022-06-23 13:56:55',''),(46,2068,'黄甜瓜 600g','甜瓜',9.00,350,'http://localhost:8401/image/IMG_0010.JPG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:08:37',''),(47,2069,'黄秋葵 250g','黄秋葵',5.00,50,'http://localhost:8401/image/IMG_0011.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:12:18',''),(48,2070,'胡萝卜 260g','胡萝卜',3.00,105,'http://localhost:8401/image/IMG_0012.JPG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:14:45',''),(49,2071,'土豆 200g','土豆',2.00,68,'http://localhost:8401/image/IMG_0013.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:17:05',''),(50,2072,'黄羊河甜玉米 250g','甜玉米',8.00,200,'http://localhost:8401/image/IMG_0014.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:19:21',''),(51,2073,'海鲜菇 240g','海鲜菇',3.00,30,'http://localhost:8401/image/IMG_0015.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:21:49',''),(52,2074,'洋葱 200g','洋葱',4.00,200,'http://localhost:8401/image/IMG_0016.JPG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:24:11',''),(53,2075,'香菜 90g','香菜',3.00,12,'http://localhost:8401/image/IMG_0017.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:26:52',''),(54,2076,'菜椒 300g','菜椒',4.00,300,'http://localhost:8401/image/IMG_0018.PNG','图片仅供参考，请以实物为准',0,1,'2022-06-23 14:30:54','');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` tinyint DEFAULT NULL COMMENT '类型',
  `banner_image` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `begin_time` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `over_time` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `goods_ids` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关联商品',
  `status` tinyint DEFAULT NULL COMMENT '状态，1-开启，2-关闭',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (11,'钻石展位1',1,'http://localhost:8401/image/b1.png','2022-06-23 00:00:00','2022-06-30 00:00:00','42',1,'2022-06-23 14:33:28','2022-06-23 14:34:15'),(12,'钻石展位2',1,'http://localhost:8401/image/b2.png','2022-06-23 00:00:00','2022-06-30 00:00:00','40',1,'2022-06-23 14:34:11','2022-06-23 14:34:16');
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信用户编号',
  `goods_ids_count` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品项Id',
  `goods_count` int DEFAULT NULL COMMENT '商品数量',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `address_id` bigint DEFAULT NULL COMMENT '地址编号',
  `status` tinyint DEFAULT NULL COMMENT '订单状态，1-待付款，2-已取消，3-已付款，4-配送中，5-已完成',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (12,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,1,'2022-06-20 14:48:40',''),(13,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2',7,58.00,1109,2,'2022-06-20 14:48:40',''),(14,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,3,'2022-06-20 14:48:40',''),(15,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,5,'2022-06-20 14:48:40',''),(16,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3',7,58.00,1109,1,'2022-06-21 14:48:40',''),(17,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,2,'2022-06-21 14:48:40',''),(18,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,3,'2022-06-21 14:48:40',''),(19,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,3,'2022-06-21 14:48:40',''),(20,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,4,'2022-06-22 14:48:40',''),(21,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2',7,58.00,1109,5,'2022-06-22 14:48:40',''),(22,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,1,'2022-06-22 14:48:40',''),(23,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,3,'2022-06-23 14:48:40',''),(24,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2',7,58.00,1109,2,'2022-06-23 14:48:40',''),(25,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,2,'2022-06-23 14:48:40',''),(26,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,1,'2022-06-23 14:48:40',''),(27,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2',7,58.00,1109,5,'2022-06-23 14:48:40',''),(28,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,5,'2022-06-24 14:48:40',''),(29,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:3,43:2,44:2',7,58.00,1109,1,'2022-06-24 14:48:40',''),(30,'oUT385ZLmRr6R_a9xKSfSW9SekYI','49:2,51:2',4,10.00,1109,2,'2022-06-24 14:49:20',''),(31,'oUT385ZLmRr6R_a9xKSfSW9SekYI','40:3,44:4,50:3',10,61.00,1109,3,'2022-06-24 14:49:46',''),(32,'oUT385ZLmRr6R_a9xKSfSW9SekYI','47:2,48:3',5,19.00,1109,1,'2022-06-25 14:51:31',''),(33,'oUT385ZLmRr6R_a9xKSfSW9SekYI','48:2',2,6.00,1109,2,'2022-06-25 14:51:58',''),(34,'oUT385ZLmRr6R_a9xKSfSW9SekYI','41:4',4,40.00,1109,2,'2022-06-25 14:52:04',''),(35,'oUT385ZLmRr6R_a9xKSfSW9SekYI','53:4',4,12.00,1109,3,'2022-06-25 14:52:11',''),(36,'oUT385ZLmRr6R_a9xKSfSW9SekYI','39:3',3,39.00,1109,4,'2022-06-25 14:52:24',''),(37,'oUT385ZLmRr6R_a9xKSfSW9SekYI','53:2',2,6.00,1109,3,'2022-06-26 14:52:39',''),(38,'oUT385ZLmRr6R_a9xKSfSW9SekYI','36:2',2,10.00,1109,5,'2022-06-26 14:52:54',''),(39,'oUT385ZLmRr6R_a9xKSfSW9SekYI','40:3',3,9.00,1109,2,'2022-06-26 14:53:02',''),(40,'oUT385ZLmRr6R_a9xKSfSW9SekYI','36:2,37:2',4,26.00,1109,4,'2022-06-26 14:53:39',''),(41,'oUT385ZLmRr6R_a9xKSfSW9SekYI','53:2',2,6.00,1109,3,'2022-06-26 14:55:03',''),(42,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:2,50:2',4,32.00,1109,4,'2022-06-27 14:55:14',''),(43,'oUT385ZLmRr6R_a9xKSfSW9SekYI','42:2,49:4,50:3',9,48.00,1109,5,'2022-06-27 14:55:52',''),(44,'oUT385ZLmRr6R_a9xKSfSW9SekYI','52:4,53:4',8,28.00,1109,4,'2022-06-27 14:56:02',''),(45,'oUT385ZLmRr6R_a9xKSfSW9SekYI','36:3',3,15.00,1109,1,'2022-06-27 14:56:11','');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信用户唯一标识',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名称',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `status` tinyint DEFAULT NULL COMMENT '用户状态',
  `created` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `updated` varchar(50) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10001,NULL,'admin','12345',1,NULL,NULL),(10002,'oUT385ZLmRr6R_a9xKSfSW9SekYI','','',1,'2022-06-23 14:36:10',''),(10003,'','','',1,'2022-07-12 10:41:46',''),(10004,'oLApe4yAjyKzu8LcwDhmmKom65Qg','','',1,'2022-07-13 00:01:35',''),(10005,'oLApe4yAjyKzu8LcwDhmmKom65Qg','','',1,'2022-07-13 00:01:35','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'imall'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-13 16:32:32
