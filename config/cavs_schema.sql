-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 10.16.52.30    Database: cavs2
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `aes_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `aes_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `mode` varchar(255) NOT NULL,
  `keysizes` varchar(255) NOT NULL,
  `function` varchar(100) NOT NULL,
  PRIMARY KEY (`configurationid`),
  KEY `iutid` (`iutid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ans_x963_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ans_x963_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `hashtype` varchar(255) NOT NULL,
  `min_field_size` int(11) NOT NULL,
  `max_field_size` int(11) NOT NULL,
  `min_key_length` int(11) DEFAULT NULL,
  `max_key_length` int(11) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1024) NOT NULL,
  `writer` varchar(45) NOT NULL,
  `iutid` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drbg_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `drbg_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `mechanism` varchar(45) NOT NULL DEFAULT '',
  `pr_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `pr_not_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `reseed_support` tinyint(1) NOT NULL DEFAULT '0',
  `with_df` tinyint(1) NOT NULL DEFAULT '0',
  `without_df` tinyint(1) NOT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gcm_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `gcm_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT NULL,
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `state` varchar(245) DEFAULT NULL,
  `keysize` varchar(245) DEFAULT NULL,
  `ivsource` varchar(245) DEFAULT NULL,
  `Initializationvectormin` int(245) DEFAULT '0',
  `Initializationvectormax` int(200) DEFAULT '0',
  `ptlenm1` int(45) DEFAULT NULL,
  `ptlenm2` int(45) DEFAULT NULL,
  `ptlennm1` int(45) DEFAULT NULL,
  `ptlennm2` int(45) DEFAULT NULL,
  `aadlenm1` int(45) DEFAULT NULL,
  `aadlenm2` int(45) DEFAULT NULL,
  `aadlennm1` int(45) DEFAULT NULL,
  `aadlennm2` int(45) DEFAULT NULL,
  `tlen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `configurationid` int(11) NOT NULL,
  `shared_secret_length` int(11) NOT NULL,
  `hashtype` varchar(255) NOT NULL,
  `kdf` varchar(45) NOT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hmac_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `hmac_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `hashtype` varchar(45) NOT NULL,
  `kbvalue` int(11) NOT NULL,
  `tlen` varchar(100) NOT NULL,
  `iutid` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`configurationid`),
  KEY `iutid` (`iutid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ikev1_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ikev1_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `auth_method` varchar(255) NOT NULL,
  `ni_min_length` int(11) NOT NULL,
  `ni_max_length` int(11) NOT NULL,
  `nr_min_length` int(11) NOT NULL,
  `nr_max_length` int(11) NOT NULL,
  `psk_min_length` int(11) DEFAULT NULL,
  `psk_max_length` int(11) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ikev2_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ikev2_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `ni_min_length` int(11) NOT NULL,
  `ni_max_length` int(11) NOT NULL,
  `nr_min_length` int(11) NOT NULL,
  `nr_max_length` int(11) NOT NULL,
  `dkm_length1` int(11) DEFAULT NULL,
  `dkm_length2` int(11) DEFAULT NULL,
  `dkm_child_length1` int(11) DEFAULT NULL,
  `dkm_child_length2` int(11) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `iut`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `iut` (
  `iutid` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_version` varchar(255) DEFAULT NULL,
  `iut_domain` varchar(255) DEFAULT NULL,
  `iut_description` varchar(1024) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL,
  `vendorid` int(11) NOT NULL,
  `iut_environment` varchar(1024) DEFAULT NULL,
  `algorithm` varchar(255) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'New',
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dirty_admin` tinyint(1) NOT NULL DEFAULT '0',
  `dirty_tester` tinyint(1) NOT NULL DEFAULT '1',
  `dirty_admin_comment` tinyint(4) NOT NULL DEFAULT '0',
  `dirty_tester_comment` tinyint(4) NOT NULL DEFAULT '0',
  `activity_log` varchar(1024) NOT NULL DEFAULT 'Waiting for tester to generate test vectors.',
  `prerequisite` varchar(255) DEFAULT NULL,
  `prerequisite_verify` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`iutid`),
  KEY `vendorid` (`vendorid`),
  KEY `userid` (`userid`),
  CONSTRAINT `iut_ibfk_2` FOREIGN KEY (`vendorid`) REFERENCES `vendor` (`vendorid`),
  CONSTRAINT `iut_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbkdf_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `kbkdf_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `kdf` varchar(255) NOT NULL,
  `prf` varchar(255) NOT NULL,
  `method_k` varchar(255) NOT NULL,
  `min_full_length` int(11) NOT NULL,
  `max_full_length` int(11) NOT NULL,
  `min_partial_length` int(11) NOT NULL,
  `max_partial_length` int(11) NOT NULL,
  `r_length` varchar(255) DEFAULT NULL,
  `ctr_location` varchar(255) DEFAULT NULL,
  `ctr_input_bit` tinyint(1) DEFAULT NULL,
  `zero_iv_bit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(45) NOT NULL,
  `log_writer` varchar(45) NOT NULL,
  `log` varchar(1024) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mechanism_option`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `mechanism_option` (
  `optionid` int(11) NOT NULL AUTO_INCREMENT,
  `configurationid` int(11) NOT NULL,
  `mechanism_option` varchar(255) NOT NULL,
  `entropy_input_length` int(11) NOT NULL,
  `nonce_length` int(11) NOT NULL,
  `personalization_string_length1` int(11) NOT NULL,
  `personalization_string_length2` int(11) NOT NULL,
  `additional_input_length1` int(11) NOT NULL,
  `additional_input_length2` int(11) NOT NULL,
  PRIMARY KEY (`optionid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sha3_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `sha3_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `hashtype` varchar(255) DEFAULT NULL,
  `orientation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sha_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `sha_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `hashtype` varchar(255) DEFAULT NULL,
  `orientation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shake_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `shake_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT NULL,
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `hashtype` varchar(255) DEFAULT NULL,
  `hashoutminlen` int(11) DEFAULT '0',
  `hashoutmaxlen` int(11) DEFAULT '0',
  `orientation` varchar(255) DEFAULT NULL,
  `zerolength` varchar(255) DEFAULT NULL,
  `outputorientation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snmp_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `snmp_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `engine_id1` varchar(255) NOT NULL,
  `engine_id2` varchar(255) NOT NULL,
  `password_length1` int(11) NOT NULL,
  `password_length2` int(11) NOT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `srtp_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `srtp_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `keysizes` varchar(255) NOT NULL,
  `kdrs` varchar(255) NOT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ssh_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ssh_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `hashtype` varchar(255) NOT NULL,
  `cipher` varchar(255) NOT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdes_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `tdes_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(45) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `iutid` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tls_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `tls_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL,
  `hashtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tpm_configuration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `tpm_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `iutid` int(11) DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `failcount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(32) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `designation` varchar(40) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT 'ACTIVE',
  `deactivation_reason` varchar(1024) DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vendor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `designation` varchar(40) DEFAULT NULL,
  `website` varchar(45) NOT NULL DEFAULT 'www.something.com',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(40) DEFAULT 'ACTIVE',
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contact_person2` varchar(255) DEFAULT NULL,
  `designation2` varchar(45) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'cavs2'
--
/*!50003 DROP FUNCTION IF EXISTS `updateIut` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`cavp`@`10.16.15.220` FUNCTION `updateIut`(iutId int) RETURNS int(11)
BEGIN
SET @configurationIds := (SELECT configuration_ids FROM iut WHERE id = iutId);
SET @statusCount := (SELECT COUNT(*) FROM (SELECT DISTINCT status FROM hmac_configuration WHERE FIND_IN_SET(id, @configurationIds))AS result);
if(@statusCount > 1) THEN
	UPDATE iut SET status = "Validation Failed" WHERE id = iutId;	
else
	SET @tempStatus := (SELECT DISTINCT status FROM hmac_configuration WHERE FIND_IN_SET(id, @configurationIds));
    if(@tempStatus=1) THEN
		UPDATE iut SET status = "Validation Passed" WHERE id = iutId;
    else if(@tempStatus=-1) THEN
		UPDATE iut SET status = "Validation Failed" WHERE id = iutId; 
    else
		UPDATE iut SET status = "Fax Generated" WHERE id = iutId;    
    END IF;
    END IF;
END IF;
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`cavp`@`10.16.15.220` PROCEDURE `update`(IN iutId INT,IN tname VARCHAR(40))
BEGIN
SET @configurationIds := (SELECT configuration_ids FROM iut WHERE iutid = iutId);
SET @statusCount := (SELECT COUNT(*) FROM (SELECT DISTINCT status FROM tname WHERE FIND_IN_SET(configurationid, @configurationIds))AS result);
if(@statusCount > 1) THEN
	UPDATE iut SET status = "Validation Failed" WHERE iutid = iutId;	
else
	SET @tempStatus := (SELECT DISTINCT status FROM tname WHERE FIND_IN_SET(configurationid, @configurationIds));
    if(@tempStatus=1) THEN
		UPDATE iut SET status = "Validation Passed" WHERE iutid = iutId;
    else if(@tempStatus=-1) THEN
		UPDATE iut SET status = "Validation Failed" WHERE iutid = iutId; 
    else
		UPDATE iut SET status = "Fax Generated" WHERE iutid = iutId;    
    END IF;
    END IF;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 10:32:39
