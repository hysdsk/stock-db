-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kabu
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bis_categories`
--

DROP TABLE IF EXISTS `bis_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bis_categories` (
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '業種コード',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '業種名',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divisions` (
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '区分コード',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区分名',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exchanges`
--

DROP TABLE IF EXISTS `exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchanges` (
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '市場コード',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市場名',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `indicator_daily_info`
--

DROP TABLE IF EXISTS `indicator_daily_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicator_daily_info` (
  `indicator_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '指数コード',
  `opening_date` int NOT NULL COMMENT '開場日',
  `opening_price` double DEFAULT NULL COMMENT '始値',
  `high_price` double DEFAULT NULL COMMENT '高値',
  `low_price` double DEFAULT NULL COMMENT '安値',
  `closing_price` double DEFAULT NULL COMMENT '終値',
  `change_previous_close` double DEFAULT NULL COMMENT '前日比',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`indicator_code`,`opening_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `indicators`
--

DROP TABLE IF EXISTS `indicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicators` (
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '指数コード',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '指数名',
  `exchange_code` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市場コード',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `symbol_daily_info`
--

DROP TABLE IF EXISTS `symbol_daily_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symbol_daily_info` (
  `symbol_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '銘柄コード',
  `opening_date` int unsigned NOT NULL COMMENT '開場日',
  `first_opening_price` double DEFAULT NULL COMMENT '前場始値',
  `first_high_price` double DEFAULT NULL COMMENT '前場高値',
  `first_low_price` double DEFAULT NULL COMMENT '前場安値',
  `first_closing_price` double DEFAULT NULL COMMENT '前場終値',
  `latter_opening_price` double DEFAULT NULL COMMENT '後場始値',
  `latter_high_price` double DEFAULT NULL COMMENT '後場高値',
  `latter_low_price` double DEFAULT NULL COMMENT '後場安値',
  `latter_closing_price` double DEFAULT NULL COMMENT '後場終値',
  `change_previous_close` double DEFAULT NULL COMMENT '前日比',
  `trading_volume` double DEFAULT NULL COMMENT '売買高（千株）',
  `trading_value` double DEFAULT NULL COMMENT '売買代金（千円）',
  `vwap` double DEFAULT NULL COMMENT '売買高加重平均価格',
  `loaning_amount` int DEFAULT NULL COMMENT '融資新規',
  `paid_loaning_amount` int DEFAULT NULL COMMENT '融資返済',
  `loaning_balance` int DEFAULT NULL COMMENT '融資残高',
  `lending_amount` int DEFAULT NULL COMMENT '貸株新規',
  `paid_lending_amount` int DEFAULT NULL COMMENT '貸株返済',
  `lending_balance` int DEFAULT NULL COMMENT '貸株残高',
  `credit_balance` int DEFAULT NULL COMMENT '差引残高',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`symbol_code`,`opening_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `symbol_divide_info`
--

DROP TABLE IF EXISTS `symbol_divide_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symbol_divide_info` (
  `symbol_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '銘柄コード',
  `right_last_date` int NOT NULL COMMENT '権利付き最終日',
  `ratio` double NOT NULL COMMENT '分割比率',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'ステータス',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`symbol_code`,`right_last_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `symbol_weekly_info`
--

DROP TABLE IF EXISTS `symbol_weekly_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symbol_weekly_info` (
  `symbol_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '銘柄コード',
  `weekend_date` int unsigned NOT NULL COMMENT '週末開場日付',
  `sell_balance` int DEFAULT NULL COMMENT '売残高',
  `sell_balance_per` int DEFAULT NULL COMMENT '売残高前週比',
  `buy_balance` int DEFAULT NULL COMMENT '買残高',
  `buy_balance_per` int DEFAULT NULL COMMENT '買残高前週比',
  `sell_balance_general_credit` int DEFAULT NULL COMMENT '売残高一般信用',
  `sell_balance_general_credit_per` int DEFAULT NULL COMMENT '売残高一般信用前週比',
  `sell_balance_system_credit` int DEFAULT NULL COMMENT '売残高制度信用',
  `sell_balance_system_credit_per` int DEFAULT NULL COMMENT '売残高制度信用前週比',
  `buy_balance_general_credit` int DEFAULT NULL COMMENT '買残高一般信用',
  `buy_balance_general_credit_per` int DEFAULT NULL COMMENT '買残高一般信用前週比',
  `buy_balance_system_credit` int DEFAULT NULL COMMENT '買残高制度信用',
  `buy_balance_system_credit_per` int DEFAULT NULL COMMENT '買残高制度信用前週比',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`symbol_code`,`weekend_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `symbols`
--

DROP TABLE IF EXISTS `symbols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symbols` (
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '銘柄コード',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '銘柄名',
  `exchange_code` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市場コード',
  `division_code` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区分コード',
  `bis_category_code` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '業種コード',
  `total_stocks` double DEFAULT NULL COMMENT '発行済株式数',
  `fiscal_year_end_basic` int DEFAULT NULL COMMENT '決算日付',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01 15:47:24
