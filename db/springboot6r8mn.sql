-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot6r8mn
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='师生沟通聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-01-07 12:08:33',1,1,'提问1','回复1',1),(62,'2021-01-07 12:08:33',2,2,'提问2','回复2',2),(63,'2021-01-07 12:08:33',3,3,'提问3','回复3',3),(64,'2021-01-07 12:08:33',4,4,'提问4','回复4',4),(65,'2021-01-07 12:08:33',5,5,'提问5','回复5',5),(66,'2021-01-07 12:08:33',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengjixinxi`
--

DROP TABLE IF EXISTS `chengjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tiaoyuan` int(11) DEFAULT NULL COMMENT '跳远',
  `paobu` int(11) DEFAULT NULL COMMENT '跑步',
  `yangwo` int(11) DEFAULT NULL COMMENT '仰卧',
  `qianqiu` int(11) DEFAULT NULL COMMENT '铅球',
  `tiaosheng` int(11) DEFAULT NULL COMMENT '跳绳',
  `zongchengji` int(11) DEFAULT NULL COMMENT '总成绩',
  `ceshishu` varchar(200) DEFAULT NULL COMMENT '测试数',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610021631989 DEFAULT CHARSET=utf8 COMMENT='成绩信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengjixinxi`
--

LOCK TABLES `chengjixinxi` WRITE;
/*!40000 ALTER TABLE `chengjixinxi` DISABLE KEYS */;
INSERT INTO `chengjixinxi` VALUES (51,'2021-01-07 12:08:33','名称1','学号1','姓名1',1,1,1,1,1,1,'优秀','工号1','教师姓名1'),(52,'2021-01-07 12:08:33','名称2','学号2','姓名2',2,2,2,2,2,10,'及格','001','教师姓名1'),(53,'2021-01-07 12:08:33','名称3','学号3','姓名3',3,3,3,3,3,3,'优秀','工号3','教师姓名3'),(54,'2021-01-07 12:08:33','名称4','学号4','姓名4',4,4,4,4,4,20,'良好','001','教师姓名1'),(55,'2021-01-07 12:08:33','名称5','学号5','姓名5',5,5,5,5,5,5,'优秀','工号5','教师姓名5'),(56,'2021-01-07 12:08:33','名称6','学号6','姓名6',6,6,6,6,6,6,'优秀','工号6','教师姓名6'),(1610021631988,'2021-01-07 12:13:51','测试成绩信息','001','李明',20,20,0,0,20,60,'及格','001','教师姓名1');
/*!40000 ALTER TABLE `chengjixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot6r8mn/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot6r8mn/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot6r8mn/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-01-07 12:08:33','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-01-07 12:08:33','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-01-07 12:08:33','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-01-07 12:08:33','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-01-07 12:08:33','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-01-07 12:08:33','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-01-07 12:08:33','001','001','教师姓名1','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang1.jpg','学院1','13823888881'),(22,'2021-01-07 12:08:33','教师2','123456','教师姓名2','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang2.jpg','学院2','13823888882'),(23,'2021-01-07 12:08:33','教师3','123456','教师姓名3','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang3.jpg','学院3','13823888883'),(24,'2021-01-07 12:08:33','教师4','123456','教师姓名4','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang4.jpg','学院4','13823888884'),(25,'2021-01-07 12:08:33','教师5','123456','教师姓名5','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang5.jpg','学院5','13823888885'),(26,'2021-01-07 12:08:33','教师6','123456','教师姓名6','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang6.jpg','学院6','13823888886');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-01-07 12:08:33','标题1','http://localhost:8080/springboot6r8mn/upload/news_picture1.jpg','内容1'),(82,'2021-01-07 12:08:33','标题2','http://localhost:8080/springboot6r8mn/upload/news_picture2.jpg','内容2'),(83,'2021-01-07 12:08:33','标题3','http://localhost:8080/springboot6r8mn/upload/news_picture3.jpg','内容3'),(84,'2021-01-07 12:08:33','标题4','http://localhost:8080/springboot6r8mn/upload/news_picture4.jpg','内容4'),(85,'2021-01-07 12:08:33','标题5','http://localhost:8080/springboot6r8mn/upload/news_picture5.jpg','内容5'),(86,'2021-01-07 12:08:33','标题6','http://localhost:8080/springboot6r8mn/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `richangyundong`
--

DROP TABLE IF EXISTS `richangyundong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `richangyundong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `shijianmiao` varchar(200) DEFAULT NULL COMMENT '时间秒',
  `huodongneirong` longtext COMMENT '活动内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='日常运动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richangyundong`
--

LOCK TABLES `richangyundong` WRITE;
/*!40000 ALTER TABLE `richangyundong` DISABLE KEYS */;
INSERT INTO `richangyundong` VALUES (31,'2021-01-07 12:08:33','名称1','类型1','时间秒1','活动内容1','2021-01-07','学号1','姓名1'),(32,'2021-01-07 12:08:33','名称2','类型2','时间秒2','活动内容2','2021-01-07','学号2','姓名2'),(33,'2021-01-07 12:08:33','名称3','类型3','时间秒3','活动内容3','2021-01-07','学号3','姓名3'),(34,'2021-01-07 12:08:33','名称4','类型4','时间秒4','活动内容4','2021-01-07','学号4','姓名4'),(35,'2021-01-07 12:08:33','名称5','类型5','时间秒5','活动内容5','2021-01-07','学号5','姓名5'),(36,'2021-01-07 12:08:33','名称6','类型6','时间秒6','活动内容6','2021-01-07','学号6','姓名6');
/*!40000 ALTER TABLE `richangyundong` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','lix0nmniyzk87zcuo3k8sppnzk9rs0zz','2021-01-07 12:10:22','2021-01-07 05:11:09'),(2,21,'001','jiaoshi','管理员','sxupjkgkkb4gr1uwnhbpzs41d2hnitso','2021-01-07 12:10:47','2021-01-07 05:14:06'),(3,11,'001','xuesheng','学生','0m7i8rmhvbevhalxw7l7yg732aiam2mo','2021-01-07 12:13:56','2021-01-07 05:13:57');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-07 12:08:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-01-07 12:08:33','001','001','李明','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang1.jpg','学院1','13823888881'),(12,'2021-01-07 12:08:33','学生2','123456','姓名2','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang2.jpg','学院2','13823888882'),(13,'2021-01-07 12:08:33','学生3','123456','姓名3','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang3.jpg','学院3','13823888883'),(14,'2021-01-07 12:08:33','学生4','123456','姓名4','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang4.jpg','学院4','13823888884'),(15,'2021-01-07 12:08:33','学生5','123456','姓名5','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang5.jpg','学院5','13823888885'),(16,'2021-01-07 12:08:33','学生6','123456','姓名6','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang6.jpg','学院6','13823888886');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongfenxi`
--

DROP TABLE IF EXISTS `yundongfenxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongfenxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shijianmiao` int(11) DEFAULT NULL COMMENT '时间秒',
  `shujufenxi` varchar(200) DEFAULT NULL COMMENT '数据分析',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='运动分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongfenxi`
--

LOCK TABLES `yundongfenxi` WRITE;
/*!40000 ALTER TABLE `yundongfenxi` DISABLE KEYS */;
INSERT INTO `yundongfenxi` VALUES (41,'2021-01-07 12:08:33','名称1','类型1','学号1','姓名1',1,'数据分析1','工号1','教师姓名1'),(42,'2021-01-07 12:08:33','名称2','类型2','学号2','姓名2',2,'数据分析2','工号2','教师姓名2'),(43,'2021-01-07 12:08:33','名称3','类型3','学号3','姓名3',3,'数据分析3','工号3','教师姓名3'),(44,'2021-01-07 12:08:33','名称4','类型4','学号4','姓名4',4,'数据分析4','工号4','教师姓名4'),(45,'2021-01-07 12:08:33','名称5','类型5','学号5','姓名5',5,'数据分析5','工号5','教师姓名5'),(46,'2021-01-07 12:08:33','名称6','类型6','学号6','姓名6',6,'数据分析6','工号6','教师姓名6');
/*!40000 ALTER TABLE `yundongfenxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 20:27:20
