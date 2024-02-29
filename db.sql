/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootnp4n3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootnp4n3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootnp4n3`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootnp4n3/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootnp4n3/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootnp4n3/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshetuanxinxi` */

DROP TABLE IF EXISTS `discussshetuanxinxi`;

CREATE TABLE `discussshetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='社团信息评论表';

/*Data for the table `discussshetuanxinxi` */

insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-05-08 09:50:29',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-05-08 09:50:29',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-05-08 09:50:29',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-05-08 09:50:29',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-05-08 09:50:29',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshetuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-05-08 09:50:29',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `huodongbaoming` */

DROP TABLE IF EXISTS `huodongbaoming`;

CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `baomingneirong` varchar(200) DEFAULT NULL COMMENT '报名内容',
  `baomingriqi` datetime DEFAULT NULL COMMENT '报名日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodongbaoming` */

insert  into `huodongbaoming`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`zhanghao`,`baomingneirong`,`baomingriqi`,`xuehao`,`xueshengxingming`,`shouji`,`sfsh`,`shhf`) values (81,'2021-05-08 09:50:29','标题1','社团名称1','账号1','报名内容1','2021-05-08 09:50:29','学号1','学生姓名1','手机1','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`zhanghao`,`baomingneirong`,`baomingriqi`,`xuehao`,`xueshengxingming`,`shouji`,`sfsh`,`shhf`) values (82,'2021-05-08 09:50:29','标题2','社团名称2','账号2','报名内容2','2021-05-08 09:50:29','学号2','学生姓名2','手机2','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`zhanghao`,`baomingneirong`,`baomingriqi`,`xuehao`,`xueshengxingming`,`shouji`,`sfsh`,`shhf`) values (83,'2021-05-08 09:50:29','标题3','社团名称3','账号3','报名内容3','2021-05-08 09:50:29','学号3','学生姓名3','手机3','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`zhanghao`,`baomingneirong`,`baomingriqi`,`xuehao`,`xueshengxingming`,`shouji`,`sfsh`,`shhf`) values (84,'2021-05-08 09:50:29','标题4','社团名称4','账号4','报名内容4','2021-05-08 09:50:29','学号4','学生姓名4','手机4','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`zhanghao`,`baomingneirong`,`baomingriqi`,`xuehao`,`xueshengxingming`,`shouji`,`sfsh`,`shhf`) values (85,'2021-05-08 09:50:29','标题5','社团名称5','账号5','报名内容5','2021-05-08 09:50:29','学号5','学生姓名5','手机5','是','');
insert  into `huodongbaoming`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`zhanghao`,`baomingneirong`,`baomingriqi`,`xuehao`,`xueshengxingming`,`shouji`,`sfsh`,`shhf`) values (86,'2021-05-08 09:50:29','标题6','社团名称6','账号6','报名内容6','2021-05-08 09:50:29','学号6','学生姓名6','手机6','是','');

/*Table structure for table `jiarushetuan` */

DROP TABLE IF EXISTS `jiarushetuan`;

CREATE TABLE `jiarushetuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shetuanfenlei` varchar(200) DEFAULT NULL COMMENT '社团分类',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiaruliyou` varchar(200) DEFAULT NULL COMMENT '加入理由',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='加入社团';

/*Data for the table `jiarushetuan` */

insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`zhanghao`,`jiaruliyou`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (51,'2021-05-08 09:50:28','社团名称1','社团分类1','账号1','加入理由1','2021-05-08 09:50:28','学号1','学生姓名1','班级1','手机1','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`zhanghao`,`jiaruliyou`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (52,'2021-05-08 09:50:28','社团名称2','社团分类2','账号2','加入理由2','2021-05-08 09:50:28','学号2','学生姓名2','班级2','手机2','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`zhanghao`,`jiaruliyou`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (53,'2021-05-08 09:50:28','社团名称3','社团分类3','账号3','加入理由3','2021-05-08 09:50:28','学号3','学生姓名3','班级3','手机3','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`zhanghao`,`jiaruliyou`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (54,'2021-05-08 09:50:28','社团名称4','社团分类4','账号4','加入理由4','2021-05-08 09:50:28','学号4','学生姓名4','班级4','手机4','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`zhanghao`,`jiaruliyou`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (55,'2021-05-08 09:50:28','社团名称5','社团分类5','账号5','加入理由5','2021-05-08 09:50:28','学号5','学生姓名5','班级5','手机5','是','');
insert  into `jiarushetuan`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`zhanghao`,`jiaruliyou`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (56,'2021-05-08 09:50:28','社团名称6','社团分类6','账号6','加入理由6','2021-05-08 09:50:28','学号6','学生姓名6','班级6','手机6','是','');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社团新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-08 09:50:29','标题1','简介1','http://localhost:8080/springbootnp4n3/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-08 09:50:29','标题2','简介2','http://localhost:8080/springbootnp4n3/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-08 09:50:29','标题3','简介3','http://localhost:8080/springbootnp4n3/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-08 09:50:29','标题4','简介4','http://localhost:8080/springbootnp4n3/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-08 09:50:29','标题5','简介5','http://localhost:8080/springbootnp4n3/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-08 09:50:29','标题6','简介6','http://localhost:8080/springbootnp4n3/upload/news_picture6.jpg','内容6');

/*Table structure for table `shetuanchengyuan` */

DROP TABLE IF EXISTS `shetuanchengyuan`;

CREATE TABLE `shetuanchengyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `jiarushijian` date DEFAULT NULL COMMENT '加入时间',
  `gerenjianjie` longtext COMMENT '个人简介',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='社团成员';

/*Data for the table `shetuanchengyuan` */

insert  into `shetuanchengyuan`(`id`,`addtime`,`shetuanmingcheng`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`zhiwei`,`jiarushijian`,`gerenjianjie`,`zhanghao`) values (61,'2021-05-08 09:50:28','社团名称1','学号1','学生姓名1','班级1','手机1','职位1','2021-05-08','个人简介1','账号1');
insert  into `shetuanchengyuan`(`id`,`addtime`,`shetuanmingcheng`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`zhiwei`,`jiarushijian`,`gerenjianjie`,`zhanghao`) values (62,'2021-05-08 09:50:28','社团名称2','学号2','学生姓名2','班级2','手机2','职位2','2021-05-08','个人简介2','账号2');
insert  into `shetuanchengyuan`(`id`,`addtime`,`shetuanmingcheng`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`zhiwei`,`jiarushijian`,`gerenjianjie`,`zhanghao`) values (63,'2021-05-08 09:50:28','社团名称3','学号3','学生姓名3','班级3','手机3','职位3','2021-05-08','个人简介3','账号3');
insert  into `shetuanchengyuan`(`id`,`addtime`,`shetuanmingcheng`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`zhiwei`,`jiarushijian`,`gerenjianjie`,`zhanghao`) values (64,'2021-05-08 09:50:28','社团名称4','学号4','学生姓名4','班级4','手机4','职位4','2021-05-08','个人简介4','账号4');
insert  into `shetuanchengyuan`(`id`,`addtime`,`shetuanmingcheng`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`zhiwei`,`jiarushijian`,`gerenjianjie`,`zhanghao`) values (65,'2021-05-08 09:50:28','社团名称5','学号5','学生姓名5','班级5','手机5','职位5','2021-05-08','个人简介5','账号5');
insert  into `shetuanchengyuan`(`id`,`addtime`,`shetuanmingcheng`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`zhiwei`,`jiarushijian`,`gerenjianjie`,`zhanghao`) values (66,'2021-05-08 09:50:29','社团名称6','学号6','学生姓名6','班级6','手机6','职位6','2021-05-08','个人简介6','账号6');

/*Table structure for table `shetuanfenlei` */

DROP TABLE IF EXISTS `shetuanfenlei`;

CREATE TABLE `shetuanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanfenlei` varchar(200) DEFAULT NULL COMMENT '社团分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='社团分类';

/*Data for the table `shetuanfenlei` */

insert  into `shetuanfenlei`(`id`,`addtime`,`shetuanfenlei`) values (31,'2021-05-08 09:50:28','社团分类1');
insert  into `shetuanfenlei`(`id`,`addtime`,`shetuanfenlei`) values (32,'2021-05-08 09:50:28','社团分类2');
insert  into `shetuanfenlei`(`id`,`addtime`,`shetuanfenlei`) values (33,'2021-05-08 09:50:28','社团分类3');
insert  into `shetuanfenlei`(`id`,`addtime`,`shetuanfenlei`) values (34,'2021-05-08 09:50:28','社团分类4');
insert  into `shetuanfenlei`(`id`,`addtime`,`shetuanfenlei`) values (35,'2021-05-08 09:50:28','社团分类5');
insert  into `shetuanfenlei`(`id`,`addtime`,`shetuanfenlei`) values (36,'2021-05-08 09:50:28','社团分类6');

/*Table structure for table `shetuanhuodong` */

DROP TABLE IF EXISTS `shetuanhuodong`;

CREATE TABLE `shetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongrenshu` int(11) NOT NULL COMMENT '活动人数',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `huodongxiangqing` longtext COMMENT '活动详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='社团活动';

/*Data for the table `shetuanhuodong` */

insert  into `shetuanhuodong`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongrenshu`,`huodongdidian`,`zhanghao`,`huodongxiangqing`,`sfsh`,`shhf`) values (71,'2021-05-08 09:50:29','标题1','社团名称1','http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian1.jpg','2021-05-08','2021-05-08',1,'活动地点1','账号1','活动详情1','是','');
insert  into `shetuanhuodong`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongrenshu`,`huodongdidian`,`zhanghao`,`huodongxiangqing`,`sfsh`,`shhf`) values (72,'2021-05-08 09:50:29','标题2','社团名称2','http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian2.jpg','2021-05-08','2021-05-08',2,'活动地点2','账号2','活动详情2','是','');
insert  into `shetuanhuodong`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongrenshu`,`huodongdidian`,`zhanghao`,`huodongxiangqing`,`sfsh`,`shhf`) values (73,'2021-05-08 09:50:29','标题3','社团名称3','http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian3.jpg','2021-05-08','2021-05-08',3,'活动地点3','账号3','活动详情3','是','');
insert  into `shetuanhuodong`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongrenshu`,`huodongdidian`,`zhanghao`,`huodongxiangqing`,`sfsh`,`shhf`) values (74,'2021-05-08 09:50:29','标题4','社团名称4','http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian4.jpg','2021-05-08','2021-05-08',4,'活动地点4','账号4','活动详情4','是','');
insert  into `shetuanhuodong`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongrenshu`,`huodongdidian`,`zhanghao`,`huodongxiangqing`,`sfsh`,`shhf`) values (75,'2021-05-08 09:50:29','标题5','社团名称5','http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian5.jpg','2021-05-08','2021-05-08',5,'活动地点5','账号5','活动详情5','是','');
insert  into `shetuanhuodong`(`id`,`addtime`,`biaoti`,`shetuanmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`huodongrenshu`,`huodongdidian`,`zhanghao`,`huodongxiangqing`,`sfsh`,`shhf`) values (76,'2021-05-08 09:50:29','标题6','社团名称6','http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian6.jpg','2021-05-08','2021-05-08',6,'活动地点6','账号6','活动详情6','是','');

/*Table structure for table `shetuanxinxi` */

DROP TABLE IF EXISTS `shetuanxinxi`;

CREATE TABLE `shetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) NOT NULL COMMENT '社团名称',
  `shetuanfenlei` varchar(200) NOT NULL COMMENT '社团分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chuangjianshijian` date DEFAULT NULL COMMENT '创建时间',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shetuanjianjie` longtext COMMENT '社团简介',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='社团信息';

/*Data for the table `shetuanxinxi` */

insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`tupian`,`chuangjianshijian`,`shouji`,`youxiang`,`shetuanjianjie`,`shezhangxingming`,`zhanghao`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (41,'2021-05-08 09:50:28','社团名称1','社团分类1','http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian1.jpg','2021-05-08','13823888881','773890001@qq.com','社团简介1','社长姓名1','账号1','是','','2021-05-08 09:50:28',1);
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`tupian`,`chuangjianshijian`,`shouji`,`youxiang`,`shetuanjianjie`,`shezhangxingming`,`zhanghao`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (42,'2021-05-08 09:50:28','社团名称2','社团分类2','http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian2.jpg','2021-05-08','13823888882','773890002@qq.com','社团简介2','社长姓名2','账号2','是','','2021-05-08 09:50:28',2);
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`tupian`,`chuangjianshijian`,`shouji`,`youxiang`,`shetuanjianjie`,`shezhangxingming`,`zhanghao`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (43,'2021-05-08 09:50:28','社团名称3','社团分类3','http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian3.jpg','2021-05-08','13823888883','773890003@qq.com','社团简介3','社长姓名3','账号3','是','','2021-05-08 09:50:28',3);
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`tupian`,`chuangjianshijian`,`shouji`,`youxiang`,`shetuanjianjie`,`shezhangxingming`,`zhanghao`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (44,'2021-05-08 09:50:28','社团名称4','社团分类4','http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian4.jpg','2021-05-08','13823888884','773890004@qq.com','社团简介4','社长姓名4','账号4','是','','2021-05-08 09:50:28',4);
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`tupian`,`chuangjianshijian`,`shouji`,`youxiang`,`shetuanjianjie`,`shezhangxingming`,`zhanghao`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (45,'2021-05-08 09:50:28','社团名称5','社团分类5','http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian5.jpg','2021-05-08','13823888885','773890005@qq.com','社团简介5','社长姓名5','账号5','是','','2021-05-08 09:50:28',5);
insert  into `shetuanxinxi`(`id`,`addtime`,`shetuanmingcheng`,`shetuanfenlei`,`tupian`,`chuangjianshijian`,`shouji`,`youxiang`,`shetuanjianjie`,`shezhangxingming`,`zhanghao`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (46,'2021-05-08 09:50:28','社团名称6','社团分类6','http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian6.jpg','2021-05-08','13823888886','773890006@qq.com','社团简介6','社长姓名6','账号6','是','','2021-05-08 09:50:28',6);

/*Table structure for table `shezhang` */

DROP TABLE IF EXISTS `shezhang`;

CREATE TABLE `shezhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='社长';

/*Data for the table `shezhang` */

insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (21,'2021-05-08 09:50:28','社长1','123456','社长姓名1','男','http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang1.jpg','学院1','班级1','13823888881');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (22,'2021-05-08 09:50:28','社长2','123456','社长姓名2','男','http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang2.jpg','学院2','班级2','13823888882');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (23,'2021-05-08 09:50:28','社长3','123456','社长姓名3','男','http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang3.jpg','学院3','班级3','13823888883');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (24,'2021-05-08 09:50:28','社长4','123456','社长姓名4','男','http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang4.jpg','学院4','班级4','13823888884');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (25,'2021-05-08 09:50:28','社长5','123456','社长姓名5','男','http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang5.jpg','学院5','班级5','13823888885');
insert  into `shezhang`(`id`,`addtime`,`zhanghao`,`mima`,`shezhangxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (26,'2021-05-08 09:50:28','社长6','123456','社长姓名6','男','http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang6.jpg','学院6','班级6','13823888886');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-08 09:50:29');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (11,'2021-05-08 09:50:28','学生1','123456','学生姓名1','男','http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang1.jpg','学院1','班级1','13823888881');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (12,'2021-05-08 09:50:28','学生2','123456','学生姓名2','男','http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang2.jpg','学院2','班级2','13823888882');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (13,'2021-05-08 09:50:28','学生3','123456','学生姓名3','男','http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang3.jpg','学院3','班级3','13823888883');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (14,'2021-05-08 09:50:28','学生4','123456','学生姓名4','男','http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang4.jpg','学院4','班级4','13823888884');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (15,'2021-05-08 09:50:28','学生5','123456','学生姓名5','男','http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang5.jpg','学院5','班级5','13823888885');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xueyuan`,`banji`,`shouji`) values (16,'2021-05-08 09:50:28','学生6','123456','学生姓名6','男','http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang6.jpg','学院6','班级6','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
