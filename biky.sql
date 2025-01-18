/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.1.0 : Database - biky
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `bukus` */

DROP TABLE IF EXISTS `bukus`;

CREATE TABLE `bukus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lppm_id` int DEFAULT NULL,
  `kd_buku` varchar(50) DEFAULT NULL,
  `kd_lppm` varchar(50) DEFAULT NULL,
  `tahun_penerbitan` varchar(10) DEFAULT NULL,
  `judul` text,
  `slug` varchar(120) DEFAULT NULL,
  `isbn` varchar(100) DEFAULT NULL,
  `jumlah_halaman` varchar(10) DEFAULT NULL,
  `file` text,
  `valid` varchar(10) DEFAULT 'Pending',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `penerbit_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=latin1;

/*Table structure for table `sekolah` */

DROP TABLE IF EXISTS `sekolah`;

CREATE TABLE `sekolah` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(102) DEFAULT NULL,
  `kota` varchar(102) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `id_sekolah` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
