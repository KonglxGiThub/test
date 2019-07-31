/*
SQLyog Ultimate v10.42 
MySQL - 5.5.38 : Database - carsale
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carsale` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `carsale`;

/*Table structure for table `m_brand` */

DROP TABLE IF EXISTS `m_brand`;

CREATE TABLE `m_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) DEFAULT NULL,
  `brand_des` tinytext,
  `brand_oder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `m_brand` */

insert  into `m_brand`(`brand_id`,`brand_name`,`brand_des`,`brand_oder`) values (0,'不选',NULL,'b'),(1,'本田',NULL,'c'),(2,'大众',NULL,'a'),(3,'铃木',NULL,'d');

/*Table structure for table `m_type` */

DROP TABLE IF EXISTS `m_type`;

CREATE TABLE `m_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  `type_des` tinytext,
  `type_oder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `m_type` */

insert  into `m_type`(`type_id`,`type_name`,`type_des`,`type_oder`) values (0,'不选',NULL,'1'),(1,'三箱',NULL,'2'),(2,'二箱',NULL,'3');

/*Table structure for table `t_goods` */

DROP TABLE IF EXISTS `t_goods`;

CREATE TABLE `t_goods` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `img_id` varchar(50) NOT NULL,
  `car_name` tinytext,
  `car_des` text,
  `carparam1` varchar(50) DEFAULT NULL,
  `carparam2` varchar(50) DEFAULT NULL,
  `carparam3` varchar(50) DEFAULT NULL,
  `carparam4` varchar(50) DEFAULT NULL,
  `carparam5` varchar(50) DEFAULT NULL,
  `carparam6` varchar(50) DEFAULT NULL,
  `goods_Del` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `lastdate` datetime DEFAULT NULL,
  `gorder` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`car_id`,`img_id`),
  KEY `FK_Reference_brandid` (`brand_id`),
  KEY `FK_Reference_typeid` (`type_id`),
  CONSTRAINT `FK_Reference_brandid` FOREIGN KEY (`brand_id`) REFERENCES `m_brand` (`brand_id`),
  CONSTRAINT `FK_Reference_typeid` FOREIGN KEY (`type_id`) REFERENCES `m_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `t_goods` */

insert  into `t_goods`(`car_id`,`type_id`,`brand_id`,`img_id`,`car_name`,`car_des`,`carparam1`,`carparam2`,`carparam3`,`carparam4`,`carparam5`,`carparam6`,`goods_Del`,`price`,`lastdate`,`gorder`) values (24,2,3,'b6ab8650-ca1a-4ef9-8025-372da9bc630a','奥拓',NULL,'蓝',NULL,NULL,NULL,NULL,NULL,NULL,120000,'2015-05-21 11:58:57',NULL),(25,1,3,'f5594c37-1f4c-4cef-994a-254fdfd6f004','尚悦',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,70000,'2015-05-21 11:59:56',NULL),(26,0,0,'88b3a9a1-96a5-4b0c-a808-fe7a58430d38','君威1',NULL,'白',NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-05-21 12:01:12',NULL);

/*Table structure for table `t_img` */

DROP TABLE IF EXISTS `t_img`;

CREATE TABLE `t_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(50) DEFAULT NULL,
  `img_path` varchar(50) DEFAULT NULL,
  `img_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1490 DEFAULT CHARSET=utf8;

/*Data for the table `t_img` */

insert  into `t_img`(`id`,`img_id`,`img_path`,`img_name`) values (2,'ca841066-1f59-495a-a7bf-c1c769b718f4','/upload/ca841066-1f59-495a-a7bf-c1c769b718f4.jpg','ca841066-1f59-495a-a7bf-c1c769b718f4.jpg'),(3,'ca841066-1f59-495a-a7bf-c1c769b718f4','/upload/ca841066-1f59-495a-a7bf-c1c769b718f4.jpg','ca841066-1f59-495a-a7bf-c1c769b718f4.jpg'),(4,'80e8d326-c39b-4aaa-9d71-cc1fee4e07fe','/upload/80e8d326-c39b-4aaa-9d71-cc1fee4e07fe0.jpg','80e8d326-c39b-4aaa-9d71-cc1fee4e07fe0.jpg'),(5,'80e8d326-c39b-4aaa-9d71-cc1fee4e07fe','/upload/80e8d326-c39b-4aaa-9d71-cc1fee4e07fe1.jpg','80e8d326-c39b-4aaa-9d71-cc1fee4e07fe1.jpg'),(6,'80e8d326-c39b-4aaa-9d71-cc1fee4e07fe','/upload/80e8d326-c39b-4aaa-9d71-cc1fee4e07fe2.jpg','80e8d326-c39b-4aaa-9d71-cc1fee4e07fe2.jpg'),(15,'a05af792-5cfa-48dc-8871-00ba34297c92','/upload/a05af792-5cfa-48dc-8871-00ba34297c92.tmp','a05af792-5cfa-48dc-8871-00ba34297c92.tmp'),(16,'ccd2c4a4-60ff-4826-afe0-7777c5bbdecd','/upload/ccd2c4a4-60ff-4826-afe0-7777c5bbdecd.tmp','ccd2c4a4-60ff-4826-afe0-7777c5bbdecd.tmp'),(17,NULL,'/upload/181dce89-03b7-42fd-bc3a-7f6112154569.tmp','181dce89-03b7-42fd-bc3a-7f6112154569.tmp'),(18,NULL,'/upload/fba77972-89f2-430e-9b9c-aa5edd0a841f.tmp','fba77972-89f2-430e-9b9c-aa5edd0a841f.tmp'),(20,'0','/upload/994bf463-cc49-4dda-86a0-f36c3f873aa9.tmp','994bf463-cc49-4dda-86a0-f36c3f873aa9.tmp'),(1446,'ca841066-1f59-495a-a7bf-c1c769b718f4','/upload/ca841066-1f59-495a-a7bf-c1c769b718f4.jpg','ca841066-1f59-495a-a7bf-c1c769b718f4.jpg'),(1455,'bc4f80b3-e567-4b58-992f-010f32c4cdb0','/upload/bc4f80b3-e567-4b58-992f-010f32c4cdb00.jpg','bc4f80b3-e567-4b58-992f-010f32c4cdb00.jpg'),(1456,'bc4f80b3-e567-4b58-992f-010f32c4cdb0','/upload/bc4f80b3-e567-4b58-992f-010f32c4cdb01.png','bc4f80b3-e567-4b58-992f-010f32c4cdb01.png'),(1457,'bc4f80b3-e567-4b58-992f-010f32c4cdb0','/upload/bc4f80b3-e567-4b58-992f-010f32c4cdb02.png','bc4f80b3-e567-4b58-992f-010f32c4cdb02.png'),(1458,'bc4f80b3-e567-4b58-992f-010f32c4cdb0','/upload/bc4f80b3-e567-4b58-992f-010f32c4cdb03.jpg','bc4f80b3-e567-4b58-992f-010f32c4cdb03.jpg'),(1459,'6939fd5f-4513-457d-9a5f-064e649496ee','/upload/6939fd5f-4513-457d-9a5f-064e649496ee0.jpg','6939fd5f-4513-457d-9a5f-064e649496ee0.jpg'),(1460,'6939fd5f-4513-457d-9a5f-064e649496ee','/upload/6939fd5f-4513-457d-9a5f-064e649496ee1.png','6939fd5f-4513-457d-9a5f-064e649496ee1.png'),(1461,'6939fd5f-4513-457d-9a5f-064e649496ee','/upload/6939fd5f-4513-457d-9a5f-064e649496ee2.png','6939fd5f-4513-457d-9a5f-064e649496ee2.png'),(1462,'6939fd5f-4513-457d-9a5f-064e649496ee','/upload/6939fd5f-4513-457d-9a5f-064e649496ee3.jpg','6939fd5f-4513-457d-9a5f-064e649496ee3.jpg'),(1463,'7d2b5348-ff29-4b5a-8fae-ac339cc8b403','/upload/7d2b5348-ff29-4b5a-8fae-ac339cc8b4030.jpg','7d2b5348-ff29-4b5a-8fae-ac339cc8b4030.jpg'),(1464,'7d2b5348-ff29-4b5a-8fae-ac339cc8b403','/upload/7d2b5348-ff29-4b5a-8fae-ac339cc8b4031.png','7d2b5348-ff29-4b5a-8fae-ac339cc8b4031.png'),(1465,'7d2b5348-ff29-4b5a-8fae-ac339cc8b403','/upload/7d2b5348-ff29-4b5a-8fae-ac339cc8b4032.png','7d2b5348-ff29-4b5a-8fae-ac339cc8b4032.png'),(1466,'7d2b5348-ff29-4b5a-8fae-ac339cc8b403','/upload/7d2b5348-ff29-4b5a-8fae-ac339cc8b4033.jpg','7d2b5348-ff29-4b5a-8fae-ac339cc8b4033.jpg'),(1471,'0','/upload/36f4e4f9-2c49-4962-bf6d-e5dd170ee225.jpg','36f4e4f9-2c49-4962-bf6d-e5dd170ee225.jpg'),(1478,'fc2d777f-5ebb-4863-81d6-f31767477072','/upload/f82ff97f-c61b-4dc6-b5b0-452802d3c85c.png','f82ff97f-c61b-4dc6-b5b0-452802d3c85c.png'),(1479,'fc28af09-2bcb-46d3-8d8c-97bce5ebbbb5','/upload/fc28af09-2bcb-46d3-8d8c-97bce5ebbbb50.jpg','fc28af09-2bcb-46d3-8d8c-97bce5ebbbb50.jpg'),(1480,'fc28af09-2bcb-46d3-8d8c-97bce5ebbbb5','/upload/fc28af09-2bcb-46d3-8d8c-97bce5ebbbb51.jpg','fc28af09-2bcb-46d3-8d8c-97bce5ebbbb51.jpg'),(1481,'fc28af09-2bcb-46d3-8d8c-97bce5ebbbb5','/upload/fc28af09-2bcb-46d3-8d8c-97bce5ebbbb52.jpg','fc28af09-2bcb-46d3-8d8c-97bce5ebbbb52.jpg'),(1482,'b6ab8650-ca1a-4ef9-8025-372da9bc630a','/upload/b6ab8650-ca1a-4ef9-8025-372da9bc630a0.jpg','b6ab8650-ca1a-4ef9-8025-372da9bc630a0.jpg'),(1483,'b6ab8650-ca1a-4ef9-8025-372da9bc630a','/upload/b6ab8650-ca1a-4ef9-8025-372da9bc630a1.jpg','b6ab8650-ca1a-4ef9-8025-372da9bc630a1.jpg'),(1484,'b6ab8650-ca1a-4ef9-8025-372da9bc630a','/upload/b6ab8650-ca1a-4ef9-8025-372da9bc630a2.jpg','b6ab8650-ca1a-4ef9-8025-372da9bc630a2.jpg'),(1485,'f5594c37-1f4c-4cef-994a-254fdfd6f004','/upload/f5594c37-1f4c-4cef-994a-254fdfd6f0040.JPG','f5594c37-1f4c-4cef-994a-254fdfd6f0040.JPG'),(1486,'f5594c37-1f4c-4cef-994a-254fdfd6f004','/upload/f5594c37-1f4c-4cef-994a-254fdfd6f0041.JPG','f5594c37-1f4c-4cef-994a-254fdfd6f0041.JPG'),(1487,'f5594c37-1f4c-4cef-994a-254fdfd6f004','/upload/41a0d042-ab7d-41ca-bd29-999dc28a3ce4.JPG','41a0d042-ab7d-41ca-bd29-999dc28a3ce4.JPG'),(1488,'f5594c37-1f4c-4cef-994a-254fdfd6f004','/upload/f5594c37-1f4c-4cef-994a-254fdfd6f0043.JPG','f5594c37-1f4c-4cef-994a-254fdfd6f0043.JPG'),(1489,'88b3a9a1-96a5-4b0c-a808-fe7a58430d38','/upload/88b3a9a1-96a5-4b0c-a808-fe7a58430d380.jpg','88b3a9a1-96a5-4b0c-a808-fe7a58430d380.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
