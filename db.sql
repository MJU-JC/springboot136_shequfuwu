/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot54r3f
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot54r3f` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot54r3f`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot54r3f/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot54r3f/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot54r3f/upload/picture3.jpg');

/*Table structure for table `discussshequhuodong` */

DROP TABLE IF EXISTS `discussshequhuodong`;

CREATE TABLE `discussshequhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='社区活动评论表';

/*Data for the table `discussshequhuodong` */

insert  into `discussshequhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-28 13:21:29',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshequhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-28 13:21:29',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshequhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-28 13:21:29',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshequhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-28 13:21:29',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshequhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-28 13:21:29',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshequhuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-28 13:21:29',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `huodongbaoming` */

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `shenqingshuoming` varchar(200) DEFAULT NULL COMMENT '申请说明',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodongbaoming` */

insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`shenqingshuoming`,`baomingshijian`,`yuangonggonghao`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (51,'2021-05-28 13:21:28','活动名称1','活动地点1','申请说明1','2021-05-28','员工工号1','账号1','姓名1','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`shenqingshuoming`,`baomingshijian`,`yuangonggonghao`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (52,'2021-05-28 13:21:28','活动名称2','活动地点2','申请说明2','2021-05-28','员工工号2','账号2','姓名2','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`shenqingshuoming`,`baomingshijian`,`yuangonggonghao`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (53,'2021-05-28 13:21:28','活动名称3','活动地点3','申请说明3','2021-05-28','员工工号3','账号3','姓名3','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`shenqingshuoming`,`baomingshijian`,`yuangonggonghao`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (54,'2021-05-28 13:21:28','活动名称4','活动地点4','申请说明4','2021-05-28','员工工号4','账号4','姓名4','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`shenqingshuoming`,`baomingshijian`,`yuangonggonghao`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (55,'2021-05-28 13:21:28','活动名称5','活动地点5','申请说明5','2021-05-28','员工工号5','账号5','姓名5','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`shenqingshuoming`,`baomingshijian`,`yuangonggonghao`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (56,'2021-05-28 13:21:28','活动名称6','活动地点6','申请说明6','2021-05-28','员工工号6','账号6','姓名6','是','');

/*Table structure for table `laorenxinxi` */

DROP TABLE IF EXISTS `laorenxinxi`;

CREATE TABLE `laorenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `jiashuxinxi` longtext COMMENT '家属信息',
  `shifouduju` varchar(200) DEFAULT NULL COMMENT '是否独居',
  `shifoushengbing` varchar(200) DEFAULT NULL COMMENT '是否生病',
  `fangwenzhouqi` varchar(200) DEFAULT NULL COMMENT '访问周期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='老人信息';

/*Data for the table `laorenxinxi` */

insert  into `laorenxinxi`(`id`,`addtime`,`laorenxingming`,`xingbie`,`nianling`,`zhuzhi`,`jiashuxinxi`,`shifouduju`,`shifoushengbing`,`fangwenzhouqi`,`zhanghao`,`xingming`,`yuangonggonghao`,`yuangongxingming`) values (61,'2021-05-28 13:21:28','老人姓名1','男',1,'住址1','家属信息1','是','是','访问周期1','账号1','姓名1','员工工号1','员工姓名1');
insert  into `laorenxinxi`(`id`,`addtime`,`laorenxingming`,`xingbie`,`nianling`,`zhuzhi`,`jiashuxinxi`,`shifouduju`,`shifoushengbing`,`fangwenzhouqi`,`zhanghao`,`xingming`,`yuangonggonghao`,`yuangongxingming`) values (62,'2021-05-28 13:21:28','老人姓名2','男',2,'住址2','家属信息2','是','是','访问周期2','账号2','姓名2','员工工号2','员工姓名2');
insert  into `laorenxinxi`(`id`,`addtime`,`laorenxingming`,`xingbie`,`nianling`,`zhuzhi`,`jiashuxinxi`,`shifouduju`,`shifoushengbing`,`fangwenzhouqi`,`zhanghao`,`xingming`,`yuangonggonghao`,`yuangongxingming`) values (63,'2021-05-28 13:21:28','老人姓名3','男',3,'住址3','家属信息3','是','是','访问周期3','账号3','姓名3','员工工号3','员工姓名3');
insert  into `laorenxinxi`(`id`,`addtime`,`laorenxingming`,`xingbie`,`nianling`,`zhuzhi`,`jiashuxinxi`,`shifouduju`,`shifoushengbing`,`fangwenzhouqi`,`zhanghao`,`xingming`,`yuangonggonghao`,`yuangongxingming`) values (64,'2021-05-28 13:21:28','老人姓名4','男',4,'住址4','家属信息4','是','是','访问周期4','账号4','姓名4','员工工号4','员工姓名4');
insert  into `laorenxinxi`(`id`,`addtime`,`laorenxingming`,`xingbie`,`nianling`,`zhuzhi`,`jiashuxinxi`,`shifouduju`,`shifoushengbing`,`fangwenzhouqi`,`zhanghao`,`xingming`,`yuangonggonghao`,`yuangongxingming`) values (65,'2021-05-28 13:21:29','老人姓名5','男',5,'住址5','家属信息5','是','是','访问周期5','账号5','姓名5','员工工号5','员工姓名5');
insert  into `laorenxinxi`(`id`,`addtime`,`laorenxingming`,`xingbie`,`nianling`,`zhuzhi`,`jiashuxinxi`,`shifouduju`,`shifoushengbing`,`fangwenzhouqi`,`zhanghao`,`xingming`,`yuangonggonghao`,`yuangongxingming`) values (66,'2021-05-28 13:21:29','老人姓名6','男',6,'住址6','家属信息6','是','是','访问周期6','账号6','姓名6','员工工号6','员工姓名6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='社区资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-05-28 13:21:29','标题1','简介1','http://localhost:8080/springboot54r3f/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (122,'2021-05-28 13:21:29','标题2','简介2','http://localhost:8080/springboot54r3f/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (123,'2021-05-28 13:21:29','标题3','简介3','http://localhost:8080/springboot54r3f/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (124,'2021-05-28 13:21:29','标题4','简介4','http://localhost:8080/springboot54r3f/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (125,'2021-05-28 13:21:29','标题5','简介5','http://localhost:8080/springboot54r3f/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (126,'2021-05-28 13:21:29','标题6','简介6','http://localhost:8080/springboot54r3f/upload/news_picture6.jpg','内容6');

/*Table structure for table `shequfuwu` */

DROP TABLE IF EXISTS `shequfuwu`;

CREATE TABLE `shequfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `fuwudizhi` varchar(200) DEFAULT NULL COMMENT '服务地址',
  `fuwuneirong` longtext COMMENT '服务内容',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `beizhu` longtext COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社区服务';

/*Data for the table `shequfuwu` */

insert  into `shequfuwu`(`id`,`addtime`,`fuwumingcheng`,`fuwuleixing`,`fuwudizhi`,`fuwuneirong`,`shenqingshijian`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (101,'2021-05-28 13:21:29','服务名称1','服务类型1','服务地址1','服务内容1','2021-05-28','备注1','账号1','姓名1','是','');
insert  into `shequfuwu`(`id`,`addtime`,`fuwumingcheng`,`fuwuleixing`,`fuwudizhi`,`fuwuneirong`,`shenqingshijian`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (102,'2021-05-28 13:21:29','服务名称2','服务类型2','服务地址2','服务内容2','2021-05-28','备注2','账号2','姓名2','是','');
insert  into `shequfuwu`(`id`,`addtime`,`fuwumingcheng`,`fuwuleixing`,`fuwudizhi`,`fuwuneirong`,`shenqingshijian`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (103,'2021-05-28 13:21:29','服务名称3','服务类型3','服务地址3','服务内容3','2021-05-28','备注3','账号3','姓名3','是','');
insert  into `shequfuwu`(`id`,`addtime`,`fuwumingcheng`,`fuwuleixing`,`fuwudizhi`,`fuwuneirong`,`shenqingshijian`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (104,'2021-05-28 13:21:29','服务名称4','服务类型4','服务地址4','服务内容4','2021-05-28','备注4','账号4','姓名4','是','');
insert  into `shequfuwu`(`id`,`addtime`,`fuwumingcheng`,`fuwuleixing`,`fuwudizhi`,`fuwuneirong`,`shenqingshijian`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (105,'2021-05-28 13:21:29','服务名称5','服务类型5','服务地址5','服务内容5','2021-05-28','备注5','账号5','姓名5','是','');
insert  into `shequfuwu`(`id`,`addtime`,`fuwumingcheng`,`fuwuleixing`,`fuwudizhi`,`fuwuneirong`,`shenqingshijian`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (106,'2021-05-28 13:21:29','服务名称6','服务类型6','服务地址6','服务内容6','2021-05-28','备注6','账号6','姓名6','是','');

/*Table structure for table `shequhuodong` */

DROP TABLE IF EXISTS `shequhuodong`;

CREATE TABLE `shequhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `baomingtiaojian` longtext COMMENT '报名条件',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongneirong` longtext COMMENT '活动内容',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='社区活动';

/*Data for the table `shequhuodong` */

insert  into `shequhuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`baomingtiaojian`,`kaishishijian`,`jieshushijian`,`huodongneirong`,`yuangonggonghao`,`lianxidianhua`,`huodongtupian`) values (41,'2021-05-28 13:21:28','活动名称1','活动地点1','报名条件1','2021-05-28','2021-05-28','活动内容1','员工工号1','13823888881','http://localhost:8080/springboot54r3f/upload/shequhuodong_huodongtupian1.jpg');
insert  into `shequhuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`baomingtiaojian`,`kaishishijian`,`jieshushijian`,`huodongneirong`,`yuangonggonghao`,`lianxidianhua`,`huodongtupian`) values (42,'2021-05-28 13:21:28','活动名称2','活动地点2','报名条件2','2021-05-28','2021-05-28','活动内容2','员工工号2','13823888882','http://localhost:8080/springboot54r3f/upload/shequhuodong_huodongtupian2.jpg');
insert  into `shequhuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`baomingtiaojian`,`kaishishijian`,`jieshushijian`,`huodongneirong`,`yuangonggonghao`,`lianxidianhua`,`huodongtupian`) values (43,'2021-05-28 13:21:28','活动名称3','活动地点3','报名条件3','2021-05-28','2021-05-28','活动内容3','员工工号3','13823888883','http://localhost:8080/springboot54r3f/upload/shequhuodong_huodongtupian3.jpg');
insert  into `shequhuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`baomingtiaojian`,`kaishishijian`,`jieshushijian`,`huodongneirong`,`yuangonggonghao`,`lianxidianhua`,`huodongtupian`) values (44,'2021-05-28 13:21:28','活动名称4','活动地点4','报名条件4','2021-05-28','2021-05-28','活动内容4','员工工号4','13823888884','http://localhost:8080/springboot54r3f/upload/shequhuodong_huodongtupian4.jpg');
insert  into `shequhuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`baomingtiaojian`,`kaishishijian`,`jieshushijian`,`huodongneirong`,`yuangonggonghao`,`lianxidianhua`,`huodongtupian`) values (45,'2021-05-28 13:21:28','活动名称5','活动地点5','报名条件5','2021-05-28','2021-05-28','活动内容5','员工工号5','13823888885','http://localhost:8080/springboot54r3f/upload/shequhuodong_huodongtupian5.jpg');
insert  into `shequhuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongdidian`,`baomingtiaojian`,`kaishishijian`,`jieshushijian`,`huodongneirong`,`yuangonggonghao`,`lianxidianhua`,`huodongtupian`) values (46,'2021-05-28 13:21:28','活动名称6','活动地点6','报名条件6','2021-05-28','2021-05-28','活动内容6','员工工号6','13823888886','http://localhost:8080/springboot54r3f/upload/shequhuodong_huodongtupian6.jpg');

/*Table structure for table `shequwenjian` */

DROP TABLE IF EXISTS `shequwenjian`;

CREATE TABLE `shequwenjian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjianbianhao` varchar(200) DEFAULT NULL COMMENT '文件编号',
  `wenjianmingcheng` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `wenjianneirong` longtext COMMENT '文件内容',
  `wenjianxiazai` varchar(200) DEFAULT NULL COMMENT '文件下载',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenjianbianhao` (`wenjianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='社区文件';

/*Data for the table `shequwenjian` */

insert  into `shequwenjian`(`id`,`addtime`,`wenjianbianhao`,`wenjianmingcheng`,`wenjianneirong`,`wenjianxiazai`,`faburen`,`faburiqi`,`tupian`) values (71,'2021-05-28 13:21:29','文件编号1','文件名称1','文件内容1','','发布人1','2021-05-28','http://localhost:8080/springboot54r3f/upload/shequwenjian_tupian1.jpg');
insert  into `shequwenjian`(`id`,`addtime`,`wenjianbianhao`,`wenjianmingcheng`,`wenjianneirong`,`wenjianxiazai`,`faburen`,`faburiqi`,`tupian`) values (72,'2021-05-28 13:21:29','文件编号2','文件名称2','文件内容2','','发布人2','2021-05-28','http://localhost:8080/springboot54r3f/upload/shequwenjian_tupian2.jpg');
insert  into `shequwenjian`(`id`,`addtime`,`wenjianbianhao`,`wenjianmingcheng`,`wenjianneirong`,`wenjianxiazai`,`faburen`,`faburiqi`,`tupian`) values (73,'2021-05-28 13:21:29','文件编号3','文件名称3','文件内容3','','发布人3','2021-05-28','http://localhost:8080/springboot54r3f/upload/shequwenjian_tupian3.jpg');
insert  into `shequwenjian`(`id`,`addtime`,`wenjianbianhao`,`wenjianmingcheng`,`wenjianneirong`,`wenjianxiazai`,`faburen`,`faburiqi`,`tupian`) values (74,'2021-05-28 13:21:29','文件编号4','文件名称4','文件内容4','','发布人4','2021-05-28','http://localhost:8080/springboot54r3f/upload/shequwenjian_tupian4.jpg');
insert  into `shequwenjian`(`id`,`addtime`,`wenjianbianhao`,`wenjianmingcheng`,`wenjianneirong`,`wenjianxiazai`,`faburen`,`faburiqi`,`tupian`) values (75,'2021-05-28 13:21:29','文件编号5','文件名称5','文件内容5','','发布人5','2021-05-28','http://localhost:8080/springboot54r3f/upload/shequwenjian_tupian5.jpg');
insert  into `shequwenjian`(`id`,`addtime`,`wenjianbianhao`,`wenjianmingcheng`,`wenjianneirong`,`wenjianxiazai`,`faburen`,`faburiqi`,`tupian`) values (76,'2021-05-28 13:21:29','文件编号6','文件名称6','文件内容6','','发布人6','2021-05-28','http://localhost:8080/springboot54r3f/upload/shequwenjian_tupian6.jpg');

/*Table structure for table `shequxinxi` */

DROP TABLE IF EXISTS `shequxinxi`;

CREATE TABLE `shequxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shequmingcheng` varchar(200) DEFAULT NULL COMMENT '社区名称',
  `lishujiedao` varchar(200) DEFAULT NULL COMMENT '隶属街道',
  `shequdizhi` varchar(200) DEFAULT NULL COMMENT '社区地址',
  `changzhurenkou` int(11) DEFAULT NULL COMMENT '常住人口',
  `laolingrenkou` int(11) DEFAULT NULL COMMENT '老龄人口',
  `shequjieshao` longtext COMMENT '社区介绍',
  `shequyouxiang` varchar(200) DEFAULT NULL COMMENT '社区邮箱',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shequtupian` varchar(200) DEFAULT NULL COMMENT '社区图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='社区信息';

/*Data for the table `shequxinxi` */

insert  into `shequxinxi`(`id`,`addtime`,`shequmingcheng`,`lishujiedao`,`shequdizhi`,`changzhurenkou`,`laolingrenkou`,`shequjieshao`,`shequyouxiang`,`lianxidianhua`,`shequtupian`) values (31,'2021-05-28 13:21:28','社区名称1','隶属街道1','社区地址1',1,1,'社区介绍1','773890001@qq.com','13823888881','http://localhost:8080/springboot54r3f/upload/shequxinxi_shequtupian1.jpg');
insert  into `shequxinxi`(`id`,`addtime`,`shequmingcheng`,`lishujiedao`,`shequdizhi`,`changzhurenkou`,`laolingrenkou`,`shequjieshao`,`shequyouxiang`,`lianxidianhua`,`shequtupian`) values (32,'2021-05-28 13:21:28','社区名称2','隶属街道2','社区地址2',2,2,'社区介绍2','773890002@qq.com','13823888882','http://localhost:8080/springboot54r3f/upload/shequxinxi_shequtupian2.jpg');
insert  into `shequxinxi`(`id`,`addtime`,`shequmingcheng`,`lishujiedao`,`shequdizhi`,`changzhurenkou`,`laolingrenkou`,`shequjieshao`,`shequyouxiang`,`lianxidianhua`,`shequtupian`) values (33,'2021-05-28 13:21:28','社区名称3','隶属街道3','社区地址3',3,3,'社区介绍3','773890003@qq.com','13823888883','http://localhost:8080/springboot54r3f/upload/shequxinxi_shequtupian3.jpg');
insert  into `shequxinxi`(`id`,`addtime`,`shequmingcheng`,`lishujiedao`,`shequdizhi`,`changzhurenkou`,`laolingrenkou`,`shequjieshao`,`shequyouxiang`,`lianxidianhua`,`shequtupian`) values (34,'2021-05-28 13:21:28','社区名称4','隶属街道4','社区地址4',4,4,'社区介绍4','773890004@qq.com','13823888884','http://localhost:8080/springboot54r3f/upload/shequxinxi_shequtupian4.jpg');
insert  into `shequxinxi`(`id`,`addtime`,`shequmingcheng`,`lishujiedao`,`shequdizhi`,`changzhurenkou`,`laolingrenkou`,`shequjieshao`,`shequyouxiang`,`lianxidianhua`,`shequtupian`) values (35,'2021-05-28 13:21:28','社区名称5','隶属街道5','社区地址5',5,5,'社区介绍5','773890005@qq.com','13823888885','http://localhost:8080/springboot54r3f/upload/shequxinxi_shequtupian5.jpg');
insert  into `shequxinxi`(`id`,`addtime`,`shequmingcheng`,`lishujiedao`,`shequdizhi`,`changzhurenkou`,`laolingrenkou`,`shequjieshao`,`shequyouxiang`,`lianxidianhua`,`shequtupian`) values (36,'2021-05-28 13:21:28','社区名称6','隶属街道6','社区地址6',6,6,'社区介绍6','773890006@qq.com','13823888886','http://localhost:8080/springboot54r3f/upload/shequxinxi_shequtupian6.jpg');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,2:赞,3:踩)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1622179341504,'1','yonghu','用户','odvsjy7legfmof5fnxkg5rlk4x5le40k','2021-05-28 13:22:25','2021-05-28 14:22:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-28 13:21:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shengri` varchar(200) DEFAULT NULL COMMENT '生日',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1622179341505 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`xiaoqumingcheng`,`loufanghao`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (11,'2021-05-28 13:21:28','用户1','123456','姓名1','男','小区名称1','楼房号1','13823888881','440300199101010001','生日1','http://localhost:8080/springboot54r3f/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`xiaoqumingcheng`,`loufanghao`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (12,'2021-05-28 13:21:28','用户2','123456','姓名2','男','小区名称2','楼房号2','13823888882','440300199202020002','生日2','http://localhost:8080/springboot54r3f/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`xiaoqumingcheng`,`loufanghao`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (13,'2021-05-28 13:21:28','用户3','123456','姓名3','男','小区名称3','楼房号3','13823888883','440300199303030003','生日3','http://localhost:8080/springboot54r3f/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`xiaoqumingcheng`,`loufanghao`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (14,'2021-05-28 13:21:28','用户4','123456','姓名4','男','小区名称4','楼房号4','13823888884','440300199404040004','生日4','http://localhost:8080/springboot54r3f/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`xiaoqumingcheng`,`loufanghao`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (15,'2021-05-28 13:21:28','用户5','123456','姓名5','男','小区名称5','楼房号5','13823888885','440300199505050005','生日5','http://localhost:8080/springboot54r3f/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`xiaoqumingcheng`,`loufanghao`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (16,'2021-05-28 13:21:28','用户6','123456','姓名6','男','小区名称6','楼房号6','13823888886','440300199606060006','生日6','http://localhost:8080/springboot54r3f/upload/yonghu_touxiang6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`xiaoqumingcheng`,`loufanghao`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (1622179341504,'2021-05-28 13:22:21','1','1','1',NULL,NULL,NULL,NULL,NULL,'2月17',NULL);

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xiaoqumingcheng` varchar(200) DEFAULT NULL COMMENT '小区名称',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`xiaoqumingcheng`,`zhiwu`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (21,'2021-05-28 13:21:28','员工1','123456','员工姓名1','男','小区名称1','职务1','13823888881','440300199101010001','http://localhost:8080/springboot54r3f/upload/yuangong_touxiang1.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`xiaoqumingcheng`,`zhiwu`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (22,'2021-05-28 13:21:28','员工2','123456','员工姓名2','男','小区名称2','职务2','13823888882','440300199202020002','http://localhost:8080/springboot54r3f/upload/yuangong_touxiang2.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`xiaoqumingcheng`,`zhiwu`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (23,'2021-05-28 13:21:28','员工3','123456','员工姓名3','男','小区名称3','职务3','13823888883','440300199303030003','http://localhost:8080/springboot54r3f/upload/yuangong_touxiang3.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`xiaoqumingcheng`,`zhiwu`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (24,'2021-05-28 13:21:28','员工4','123456','员工姓名4','男','小区名称4','职务4','13823888884','440300199404040004','http://localhost:8080/springboot54r3f/upload/yuangong_touxiang4.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`xiaoqumingcheng`,`zhiwu`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (25,'2021-05-28 13:21:28','员工5','123456','员工姓名5','男','小区名称5','职务5','13823888885','440300199505050005','http://localhost:8080/springboot54r3f/upload/yuangong_touxiang5.jpg');
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`xiaoqumingcheng`,`zhiwu`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (26,'2021-05-28 13:21:28','员工6','123456','员工姓名6','男','小区名称6','职务6','13823888886','440300199606060006','http://localhost:8080/springboot54r3f/upload/yuangong_touxiang6.jpg');

/*Table structure for table `zoufangrenwu` */

DROP TABLE IF EXISTS `zoufangrenwu`;

CREATE TABLE `zoufangrenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `renwuleixing` varchar(200) DEFAULT NULL COMMENT '任务类型',
  `renwudidian` varchar(200) DEFAULT NULL COMMENT '任务地点',
  `renwumubiao` varchar(200) DEFAULT NULL COMMENT '任务目标',
  `renwuneirong` longtext COMMENT '任务内容',
  `renwuriqi` date DEFAULT NULL COMMENT '任务日期',
  `beizhu` longtext COMMENT '备注',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='走访任务';

/*Data for the table `zoufangrenwu` */

insert  into `zoufangrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`renwudidian`,`renwumubiao`,`renwuneirong`,`renwuriqi`,`beizhu`,`yuangonggonghao`,`yuangongxingming`) values (81,'2021-05-28 13:21:29','任务名称1','任务类型1','任务地点1','任务目标1','任务内容1','2021-05-28','备注1','员工工号1','员工姓名1');
insert  into `zoufangrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`renwudidian`,`renwumubiao`,`renwuneirong`,`renwuriqi`,`beizhu`,`yuangonggonghao`,`yuangongxingming`) values (82,'2021-05-28 13:21:29','任务名称2','任务类型2','任务地点2','任务目标2','任务内容2','2021-05-28','备注2','员工工号2','员工姓名2');
insert  into `zoufangrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`renwudidian`,`renwumubiao`,`renwuneirong`,`renwuriqi`,`beizhu`,`yuangonggonghao`,`yuangongxingming`) values (83,'2021-05-28 13:21:29','任务名称3','任务类型3','任务地点3','任务目标3','任务内容3','2021-05-28','备注3','员工工号3','员工姓名3');
insert  into `zoufangrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`renwudidian`,`renwumubiao`,`renwuneirong`,`renwuriqi`,`beizhu`,`yuangonggonghao`,`yuangongxingming`) values (84,'2021-05-28 13:21:29','任务名称4','任务类型4','任务地点4','任务目标4','任务内容4','2021-05-28','备注4','员工工号4','员工姓名4');
insert  into `zoufangrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`renwudidian`,`renwumubiao`,`renwuneirong`,`renwuriqi`,`beizhu`,`yuangonggonghao`,`yuangongxingming`) values (85,'2021-05-28 13:21:29','任务名称5','任务类型5','任务地点5','任务目标5','任务内容5','2021-05-28','备注5','员工工号5','员工姓名5');
insert  into `zoufangrenwu`(`id`,`addtime`,`renwumingcheng`,`renwuleixing`,`renwudidian`,`renwumubiao`,`renwuneirong`,`renwuriqi`,`beizhu`,`yuangonggonghao`,`yuangongxingming`) values (86,'2021-05-28 13:21:29','任务名称6','任务类型6','任务地点6','任务目标6','任务内容6','2021-05-28','备注6','员工工号6','员工姓名6');

/*Table structure for table `zoufangxinxi` */

DROP TABLE IF EXISTS `zoufangxinxi`;

CREATE TABLE `zoufangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zoufangduixiang` varchar(200) DEFAULT NULL COMMENT '走访对象',
  `zoufangdizhi` varchar(200) DEFAULT NULL COMMENT '走访地址',
  `jibenqingkuang` longtext COMMENT '基本情况',
  `fangwenneirong` longtext COMMENT '访问内容',
  `daijiejuewenti` longtext COMMENT '待解决问题',
  `beizhu` longtext COMMENT '备注',
  `zoufangriqi` date DEFAULT NULL COMMENT '走访日期',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='走访信息';

/*Data for the table `zoufangxinxi` */

insert  into `zoufangxinxi`(`id`,`addtime`,`zoufangduixiang`,`zoufangdizhi`,`jibenqingkuang`,`fangwenneirong`,`daijiejuewenti`,`beizhu`,`zoufangriqi`,`zhaopian`,`yuangonggonghao`,`yuangongxingming`) values (91,'2021-05-28 13:21:29','走访对象1','走访地址1','基本情况1','访问内容1','待解决问题1','备注1','2021-05-28','http://localhost:8080/springboot54r3f/upload/zoufangxinxi_zhaopian1.jpg','员工工号1','员工姓名1');
insert  into `zoufangxinxi`(`id`,`addtime`,`zoufangduixiang`,`zoufangdizhi`,`jibenqingkuang`,`fangwenneirong`,`daijiejuewenti`,`beizhu`,`zoufangriqi`,`zhaopian`,`yuangonggonghao`,`yuangongxingming`) values (92,'2021-05-28 13:21:29','走访对象2','走访地址2','基本情况2','访问内容2','待解决问题2','备注2','2021-05-28','http://localhost:8080/springboot54r3f/upload/zoufangxinxi_zhaopian2.jpg','员工工号2','员工姓名2');
insert  into `zoufangxinxi`(`id`,`addtime`,`zoufangduixiang`,`zoufangdizhi`,`jibenqingkuang`,`fangwenneirong`,`daijiejuewenti`,`beizhu`,`zoufangriqi`,`zhaopian`,`yuangonggonghao`,`yuangongxingming`) values (93,'2021-05-28 13:21:29','走访对象3','走访地址3','基本情况3','访问内容3','待解决问题3','备注3','2021-05-28','http://localhost:8080/springboot54r3f/upload/zoufangxinxi_zhaopian3.jpg','员工工号3','员工姓名3');
insert  into `zoufangxinxi`(`id`,`addtime`,`zoufangduixiang`,`zoufangdizhi`,`jibenqingkuang`,`fangwenneirong`,`daijiejuewenti`,`beizhu`,`zoufangriqi`,`zhaopian`,`yuangonggonghao`,`yuangongxingming`) values (94,'2021-05-28 13:21:29','走访对象4','走访地址4','基本情况4','访问内容4','待解决问题4','备注4','2021-05-28','http://localhost:8080/springboot54r3f/upload/zoufangxinxi_zhaopian4.jpg','员工工号4','员工姓名4');
insert  into `zoufangxinxi`(`id`,`addtime`,`zoufangduixiang`,`zoufangdizhi`,`jibenqingkuang`,`fangwenneirong`,`daijiejuewenti`,`beizhu`,`zoufangriqi`,`zhaopian`,`yuangonggonghao`,`yuangongxingming`) values (95,'2021-05-28 13:21:29','走访对象5','走访地址5','基本情况5','访问内容5','待解决问题5','备注5','2021-05-28','http://localhost:8080/springboot54r3f/upload/zoufangxinxi_zhaopian5.jpg','员工工号5','员工姓名5');
insert  into `zoufangxinxi`(`id`,`addtime`,`zoufangduixiang`,`zoufangdizhi`,`jibenqingkuang`,`fangwenneirong`,`daijiejuewenti`,`beizhu`,`zoufangriqi`,`zhaopian`,`yuangonggonghao`,`yuangongxingming`) values (96,'2021-05-28 13:21:29','走访对象6','走访地址6','基本情况6','访问内容6','待解决问题6','备注6','2021-05-28','http://localhost:8080/springboot54r3f/upload/zoufangxinxi_zhaopian6.jpg','员工工号6','员工姓名6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
