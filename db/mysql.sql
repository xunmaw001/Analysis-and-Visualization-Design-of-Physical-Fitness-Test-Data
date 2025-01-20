DROP DATABASE IF EXISTS springboot6r8mn;

CREATE DATABASE springboot6r8mn default character set utf8mb4 collate utf8mb4_general_ci;

USE springboot6r8mn;

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200) NOT NULL UNIQUE   COMMENT '学号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`xueyuan` varchar(200)    COMMENT '学院',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(id,xuehao,mima,xingming,xingbie,touxiang,xueyuan,shouji) VALUES(11,'学生1','123456','姓名1','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang1.jpg','学院1','13823888881');
INSERT INTO xuesheng(id,xuehao,mima,xingming,xingbie,touxiang,xueyuan,shouji) VALUES(12,'学生2','123456','姓名2','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang2.jpg','学院2','13823888882');
INSERT INTO xuesheng(id,xuehao,mima,xingming,xingbie,touxiang,xueyuan,shouji) VALUES(13,'学生3','123456','姓名3','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang3.jpg','学院3','13823888883');
INSERT INTO xuesheng(id,xuehao,mima,xingming,xingbie,touxiang,xueyuan,shouji) VALUES(14,'学生4','123456','姓名4','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang4.jpg','学院4','13823888884');
INSERT INTO xuesheng(id,xuehao,mima,xingming,xingbie,touxiang,xueyuan,shouji) VALUES(15,'学生5','123456','姓名5','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang5.jpg','学院5','13823888885');
INSERT INTO xuesheng(id,xuehao,mima,xingming,xingbie,touxiang,xueyuan,shouji) VALUES(16,'学生6','123456','姓名6','男','http://localhost:8080/springboot6r8mn/upload/xuesheng_touxiang6.jpg','学院6','13823888886');

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonghao` varchar(200) NOT NULL UNIQUE   COMMENT '工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`xueyuan` varchar(200)    COMMENT '学院',
	`dianhua` varchar(200)    COMMENT '电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,xueyuan,dianhua) VALUES(21,'教师1','123456','教师姓名1','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang1.jpg','学院1','13823888881');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,xueyuan,dianhua) VALUES(22,'教师2','123456','教师姓名2','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang2.jpg','学院2','13823888882');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,xueyuan,dianhua) VALUES(23,'教师3','123456','教师姓名3','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang3.jpg','学院3','13823888883');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,xueyuan,dianhua) VALUES(24,'教师4','123456','教师姓名4','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang4.jpg','学院4','13823888884');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,xueyuan,dianhua) VALUES(25,'教师5','123456','教师姓名5','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang5.jpg','学院5','13823888885');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,touxiang,xueyuan,dianhua) VALUES(26,'教师6','123456','教师姓名6','男','http://localhost:8080/springboot6r8mn/upload/jiaoshi_touxiang6.jpg','学院6','13823888886');

DROP TABLE IF EXISTS `richangyundong`;

CREATE TABLE `richangyundong` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`leixing` varchar(200) NOT NULL   COMMENT '类型',
	`shijianmiao` varchar(200)    COMMENT '时间秒',
	`huodongneirong` longtext    COMMENT '活动内容',
	`riqi` date    COMMENT '日期',
	`xuehao` varchar(200)    COMMENT '学号',
	`xingming` varchar(200)    COMMENT '姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日常运动';

INSERT INTO richangyundong(id,mingcheng,leixing,shijianmiao,huodongneirong,riqi,xuehao,xingming) VALUES(31,'名称1','类型1','时间秒1','活动内容1',CURRENT_TIMESTAMP,'学号1','姓名1');
INSERT INTO richangyundong(id,mingcheng,leixing,shijianmiao,huodongneirong,riqi,xuehao,xingming) VALUES(32,'名称2','类型2','时间秒2','活动内容2',CURRENT_TIMESTAMP,'学号2','姓名2');
INSERT INTO richangyundong(id,mingcheng,leixing,shijianmiao,huodongneirong,riqi,xuehao,xingming) VALUES(33,'名称3','类型3','时间秒3','活动内容3',CURRENT_TIMESTAMP,'学号3','姓名3');
INSERT INTO richangyundong(id,mingcheng,leixing,shijianmiao,huodongneirong,riqi,xuehao,xingming) VALUES(34,'名称4','类型4','时间秒4','活动内容4',CURRENT_TIMESTAMP,'学号4','姓名4');
INSERT INTO richangyundong(id,mingcheng,leixing,shijianmiao,huodongneirong,riqi,xuehao,xingming) VALUES(35,'名称5','类型5','时间秒5','活动内容5',CURRENT_TIMESTAMP,'学号5','姓名5');
INSERT INTO richangyundong(id,mingcheng,leixing,shijianmiao,huodongneirong,riqi,xuehao,xingming) VALUES(36,'名称6','类型6','时间秒6','活动内容6',CURRENT_TIMESTAMP,'学号6','姓名6');

DROP TABLE IF EXISTS `yundongfenxi`;

CREATE TABLE `yundongfenxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`leixing` varchar(200)    COMMENT '类型',
	`xuehao` varchar(200)    COMMENT '学号',
	`xingming` varchar(200)    COMMENT '姓名',
	`shijianmiao` int    COMMENT '时间秒',
	`shujufenxi` varchar(200)    COMMENT '数据分析',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运动分析';

INSERT INTO yundongfenxi(id,mingcheng,leixing,xuehao,xingming,shijianmiao,shujufenxi,gonghao,jiaoshixingming) VALUES(41,'名称1','类型1','学号1','姓名1',1,'数据分析1','工号1','教师姓名1');
INSERT INTO yundongfenxi(id,mingcheng,leixing,xuehao,xingming,shijianmiao,shujufenxi,gonghao,jiaoshixingming) VALUES(42,'名称2','类型2','学号2','姓名2',2,'数据分析2','工号2','教师姓名2');
INSERT INTO yundongfenxi(id,mingcheng,leixing,xuehao,xingming,shijianmiao,shujufenxi,gonghao,jiaoshixingming) VALUES(43,'名称3','类型3','学号3','姓名3',3,'数据分析3','工号3','教师姓名3');
INSERT INTO yundongfenxi(id,mingcheng,leixing,xuehao,xingming,shijianmiao,shujufenxi,gonghao,jiaoshixingming) VALUES(44,'名称4','类型4','学号4','姓名4',4,'数据分析4','工号4','教师姓名4');
INSERT INTO yundongfenxi(id,mingcheng,leixing,xuehao,xingming,shijianmiao,shujufenxi,gonghao,jiaoshixingming) VALUES(45,'名称5','类型5','学号5','姓名5',5,'数据分析5','工号5','教师姓名5');
INSERT INTO yundongfenxi(id,mingcheng,leixing,xuehao,xingming,shijianmiao,shujufenxi,gonghao,jiaoshixingming) VALUES(46,'名称6','类型6','学号6','姓名6',6,'数据分析6','工号6','教师姓名6');

DROP TABLE IF EXISTS `chengjixinxi`;

CREATE TABLE `chengjixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`xuehao` varchar(200) NOT NULL   COMMENT '学号',
	`xingming` varchar(200)    COMMENT '姓名',
	`tiaoyuan` int    COMMENT '跳远',
	`paobu` int    COMMENT '跑步',
	`yangwo` int    COMMENT '仰卧',
	`qianqiu` int    COMMENT '铅球',
	`tiaosheng` int    COMMENT '跳绳',
	`zongchengji` int    COMMENT '总成绩',
	`ceshishu` varchar(200)    COMMENT '测试数',
	`gonghao` varchar(200)    COMMENT '工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩信息';

INSERT INTO chengjixinxi(id,mingcheng,xuehao,xingming,tiaoyuan,paobu,yangwo,qianqiu,tiaosheng,zongchengji,ceshishu,gonghao,jiaoshixingming) VALUES(51,'名称1','学号1','姓名1',1,1,1,1,1,1,'优秀','工号1','教师姓名1');
INSERT INTO chengjixinxi(id,mingcheng,xuehao,xingming,tiaoyuan,paobu,yangwo,qianqiu,tiaosheng,zongchengji,ceshishu,gonghao,jiaoshixingming) VALUES(52,'名称2','学号2','姓名2',2,2,2,2,2,2,'优秀','工号2','教师姓名2');
INSERT INTO chengjixinxi(id,mingcheng,xuehao,xingming,tiaoyuan,paobu,yangwo,qianqiu,tiaosheng,zongchengji,ceshishu,gonghao,jiaoshixingming) VALUES(53,'名称3','学号3','姓名3',3,3,3,3,3,3,'优秀','工号3','教师姓名3');
INSERT INTO chengjixinxi(id,mingcheng,xuehao,xingming,tiaoyuan,paobu,yangwo,qianqiu,tiaosheng,zongchengji,ceshishu,gonghao,jiaoshixingming) VALUES(54,'名称4','学号4','姓名4',4,4,4,4,4,4,'优秀','工号4','教师姓名4');
INSERT INTO chengjixinxi(id,mingcheng,xuehao,xingming,tiaoyuan,paobu,yangwo,qianqiu,tiaosheng,zongchengji,ceshishu,gonghao,jiaoshixingming) VALUES(55,'名称5','学号5','姓名5',5,5,5,5,5,5,'优秀','工号5','教师姓名5');
INSERT INTO chengjixinxi(id,mingcheng,xuehao,xingming,tiaoyuan,paobu,yangwo,qianqiu,tiaosheng,zongchengji,ceshishu,gonghao,jiaoshixingming) VALUES(56,'名称6','学号6','姓名6',6,6,6,6,6,6,'优秀','工号6','教师姓名6');

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='师生沟通聊天表';

INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(61,1,1,'提问1','回复1',1);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(62,2,2,'提问2','回复2',2);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(63,3,3,'提问3','回复3',3);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(64,4,4,'提问4','回复4',4);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(65,5,5,'提问5','回复5',5);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(66,6,6,'提问6','回复6',6);

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(71,'帖子标题1','帖子内容1',1,1,'用户名1','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(72,'帖子标题2','帖子内容2',2,2,'用户名2','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(73,'帖子标题3','帖子内容3',3,3,'用户名3','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(74,'帖子标题4','帖子内容4',4,4,'用户名4','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(75,'帖子标题5','帖子内容5',5,5,'用户名5','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(76,'帖子标题6','帖子内容6',6,6,'用户名6','开放');

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告信息';

INSERT INTO news(id,title,picture,content) VALUES(81,'标题1','http://localhost:8080/springboot6r8mn/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,picture,content) VALUES(82,'标题2','http://localhost:8080/springboot6r8mn/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,picture,content) VALUES(83,'标题3','http://localhost:8080/springboot6r8mn/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,picture,content) VALUES(84,'标题4','http://localhost:8080/springboot6r8mn/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,picture,content) VALUES(85,'标题5','http://localhost:8080/springboot6r8mn/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,picture,content) VALUES(86,'标题6','http://localhost:8080/springboot6r8mn/upload/news_picture6.jpg','内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/springboot6r8mn/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/springboot6r8mn/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/springboot6r8mn/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

