/*
SQLyog Ultimate v8.32 
MySQL - 5.5.40 : Database - cyx
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cyx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cyx`;

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `n_time` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `notice` */

insert  into `notice`(`n_id`,`title`,`details`,`n_time`) values (1,'暂停当日达业务','尊敬的用户， 　　<br>\r\n　　为了让大家有更好的购物体验，3月25日起，当日达业务关小黑屋回炉升级！<br>具体开放时间请留意公告，感谢大家的支持与理解，祝大家购物愉快！<br>\r\n3月23日<br>\r\n陈妍欣的电子商务平台 系统管理部<br>','20220111113420');

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`order_id`,`product_id`,`buynum`) values ('0c0796f2-0124-4a13-a891-5efbb63b04f9','79bbe618-d2f8-4081-b35a-62ebbe938b64',1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT '0',
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`money`,`receiverAddress`,`receiverName`,`receiverPhone`,`paystate`,`ordertime`,`user_id`) values ('0c0796f2-0124-4a13-a891-5efbb63b04f9',29,'华南理工大学','cyx','19865023468',1,'2021-12-26 17:22:48',2);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`category`,`pnum`,`imgurl`,`description`) values ('26ddd0c6-d7f2-4a83-b01b-286bb8c38420','Eye drops滴眼液',51,'医药medicine',16,'/productImg/1/12/b8a866f2-aac7-4f7b-bfab-ae0a8c0c764f.jpg',''),('3a0196b2-71c1-4d4d-a4e8-d1f875096f00','英语四六级听力收音机English Band Four and Six Listening Radio',26,'数码Digital',15,'/productImg/4/3/0270eba2-2b48-48df-956b-0341204384d9.jpg','英语四六级听力收音机考试FM调频大学生四级六级专用便携式收音机'),('3cdd01d2-95d4-4077-b512-ff4c3b340d6b','吐司面包Toast bread',29,'食品food',5,'/productImg/6/5/a2da626c-c72d-4972-83de-cf48405c5563.jpg','豪士早餐吐司面包夹心健康小零食小吃休闲食品夜宵网红爆款整箱'),('4dbac6bb-ac2a-4ea0-a62f-ea5a2fc2b3c2',"T恤女装Women's T-shirts",159,'服饰apparel',198,'/productImg/5/8/c4ab442f-95c7-4d6f-a57e-3eb7dc6b83c4.jpg','IAZ（服饰）宽松小logo短袖T恤女ins潮秋季气质内搭圆领女装'),('57a44950-935a-4dac-953d-515fd92d8174','吹风机hair dryer',69,'家电Home appliances',20,'/productImg/11/4/d79dc124-de69-4b77-847e-bc461bfdb857.jpg','康夫吹风机家用负离子护发大功率150发廊大风力发型师专用电吹风、交流电机 快速干发 造型优选'),('72c52302-cd1e-4a22-8ac8-dc300a915be5','胶囊太阳伞Capsule Sun Umbrella',30,'百货Department store',94,'/productImg/2/7/7ede11f8-3ff9-4c12-ad58-b1d5e0e72032.jpg','胶囊太阳伞女防晒防紫外线遮阳晴雨伞两用迷你五折叠超轻小巧便携 2021年新款 超防晒防紫外线 UPF50+'),('79bbe618-d2f8-4081-b35a-62ebbe938b64','笔记本laptop',1380,'数码Digital',7,'/productImg/9/0/697a23d6-225a-41a3-8c20-7ab624265ecc.png','Lenovo/联想小新笔记本电脑游戏轻薄便携商务办公学生本i7/i5网课'),('84c842da-16b6-4e87-953e-859a1ca62bab','薄荷糖Mints',9.9,'食品food',147,'/productImg/2/8/acc9d557-f8c9-426b-9aec-50a5a7cf3960.jpg','雀巢宝路薄荷糖750g有个圈的老式含片糖冰路强劲清凉散装招待糖果'),('8740bee0-bfb8-4ba1-8f6e-b69310617db9',"充电线Charging Cable",12.9,'数码Digital',100,'/productImg/3/0/3253aeee-5462-47d0-991c-afb568ab3b03.jpg','苹果数据线适用iPhone12快充13pro充电器线11原装6x正品xs手机7Plus快速xr闪充ipad平板8P车载2米pd加长max 认证不弹窗 快充不伤手'),('880fdb00-6798-4302-962b-f337f3393802','Java Web程序开发入门Introduction to Java Web program development',44.5,'百货Department store',100,'/productImg/9/3/eac105d4-4ab5-4af9-9061-e255016b79d9.png','本书为Java Web开发入门教材，让初学者达到能够灵活使用Java语言开发Web应用程序的程度。为了让初学者易于学习，本书力求内容通俗易懂，讲解寓教于乐，同时针对书中的每个知识点，都精心设计了经典案例，让初学者真正理解这些知识点在实际工作中如何去运用。'),('8c19d2e2-1020-425d-aeeb-56d3c1bc0a81','纯羊毛围巾Pure wool scarf',129,'服饰apparel',200,'/productImg/14/11/ebcee924-7d42-43f8-b974-fbdb900bdb58.jpg','恒源祥纯羊毛围巾女冬季百搭保暖格子情侣春秋加厚男围脖2021新款 100%澳洲羊毛，保暖亲肤舒适'),('968df3a0-be4d-473e-85a8-d3466b4ca7c2',"藿香正气水Huoxiang Zhengqi Water",23.8,'医药medicine',230,'/productImg/14/1/792116e7-6d83-4be4-b3e5-4dd11b0b4565.jpg','太极藿香正气液正气水口服液水液霍香荷香正汽合剂10支无酒精正品、不含酒精 开车也能喝 团购优惠'),('9a7af97e-deea-417e-ad66-23ea755d2a51','抽油烟机Range hood',249,'家电Home appliances',8,'/productImg/2/7/7ede11f8-3ff9-4c12-ad58-b1d5e0e72032.jpg','好太太大吸力抽油烟机家用厨房顶吸式欧式吸油姻机小型T型油畑机、大吸力+自动清洗+智能体感+豪华大屏'),('adc06981-0dc9-4006-b763-e6413ee93ac1','泡面Instant noodles',20,'食品food',120,'/productImg/15/1/5394df32-ed6e-4203-b9c0-fc175cfc187e.jpg','香港公仔面公仔碗仔面方便面泡面车仔面整箱速食即食小杯迷你碗面'),('bdb32537-8f2c-4ba2-a752-94fdc0e9a250','提拉米苏Tiramisu',9.9,'食品food',98,'/productImg/11/1/8efe720f-fa72-435b-a3c3-69230f9677cc.jpg','泓一提拉米苏夹心蛋糕零食小吃面包早餐充饥夜宵解馋休闲食品整箱');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `role` varchar(10) DEFAULT '普通用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`PASSWORD`,`email`,`telephone`,`role`) values (1,'admin','123456','cyanxin2021@163.com','19860207844','超级用户'),(2,'cyx','123456','804830410@qq.com','19865023468','普通用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
