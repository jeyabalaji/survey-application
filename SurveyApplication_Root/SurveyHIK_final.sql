-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: test2
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `apptest`
--

DROP TABLE IF EXISTS `apptest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apptest` (
  `fname` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cf1` varchar(45) DEFAULT NULL,
  `cf2` varchar(45) DEFAULT NULL,
  `cf3` varchar(45) DEFAULT NULL,
  `cf4` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assigned_surveys`
--

DROP TABLE IF EXISTS `assigned_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigned_surveys` (
  `srusername` varchar(25) NOT NULL,
  `assigned_survey` varchar(50) NOT NULL,
  PRIMARY KEY (`srusername`,`assigned_survey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_id` bigint(30) NOT NULL,
  `cat_name` varchar(45) DEFAULT NULL,
  `cat_desc` varchar(450) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `username` varchar(25) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `address` longtext,
  `email` varchar(30) DEFAULT NULL,
  `website` varchar(25) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `path` varchar(450) DEFAULT '../images/logo1.png',
  `apppath` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date` (
  `q_id` int(11) NOT NULL,
  `correct_date` varchar(45) DEFAULT NULL,
  `weightage` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `list_of_surveys`
--

DROP TABLE IF EXISTS `list_of_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_of_surveys` (
  `category_id` bigint(30) NOT NULL,
  `survey_id` bigint(30) NOT NULL,
  `survey_desc` varchar(200) DEFAULT NULL,
  `survey_intro` varchar(2000) DEFAULT NULL,
  `showable` int(2) DEFAULT '1',
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `multiple_options`
--

DROP TABLE IF EXISTS `multiple_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiple_options` (
  `q_id` bigint(30) NOT NULL,
  `option_1` longtext,
  `option_1_weightage` float DEFAULT NULL,
  `option_2` longtext,
  `option_2_weightage` float DEFAULT NULL,
  `option_3` longtext,
  `option_3_weightage` float DEFAULT NULL,
  `option_4` longtext,
  `option_4_weightage` float DEFAULT NULL,
  `option_5` longtext,
  `option_5_weightage` float DEFAULT NULL,
  `option_6` longtext,
  `option_6_weightage` float DEFAULT NULL,
  `option_7` longtext,
  `option_7_weightage` float DEFAULT NULL,
  `option_8` longtext,
  `option_8_weightage` float DEFAULT NULL,
  `option_9` longtext,
  `option_9_weightage` float DEFAULT NULL,
  `option_10` longtext,
  `option_10_weightage` float DEFAULT NULL,
  `numofoptions` int(10) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `q_id` bigint(30) NOT NULL,
  `question` varchar(400) DEFAULT NULL,
  `survey_id` bigint(30) DEFAULT NULL,
  `weightage` float DEFAULT NULL,
  `ans_type` varchar(45) DEFAULT NULL,
  `hint` varchar(145) DEFAULT NULL,
  `showable` int(2) DEFAULT '1',
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `q_id` bigint(30) NOT NULL,
  `lower_limit` varchar(45) DEFAULT NULL,
  `upper_limit` varchar(45) DEFAULT NULL,
  `split` varchar(45) DEFAULT NULL,
  `split_id_1` float DEFAULT NULL,
  `split_text_1` varchar(45) DEFAULT NULL,
  `split_id_2` float DEFAULT NULL,
  `split_text_2` varchar(45) DEFAULT NULL,
  `split_text_3` varchar(45) DEFAULT NULL,
  `split_text_4` varchar(45) DEFAULT NULL,
  `split_text_5` varchar(45) DEFAULT NULL,
  `split_text_6` varchar(45) DEFAULT NULL,
  `split_text_7` varchar(45) DEFAULT NULL,
  `split_text_8` varchar(45) DEFAULT NULL,
  `split_text_9` varchar(45) DEFAULT NULL,
  `split_text_10` varchar(45) DEFAULT NULL,
  `split_id_3` float DEFAULT NULL,
  `split_id_4` float DEFAULT NULL,
  `split_id_5` float DEFAULT NULL,
  `split_id_6` float DEFAULT NULL,
  `split_id_7` float DEFAULT NULL,
  `split_id_8` float DEFAULT NULL,
  `split_id_9` float DEFAULT NULL,
  `split_id_10` float DEFAULT NULL,
  `numofoptions` int(10) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `text_box`
--

DROP TABLE IF EXISTS `text_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_box` (
  `q_id` int(11) NOT NULL,
  `weightage` float DEFAULT NULL,
  `correct_answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `Full_Name` varchar(50) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `CF1` varchar(45) DEFAULT NULL,
  `CF2` varchar(45) DEFAULT NULL,
  `CF3` varchar(45) DEFAULT NULL,
  `CF4` varchar(45) DEFAULT NULL,
  `client_id` bigint(20) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `srusername` varchar(25) NOT NULL,
  `sr_password` varchar(45) DEFAULT NULL,
  `sr_email` varchar(45) DEFAULT NULL,
  `survey_id` varchar(5000) DEFAULT NULL,
  `client_id` bigint(30) DEFAULT NULL,
  `testemail` varchar(76) DEFAULT NULL,
  PRIMARY KEY (`srusername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-16 11:35:14
