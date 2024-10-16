-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootttxcu
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootttxcu`
--

/*!40000 DROP DATABASE IF EXISTS `springbootttxcu`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootttxcu` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootttxcu`;

--
-- Table structure for table `biyesheng`
--

DROP TABLE IF EXISTS `biyesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biyesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='毕业生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biyesheng`
--

LOCK TABLES `biyesheng` WRITE;
/*!40000 ALTER TABLE `biyesheng` DISABLE KEYS */;
INSERT INTO `biyesheng` VALUES (11,'2022-07-22 22:34:28','学号1','123456','姓名1','男','院系1','专业1','13823888881','773890001@qq.com'),(12,'2022-07-22 22:34:28','学号2','123456','姓名2','男','院系2','专业2','13823888882','773890002@qq.com'),(13,'2022-07-22 22:34:28','学号3','123456','姓名3','男','院系3','专业3','13823888883','773890003@qq.com'),(14,'2022-07-22 22:34:28','学号4','123456','姓名4','男','院系4','专业4','13823888884','773890004@qq.com'),(15,'2022-07-22 22:34:28','学号5','123456','姓名5','男','院系5','专业5','13823888885','773890005@qq.com'),(16,'2022-07-22 22:34:28','学号6','123456','姓名6','男','院系6','专业6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `biyesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biyezhengxinxi`
--

DROP TABLE IF EXISTS `biyezhengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biyezhengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shifoufafang` varchar(200) DEFAULT NULL COMMENT '是否发放',
  `weifafangyuanyin` longtext COMMENT '未发放原因',
  `shenheqingkuang` varchar(200) DEFAULT NULL COMMENT '审核情况',
  `shenheyijian` longtext COMMENT '审核意见',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='毕业证信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biyezhengxinxi`
--

LOCK TABLES `biyezhengxinxi` WRITE;
/*!40000 ALTER TABLE `biyezhengxinxi` DISABLE KEYS */;
INSERT INTO `biyezhengxinxi` VALUES (151,'2022-07-22 22:34:29','学号1','姓名1','是','未发放原因1','通过','审核意见1','职工账号1','职工姓名1'),(152,'2022-07-22 22:34:29','学号2','姓名2','是','未发放原因2','通过','审核意见2','职工账号2','职工姓名2'),(153,'2022-07-22 22:34:29','学号3','姓名3','是','未发放原因3','通过','审核意见3','职工账号3','职工姓名3'),(154,'2022-07-22 22:34:29','学号4','姓名4','是','未发放原因4','通过','审核意见4','职工账号4','职工姓名4'),(155,'2022-07-22 22:34:29','学号5','姓名5','是','未发放原因5','通过','审核意见5','职工账号5','职工姓名5'),(156,'2022-07-22 22:34:29','学号6','姓名6','是','未发放原因6','通过','审核意见6','职工账号6','职工姓名6');
/*!40000 ALTER TABLE `biyezhengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caiwuchu`
--

DROP TABLE IF EXISTS `caiwuchu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caiwuchu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhigongzhanghao` varchar(200) NOT NULL COMMENT '职工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhigongxingming` varchar(200) NOT NULL COMMENT '职工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhigongzhanghao` (`zhigongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='财务处';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caiwuchu`
--

LOCK TABLES `caiwuchu` WRITE;
/*!40000 ALTER TABLE `caiwuchu` DISABLE KEYS */;
INSERT INTO `caiwuchu` VALUES (31,'2022-07-22 22:34:29','职工账号1','123456','职工姓名1','男','职务1','13823888881','773890001@qq.com'),(32,'2022-07-22 22:34:29','职工账号2','123456','职工姓名2','男','职务2','13823888882','773890002@qq.com'),(33,'2022-07-22 22:34:29','职工账号3','123456','职工姓名3','男','职务3','13823888883','773890003@qq.com'),(34,'2022-07-22 22:34:29','职工账号4','123456','职工姓名4','男','职务4','13823888884','773890004@qq.com'),(35,'2022-07-22 22:34:29','职工账号5','123456','职工姓名5','男','职务5','13823888885','773890005@qq.com'),(36,'2022-07-22 22:34:29','职工账号6','123456','职工姓名6','男','职务6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `caiwuchu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caiwugoutong`
--

DROP TABLE IF EXISTS `caiwugoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caiwugoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` datetime DEFAULT NULL COMMENT '沟通时间',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='财务沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caiwugoutong`
--

LOCK TABLES `caiwugoutong` WRITE;
/*!40000 ALTER TABLE `caiwugoutong` DISABLE KEYS */;
INSERT INTO `caiwugoutong` VALUES (181,'2022-07-22 22:34:29','标题1','沟通内容1','2022-07-23 06:34:29','职工账号1','职工姓名1','学号1','姓名1','是',''),(182,'2022-07-22 22:34:29','标题2','沟通内容2','2022-07-23 06:34:29','职工账号2','职工姓名2','学号2','姓名2','是',''),(183,'2022-07-22 22:34:29','标题3','沟通内容3','2022-07-23 06:34:29','职工账号3','职工姓名3','学号3','姓名3','是',''),(184,'2022-07-22 22:34:29','标题4','沟通内容4','2022-07-23 06:34:29','职工账号4','职工姓名4','学号4','姓名4','是',''),(185,'2022-07-22 22:34:29','标题5','沟通内容5','2022-07-23 06:34:29','职工账号5','职工姓名5','学号5','姓名5','是',''),(186,'2022-07-22 22:34:29','标题6','沟通内容6','2022-07-23 06:34:29','职工账号6','职工姓名6','学号6','姓名6','是','');
/*!40000 ALTER TABLE `caiwugoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caiwuqingsuan`
--

DROP TABLE IF EXISTS `caiwuqingsuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caiwuqingsuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qingsuanbiaoti` varchar(200) DEFAULT NULL COMMENT '清算标题',
  `qingsuanqingkuang` longtext COMMENT '清算情况',
  `qingsuanshijian` date DEFAULT NULL COMMENT '清算时间',
  `qianfeijine` float DEFAULT NULL COMMENT '欠费金额',
  `shenheqingkuang` varchar(200) DEFAULT NULL COMMENT '审核情况',
  `shenheyijian` longtext COMMENT '审核意见',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='财务清算';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caiwuqingsuan`
--

LOCK TABLES `caiwuqingsuan` WRITE;
/*!40000 ALTER TABLE `caiwuqingsuan` DISABLE KEYS */;
INSERT INTO `caiwuqingsuan` VALUES (121,'2022-07-22 22:34:29','1111111111','清算标题1','清算情况1','2022-07-23',1,'通过','审核意见1','职工账号1','职工姓名1','学号1','姓名1','未支付'),(122,'2022-07-22 22:34:29','2222222222','清算标题2','清算情况2','2022-07-23',2,'通过','审核意见2','职工账号2','职工姓名2','学号2','姓名2','未支付'),(123,'2022-07-22 22:34:29','3333333333','清算标题3','清算情况3','2022-07-23',3,'通过','审核意见3','职工账号3','职工姓名3','学号3','姓名3','未支付'),(124,'2022-07-22 22:34:29','4444444444','清算标题4','清算情况4','2022-07-23',4,'通过','审核意见4','职工账号4','职工姓名4','学号4','姓名4','未支付'),(125,'2022-07-22 22:34:29','5555555555','清算标题5','清算情况5','2022-07-23',5,'通过','审核意见5','职工账号5','职工姓名5','学号5','姓名5','未支付'),(126,'2022-07-22 22:34:29','6666666666','清算标题6','清算情况6','2022-07-23',6,'通过','审核意见6','职工账号6','职工姓名6','学号6','姓名6','未支付');
/*!40000 ALTER TABLE `caiwuqingsuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fudaoyuan`
--

DROP TABLE IF EXISTS `fudaoyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fudaoyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhigongzhanghao` varchar(200) NOT NULL COMMENT '职工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhigongxingming` varchar(200) NOT NULL COMMENT '职工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhigongzhanghao` (`zhigongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='辅导员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fudaoyuan`
--

LOCK TABLES `fudaoyuan` WRITE;
/*!40000 ALTER TABLE `fudaoyuan` DISABLE KEYS */;
INSERT INTO `fudaoyuan` VALUES (71,'2022-07-22 22:34:29','职工账号1','123456','职工姓名1','男','职务1','13823888881','773890001@qq.com'),(72,'2022-07-22 22:34:29','职工账号2','123456','职工姓名2','男','职务2','13823888882','773890002@qq.com'),(73,'2022-07-22 22:34:29','职工账号3','123456','职工姓名3','男','职务3','13823888883','773890003@qq.com'),(74,'2022-07-22 22:34:29','职工账号4','123456','职工姓名4','男','职务4','13823888884','773890004@qq.com'),(75,'2022-07-22 22:34:29','职工账号5','123456','职工姓名5','男','职务5','13823888885','773890005@qq.com'),(76,'2022-07-22 22:34:29','职工账号6','123456','职工姓名6','男','职务6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `fudaoyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fudaoyuangoutong`
--

DROP TABLE IF EXISTS `fudaoyuangoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fudaoyuangoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` datetime DEFAULT NULL COMMENT '沟通时间',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COMMENT='辅导员沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fudaoyuangoutong`
--

LOCK TABLES `fudaoyuangoutong` WRITE;
/*!40000 ALTER TABLE `fudaoyuangoutong` DISABLE KEYS */;
INSERT INTO `fudaoyuangoutong` VALUES (221,'2022-07-22 22:34:29','标题1','沟通内容1','2022-07-23 06:34:29','职工账号1','职工姓名1','学号1','姓名1','是',''),(222,'2022-07-22 22:34:29','标题2','沟通内容2','2022-07-23 06:34:29','职工账号2','职工姓名2','学号2','姓名2','是',''),(223,'2022-07-22 22:34:29','标题3','沟通内容3','2022-07-23 06:34:29','职工账号3','职工姓名3','学号3','姓名3','是',''),(224,'2022-07-22 22:34:29','标题4','沟通内容4','2022-07-23 06:34:29','职工账号4','职工姓名4','学号4','姓名4','是',''),(225,'2022-07-22 22:34:29','标题5','沟通内容5','2022-07-23 06:34:29','职工账号5','职工姓名5','学号5','姓名5','是',''),(226,'2022-07-22 22:34:29','标题6','沟通内容6','2022-07-23 06:34:29','职工账号6','职工姓名6','学号6','姓名6','是','');
/*!40000 ALTER TABLE `fudaoyuangoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabuzhe` varchar(200) DEFAULT NULL COMMENT '发布者',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (81,'2022-07-22 22:34:29','标题1','公告内容1','发布者1','2022-07-23'),(82,'2022-07-22 22:34:29','标题2','公告内容2','发布者2','2022-07-23'),(83,'2022-07-22 22:34:29','标题3','公告内容3','发布者3','2022-07-23'),(84,'2022-07-22 22:34:29','标题4','公告内容4','发布者4','2022-07-23'),(85,'2022-07-22 22:34:29','标题5','公告内容5','发布者5','2022-07-23'),(86,'2022-07-22 22:34:29','标题6','公告内容6','发布者6','2022-07-23');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshigoutong`
--

DROP TABLE IF EXISTS `jiaoshigoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshigoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` datetime DEFAULT NULL COMMENT '沟通时间',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='教师沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshigoutong`
--

LOCK TABLES `jiaoshigoutong` WRITE;
/*!40000 ALTER TABLE `jiaoshigoutong` DISABLE KEYS */;
INSERT INTO `jiaoshigoutong` VALUES (211,'2022-07-22 22:34:29','标题1','沟通内容1','2022-07-23 06:34:29','职工账号1','职工姓名1','学号1','姓名1','是',''),(212,'2022-07-22 22:34:29','标题2','沟通内容2','2022-07-23 06:34:29','职工账号2','职工姓名2','学号2','姓名2','是',''),(213,'2022-07-22 22:34:29','标题3','沟通内容3','2022-07-23 06:34:29','职工账号3','职工姓名3','学号3','姓名3','是',''),(214,'2022-07-22 22:34:29','标题4','沟通内容4','2022-07-23 06:34:29','职工账号4','职工姓名4','学号4','姓名4','是',''),(215,'2022-07-22 22:34:29','标题5','沟通内容5','2022-07-23 06:34:29','职工账号5','职工姓名5','学号5','姓名5','是',''),(216,'2022-07-22 22:34:29','标题6','沟通内容6','2022-07-23 06:34:29','职工账号6','职工姓名6','学号6','姓名6','是','');
/*!40000 ALTER TABLE `jiaoshigoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaowuchu`
--

DROP TABLE IF EXISTS `jiaowuchu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaowuchu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhigongzhanghao` varchar(200) NOT NULL COMMENT '职工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhigongxingming` varchar(200) NOT NULL COMMENT '职工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhigongzhanghao` (`zhigongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教务处';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaowuchu`
--

LOCK TABLES `jiaowuchu` WRITE;
/*!40000 ALTER TABLE `jiaowuchu` DISABLE KEYS */;
INSERT INTO `jiaowuchu` VALUES (21,'2022-07-22 22:34:29','职工账号1','123456','职工姓名1','男','职务1','13823888881','773890001@qq.com'),(22,'2022-07-22 22:34:29','职工账号2','123456','职工姓名2','男','职务2','13823888882','773890002@qq.com'),(23,'2022-07-22 22:34:29','职工账号3','123456','职工姓名3','男','职务3','13823888883','773890003@qq.com'),(24,'2022-07-22 22:34:29','职工账号4','123456','职工姓名4','男','职务4','13823888884','773890004@qq.com'),(25,'2022-07-22 22:34:29','职工账号5','123456','职工姓名5','男','职务5','13823888885','773890005@qq.com'),(26,'2022-07-22 22:34:29','职工账号6','123456','职工姓名6','男','职务6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `jiaowuchu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaowugoutong`
--

DROP TABLE IF EXISTS `jiaowugoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaowugoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` datetime DEFAULT NULL COMMENT '沟通时间',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='教务沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaowugoutong`
--

LOCK TABLES `jiaowugoutong` WRITE;
/*!40000 ALTER TABLE `jiaowugoutong` DISABLE KEYS */;
INSERT INTO `jiaowugoutong` VALUES (161,'2022-07-22 22:34:29','标题1','沟通内容1','2022-07-23 06:34:29','职工账号1','职工姓名1','学号1','姓名1','是',''),(162,'2022-07-22 22:34:29','标题2','沟通内容2','2022-07-23 06:34:29','职工账号2','职工姓名2','学号2','姓名2','是',''),(163,'2022-07-22 22:34:29','标题3','沟通内容3','2022-07-23 06:34:29','职工账号3','职工姓名3','学号3','姓名3','是',''),(164,'2022-07-22 22:34:29','标题4','沟通内容4','2022-07-23 06:34:29','职工账号4','职工姓名4','学号4','姓名4','是',''),(165,'2022-07-22 22:34:29','标题5','沟通内容5','2022-07-23 06:34:29','职工账号5','职工姓名5','学号5','姓名5','是',''),(166,'2022-07-22 22:34:29','标题6','沟通内容6','2022-07-23 06:34:29','职工账号6','职工姓名6','学号6','姓名6','是','');
/*!40000 ALTER TABLE `jiaowugoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lixiaoshenqing`
--

DROP TABLE IF EXISTS `lixiaoshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lixiaoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `shenqingshuoming` longtext COMMENT '申请说明',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='离校申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lixiaoshenqing`
--

LOCK TABLES `lixiaoshenqing` WRITE;
/*!40000 ALTER TABLE `lixiaoshenqing` DISABLE KEYS */;
INSERT INTO `lixiaoshenqing` VALUES (91,'2022-07-22 22:34:29','学号1','姓名1','院系1','专业1','2022-07-23','申请说明1','职工账号1','职工姓名1','是',''),(92,'2022-07-22 22:34:29','学号2','姓名2','院系2','专业2','2022-07-23','申请说明2','职工账号2','职工姓名2','是',''),(93,'2022-07-22 22:34:29','学号3','姓名3','院系3','专业3','2022-07-23','申请说明3','职工账号3','职工姓名3','是',''),(94,'2022-07-22 22:34:29','学号4','姓名4','院系4','专业4','2022-07-23','申请说明4','职工账号4','职工姓名4','是',''),(95,'2022-07-22 22:34:29','学号5','姓名5','院系5','专业5','2022-07-23','申请说明5','职工账号5','职工姓名5','是',''),(96,'2022-07-22 22:34:29','学号6','姓名6','院系6','专业6','2022-07-23','申请说明6','职工账号6','职工姓名6','是','');
/*!40000 ALTER TABLE `lixiaoshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunwenxinxi`
--

DROP TABLE IF EXISTS `lunwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lunwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wanchengqingkuang` varchar(200) DEFAULT NULL COMMENT '完成情况',
  `bujigeyuanyin` longtext COMMENT '不及格原因',
  `shenheqingkuang` varchar(200) DEFAULT NULL COMMENT '审核情况',
  `shenheyijian` longtext COMMENT '审核意见',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='论文信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunwenxinxi`
--

LOCK TABLES `lunwenxinxi` WRITE;
/*!40000 ALTER TABLE `lunwenxinxi` DISABLE KEYS */;
INSERT INTO `lunwenxinxi` VALUES (141,'2022-07-22 22:34:29','学号1','姓名1','及格','不及格原因1','通过','审核意见1','职工账号1','职工姓名1'),(142,'2022-07-22 22:34:29','学号2','姓名2','及格','不及格原因2','通过','审核意见2','职工账号2','职工姓名2'),(143,'2022-07-22 22:34:29','学号3','姓名3','及格','不及格原因3','通过','审核意见3','职工账号3','职工姓名3'),(144,'2022-07-22 22:34:29','学号4','姓名4','及格','不及格原因4','通过','审核意见4','职工账号4','职工姓名4'),(145,'2022-07-22 22:34:29','学号5','姓名5','及格','不及格原因5','通过','审核意见5','职工账号5','职工姓名5'),(146,'2022-07-22 22:34:29','学号6','姓名6','及格','不及格原因6','通过','审核意见6','职工账号6','职工姓名6');
/*!40000 ALTER TABLE `lunwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2022-07-22 22:34:29','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"毕业生\",\"menuJump\":\"列表\",\"tableName\":\"biyesheng\"}],\"menu\":\"毕业生管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"教务处\",\"menuJump\":\"列表\",\"tableName\":\"jiaowuchu\"}],\"menu\":\"教务处管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导入\",\"导出\"],\"menu\":\"财务处\",\"menuJump\":\"列表\",\"tableName\":\"caiwuchu\"}],\"menu\":\"财务处管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"图书馆\",\"menuJump\":\"列表\",\"tableName\":\"tushuguan\"}],\"menu\":\"图书馆管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"宿舍管理\",\"menuJump\":\"列表\",\"tableName\":\"susheguanli\"}],\"menu\":\"宿舍管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"指导老师\",\"menuJump\":\"列表\",\"tableName\":\"zhidaolaoshi\"}],\"menu\":\"指导老师管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"辅导员\",\"menuJump\":\"列表\",\"tableName\":\"fudaoyuan\"}],\"menu\":\"辅导员管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"删除\",\"报表\"],\"menu\":\"离校申请\",\"menuJump\":\"列表\",\"tableName\":\"lixiaoshenqing\"}],\"menu\":\"离校申请管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\",\"导出\",\"导入\"],\"menu\":\"学分信息\",\"menuJump\":\"列表\",\"tableName\":\"xuefenxinxi\"}],\"menu\":\"学分信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"删除\",\"查看\",\"导出\",\"导入\"],\"menu\":\"宿舍信息\",\"menuJump\":\"列表\",\"tableName\":\"sushexinxi\"}],\"menu\":\"宿舍信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\",\"导出\",\"导入\"],\"menu\":\"财务清算\",\"menuJump\":\"列表\",\"tableName\":\"caiwuqingsuan\"}],\"menu\":\"财务清算管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"删除\",\"导出\",\"导入\"],\"menu\":\"欠书信息\",\"menuJump\":\"列表\",\"tableName\":\"qianshuxinxi\"}],\"menu\":\"欠书信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"删除\",\"查看\",\"导出\",\"导入\"],\"menu\":\"论文信息\",\"menuJump\":\"列表\",\"tableName\":\"lunwenxinxi\"}],\"menu\":\"论文信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\",\"导出\",\"导入\"],\"menu\":\"毕业证信息\",\"menuJump\":\"列表\",\"tableName\":\"biyezhengxinxi\"}],\"menu\":\"毕业证信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"专业分类\",\"menuJump\":\"列表\",\"tableName\":\"zhuanyefenlei\"}],\"menu\":\"专业分类管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\"}],\"menu\":\"系统管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"离校申请\",\"menuJump\":\"列表\",\"tableName\":\"lixiaoshenqing\"}],\"menu\":\"离校申请管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"学分信息\",\"menuJump\":\"列表\",\"tableName\":\"xuefenxinxi\"}],\"menu\":\"学分信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"宿舍信息\",\"menuJump\":\"列表\",\"tableName\":\"sushexinxi\"}],\"menu\":\"宿舍信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"财务清算\",\"menuJump\":\"列表\",\"tableName\":\"caiwuqingsuan\"}],\"menu\":\"财务清算管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"欠书信息\",\"menuJump\":\"列表\",\"tableName\":\"qianshuxinxi\"}],\"menu\":\"欠书信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\"],\"menu\":\"论文信息\",\"menuJump\":\"列表\",\"tableName\":\"lunwenxinxi\"}],\"menu\":\"论文信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"毕业证信息\",\"menuJump\":\"列表\",\"tableName\":\"biyezhengxinxi\"}],\"menu\":\"毕业证信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教务沟通\",\"menuJump\":\"列表\",\"tableName\":\"jiaowugoutong\"}],\"menu\":\"教务沟通管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"财务沟通\",\"menuJump\":\"列表\",\"tableName\":\"caiwugoutong\"}],\"menu\":\"财务沟通管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"图书馆沟通\",\"menuJump\":\"列表\",\"tableName\":\"tushuguangoutong\"}],\"menu\":\"图书馆沟通管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"宿管沟通\",\"menuJump\":\"列表\",\"tableName\":\"suguangoutong\"}],\"menu\":\"宿管沟通管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"教师沟通\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshigoutong\"}],\"menu\":\"教师沟通管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"辅导员沟通\",\"menuJump\":\"列表\",\"tableName\":\"fudaoyuangoutong\"}],\"menu\":\"辅导员沟通管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"毕业生\",\"tableName\":\"biyesheng\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"删除\",\"审核\",\"报表\"],\"menu\":\"离校申请\",\"menuJump\":\"列表\",\"tableName\":\"lixiaoshenqing\"}],\"menu\":\"离校申请管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"学分信息\",\"menuJump\":\"列表\",\"tableName\":\"xuefenxinxi\"}],\"menu\":\"学分信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"教务沟通\",\"menuJump\":\"列表\",\"tableName\":\"jiaowugoutong\"}],\"menu\":\"教务沟通管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"教务处\",\"tableName\":\"jiaowuchu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"财务清算\",\"menuJump\":\"列表\",\"tableName\":\"caiwuqingsuan\"}],\"menu\":\"财务清算管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"财务沟通\",\"menuJump\":\"列表\",\"tableName\":\"caiwugoutong\"}],\"menu\":\"财务沟通管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"财务处\",\"tableName\":\"caiwuchu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导入\",\"导出\"],\"menu\":\"欠书信息\",\"menuJump\":\"列表\",\"tableName\":\"qianshuxinxi\"}],\"menu\":\"欠书信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"图书馆沟通\",\"menuJump\":\"列表\",\"tableName\":\"tushuguangoutong\"}],\"menu\":\"图书馆沟通管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"图书馆\",\"tableName\":\"tushuguan\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"宿舍信息\",\"menuJump\":\"列表\",\"tableName\":\"sushexinxi\"}],\"menu\":\"宿舍信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"宿管沟通\",\"menuJump\":\"列表\",\"tableName\":\"suguangoutong\"}],\"menu\":\"宿管沟通管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"宿舍管理\",\"tableName\":\"susheguanli\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"论文信息\",\"menuJump\":\"列表\",\"tableName\":\"lunwenxinxi\"}],\"menu\":\"论文信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"教师沟通\",\"menuJump\":\"列表\",\"tableName\":\"jiaoshigoutong\"}],\"menu\":\"教师沟通管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"指导老师\",\"tableName\":\"zhidaolaoshi\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"导出\",\"导入\"],\"menu\":\"毕业证信息\",\"menuJump\":\"列表\",\"tableName\":\"biyezhengxinxi\"}],\"menu\":\"毕业证信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"辅导员沟通\",\"menuJump\":\"列表\",\"tableName\":\"fudaoyuangoutong\"}],\"menu\":\"辅导员沟通管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"辅导员\",\"tableName\":\"fudaoyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qianshuxinxi`
--

DROP TABLE IF EXISTS `qianshuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qianshuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `qianshubiaoti` varchar(200) DEFAULT NULL COMMENT '欠书标题',
  `shifouqianshu` varchar(200) DEFAULT NULL COMMENT '是否欠书',
  `qianshuqingkuang` longtext COMMENT '欠书情况',
  `koufeijine` float DEFAULT NULL COMMENT '扣费金额',
  `shenheqingkuang` varchar(200) DEFAULT NULL COMMENT '审核情况',
  `shenheyijian` longtext COMMENT '审核意见',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='欠书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qianshuxinxi`
--

LOCK TABLES `qianshuxinxi` WRITE;
/*!40000 ALTER TABLE `qianshuxinxi` DISABLE KEYS */;
INSERT INTO `qianshuxinxi` VALUES (131,'2022-07-22 22:34:29','1111111111','欠书标题1','是','欠书情况1',1,'通过','审核意见1','职工账号1','职工姓名1','学号1','姓名1','未支付'),(132,'2022-07-22 22:34:29','2222222222','欠书标题2','是','欠书情况2',2,'通过','审核意见2','职工账号2','职工姓名2','学号2','姓名2','未支付'),(133,'2022-07-22 22:34:29','3333333333','欠书标题3','是','欠书情况3',3,'通过','审核意见3','职工账号3','职工姓名3','学号3','姓名3','未支付'),(134,'2022-07-22 22:34:29','4444444444','欠书标题4','是','欠书情况4',4,'通过','审核意见4','职工账号4','职工姓名4','学号4','姓名4','未支付'),(135,'2022-07-22 22:34:29','5555555555','欠书标题5','是','欠书情况5',5,'通过','审核意见5','职工账号5','职工姓名5','学号5','姓名5','未支付'),(136,'2022-07-22 22:34:29','6666666666','欠书标题6','是','欠书情况6',6,'通过','审核意见6','职工账号6','职工姓名6','学号6','姓名6','未支付');
/*!40000 ALTER TABLE `qianshuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suguangoutong`
--

DROP TABLE IF EXISTS `suguangoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suguangoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` datetime DEFAULT NULL COMMENT '沟通时间',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='宿管沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suguangoutong`
--

LOCK TABLES `suguangoutong` WRITE;
/*!40000 ALTER TABLE `suguangoutong` DISABLE KEYS */;
INSERT INTO `suguangoutong` VALUES (201,'2022-07-22 22:34:29','标题1','沟通内容1','2022-07-23 06:34:29','职工账号1','职工姓名1','学号1','姓名1','是',''),(202,'2022-07-22 22:34:29','标题2','沟通内容2','2022-07-23 06:34:29','职工账号2','职工姓名2','学号2','姓名2','是',''),(203,'2022-07-22 22:34:29','标题3','沟通内容3','2022-07-23 06:34:29','职工账号3','职工姓名3','学号3','姓名3','是',''),(204,'2022-07-22 22:34:29','标题4','沟通内容4','2022-07-23 06:34:29','职工账号4','职工姓名4','学号4','姓名4','是',''),(205,'2022-07-22 22:34:29','标题5','沟通内容5','2022-07-23 06:34:29','职工账号5','职工姓名5','学号5','姓名5','是',''),(206,'2022-07-22 22:34:29','标题6','沟通内容6','2022-07-23 06:34:29','职工账号6','职工姓名6','学号6','姓名6','是','');
/*!40000 ALTER TABLE `suguangoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `susheguanli`
--

DROP TABLE IF EXISTS `susheguanli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `susheguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhigongzhanghao` varchar(200) NOT NULL COMMENT '职工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhigongxingming` varchar(200) NOT NULL COMMENT '职工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhigongzhanghao` (`zhigongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='宿舍管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `susheguanli`
--

LOCK TABLES `susheguanli` WRITE;
/*!40000 ALTER TABLE `susheguanli` DISABLE KEYS */;
INSERT INTO `susheguanli` VALUES (51,'2022-07-22 22:34:29','职工账号1','123456','职工姓名1','男','职务1','13823888881','773890001@qq.com'),(52,'2022-07-22 22:34:29','职工账号2','123456','职工姓名2','男','职务2','13823888882','773890002@qq.com'),(53,'2022-07-22 22:34:29','职工账号3','123456','职工姓名3','男','职务3','13823888883','773890003@qq.com'),(54,'2022-07-22 22:34:29','职工账号4','123456','职工姓名4','男','职务4','13823888884','773890004@qq.com'),(55,'2022-07-22 22:34:29','职工账号5','123456','职工姓名5','男','职务5','13823888885','773890005@qq.com'),(56,'2022-07-22 22:34:29','职工账号6','123456','职工姓名6','男','职务6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `susheguanli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushexinxi`
--

DROP TABLE IF EXISTS `sushexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `feiyongmingcheng` varchar(200) DEFAULT NULL COMMENT '费用名称',
  `guihaiyaochi` varchar(200) DEFAULT NULL COMMENT '归还钥匙',
  `sunhaigongwu` varchar(200) DEFAULT NULL COMMENT '损害公务',
  `feiyongzhesuan` float DEFAULT NULL COMMENT '费用折算',
  `feiyongmiaoshu` longtext COMMENT '费用描述',
  `shenheqingkuang` varchar(200) DEFAULT NULL COMMENT '审核情况',
  `shenheyijian` longtext COMMENT '审核意见',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushexinxi`
--

LOCK TABLES `sushexinxi` WRITE;
/*!40000 ALTER TABLE `sushexinxi` DISABLE KEYS */;
INSERT INTO `sushexinxi` VALUES (111,'2022-07-22 22:34:29','1111111111','费用名称1','是','是',1,'费用描述1','通过','审核意见1','职工账号1','职工姓名1','学号1','姓名1','未支付'),(112,'2022-07-22 22:34:29','2222222222','费用名称2','是','是',2,'费用描述2','通过','审核意见2','职工账号2','职工姓名2','学号2','姓名2','未支付'),(113,'2022-07-22 22:34:29','3333333333','费用名称3','是','是',3,'费用描述3','通过','审核意见3','职工账号3','职工姓名3','学号3','姓名3','未支付'),(114,'2022-07-22 22:34:29','4444444444','费用名称4','是','是',4,'费用描述4','通过','审核意见4','职工账号4','职工姓名4','学号4','姓名4','未支付'),(115,'2022-07-22 22:34:29','5555555555','费用名称5','是','是',5,'费用描述5','通过','审核意见5','职工账号5','职工姓名5','学号5','姓名5','未支付'),(116,'2022-07-22 22:34:29','6666666666','费用名称6','是','是',6,'费用描述6','通过','审核意见6','职工账号6','职工姓名6','学号6','姓名6','未支付');
/*!40000 ALTER TABLE `sushexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuguan`
--

DROP TABLE IF EXISTS `tushuguan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuguan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhigongzhanghao` varchar(200) NOT NULL COMMENT '职工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhigongxingming` varchar(200) NOT NULL COMMENT '职工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhigongzhanghao` (`zhigongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='图书馆';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuguan`
--

LOCK TABLES `tushuguan` WRITE;
/*!40000 ALTER TABLE `tushuguan` DISABLE KEYS */;
INSERT INTO `tushuguan` VALUES (41,'2022-07-22 22:34:29','职工账号1','123456','职工姓名1','男','职务1','13823888881','773890001@qq.com'),(42,'2022-07-22 22:34:29','职工账号2','123456','职工姓名2','男','职务2','13823888882','773890002@qq.com'),(43,'2022-07-22 22:34:29','职工账号3','123456','职工姓名3','男','职务3','13823888883','773890003@qq.com'),(44,'2022-07-22 22:34:29','职工账号4','123456','职工姓名4','男','职务4','13823888884','773890004@qq.com'),(45,'2022-07-22 22:34:29','职工账号5','123456','职工姓名5','男','职务5','13823888885','773890005@qq.com'),(46,'2022-07-22 22:34:29','职工账号6','123456','职工姓名6','男','职务6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `tushuguan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuguangoutong`
--

DROP TABLE IF EXISTS `tushuguangoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuguangoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` datetime DEFAULT NULL COMMENT '沟通时间',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='图书馆沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuguangoutong`
--

LOCK TABLES `tushuguangoutong` WRITE;
/*!40000 ALTER TABLE `tushuguangoutong` DISABLE KEYS */;
INSERT INTO `tushuguangoutong` VALUES (191,'2022-07-22 22:34:29','标题1','沟通内容1','2022-07-23 06:34:29','职工账号1','职工姓名1','学号1','姓名1','是',''),(192,'2022-07-22 22:34:29','标题2','沟通内容2','2022-07-23 06:34:29','职工账号2','职工姓名2','学号2','姓名2','是',''),(193,'2022-07-22 22:34:29','标题3','沟通内容3','2022-07-23 06:34:29','职工账号3','职工姓名3','学号3','姓名3','是',''),(194,'2022-07-22 22:34:29','标题4','沟通内容4','2022-07-23 06:34:29','职工账号4','职工姓名4','学号4','姓名4','是',''),(195,'2022-07-22 22:34:29','标题5','沟通内容5','2022-07-23 06:34:29','职工账号5','职工姓名5','学号5','姓名5','是',''),(196,'2022-07-22 22:34:29','标题6','沟通内容6','2022-07-23 06:34:29','职工账号6','职工姓名6','学号6','姓名6','是','');
/*!40000 ALTER TABLE `tushuguangoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-07-22 22:34:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuefenxinxi`
--

DROP TABLE IF EXISTS `xuefenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuefenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `shenheqingkuang` varchar(200) DEFAULT NULL COMMENT '审核情况',
  `shenheyijian` longtext COMMENT '审核意见',
  `zhigongzhanghao` varchar(200) DEFAULT NULL COMMENT '职工账号',
  `zhigongxingming` varchar(200) DEFAULT NULL COMMENT '职工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='学分信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuefenxinxi`
--

LOCK TABLES `xuefenxinxi` WRITE;
/*!40000 ALTER TABLE `xuefenxinxi` DISABLE KEYS */;
INSERT INTO `xuefenxinxi` VALUES (101,'2022-07-22 22:34:29','学号1','姓名1','院系1','专业1','学期1','学分1','通过','审核意见1','职工账号1','职工姓名1'),(102,'2022-07-22 22:34:29','学号2','姓名2','院系2','专业2','学期2','学分2','通过','审核意见2','职工账号2','职工姓名2'),(103,'2022-07-22 22:34:29','学号3','姓名3','院系3','专业3','学期3','学分3','通过','审核意见3','职工账号3','职工姓名3'),(104,'2022-07-22 22:34:29','学号4','姓名4','院系4','专业4','学期4','学分4','通过','审核意见4','职工账号4','职工姓名4'),(105,'2022-07-22 22:34:29','学号5','姓名5','院系5','专业5','学期5','学分5','通过','审核意见5','职工账号5','职工姓名5'),(106,'2022-07-22 22:34:29','学号6','姓名6','院系6','专业6','学期6','学分6','通过','审核意见6','职工账号6','职工姓名6');
/*!40000 ALTER TABLE `xuefenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhidaolaoshi`
--

DROP TABLE IF EXISTS `zhidaolaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhidaolaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhigongzhanghao` varchar(200) NOT NULL COMMENT '职工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhigongxingming` varchar(200) NOT NULL COMMENT '职工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhigongzhanghao` (`zhigongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='指导老师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhidaolaoshi`
--

LOCK TABLES `zhidaolaoshi` WRITE;
/*!40000 ALTER TABLE `zhidaolaoshi` DISABLE KEYS */;
INSERT INTO `zhidaolaoshi` VALUES (61,'2022-07-22 22:34:29','职工账号1','123456','职工姓名1','男','职务1','13823888881','773890001@qq.com'),(62,'2022-07-22 22:34:29','职工账号2','123456','职工姓名2','男','职务2','13823888882','773890002@qq.com'),(63,'2022-07-22 22:34:29','职工账号3','123456','职工姓名3','男','职务3','13823888883','773890003@qq.com'),(64,'2022-07-22 22:34:29','职工账号4','123456','职工姓名4','男','职务4','13823888884','773890004@qq.com'),(65,'2022-07-22 22:34:29','职工账号5','123456','职工姓名5','男','职务5','13823888885','773890005@qq.com'),(66,'2022-07-22 22:34:29','职工账号6','123456','职工姓名6','男','职务6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `zhidaolaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanyefenlei`
--

DROP TABLE IF EXISTS `zhuanyefenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanyefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='专业分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanyefenlei`
--

LOCK TABLES `zhuanyefenlei` WRITE;
/*!40000 ALTER TABLE `zhuanyefenlei` DISABLE KEYS */;
INSERT INTO `zhuanyefenlei` VALUES (171,'2022-07-22 22:34:29','类型1'),(172,'2022-07-22 22:34:29','类型2'),(173,'2022-07-22 22:34:29','类型3'),(174,'2022-07-22 22:34:29','类型4'),(175,'2022-07-22 22:34:29','类型5'),(176,'2022-07-22 22:34:29','类型6');
/*!40000 ALTER TABLE `zhuanyefenlei` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23  6:36:50
