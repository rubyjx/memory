/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.54 : Database - memory
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`memory` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `memory`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `account` varchar(15) NOT NULL COMMENT '账号',
  `password` varchar(15) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `user_id` int(32) NOT NULL COMMENT '用户Id',
  `image_path` varchar(32) NOT NULL COMMENT '图片路径',
  `image_file_name` varchar(64) DEFAULT NULL COMMENT '图片名称',
  `image_describe` varchar(255) DEFAULT NULL COMMENT '图片描述',
  `image_date` date DEFAULT NULL COMMENT '图片时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `image` */

/*Table structure for table `note` */

DROP TABLE IF EXISTS `note`;

CREATE TABLE `note` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '日志Id',
  `note_data` text NOT NULL COMMENT '日记内容',
  `note_time` date NOT NULL COMMENT '日记时间',
  `note_title` varchar(20) DEFAULT NULL COMMENT '日记标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `note` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
