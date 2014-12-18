-- MySQL dump 10.13  Distrib 5.6.21, for osx10.8 (x86_64)
--
-- Host: localhost    Database: ezpublish_fi
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `real_language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,2,'Lock');
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked'),(2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (1,1),(4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(54,1),(56,1),(57,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'eng-GB','English (United Kingdom)'),(0,4,'fin-FI','Finnish');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
INSERT INTO `ezcontentbrowserecent` VALUES (1418229714,1,'eZ Publish',2,14),(1418237513,2,'eZ Publish Developer Blog',60,14);
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2',NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Folder\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(0,'<short_title|title>',1024392098,14,2,'article',2,1,3,1082454989,14,'c15b600eb9198b1924063b5a68758232',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1031484992,8,5,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(0,'<name>',1052385361,14,11,'link',2,0,3,1082455072,14,'74ec6507063150bc813549b22534ad48',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1052385472,14,12,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Comment\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900',NULL,'a:2:{s:6:\"eng-GB\";s:19:\"Common ini settings\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(1,'<title>',1081858045,14,15,'template_look',2,0,3,1081858045,14,'59b43cd9feaaf0e45ac974fb4bbd3f92',NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Template look\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL,0),(0,'<short_title|title>',1418227958,14,16,'mainsite_frontpage',2,0,3,1418234077,14,'a4611af6a2a6a9b57433c43b77ad05cf','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:18:\"Mainsite Frontpage\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<short_title|title>',1418228434,14,17,'content_page',2,0,3,1418228453,14,'b3396cbaf1ea624da0b19442f5de8591','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:12:\"Content Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1418228465,14,18,'navigation_link',2,0,3,1418229804,14,'a0fe060a82219e023f1a9a933253bf96','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:15:\"Navigation Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<url_slug|short_title|title>',1418228500,14,19,'blog_post',2,0,3,1418237143,14,'935262375ff11c9c63f96aed0ba0c358','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Blog Post\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<short_title|title>',1418229479,14,20,'blog_frontpage',2,1,3,1418230175,14,'ceccb55dcde8058bdc877c0692b361fa','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:14:\"Blog Frontpage\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',2,0,0,0,0,255,0,0,0,'New article','','','','','ezstring',1,'title',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',6,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring',7,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring',116,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezxmltext',117,'caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',5,0,0,0,0,2,0,0,0,'','','','',NULL,'ezimage',118,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',120,'intro',0,1,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Intro\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',121,'body',0,0,1,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',2,0,0,0,0,0,0,0,0,'','','','','','ezboolean',123,'enable_comments',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:15:\"Enable comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',11,0,0,0,0,255,0,0,0,'','','','','','ezstring',143,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',11,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',144,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',11,0,0,0,0,0,0,0,0,'','','','','','ezurl',145,'location',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring',146,'name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezxmltext',147,'description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile',148,'file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',13,0,0,0,0,100,0,0,0,'','','','','','ezstring',149,'subject',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',13,0,0,0,0,0,0,0,0,'','','','','','ezstring',150,'author',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',13,0,0,0,0,20,0,0,0,'','','','','','eztext',151,'message',0,1,1,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,255,0,0,0,'','','','','','ezstring',152,'short_title',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezauthor',153,'author',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',154,'image',0,0,1,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"Short name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Show children\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"Index Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Default Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"Debug Output\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Debug By IP\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:13:\"Debug IP List\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Debug Redirection\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"View Caching\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:14:\"Template Cache\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Template Compile\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Small Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:17:\"Image Medium Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:16:\"Image Large Size\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteName','','override;user;admin;demo','ezinisetting',172,'title',0,0,0,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,6,0,0,0,'site.ini','SiteSettings','MetaDataArray','','override;user;admin;demo','ezinisetting',173,'meta_data',0,0,0,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Meta data\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'sitestyle','','','','','ezpackage',175,'sitestyle',0,0,0,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Sitestyle\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',176,'id',0,0,1,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:2:\"id\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,1,0,0,0,'site.ini','MailSettings','AdminEmail','','override;user;admin;demo','ezinisetting',177,'email',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteURL','','override;user;admin;demo','ezinisetting',178,'siteurl',0,0,0,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:8:\"Site URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezstring',181,'title',0,0,1,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezstring',182,'short_title',0,0,1,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',183,'content',0,0,1,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Content\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'meta',16,0,0,0,0,0,0,0,0,'','','','','','ezauthor',184,'author',0,0,1,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',185,'title',0,0,1,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',186,'short_title',0,0,1,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',17,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',187,'content',0,0,1,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Content\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'meta',17,0,0,0,0,0,0,0,0,'','','','','','ezauthor',188,'author',0,0,1,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',189,'title',0,0,1,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',193,'title',0,1,1,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',194,'short_title',0,0,1,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',195,'content',0,1,1,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Content\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'meta',19,0,0,0,0,0,0,0,0,'','','','','','ezauthor',196,'author',0,0,1,5,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezimage',198,'main_image',0,0,0,6,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:10:\"Main image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',199,'teaser',0,0,1,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:6:\"Teaser\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',20,0,0,0,0,0,0,0,0,'','','','','','ezstring',200,'title',0,0,1,1,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',20,0,0,0,0,0,0,0,0,'','','','','','ezstring',201,'short_title',0,0,1,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',20,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',202,'content',0,0,1,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Content\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'meta',20,0,0,0,0,0,0,0,0,'','','','','','ezauthor',203,'author',0,0,1,4,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',204,'internal_link',0,0,1,2,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"Internal Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',205,'external_link',0,0,1,3,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:13:\"External Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'meta',19,0,0,0,0,1,0,0,0,'','','','','','eztags',206,'tags',0,0,1,7,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',207,'timestamp',0,0,1,8,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:9:\"Timestamp\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,255,0,0,0,'','','','','','ezstring',208,'url_slug',0,0,1,9,'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"URL slug\";s:16:\"always-available\";s:6:\"eng-GB\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(2,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(5,0,3,'Media'),(11,0,1,'Content'),(12,0,3,'Media'),(13,0,1,'Content'),(14,0,4,'Setup'),(15,0,4,'Setup'),(16,0,5,'eZ Finland'),(17,0,5,'eZ Finland'),(18,0,5,'eZ Finland'),(19,0,5,'eZ Finland'),(20,0,5,'eZ Finland');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'eng-GB','Folder'),(2,0,3,'eng-GB','Article'),(3,0,3,'eng-GB','User group'),(4,0,3,'eng-GB','User'),(5,0,3,'eng-GB','Image'),(11,0,3,'eng-GB','Link'),(12,0,3,'eng-GB','File'),(13,0,3,'eng-GB','Comment'),(14,0,3,'eng-GB','Common ini settings'),(15,0,3,'eng-GB','Template look'),(16,0,3,'eng-GB','Mainsite Frontpage'),(17,0,3,'eng-GB','Content Page'),(18,0,3,'eng-GB','Navigation Link'),(19,0,3,'eng-GB','Blog Post'),(20,0,3,'eng-GB','Blog Frontpage');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content'),(1031216941,14,2,1033922113,14,'Users'),(1032009743,14,3,1033922120,14,'Media'),(1081858024,14,4,1081858024,14,'Setup'),(1418227946,14,5,1418227951,14,'eZ Finland');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (1,7,1,2,3,1418230214,'Root',14,1033917596,'9459d3c29e15006e45197295722c7ade',1,1),(3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,1,11,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,4,14,2,3,1418663502,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1),(15,2,54,2,2,1301062376,'Plain site',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1),(1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1),(16,5,57,4,6,1418235323,'ABout eZ Publish fy',14,1418229628,'3f4bc9736341d7a93d56978ef8cdd978',1,1),(20,2,59,2,2,1418236655,'eZ Publish Developer Blog',14,1418229714,'c6ceb1cc5dce7b6d679c504e31a5766d',1,1),(19,4,60,2,2,1418237434,'Assetic cache busting',14,1418230804,'f32bafb4310b461637f0bcb74ce29779',1,1),(19,4,61,2,2,1418237455,'Creating Twig helpers',14,1418237382,'76c7ed97ee5d91da041d65c4e76d5625',1,1),(19,4,62,2,2,1418237621,'Base eZ Publish installation',14,1418237397,'ef88cbdc4a439471b85f2e6ccf4c269d',1,1),(19,5,63,2,2,1418237537,'Composer explained',14,1418237495,'80271c9aa7184ade497b759c708c4ca3',1,1),(19,5,64,2,2,1418237594,'IP restriction using Symfony2 Security Voters',14,1418237513,'f8df9a3b119a0f5983278554200f05a4',1,1);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,4,1,0,0,'Welcome to eZ Publish','ezstring',1,'eng-GB',3,0,'welcome to ez publish',6),(0,4,1,0,0,'Root','ezstring',1,'eng-GB',3,0,'root',7),(0,119,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">This is eZ plain site package with a limited setup of the eZ Publish functionality. For a full blown eZ Publish please chose the Website Interface or the eZ Flow site package at the installation.</paragraph></section>\n','ezxmltext',2,'eng-GB',3,0,'',6),(0,119,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',2,'eng-GB',3,0,'',7),(0,7,4,NULL,NULL,'Main group','ezstring',7,'eng-GB',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'eng-GB',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'eng-GB',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'eng-GB',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'eng-GB',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'eng-GB',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'eng-GB',3,0,'',1),(0,6,12,0,0,'Administrator users','ezstring',24,'eng-GB',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'eng-GB',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'eng-GB',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'eng-GB',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',3),(0,8,14,0,0,'Administrator','ezstring',28,'eng-GB',3,0,'administrator',4),(0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',3),(0,9,14,0,0,'User','ezstring',29,'eng-GB',3,0,'user',4),(30,12,14,0,0,'','ezuser',30,'eng-GB',3,0,'',3),(30,12,14,0,0,'{\"login\":\"admin\",\"password_hash\":\"52657265108f63a684ca01fdbff32249\",\"email\":\"foo@bar.com\",\"password_hash_type\":2}','ezuser',30,'eng-GB',3,0,'',4),(0,4,41,0,0,'Media','ezstring',98,'eng-GB',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'eng-GB',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'eng-GB',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'eng-GB',3,0,'user group for the anonymous user',1),(0,155,1,0,0,'eZ Publish','ezstring',102,'eng-GB',3,0,'ez publish',6),(0,155,1,0,0,'','ezstring',102,'eng-GB',3,0,'',7),(0,155,41,0,0,'','ezstring',103,'eng-GB',3,0,'',1),(0,156,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">eZ Publish is a popular open source content management system and development framework. It allows the development of professional, customized and dynamic web solutions. It can be used to build anything from a personal homepage to a multinational corporate website with role based multiuser access, online shopping, discussion forums and other advanced functionality. In addition, because of its open nature, eZ Publish can easily be plugged into, communicate and coexist with existing IT-solutions.</paragraph><section><header>Documentation and guidance</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">The <link target=\"_blank\" url_id=\"9\">eZ Publish documentation</link> covers common topics related to the setup and daily use of the eZ Publish content management system/framework. In addition, it also covers some advanced topics. People who are unfamiliar with eZ Publish should at least read the \"eZ Publish basics\" chapter.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">If you\'re unable to find an answer/solution to a specific question/problem within the documentation pages, you should make use of the official <link target=\"_blank\" url_id=\"4\">eZ Publish forum</link>. People who need professional help should purchase <link target=\"_blank\" url_id=\"10\">support</link> or <link target=\"_blank\" url_id=\"11\">consulting</link> services. It is also possible to sign up for various <link target=\"_blank\" url_id=\"12\">training sessions</link>.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For more information about eZ Publish and other products/services from eZ Systems, please visit <link target=\"_blank\" url_id=\"8\">ez.no</link>.</paragraph></section><section><header>Tutorials</header><section><header><strong>New users</strong></header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"13\">eZ Publish Administration Interface</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"14\">eZ Publish Online Editor Video</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"15\">eZ Flow Video Tutorial</link></paragraph></li></ul></paragraph></section><section><header>Experienced users</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"16\">How to develop eZ Publish Extensions</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"17\">How to create custom workflow</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"18\">How to use REST API interface</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" url_id=\"19\">Asynchronous publishing</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_blank\" xhtml:id=\"internal-source-marker_0.15448186383582652\" url_id=\"20\">Upgrading to 4.5</link></paragraph></li></ul><line>Find more&amp;nbsp;<link target=\"_blank\" url_id=\"21\">tutorials</link>&amp;nbsp;and&amp;nbsp;<link target=\"_blank\" url_id=\"22\">videos</link> online.</line></paragraph></section></section></section>\n','ezxmltext',104,'eng-GB',3,0,'',6),(0,156,1,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',104,'eng-GB',3,0,'',7),(0,156,41,0,1045487555,'','ezxmltext',105,'eng-GB',3,0,'',1),(108,158,1,0,0,'','ezboolean',108,'eng-GB',3,0,'',6),(108,158,1,0,0,'','ezboolean',108,'eng-GB',3,0,'',7),(0,158,41,0,0,'','ezboolean',109,'eng-GB',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'eng-GB',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'eng-GB',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'eng-GB',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'eng-GB',3,0,'',1),(0,158,45,0,0,'','ezboolean',128,'eng-GB',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'eng-GB',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'eng-GB',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'eng-GB',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'eng-GB',3,0,'',1),(0,158,49,0,1,'','ezboolean',146,'eng-GB',3,1,'',1),(0,4,50,0,0,'Files','ezstring',147,'eng-GB',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'eng-GB',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'eng-GB',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'eng-GB',3,0,'',1),(0,158,50,0,1,'','ezboolean',151,'eng-GB',3,1,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'eng-GB',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'eng-GB',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'eng-GB',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'eng-GB',3,0,'',1),(0,158,51,0,1,'','ezboolean',156,'eng-GB',3,1,'',1),(0,159,52,0,0,'Common INI settings','ezstring',157,'eng-GB',2,0,'common ini settings',1),(0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'eng-GB',2,0,'',1),(0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'eng-GB',2,0,'',1),(0,162,52,0,0,'disabled','ezinisetting',160,'eng-GB',2,0,'',1),(0,163,52,0,0,'disabled','ezinisetting',161,'eng-GB',2,0,'',1),(0,164,52,0,0,'','ezinisetting',162,'eng-GB',2,0,'',1),(0,165,52,0,0,'enabled','ezinisetting',163,'eng-GB',2,0,'',1),(0,166,52,0,0,'disabled','ezinisetting',164,'eng-GB',2,0,'',1),(0,167,52,0,0,'enabled','ezinisetting',165,'eng-GB',2,0,'',1),(0,168,52,0,0,'enabled','ezinisetting',166,'eng-GB',2,0,'',1),(0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'eng-GB',2,0,'',1),(0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'eng-GB',2,0,'',1),(0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'eng-GB',2,0,'',1),(0,172,54,0,0,'Plain site','ezinisetting',170,'eng-GB',2,0,'',2),(0,173,54,0,0,'author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework','ezinisetting',171,'eng-GB',2,0,'',2),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1082016632\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',172,'eng-GB',2,0,'',2),(0,175,54,0,0,'0','ezpackage',173,'eng-GB',2,0,'0',2),(0,176,54,0,0,'sitestyle_identifier','ezstring',174,'eng-GB',2,0,'sitestyle_identifier',2),(0,177,54,0,0,'nospam@ez.no','ezinisetting',175,'eng-GB',2,0,'',2),(0,178,54,0,0,'ez.no','ezinisetting',176,'eng-GB',2,0,'',2),(0,179,10,0,0,'','eztext',177,'eng-GB',3,0,'',2),(0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',3),(0,179,14,0,0,'','eztext',178,'eng-GB',3,0,'',4),(0,180,10,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1416335971\"/>\n','ezimage',179,'eng-GB',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',3),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'eng-GB',3,0,'',4),(0,4,56,0,NULL,'Design','ezstring',181,'eng-GB',3,0,'design',1),(0,155,56,0,NULL,'','ezstring',182,'eng-GB',3,0,'',1),(0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'eng-GB',3,0,'',1),(0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'eng-GB',3,0,'',1),(0,158,56,0,1,'','ezboolean',185,'eng-GB',3,1,'',1),(0,181,57,0,NULL,'eZ Publish ETUSIZU!!','ezstring',186,'fin-FI',4,0,'ez publish etusizu!!',1),(0,181,57,0,NULL,'eZ Publish ETUSIZU!!','ezstring',186,'fin-FI',4,0,'ez publish etusizu!!',2),(0,181,57,0,NULL,'eZ Publish ETUSIZU!!','ezstring',186,'fin-FI',4,0,'ez publish etusizu!!',3),(0,181,57,0,NULL,'eZ Publish ETUSIZU!!','ezstring',186,'fin-FI',4,0,'ez publish etusizu!!',4),(0,181,57,0,NULL,'eZ Publish ETUSIZU!!','ezstring',186,'fin-FI',4,0,'ez publish etusizu!!',5),(0,182,57,0,NULL,'','ezstring',187,'fin-FI',4,0,'',1),(0,182,57,0,NULL,'','ezstring',187,'fin-FI',4,0,'',2),(0,182,57,0,NULL,'','ezstring',187,'fin-FI',4,0,'',3),(0,182,57,0,NULL,'','ezstring',187,'fin-FI',4,0,'',4),(0,182,57,0,NULL,'','ezstring',187,'fin-FI',4,0,'',5),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>asdasdasd</paragraph></section>\n','ezxmltext',188,'fin-FI',4,0,'',1),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>asdasdasd</paragraph></section>\n','ezxmltext',188,'fin-FI',4,0,'',2),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>asdasdasd</paragraph></section>\n','ezxmltext',188,'fin-FI',4,0,'',3),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>asdasdasd</paragraph></section>\n','ezxmltext',188,'fin-FI',4,0,'',4),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>asdasdasd</paragraph></section>\n','ezxmltext',188,'fin-FI',4,0,'',5),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',189,'fin-FI',4,0,'',1),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',189,'fin-FI',4,0,'',2),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',189,'fin-FI',4,0,'',3),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',189,'fin-FI',4,0,'',4),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',189,'fin-FI',4,0,'',5),(0,200,59,0,NULL,'eZ Publish Developer Blog','ezstring',193,'eng-GB',2,0,'ez publish developer blog',1),(0,200,59,0,NULL,'eZ Publish Developer Blog','ezstring',193,'eng-GB',2,0,'ez publish developer blog',2),(0,201,59,0,NULL,'','ezstring',194,'eng-GB',2,0,'',1),(0,201,59,0,NULL,'','ezstring',194,'eng-GB',2,0,'',2),(0,202,59,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',195,'eng-GB',2,0,'',1),(0,202,59,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>You should use Skeleton if you\'re embarking on a smaller project or just don\'t feel like you need all the utility of larger frameworks. Skeleton only styles a handful of standard HTML elements and includes a grid, but that\'s often more than enough to get started. In fact, this site is built on Skeleton and has ~200 lines of custom CSS (half of which is the docking navigation).</paragraph></section>\n','ezxmltext',195,'eng-GB',2,0,'',2),(0,203,59,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',196,'eng-GB',2,0,'',1),(0,203,59,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',196,'eng-GB',2,0,'',2),(0,181,57,0,NULL,'ABout eZ Publish fy','ezstring',197,'eng-GB',2,0,'about ez publish fy',2),(0,181,57,0,NULL,'ABout eZ Publish fy','ezstring',197,'eng-GB',2,0,'about ez publish fy',3),(0,181,57,0,NULL,'ABout eZ Publish fy','ezstring',197,'eng-GB',2,0,'about ez publish fy',4),(0,181,57,0,NULL,'ABout eZ Publish fy','ezstring',197,'eng-GB',2,0,'about ez publish fy',5),(0,182,57,0,NULL,'','ezstring',198,'eng-GB',2,0,'',2),(0,182,57,0,NULL,'','ezstring',198,'eng-GB',2,0,'',3),(0,182,57,0,NULL,'','ezstring',198,'eng-GB',2,0,'',4),(0,182,57,0,NULL,'','ezstring',198,'eng-GB',2,0,'',5),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is information!</paragraph></section>\n','ezxmltext',199,'eng-GB',2,0,'',2),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>eZ Publish -Julkaisujärjestelmä (CMS)</header><paragraph>eZ Publish (lausutaan \"easy publish\") on <link target=\"_self\" url_id=\"23\">avoimen lähdekoodin sisällönhallintajärjestelmä</link>. Järjestelmä toimii ns. LAMP-ympäristössä, joka koostuu seuraavista osista: <link target=\"_self\" url_id=\"24\">Linux</link>, <link target=\"_self\" url_id=\"25\">Apache</link>, <link target=\"_self\" url_id=\"26\">MySQL</link>, <link target=\"_self\" url_id=\"27\">PHP</link>. Alustaksi sopii myös Windows ja muut käyttöjärjestelmät.</paragraph><paragraph>eZ Publishin kehittämisestä vastaa pääasiallisesti <link target=\"_self\" url_id=\"28\">norjalainen eZ Systems -yritys</link>. eZ Publishin voi ladata ilmaiseksi <link target=\"_self\" url_id=\"29\">GPL-lisenssillä</link> tai ostaa suljetun lisenssin. eZ Systems tarjoaa tuotteelle kaupallista tukea, konsultointia sekä koulutusta. Suomessa järjestelmästä on kehityskokemusta ainakin <link target=\"_self\" url_id=\"30\">Exove:lla</link>, <link target=\"_self\" url_id=\"31\">Eventio Oy:llä</link>,<link target=\"_self\" url_id=\"32\">Brain Alliance Solutions Oy:llä</link>, <link target=\"_self\" url_id=\"33\">NXC Finland Oy:llä</link> ja <link target=\"_self\" url_id=\"34\">Asamoa Oy:llä</link>. Tahoja on varmasti muitakin.</paragraph><paragraph>eZ Publishin <link target=\"_self\" url_id=\"35\">latauslinkin</link> ja lisätietoja (<link target=\"_self\" url_id=\"36\">tukipalveluiden hinnoittelu</link>, jne.) saat <link target=\"_self\" url_id=\"37\">eZ Systemsin sivustolta</link>.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_1_1_1\"/></paragraph><section><section><header>Käyttäjät</header><paragraph>Huhtikuussa 2011 tuotteella on eZ Systemsin mukaan:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Yli 3 miljoonaa latausta</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">6000 maksavaa asiakasta ympäri maailman</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">230 yrityksen maailmanlaajuinen kumppaniverkosto</paragraph></li></ul></paragraph><paragraph>Tuote on laajasti käytössä etenkin Keski-Euroopan mediajäteillä (<link target=\"_self\" url_id=\"38\">Lagardère</link>, <link target=\"_self\" url_id=\"39\">Gruner + Jahr</link>, jne). Yritysten tuotemerkkejä ovat mm. <link target=\"_self\" url_id=\"40\">Vogue</link>, <link target=\"_self\" url_id=\"41\">Elle</link> ja <link target=\"_self\" url_id=\"42\">Stern</link>.</paragraph><paragraph>Tuote sopii sekä perussivustojen, että laajempien palveluiden (esim. portaalit) rakentamiseen. Koska järjestelmä on kohtuullisen raskas, kannattaa kevyen sisällönhallinnan tarpeisiin harkita myös muita vaihtoehtoja.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_2_1_1\"/></paragraph></section></section><section><section><header>eZ Publish Suomessa</header><paragraph>Tuote on käytöss ainakin <link target=\"_self\" url_id=\"43\">Fiskars Oyj:llä</link>, <link target=\"_self\" url_id=\"44\">Sanoma Oyj:llä</link> <link target=\"_self\" url_id=\"45\">Finnlines Oyj:llä</link>, <link target=\"_self\" url_id=\"46\">Kekkilä Oy:llä</link>, <link target=\"_self\" url_id=\"47\">Kaupan liitolla</link>,<link target=\"_self\" url_id=\"48\">Kuvataideopettajat ry:llä</link>, <link target=\"_self\" url_id=\"49\">Teknisen Kaupan ja Palveluiden yhdistyksellä</link>, <link target=\"_self\" url_id=\"50\">Voima-lehdellä</link>, <link target=\"_self\" url_id=\"51\">Finnveralla</link>, <link target=\"_self\" url_id=\"52\">Hondalla</link>,<link target=\"_self\" url_id=\"53\">Tecnotree Oyj:llä</link>, <link target=\"_self\" url_id=\"54\">European Batteries Oy:llä</link> ja <link target=\"_self\" url_id=\"55\">Kymenlaakson Sähköllä</link> ja <link target=\"_self\" url_id=\"56\">Ixonos Oyj:llä</link>.</paragraph><paragraph>Lisäksi esimerkiksi Ikaalisten kaupungin <link target=\"_self\" url_id=\"57\">Mökkiavain.fi -palvelu</link> -palvelu on toteutettu sen avulla. Mökkiavain-palvelussa käytetään järjestelmän kieliversio-ominaisuuksia - sivusto on saatavilla suomenkielen lisäksi<link target=\"_self\" url_id=\"58\">englanniksi</link>, <link target=\"_self\" url_id=\"59\">espanjaksi</link>, <link target=\"_self\" url_id=\"60\">saksaksi</link>, <link target=\"_self\" url_id=\"61\">italiaksi</link> ja <link target=\"_self\" url_id=\"62\">venäjäksi</link>. Kieliversiot on eroteltu ns. <link target=\"_self\" url_id=\"63\">Domain perusteisina siteaccesseina</link>. Katso myös <link target=\"_self\" url_id=\"64\">eZ Systemsin Suomen referenssisivu</link>.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_3_1_1\"/></paragraph></section></section><section><section><header>Perusperiaatteet</header><paragraph>Käytännössä kaikki sisällönhallintajärjestelmät yhdistävät tietokannasta saadun datan ja sivupohjat (sapluunoita) käyttäjälle lähetettäväksi HTML:ksi. Myös eZ Publish toimii näin - sisältö ja ulkoasu ovat siis erotettuja toisistaan. Esimerkiksi sivuston ulkoasun voi uusia sivupohjia muokkaamalla.</paragraph><paragraph>Erikoisempi ratkaisu taas on ns. <link target=\"_self\" url_id=\"65\">sisältöluokkien</link> käyttäminen. Jokainen objekti (sivu, tiedosto, jne.) on rakennettu oman sisältöluokan avulla. Sisältöluokka määrittelee objektin tarvitsemat kentät (teksti, tiedosto, päivämäärä, jne.). Voit itse muokata <link target=\"_self\" url_id=\"65\">olemassaolevia sisältöluokkia</link> tai luoda kokonaan uusia. Sisältöluokan kenttien näyttäminen (käyttäjälle) on sivupohjamoottorin tehtävä.</paragraph><paragraph>Sisällönhallinnassa on hyvät valmiudet tuoda sisältöä muista järjestelmistä esim. XML- tai CSV- muodossa. Vakioasennukseen voi tuoda helposti RSS-syötteitä. Muiden muotojen importointiin voi käyttää <link target=\"_self\" url_id=\"66\">Import-laajennusta</link>. Hyvä käytännön esimerkki sivustosta johon tuodaan sisältöä muualta on <link target=\"_self\" url_id=\"67\">premiere.fr</link>. Sivustolle tuodaan elokuvien perustiedot XML-muodossa ja niihin liitetään mm. arvostelutoiminnot, jne. eZ Publishissa.</paragraph><paragraph>eZ Publish ottaa tuoreimmassa (4.x.x) versiossaan huomioon myös <link target=\"_self\" url_id=\"68\">hakukoneoptimoinnin perusteet</link>.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_4_1_1\"/></paragraph></section></section><section><section><header>Vaihtoehtoja eZ Publishille</header><paragraph>Vaikka eZ Publish on melkoinen <link target=\"_self\" url_id=\"69\">MacGyverin linkkuveitsi</link> on yksi tuote harvoin on paras kaikessa. Alla muutama vaihtoehtoinen <link target=\"_self\" url_id=\"23\">julkaisujärjestelmä</link> eZ Publishille tarpeiden mukaan jaoteltuna.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_4_1_2_1\"/></paragraph><section><header>Kevyt sisällönhallinta</header><paragraph>Kevyen sisällönhallinnan tarpeisiin kannattaa harkita joko valmista palvelua kuten <link target=\"_self\" url_id=\"70\">Kotisivukonetta</link> tai jotain kevyempää ohjelmistoa kuten <link target=\"_self\" url_id=\"71\">CMS Made Simple</link>.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_4_1_3_1\"/></paragraph></section><section><header>Blogi / verkkopäiväkirja</header><paragraph>Blogin ylläpitämiseen on useita hyviä ohjelmistoja. Esimerkiksi <link target=\"_self\" url_id=\"72\">WordPress</link> on helppo ja selkeä. Huonona puolena siinä on usein esiintyvät tietoturva-aukot.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_4_1_4_1\"/></paragraph></section><section><header>Sosiaalisen median verkkopalvelut</header><paragraph>Jos haluat rakentaa Facebook-tyyppisen sosiaalisen median verkkopalvelun kannattaa tutustua <link target=\"_self\" url_id=\"73\">Elgg-tuotteeseen</link>. Myös <link target=\"_self\" url_id=\"74\">Drupal</link> on varteenoteettava vaihtoehto.</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><anchor name=\"eztoc_5_1_1\"/></paragraph></section></section></section><section><section><header>Linkkejä</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"28\">eZ Systems AS</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"75\">Dokumentaatio (4.0.0)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"76\">Käyttöohje (4.0.0)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"77\">Learn eZ publish -tutoriaali</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"78\">eZ Projects</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"79\">Planet eZ Publish (uutisia, jne.)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"80\">eZpedia</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"81\">Bug tracker</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"82\">eZ Publish 5 Javascript Client API docs</link></paragraph></li></ul></paragraph></section></section></section></section>\n','ezxmltext',199,'eng-GB',2,0,'',3),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>eZ Publish (lausutaan \"easy publish\") on <link target=\"_self\" url_id=\"23\">avoimen lähdekoodin sisällönhallintajärjestelmä</link>. Järjestelmä toimii ns. LAMP-ympäristössä, joka koostuu seuraavista osista: <link target=\"_self\" url_id=\"24\">Linux</link>, <link target=\"_self\" url_id=\"25\">Apache</link>, <link target=\"_self\" url_id=\"26\">MySQL</link>, <link target=\"_self\" url_id=\"27\">PHP</link>. Alustaksi sopii myös Windows ja muut käyttöjärjestelmät.</header><paragraph>eZ Publishin kehittämisestä vastaa pääasiallisesti <link target=\"_self\" url_id=\"28\">norjalainen eZ Systems -yritys</link>. eZ Publishin voi ladata ilmaiseksi <link target=\"_self\" url_id=\"29\">GPL-lisenssillä</link> tai ostaa suljetun lisenssin. eZ Systems tarjoaa tuotteelle kaupallista tukea, konsultointia sekä koulutusta. Suomessa järjestelmästä on kehityskokemusta ainakin <link target=\"_self\" url_id=\"30\">Exove:lla</link>, <link target=\"_self\" url_id=\"31\">Eventio Oy:llä</link>,<link target=\"_self\" url_id=\"32\">Brain Alliance Solutions Oy:llä</link>, <link target=\"_self\" url_id=\"33\">NXC Finland Oy:llä</link> ja <link target=\"_self\" url_id=\"34\">Asamoa Oy:llä</link>. Tahoja on varmasti muitakin.</paragraph><paragraph>eZ Publishin <link target=\"_self\" url_id=\"35\">latauslinkin</link> ja lisätietoja (<link target=\"_self\" url_id=\"36\">tukipalveluiden hinnoittelu</link>, jne.) saat <link target=\"_self\" url_id=\"37\">eZ Systemsin sivustolta</link>.</paragraph><paragraph><anchor name=\"eztoc_1_1_1\"/></paragraph><section><section><header>Käyttäjät</header><paragraph>Huhtikuussa 2011 tuotteella on eZ Systemsin mukaan:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Yli 3 miljoonaa latausta</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">6000 maksavaa asiakasta ympäri maailman</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">230 yrityksen maailmanlaajuinen kumppaniverkosto</paragraph></li></ul></paragraph><paragraph>Tuote on laajasti käytössä etenkin Keski-Euroopan mediajäteillä (<link target=\"_self\" url_id=\"38\">Lagardère</link>, <link target=\"_self\" url_id=\"39\">Gruner + Jahr</link>, jne). Yritysten tuotemerkkejä ovat mm. <link target=\"_self\" url_id=\"40\">Vogue</link>, <link target=\"_self\" url_id=\"41\">Elle</link> ja <link target=\"_self\" url_id=\"42\">Stern</link>.</paragraph><paragraph>Tuote sopii sekä perussivustojen, että laajempien palveluiden (esim. portaalit) rakentamiseen. Koska järjestelmä on kohtuullisen raskas, kannattaa kevyen sisällönhallinnan tarpeisiin harkita myös muita vaihtoehtoja.</paragraph><paragraph><anchor name=\"eztoc_2_1_1\"/></paragraph></section></section><section><section><header>eZ Publish Suomessa</header><paragraph>Tuote on käytöss ainakin <link target=\"_self\" url_id=\"43\">Fiskars Oyj:llä</link>, <link target=\"_self\" url_id=\"44\">Sanoma Oyj:llä</link> <link target=\"_self\" url_id=\"45\">Finnlines Oyj:llä</link>, <link target=\"_self\" url_id=\"46\">Kekkilä Oy:llä</link>, <link target=\"_self\" url_id=\"47\">Kaupan liitolla</link>,<link target=\"_self\" url_id=\"48\">Kuvataideopettajat ry:llä</link>, <link target=\"_self\" url_id=\"49\">Teknisen Kaupan ja Palveluiden yhdistyksellä</link>, <link target=\"_self\" url_id=\"50\">Voima-lehdellä</link>, <link target=\"_self\" url_id=\"51\">Finnveralla</link>, <link target=\"_self\" url_id=\"52\">Hondalla</link>,<link target=\"_self\" url_id=\"53\">Tecnotree Oyj:llä</link>, <link target=\"_self\" url_id=\"54\">European Batteries Oy:llä</link> ja <link target=\"_self\" url_id=\"55\">Kymenlaakson Sähköllä</link> ja <link target=\"_self\" url_id=\"56\">Ixonos Oyj:llä</link>.</paragraph><paragraph>Lisäksi esimerkiksi Ikaalisten kaupungin <link target=\"_self\" url_id=\"57\">Mökkiavain.fi -palvelu</link> -palvelu on toteutettu sen avulla. Mökkiavain-palvelussa käytetään järjestelmän kieliversio-ominaisuuksia - sivusto on saatavilla suomenkielen lisäksi<link target=\"_self\" url_id=\"58\">englanniksi</link>, <link target=\"_self\" url_id=\"59\">espanjaksi</link>, <link target=\"_self\" url_id=\"60\">saksaksi</link>, <link target=\"_self\" url_id=\"61\">italiaksi</link> ja <link target=\"_self\" url_id=\"62\">venäjäksi</link>. Kieliversiot on eroteltu ns. <link target=\"_self\" url_id=\"63\">Domain perusteisina siteaccesseina</link>. Katso myös <link target=\"_self\" url_id=\"64\">eZ Systemsin Suomen referenssisivu</link>.</paragraph><paragraph><anchor name=\"eztoc_3_1_1\"/></paragraph></section></section><section><section><header>Perusperiaatteet</header><paragraph>Käytännössä kaikki sisällönhallintajärjestelmät yhdistävät tietokannasta saadun datan ja sivupohjat (sapluunoita) käyttäjälle lähetettäväksi HTML:ksi. Myös eZ Publish toimii näin - sisältö ja ulkoasu ovat siis erotettuja toisistaan. Esimerkiksi sivuston ulkoasun voi uusia sivupohjia muokkaamalla.</paragraph><paragraph>Erikoisempi ratkaisu taas on ns. <link target=\"_self\" url_id=\"65\">sisältöluokkien</link> käyttäminen. Jokainen objekti (sivu, tiedosto, jne.) on rakennettu oman sisältöluokan avulla. Sisältöluokka määrittelee objektin tarvitsemat kentät (teksti, tiedosto, päivämäärä, jne.). Voit itse muokata <link target=\"_self\" url_id=\"65\">olemassaolevia sisältöluokkia</link> tai luoda kokonaan uusia. Sisältöluokan kenttien näyttäminen (käyttäjälle) on sivupohjamoottorin tehtävä.</paragraph><paragraph>Sisällönhallinnassa on hyvät valmiudet tuoda sisältöä muista järjestelmistä esim. XML- tai CSV- muodossa. Vakioasennukseen voi tuoda helposti RSS-syötteitä. Muiden muotojen importointiin voi käyttää <link target=\"_self\" url_id=\"66\">Import-laajennusta</link>. Hyvä käytännön esimerkki sivustosta johon tuodaan sisältöä muualta on <link target=\"_self\" url_id=\"67\">premiere.fr</link>. Sivustolle tuodaan elokuvien perustiedot XML-muodossa ja niihin liitetään mm. arvostelutoiminnot, jne. eZ Publishissa.</paragraph><paragraph>eZ Publish ottaa tuoreimmassa (4.x.x) versiossaan huomioon myös <link target=\"_self\" url_id=\"68\">hakukoneoptimoinnin perusteet</link>.</paragraph><paragraph><anchor name=\"eztoc_4_1_1\"/></paragraph></section></section><section><section><header>Vaihtoehtoja eZ Publishille</header><paragraph>Vaikka eZ Publish on melkoinen <link target=\"_self\" url_id=\"69\">MacGyverin linkkuveitsi</link> on yksi tuote harvoin on paras kaikessa. Alla muutama vaihtoehtoinen <link target=\"_self\" url_id=\"23\">julkaisujärjestelmä</link> eZ Publishille tarpeiden mukaan jaoteltuna.</paragraph><paragraph><anchor name=\"eztoc_4_1_2_1\"/></paragraph><section><header>Kevyt sisällönhallinta</header><paragraph>Kevyen sisällönhallinnan tarpeisiin kannattaa harkita joko valmista palvelua kuten <link target=\"_self\" url_id=\"70\">Kotisivukonetta</link> tai jotain kevyempää ohjelmistoa kuten <link target=\"_self\" url_id=\"71\">CMS Made Simple</link>.</paragraph><paragraph><anchor name=\"eztoc_4_1_3_1\"/></paragraph></section><section><header>Blogi / verkkopäiväkirja</header><paragraph>Blogin ylläpitämiseen on useita hyviä ohjelmistoja. Esimerkiksi <link target=\"_self\" url_id=\"72\">WordPress</link> on helppo ja selkeä. Huonona puolena siinä on usein esiintyvät tietoturva-aukot.</paragraph><paragraph><anchor name=\"eztoc_4_1_4_1\"/></paragraph></section><section><header>Sosiaalisen median verkkopalvelut</header><paragraph>Jos haluat rakentaa Facebook-tyyppisen sosiaalisen median verkkopalvelun kannattaa tutustua <link target=\"_self\" url_id=\"73\">Elgg-tuotteeseen</link>. Myös <link target=\"_self\" url_id=\"74\">Drupal</link> on varteenoteettava vaihtoehto.</paragraph><paragraph><anchor name=\"eztoc_5_1_1\"/></paragraph></section></section></section><section><section><header>Linkkejä</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"28\">eZ Systems AS</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"75\">Dokumentaatio (4.0.0)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"76\">Käyttöohje (4.0.0)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"77\">Learn eZ publish -tutoriaali</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"78\">eZ Projects</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"79\">Planet eZ Publish (uutisia, jne.)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"80\">eZpedia</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"81\">Bug tracker</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"82\">eZ Publish 5 Javascript Client API docs</link></paragraph></li></ul></paragraph></section></section></section></section>\n','ezxmltext',199,'eng-GB',2,0,'',4),(0,183,57,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Publish (lausutaan \"easy publish\") on <link target=\"_self\" url_id=\"23\">avoimen lähdekoodin sisällönhallintajärjestelmä</link>. Järjestelmä toimii ns. LAMP-ympäristössä, joka koostuu seuraavista osista: <link target=\"_self\" url_id=\"24\">Linux</link>, <link target=\"_self\" url_id=\"25\">Apache</link>, <link target=\"_self\" url_id=\"26\">MySQL</link>, <link target=\"_self\" url_id=\"27\">PHP</link>. Alustaksi sopii myös Windows ja muut käyttöjärjestelmät.</paragraph><paragraph>eZ Publishin kehittämisestä vastaa pääasiallisesti <link target=\"_self\" url_id=\"28\">norjalainen eZ Systems -yritys</link>. eZ Publishin voi ladata ilmaiseksi <link target=\"_self\" url_id=\"29\">GPL-lisenssillä</link> tai ostaa suljetun lisenssin. eZ Systems tarjoaa tuotteelle kaupallista tukea, konsultointia sekä koulutusta. Suomessa järjestelmästä on kehityskokemusta ainakin <link target=\"_self\" url_id=\"30\">Exove:lla</link>, <link target=\"_self\" url_id=\"31\">Eventio Oy:llä</link>,<link target=\"_self\" url_id=\"32\">Brain Alliance Solutions Oy:llä</link>, <link target=\"_self\" url_id=\"33\">NXC Finland Oy:llä</link> ja <link target=\"_self\" url_id=\"34\">Asamoa Oy:llä</link>. Tahoja on varmasti muitakin.</paragraph><paragraph>eZ Publishin <link target=\"_self\" url_id=\"35\">latauslinkin</link> ja lisätietoja (<link target=\"_self\" url_id=\"36\">tukipalveluiden hinnoittelu</link>, jne.) saat <link target=\"_self\" url_id=\"37\">eZ Systemsin sivustolta</link>.</paragraph><paragraph><anchor name=\"eztoc_1_1_1\"/></paragraph><section><section><section><header>Käyttäjät</header><paragraph>Huhtikuussa 2011 tuotteella on eZ Systemsin mukaan:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Yli 3 miljoonaa latausta</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">6000 maksavaa asiakasta ympäri maailman</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">230 yrityksen maailmanlaajuinen kumppaniverkosto</paragraph></li></ul></paragraph><paragraph>Tuote on laajasti käytössä etenkin Keski-Euroopan mediajäteillä (<link target=\"_self\" url_id=\"38\">Lagardère</link>, <link target=\"_self\" url_id=\"39\">Gruner + Jahr</link>, jne). Yritysten tuotemerkkejä ovat mm. <link target=\"_self\" url_id=\"40\">Vogue</link>, <link target=\"_self\" url_id=\"41\">Elle</link> ja <link target=\"_self\" url_id=\"42\">Stern</link>.</paragraph><paragraph>Tuote sopii sekä perussivustojen, että laajempien palveluiden (esim. portaalit) rakentamiseen. Koska järjestelmä on kohtuullisen raskas, kannattaa kevyen sisällönhallinnan tarpeisiin harkita myös muita vaihtoehtoja.</paragraph><paragraph><anchor name=\"eztoc_2_1_1\"/></paragraph></section></section></section><section><section><section><header>eZ Publish Suomessa</header><paragraph>Tuote on käytöss ainakin <link target=\"_self\" url_id=\"43\">Fiskars Oyj:llä</link>, <link target=\"_self\" url_id=\"44\">Sanoma Oyj:llä</link> <link target=\"_self\" url_id=\"45\">Finnlines Oyj:llä</link>, <link target=\"_self\" url_id=\"46\">Kekkilä Oy:llä</link>, <link target=\"_self\" url_id=\"47\">Kaupan liitolla</link>,<link target=\"_self\" url_id=\"48\">Kuvataideopettajat ry:llä</link>, <link target=\"_self\" url_id=\"49\">Teknisen Kaupan ja Palveluiden yhdistyksellä</link>, <link target=\"_self\" url_id=\"50\">Voima-lehdellä</link>, <link target=\"_self\" url_id=\"51\">Finnveralla</link>, <link target=\"_self\" url_id=\"52\">Hondalla</link>,<link target=\"_self\" url_id=\"53\">Tecnotree Oyj:llä</link>, <link target=\"_self\" url_id=\"54\">European Batteries Oy:llä</link> ja <link target=\"_self\" url_id=\"55\">Kymenlaakson Sähköllä</link> ja <link target=\"_self\" url_id=\"56\">Ixonos Oyj:llä</link>.</paragraph><paragraph>Lisäksi esimerkiksi Ikaalisten kaupungin <link target=\"_self\" url_id=\"57\">Mökkiavain.fi -palvelu</link> -palvelu on toteutettu sen avulla. Mökkiavain-palvelussa käytetään järjestelmän kieliversio-ominaisuuksia - sivusto on saatavilla suomenkielen lisäksi<link target=\"_self\" url_id=\"58\">englanniksi</link>, <link target=\"_self\" url_id=\"59\">espanjaksi</link>, <link target=\"_self\" url_id=\"60\">saksaksi</link>, <link target=\"_self\" url_id=\"61\">italiaksi</link> ja <link target=\"_self\" url_id=\"62\">venäjäksi</link>. Kieliversiot on eroteltu ns. <link target=\"_self\" url_id=\"63\">Domain perusteisina siteaccesseina</link>. Katso myös <link target=\"_self\" url_id=\"64\">eZ Systemsin Suomen referenssisivu</link>.</paragraph><paragraph><anchor name=\"eztoc_3_1_1\"/></paragraph></section></section></section><section><section><section><header>Perusperiaatteet</header><paragraph>Käytännössä kaikki sisällönhallintajärjestelmät yhdistävät tietokannasta saadun datan ja sivupohjat (sapluunoita) käyttäjälle lähetettäväksi HTML:ksi. Myös eZ Publish toimii näin - sisältö ja ulkoasu ovat siis erotettuja toisistaan. Esimerkiksi sivuston ulkoasun voi uusia sivupohjia muokkaamalla.</paragraph><paragraph>Erikoisempi ratkaisu taas on ns. <link target=\"_self\" url_id=\"65\">sisältöluokkien</link> käyttäminen. Jokainen objekti (sivu, tiedosto, jne.) on rakennettu oman sisältöluokan avulla. Sisältöluokka määrittelee objektin tarvitsemat kentät (teksti, tiedosto, päivämäärä, jne.). Voit itse muokata <link target=\"_self\" url_id=\"65\">olemassaolevia sisältöluokkia</link> tai luoda kokonaan uusia. Sisältöluokan kenttien näyttäminen (käyttäjälle) on sivupohjamoottorin tehtävä.</paragraph><paragraph>Sisällönhallinnassa on hyvät valmiudet tuoda sisältöä muista järjestelmistä esim. XML- tai CSV- muodossa. Vakioasennukseen voi tuoda helposti RSS-syötteitä. Muiden muotojen importointiin voi käyttää <link target=\"_self\" url_id=\"66\">Import-laajennusta</link>. Hyvä käytännön esimerkki sivustosta johon tuodaan sisältöä muualta on <link target=\"_self\" url_id=\"67\">premiere.fr</link>. Sivustolle tuodaan elokuvien perustiedot XML-muodossa ja niihin liitetään mm. arvostelutoiminnot, jne. eZ Publishissa.</paragraph><paragraph>eZ Publish ottaa tuoreimmassa (4.x.x) versiossaan huomioon myös <link target=\"_self\" url_id=\"68\">hakukoneoptimoinnin perusteet</link>.</paragraph><paragraph><anchor name=\"eztoc_4_1_1\"/></paragraph></section></section></section><section><section><section><header>Vaihtoehtoja eZ Publishille</header><paragraph>Vaikka eZ Publish on melkoinen <link target=\"_self\" url_id=\"69\">MacGyverin linkkuveitsi</link> on yksi tuote harvoin on paras kaikessa. Alla muutama vaihtoehtoinen <link target=\"_self\" url_id=\"23\">julkaisujärjestelmä</link> eZ Publishille tarpeiden mukaan jaoteltuna.</paragraph><paragraph><anchor name=\"eztoc_4_1_2_1\"/></paragraph><section><header>Kevyt sisällönhallinta</header><paragraph>Kevyen sisällönhallinnan tarpeisiin kannattaa harkita joko valmista palvelua kuten <link target=\"_self\" url_id=\"70\">Kotisivukonetta</link> tai jotain kevyempää ohjelmistoa kuten <link target=\"_self\" url_id=\"71\">CMS Made Simple</link>.</paragraph><paragraph><anchor name=\"eztoc_4_1_3_1\"/></paragraph></section><section><header>Blogi / verkkopäiväkirja</header><paragraph>Blogin ylläpitämiseen on useita hyviä ohjelmistoja. Esimerkiksi <link target=\"_self\" url_id=\"72\">WordPress</link> on helppo ja selkeä. Huonona puolena siinä on usein esiintyvät tietoturva-aukot.</paragraph><paragraph><anchor name=\"eztoc_4_1_4_1\"/></paragraph></section><section><header>Sosiaalisen median verkkopalvelut</header><paragraph>Jos haluat rakentaa Facebook-tyyppisen sosiaalisen median verkkopalvelun kannattaa tutustua <link target=\"_self\" url_id=\"73\">Elgg-tuotteeseen</link>. Myös <link target=\"_self\" url_id=\"74\">Drupal</link> on varteenoteettava vaihtoehto.</paragraph><paragraph><anchor name=\"eztoc_5_1_1\"/></paragraph></section></section></section></section><section><section><section><header>Linkkejä</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"28\">eZ Systems AS</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"75\">Dokumentaatio (4.0.0)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"76\">Käyttöohje (4.0.0)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"77\">Learn eZ publish -tutoriaali</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"78\">eZ Projects</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"79\">Planet eZ Publish (uutisia, jne.)</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"80\">eZpedia</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"81\">Bug tracker</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link target=\"_self\" url_id=\"82\">eZ Publish 5 Javascript Client API docs</link></paragraph></li></ul></paragraph></section></section></section></section>\n','ezxmltext',199,'eng-GB',2,0,'',5),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',200,'eng-GB',2,0,'',2),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',200,'eng-GB',2,0,'',3),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',200,'eng-GB',2,0,'',4),(0,184,57,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',200,'eng-GB',2,0,'',5),(0,193,60,0,NULL,'This is a blog entry','ezstring',201,'eng-GB',2,0,'this is a blog entry',1),(0,193,60,0,NULL,'This is a blog entry','ezstring',201,'eng-GB',2,0,'this is a blog entry',2),(0,193,60,0,NULL,'This is a blog entry','ezstring',201,'eng-GB',2,0,'this is a blog entry',3),(0,193,60,0,NULL,'Assetic cache busting','ezstring',201,'eng-GB',2,0,'assetic cache busting',4),(0,194,60,0,NULL,'','ezstring',202,'eng-GB',2,0,'',1),(0,194,60,0,NULL,'','ezstring',202,'eng-GB',2,0,'',2),(0,194,60,0,NULL,'','ezstring',202,'eng-GB',2,0,'',3),(0,194,60,0,NULL,'','ezstring',202,'eng-GB',2,0,'',4),(0,199,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',203,'eng-GB',2,0,'',1),(0,199,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',203,'eng-GB',2,0,'',2),(0,199,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',203,'eng-GB',2,0,'',3),(0,199,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',203,'eng-GB',2,0,'',4),(0,195,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>THIS IS CONTENT AND SHOULD BE REQUIRED... FUCK I NEED TO CHECK THAT!</paragraph></section>\n','ezxmltext',204,'eng-GB',2,0,'',1),(0,195,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',204,'eng-GB',2,0,'',2),(0,195,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',204,'eng-GB',2,0,'',3),(0,195,60,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',204,'eng-GB',2,0,'',4),(0,196,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',205,'eng-GB',2,0,'',1),(0,196,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',205,'eng-GB',2,0,'',2),(0,196,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',205,'eng-GB',2,0,'',3),(0,196,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',205,'eng-GB',2,0,'',4),(0,198,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',207,'eng-GB',2,0,'',1),(0,198,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',207,'eng-GB',2,0,'',2),(0,198,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',207,'eng-GB',2,0,'',3),(0,198,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',207,'eng-GB',2,0,'',4),(0,206,60,0,NULL,'','eztags',208,'eng-GB',2,0,'',1),(0,206,60,0,NULL,'','eztags',208,'eng-GB',2,0,'',2),(0,206,60,0,NULL,'','eztags',208,'eng-GB',2,0,'',3),(0,206,60,0,NULL,'','eztags',208,'eng-GB',2,0,'',4),(0,207,60,NULL,NULL,NULL,'ezdatetime',209,'eng-GB',2,0,'',1),(0,207,60,0,NULL,'','ezdatetime',209,'eng-GB',2,0,'',2),(0,207,60,0,1418238000,'','ezdatetime',209,'eng-GB',2,1418238000,'',3),(0,207,60,0,1418151600,'','ezdatetime',209,'eng-GB',2,1418151600,'',4),(0,208,60,NULL,NULL,NULL,'ezstring',210,'eng-GB',2,0,'',1),(0,208,60,0,NULL,'','ezstring',210,'eng-GB',2,0,'',2),(0,208,60,0,NULL,'','ezstring',210,'eng-GB',2,0,'',3),(0,208,60,0,NULL,'','ezstring',210,'eng-GB',2,0,'',4),(0,193,61,0,NULL,'This is a blog entry','ezstring',211,'eng-GB',2,0,'this is a blog entry',1),(0,193,61,0,NULL,'This is a blog entry','ezstring',211,'eng-GB',2,0,'this is a blog entry',2),(0,193,61,0,NULL,'This is a blog entry','ezstring',211,'eng-GB',2,0,'this is a blog entry',3),(0,193,61,0,NULL,'Creating Twig helpers','ezstring',211,'eng-GB',2,0,'creating twig helpers',4),(0,194,61,0,NULL,'','ezstring',212,'eng-GB',2,0,'',1),(0,194,61,0,NULL,'','ezstring',212,'eng-GB',2,0,'',2),(0,194,61,0,NULL,'','ezstring',212,'eng-GB',2,0,'',3),(0,194,61,0,NULL,'','ezstring',212,'eng-GB',2,0,'',4),(0,199,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',213,'eng-GB',2,0,'',1),(0,199,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',213,'eng-GB',2,0,'',2),(0,199,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',213,'eng-GB',2,0,'',3),(0,199,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',213,'eng-GB',2,0,'',4),(0,195,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>THIS IS CONTENT AND SHOULD BE REQUIRED... FUCK I NEED TO CHECK THAT!</paragraph></section>\n','ezxmltext',214,'eng-GB',2,0,'',1),(0,195,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',214,'eng-GB',2,0,'',2),(0,195,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',214,'eng-GB',2,0,'',3),(0,195,61,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',214,'eng-GB',2,0,'',4),(0,196,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',215,'eng-GB',2,0,'',1),(0,196,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',215,'eng-GB',2,0,'',2),(0,196,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',215,'eng-GB',2,0,'',3),(0,196,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',215,'eng-GB',2,0,'',4),(0,198,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',216,'eng-GB',2,0,'',1),(0,198,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',216,'eng-GB',2,0,'',2),(0,198,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',216,'eng-GB',2,0,'',3),(0,198,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',216,'eng-GB',2,0,'',4),(0,206,61,0,NULL,'','eztags',217,'eng-GB',2,0,'',1),(0,206,61,0,NULL,'','eztags',217,'eng-GB',2,0,'',2),(0,206,61,0,NULL,'','eztags',217,'eng-GB',2,0,'',3),(0,206,61,0,NULL,'','eztags',217,'eng-GB',2,0,'',4),(0,207,61,0,NULL,'','ezdatetime',218,'eng-GB',2,0,'',1),(0,207,61,0,NULL,'','ezdatetime',218,'eng-GB',2,0,'',2),(0,207,61,0,1418238000,'','ezdatetime',218,'eng-GB',2,1418238000,'',3),(0,207,61,0,1418238000,'','ezdatetime',218,'eng-GB',2,1418238000,'',4),(0,208,61,0,NULL,'','ezstring',219,'eng-GB',2,0,'',1),(0,208,61,0,NULL,'','ezstring',219,'eng-GB',2,0,'',2),(0,208,61,0,NULL,'','ezstring',219,'eng-GB',2,0,'',3),(0,208,61,0,NULL,'','ezstring',219,'eng-GB',2,0,'',4),(0,193,62,0,NULL,'This is a blog entry','ezstring',220,'eng-GB',2,0,'this is a blog entry',1),(0,193,62,0,NULL,'This is a blog entry','ezstring',220,'eng-GB',2,0,'this is a blog entry',2),(0,193,62,0,NULL,'This is a blog entry','ezstring',220,'eng-GB',2,0,'this is a blog entry',3),(0,193,62,0,NULL,'Base eZ Publish installation','ezstring',220,'eng-GB',2,0,'base ez publish installation',4),(0,194,62,0,NULL,'','ezstring',221,'eng-GB',2,0,'',1),(0,194,62,0,NULL,'','ezstring',221,'eng-GB',2,0,'',2),(0,194,62,0,NULL,'','ezstring',221,'eng-GB',2,0,'',3),(0,194,62,0,NULL,'','ezstring',221,'eng-GB',2,0,'',4),(0,199,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',222,'eng-GB',2,0,'',1),(0,199,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',222,'eng-GB',2,0,'',2),(0,199,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',222,'eng-GB',2,0,'',3),(0,199,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',222,'eng-GB',2,0,'',4),(0,195,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>THIS IS CONTENT AND SHOULD BE REQUIRED... FUCK I NEED TO CHECK THAT!</paragraph></section>\n','ezxmltext',223,'eng-GB',2,0,'',1),(0,195,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',223,'eng-GB',2,0,'',2),(0,195,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',223,'eng-GB',2,0,'',3),(0,195,62,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',223,'eng-GB',2,0,'',4),(0,196,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',224,'eng-GB',2,0,'',1),(0,196,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',224,'eng-GB',2,0,'',2),(0,196,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',224,'eng-GB',2,0,'',3),(0,196,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',224,'eng-GB',2,0,'',4),(0,198,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',225,'eng-GB',2,0,'',1),(0,198,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',225,'eng-GB',2,0,'',2),(0,198,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',225,'eng-GB',2,0,'',3),(0,198,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',225,'eng-GB',2,0,'',4),(0,206,62,0,NULL,'','eztags',226,'eng-GB',2,0,'',1),(0,206,62,0,NULL,'','eztags',226,'eng-GB',2,0,'',2),(0,206,62,0,NULL,'','eztags',226,'eng-GB',2,0,'',3),(0,206,62,0,NULL,'','eztags',226,'eng-GB',2,0,'',4),(0,207,62,0,NULL,'','ezdatetime',227,'eng-GB',2,0,'',1),(0,207,62,0,NULL,'','ezdatetime',227,'eng-GB',2,0,'',2),(0,207,62,0,1418238000,'','ezdatetime',227,'eng-GB',2,1418238000,'',3),(0,207,62,0,1418238000,'','ezdatetime',227,'eng-GB',2,1418238000,'',4),(0,208,62,0,NULL,'','ezstring',228,'eng-GB',2,0,'',1),(0,208,62,0,NULL,'','ezstring',228,'eng-GB',2,0,'',2),(0,208,62,0,NULL,'','ezstring',228,'eng-GB',2,0,'',3),(0,208,62,0,NULL,'','ezstring',228,'eng-GB',2,0,'',4),(0,193,63,0,NULL,'This is a blog entry','ezstring',229,'eng-GB',2,0,'this is a blog entry',1),(0,193,63,0,NULL,'This is a blog entry','ezstring',229,'eng-GB',2,0,'this is a blog entry',2),(0,193,63,0,NULL,'This is a blog entry','ezstring',229,'eng-GB',2,0,'this is a blog entry',3),(0,193,63,0,NULL,'Assetic cache busting','ezstring',229,'eng-GB',2,0,'assetic cache busting',4),(0,193,63,0,NULL,'Composer explained','ezstring',229,'eng-GB',2,0,'composer explained',5),(0,194,63,0,NULL,'','ezstring',230,'eng-GB',2,0,'',1),(0,194,63,0,NULL,'','ezstring',230,'eng-GB',2,0,'',2),(0,194,63,0,NULL,'','ezstring',230,'eng-GB',2,0,'',3),(0,194,63,0,NULL,'','ezstring',230,'eng-GB',2,0,'',4),(0,194,63,0,NULL,'','ezstring',230,'eng-GB',2,0,'',5),(0,199,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',231,'eng-GB',2,0,'',1),(0,199,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',231,'eng-GB',2,0,'',2),(0,199,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',231,'eng-GB',2,0,'',3),(0,199,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',231,'eng-GB',2,0,'',4),(0,199,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',231,'eng-GB',2,0,'',5),(0,195,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>THIS IS CONTENT AND SHOULD BE REQUIRED... FUCK I NEED TO CHECK THAT!</paragraph></section>\n','ezxmltext',232,'eng-GB',2,0,'',1),(0,195,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',232,'eng-GB',2,0,'',2),(0,195,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',232,'eng-GB',2,0,'',3),(0,195,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',232,'eng-GB',2,0,'',4),(0,195,63,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',232,'eng-GB',2,0,'',5),(0,196,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',233,'eng-GB',2,0,'',1),(0,196,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',233,'eng-GB',2,0,'',2),(0,196,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',233,'eng-GB',2,0,'',3),(0,196,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',233,'eng-GB',2,0,'',4),(0,196,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',233,'eng-GB',2,0,'',5),(0,198,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',234,'eng-GB',2,0,'',1),(0,198,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',234,'eng-GB',2,0,'',2),(0,198,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',234,'eng-GB',2,0,'',3),(0,198,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',234,'eng-GB',2,0,'',4),(0,198,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',234,'eng-GB',2,0,'',5),(0,206,63,0,NULL,'','eztags',235,'eng-GB',2,0,'',1),(0,206,63,0,NULL,'','eztags',235,'eng-GB',2,0,'',2),(0,206,63,0,NULL,'','eztags',235,'eng-GB',2,0,'',3),(0,206,63,0,NULL,'','eztags',235,'eng-GB',2,0,'',4),(0,206,63,0,NULL,'','eztags',235,'eng-GB',2,0,'',5),(0,207,63,0,NULL,'','ezdatetime',236,'eng-GB',2,0,'',1),(0,207,63,0,NULL,'','ezdatetime',236,'eng-GB',2,0,'',2),(0,207,63,0,1418238000,'','ezdatetime',236,'eng-GB',2,1418238000,'',3),(0,207,63,0,1418151600,'','ezdatetime',236,'eng-GB',2,1418151600,'',4),(0,207,63,0,1418151600,'','ezdatetime',236,'eng-GB',2,1418151600,'',5),(0,208,63,0,NULL,'','ezstring',237,'eng-GB',2,0,'',1),(0,208,63,0,NULL,'','ezstring',237,'eng-GB',2,0,'',2),(0,208,63,0,NULL,'','ezstring',237,'eng-GB',2,0,'',3),(0,208,63,0,NULL,'','ezstring',237,'eng-GB',2,0,'',4),(0,208,63,0,NULL,'','ezstring',237,'eng-GB',2,0,'',5),(0,193,64,0,NULL,'This is a blog entry','ezstring',238,'eng-GB',2,0,'this is a blog entry',1),(0,193,64,0,NULL,'This is a blog entry','ezstring',238,'eng-GB',2,0,'this is a blog entry',2),(0,193,64,0,NULL,'This is a blog entry','ezstring',238,'eng-GB',2,0,'this is a blog entry',3),(0,193,64,0,NULL,'Assetic cache busting','ezstring',238,'eng-GB',2,0,'assetic cache busting',4),(0,193,64,0,NULL,'IP restriction using Symfony2 Security Voters','ezstring',238,'eng-GB',2,0,'ip restriction using symfony2 security voters',5),(0,194,64,0,NULL,'','ezstring',239,'eng-GB',2,0,'',1),(0,194,64,0,NULL,'','ezstring',239,'eng-GB',2,0,'',2),(0,194,64,0,NULL,'','ezstring',239,'eng-GB',2,0,'',3),(0,194,64,0,NULL,'','ezstring',239,'eng-GB',2,0,'',4),(0,194,64,0,NULL,'','ezstring',239,'eng-GB',2,0,'',5),(0,199,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',240,'eng-GB',2,0,'',1),(0,199,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',240,'eng-GB',2,0,'',2),(0,199,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is teaser</paragraph></section>\n','ezxmltext',240,'eng-GB',2,0,'',3),(0,199,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',240,'eng-GB',2,0,'',4),(0,199,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',240,'eng-GB',2,0,'',5),(0,195,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>THIS IS CONTENT AND SHOULD BE REQUIRED... FUCK I NEED TO CHECK THAT!</paragraph></section>\n','ezxmltext',241,'eng-GB',2,0,'',1),(0,195,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',241,'eng-GB',2,0,'',2),(0,195,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',241,'eng-GB',2,0,'',3),(0,195,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph>Type is all set with the rems, so font-sizes and spacial relationships can be responsively sized based on a single&lt;html&gt; font-size property. Out of the box, Skeleton never changes the &lt;html&gt; font-size, but it\'s there in case you need it for your project. All measurements are still base 10 though so, an &lt;h1&gt; with 5.0remfont-size just means 50px.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',241,'eng-GB',2,0,'',4),(0,195,64,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The grid is a 12-column fluid grid with a max width of 960px, that shrinks with the browser/device at smaller sizes. The max width can be changed with one line of CSS and all columns will resize accordingly. The syntax is simple and it makes coding responsive much easier. Go ahead, resize the browser.</paragraph><paragraph><strong>The typography base</strong> is <link url_id=\"83\">Raleway</link> served by Google, set at 15rem (15px) over a 1.6 line height (24px). Other type basics like <link url_id=\"84\">anchors</link>, <strong>strong</strong>, <emphasize>emphasis</emphasize>, and underline are all obviously included.</paragraph></section>\n','ezxmltext',241,'eng-GB',2,0,'',5),(0,196,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',242,'eng-GB',2,0,'',1),(0,196,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',242,'eng-GB',2,0,'',2),(0,196,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',242,'eng-GB',2,0,'',3),(0,196,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',242,'eng-GB',2,0,'',4),(0,196,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"nospam@ez.no\"/></authors></ezauthor>\n','ezauthor',242,'eng-GB',2,0,'',5),(0,198,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',243,'eng-GB',2,0,'',1),(0,198,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',243,'eng-GB',2,0,'',2),(0,198,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',243,'eng-GB',2,0,'',3),(0,198,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',243,'eng-GB',2,0,'',4),(0,198,64,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1418230760\"><original attribute_id=\"207\" attribute_version=\"1\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',243,'eng-GB',2,0,'',5),(0,206,64,0,NULL,'','eztags',244,'eng-GB',2,0,'',1),(0,206,64,0,NULL,'','eztags',244,'eng-GB',2,0,'',2),(0,206,64,0,NULL,'','eztags',244,'eng-GB',2,0,'',3),(0,206,64,0,NULL,'','eztags',244,'eng-GB',2,0,'',4),(0,206,64,0,NULL,'','eztags',244,'eng-GB',2,0,'',5),(0,207,64,0,NULL,'','ezdatetime',245,'eng-GB',2,0,'',1),(0,207,64,0,NULL,'','ezdatetime',245,'eng-GB',2,0,'',2),(0,207,64,0,1418238000,'','ezdatetime',245,'eng-GB',2,1418238000,'',3),(0,207,64,0,1418151600,'','ezdatetime',245,'eng-GB',2,1418151600,'',4),(0,207,64,0,1418151600,'','ezdatetime',245,'eng-GB',2,1418151600,'',5),(0,208,64,0,NULL,'','ezstring',246,'eng-GB',2,0,'',1),(0,208,64,0,NULL,'','ezstring',246,'eng-GB',2,0,'',2),(0,208,64,0,NULL,'','ezstring',246,'eng-GB',2,0,'',3),(0,208,64,0,NULL,'','ezstring',246,'eng-GB',2,0,'',4),(0,208,64,0,NULL,'','ezstring',246,'eng-GB',2,0,'',5);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('eng-GB',6,1,3,'eZ Publish','eng-GB'),('eng-GB',7,1,3,'Root','eng-GB'),('eng-GB',1,4,3,'Users','eng-GB'),('eng-GB',2,10,3,'Anonymous User','eng-GB'),('eng-GB',1,11,3,'Guest accounts','eng-GB'),('eng-GB',1,12,3,'Administrator users','eng-GB'),('eng-GB',1,13,3,'Editors','eng-GB'),('eng-GB',3,14,3,'Administrator User','eng-GB'),('eng-GB',4,14,3,'Administrator User','eng-GB'),('eng-GB',1,41,3,'Media','eng-GB'),('eng-GB',1,42,3,'Anonymous Users','eng-GB'),('eng-GB',1,45,3,'Setup','eng-GB'),('eng-GB',1,49,3,'Images','eng-GB'),('eng-GB',1,50,3,'Files','eng-GB'),('eng-GB',1,51,3,'Multimedia','eng-GB'),('eng-GB',1,52,2,'Common INI settings','eng-GB'),('eng-GB',2,54,2,'Plain site','eng-GB'),('eng-GB',1,56,3,'Design','eng-GB'),('fin-FI',1,57,4,'eZ Publish ETUSIZU!!','fin-FI'),('eng-GB',2,57,2,'ABout eZ Publish fy','eng-GB'),('fin-FI',2,57,4,'eZ Publish ETUSIZU!!','fin-FI'),('eng-GB',3,57,2,'ABout eZ Publish fy','eng-GB'),('fin-FI',3,57,4,'eZ Publish ETUSIZU!!','fin-FI'),('eng-GB',4,57,2,'ABout eZ Publish fy','eng-GB'),('fin-FI',4,57,4,'eZ Publish ETUSIZU!!','fin-FI'),('eng-GB',5,57,2,'ABout eZ Publish fy','eng-GB'),('fin-FI',5,57,4,'eZ Publish ETUSIZU!!','fin-FI'),('eng-GB',1,59,2,'eZ Publish Developer Blog','eng-GB'),('eng-GB',2,59,2,'eZ Publish Developer Blog','eng-GB'),('eng-GB',1,60,2,'This is a blog entry','eng-GB'),('eng-GB',2,60,2,'This is a blog entry','eng-GB'),('eng-GB',3,60,2,'This is a blog entry','eng-GB'),('eng-GB',4,60,2,'Assetic cache busting','eng-GB'),('eng-GB',1,61,2,'This is a blog entry','eng-GB'),('fin-FI',1,61,4,'This is a blog entry','fin-FI'),('eng-GB',2,61,2,'This is a blog entry','eng-GB'),('fin-FI',2,61,4,'This is a blog entry','fin-FI'),('eng-GB',3,61,2,'This is a blog entry','eng-GB'),('fin-FI',3,61,4,'This is a blog entry','fin-FI'),('eng-GB',4,61,2,'Creating Twig helpers','eng-GB'),('eng-GB',1,62,2,'This is a blog entry','eng-GB'),('fin-FI',1,62,4,'This is a blog entry','fin-FI'),('eng-GB',2,62,2,'This is a blog entry','eng-GB'),('fin-FI',2,62,4,'This is a blog entry','fin-FI'),('eng-GB',3,62,2,'This is a blog entry','eng-GB'),('fin-FI',3,62,4,'This is a blog entry','fin-FI'),('eng-GB',4,62,2,'Base eZ Publish installation','eng-GB'),('eng-GB',1,63,2,'This is a blog entry','eng-GB'),('fin-FI',1,63,4,'This is a blog entry','fin-FI'),('eng-GB',2,63,2,'This is a blog entry','eng-GB'),('fin-FI',2,63,4,'This is a blog entry','fin-FI'),('eng-GB',3,63,2,'This is a blog entry','eng-GB'),('fin-FI',3,63,4,'This is a blog entry','fin-FI'),('eng-GB',4,63,2,'Assetic cache busting','eng-GB'),('fin-FI',4,63,4,'Assetic cache busting','fin-FI'),('eng-GB',5,63,2,'Composer explained','eng-GB'),('eng-GB',1,64,2,'This is a blog entry','eng-GB'),('fin-FI',1,64,4,'This is a blog entry','fin-FI'),('eng-GB',2,64,2,'This is a blog entry','eng-GB'),('fin-FI',2,64,4,'This is a blog entry','fin-FI'),('eng-GB',3,64,2,'This is a blog entry','eng-GB'),('fin-FI',3,64,4,'This is a blog entry','fin-FI'),('eng-GB',4,64,2,'Assetic cache busting','eng-GB'),('fin-FI',4,64,4,'Assetic cache busting','fin-FI'),('eng-GB',5,64,2,'IP restriction using Symfony2 Security Voters','eng-GB');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1418663502,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(1,1,7,1,0,0,2,1418237621,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1418663502,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,1,2,0,0,12,1081860719,12,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1418663502,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,4,3,0,0,15,1418663502,15,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1),(54,1,2,2,0,0,56,1301062376,56,58,'design/plain_site','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1),(56,1,1,1,0,0,58,1301062376,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0),(57,1,5,2,0,0,59,1418235323,59,2,'ez_publish_etusizu','/1/2/59/',0,'2ff727824f057d29ecbaa3e777e64412',1,1),(59,1,2,2,0,0,60,1418237621,60,2,'ez_publish_developer_blog','/1/2/60/',0,'56a3ce0e538df6fe89cae858510d69cf',1,1),(60,1,4,3,0,0,61,1418237434,61,60,'ez_publish_developer_blog/assetic_cache_busting','/1/2/60/61/',0,'7d416d642e995b62494b1a2cde75b13c',1,1),(61,1,4,3,0,0,62,1418237455,62,60,'ez_publish_developer_blog/creating_twig_helpers','/1/2/60/62/',0,'423c6e4b45f1447eb410ecac452a0adb',2,0),(62,1,4,3,0,0,63,1418237621,63,60,'ez_publish_developer_blog/base_ez_publish_installation','/1/2/60/63/',0,'d1a2e42a05392a5577d84ea5443e4d1d',2,0),(63,1,5,3,0,0,64,1418237537,64,60,'ez_publish_developer_blog/composer_explained','/1/2/60/64/',0,'e18a517a365635aa5d345f94f3fd899d',2,0),(64,1,5,3,0,0,65,1418237594,65,60,'ez_publish_developer_blog/ip_restriction_using_symfony2_security_voters','/1/2/60/65/',0,'89601c186040d9e985ce4e390f08f73f',2,0);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,1,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(52,1082016497,14,491,2,3,1082016591,1,0,1,0),(56,1103023120,14,495,2,3,1103023120,1,0,1,0),(14,1301061783,14,499,2,3,1301062024,3,0,3,0),(54,1301062300,14,500,2,3,1301062375,1,0,2,0),(1,1301072647,14,503,2,3,1301073466,3,0,6,1),(57,1418229605,14,504,4,5,1418229628,3,0,1,0),(59,1418229686,14,506,2,3,1418229714,3,0,1,0),(1,1418230201,14,507,2,3,1418230214,1,0,7,1),(57,1418230720,14,509,2,7,1418230735,3,0,2,0),(60,1418230759,14,510,2,3,1418230804,3,0,1,0),(57,1418235248,14,511,2,7,1418235257,3,0,3,0),(57,1418235281,14,512,2,7,1418235290,3,0,4,0),(57,1418235308,14,513,2,7,1418235322,1,0,5,0),(59,1418236647,14,514,2,3,1418236655,1,0,2,0),(60,1418236962,14,515,2,3,1418236986,3,0,2,0),(60,1418237179,14,518,2,3,1418237204,3,0,3,0),(61,1418237382,14,519,2,3,1418237382,3,0,1,0),(61,1418237382,14,520,2,3,1418237382,3,0,2,0),(61,1418237382,14,521,2,3,1418237382,3,0,3,0),(62,1418237397,14,522,2,3,1418237397,3,0,1,0),(62,1418237397,14,523,2,3,1418237397,3,0,2,0),(62,1418237397,14,524,2,3,1418237397,3,0,3,0),(60,1418237409,14,525,2,3,1418237434,1,0,4,0),(61,1418237442,14,526,2,3,1418237455,1,0,4,0),(63,1418237495,14,528,2,3,1418237495,3,0,1,0),(63,1418237496,14,529,2,3,1418237496,3,0,2,0),(63,1418237496,14,530,2,3,1418237496,3,0,3,0),(63,1418237496,14,531,2,3,1418237496,3,0,4,0),(64,1418237513,14,532,2,3,1418237513,3,0,1,0),(64,1418237513,14,533,2,3,1418237513,3,0,2,0),(64,1418237513,14,534,2,3,1418237513,3,0,3,0),(64,1418237513,14,535,2,3,1418237513,3,0,4,0),(63,1418237521,14,536,2,3,1418237537,1,0,5,0),(64,1418237550,14,537,2,3,1418237594,1,0,5,0),(62,1418237603,14,538,2,3,1418237621,1,0,4,0),(14,1418663466,14,539,2,3,1418663502,1,0,4,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1),('English language',1,2),('French language',2,3),('German language',3,4),('Japan',4,5),('Russian Federation and former USSR',5,6),('Iran',600,7),('Kazakhstan',601,8),('Indonesia',602,9),('Saudi Arabia',603,10),('Vietnam',604,11),('Turkey',605,12),('Romania',606,13),('Mexico',607,14),('Macedonia',608,15),('Lithuania',609,16),('Thailand',611,17),('Peru',612,18),('Mauritius',613,19),('Lebanon',614,20),('Hungary',615,21),('Thailand',616,22),('Ukraine',617,23),('China, People\'s Republic',7,24),('Czech Republic and Slovakia',80,25),('India',81,26),('Norway',82,27),('Poland',83,28),('Spain',84,29),('Brazil',85,30),('Serbia and Montenegro',86,31),('Denmark',87,32),('Italy',88,33),('Korea, Republic',89,34),('Netherlands',90,35),('Sweden',91,36),('International NGO Publishers and EC Organizations',92,37),('India',93,38),('Netherlands',94,39),('Argentina',950,40),('Finland',951,41),('Finland',952,42),('Croatia',953,43),('Bulgaria',954,44),('Sri Lanka',955,45),('Chile',956,46),('Taiwan',957,47),('Colombia',958,48),('Cuba',959,49),('Greece',960,50),('Slovenia',961,51),('Hong Kong, China',962,52),('Hungary',963,53),('Iran',964,54),('Israel',965,55),('Ukraine',966,56),('Malaysia',967,57),('Mexico',968,58),('Pakistan',969,59),('Mexico',970,60),('Philippines',971,61),('Portugal',972,62),('Romania',973,63),('Thailand',974,64),('Turkey',975,65),('Caribbean Community',976,66),('Egypt',977,67),('Nigeria',978,68),('Indonesia',979,69),('Venezuela',980,70),('Singapore',981,71),('South Pacific',982,72),('Malaysia',983,73),('Bangladesh',984,74),('Belarus',985,75),('Taiwan',986,76),('Argentina',987,77),('Hong Kong, China',988,78),('Portugal',989,79),('Qatar',9927,80),('Albania',9928,81),('Guatemala',9929,82),('Costa Rica',9930,83),('Algeria',9931,84),('Lao People\'s Democratic Republic',9932,85),('Syria',9933,86),('Latvia',9934,87),('Iceland',9935,88),('Afghanistan',9936,89),('Nepal',9937,90),('Tunisia',9938,91),('Armenia',9939,92),('Montenegro',9940,93),('Georgia',9941,94),('Ecuador',9942,95),('Uzbekistan',9943,96),('Turkey',9944,97),('Dominican Republic',9945,98),('Korea, P.D.R.',9946,99),('Algeria',9947,100),('United Arab Emirates',9948,101),('Estonia',9949,102),('Palestine',9950,103),('Kosova',9951,104),('Azerbaijan',9952,105),('Lebanon',9953,106),('Morocco',9954,107),('Lithuania',9955,108),('Cameroon',9956,109),('Jordan',9957,110),('Bosnia and Herzegovina',9958,111),('Libya',9959,112),('Saudi Arabia',9960,113),('Algeria',9961,114),('Panama',9962,115),('Cyprus',9963,116),('Ghana',9964,117),('Kazakhstan',9965,118),('Kenya',9966,119),('Kyrgyz Republic',9967,120),('Costa Rica',9968,121),('Uganda',9970,122),('Singapore',9971,123),('Peru',9972,124),('Tunisia',9973,125),('Uruguay',9974,126),('Moldova',9975,127),('Tanzania',9976,128),('Costa Rica',9977,129),('Ecuador',9978,130),('Iceland',9979,131),('Papua New Guinea',9980,132),('Morocco',9981,133),('Zambia',9982,134),('Gambia',9983,135),('Latvia',9984,136),('Estonia',9985,137),('Lithuania',9986,138),('Tanzania',9987,139),('Ghana',9988,140),('Macedonia',9989,141),('Bahrain',99901,142),('Gabon',99902,143),('Mauritius',99903,144),('Netherlands Antilles and Aruba',99904,145),('Bolivia',99905,146),('Kuwait',99906,147),('Malawi',99908,148),('Malta',99909,149),('Sierra Leone',99910,150),('Lesotho',99911,151),('Botswana',99912,152),('Andorra',99913,153),('Suriname',99914,154),('Maldives',99915,155),('Namibia',99916,156),('Brunei Darussalam',99917,157),('Faroe Islands',99918,158),('Benin',99919,159),('Andorra',99920,160),('Qatar',99921,161),('Guatemala',99922,162),('El Salvador',99923,163),('Nicaragua',99924,164),('Paraguay',99925,165),('Honduras',99926,166),('Albania',99927,167),('Georgia',99928,168),('Mongolia',99929,169),('Armenia',99930,170),('Seychelles',99931,171),('Malta',99932,172),('Nepal',99933,173),('Dominican Republic',99934,174),('Haiti',99935,175),('Bhutan',99936,176),('Macau',99937,177),('Srpska, Republic of',99938,178),('Guatemala',99939,179),('Georgia',99940,180),('Armenia',99941,181),('Sudan',99942,182),('Albania',99943,183),('Ethiopia',99944,184),('Namibia',99945,185),('Nepal',99946,186),('Tajikistan',99947,187),('Eritrea',99948,188),('Mauritius',99949,189),('Cambodia',99950,190),('Congo',99951,191),('Mali',99952,192),('Paraguay',99953,193),('Bolivia',99954,194),('Srpska, Republic of',99955,195),('Albania',99956,196),('Malta',99957,197),('Bahrain',99958,198),('Luxembourg',99959,199),('Malawi',99960,200),('El Salvador',99961,201),('Mongolia',99962,202),('Cambodia',99963,203),('Nicaragua',99964,204),('Macau',99965,205),('Kuwait',99966,206),('Paraguay',99967,207),('Botswana',99968,208),('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999),(60000,'600',3,'649',2,64999),(70000,'7',1,'7',3,79999),(80000,'80',2,'94',4,94999),(95000,'950',3,'989',5,98999),(99000,'9900',4,'9989',6,99899),(99900,'99900',5,'99999',7,99999),(10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999),(20000,2,1,'200',3,'699',69999),(70000,3,1,'7000',4,'8499',84999),(85000,4,1,'85000',5,'89999',89999),(90000,5,1,'900000',6,'949999',94999),(95000,6,1,'9500000',7,'9999999',99999),(0,7,2,'00',2,'09',9999),(10000,8,2,'100',3,'399',39999),(40000,9,2,'4000',4,'5499',54999),(55000,10,2,'55000',5,'86979',86979),(86980,11,2,'869800',6,'998999',99899),(99900,12,2,'9990000',7,'9999999',99999),(0,13,3,'00',2,'19',19999),(20000,14,3,'200',3,'349',34999),(35000,15,3,'35000',5,'39999',39999),(40000,16,3,'400',3,'699',69999),(70000,17,3,'7000',4,'8399',83999),(84000,18,3,'84000',5,'89999',89999),(90000,19,3,'900000',6,'949999',94999),(95000,20,3,'9500000',7,'9999999',99999),(0,21,4,'00',2,'02',2999),(3000,22,4,'030',3,'033',3399),(3400,23,4,'0340',4,'0369',3699),(3700,24,4,'03700',5,'03999',3999),(4000,25,4,'04',2,'19',19999),(20000,26,4,'200',3,'699',69999),(70000,27,4,'7000',4,'8499',84999),(85000,28,4,'85000',5,'89999',89999),(90000,29,4,'900000',6,'949999',94999),(95000,30,4,'9500000',7,'9539999',95399),(95400,31,4,'95400',5,'96999',96999),(97000,32,4,'9700000',7,'9899999',98999),(99000,33,4,'99000',5,'99499',99499),(99500,34,4,'99500',5,'99999',99999),(0,35,5,'00',2,'19',19999),(20000,36,5,'200',3,'699',69999),(70000,37,5,'7000',4,'8499',84999),(85000,38,5,'85000',5,'89999',89999),(90000,39,5,'900000',6,'949999',94999),(95000,40,5,'9500000',7,'9999999',99999),(0,41,6,'00',2,'19',19999),(20000,42,6,'200',3,'420',42099),(42100,43,6,'4210',4,'4299',42999),(43000,44,6,'430',3,'430',43099),(43100,45,6,'4310',4,'4399',43999),(44000,46,6,'440',3,'440',44099),(44100,47,6,'4410',4,'4499',44999),(45000,48,6,'450',3,'699',69999),(70000,49,6,'7000',4,'8499',84999),(85000,50,6,'85000',5,'89999',89999),(90000,51,6,'900000',6,'909999',90999),(91000,52,6,'91000',5,'91999',91999),(92000,53,6,'9200',4,'9299',92999),(93000,54,6,'93000',5,'94999',94999),(95000,55,6,'9500000',7,'9500999',95009),(95010,56,6,'9501',4,'9799',97999),(98000,57,6,'98000',5,'98999',98999),(99000,58,6,'9900000',7,'9909999',99099),(99100,59,6,'9910',4,'9999',99999),(0,60,7,'00',2,'09',9999),(10000,61,7,'100',3,'499',49999),(50000,62,7,'5000',4,'8999',89999),(90000,63,7,'90000',5,'99999',99999),(0,64,8,'00',2,'19',19999),(20000,65,8,'200',3,'699',69999),(70000,66,8,'7000',4,'7999',79999),(80000,67,8,'80000',5,'84999',84999),(85000,68,8,'85',2,'99',99999),(0,69,9,'00',2,'19',19999),(20000,70,9,'200',3,'799',79999),(80000,71,9,'8000',4,'9499',94999),(95000,72,9,'95000',5,'99999',99999),(0,73,10,'00',2,'04',4999),(5000,74,10,'05',2,'49',49999),(50000,75,10,'500',3,'799',79999),(80000,76,10,'8000',4,'8999',89999),(90000,77,10,'90000',5,'99999',99999),(0,78,11,'0',1,'4',49999),(50000,79,11,'50',2,'89',89999),(90000,80,11,'900',3,'979',97999),(98000,81,11,'9800',4,'9999',99999),(1000,82,12,'01',2,'09',9999),(10000,83,12,'100',3,'399',39999),(40000,84,12,'4000',4,'5999',59999),(60000,85,12,'60000',5,'89999',89999),(90000,86,12,'90',2,'99',99999),(0,87,13,'0',1,'0',9999),(10000,88,13,'10',2,'49',49999),(50000,89,13,'500',3,'799',79999),(80000,90,13,'8000',4,'9199',91999),(92000,91,13,'92000',5,'99999',99999),(0,92,14,'00',2,'39',39999),(40000,93,14,'400',3,'749',74999),(75000,94,14,'7500',4,'9499',94999),(95000,95,14,'95000',5,'99999',99999),(0,96,15,'0',1,'0',9999),(10000,97,15,'10',2,'19',19999),(20000,98,15,'200',3,'449',44999),(45000,99,15,'4500',4,'6499',64999),(65000,100,15,'65000',5,'69999',69999),(70000,101,15,'7',1,'9',99999),(0,102,16,'00',2,'39',39999),(40000,103,16,'400',3,'799',79999),(80000,104,16,'8000',4,'9499',94999),(95000,105,16,'95000',5,'99999',99999),(0,106,18,'00',2,'29',29999),(30000,107,18,'300',3,'399',39999),(40000,108,18,'4000',4,'4499',44999),(45000,109,18,'45000',5,'49999',49999),(50000,110,18,'50',2,'99',99999),(0,111,19,'0',1,'9',99999),(0,112,20,'00',2,'39',39999),(40000,113,20,'400',3,'799',79999),(80000,114,20,'8000',4,'9499',94999),(95000,115,20,'95000',5,'99999',99999),(0,116,21,'00',2,'09',9999),(10000,117,21,'100',3,'499',49999),(50000,118,21,'5000',4,'7999',79999),(80000,119,21,'80000',5,'89999',89999),(0,120,22,'00',2,'19',19999),(20000,121,22,'200',3,'699',69999),(70000,122,22,'7000',4,'8999',89999),(90000,123,22,'90000',5,'99999',99999),(0,124,23,'00',2,'49',49999),(50000,125,23,'500',3,'699',69999),(70000,126,23,'7000',4,'8999',89999),(90000,127,23,'90000',5,'99999',99999),(0,128,24,'00',2,'09',9999),(10000,129,24,'100',3,'499',49999),(50000,130,24,'5000',4,'7999',79999),(80000,131,24,'80000',5,'89999',89999),(90000,132,24,'900000',6,'999999',99999),(0,133,25,'00',2,'19',19999),(20000,134,25,'200',3,'699',69999),(70000,135,25,'7000',4,'8499',84999),(85000,136,25,'85000',5,'89999',89999),(90000,137,25,'900000',6,'999999',99999),(0,138,26,'00',2,'19',19999),(20000,139,26,'200',3,'699',69999),(70000,140,26,'7000',4,'8499',84999),(85000,141,26,'85000',5,'89999',89999),(90000,142,26,'900000',6,'999999',99999),(0,143,27,'00',2,'19',19999),(20000,144,27,'200',3,'699',69999),(70000,145,27,'7000',4,'8999',89999),(90000,146,27,'90000',5,'98999',98999),(99000,147,27,'990000',6,'999999',99999),(0,148,28,'00',2,'19',19999),(20000,149,28,'200',3,'599',59999),(60000,150,28,'60000',5,'69999',69999),(70000,151,28,'7000',4,'8499',84999),(85000,152,28,'85000',5,'89999',89999),(90000,153,28,'900000',6,'999999',99999),(0,154,29,'00',2,'14',14999),(15000,155,29,'15000',5,'19999',19999),(20000,156,29,'200',3,'699',69999),(70000,157,29,'7000',4,'8499',84999),(85000,158,29,'85000',5,'89999',89999),(90000,159,29,'9000',4,'9199',91999),(92000,160,29,'920000',6,'923999',92399),(92400,161,29,'92400',5,'92999',92999),(93000,162,29,'930000',6,'949999',94999),(95000,163,29,'95000',5,'96999',96999),(97000,164,29,'9700',4,'9999',99999),(0,165,30,'00',2,'19',19999),(20000,166,30,'200',3,'599',59999),(60000,167,30,'60000',5,'69999',69999),(70000,168,30,'7000',4,'8499',84999),(85000,169,30,'85000',5,'89999',89999),(90000,170,30,'900000',6,'979999',97999),(98000,171,30,'98000',5,'99999',99999),(0,172,31,'00',2,'29',29999),(30000,173,31,'300',3,'599',59999),(60000,174,31,'6000',4,'7999',79999),(80000,175,31,'80000',5,'89999',89999),(90000,176,31,'900000',6,'999999',99999),(0,177,32,'00',2,'29',29999),(40000,178,32,'400',3,'649',64999),(70000,179,32,'7000',4,'7999',79999),(85000,180,32,'85000',5,'94999',94999),(97000,181,32,'970000',6,'999999',99999),(0,182,33,'00',2,'19',19999),(20000,183,33,'200',3,'599',59999),(60000,184,33,'6000',4,'8499',84999),(85000,185,33,'85000',5,'89999',89999),(90000,186,33,'900000',6,'949999',94999),(95000,187,33,'95000',5,'99999',99999),(0,188,34,'00',2,'24',24999),(25000,189,34,'250',3,'549',54999),(55000,190,34,'5500',4,'8499',84999),(85000,191,34,'85000',5,'94999',94999),(95000,192,34,'950000',6,'969999',96999),(97000,193,34,'97000',5,'98999',98999),(99000,194,34,'990',3,'999',99999),(0,195,35,'00',2,'19',19999),(20000,196,35,'200',3,'499',49999),(50000,197,35,'5000',4,'6999',69999),(70000,198,35,'70000',5,'79999',79999),(80000,199,35,'800000',6,'849999',84999),(85000,200,35,'8500',4,'8999',89999),(90000,201,35,'90',2,'90',90999),(91000,202,35,'910000',6,'939999',93999),(94000,203,35,'94',2,'94',94999),(95000,204,35,'950000',6,'999999',99999),(0,205,36,'0',1,'1',19999),(20000,206,36,'20',2,'49',49999),(50000,207,36,'500',3,'649',64999),(70000,208,36,'7000',4,'7999',79999),(85000,209,36,'85000',5,'94999',94999),(97000,210,36,'970000',6,'999999',99999),(0,211,37,'0',1,'5',59999),(60000,212,37,'60',2,'79',79999),(80000,213,37,'800',3,'899',89999),(90000,214,37,'9000',4,'9499',94999),(95000,215,37,'95000',5,'98999',98999),(99000,216,37,'990000',6,'999999',99999),(0,217,38,'00',2,'09',9999),(10000,218,38,'100',3,'499',49999),(50000,219,38,'5000',4,'7999',79999),(80000,220,38,'80000',5,'94999',94999),(95000,221,38,'950000',6,'999999',99999),(0,222,39,'000',3,'599',59999),(60000,223,39,'6000',4,'8999',89999),(90000,224,39,'90000',5,'99999',99999),(0,225,40,'00',2,'49',49999),(50000,226,40,'500',3,'899',89999),(90000,227,40,'9000',4,'9899',98999),(99000,228,40,'99000',5,'99999',99999),(0,229,41,'0',1,'1',19999),(20000,230,41,'20',2,'54',54999),(55000,231,41,'550',3,'889',88999),(89000,232,41,'8900',4,'9499',94999),(95000,233,41,'95000',5,'99999',99999),(0,234,42,'00',2,'19',19999),(20000,235,42,'200',3,'499',49999),(50000,236,42,'5000',4,'5999',59999),(60000,237,42,'60',2,'65',65999),(66000,238,42,'6600',4,'6699',66999),(67000,239,42,'67000',5,'69999',69999),(70000,240,42,'7000',4,'7999',79999),(80000,241,42,'80',2,'94',94999),(95000,242,42,'9500',4,'9899',98999),(99000,243,42,'99000',5,'99999',99999),(0,244,43,'0',1,'0',9999),(10000,245,43,'10',2,'14',14999),(15000,246,43,'150',3,'549',54999),(55000,247,43,'55000',5,'59999',59999),(60000,248,43,'6000',4,'9499',94999),(95000,249,43,'95000',5,'99999',99999),(0,250,44,'00',2,'28',28999),(29000,251,44,'2900',4,'2999',29999),(30000,252,44,'300',3,'799',79999),(80000,253,44,'8000',4,'8999',89999),(90000,254,44,'90000',5,'92999',92999),(93000,255,44,'9300',4,'9999',99999),(0,256,45,'0000',4,'1999',19999),(20000,257,45,'20',2,'49',49999),(50000,258,45,'50000',5,'54999',54999),(55000,259,45,'550',3,'799',79999),(80000,260,45,'8000',4,'9499',94999),(95000,261,45,'95000',5,'99999',99999),(0,262,46,'00',2,'19',19999),(20000,263,46,'200',3,'699',69999),(70000,264,46,'7000',4,'9999',99999),(0,265,47,'00',2,'02',2999),(3000,266,47,'0300',4,'0499',4999),(5000,267,47,'05',2,'19',19999),(20000,268,47,'2000',4,'2099',20999),(21000,269,47,'21',2,'27',27999),(28000,270,47,'28000',5,'30999',30999),(31000,271,47,'31',2,'43',43999),(44000,272,47,'440',3,'819',81999),(82000,273,47,'8200',4,'9699',96999),(97000,274,47,'97000',5,'99999',99999),(0,275,48,'00',2,'56',56999),(57000,276,48,'57000',5,'59999',59999),(60000,277,48,'600',3,'799',79999),(80000,278,48,'8000',4,'9499',94999),(95000,279,48,'95000',5,'99999',99999),(0,280,49,'00',2,'19',19999),(20000,281,49,'200',3,'699',69999),(70000,282,49,'7000',4,'8499',84999),(85000,283,49,'85000',5,'99999',99999),(0,284,50,'00',2,'19',19999),(20000,285,50,'200',3,'659',65999),(66000,286,50,'6600',4,'6899',68999),(69000,287,50,'690',3,'699',69999),(70000,288,50,'7000',4,'8499',84999),(85000,289,50,'85000',5,'92999',92999),(93000,290,50,'93',2,'93',93999),(94000,291,50,'9400',4,'9799',97999),(98000,292,50,'98000',5,'99999',99999),(0,293,51,'00',2,'19',19999),(20000,294,51,'200',3,'599',59999),(60000,295,51,'6000',4,'8999',89999),(90000,296,51,'90000',5,'94999',94999),(0,297,52,'00',2,'19',19999),(20000,298,52,'200',3,'699',69999),(70000,299,52,'7000',4,'8499',84999),(85000,300,52,'85000',5,'86999',86999),(87000,301,52,'8700',4,'8999',89999),(90000,302,52,'900',3,'999',99999),(0,303,53,'00',2,'19',19999),(20000,304,53,'200',3,'699',69999),(70000,305,53,'7000',4,'8499',84999),(85000,306,53,'85000',5,'89999',89999),(90000,307,53,'9000',4,'9999',99999),(0,308,54,'00',2,'14',14999),(15000,309,54,'150',3,'249',24999),(25000,310,54,'2500',4,'2999',29999),(30000,311,54,'300',3,'549',54999),(55000,312,54,'5500',4,'8999',89999),(90000,313,54,'90000',5,'96999',96999),(97000,314,54,'970',3,'989',98999),(99000,315,54,'9900',4,'9999',99999),(0,316,55,'00',2,'19',19999),(20000,317,55,'200',3,'599',59999),(70000,318,55,'7000',4,'7999',79999),(90000,319,55,'90000',5,'99999',99999),(0,320,56,'00',2,'14',14999),(15000,321,56,'1500',4,'1699',16999),(17000,322,56,'170',3,'199',19999),(20000,323,56,'2000',4,'2999',29999),(30000,324,56,'300',3,'699',69999),(70000,325,56,'7000',4,'8999',89999),(90000,326,56,'90000',5,'99999',99999),(0,327,57,'00',2,'00',999),(1000,328,57,'0100',4,'0999',9999),(10000,329,57,'10000',5,'19999',19999),(30000,330,57,'300',3,'499',49999),(50000,331,57,'5000',4,'5999',59999),(60000,332,57,'60',2,'89',89999),(90000,333,57,'900',3,'989',98999),(99000,334,57,'9900',4,'9989',99899),(99900,335,57,'99900',5,'99999',99999),(1000,336,58,'01',2,'39',39999),(40000,337,58,'400',3,'499',49999),(50000,338,58,'5000',4,'7999',79999),(80000,339,58,'800',3,'899',89999),(90000,340,58,'9000',4,'9999',99999),(0,341,59,'0',1,'1',19999),(20000,342,59,'20',2,'39',39999),(40000,343,59,'400',3,'799',79999),(80000,344,59,'8000',4,'9999',99999),(1000,345,60,'01',2,'59',59999),(60000,346,60,'600',3,'899',89999),(90000,347,60,'9000',4,'9099',90999),(91000,348,60,'91000',5,'96999',96999),(97000,349,60,'9700',4,'9999',99999),(0,350,61,'000',3,'015',1599),(1600,351,61,'0160',4,'0199',1999),(2000,352,61,'02',2,'02',2999),(3000,353,61,'0300',4,'0599',5999),(6000,354,61,'06',2,'09',9999),(10000,355,61,'10',2,'49',49999),(50000,356,61,'500',3,'849',84999),(85000,357,61,'8500',4,'9099',90999),(91000,358,61,'91000',5,'98999',98999),(99000,359,61,'9900',4,'9999',99999),(0,360,62,'0',1,'1',19999),(20000,361,62,'20',2,'54',54999),(55000,362,62,'550',3,'799',79999),(80000,363,62,'8000',4,'9499',94999),(95000,364,62,'95000',5,'99999',99999),(0,365,63,'0',1,'0',9999),(10000,366,63,'100',3,'169',16999),(17000,367,63,'1700',4,'1999',19999),(20000,368,63,'20',2,'54',54999),(55000,369,63,'550',3,'759',75999),(76000,370,63,'7600',4,'8499',84999),(85000,371,63,'85000',5,'88999',88999),(89000,372,63,'8900',4,'9499',94999),(95000,373,63,'95000',5,'99999',99999),(0,374,64,'00',2,'19',19999),(20000,375,64,'200',3,'699',69999),(70000,376,64,'7000',4,'8499',84999),(85000,377,64,'85000',5,'89999',89999),(90000,378,64,'90000',5,'94999',94999),(95000,379,64,'9500',4,'9999',99999),(0,380,65,'00000',5,'01999',1999),(2000,381,65,'02',2,'24',24999),(25000,382,65,'250',3,'599',59999),(60000,383,65,'6000',4,'9199',91999),(92000,384,65,'92000',5,'98999',98999),(99000,385,65,'990',3,'999',99999),(0,386,66,'0',1,'3',39999),(40000,387,66,'40',2,'59',59999),(60000,388,66,'600',3,'799',79999),(80000,389,66,'8000',4,'9499',94999),(95000,390,66,'95000',5,'99999',99999),(0,391,67,'00',2,'19',19999),(20000,392,67,'200',3,'499',49999),(50000,393,67,'5000',4,'6999',69999),(70000,394,67,'700',3,'999',99999),(0,395,68,'000',3,'199',19999),(20000,396,68,'2000',4,'2999',29999),(30000,397,68,'30000',5,'79999',79999),(80000,398,68,'8000',4,'8999',89999),(90000,399,68,'900',3,'999',99999),(0,400,69,'000',3,'099',9999),(10000,401,69,'1000',4,'1499',14999),(15000,402,69,'15000',5,'19999',19999),(20000,403,69,'20',2,'29',29999),(30000,404,69,'3000',4,'3999',39999),(40000,405,69,'400',3,'799',79999),(80000,406,69,'8000',4,'9499',94999),(95000,407,69,'95000',5,'99999',99999),(0,408,70,'00',2,'19',19999),(20000,409,70,'200',3,'599',59999),(60000,410,70,'6000',4,'9999',99999),(0,411,71,'00',2,'11',11999),(12000,412,71,'1200',4,'1999',19999),(20000,413,71,'200',3,'289',28999),(29000,414,71,'2900',4,'9999',99999),(0,415,72,'00',2,'09',9999),(10000,416,72,'100',3,'699',69999),(70000,417,72,'70',2,'89',89999),(90000,418,72,'9000',4,'9799',97999),(98000,419,72,'98000',5,'99999',99999),(0,420,73,'00',2,'01',1999),(2000,421,73,'020',3,'199',19999),(20000,422,73,'2000',4,'3999',39999),(40000,423,73,'40000',5,'44999',44999),(45000,424,73,'45',2,'49',49999),(50000,425,73,'50',2,'79',79999),(80000,426,73,'800',3,'899',89999),(90000,427,73,'9000',4,'9899',98999),(99000,428,73,'99000',5,'99999',99999),(0,429,74,'00',2,'39',39999),(40000,430,74,'400',3,'799',79999),(80000,431,74,'8000',4,'8999',89999),(90000,432,74,'90000',5,'99999',99999),(0,433,75,'00',2,'39',39999),(40000,434,75,'400',3,'599',59999),(60000,435,75,'6000',4,'8999',89999),(90000,436,75,'90000',5,'99999',99999),(0,437,76,'00',2,'11',11999),(12000,438,76,'120',3,'559',55999),(56000,439,76,'5600',4,'7999',79999),(80000,440,76,'80000',5,'99999',99999),(0,441,77,'00',2,'09',9999),(10000,442,77,'1000',4,'1999',19999),(20000,443,77,'20000',5,'29999',29999),(30000,444,77,'30',2,'49',49999),(50000,445,77,'500',3,'899',89999),(90000,446,77,'9000',4,'9499',94999),(95000,447,77,'95000',5,'99999',99999),(0,448,78,'00',2,'14',14999),(15000,449,78,'15000',5,'16999',16999),(17000,450,78,'17000',5,'19999',19999),(20000,451,78,'200',3,'799',79999),(80000,452,78,'8000',4,'9699',96999),(97000,453,78,'97000',5,'99999',99999),(0,454,79,'0',1,'1',19999),(20000,455,79,'20',2,'54',54999),(55000,456,79,'550',3,'799',79999),(80000,457,79,'8000',4,'9499',94999),(95000,458,79,'95000',5,'99999',99999),(0,459,80,'00',2,'09',9999),(10000,460,80,'100',3,'399',39999),(40000,461,80,'4000',4,'4999',49999),(0,462,81,'00',2,'09',9999),(10000,463,81,'100',3,'399',39999),(40000,464,81,'4000',4,'4999',49999),(0,465,82,'0',1,'3',39999),(40000,466,82,'40',2,'54',54999),(55000,467,82,'550',3,'799',79999),(80000,468,82,'8000',4,'9999',99999),(0,469,83,'00',2,'49',49999),(50000,470,83,'500',3,'939',93999),(94000,471,83,'9400',4,'9999',99999),(0,472,84,'00',2,'29',29999),(30000,473,84,'300',3,'899',89999),(90000,474,84,'9000',4,'9999',99999),(0,475,85,'00',2,'39',39999),(40000,476,85,'400',3,'849',84999),(85000,477,85,'8500',4,'9999',99999),(0,478,86,'0',1,'0',9999),(10000,479,86,'10',2,'39',39999),(40000,480,86,'400',3,'899',89999),(90000,481,86,'9000',4,'9999',99999),(0,482,87,'0',1,'0',9999),(10000,483,87,'10',2,'49',49999),(50000,484,87,'500',3,'799',79999),(80000,485,87,'8000',4,'9999',99999),(0,486,88,'0',1,'0',9999),(10000,487,88,'10',2,'39',39999),(40000,488,88,'400',3,'899',89999),(90000,489,88,'9000',4,'9999',99999),(0,490,89,'0',1,'1',19999),(20000,491,89,'20',2,'39',39999),(40000,492,89,'400',3,'799',79999),(80000,493,89,'8000',4,'9999',99999),(0,494,90,'0',1,'2',29999),(30000,495,90,'30',2,'49',49999),(50000,496,90,'500',3,'799',79999),(80000,497,90,'8000',4,'9999',99999),(0,498,91,'00',2,'79',79999),(80000,499,91,'800',3,'949',94999),(95000,500,91,'9500',4,'9999',99999),(0,501,92,'0',1,'4',49999),(50000,502,92,'50',2,'79',79999),(80000,503,92,'800',3,'899',89999),(90000,504,92,'9000',4,'9999',99999),(0,505,93,'0',1,'1',19999),(20000,506,93,'20',2,'49',49999),(50000,507,93,'500',3,'899',89999),(90000,508,93,'9000',4,'9999',99999),(0,509,94,'0',1,'0',9999),(10000,510,94,'10',2,'39',39999),(40000,511,94,'400',3,'899',89999),(90000,512,94,'9000',4,'9999',99999),(0,513,95,'00',2,'89',89999),(90000,514,95,'900',3,'984',98499),(98500,515,95,'9850',4,'9999',99999),(0,516,96,'00',2,'29',29999),(30000,517,96,'300',3,'399',39999),(40000,518,96,'4000',4,'9999',99999),(0,519,97,'0000',4,'0999',9999),(10000,520,97,'100',3,'499',49999),(50000,521,97,'5000',4,'5999',59999),(60000,522,97,'60',2,'69',69999),(70000,523,97,'700',3,'799',79999),(80000,524,97,'80',2,'89',89999),(90000,525,97,'900',3,'999',99999),(0,526,98,'00',2,'00',999),(1000,527,98,'010',3,'079',7999),(8000,528,98,'08',2,'39',39999),(40000,529,98,'400',3,'569',56999),(57000,530,98,'57',2,'57',57999),(58000,531,98,'580',3,'849',84999),(85000,532,98,'8500',4,'9999',99999),(0,533,99,'0',1,'1',19999),(20000,534,99,'20',2,'39',39999),(40000,535,99,'400',3,'899',89999),(90000,536,99,'9000',4,'9999',99999),(0,537,100,'0',1,'1',19999),(20000,538,100,'20',2,'79',79999),(80000,539,100,'800',3,'999',99999),(0,540,101,'00',2,'39',39999),(40000,541,101,'400',3,'849',84999),(85000,542,101,'8500',4,'9999',99999),(0,543,102,'0',1,'0',9999),(10000,544,102,'10',2,'39',39999),(40000,545,102,'400',3,'899',89999),(90000,546,102,'9000',4,'9999',99999),(0,547,103,'00',2,'29',29999),(30000,548,103,'300',3,'849',84999),(85000,549,103,'8500',4,'9999',99999),(0,550,104,'00',2,'39',39999),(40000,551,104,'400',3,'849',84999),(85000,552,104,'8500',4,'9999',99999),(0,553,105,'0',1,'1',19999),(20000,554,105,'20',2,'39',39999),(40000,555,105,'400',3,'799',79999),(80000,556,105,'8000',4,'9999',99999),(0,557,106,'0',1,'0',9999),(10000,558,106,'10',2,'39',39999),(40000,559,106,'400',3,'599',59999),(60000,560,106,'60',2,'89',89999),(90000,561,106,'9000',4,'9999',99999),(0,562,107,'0',1,'1',19999),(20000,563,107,'20',2,'39',39999),(40000,564,107,'400',3,'799',79999),(80000,565,107,'8000',4,'9999',99999),(0,566,108,'00',2,'39',39999),(40000,567,108,'400',3,'929',92999),(93000,568,108,'9300',4,'9999',99999),(0,569,109,'0',1,'0',9999),(10000,570,109,'10',2,'39',39999),(40000,571,109,'400',3,'899',89999),(90000,572,109,'9000',4,'9999',99999),(0,573,110,'00',2,'39',39999),(40000,574,110,'400',3,'699',69999),(70000,575,110,'70',2,'84',84999),(85000,576,110,'8500',4,'8799',87999),(88000,577,110,'88',2,'99',99999),(0,578,111,'0',1,'0',9999),(10000,579,111,'10',2,'18',18999),(19000,580,111,'1900',4,'1999',19999),(20000,581,111,'20',2,'49',49999),(50000,582,111,'500',3,'899',89999),(90000,583,111,'9000',4,'9999',99999),(0,584,112,'0',1,'1',19999),(20000,585,112,'20',2,'79',79999),(80000,586,112,'800',3,'949',94999),(95000,587,112,'9500',4,'9999',99999),(0,588,113,'00',2,'59',59999),(60000,589,113,'600',3,'899',89999),(90000,590,113,'9000',4,'9999',99999),(0,591,114,'0',1,'2',29999),(30000,592,114,'30',2,'69',69999),(70000,593,114,'700',3,'949',94999),(95000,594,114,'9500',4,'9999',99999),(0,595,115,'00',2,'54',54999),(55000,596,115,'5500',4,'5599',55999),(56000,597,115,'56',2,'59',59999),(60000,598,115,'600',3,'849',84999),(85000,599,115,'8500',4,'9999',99999),(0,600,116,'0',1,'2',29999),(30000,601,116,'30',2,'54',54999),(55000,602,116,'550',3,'734',73499),(73500,603,116,'7350',4,'7499',74999),(75000,604,116,'7500',4,'9999',99999),(0,605,117,'0',1,'6',69999),(70000,606,117,'70',2,'94',94999),(95000,607,117,'950',3,'999',99999),(0,608,118,'00',2,'39',39999),(40000,609,118,'400',3,'899',89999),(90000,610,118,'9000',4,'9999',99999),(0,611,119,'000',3,'149',14999),(15000,612,119,'1500',4,'1999',19999),(20000,613,119,'20',2,'69',69999),(70000,614,119,'7000',4,'7499',74999),(75000,615,119,'750',3,'959',95999),(96000,616,119,'9600',4,'9999',99999),(0,617,120,'00',2,'39',39999),(40000,618,120,'400',3,'899',89999),(90000,619,120,'9000',4,'9999',99999),(0,620,121,'00',2,'49',49999),(50000,621,121,'500',3,'939',93999),(94000,622,121,'9400',4,'9999',99999),(0,623,122,'00',2,'39',39999),(40000,624,122,'400',3,'899',89999),(90000,625,122,'9000',4,'9999',99999),(0,626,123,'0',1,'5',59999),(60000,627,123,'60',2,'89',89999),(90000,628,123,'900',3,'989',98999),(99000,629,123,'9900',4,'9999',99999),(0,630,124,'00',2,'09',9999),(10000,631,124,'1',1,'1',19999),(20000,632,124,'200',3,'249',24999),(25000,633,124,'2500',4,'2999',29999),(30000,634,124,'30',2,'59',59999),(60000,635,124,'600',3,'899',89999),(90000,636,124,'9000',4,'9999',99999),(0,637,125,'00',2,'05',5999),(6000,638,125,'060',3,'089',8999),(9000,639,125,'0900',4,'0999',9999),(10000,640,125,'10',2,'69',69999),(70000,641,125,'700',3,'969',96999),(97000,642,125,'9700',4,'9999',99999),(0,643,126,'0',1,'2',29999),(30000,644,126,'30',2,'54',54999),(55000,645,126,'550',3,'749',74999),(75000,646,126,'7500',4,'9499',94999),(95000,647,126,'95',2,'99',99999),(0,648,127,'0',1,'0',9999),(10000,649,127,'100',3,'399',39999),(40000,650,127,'4000',4,'4499',44999),(45000,651,127,'45',2,'89',89999),(90000,652,127,'900',3,'949',94999),(95000,653,127,'9500',4,'9999',99999),(0,654,128,'0',1,'5',59999),(60000,655,128,'60',2,'89',89999),(90000,656,128,'900',3,'989',98999),(99000,657,128,'9900',4,'9999',99999),(0,658,129,'00',2,'89',89999),(90000,659,129,'900',3,'989',98999),(99000,660,129,'9900',4,'9999',99999),(0,661,130,'00',2,'29',29999),(30000,662,130,'300',3,'399',39999),(40000,663,130,'40',2,'94',94999),(95000,664,130,'950',3,'989',98999),(99000,665,130,'9900',4,'9999',99999),(0,666,131,'0',1,'4',49999),(50000,667,131,'50',2,'64',64999),(65000,668,131,'650',3,'659',65999),(66000,669,131,'66',2,'75',75999),(76000,670,131,'760',3,'899',89999),(90000,671,131,'9000',4,'9999',99999),(0,672,132,'0',1,'3',39999),(40000,673,132,'40',2,'89',89999),(90000,674,132,'900',3,'989',98999),(99000,675,132,'9900',4,'9999',99999),(0,676,133,'00',2,'09',9999),(10000,677,133,'100',3,'159',15999),(16000,678,133,'1600',4,'1999',19999),(20000,679,133,'20',2,'79',79999),(80000,680,133,'800',3,'949',94999),(95000,681,133,'9500',4,'9999',99999),(0,682,134,'00',2,'79',79999),(80000,683,134,'800',3,'989',98999),(99000,684,134,'9900',4,'9999',99999),(80000,685,135,'80',2,'94',94999),(95000,686,135,'950',3,'989',98999),(99000,687,135,'9900',4,'9999',99999),(0,688,136,'00',2,'49',49999),(50000,689,136,'500',3,'899',89999),(90000,690,136,'9000',4,'9999',99999),(0,691,137,'0',1,'4',49999),(50000,692,137,'50',2,'79',79999),(80000,693,137,'800',3,'899',89999),(90000,694,137,'9000',4,'9999',99999),(0,695,138,'00',2,'39',39999),(40000,696,138,'400',3,'899',89999),(90000,697,138,'9000',4,'9399',93999),(94000,698,138,'940',3,'969',96999),(97000,699,138,'97',2,'99',99999),(0,700,139,'00',2,'39',39999),(40000,701,139,'400',3,'879',87999),(88000,702,139,'8800',4,'9999',99999),(0,703,140,'0',1,'2',29999),(30000,704,140,'30',2,'54',54999),(55000,705,140,'550',3,'749',74999),(75000,706,140,'7500',4,'9999',99999),(0,707,141,'0',1,'0',9999),(10000,708,141,'100',3,'199',19999),(20000,709,141,'2000',4,'2999',29999),(30000,710,141,'30',2,'59',59999),(60000,711,141,'600',3,'949',94999),(95000,712,141,'9500',4,'9999',99999),(0,713,142,'00',2,'49',49999),(50000,714,142,'500',3,'799',79999),(80000,715,142,'80',2,'99',99999),(0,716,144,'0',1,'1',19999),(20000,717,144,'20',2,'89',89999),(90000,718,144,'900',3,'999',99999),(0,719,145,'0',1,'5',59999),(60000,720,145,'60',2,'89',89999),(90000,721,145,'900',3,'999',99999),(0,722,146,'0',1,'3',39999),(40000,723,146,'40',2,'79',79999),(80000,724,146,'800',3,'999',99999),(0,725,147,'0',1,'2',29999),(30000,726,147,'30',2,'59',59999),(60000,727,147,'600',3,'699',69999),(70000,728,147,'70',2,'89',89999),(90000,729,147,'90',2,'94',94999),(95000,730,147,'950',3,'999',99999),(0,731,148,'0',1,'0',9999),(10000,732,148,'10',2,'89',89999),(90000,733,148,'900',3,'999',99999),(0,734,149,'0',1,'3',39999),(40000,735,149,'40',2,'94',94999),(95000,736,149,'950',3,'999',99999),(0,737,150,'0',1,'2',29999),(30000,738,150,'30',2,'89',89999),(90000,739,150,'900',3,'999',99999),(0,740,151,'00',2,'59',59999),(60000,741,151,'600',3,'999',99999),(0,742,152,'0',1,'3',39999),(40000,743,152,'400',3,'599',59999),(60000,744,152,'60',2,'89',89999),(90000,745,152,'900',3,'999',99999),(0,746,153,'0',1,'2',29999),(30000,747,153,'30',2,'35',35999),(60000,748,153,'600',3,'604',60499),(0,749,154,'0',1,'4',49999),(50000,750,154,'50',2,'89',89999),(90000,751,154,'900',3,'999',99999),(0,752,155,'0',1,'4',49999),(50000,753,155,'50',2,'79',79999),(80000,754,155,'800',3,'999',99999),(0,755,156,'0',1,'2',29999),(30000,756,156,'30',2,'69',69999),(70000,757,156,'700',3,'999',99999),(0,758,157,'0',1,'2',29999),(30000,759,157,'30',2,'89',89999),(90000,760,157,'900',3,'999',99999),(0,761,158,'0',1,'3',39999),(40000,762,158,'40',2,'79',79999),(80000,763,158,'800',3,'999',99999),(0,764,159,'0',1,'2',29999),(30000,765,159,'300',3,'399',39999),(40000,766,159,'40',2,'69',69999),(90000,767,159,'900',3,'999',99999),(0,768,160,'0',1,'4',49999),(50000,769,160,'50',2,'89',89999),(90000,770,160,'900',3,'999',99999),(0,771,161,'0',1,'1',19999),(20000,772,161,'20',2,'69',69999),(70000,773,161,'700',3,'799',79999),(80000,774,161,'8',1,'8',89999),(90000,775,161,'90',2,'99',99999),(0,776,162,'0',1,'3',39999),(40000,777,162,'40',2,'69',69999),(70000,778,162,'700',3,'999',99999),(0,779,163,'0',1,'1',19999),(20000,780,163,'20',2,'79',79999),(80000,781,163,'800',3,'999',99999),(0,782,164,'0',1,'1',19999),(20000,783,164,'20',2,'79',79999),(80000,784,164,'800',3,'999',99999),(0,785,165,'0',1,'3',39999),(40000,786,165,'40',2,'79',79999),(80000,787,165,'800',3,'999',99999),(0,788,166,'0',1,'0',9999),(10000,789,166,'10',2,'59',59999),(60000,790,166,'600',3,'999',99999),(0,791,167,'0',1,'2',29999),(30000,792,167,'30',2,'59',59999),(60000,793,167,'600',3,'999',99999),(0,794,168,'0',1,'0',9999),(10000,795,168,'10',2,'79',79999),(80000,796,168,'800',3,'999',99999),(0,797,169,'0',1,'4',49999),(50000,798,169,'50',2,'79',79999),(80000,799,169,'800',3,'999',99999),(0,800,170,'0',1,'4',49999),(50000,801,170,'50',2,'79',79999),(80000,802,170,'800',3,'999',99999),(0,803,171,'0',1,'4',49999),(50000,804,171,'50',2,'79',79999),(80000,805,171,'800',3,'999',99999),(0,806,172,'0',1,'0',9999),(10000,807,172,'10',2,'59',59999),(60000,808,172,'600',3,'699',69999),(70000,809,172,'7',1,'7',79999),(80000,810,172,'80',2,'99',99999),(0,811,173,'0',1,'2',29999),(30000,812,173,'30',2,'59',59999),(60000,813,173,'600',3,'999',99999),(0,814,174,'0',1,'1',19999),(20000,815,174,'20',2,'79',79999),(80000,816,174,'800',3,'999',99999),(0,817,175,'0',1,'2',29999),(30000,818,175,'30',2,'59',59999),(60000,819,175,'600',3,'699',69999),(70000,820,175,'7',1,'8',89999),(90000,821,175,'90',2,'99',99999),(0,822,176,'0',1,'0',9999),(10000,823,176,'10',2,'59',59999),(60000,824,176,'600',3,'999',99999),(0,825,177,'0',1,'1',19999),(20000,826,177,'20',2,'59',59999),(60000,827,177,'600',3,'999',99999),(0,828,178,'0',1,'1',19999),(20000,829,178,'20',2,'59',59999),(60000,830,178,'600',3,'899',89999),(90000,831,178,'90',2,'99',99999),(0,832,179,'0',1,'5',59999),(60000,833,179,'60',2,'89',89999),(90000,834,179,'900',3,'999',99999),(0,835,180,'0',1,'0',9999),(10000,836,180,'10',2,'69',69999),(70000,837,180,'700',3,'999',99999),(0,838,181,'0',1,'2',29999),(30000,839,181,'30',2,'79',79999),(80000,840,181,'800',3,'999',99999),(0,841,182,'0',1,'4',49999),(50000,842,182,'50',2,'79',79999),(80000,843,182,'800',3,'999',99999),(0,844,183,'0',1,'2',29999),(30000,845,183,'30',2,'59',59999),(60000,846,183,'600',3,'999',99999),(0,847,184,'0',1,'4',49999),(50000,848,184,'50',2,'79',79999),(80000,849,184,'800',3,'999',99999),(0,850,185,'0',1,'5',59999),(60000,851,185,'60',2,'89',89999),(90000,852,185,'900',3,'999',99999),(0,853,186,'0',1,'2',29999),(30000,854,186,'30',2,'59',59999),(60000,855,186,'600',3,'999',99999),(0,856,187,'0',1,'2',29999),(30000,857,187,'30',2,'69',69999),(70000,858,187,'700',3,'999',99999),(0,859,188,'0',1,'4',49999),(50000,860,188,'50',2,'79',79999),(80000,861,188,'800',3,'999',99999),(0,862,189,'0',1,'1',19999),(20000,863,189,'20',2,'89',89999),(90000,864,189,'900',3,'999',99999),(0,865,190,'0',1,'4',49999),(50000,866,190,'50',2,'79',79999),(80000,867,190,'800',3,'999',99999),(0,868,192,'0',1,'4',49999),(50000,869,192,'50',2,'79',79999),(80000,870,192,'800',3,'999',99999),(0,871,193,'0',1,'2',29999),(30000,872,193,'30',2,'79',79999),(80000,873,193,'800',3,'939',93999),(94000,874,193,'94',2,'99',99999),(0,875,194,'0',1,'2',29999),(30000,876,194,'30',2,'69',69999),(70000,877,194,'700',3,'999',99999),(0,878,195,'0',1,'1',19999),(20000,879,195,'20',2,'59',59999),(60000,880,195,'600',3,'799',79999),(80000,881,195,'80',2,'89',89999),(90000,882,195,'90',2,'99',99999),(0,883,196,'00',2,'59',59999),(60000,884,196,'600',3,'859',85999),(86000,885,196,'86',2,'99',99999),(0,886,197,'0',1,'1',19999),(20000,887,197,'20',2,'79',79999),(80000,888,197,'800',3,'999',99999),(0,889,198,'0',1,'4',49999),(50000,890,198,'50',2,'94',94999),(95000,891,198,'950',3,'999',99999),(0,892,199,'0',1,'2',29999),(30000,893,199,'30',2,'59',59999),(60000,894,199,'600',3,'999',99999),(0,895,200,'0',1,'0',9999),(10000,896,200,'10',2,'94',94999),(95000,897,200,'950',3,'999',99999),(0,898,201,'0',1,'3',39999),(40000,899,201,'40',2,'89',89999),(90000,900,201,'900',3,'999',99999),(0,901,202,'0',1,'4',49999),(50000,902,202,'50',2,'79',79999),(80000,903,202,'800',3,'999',99999),(0,904,203,'00',2,'49',49999),(50000,905,203,'500',3,'999',99999),(0,906,204,'0',1,'1',19999),(20000,907,204,'20',2,'79',79999),(80000,908,204,'800',3,'999',99999),(0,909,205,'0',1,'3',39999),(40000,910,205,'40',2,'79',79999),(80000,911,205,'800',3,'999',99999),(0,912,206,'0',1,'2',29999),(30000,913,206,'30',2,'69',69999),(70000,914,206,'700',3,'799',79999),(0,915,207,'0',1,'1',19999),(20000,916,207,'20',2,'59',59999),(60000,917,207,'600',3,'899',89999),(0,918,208,'0',1,'3',39999),(40000,919,208,'400',3,'599',59999),(60000,920,208,'60',2,'89',89999),(90000,921,208,'900',3,'999',99999),(0,922,209,'00',2,'19',19999),(20000,923,209,'200',3,'699',69999),(70000,924,209,'7000',4,'8999',89999),(90000,925,209,'90000',5,'97599',97599),(97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'','0',1,1,0,0),(42,1,0,5,1,2,5,'','0',9,1,0,0),(10,2,-1,6,1,2,44,'','0',9,1,0,0),(4,1,0,7,1,2,1,'','0',1,1,0,0),(12,1,0,8,1,2,5,'','0',1,1,0,0),(13,1,0,9,1,2,5,'','0',1,1,0,0),(41,1,0,11,1,2,1,'','0',1,1,0,0),(11,1,0,12,1,2,5,'','0',1,1,0,0),(45,1,-1,16,1,2,1,'','0',9,1,0,0),(49,1,0,27,1,2,43,'','0',9,1,0,0),(50,1,0,28,1,2,43,'','0',9,1,0,0),(51,1,0,29,1,2,43,'','0',9,1,0,0),(52,1,0,30,1,2,48,'','0',1,1,0,0),(56,1,0,34,1,2,1,'','0',2,0,0,0),(14,3,-1,38,1,2,13,'','0',1,1,0,0),(54,2,-1,39,1,2,58,'','0',1,1,0,0),(1,6,-1,42,1,2,1,'','0',8,1,0,0),(57,1,0,43,1,2,2,'2ff727824f057d29ecbaa3e777e64412','0',1,1,0,0),(59,1,0,45,1,2,2,'56a3ce0e538df6fe89cae858510d69cf','0',1,1,0,0),(1,7,-1,46,1,2,1,'f3e90596361e31d496d4026eb624c983','0',8,1,0,0),(57,2,-1,48,1,2,2,'2ff727824f057d29ecbaa3e777e64412','0',1,1,0,0),(60,1,0,49,1,2,60,'7d416d642e995b62494b1a2cde75b13c','0',1,1,0,0),(57,3,-1,50,1,2,2,'2ff727824f057d29ecbaa3e777e64412','0',1,1,0,0),(57,4,-1,51,1,2,2,'2ff727824f057d29ecbaa3e777e64412','0',1,1,0,0),(57,5,-1,52,1,2,2,'2ff727824f057d29ecbaa3e777e64412','0',1,1,0,0),(59,2,-1,53,1,2,2,'56a3ce0e538df6fe89cae858510d69cf','0',1,1,0,0),(60,2,-1,54,1,2,60,'7d416d642e995b62494b1a2cde75b13c','0',1,1,0,0),(60,3,-1,57,1,2,60,'7d416d642e995b62494b1a2cde75b13c','0',1,1,0,0),(61,3,0,59,1,2,60,'423c6e4b45f1447eb410ecac452a0adb','0',2,0,0,0),(62,3,0,61,1,2,60,'d1a2e42a05392a5577d84ea5443e4d1d','0',2,0,0,0),(60,4,-1,62,1,2,60,'7d416d642e995b62494b1a2cde75b13c','0',1,1,0,0),(61,4,-1,63,1,2,60,'423c6e4b45f1447eb410ecac452a0adb','0',2,0,0,0),(63,4,0,66,1,2,60,'e18a517a365635aa5d345f94f3fd899d','0',2,0,0,0),(64,4,0,68,1,2,60,'89601c186040d9e985ce4e390f08f73f','0',2,0,0,0),(63,5,-1,69,1,2,60,'e18a517a365635aa5d345f94f3fd899d','0',2,0,0,0),(64,5,-1,70,1,2,60,'89601c186040d9e985ce4e390f08f73f','0',2,0,0,0),(62,4,-1,71,1,2,60,'d1a2e42a05392a5577d84ea5443e4d1d','0',2,0,0,0),(14,4,-1,72,1,2,13,'e5161a99f733200b9ed4e80f9c16187b','0',1,1,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
INSERT INTO `eznotificationevent` VALUES (57,1,0,0,'','','','','ezpublish',1,0),(59,1,0,0,'','','','','ezpublish',2,0),(1,7,0,0,'','','','','ezpublish',3,0),(57,2,0,0,'','','','','ezpublish',4,0),(60,1,0,0,'','','','','ezpublish',5,0),(57,3,0,0,'','','','','ezpublish',6,0),(57,4,0,0,'','','','','ezpublish',7,0),(57,5,0,0,'','','','','ezpublish',8,0),(59,2,0,0,'','','','','ezpublish',9,0),(60,2,0,0,'','','','','ezpublish',10,0),(60,3,0,0,'','','','','ezpublish',11,0),(61,3,0,0,'','','','','ezpublish',12,0),(62,3,0,0,'','','','','ezpublish',13,0),(60,4,0,0,'','','','','ezpublish',14,0),(61,4,0,0,'','','','','ezpublish',15,0),(63,4,0,0,'','','','','ezpublish',16,0),(64,4,0,0,'','','','','ezpublish',17,0),(63,5,0,0,'','','','','ezpublish',18,0),(64,5,0,0,'','','','','ezpublish',19,0),(62,4,0,0,'','','','','ezpublish',20,0),(14,4,0,0,'','','','','ezpublish',21,0);
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1),(2,1,'Processing',2),(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2),('*',317,'content',0,3),('login',319,'user',0,3),('*',330,'ezoe',0,3),('pdf',336,'content',0,1),('read',337,'content',0,1),('login',339,'user',0,1);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (259,'Section',336),(260,'Section',337);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (485,259,'1'),(486,260,'1');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
INSERT INTO `ezpreferences` VALUES (1,'admin_left_menu_size',14,'16.46153846em');
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0),(2,0,'Administrator','*',0),(3,0,'Editor','',0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,11,0,4671,'name',0,957,0,0,1033920746,2,956),(6,3,11,0,4672,'name',0,0,1,956,1033920746,2,957),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(159,14,52,0,4694,'name',0,965,0,0,1082016591,4,877),(159,14,52,0,4695,'name',0,966,1,877,1082016591,4,965),(159,14,52,0,4696,'name',0,0,2,965,1082016591,4,966),(176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967),(4,1,56,0,4698,'name',0,0,0,0,1103023132,5,968),(4,1,1,0,4715,'name',0,0,0,0,1033917596,1,973),(181,16,57,0,5801,'title',0,803,0,0,1418229628,1,802),(181,16,57,0,5802,'title',0,1712,1,802,1418229628,1,803),(181,16,57,0,5803,'title',0,1713,2,803,1418229628,1,1712),(181,16,57,0,5804,'title',0,802,3,1712,1418229628,1,1713),(181,16,57,0,5805,'title',0,803,4,1713,1418229628,1,802),(181,16,57,0,5806,'title',0,1714,5,802,1418229628,1,803),(181,16,57,0,5807,'title',0,1715,6,803,1418229628,1,1714),(183,16,57,0,5808,'content',0,802,7,1714,1418229628,1,1715),(183,16,57,0,5809,'content',0,803,8,1715,1418229628,1,802),(183,16,57,0,5810,'content',0,1716,9,802,1418229628,1,803),(183,16,57,0,5811,'content',0,1717,10,803,1418229628,1,1716),(183,16,57,0,5812,'content',0,803,11,1716,1418229628,1,1717),(183,16,57,0,5813,'content',0,1718,12,1717,1418229628,1,803),(183,16,57,0,5814,'content',0,1719,13,803,1418229628,1,1718),(183,16,57,0,5815,'content',0,1720,14,1718,1418229628,1,1719),(183,16,57,0,5816,'content',0,1721,15,1719,1418229628,1,1720),(183,16,57,0,5817,'content',0,1722,16,1720,1418229628,1,1721),(183,16,57,0,5818,'content',0,1723,17,1721,1418229628,1,1722),(183,16,57,0,5819,'content',0,1724,18,1722,1418229628,1,1723),(183,16,57,0,5820,'content',0,1725,19,1723,1418229628,1,1724),(183,16,57,0,5821,'content',0,1726,20,1724,1418229628,1,1725),(183,16,57,0,5822,'content',0,1727,21,1725,1418229628,1,1726),(183,16,57,0,5823,'content',0,1728,22,1726,1418229628,1,1727),(183,16,57,0,5824,'content',0,1729,23,1727,1418229628,1,1728),(183,16,57,0,5825,'content',0,1730,24,1728,1418229628,1,1729),(183,16,57,0,5826,'content',0,1731,25,1729,1418229628,1,1730),(183,16,57,0,5827,'content',0,1732,26,1730,1418229628,1,1731),(183,16,57,0,5828,'content',0,1733,27,1731,1418229628,1,1732),(183,16,57,0,5829,'content',0,1734,28,1732,1418229628,1,1733),(183,16,57,0,5830,'content',0,1735,29,1733,1418229628,1,1734),(183,16,57,0,5831,'content',0,1736,30,1734,1418229628,1,1735),(183,16,57,0,5832,'content',0,1737,31,1735,1418229628,1,1736),(183,16,57,0,5833,'content',0,1738,32,1736,1418229628,1,1737),(183,16,57,0,5834,'content',0,1739,33,1737,1418229628,1,1738),(183,16,57,0,5835,'content',0,1740,34,1738,1418229628,1,1739),(183,16,57,0,5836,'content',0,1741,35,1739,1418229628,1,1740),(183,16,57,0,5837,'content',0,802,36,1740,1418229628,1,1741),(183,16,57,0,5838,'content',0,1742,37,1741,1418229628,1,802),(183,16,57,0,5839,'content',0,1743,38,802,1418229628,1,1742),(183,16,57,0,5840,'content',0,1744,39,1742,1418229628,1,1743),(183,16,57,0,5841,'content',0,1745,40,1743,1418229628,1,1744),(183,16,57,0,5842,'content',0,1746,41,1744,1418229628,1,1745),(183,16,57,0,5843,'content',0,802,42,1745,1418229628,1,1746),(183,16,57,0,5844,'content',0,1747,43,1746,1418229628,1,802),(183,16,57,0,5845,'content',0,1748,44,802,1418229628,1,1747),(183,16,57,0,5846,'content',0,802,45,1747,1418229628,1,1748),(183,16,57,0,5847,'content',0,1742,46,1748,1418229628,1,802),(183,16,57,0,5848,'content',0,1749,47,802,1418229628,1,1742),(183,16,57,0,5849,'content',0,1750,48,1742,1418229628,1,1749),(183,16,57,0,5850,'content',0,1751,49,1749,1418229628,1,1750),(183,16,57,0,5851,'content',0,1752,50,1750,1418229628,1,1751),(183,16,57,0,5852,'content',0,1753,51,1751,1418229628,1,1752),(183,16,57,0,5853,'content',0,1754,52,1752,1418229628,1,1753),(183,16,57,0,5854,'content',0,1755,53,1753,1418229628,1,1754),(183,16,57,0,5855,'content',0,1756,54,1754,1418229628,1,1755),(183,16,57,0,5856,'content',0,1757,55,1755,1418229628,1,1756),(183,16,57,0,5857,'content',0,802,56,1756,1418229628,1,1757),(183,16,57,0,5858,'content',0,1747,57,1757,1418229628,1,802),(183,16,57,0,5859,'content',0,1758,58,802,1418229628,1,1747),(183,16,57,0,5860,'content',0,1759,59,1747,1418229628,1,1758),(183,16,57,0,5861,'content',0,1760,60,1758,1418229628,1,1759),(183,16,57,0,5862,'content',0,1761,61,1759,1418229628,1,1760),(183,16,57,0,5863,'content',0,1762,62,1760,1418229628,1,1761),(183,16,57,0,5864,'content',0,1763,63,1761,1418229628,1,1762),(183,16,57,0,5865,'content',0,1764,64,1762,1418229628,1,1763),(183,16,57,0,5866,'content',0,1765,65,1763,1418229628,1,1764),(183,16,57,0,5867,'content',0,1766,66,1764,1418229628,1,1765),(183,16,57,0,5868,'content',0,1718,67,1765,1418229628,1,1766),(183,16,57,0,5869,'content',0,1767,68,1766,1418229628,1,1718),(183,16,57,0,5870,'content',0,1768,69,1718,1418229628,1,1767),(183,16,57,0,5871,'content',0,1769,70,1767,1418229628,1,1768),(183,16,57,0,5872,'content',0,1770,71,1768,1418229628,1,1769),(183,16,57,0,5873,'content',0,1771,72,1769,1418229628,1,1770),(183,16,57,0,5874,'content',0,1772,73,1770,1418229628,1,1771),(183,16,57,0,5875,'content',0,1770,74,1771,1418229628,1,1772),(183,16,57,0,5876,'content',0,1773,75,1772,1418229628,1,1770),(183,16,57,0,5877,'content',0,1774,76,1770,1418229628,1,1773),(183,16,57,0,5878,'content',0,1775,77,1773,1418229628,1,1774),(183,16,57,0,5879,'content',0,1772,78,1774,1418229628,1,1775),(183,16,57,0,5880,'content',0,1770,79,1775,1418229628,1,1772),(183,16,57,0,5881,'content',0,1776,80,1772,1418229628,1,1770),(183,16,57,0,5882,'content',0,1777,81,1770,1418229628,1,1776),(183,16,57,0,5883,'content',0,1772,82,1776,1418229628,1,1777),(183,16,57,0,5884,'content',0,1770,83,1777,1418229628,1,1772),(183,16,57,0,5885,'content',0,1739,84,1772,1418229628,1,1770),(183,16,57,0,5886,'content',0,1778,85,1770,1418229628,1,1739),(183,16,57,0,5887,'content',0,1772,86,1739,1418229628,1,1778),(183,16,57,0,5888,'content',0,1770,87,1778,1418229628,1,1772),(183,16,57,0,5889,'content',0,1779,88,1772,1418229628,1,1770),(183,16,57,0,5890,'content',0,1718,89,1770,1418229628,1,1779),(183,16,57,0,5891,'content',0,1780,90,1779,1418229628,1,1718),(183,16,57,0,5892,'content',0,1781,91,1718,1418229628,1,1780),(183,16,57,0,5893,'content',0,802,92,1780,1418229628,1,1781),(183,16,57,0,5894,'content',0,1742,93,1781,1418229628,1,802),(183,16,57,0,5895,'content',0,1782,94,802,1418229628,1,1742),(183,16,57,0,5896,'content',0,1739,95,1742,1418229628,1,1782),(183,16,57,0,5897,'content',0,1783,96,1782,1418229628,1,1739),(183,16,57,0,5898,'content',0,1784,97,1739,1418229628,1,1783),(183,16,57,0,5899,'content',0,1785,98,1783,1418229628,1,1784),(183,16,57,0,5900,'content',0,1786,99,1784,1418229628,1,1785),(183,16,57,0,5901,'content',0,1787,100,1785,1418229628,1,1786),(183,16,57,0,5902,'content',0,802,101,1786,1418229628,1,1787),(183,16,57,0,5903,'content',0,1788,102,1787,1418229628,1,802),(183,16,57,0,5904,'content',0,1789,103,802,1418229628,1,1788),(183,16,57,0,5905,'content',0,1790,104,1788,1418229628,1,1789),(183,16,57,0,5906,'content',0,1791,105,1789,1418229628,1,1790),(183,16,57,0,5907,'content',0,1792,106,1790,1418229628,1,1791),(183,16,57,0,5908,'content',0,1793,107,1791,1418229628,1,1792),(183,16,57,0,5909,'content',0,1718,108,1792,1418229628,1,1793),(183,16,57,0,5910,'content',0,802,109,1793,1418229628,1,1718),(183,16,57,0,5911,'content',0,1788,110,1718,1418229628,1,802),(183,16,57,0,5912,'content',0,1794,111,802,1418229628,1,1788),(183,16,57,0,5913,'content',0,1795,112,1788,1418229628,1,1794),(183,16,57,0,5914,'content',0,1796,113,1794,1418229628,1,1795),(183,16,57,0,5915,'content',0,1797,114,1795,1418229628,1,1796),(183,16,57,0,5916,'content',0,1798,115,1796,1418229628,1,1797),(183,16,57,0,5917,'content',0,1799,116,1797,1418229628,1,1798),(183,16,57,0,5918,'content',0,1800,117,1798,1418229628,1,1799),(183,16,57,0,5919,'content',0,1801,118,1799,1418229628,1,1800),(183,16,57,0,5920,'content',0,1802,119,1800,1418229628,1,1801),(183,16,57,0,5921,'content',0,1803,120,1801,1418229628,1,1802),(183,16,57,0,5922,'content',0,1804,121,1802,1418229628,1,1803),(183,16,57,0,5923,'content',0,1805,122,1803,1418229628,1,1804),(183,16,57,0,5924,'content',0,1806,123,1804,1418229628,1,1805),(183,16,57,0,5925,'content',0,1807,124,1805,1418229628,1,1806),(183,16,57,0,5926,'content',0,1808,125,1806,1418229628,1,1807),(183,16,57,0,5927,'content',0,1718,126,1807,1418229628,1,1808),(183,16,57,0,5928,'content',0,1809,127,1808,1418229628,1,1718),(183,16,57,0,5929,'content',0,1810,128,1718,1418229628,1,1809),(183,16,57,0,5930,'content',0,1811,129,1809,1418229628,1,1810),(183,16,57,0,5931,'content',0,1812,130,1810,1418229628,1,1811),(183,16,57,0,5932,'content',0,1813,131,1811,1418229628,1,1812),(183,16,57,0,5933,'content',0,1814,132,1812,1418229628,1,1813),(183,16,57,0,5934,'content',0,1815,133,1813,1418229628,1,1814),(183,16,57,0,5935,'content',0,1816,134,1814,1418229628,1,1815),(183,16,57,0,5936,'content',0,1817,135,1815,1418229628,1,1816),(183,16,57,0,5937,'content',0,1786,136,1816,1418229628,1,1817),(183,16,57,0,5938,'content',0,1818,137,1817,1418229628,1,1786),(183,16,57,0,5939,'content',0,1819,138,1786,1418229628,1,1818),(183,16,57,0,5940,'content',0,1820,139,1818,1418229628,1,1819),(183,16,57,0,5941,'content',0,1821,140,1819,1418229628,1,1820),(183,16,57,0,5942,'content',0,1822,141,1820,1418229628,1,1821),(183,16,57,0,5943,'content',0,1823,142,1821,1418229628,1,1822),(183,16,57,0,5944,'content',0,1739,143,1822,1418229628,1,1823),(183,16,57,0,5945,'content',0,1824,144,1823,1418229628,1,1739),(183,16,57,0,5946,'content',0,1808,145,1739,1418229628,1,1824),(183,16,57,0,5947,'content',0,1736,146,1824,1418229628,1,1808),(183,16,57,0,5948,'content',0,1763,147,1808,1418229628,1,1736),(183,16,57,0,5949,'content',0,1825,148,1736,1418229628,1,1763),(183,16,57,0,5950,'content',0,1826,149,1763,1418229628,1,1825),(183,16,57,0,5951,'content',0,1827,150,1825,1418229628,1,1826),(183,16,57,0,5952,'content',0,1828,151,1826,1418229628,1,1827),(183,16,57,0,5953,'content',0,1829,152,1827,1418229628,1,1828),(183,16,57,0,5954,'content',0,1830,153,1828,1418229628,1,1829),(183,16,57,0,5955,'content',0,1831,154,1829,1418229628,1,1830),(183,16,57,0,5956,'content',0,1832,155,1830,1418229628,1,1831),(183,16,57,0,5957,'content',0,1722,156,1831,1418229628,1,1832),(183,16,57,0,5958,'content',0,1718,157,1832,1418229628,1,1722),(183,16,57,0,5959,'content',0,1833,158,1722,1418229628,1,1718),(183,16,57,0,5960,'content',0,1834,159,1718,1418229628,1,1833),(183,16,57,0,5961,'content',0,1835,160,1833,1418229628,1,1834),(183,16,57,0,5962,'content',0,1836,161,1834,1418229628,1,1835),(183,16,57,0,5963,'content',0,1837,162,1835,1418229628,1,1836),(183,16,57,0,5964,'content',0,1838,163,1836,1418229628,1,1837),(183,16,57,0,5965,'content',0,1839,164,1837,1418229628,1,1838),(183,16,57,0,5966,'content',0,1737,165,1838,1418229628,1,1839),(183,16,57,0,5967,'content',0,1840,166,1839,1418229628,1,1737),(183,16,57,0,5968,'content',0,1841,167,1737,1418229628,1,1840),(183,16,57,0,5969,'content',0,802,168,1840,1418229628,1,1841),(183,16,57,0,5970,'content',0,803,169,1841,1418229628,1,802),(183,16,57,0,5971,'content',0,1765,170,802,1418229628,1,803),(183,16,57,0,5972,'content',0,1808,171,803,1418229628,1,1765),(183,16,57,0,5973,'content',0,1718,172,1765,1418229628,1,1808),(183,16,57,0,5974,'content',0,1842,173,1808,1418229628,1,1718),(183,16,57,0,5975,'content',0,1768,174,1718,1418229628,1,1842),(183,16,57,0,5976,'content',0,1843,175,1842,1418229628,1,1768),(183,16,57,0,5977,'content',0,1844,176,1768,1418229628,1,1843),(183,16,57,0,5978,'content',0,1770,177,1843,1418229628,1,1844),(183,16,57,0,5979,'content',0,1845,178,1844,1418229628,1,1770),(183,16,57,0,5980,'content',0,1844,179,1770,1418229628,1,1845),(183,16,57,0,5981,'content',0,1770,180,1845,1418229628,1,1844),(183,16,57,0,5982,'content',0,1846,181,1844,1418229628,1,1770),(183,16,57,0,5983,'content',0,1844,182,1770,1418229628,1,1846),(183,16,57,0,5984,'content',0,1770,183,1846,1418229628,1,1844),(183,16,57,0,5985,'content',0,1847,184,1844,1418229628,1,1770),(183,16,57,0,5986,'content',0,1772,185,1770,1418229628,1,1847),(183,16,57,0,5987,'content',0,1770,186,1847,1418229628,1,1772),(183,16,57,0,5988,'content',0,1848,187,1772,1418229628,1,1770),(183,16,57,0,5989,'content',0,1849,188,1770,1418229628,1,1848),(183,16,57,0,5990,'content',0,1850,189,1848,1418229628,1,1849),(183,16,57,0,5991,'content',0,1851,190,1849,1418229628,1,1850),(183,16,57,0,5992,'content',0,1770,191,1850,1418229628,1,1851),(183,16,57,0,5993,'content',0,1852,192,1851,1418229628,1,1770),(183,16,57,0,5994,'content',0,1848,193,1770,1418229628,1,1852),(183,16,57,0,5995,'content',0,1739,194,1852,1418229628,1,1848),(183,16,57,0,5996,'content',0,1828,195,1848,1418229628,1,1739),(183,16,57,0,5997,'content',0,1853,196,1739,1418229628,1,1828),(183,16,57,0,5998,'content',0,1854,197,1828,1418229628,1,1853),(183,16,57,0,5999,'content',0,1855,198,1853,1418229628,1,1854),(183,16,57,0,6000,'content',0,1856,199,1854,1418229628,1,1855),(183,16,57,0,6001,'content',0,1857,200,1855,1418229628,1,1856),(183,16,57,0,6002,'content',0,1858,201,1856,1418229628,1,1857),(183,16,57,0,6003,'content',0,1844,202,1857,1418229628,1,1858),(183,16,57,0,6004,'content',0,1770,203,1858,1418229628,1,1844),(183,16,57,0,6005,'content',0,1859,204,1844,1418229628,1,1770),(183,16,57,0,6006,'content',0,1860,205,1770,1418229628,1,1859),(183,16,57,0,6007,'content',0,1772,206,1859,1418229628,1,1860),(183,16,57,0,6008,'content',0,1770,207,1860,1418229628,1,1772),(183,16,57,0,6009,'content',0,1739,208,1772,1418229628,1,1770),(183,16,57,0,6010,'content',0,1861,209,1770,1418229628,1,1739),(183,16,57,0,6011,'content',0,1862,210,1739,1418229628,1,1861),(183,16,57,0,6012,'content',0,1739,211,1861,1418229628,1,1862),(183,16,57,0,6013,'content',0,1863,212,1862,1418229628,1,1739),(183,16,57,0,6014,'content',0,1844,213,1739,1418229628,1,1863),(183,16,57,0,6015,'content',0,1770,214,1863,1418229628,1,1844),(183,16,57,0,6016,'content',0,1864,215,1844,1418229628,1,1770),(183,16,57,0,6017,'content',0,1865,216,1770,1418229628,1,1864),(183,16,57,0,6018,'content',0,1866,217,1864,1418229628,1,1865),(183,16,57,0,6019,'content',0,1867,218,1865,1418229628,1,1866),(183,16,57,0,6020,'content',0,1868,219,1866,1418229628,1,1867),(183,16,57,0,6021,'content',0,1869,220,1867,1418229628,1,1868),(183,16,57,0,6022,'content',0,1869,221,1868,1418229628,1,1869),(183,16,57,0,6023,'content',0,1718,222,1869,1418229628,1,1869),(183,16,57,0,6024,'content',0,1870,223,1869,1418229628,1,1718),(183,16,57,0,6025,'content',0,1871,224,1718,1418229628,1,1870),(183,16,57,0,6026,'content',0,1872,225,1870,1418229628,1,1871),(183,16,57,0,6027,'content',0,1873,226,1871,1418229628,1,1872),(183,16,57,0,6028,'content',0,1874,227,1872,1418229628,1,1873),(183,16,57,0,6029,'content',0,1875,228,1873,1418229628,1,1874),(183,16,57,0,6030,'content',0,1876,229,1874,1418229628,1,1875),(183,16,57,0,6031,'content',0,1877,230,1875,1418229628,1,1876),(183,16,57,0,6032,'content',0,1878,231,1876,1418229628,1,1877),(183,16,57,0,6033,'content',0,1879,232,1877,1418229628,1,1878),(183,16,57,0,6034,'content',0,1718,233,1878,1418229628,1,1879),(183,16,57,0,6035,'content',0,1880,234,1879,1418229628,1,1718),(183,16,57,0,6036,'content',0,1881,235,1718,1418229628,1,1880),(183,16,57,0,6037,'content',0,1864,236,1880,1418229628,1,1881),(183,16,57,0,6038,'content',0,1882,237,1881,1418229628,1,1864),(183,16,57,0,6039,'content',0,1883,238,1864,1418229628,1,1882),(183,16,57,0,6040,'content',0,1884,239,1882,1418229628,1,1883),(183,16,57,0,6041,'content',0,1885,240,1883,1418229628,1,1884),(183,16,57,0,6042,'content',0,1739,241,1884,1418229628,1,1885),(183,16,57,0,6043,'content',0,1886,242,1885,1418229628,1,1739),(183,16,57,0,6044,'content',0,1887,243,1739,1418229628,1,1886),(183,16,57,0,6045,'content',0,1718,244,1886,1418229628,1,1887),(183,16,57,0,6046,'content',0,1888,245,1887,1418229628,1,1718),(183,16,57,0,6047,'content',0,1724,246,1718,1418229628,1,1888),(183,16,57,0,6048,'content',0,1889,247,1888,1418229628,1,1724),(183,16,57,0,6049,'content',0,1890,248,1724,1418229628,1,1889),(183,16,57,0,6050,'content',0,1891,249,1889,1418229628,1,1890),(183,16,57,0,6051,'content',0,1892,250,1890,1418229628,1,1891),(183,16,57,0,6052,'content',0,1737,251,1891,1418229628,1,1892),(183,16,57,0,6053,'content',0,802,252,1892,1418229628,1,1737),(183,16,57,0,6054,'content',0,1788,253,1737,1418229628,1,802),(183,16,57,0,6055,'content',0,1893,254,802,1418229628,1,1788),(183,16,57,0,6056,'content',0,1894,255,1788,1418229628,1,1893),(183,16,57,0,6057,'content',0,1895,256,1893,1418229628,1,1894),(183,16,57,0,6058,'content',0,1896,257,1894,1418229628,1,1895),(183,16,57,0,6059,'content',0,1897,258,1895,1418229628,1,1896),(183,16,57,0,6060,'content',0,1898,259,1896,1418229628,1,1897),(183,16,57,0,6061,'content',0,1899,260,1897,1418229628,1,1898),(183,16,57,0,6062,'content',0,1900,261,1898,1418229628,1,1899),(183,16,57,0,6063,'content',0,1901,262,1899,1418229628,1,1900),(183,16,57,0,6064,'content',0,1902,263,1900,1418229628,1,1901),(183,16,57,0,6065,'content',0,1739,264,1901,1418229628,1,1902),(183,16,57,0,6066,'content',0,1903,265,1902,1418229628,1,1739),(183,16,57,0,6067,'content',0,1904,266,1739,1418229628,1,1903),(183,16,57,0,6068,'content',0,1905,267,1903,1418229628,1,1904),(183,16,57,0,6069,'content',0,1906,268,1904,1418229628,1,1905),(183,16,57,0,6070,'content',0,1907,269,1905,1418229628,1,1906),(183,16,57,0,6071,'content',0,1908,270,1906,1418229628,1,1907),(183,16,57,0,6072,'content',0,1737,271,1907,1418229628,1,1908),(183,16,57,0,6073,'content',0,802,272,1908,1418229628,1,1737),(183,16,57,0,6074,'content',0,803,273,1737,1418229628,1,802),(183,16,57,0,6075,'content',0,1723,274,802,1418229628,1,803),(183,16,57,0,6076,'content',0,1909,275,803,1418229628,1,1723),(183,16,57,0,6077,'content',0,1910,276,1723,1418229628,1,1909),(183,16,57,0,6078,'content',0,1739,277,1909,1418229628,1,1910),(183,16,57,0,6079,'content',0,1911,278,1910,1418229628,1,1739),(183,16,57,0,6080,'content',0,1820,279,1739,1418229628,1,1911),(183,16,57,0,6081,'content',0,1912,280,1911,1418229628,1,1820),(183,16,57,0,6082,'content',0,1913,281,1820,1418229628,1,1912),(183,16,57,0,6083,'content',0,1914,282,1912,1418229628,1,1913),(183,16,57,0,6084,'content',0,1865,283,1913,1418229628,1,1914),(183,16,57,0,6085,'content',0,1915,284,1914,1418229628,1,1865),(183,16,57,0,6086,'content',0,1916,285,1865,1418229628,1,1915),(183,16,57,0,6087,'content',0,1749,286,1915,1418229628,1,1916),(183,16,57,0,6088,'content',0,1917,287,1916,1418229628,1,1749),(183,16,57,0,6089,'content',0,1918,288,1749,1418229628,1,1917),(183,16,57,0,6090,'content',0,1919,289,1917,1418229628,1,1918),(183,16,57,0,6091,'content',0,1920,290,1918,1418229628,1,1919),(183,16,57,0,6092,'content',0,1921,291,1919,1418229628,1,1920),(183,16,57,0,6093,'content',0,1922,292,1920,1418229628,1,1921),(183,16,57,0,6094,'content',0,1718,293,1921,1418229628,1,1922),(183,16,57,0,6095,'content',0,1724,294,1922,1418229628,1,1718),(183,16,57,0,6096,'content',0,1923,295,1718,1418229628,1,1724),(183,16,57,0,6097,'content',0,1924,296,1724,1418229628,1,1923),(183,16,57,0,6098,'content',0,1925,297,1923,1418229628,1,1924),(183,16,57,0,6099,'content',0,1926,298,1924,1418229628,1,1925),(183,16,57,0,6100,'content',0,1927,299,1925,1418229628,1,1926),(183,16,57,0,6101,'content',0,1928,300,1926,1418229628,1,1927),(183,16,57,0,6102,'content',0,1786,301,1927,1418229628,1,1928),(183,16,57,0,6103,'content',0,1718,302,1928,1418229628,1,1786),(183,16,57,0,6104,'content',0,1929,303,1786,1418229628,1,1718),(183,16,57,0,6105,'content',0,1930,304,1718,1418229628,1,1929),(183,16,57,0,6106,'content',0,1931,305,1929,1418229628,1,1930),(183,16,57,0,6107,'content',0,1872,306,1930,1418229628,1,1931),(183,16,57,0,6108,'content',0,1932,307,1931,1418229628,1,1872),(183,16,57,0,6109,'content',0,1933,308,1872,1418229628,1,1932),(183,16,57,0,6110,'content',0,1934,309,1932,1418229628,1,1933),(183,16,57,0,6111,'content',0,1935,310,1933,1418229628,1,1934),(183,16,57,0,6112,'content',0,1936,311,1934,1418229628,1,1935),(183,16,57,0,6113,'content',0,1937,312,1935,1418229628,1,1936),(183,16,57,0,6114,'content',0,1928,313,1936,1418229628,1,1937),(183,16,57,0,6115,'content',0,1938,314,1937,1418229628,1,1928),(183,16,57,0,6116,'content',0,1786,315,1928,1418229628,1,1938),(183,16,57,0,6117,'content',0,1939,316,1938,1418229628,1,1786),(183,16,57,0,6118,'content',0,1940,317,1786,1418229628,1,1939),(183,16,57,0,6119,'content',0,1941,318,1939,1418229628,1,1940),(183,16,57,0,6120,'content',0,1942,319,1940,1418229628,1,1941),(183,16,57,0,6121,'content',0,1943,320,1941,1418229628,1,1942),(183,16,57,0,6122,'content',0,1754,321,1942,1418229628,1,1943),(183,16,57,0,6123,'content',0,1944,322,1943,1418229628,1,1754),(183,16,57,0,6124,'content',0,1945,323,1754,1418229628,1,1944),(183,16,57,0,6125,'content',0,1917,324,1944,1418229628,1,1945),(183,16,57,0,6126,'content',0,1931,325,1945,1418229628,1,1917),(183,16,57,0,6127,'content',0,1946,326,1917,1418229628,1,1931),(183,16,57,0,6128,'content',0,1947,327,1931,1418229628,1,1946),(183,16,57,0,6129,'content',0,1905,328,1946,1418229628,1,1947),(183,16,57,0,6130,'content',0,1718,329,1947,1418229628,1,1905),(183,16,57,0,6131,'content',0,1948,330,1905,1418229628,1,1718),(183,16,57,0,6132,'content',0,1949,331,1718,1418229628,1,1948),(183,16,57,0,6133,'content',0,1950,332,1948,1418229628,1,1949),(183,16,57,0,6134,'content',0,1718,333,1949,1418229628,1,1950),(183,16,57,0,6135,'content',0,1951,334,1950,1418229628,1,1718),(183,16,57,0,6136,'content',0,1952,335,1718,1418229628,1,1951),(183,16,57,0,6137,'content',0,1953,336,1951,1418229628,1,1952),(183,16,57,0,6138,'content',0,1954,337,1952,1418229628,1,1953),(183,16,57,0,6139,'content',0,1955,338,1953,1418229628,1,1954),(183,16,57,0,6140,'content',0,1956,339,1954,1418229628,1,1955),(183,16,57,0,6141,'content',0,1829,340,1955,1418229628,1,1956),(183,16,57,0,6142,'content',0,1957,341,1956,1418229628,1,1829),(183,16,57,0,6143,'content',0,1754,342,1829,1418229628,1,1957),(183,16,57,0,6144,'content',0,1958,343,1957,1418229628,1,1754),(183,16,57,0,6145,'content',0,1959,344,1754,1418229628,1,1958),(183,16,57,0,6146,'content',0,1960,345,1958,1418229628,1,1959),(183,16,57,0,6147,'content',0,1749,346,1959,1418229628,1,1960),(183,16,57,0,6148,'content',0,1953,347,1960,1418229628,1,1749),(183,16,57,0,6149,'content',0,1961,348,1749,1418229628,1,1953),(183,16,57,0,6150,'content',0,1962,349,1953,1418229628,1,1961),(183,16,57,0,6151,'content',0,1963,350,1961,1418229628,1,1962),(183,16,57,0,6152,'content',0,1964,351,1962,1418229628,1,1963),(183,16,57,0,6153,'content',0,1965,352,1963,1418229628,1,1964),(183,16,57,0,6154,'content',0,1966,353,1964,1418229628,1,1965),(183,16,57,0,6155,'content',0,1749,354,1965,1418229628,1,1966),(183,16,57,0,6156,'content',0,1967,355,1966,1418229628,1,1749),(183,16,57,0,6157,'content',0,1968,356,1749,1418229628,1,1967),(183,16,57,0,6158,'content',0,1969,357,1967,1418229628,1,1968),(183,16,57,0,6159,'content',0,1970,358,1968,1418229628,1,1969),(183,16,57,0,6160,'content',0,1971,359,1969,1418229628,1,1970),(183,16,57,0,6161,'content',0,1972,360,1970,1418229628,1,1971),(183,16,57,0,6162,'content',0,1973,361,1971,1418229628,1,1972),(183,16,57,0,6163,'content',0,1974,362,1972,1418229628,1,1973),(183,16,57,0,6164,'content',0,1975,363,1973,1418229628,1,1974),(183,16,57,0,6165,'content',0,1954,364,1974,1418229628,1,1975),(183,16,57,0,6166,'content',0,1976,365,1975,1418229628,1,1954),(183,16,57,0,6167,'content',0,1718,366,1954,1418229628,1,1976),(183,16,57,0,6168,'content',0,1977,367,1976,1418229628,1,1718),(183,16,57,0,6169,'content',0,1978,368,1718,1418229628,1,1977),(183,16,57,0,6170,'content',0,1975,369,1977,1418229628,1,1978),(183,16,57,0,6171,'content',0,1979,370,1978,1418229628,1,1975),(183,16,57,0,6172,'content',0,1980,371,1975,1418229628,1,1979),(183,16,57,0,6173,'content',0,1957,372,1979,1418229628,1,1980),(183,16,57,0,6174,'content',0,1959,373,1980,1418229628,1,1957),(183,16,57,0,6175,'content',0,1739,374,1957,1418229628,1,1959),(183,16,57,0,6176,'content',0,1981,375,1959,1418229628,1,1739),(183,16,57,0,6177,'content',0,1982,376,1739,1418229628,1,1981),(183,16,57,0,6178,'content',0,1821,377,1981,1418229628,1,1982),(183,16,57,0,6179,'content',0,1983,378,1982,1418229628,1,1821),(183,16,57,0,6180,'content',0,1786,379,1821,1418229628,1,1983),(183,16,57,0,6181,'content',0,802,380,1983,1418229628,1,1786),(183,16,57,0,6182,'content',0,1984,381,1786,1418229628,1,802),(183,16,57,0,6183,'content',0,802,382,802,1418229628,1,1984),(183,16,57,0,6184,'content',0,803,383,1984,1418229628,1,802),(183,16,57,0,6185,'content',0,1985,384,802,1418229628,1,803),(183,16,57,0,6186,'content',0,1986,385,803,1418229628,1,1985),(183,16,57,0,6187,'content',0,1987,386,1985,1418229628,1,1986),(183,16,57,0,6188,'content',0,1988,387,1986,1418229628,1,1987),(183,16,57,0,6189,'content',0,1989,388,1987,1418229628,1,1988),(183,16,57,0,6190,'content',0,1737,389,1988,1418229628,1,1989),(183,16,57,0,6191,'content',0,1990,390,1989,1418229628,1,1737),(183,16,57,0,6192,'content',0,1991,391,1737,1418229628,1,1990),(183,16,57,0,6193,'content',0,1841,392,1990,1418229628,1,1991),(183,16,57,0,6194,'content',0,802,393,1991,1418229628,1,1841),(183,16,57,0,6195,'content',0,1992,394,1841,1418229628,1,802),(183,16,57,0,6196,'content',0,1993,395,802,1418229628,1,1992),(183,16,57,0,6197,'content',0,802,396,1992,1418229628,1,1993),(183,16,57,0,6198,'content',0,803,397,1993,1418229628,1,802),(183,16,57,0,6199,'content',0,1718,398,802,1418229628,1,803),(183,16,57,0,6200,'content',0,1994,399,803,1418229628,1,1718),(183,16,57,0,6201,'content',0,1995,400,1718,1418229628,1,1994),(183,16,57,0,6202,'content',0,1996,401,1994,1418229628,1,1995),(183,16,57,0,6203,'content',0,1718,402,1995,1418229628,1,1996),(183,16,57,0,6204,'content',0,1997,403,1996,1418229628,1,1718),(183,16,57,0,6205,'content',0,1808,404,1718,1418229628,1,1997),(183,16,57,0,6206,'content',0,1998,405,1997,1418229628,1,1808),(183,16,57,0,6207,'content',0,1718,406,1808,1418229628,1,1998),(183,16,57,0,6208,'content',0,1999,407,1998,1418229628,1,1718),(183,16,57,0,6209,'content',0,2000,408,1718,1418229628,1,1999),(183,16,57,0,6210,'content',0,2001,409,1999,1418229628,1,2000),(183,16,57,0,6211,'content',0,2002,410,2000,1418229628,1,2001),(183,16,57,0,6212,'content',0,2003,411,2001,1418229628,1,2002),(183,16,57,0,6213,'content',0,2004,412,2002,1418229628,1,2003),(183,16,57,0,6214,'content',0,802,413,2003,1418229628,1,2004),(183,16,57,0,6215,'content',0,1992,414,2004,1418229628,1,802),(183,16,57,0,6216,'content',0,2005,415,802,1418229628,1,1992),(183,16,57,0,6217,'content',0,1794,416,1992,1418229628,1,2005),(183,16,57,0,6218,'content',0,2006,417,2005,1418229628,1,1794),(183,16,57,0,6219,'content',0,2007,418,1794,1418229628,1,2006),(183,16,57,0,6220,'content',0,2008,419,2006,1418229628,1,2007),(183,16,57,0,6221,'content',0,1836,420,2007,1418229628,1,2008),(183,16,57,0,6222,'content',0,1837,421,2008,1418229628,1,1836),(183,16,57,0,6223,'content',0,1838,422,1836,1418229628,1,1837),(183,16,57,0,6224,'content',0,1835,423,1837,1418229628,1,1838),(183,16,57,0,6225,'content',0,1839,424,1838,1418229628,1,1835),(183,16,57,0,6226,'content',0,2009,425,1835,1418229628,1,1839),(183,16,57,0,6227,'content',0,2010,426,1839,1418229628,1,2009),(183,16,57,0,6228,'content',0,2011,427,2009,1418229628,1,2010),(183,16,57,0,6229,'content',0,2012,428,2010,1418229628,1,2011),(183,16,57,0,6230,'content',0,2013,429,2011,1418229628,1,2012),(183,16,57,0,6231,'content',0,1754,430,2012,1418229628,1,2013),(183,16,57,0,6232,'content',0,2014,431,2013,1418229628,1,1754),(183,16,57,0,6233,'content',0,2015,432,1754,1418229628,1,2014),(183,16,57,0,6234,'content',0,2016,433,2014,1418229628,1,2015),(183,16,57,0,6235,'content',0,2012,434,2015,1418229628,1,2016),(183,16,57,0,6236,'content',0,2017,435,2016,1418229628,1,2012),(183,16,57,0,6237,'content',0,2018,436,2012,1418229628,1,2017),(183,16,57,0,6238,'content',0,2019,437,2017,1418229628,1,2018),(183,16,57,0,6239,'content',0,2020,438,2018,1418229628,1,2019),(183,16,57,0,6240,'content',0,2021,439,2019,1418229628,1,2020),(183,16,57,0,6241,'content',0,2022,440,2020,1418229628,1,2021),(183,16,57,0,6242,'content',0,2023,441,2021,1418229628,1,2022),(183,16,57,0,6243,'content',0,1718,442,2022,1418229628,1,2023),(183,16,57,0,6244,'content',0,2024,443,2023,1418229628,1,1718),(183,16,57,0,6245,'content',0,2025,444,1718,1418229628,1,2024),(183,16,57,0,6246,'content',0,2026,445,2024,1418229628,1,2025),(183,16,57,0,6247,'content',0,1865,446,2025,1418229628,1,2026),(183,16,57,0,6248,'content',0,2027,447,2026,1418229628,1,1865),(183,16,57,0,6249,'content',0,1718,448,1865,1418229628,1,2027),(183,16,57,0,6250,'content',0,2028,449,2027,1418229628,1,1718),(183,16,57,0,6251,'content',0,1739,450,1718,1418229628,1,2028),(183,16,57,0,6252,'content',0,2029,451,2028,1418229628,1,1739),(183,16,57,0,6253,'content',0,2030,452,1739,1418229628,1,2029),(183,16,57,0,6254,'content',0,2031,453,2029,1418229628,1,2030),(183,16,57,0,6255,'content',0,2032,454,2030,1418229628,1,2031),(183,16,57,0,6256,'content',0,1718,455,2031,1418229628,1,2032),(183,16,57,0,6257,'content',0,2033,456,2032,1418229628,1,1718),(183,16,57,0,6258,'content',0,2034,457,1718,1418229628,1,2033),(183,16,57,0,6259,'content',0,2035,458,2033,1418229628,1,2034),(183,16,57,0,6260,'content',0,2036,459,2034,1418229628,1,2035),(183,16,57,0,6261,'content',0,2037,460,2035,1418229628,1,2036),(183,16,57,0,6262,'content',0,2038,461,2036,1418229628,1,2037),(183,16,57,0,6263,'content',0,2039,462,2037,1418229628,1,2038),(183,16,57,0,6264,'content',0,2040,463,2038,1418229628,1,2039),(183,16,57,0,6265,'content',0,2041,464,2039,1418229628,1,2040),(183,16,57,0,6266,'content',0,2042,465,2040,1418229628,1,2041),(183,16,57,0,6267,'content',0,2043,466,2041,1418229628,1,2042),(183,16,57,0,6268,'content',0,2044,467,2042,1418229628,1,2043),(183,16,57,0,6269,'content',0,2037,468,2043,1418229628,1,2044),(183,16,57,0,6270,'content',0,2038,469,2044,1418229628,1,2037),(183,16,57,0,6271,'content',0,2045,470,2037,1418229628,1,2038),(183,16,57,0,6272,'content',0,1835,471,2038,1418229628,1,2045),(183,16,57,0,6273,'content',0,2046,472,2045,1418229628,1,1835),(183,16,57,0,6274,'content',0,2047,473,1835,1418229628,1,2046),(183,16,57,0,6275,'content',0,2048,474,2046,1418229628,1,2047),(183,16,57,0,6276,'content',0,1737,475,2047,1418229628,1,2048),(183,16,57,0,6277,'content',0,2049,476,2048,1418229628,1,1737),(183,16,57,0,6278,'content',0,1718,477,1737,1418229628,1,2049),(183,16,57,0,6279,'content',0,2050,478,2049,1418229628,1,1718),(183,16,57,0,6280,'content',0,2051,479,1718,1418229628,1,2050),(183,16,57,0,6281,'content',0,2052,480,2050,1418229628,1,2051),(183,16,57,0,6282,'content',0,802,481,2051,1418229628,1,2052),(183,16,57,0,6283,'content',0,1747,482,2052,1418229628,1,802),(183,16,57,0,6284,'content',0,2053,483,802,1418229628,1,1747),(183,16,57,0,6285,'content',0,2054,484,1747,1418229628,1,2053),(183,16,57,0,6286,'content',0,2055,485,2053,1418229628,1,2054),(183,16,57,0,6287,'content',0,2056,486,2054,1418229628,1,2055),(183,16,57,0,6288,'content',0,2055,487,2055,1418229628,1,2056),(183,16,57,0,6289,'content',0,2057,488,2056,1418229628,1,2055),(183,16,57,0,6290,'content',0,802,489,2055,1418229628,1,2057),(183,16,57,0,6291,'content',0,803,490,2057,1418229628,1,802),(183,16,57,0,6292,'content',0,2058,491,802,1418229628,1,803),(183,16,57,0,6293,'content',0,802,492,803,1418229628,1,2058),(183,16,57,0,6294,'content',0,2059,493,2058,1418229628,1,802),(183,16,57,0,6295,'content',0,2060,494,802,1418229628,1,2059),(183,16,57,0,6296,'content',0,802,495,2059,1418229628,1,2060),(183,16,57,0,6297,'content',0,803,496,2060,1418229628,1,802),(183,16,57,0,6298,'content',0,2061,497,802,1418229628,1,803),(183,16,57,0,6299,'content',0,1786,498,803,1418229628,1,2061),(183,16,57,0,6300,'content',0,2062,499,2061,1418229628,1,1786),(183,16,57,0,6301,'content',0,2063,500,1786,1418229628,1,2062),(183,16,57,0,6302,'content',0,2064,501,2062,1418229628,1,2063),(183,16,57,0,6303,'content',0,802,502,2063,1418229628,1,2064),(183,16,57,0,6304,'content',0,803,503,2064,1418229628,1,802),(183,16,57,0,6305,'content',0,2065,504,802,1418229628,1,803),(183,16,57,0,6306,'content',0,2066,505,803,1418229628,1,2065),(183,16,57,0,6307,'content',0,2067,506,2065,1418229628,1,2066),(183,16,57,0,6308,'content',0,2068,507,2066,1418229628,1,2067),(183,16,57,0,6309,'content',0,2069,508,2067,1418229628,1,2068),(183,16,57,0,6310,'content',0,958,509,2068,1418229628,1,2069),(184,16,57,0,6311,'author',0,954,510,2069,1418229628,1,958),(184,16,57,0,6312,'author',0,955,511,958,1418229628,1,954),(184,16,57,0,6313,'author',0,927,512,954,1418229628,1,955),(184,16,57,0,6314,'author',0,958,513,955,1418229628,1,927),(184,16,57,0,6315,'author',0,954,514,927,1418229628,1,958),(184,16,57,0,6316,'author',0,955,515,958,1418229628,1,954),(184,16,57,0,6317,'author',0,927,516,954,1418229628,1,955),(184,16,57,0,6318,'author',0,0,517,955,1418229628,1,927),(200,20,59,0,6319,'title',0,803,0,0,1418229714,1,802),(200,20,59,0,6320,'title',0,2070,1,802,1418229714,1,803),(200,20,59,0,6321,'title',0,972,2,803,1418229714,1,2070),(200,20,59,0,6322,'title',0,2071,3,2070,1418229714,1,972),(202,20,59,0,6323,'content',0,986,4,972,1418229714,1,2071),(202,20,59,0,6324,'content',0,2072,5,2071,1418229714,1,986),(202,20,59,0,6325,'content',0,2073,6,986,1418229714,1,2072),(202,20,59,0,6326,'content',0,2074,7,2072,1418229714,1,2073),(202,20,59,0,6327,'content',0,2071,8,2073,1418229714,1,2074),(202,20,59,0,6328,'content',0,2075,9,2074,1418229714,1,2071),(202,20,59,0,6329,'content',0,2076,10,2071,1418229714,1,2075),(202,20,59,0,6330,'content',0,1718,11,2075,1418229714,1,2076),(202,20,59,0,6331,'content',0,981,12,2076,1418229714,1,1718),(202,20,59,0,6332,'content',0,2077,13,1718,1418229714,1,981),(202,20,59,0,6333,'content',0,2078,14,981,1418229714,1,2077),(202,20,59,0,6334,'content',0,2079,15,2077,1418229714,1,2078),(202,20,59,0,6335,'content',0,2080,16,2078,1418229714,1,2079),(202,20,59,0,6336,'content',0,2081,17,2079,1418229714,1,2080),(202,20,59,0,6337,'content',0,2082,18,2080,1418229714,1,2081),(202,20,59,0,6338,'content',0,2083,19,2081,1418229714,1,2082),(202,20,59,0,6339,'content',0,2084,20,2082,1418229714,1,2083),(202,20,59,0,6340,'content',0,2071,21,2083,1418229714,1,2084),(202,20,59,0,6341,'content',0,991,22,2084,1418229714,1,2071),(202,20,59,0,6342,'content',0,2085,23,2071,1418229714,1,991),(202,20,59,0,6343,'content',0,814,24,991,1418229714,1,2085),(202,20,59,0,6344,'content',0,2086,25,2085,1418229714,1,814),(202,20,59,0,6345,'content',0,2087,26,814,1418229714,1,2086),(202,20,59,0,6346,'content',0,2088,27,2086,1418229714,1,2087),(202,20,59,0,6347,'content',0,2089,28,2087,1418229714,1,2088),(202,20,59,0,6348,'content',0,2073,29,2088,1418229714,1,2089),(202,20,59,0,6349,'content',0,2090,30,2089,1418229714,1,2073),(202,20,59,0,6350,'content',0,2091,31,2073,1418229714,1,2090),(202,20,59,0,6351,'content',0,981,32,2090,1418229714,1,2091),(202,20,59,0,6352,'content',0,2092,33,2091,1418229714,1,981),(202,20,59,0,6353,'content',0,2087,34,981,1418229714,1,2092),(202,20,59,0,6354,'content',0,2093,35,2092,1418229714,1,2087),(202,20,59,0,6355,'content',0,1907,36,2087,1418229714,1,2093),(202,20,59,0,6356,'content',0,2094,37,2093,1418229714,1,1907),(202,20,59,0,6357,'content',0,985,38,1907,1418229714,1,2094),(202,20,59,0,6358,'content',0,2095,39,2094,1418229714,1,985),(202,20,59,0,6359,'content',0,981,40,985,1418229714,1,2095),(202,20,59,0,6360,'content',0,2096,41,2095,1418229714,1,981),(202,20,59,0,6361,'content',0,2097,42,981,1418229714,1,2096),(202,20,59,0,6362,'content',0,994,43,2096,1418229714,1,2097),(202,20,59,0,6363,'content',0,2098,44,2097,1418229714,1,994),(202,20,59,0,6364,'content',0,2099,45,994,1418229714,1,2098),(202,20,59,0,6365,'content',0,2100,46,2098,1418229714,1,2099),(202,20,59,0,6366,'content',0,2101,47,2099,1418229714,1,2100),(202,20,59,0,6367,'content',0,2102,48,2100,1418229714,1,2101),(202,20,59,0,6368,'content',0,992,49,2101,1418229714,1,2102),(202,20,59,0,6369,'content',0,2103,50,2102,1418229714,1,992),(202,20,59,0,6370,'content',0,2104,51,992,1418229714,1,2103),(202,20,59,0,6371,'content',0,2105,52,2103,1418229714,1,2104),(202,20,59,0,6372,'content',0,2106,53,2104,1418229714,1,2105),(202,20,59,0,6373,'content',0,978,54,2105,1418229714,1,2106),(202,20,59,0,6374,'content',0,2107,55,2106,1418229714,1,978),(202,20,59,0,6375,'content',0,979,56,978,1418229714,1,2107),(202,20,59,0,6376,'content',0,2108,57,2107,1418229714,1,979),(202,20,59,0,6377,'content',0,1718,58,979,1418229714,1,2108),(202,20,59,0,6378,'content',0,2073,59,2108,1418229714,1,1718),(202,20,59,0,6379,'content',0,985,60,1718,1418229714,1,2073),(202,20,59,0,6380,'content',0,2109,61,2073,1418229714,1,985),(202,20,59,0,6381,'content',0,2110,62,985,1418229714,1,2109),(202,20,59,0,6382,'content',0,2111,63,2109,1418229714,1,2110),(202,20,59,0,6383,'content',0,2087,64,2110,1418229714,1,2111),(202,20,59,0,6384,'content',0,2112,65,2111,1418229714,1,2087),(202,20,59,0,6385,'content',0,2113,66,2087,1418229714,1,2112),(202,20,59,0,6386,'content',0,2114,67,2112,1418229714,1,2113),(202,20,59,0,6387,'content',0,2087,68,2113,1418229714,1,2114),(202,20,59,0,6388,'content',0,2115,69,2114,1418229714,1,2087),(202,20,59,0,6389,'content',0,979,70,2087,1418229714,1,2115),(202,20,59,0,6390,'content',0,814,71,2115,1418229714,1,979),(202,20,59,0,6391,'content',0,2116,72,979,1418229714,1,814),(202,20,59,0,6392,'content',0,2117,73,814,1418229714,1,2116),(202,20,59,0,6393,'content',0,958,74,2116,1418229714,1,2117),(203,20,59,0,6394,'author',0,954,75,2117,1418229714,1,958),(203,20,59,0,6395,'author',0,955,76,958,1418229714,1,954),(203,20,59,0,6396,'author',0,927,77,954,1418229714,1,955),(203,20,59,0,6397,'author',0,0,78,955,1418229714,1,927),(193,19,60,0,7082,'title',0,2291,0,0,1418230804,1,2290),(193,19,60,0,7083,'title',0,2292,1,2290,1418230804,1,2291),(193,19,60,0,7084,'title',0,814,2,2291,1418230804,1,2292),(195,19,60,0,7085,'content',0,2096,3,2292,1418230804,1,814),(195,19,60,0,7086,'content',0,979,4,814,1418230804,1,2096),(195,19,60,0,7087,'content',0,981,5,2096,1418230804,1,979),(195,19,60,0,7088,'content',0,2206,6,979,1418230804,1,981),(195,19,60,0,7089,'content',0,2207,7,981,1418230804,1,2206),(195,19,60,0,7090,'content',0,2208,8,2206,1418230804,1,2207),(195,19,60,0,7091,'content',0,2096,9,2207,1418230804,1,2208),(195,19,60,0,7092,'content',0,2209,10,2208,1418230804,1,2096),(195,19,60,0,7093,'content',0,981,11,2096,1418230804,1,2209),(195,19,60,0,7094,'content',0,2210,12,2209,1418230804,1,981),(195,19,60,0,7095,'content',0,2211,13,981,1418230804,1,2210),(195,19,60,0,7096,'content',0,2087,14,2210,1418230804,1,2211),(195,19,60,0,7097,'content',0,2212,15,2211,1418230804,1,2087),(195,19,60,0,7098,'content',0,994,16,2087,1418230804,1,2212),(195,19,60,0,7099,'content',0,2213,17,2212,1418230804,1,994),(195,19,60,0,7100,'content',0,2209,18,994,1418230804,1,2213),(195,19,60,0,7101,'content',0,814,19,2213,1418230804,1,2209),(195,19,60,0,7102,'content',0,2214,20,2209,1418230804,1,814),(195,19,60,0,7103,'content',0,2215,21,814,1418230804,1,2214),(195,19,60,0,7104,'content',0,2216,22,2214,1418230804,1,2215),(195,19,60,0,7105,'content',0,2077,23,2215,1418230804,1,2216),(195,19,60,0,7106,'content',0,2217,24,2216,1418230804,1,2077),(195,19,60,0,7107,'content',0,814,25,2077,1418230804,1,2217),(195,19,60,0,7108,'content',0,2210,26,2217,1418230804,1,814),(195,19,60,0,7109,'content',0,2211,27,814,1418230804,1,2210),(195,19,60,0,7110,'content',0,2218,28,2210,1418230804,1,2211),(195,19,60,0,7111,'content',0,2219,29,2211,1418230804,1,2218),(195,19,60,0,7112,'content',0,2220,30,2218,1418230804,1,2219),(195,19,60,0,7113,'content',0,2209,31,2219,1418230804,1,2220),(195,19,60,0,7114,'content',0,2221,32,2220,1418230804,1,2209),(195,19,60,0,7115,'content',0,2222,33,2209,1418230804,1,2221),(195,19,60,0,7116,'content',0,2087,34,2221,1418230804,1,2222),(195,19,60,0,7117,'content',0,2113,35,2222,1418230804,1,2087),(195,19,60,0,7118,'content',0,985,36,2087,1418230804,1,2113),(195,19,60,0,7119,'content',0,2085,37,2113,1418230804,1,985),(195,19,60,0,7120,'content',0,2223,38,985,1418230804,1,2085),(195,19,60,0,7121,'content',0,2224,39,2085,1418230804,1,2223),(195,19,60,0,7122,'content',0,2225,40,2223,1418230804,1,2224),(195,19,60,0,7123,'content',0,2226,41,2224,1418230804,1,2225),(195,19,60,0,7124,'content',0,814,42,2225,1418230804,1,2226),(195,19,60,0,7125,'content',0,2227,43,2226,1418230804,1,814),(195,19,60,0,7126,'content',0,979,44,814,1418230804,1,2227),(195,19,60,0,7127,'content',0,2019,45,2227,1418230804,1,979),(195,19,60,0,7128,'content',0,985,46,979,1418230804,1,2019),(195,19,60,0,7129,'content',0,2228,47,2019,1418230804,1,985),(195,19,60,0,7130,'content',0,2229,48,985,1418230804,1,2228),(195,19,60,0,7131,'content',0,2230,49,2228,1418230804,1,2229),(195,19,60,0,7132,'content',0,2231,50,2229,1418230804,1,2230),(195,19,60,0,7133,'content',0,2232,51,2230,1418230804,1,2231),(195,19,60,0,7134,'content',0,2233,52,2231,1418230804,1,2232),(195,19,60,0,7135,'content',0,2234,53,2232,1418230804,1,2233),(195,19,60,0,7136,'content',0,2235,54,2233,1418230804,1,2234),(195,19,60,0,7137,'content',0,2225,55,2234,1418230804,1,2235),(195,19,60,0,7138,'content',0,814,56,2235,1418230804,1,2225),(195,19,60,0,7139,'content',0,2214,57,2225,1418230804,1,814),(195,19,60,0,7140,'content',0,2236,58,814,1418230804,1,2214),(195,19,60,0,7141,'content',0,979,59,2214,1418230804,1,2236),(195,19,60,0,7142,'content',0,2085,60,2236,1418230804,1,979),(195,19,60,0,7143,'content',0,2237,61,979,1418230804,1,2085),(195,19,60,0,7144,'content',0,2209,62,2085,1418230804,1,2237),(195,19,60,0,7145,'content',0,814,63,2237,1418230804,1,2209),(195,19,60,0,7146,'content',0,2238,64,2209,1418230804,1,814),(195,19,60,0,7147,'content',0,2239,65,814,1418230804,1,2238),(195,19,60,0,7148,'content',0,2240,66,2238,1418230804,1,2239),(195,19,60,0,7149,'content',0,2217,67,2239,1418230804,1,2240),(195,19,60,0,7150,'content',0,985,68,2240,1418230804,1,2217),(195,19,60,0,7151,'content',0,2241,69,2217,1418230804,1,985),(195,19,60,0,7152,'content',0,2242,70,985,1418230804,1,2241),(195,19,60,0,7153,'content',0,2218,71,2241,1418230804,1,2242),(195,19,60,0,7154,'content',0,2219,72,2242,1418230804,1,2218),(195,19,60,0,7155,'content',0,2243,73,2218,1418230804,1,2219),(195,19,60,0,7156,'content',0,2244,74,2219,1418230804,1,2243),(195,19,60,0,7157,'content',0,2245,75,2243,1418230804,1,2244),(195,19,60,0,7158,'content',0,1718,76,2244,1418230804,1,2245),(195,19,60,0,7159,'content',0,981,77,2245,1418230804,1,1718),(195,19,60,0,7160,'content',0,2246,78,1718,1418230804,1,981),(195,19,60,0,7161,'content',0,2247,79,981,1418230804,1,2246),(195,19,60,0,7162,'content',0,1907,80,2246,1418230804,1,2247),(195,19,60,0,7163,'content',0,2248,81,2247,1418230804,1,1907),(195,19,60,0,7164,'content',0,2240,82,1907,1418230804,1,2248),(195,19,60,0,7165,'content',0,2249,83,2248,1418230804,1,2240),(195,19,60,0,7166,'content',0,2250,84,2240,1418230804,1,2249),(195,19,60,0,7167,'content',0,2251,85,2249,1418230804,1,2250),(195,19,60,0,7168,'content',0,2087,86,2250,1418230804,1,2251),(195,19,60,0,7169,'content',0,814,87,2251,1418230804,1,2087),(195,19,60,0,7170,'content',0,2252,88,2087,1418230804,1,814),(195,19,60,0,7171,'content',0,2073,89,814,1418230804,1,2252),(195,19,60,0,7172,'content',0,2253,90,2252,1418230804,1,2073),(195,19,60,0,7173,'content',0,2254,91,2073,1418230804,1,2253),(195,19,60,0,7174,'content',0,814,92,2253,1418230804,1,2254),(195,19,60,0,7175,'content',0,2247,93,2254,1418230804,1,814),(195,19,60,0,7176,'content',0,1907,94,814,1418230804,1,2247),(195,19,60,0,7177,'content',0,2248,95,2247,1418230804,1,1907),(195,19,60,0,7178,'content',0,2240,96,1907,1418230804,1,2248),(195,19,60,0,7179,'content',0,2249,97,2248,1418230804,1,2240),(195,19,60,0,7180,'content',0,2097,98,2240,1418230804,1,2249),(195,19,60,0,7181,'content',0,2228,99,2249,1418230804,1,2097),(195,19,60,0,7182,'content',0,2098,100,2097,1418230804,1,2228),(195,19,60,0,7183,'content',0,2255,101,2228,1418230804,1,2098),(195,19,60,0,7184,'content',0,2105,102,2098,1418230804,1,2255),(195,19,60,0,7185,'content',0,2256,103,2255,1418230804,1,2105),(195,19,60,0,7186,'content',0,2071,104,2105,1418230804,1,2256),(195,19,60,0,7187,'content',0,991,105,2256,1418230804,1,2071),(195,19,60,0,7188,'content',0,2228,106,2071,1418230804,1,991),(195,19,60,0,7189,'content',0,816,107,991,1418230804,1,2228),(195,19,60,0,7190,'content',0,2257,108,2228,1418230804,1,816),(195,19,60,0,7191,'content',0,2078,109,816,1418230804,1,2257),(195,19,60,0,7192,'content',0,2085,110,2257,1418230804,1,2078),(195,19,60,0,7193,'content',0,2258,111,2078,1418230804,1,2085),(195,19,60,0,7194,'content',0,2259,112,2085,1418230804,1,2258),(195,19,60,0,7195,'content',0,2260,113,2258,1418230804,1,2259),(195,19,60,0,7196,'content',0,2261,114,2259,1418230804,1,2260),(195,19,60,0,7197,'content',0,2262,115,2260,1418230804,1,2261),(195,19,60,0,7198,'content',0,2263,116,2261,1418230804,1,2262),(195,19,60,0,7199,'content',0,2239,117,2262,1418230804,1,2263),(195,19,60,0,7200,'content',0,2264,118,2263,1418230804,1,2239),(195,19,60,0,7201,'content',0,2247,119,2239,1418230804,1,2264),(195,19,60,0,7202,'content',0,2265,120,2264,1418230804,1,2247),(195,19,60,0,7203,'content',0,2248,121,2247,1418230804,1,2265),(195,19,60,0,7204,'content',0,2209,122,2265,1418230804,1,2248),(195,19,60,0,7205,'content',0,2266,123,2248,1418230804,1,2209),(195,19,60,0,7206,'content',0,2249,124,2209,1418230804,1,2266),(195,19,60,0,7207,'content',0,2080,125,2266,1418230804,1,2249),(195,19,60,0,7208,'content',0,2267,126,2249,1418230804,1,2080),(195,19,60,0,7209,'content',0,2268,127,2080,1418230804,1,2267),(195,19,60,0,7210,'content',0,814,128,2267,1418230804,1,2268),(195,19,60,0,7211,'content',0,2269,129,2268,1418230804,1,814),(195,19,60,0,7212,'content',0,2261,130,814,1418230804,1,2269),(195,19,60,0,7213,'content',0,979,131,2269,1418230804,1,2261),(195,19,60,0,7214,'content',0,2270,132,2261,1418230804,1,979),(195,19,60,0,7215,'content',0,2271,133,979,1418230804,1,2270),(195,19,60,0,7216,'content',0,2272,134,2270,1418230804,1,2271),(195,19,60,0,7217,'content',0,2273,135,2271,1418230804,1,2272),(195,19,60,0,7218,'content',0,2237,136,2272,1418230804,1,2273),(195,19,60,0,7219,'content',0,2216,137,2273,1418230804,1,2237),(195,19,60,0,7220,'content',0,2274,138,2237,1418230804,1,2216),(195,19,60,0,7221,'content',0,2275,139,2216,1418230804,1,2274),(195,19,60,0,7222,'content',0,2276,140,2274,1418230804,1,2275),(195,19,60,0,7223,'content',0,981,141,2275,1418230804,1,2276),(195,19,60,0,7224,'content',0,2277,142,2276,1418230804,1,981),(195,19,60,0,7225,'content',0,2222,143,981,1418230804,1,2277),(195,19,60,0,7226,'content',0,2278,144,2277,1418230804,1,2222),(195,19,60,0,7227,'content',0,2279,145,2222,1418230804,1,2278),(195,19,60,0,7228,'content',0,2280,146,2278,1418230804,1,2279),(195,19,60,0,7229,'content',0,2236,147,2279,1418230804,1,2280),(195,19,60,0,7230,'content',0,2281,148,2280,1418230804,1,2236),(195,19,60,0,7231,'content',0,2084,149,2236,1418230804,1,2281),(195,19,60,0,7232,'content',0,2282,150,2281,1418230804,1,2084),(195,19,60,0,7233,'content',0,2283,151,2084,1418230804,1,2282),(195,19,60,0,7234,'content',0,2284,152,2282,1418230804,1,2283),(195,19,60,0,7235,'content',0,985,153,2283,1418230804,1,2284),(195,19,60,0,7236,'content',0,2285,154,2284,1418230804,1,985),(195,19,60,0,7237,'content',0,2259,155,985,1418230804,1,2285),(195,19,60,0,7238,'content',0,2085,156,2285,1418230804,1,2259),(195,19,60,0,7239,'content',0,2286,157,2259,1418230804,1,2085),(195,19,60,0,7240,'content',0,2287,158,2085,1418230804,1,2286),(195,19,60,0,7241,'content',0,958,159,2286,1418230804,1,2287),(196,19,60,0,7242,'author',0,954,160,2287,1418230804,1,958),(196,19,60,0,7243,'author',0,955,161,958,1418230804,1,954),(196,19,60,0,7244,'author',0,927,162,954,1418230804,1,955),(196,19,60,0,7245,'author',0,2288,163,955,1418230804,1,927),(206,19,60,0,7246,'tags',0,2293,164,927,1418230804,1,2288),(207,19,60,0,7247,'timestamp',1418151600,0,165,2288,1418230804,1,2293),(193,19,61,0,7248,'title',0,2295,0,0,1418237382,1,2294),(193,19,61,0,7249,'title',0,2296,1,2294,1418237382,1,2295),(193,19,61,0,7250,'title',0,814,2,2295,1418237382,1,2296),(195,19,61,0,7251,'content',0,2096,3,2296,1418237382,1,814),(195,19,61,0,7252,'content',0,979,4,814,1418237382,1,2096),(195,19,61,0,7253,'content',0,981,5,2096,1418237382,1,979),(195,19,61,0,7254,'content',0,2206,6,979,1418237382,1,981),(195,19,61,0,7255,'content',0,2207,7,981,1418237382,1,2206),(195,19,61,0,7256,'content',0,2208,8,2206,1418237382,1,2207),(195,19,61,0,7257,'content',0,2096,9,2207,1418237382,1,2208),(195,19,61,0,7258,'content',0,2209,10,2208,1418237382,1,2096),(195,19,61,0,7259,'content',0,981,11,2096,1418237382,1,2209),(195,19,61,0,7260,'content',0,2210,12,2209,1418237382,1,981),(195,19,61,0,7261,'content',0,2211,13,981,1418237382,1,2210),(195,19,61,0,7262,'content',0,2087,14,2210,1418237382,1,2211),(195,19,61,0,7263,'content',0,2212,15,2211,1418237382,1,2087),(195,19,61,0,7264,'content',0,994,16,2087,1418237382,1,2212),(195,19,61,0,7265,'content',0,2213,17,2212,1418237382,1,994),(195,19,61,0,7266,'content',0,2209,18,994,1418237382,1,2213),(195,19,61,0,7267,'content',0,814,19,2213,1418237382,1,2209),(195,19,61,0,7268,'content',0,2214,20,2209,1418237382,1,814),(195,19,61,0,7269,'content',0,2215,21,814,1418237382,1,2214),(195,19,61,0,7270,'content',0,2216,22,2214,1418237382,1,2215),(195,19,61,0,7271,'content',0,2077,23,2215,1418237382,1,2216),(195,19,61,0,7272,'content',0,2217,24,2216,1418237382,1,2077),(195,19,61,0,7273,'content',0,814,25,2077,1418237382,1,2217),(195,19,61,0,7274,'content',0,2210,26,2217,1418237382,1,814),(195,19,61,0,7275,'content',0,2211,27,814,1418237382,1,2210),(195,19,61,0,7276,'content',0,2218,28,2210,1418237382,1,2211),(195,19,61,0,7277,'content',0,2219,29,2211,1418237382,1,2218),(195,19,61,0,7278,'content',0,2220,30,2218,1418237382,1,2219),(195,19,61,0,7279,'content',0,2209,31,2219,1418237382,1,2220),(195,19,61,0,7280,'content',0,2221,32,2220,1418237382,1,2209),(195,19,61,0,7281,'content',0,2222,33,2209,1418237382,1,2221),(195,19,61,0,7282,'content',0,2087,34,2221,1418237382,1,2222),(195,19,61,0,7283,'content',0,2113,35,2222,1418237382,1,2087),(195,19,61,0,7284,'content',0,985,36,2087,1418237382,1,2113),(195,19,61,0,7285,'content',0,2085,37,2113,1418237382,1,985),(195,19,61,0,7286,'content',0,2223,38,985,1418237382,1,2085),(195,19,61,0,7287,'content',0,2224,39,2085,1418237382,1,2223),(195,19,61,0,7288,'content',0,2225,40,2223,1418237382,1,2224),(195,19,61,0,7289,'content',0,2226,41,2224,1418237382,1,2225),(195,19,61,0,7290,'content',0,814,42,2225,1418237382,1,2226),(195,19,61,0,7291,'content',0,2227,43,2226,1418237382,1,814),(195,19,61,0,7292,'content',0,979,44,814,1418237382,1,2227),(195,19,61,0,7293,'content',0,2019,45,2227,1418237382,1,979),(195,19,61,0,7294,'content',0,985,46,979,1418237382,1,2019),(195,19,61,0,7295,'content',0,2228,47,2019,1418237382,1,985),(195,19,61,0,7296,'content',0,2229,48,985,1418237382,1,2228),(195,19,61,0,7297,'content',0,2230,49,2228,1418237382,1,2229),(195,19,61,0,7298,'content',0,2231,50,2229,1418237382,1,2230),(195,19,61,0,7299,'content',0,2232,51,2230,1418237382,1,2231),(195,19,61,0,7300,'content',0,2233,52,2231,1418237382,1,2232),(195,19,61,0,7301,'content',0,2234,53,2232,1418237382,1,2233),(195,19,61,0,7302,'content',0,2235,54,2233,1418237382,1,2234),(195,19,61,0,7303,'content',0,2225,55,2234,1418237382,1,2235),(195,19,61,0,7304,'content',0,814,56,2235,1418237382,1,2225),(195,19,61,0,7305,'content',0,2214,57,2225,1418237382,1,814),(195,19,61,0,7306,'content',0,2236,58,814,1418237382,1,2214),(195,19,61,0,7307,'content',0,979,59,2214,1418237382,1,2236),(195,19,61,0,7308,'content',0,2085,60,2236,1418237382,1,979),(195,19,61,0,7309,'content',0,2237,61,979,1418237382,1,2085),(195,19,61,0,7310,'content',0,2209,62,2085,1418237382,1,2237),(195,19,61,0,7311,'content',0,814,63,2237,1418237382,1,2209),(195,19,61,0,7312,'content',0,2238,64,2209,1418237382,1,814),(195,19,61,0,7313,'content',0,2239,65,814,1418237382,1,2238),(195,19,61,0,7314,'content',0,2240,66,2238,1418237382,1,2239),(195,19,61,0,7315,'content',0,2217,67,2239,1418237382,1,2240),(195,19,61,0,7316,'content',0,985,68,2240,1418237382,1,2217),(195,19,61,0,7317,'content',0,2241,69,2217,1418237382,1,985),(195,19,61,0,7318,'content',0,2242,70,985,1418237382,1,2241),(195,19,61,0,7319,'content',0,2218,71,2241,1418237382,1,2242),(195,19,61,0,7320,'content',0,2219,72,2242,1418237382,1,2218),(195,19,61,0,7321,'content',0,2243,73,2218,1418237382,1,2219),(195,19,61,0,7322,'content',0,2244,74,2219,1418237382,1,2243),(195,19,61,0,7323,'content',0,2245,75,2243,1418237382,1,2244),(195,19,61,0,7324,'content',0,1718,76,2244,1418237382,1,2245),(195,19,61,0,7325,'content',0,981,77,2245,1418237382,1,1718),(195,19,61,0,7326,'content',0,2246,78,1718,1418237382,1,981),(195,19,61,0,7327,'content',0,2247,79,981,1418237382,1,2246),(195,19,61,0,7328,'content',0,1907,80,2246,1418237382,1,2247),(195,19,61,0,7329,'content',0,2248,81,2247,1418237382,1,1907),(195,19,61,0,7330,'content',0,2240,82,1907,1418237382,1,2248),(195,19,61,0,7331,'content',0,2249,83,2248,1418237382,1,2240),(195,19,61,0,7332,'content',0,2250,84,2240,1418237382,1,2249),(195,19,61,0,7333,'content',0,2251,85,2249,1418237382,1,2250),(195,19,61,0,7334,'content',0,2087,86,2250,1418237382,1,2251),(195,19,61,0,7335,'content',0,814,87,2251,1418237382,1,2087),(195,19,61,0,7336,'content',0,2252,88,2087,1418237382,1,814),(195,19,61,0,7337,'content',0,2073,89,814,1418237382,1,2252),(195,19,61,0,7338,'content',0,2253,90,2252,1418237382,1,2073),(195,19,61,0,7339,'content',0,2254,91,2073,1418237382,1,2253),(195,19,61,0,7340,'content',0,814,92,2253,1418237382,1,2254),(195,19,61,0,7341,'content',0,2247,93,2254,1418237382,1,814),(195,19,61,0,7342,'content',0,1907,94,814,1418237382,1,2247),(195,19,61,0,7343,'content',0,2248,95,2247,1418237382,1,1907),(195,19,61,0,7344,'content',0,2240,96,1907,1418237382,1,2248),(195,19,61,0,7345,'content',0,2249,97,2248,1418237382,1,2240),(195,19,61,0,7346,'content',0,2097,98,2240,1418237382,1,2249),(195,19,61,0,7347,'content',0,2228,99,2249,1418237382,1,2097),(195,19,61,0,7348,'content',0,2098,100,2097,1418237382,1,2228),(195,19,61,0,7349,'content',0,2255,101,2228,1418237382,1,2098),(195,19,61,0,7350,'content',0,2105,102,2098,1418237382,1,2255),(195,19,61,0,7351,'content',0,2256,103,2255,1418237382,1,2105),(195,19,61,0,7352,'content',0,2071,104,2105,1418237382,1,2256),(195,19,61,0,7353,'content',0,991,105,2256,1418237382,1,2071),(195,19,61,0,7354,'content',0,2228,106,2071,1418237382,1,991),(195,19,61,0,7355,'content',0,816,107,991,1418237382,1,2228),(195,19,61,0,7356,'content',0,2257,108,2228,1418237382,1,816),(195,19,61,0,7357,'content',0,2078,109,816,1418237382,1,2257),(195,19,61,0,7358,'content',0,2085,110,2257,1418237382,1,2078),(195,19,61,0,7359,'content',0,2258,111,2078,1418237382,1,2085),(195,19,61,0,7360,'content',0,2259,112,2085,1418237382,1,2258),(195,19,61,0,7361,'content',0,2260,113,2258,1418237382,1,2259),(195,19,61,0,7362,'content',0,2261,114,2259,1418237382,1,2260),(195,19,61,0,7363,'content',0,2262,115,2260,1418237382,1,2261),(195,19,61,0,7364,'content',0,2263,116,2261,1418237382,1,2262),(195,19,61,0,7365,'content',0,2239,117,2262,1418237382,1,2263),(195,19,61,0,7366,'content',0,2264,118,2263,1418237382,1,2239),(195,19,61,0,7367,'content',0,2247,119,2239,1418237382,1,2264),(195,19,61,0,7368,'content',0,2265,120,2264,1418237382,1,2247),(195,19,61,0,7369,'content',0,2248,121,2247,1418237382,1,2265),(195,19,61,0,7370,'content',0,2209,122,2265,1418237382,1,2248),(195,19,61,0,7371,'content',0,2266,123,2248,1418237382,1,2209),(195,19,61,0,7372,'content',0,2249,124,2209,1418237382,1,2266),(195,19,61,0,7373,'content',0,2080,125,2266,1418237382,1,2249),(195,19,61,0,7374,'content',0,2267,126,2249,1418237382,1,2080),(195,19,61,0,7375,'content',0,2268,127,2080,1418237382,1,2267),(195,19,61,0,7376,'content',0,814,128,2267,1418237382,1,2268),(195,19,61,0,7377,'content',0,2269,129,2268,1418237382,1,814),(195,19,61,0,7378,'content',0,2261,130,814,1418237382,1,2269),(195,19,61,0,7379,'content',0,979,131,2269,1418237382,1,2261),(195,19,61,0,7380,'content',0,2270,132,2261,1418237382,1,979),(195,19,61,0,7381,'content',0,2271,133,979,1418237382,1,2270),(195,19,61,0,7382,'content',0,2272,134,2270,1418237382,1,2271),(195,19,61,0,7383,'content',0,2273,135,2271,1418237382,1,2272),(195,19,61,0,7384,'content',0,2237,136,2272,1418237382,1,2273),(195,19,61,0,7385,'content',0,2216,137,2273,1418237382,1,2237),(195,19,61,0,7386,'content',0,2274,138,2237,1418237382,1,2216),(195,19,61,0,7387,'content',0,2275,139,2216,1418237382,1,2274),(195,19,61,0,7388,'content',0,2276,140,2274,1418237382,1,2275),(195,19,61,0,7389,'content',0,981,141,2275,1418237382,1,2276),(195,19,61,0,7390,'content',0,2277,142,2276,1418237382,1,981),(195,19,61,0,7391,'content',0,2222,143,981,1418237382,1,2277),(195,19,61,0,7392,'content',0,2278,144,2277,1418237382,1,2222),(195,19,61,0,7393,'content',0,2279,145,2222,1418237382,1,2278),(195,19,61,0,7394,'content',0,2280,146,2278,1418237382,1,2279),(195,19,61,0,7395,'content',0,2236,147,2279,1418237382,1,2280),(195,19,61,0,7396,'content',0,2281,148,2280,1418237382,1,2236),(195,19,61,0,7397,'content',0,2084,149,2236,1418237382,1,2281),(195,19,61,0,7398,'content',0,2282,150,2281,1418237382,1,2084),(195,19,61,0,7399,'content',0,2283,151,2084,1418237382,1,2282),(195,19,61,0,7400,'content',0,2284,152,2282,1418237382,1,2283),(195,19,61,0,7401,'content',0,985,153,2283,1418237382,1,2284),(195,19,61,0,7402,'content',0,2285,154,2284,1418237382,1,985),(195,19,61,0,7403,'content',0,2259,155,985,1418237382,1,2285),(195,19,61,0,7404,'content',0,2085,156,2285,1418237382,1,2259),(195,19,61,0,7405,'content',0,2286,157,2259,1418237382,1,2085),(195,19,61,0,7406,'content',0,2287,158,2085,1418237382,1,2286),(195,19,61,0,7407,'content',0,958,159,2286,1418237382,1,2287),(196,19,61,0,7408,'author',0,954,160,2287,1418237382,1,958),(196,19,61,0,7409,'author',0,955,161,958,1418237382,1,954),(196,19,61,0,7410,'author',0,927,162,954,1418237382,1,955),(196,19,61,0,7411,'author',0,2288,163,955,1418237382,1,927),(206,19,61,0,7412,'tags',0,2289,164,927,1418237382,1,2288),(207,19,61,0,7413,'timestamp',1418238000,0,165,2288,1418237382,1,2289),(193,19,63,0,7746,'title',0,2298,0,0,1418237495,1,2297),(193,19,63,0,7747,'title',0,814,1,2297,1418237495,1,2298),(195,19,63,0,7748,'content',0,2096,2,2298,1418237495,1,814),(195,19,63,0,7749,'content',0,979,3,814,1418237495,1,2096),(195,19,63,0,7750,'content',0,981,4,2096,1418237495,1,979),(195,19,63,0,7751,'content',0,2206,5,979,1418237495,1,981),(195,19,63,0,7752,'content',0,2207,6,981,1418237495,1,2206),(195,19,63,0,7753,'content',0,2208,7,2206,1418237495,1,2207),(195,19,63,0,7754,'content',0,2096,8,2207,1418237495,1,2208),(195,19,63,0,7755,'content',0,2209,9,2208,1418237495,1,2096),(195,19,63,0,7756,'content',0,981,10,2096,1418237495,1,2209),(195,19,63,0,7757,'content',0,2210,11,2209,1418237495,1,981),(195,19,63,0,7758,'content',0,2211,12,981,1418237495,1,2210),(195,19,63,0,7759,'content',0,2087,13,2210,1418237495,1,2211),(195,19,63,0,7760,'content',0,2212,14,2211,1418237495,1,2087),(195,19,63,0,7761,'content',0,994,15,2087,1418237495,1,2212),(195,19,63,0,7762,'content',0,2213,16,2212,1418237495,1,994),(195,19,63,0,7763,'content',0,2209,17,994,1418237495,1,2213),(195,19,63,0,7764,'content',0,814,18,2213,1418237495,1,2209),(195,19,63,0,7765,'content',0,2214,19,2209,1418237495,1,814),(195,19,63,0,7766,'content',0,2215,20,814,1418237495,1,2214),(195,19,63,0,7767,'content',0,2216,21,2214,1418237495,1,2215),(195,19,63,0,7768,'content',0,2077,22,2215,1418237495,1,2216),(195,19,63,0,7769,'content',0,2217,23,2216,1418237495,1,2077),(195,19,63,0,7770,'content',0,814,24,2077,1418237495,1,2217),(195,19,63,0,7771,'content',0,2210,25,2217,1418237495,1,814),(195,19,63,0,7772,'content',0,2211,26,814,1418237495,1,2210),(195,19,63,0,7773,'content',0,2218,27,2210,1418237495,1,2211),(195,19,63,0,7774,'content',0,2219,28,2211,1418237495,1,2218),(195,19,63,0,7775,'content',0,2220,29,2218,1418237495,1,2219),(195,19,63,0,7776,'content',0,2209,30,2219,1418237495,1,2220),(195,19,63,0,7777,'content',0,2221,31,2220,1418237495,1,2209),(195,19,63,0,7778,'content',0,2222,32,2209,1418237495,1,2221),(195,19,63,0,7779,'content',0,2087,33,2221,1418237495,1,2222),(195,19,63,0,7780,'content',0,2113,34,2222,1418237495,1,2087),(195,19,63,0,7781,'content',0,985,35,2087,1418237495,1,2113),(195,19,63,0,7782,'content',0,2085,36,2113,1418237495,1,985),(195,19,63,0,7783,'content',0,2223,37,985,1418237495,1,2085),(195,19,63,0,7784,'content',0,2224,38,2085,1418237495,1,2223),(195,19,63,0,7785,'content',0,2225,39,2223,1418237495,1,2224),(195,19,63,0,7786,'content',0,2226,40,2224,1418237495,1,2225),(195,19,63,0,7787,'content',0,814,41,2225,1418237495,1,2226),(195,19,63,0,7788,'content',0,2227,42,2226,1418237495,1,814),(195,19,63,0,7789,'content',0,979,43,814,1418237495,1,2227),(195,19,63,0,7790,'content',0,2019,44,2227,1418237495,1,979),(195,19,63,0,7791,'content',0,985,45,979,1418237495,1,2019),(195,19,63,0,7792,'content',0,2228,46,2019,1418237495,1,985),(195,19,63,0,7793,'content',0,2229,47,985,1418237495,1,2228),(195,19,63,0,7794,'content',0,2230,48,2228,1418237495,1,2229),(195,19,63,0,7795,'content',0,2231,49,2229,1418237495,1,2230),(195,19,63,0,7796,'content',0,2232,50,2230,1418237495,1,2231),(195,19,63,0,7797,'content',0,2233,51,2231,1418237495,1,2232),(195,19,63,0,7798,'content',0,2234,52,2232,1418237495,1,2233),(195,19,63,0,7799,'content',0,2235,53,2233,1418237495,1,2234),(195,19,63,0,7800,'content',0,2225,54,2234,1418237495,1,2235),(195,19,63,0,7801,'content',0,814,55,2235,1418237495,1,2225),(195,19,63,0,7802,'content',0,2214,56,2225,1418237495,1,814),(195,19,63,0,7803,'content',0,814,57,814,1418237495,1,2214),(195,19,63,0,7804,'content',0,2269,58,2214,1418237495,1,814),(195,19,63,0,7805,'content',0,2261,59,814,1418237495,1,2269),(195,19,63,0,7806,'content',0,979,60,2269,1418237495,1,2261),(195,19,63,0,7807,'content',0,2270,61,2261,1418237495,1,979),(195,19,63,0,7808,'content',0,2271,62,979,1418237495,1,2270),(195,19,63,0,7809,'content',0,2272,63,2270,1418237495,1,2271),(195,19,63,0,7810,'content',0,2273,64,2271,1418237495,1,2272),(195,19,63,0,7811,'content',0,2237,65,2272,1418237495,1,2273),(195,19,63,0,7812,'content',0,2216,66,2273,1418237495,1,2237),(195,19,63,0,7813,'content',0,2274,67,2237,1418237495,1,2216),(195,19,63,0,7814,'content',0,2275,68,2216,1418237495,1,2274),(195,19,63,0,7815,'content',0,2276,69,2274,1418237495,1,2275),(195,19,63,0,7816,'content',0,981,70,2275,1418237495,1,2276),(195,19,63,0,7817,'content',0,2277,71,2276,1418237495,1,981),(195,19,63,0,7818,'content',0,2222,72,981,1418237495,1,2277),(195,19,63,0,7819,'content',0,2278,73,2277,1418237495,1,2222),(195,19,63,0,7820,'content',0,2279,74,2222,1418237495,1,2278),(195,19,63,0,7821,'content',0,2280,75,2278,1418237495,1,2279),(195,19,63,0,7822,'content',0,2236,76,2279,1418237495,1,2280),(195,19,63,0,7823,'content',0,2281,77,2280,1418237495,1,2236),(195,19,63,0,7824,'content',0,2084,78,2236,1418237495,1,2281),(195,19,63,0,7825,'content',0,2282,79,2281,1418237495,1,2084),(195,19,63,0,7826,'content',0,2283,80,2084,1418237495,1,2282),(195,19,63,0,7827,'content',0,2284,81,2282,1418237495,1,2283),(195,19,63,0,7828,'content',0,985,82,2283,1418237495,1,2284),(195,19,63,0,7829,'content',0,2285,83,2284,1418237495,1,985),(195,19,63,0,7830,'content',0,2259,84,985,1418237495,1,2285),(195,19,63,0,7831,'content',0,2085,85,2285,1418237495,1,2259),(195,19,63,0,7832,'content',0,2286,86,2259,1418237495,1,2085),(195,19,63,0,7833,'content',0,2287,87,2085,1418237495,1,2286),(195,19,63,0,7834,'content',0,958,88,2286,1418237495,1,2287),(196,19,63,0,7835,'author',0,954,89,2287,1418237495,1,958),(196,19,63,0,7836,'author',0,955,90,958,1418237495,1,954),(196,19,63,0,7837,'author',0,927,91,954,1418237495,1,955),(196,19,63,0,7838,'author',0,2288,92,955,1418237495,1,927),(206,19,63,0,7839,'tags',0,2293,93,927,1418237495,1,2288),(207,19,63,0,7840,'timestamp',1418151600,0,94,2288,1418237495,1,2293),(193,19,64,0,7841,'title',0,2300,0,0,1418237513,1,2299),(193,19,64,0,7842,'title',0,2301,1,2299,1418237513,1,2300),(193,19,64,0,7843,'title',0,2302,2,2300,1418237513,1,2301),(193,19,64,0,7844,'title',0,2303,3,2301,1418237513,1,2302),(193,19,64,0,7845,'title',0,2304,4,2302,1418237513,1,2303),(193,19,64,0,7846,'title',0,814,5,2303,1418237513,1,2304),(195,19,64,0,7847,'content',0,2096,6,2304,1418237513,1,814),(195,19,64,0,7848,'content',0,979,7,814,1418237513,1,2096),(195,19,64,0,7849,'content',0,981,8,2096,1418237513,1,979),(195,19,64,0,7850,'content',0,2206,9,979,1418237513,1,981),(195,19,64,0,7851,'content',0,2207,10,981,1418237513,1,2206),(195,19,64,0,7852,'content',0,2208,11,2206,1418237513,1,2207),(195,19,64,0,7853,'content',0,2096,12,2207,1418237513,1,2208),(195,19,64,0,7854,'content',0,2209,13,2208,1418237513,1,2096),(195,19,64,0,7855,'content',0,981,14,2096,1418237513,1,2209),(195,19,64,0,7856,'content',0,2210,15,2209,1418237513,1,981),(195,19,64,0,7857,'content',0,2211,16,981,1418237513,1,2210),(195,19,64,0,7858,'content',0,2087,17,2210,1418237513,1,2211),(195,19,64,0,7859,'content',0,2212,18,2211,1418237513,1,2087),(195,19,64,0,7860,'content',0,994,19,2087,1418237513,1,2212),(195,19,64,0,7861,'content',0,2213,20,2212,1418237513,1,994),(195,19,64,0,7862,'content',0,2209,21,994,1418237513,1,2213),(195,19,64,0,7863,'content',0,814,22,2213,1418237513,1,2209),(195,19,64,0,7864,'content',0,2214,23,2209,1418237513,1,814),(195,19,64,0,7865,'content',0,2215,24,814,1418237513,1,2214),(195,19,64,0,7866,'content',0,2216,25,2214,1418237513,1,2215),(195,19,64,0,7867,'content',0,2077,26,2215,1418237513,1,2216),(195,19,64,0,7868,'content',0,2217,27,2216,1418237513,1,2077),(195,19,64,0,7869,'content',0,814,28,2077,1418237513,1,2217),(195,19,64,0,7870,'content',0,2210,29,2217,1418237513,1,814),(195,19,64,0,7871,'content',0,2211,30,814,1418237513,1,2210),(195,19,64,0,7872,'content',0,2218,31,2210,1418237513,1,2211),(195,19,64,0,7873,'content',0,2219,32,2211,1418237513,1,2218),(195,19,64,0,7874,'content',0,2220,33,2218,1418237513,1,2219),(195,19,64,0,7875,'content',0,2209,34,2219,1418237513,1,2220),(195,19,64,0,7876,'content',0,2221,35,2220,1418237513,1,2209),(195,19,64,0,7877,'content',0,2222,36,2209,1418237513,1,2221),(195,19,64,0,7878,'content',0,2087,37,2221,1418237513,1,2222),(195,19,64,0,7879,'content',0,2113,38,2222,1418237513,1,2087),(195,19,64,0,7880,'content',0,985,39,2087,1418237513,1,2113),(195,19,64,0,7881,'content',0,2085,40,2113,1418237513,1,985),(195,19,64,0,7882,'content',0,2223,41,985,1418237513,1,2085),(195,19,64,0,7883,'content',0,2224,42,2085,1418237513,1,2223),(195,19,64,0,7884,'content',0,2225,43,2223,1418237513,1,2224),(195,19,64,0,7885,'content',0,2226,44,2224,1418237513,1,2225),(195,19,64,0,7886,'content',0,814,45,2225,1418237513,1,2226),(195,19,64,0,7887,'content',0,2227,46,2226,1418237513,1,814),(195,19,64,0,7888,'content',0,979,47,814,1418237513,1,2227),(195,19,64,0,7889,'content',0,2019,48,2227,1418237513,1,979),(195,19,64,0,7890,'content',0,985,49,979,1418237513,1,2019),(195,19,64,0,7891,'content',0,2228,50,2019,1418237513,1,985),(195,19,64,0,7892,'content',0,2229,51,985,1418237513,1,2228),(195,19,64,0,7893,'content',0,2230,52,2228,1418237513,1,2229),(195,19,64,0,7894,'content',0,2231,53,2229,1418237513,1,2230),(195,19,64,0,7895,'content',0,2232,54,2230,1418237513,1,2231),(195,19,64,0,7896,'content',0,2233,55,2231,1418237513,1,2232),(195,19,64,0,7897,'content',0,2234,56,2232,1418237513,1,2233),(195,19,64,0,7898,'content',0,2235,57,2233,1418237513,1,2234),(195,19,64,0,7899,'content',0,2225,58,2234,1418237513,1,2235),(195,19,64,0,7900,'content',0,814,59,2235,1418237513,1,2225),(195,19,64,0,7901,'content',0,2214,60,2225,1418237513,1,814),(195,19,64,0,7902,'content',0,814,61,814,1418237513,1,2214),(195,19,64,0,7903,'content',0,2269,62,2214,1418237513,1,814),(195,19,64,0,7904,'content',0,2261,63,814,1418237513,1,2269),(195,19,64,0,7905,'content',0,979,64,2269,1418237513,1,2261),(195,19,64,0,7906,'content',0,2270,65,2261,1418237513,1,979),(195,19,64,0,7907,'content',0,2271,66,979,1418237513,1,2270),(195,19,64,0,7908,'content',0,2272,67,2270,1418237513,1,2271),(195,19,64,0,7909,'content',0,2273,68,2271,1418237513,1,2272),(195,19,64,0,7910,'content',0,2237,69,2272,1418237513,1,2273),(195,19,64,0,7911,'content',0,2216,70,2273,1418237513,1,2237),(195,19,64,0,7912,'content',0,2274,71,2237,1418237513,1,2216),(195,19,64,0,7913,'content',0,2275,72,2216,1418237513,1,2274),(195,19,64,0,7914,'content',0,2276,73,2274,1418237513,1,2275),(195,19,64,0,7915,'content',0,981,74,2275,1418237513,1,2276),(195,19,64,0,7916,'content',0,2277,75,2276,1418237513,1,981),(195,19,64,0,7917,'content',0,2222,76,981,1418237513,1,2277),(195,19,64,0,7918,'content',0,2278,77,2277,1418237513,1,2222),(195,19,64,0,7919,'content',0,2279,78,2222,1418237513,1,2278),(195,19,64,0,7920,'content',0,2280,79,2278,1418237513,1,2279),(195,19,64,0,7921,'content',0,2236,80,2279,1418237513,1,2280),(195,19,64,0,7922,'content',0,2281,81,2280,1418237513,1,2236),(195,19,64,0,7923,'content',0,2084,82,2236,1418237513,1,2281),(195,19,64,0,7924,'content',0,2282,83,2281,1418237513,1,2084),(195,19,64,0,7925,'content',0,2283,84,2084,1418237513,1,2282),(195,19,64,0,7926,'content',0,2284,85,2282,1418237513,1,2283),(195,19,64,0,7927,'content',0,985,86,2283,1418237513,1,2284),(195,19,64,0,7928,'content',0,2285,87,2284,1418237513,1,985),(195,19,64,0,7929,'content',0,2259,88,985,1418237513,1,2285),(195,19,64,0,7930,'content',0,2085,89,2285,1418237513,1,2259),(195,19,64,0,7931,'content',0,2286,90,2259,1418237513,1,2085),(195,19,64,0,7932,'content',0,2287,91,2085,1418237513,1,2286),(195,19,64,0,7933,'content',0,958,92,2286,1418237513,1,2287),(196,19,64,0,7934,'author',0,954,93,2287,1418237513,1,958),(196,19,64,0,7935,'author',0,955,94,958,1418237513,1,954),(196,19,64,0,7936,'author',0,927,95,954,1418237513,1,955),(196,19,64,0,7937,'author',0,2288,96,955,1418237513,1,927),(206,19,64,0,7938,'tags',0,2293,97,927,1418237513,1,2288),(207,19,64,0,7939,'timestamp',1418151600,0,98,2288,1418237513,1,2293),(193,19,62,0,7940,'title',0,802,0,0,1418237397,1,2261),(193,19,62,0,7941,'title',0,803,1,2261,1418237397,1,802),(193,19,62,0,7942,'title',0,2305,2,802,1418237397,1,803),(193,19,62,0,7943,'title',0,814,3,803,1418237397,1,2305),(195,19,62,0,7944,'content',0,2096,4,2305,1418237397,1,814),(195,19,62,0,7945,'content',0,979,5,814,1418237397,1,2096),(195,19,62,0,7946,'content',0,981,6,2096,1418237397,1,979),(195,19,62,0,7947,'content',0,2206,7,979,1418237397,1,981),(195,19,62,0,7948,'content',0,2207,8,981,1418237397,1,2206),(195,19,62,0,7949,'content',0,2208,9,2206,1418237397,1,2207),(195,19,62,0,7950,'content',0,2096,10,2207,1418237397,1,2208),(195,19,62,0,7951,'content',0,2209,11,2208,1418237397,1,2096),(195,19,62,0,7952,'content',0,981,12,2096,1418237397,1,2209),(195,19,62,0,7953,'content',0,2210,13,2209,1418237397,1,981),(195,19,62,0,7954,'content',0,2211,14,981,1418237397,1,2210),(195,19,62,0,7955,'content',0,2087,15,2210,1418237397,1,2211),(195,19,62,0,7956,'content',0,2212,16,2211,1418237397,1,2087),(195,19,62,0,7957,'content',0,994,17,2087,1418237397,1,2212),(195,19,62,0,7958,'content',0,2213,18,2212,1418237397,1,994),(195,19,62,0,7959,'content',0,2209,19,994,1418237397,1,2213),(195,19,62,0,7960,'content',0,814,20,2213,1418237397,1,2209),(195,19,62,0,7961,'content',0,2214,21,2209,1418237397,1,814),(195,19,62,0,7962,'content',0,2215,22,814,1418237397,1,2214),(195,19,62,0,7963,'content',0,2216,23,2214,1418237397,1,2215),(195,19,62,0,7964,'content',0,2077,24,2215,1418237397,1,2216),(195,19,62,0,7965,'content',0,2217,25,2216,1418237397,1,2077),(195,19,62,0,7966,'content',0,814,26,2077,1418237397,1,2217),(195,19,62,0,7967,'content',0,2210,27,2217,1418237397,1,814),(195,19,62,0,7968,'content',0,2211,28,814,1418237397,1,2210),(195,19,62,0,7969,'content',0,2218,29,2210,1418237397,1,2211),(195,19,62,0,7970,'content',0,2219,30,2211,1418237397,1,2218),(195,19,62,0,7971,'content',0,2220,31,2218,1418237397,1,2219),(195,19,62,0,7972,'content',0,2209,32,2219,1418237397,1,2220),(195,19,62,0,7973,'content',0,2221,33,2220,1418237397,1,2209),(195,19,62,0,7974,'content',0,2222,34,2209,1418237397,1,2221),(195,19,62,0,7975,'content',0,2087,35,2221,1418237397,1,2222),(195,19,62,0,7976,'content',0,2113,36,2222,1418237397,1,2087),(195,19,62,0,7977,'content',0,985,37,2087,1418237397,1,2113),(195,19,62,0,7978,'content',0,2085,38,2113,1418237397,1,985),(195,19,62,0,7979,'content',0,2223,39,985,1418237397,1,2085),(195,19,62,0,7980,'content',0,2224,40,2085,1418237397,1,2223),(195,19,62,0,7981,'content',0,2225,41,2223,1418237397,1,2224),(195,19,62,0,7982,'content',0,2226,42,2224,1418237397,1,2225),(195,19,62,0,7983,'content',0,814,43,2225,1418237397,1,2226),(195,19,62,0,7984,'content',0,2227,44,2226,1418237397,1,814),(195,19,62,0,7985,'content',0,979,45,814,1418237397,1,2227),(195,19,62,0,7986,'content',0,2019,46,2227,1418237397,1,979),(195,19,62,0,7987,'content',0,985,47,979,1418237397,1,2019),(195,19,62,0,7988,'content',0,2228,48,2019,1418237397,1,985),(195,19,62,0,7989,'content',0,2229,49,985,1418237397,1,2228),(195,19,62,0,7990,'content',0,2230,50,2228,1418237397,1,2229),(195,19,62,0,7991,'content',0,2231,51,2229,1418237397,1,2230),(195,19,62,0,7992,'content',0,2232,52,2230,1418237397,1,2231),(195,19,62,0,7993,'content',0,2233,53,2231,1418237397,1,2232),(195,19,62,0,7994,'content',0,2234,54,2232,1418237397,1,2233),(195,19,62,0,7995,'content',0,2235,55,2233,1418237397,1,2234),(195,19,62,0,7996,'content',0,2225,56,2234,1418237397,1,2235),(195,19,62,0,7997,'content',0,814,57,2235,1418237397,1,2225),(195,19,62,0,7998,'content',0,2214,58,2225,1418237397,1,814),(195,19,62,0,7999,'content',0,2236,59,814,1418237397,1,2214),(195,19,62,0,8000,'content',0,979,60,2214,1418237397,1,2236),(195,19,62,0,8001,'content',0,2085,61,2236,1418237397,1,979),(195,19,62,0,8002,'content',0,2237,62,979,1418237397,1,2085),(195,19,62,0,8003,'content',0,2209,63,2085,1418237397,1,2237),(195,19,62,0,8004,'content',0,814,64,2237,1418237397,1,2209),(195,19,62,0,8005,'content',0,2238,65,2209,1418237397,1,814),(195,19,62,0,8006,'content',0,2239,66,814,1418237397,1,2238),(195,19,62,0,8007,'content',0,2240,67,2238,1418237397,1,2239),(195,19,62,0,8008,'content',0,2217,68,2239,1418237397,1,2240),(195,19,62,0,8009,'content',0,985,69,2240,1418237397,1,2217),(195,19,62,0,8010,'content',0,2241,70,2217,1418237397,1,985),(195,19,62,0,8011,'content',0,2242,71,985,1418237397,1,2241),(195,19,62,0,8012,'content',0,2218,72,2241,1418237397,1,2242),(195,19,62,0,8013,'content',0,2219,73,2242,1418237397,1,2218),(195,19,62,0,8014,'content',0,2243,74,2218,1418237397,1,2219),(195,19,62,0,8015,'content',0,2244,75,2219,1418237397,1,2243),(195,19,62,0,8016,'content',0,2245,76,2243,1418237397,1,2244),(195,19,62,0,8017,'content',0,1718,77,2244,1418237397,1,2245),(195,19,62,0,8018,'content',0,981,78,2245,1418237397,1,1718),(195,19,62,0,8019,'content',0,2246,79,1718,1418237397,1,981),(195,19,62,0,8020,'content',0,2247,80,981,1418237397,1,2246),(195,19,62,0,8021,'content',0,1907,81,2246,1418237397,1,2247),(195,19,62,0,8022,'content',0,2248,82,2247,1418237397,1,1907),(195,19,62,0,8023,'content',0,2240,83,1907,1418237397,1,2248),(195,19,62,0,8024,'content',0,2249,84,2248,1418237397,1,2240),(195,19,62,0,8025,'content',0,2250,85,2240,1418237397,1,2249),(195,19,62,0,8026,'content',0,2251,86,2249,1418237397,1,2250),(195,19,62,0,8027,'content',0,2087,87,2250,1418237397,1,2251),(195,19,62,0,8028,'content',0,814,88,2251,1418237397,1,2087),(195,19,62,0,8029,'content',0,2252,89,2087,1418237397,1,814),(195,19,62,0,8030,'content',0,2073,90,814,1418237397,1,2252),(195,19,62,0,8031,'content',0,2253,91,2252,1418237397,1,2073),(195,19,62,0,8032,'content',0,2254,92,2073,1418237397,1,2253),(195,19,62,0,8033,'content',0,814,93,2253,1418237397,1,2254),(195,19,62,0,8034,'content',0,2247,94,2254,1418237397,1,814),(195,19,62,0,8035,'content',0,1907,95,814,1418237397,1,2247),(195,19,62,0,8036,'content',0,2248,96,2247,1418237397,1,1907),(195,19,62,0,8037,'content',0,2240,97,1907,1418237397,1,2248),(195,19,62,0,8038,'content',0,2249,98,2248,1418237397,1,2240),(195,19,62,0,8039,'content',0,2097,99,2240,1418237397,1,2249),(195,19,62,0,8040,'content',0,2228,100,2249,1418237397,1,2097),(195,19,62,0,8041,'content',0,2098,101,2097,1418237397,1,2228),(195,19,62,0,8042,'content',0,2255,102,2228,1418237397,1,2098),(195,19,62,0,8043,'content',0,2105,103,2098,1418237397,1,2255),(195,19,62,0,8044,'content',0,2256,104,2255,1418237397,1,2105),(195,19,62,0,8045,'content',0,2071,105,2105,1418237397,1,2256),(195,19,62,0,8046,'content',0,991,106,2256,1418237397,1,2071),(195,19,62,0,8047,'content',0,2228,107,2071,1418237397,1,991),(195,19,62,0,8048,'content',0,816,108,991,1418237397,1,2228),(195,19,62,0,8049,'content',0,2257,109,2228,1418237397,1,816),(195,19,62,0,8050,'content',0,2078,110,816,1418237397,1,2257),(195,19,62,0,8051,'content',0,2085,111,2257,1418237397,1,2078),(195,19,62,0,8052,'content',0,2258,112,2078,1418237397,1,2085),(195,19,62,0,8053,'content',0,2259,113,2085,1418237397,1,2258),(195,19,62,0,8054,'content',0,2260,114,2258,1418237397,1,2259),(195,19,62,0,8055,'content',0,2261,115,2259,1418237397,1,2260),(195,19,62,0,8056,'content',0,2262,116,2260,1418237397,1,2261),(195,19,62,0,8057,'content',0,2263,117,2261,1418237397,1,2262),(195,19,62,0,8058,'content',0,2239,118,2262,1418237397,1,2263),(195,19,62,0,8059,'content',0,2264,119,2263,1418237397,1,2239),(195,19,62,0,8060,'content',0,2247,120,2239,1418237397,1,2264),(195,19,62,0,8061,'content',0,2265,121,2264,1418237397,1,2247),(195,19,62,0,8062,'content',0,2248,122,2247,1418237397,1,2265),(195,19,62,0,8063,'content',0,2209,123,2265,1418237397,1,2248),(195,19,62,0,8064,'content',0,2266,124,2248,1418237397,1,2209),(195,19,62,0,8065,'content',0,2249,125,2209,1418237397,1,2266),(195,19,62,0,8066,'content',0,2080,126,2266,1418237397,1,2249),(195,19,62,0,8067,'content',0,2267,127,2249,1418237397,1,2080),(195,19,62,0,8068,'content',0,2268,128,2080,1418237397,1,2267),(195,19,62,0,8069,'content',0,814,129,2267,1418237397,1,2268),(195,19,62,0,8070,'content',0,2269,130,2268,1418237397,1,814),(195,19,62,0,8071,'content',0,2261,131,814,1418237397,1,2269),(195,19,62,0,8072,'content',0,979,132,2269,1418237397,1,2261),(195,19,62,0,8073,'content',0,2270,133,2261,1418237397,1,979),(195,19,62,0,8074,'content',0,2271,134,979,1418237397,1,2270),(195,19,62,0,8075,'content',0,2272,135,2270,1418237397,1,2271),(195,19,62,0,8076,'content',0,2273,136,2271,1418237397,1,2272),(195,19,62,0,8077,'content',0,2237,137,2272,1418237397,1,2273),(195,19,62,0,8078,'content',0,2216,138,2273,1418237397,1,2237),(195,19,62,0,8079,'content',0,2274,139,2237,1418237397,1,2216),(195,19,62,0,8080,'content',0,2275,140,2216,1418237397,1,2274),(195,19,62,0,8081,'content',0,2276,141,2274,1418237397,1,2275),(195,19,62,0,8082,'content',0,981,142,2275,1418237397,1,2276),(195,19,62,0,8083,'content',0,2277,143,2276,1418237397,1,981),(195,19,62,0,8084,'content',0,2222,144,981,1418237397,1,2277),(195,19,62,0,8085,'content',0,2278,145,2277,1418237397,1,2222),(195,19,62,0,8086,'content',0,2279,146,2222,1418237397,1,2278),(195,19,62,0,8087,'content',0,2280,147,2278,1418237397,1,2279),(195,19,62,0,8088,'content',0,2236,148,2279,1418237397,1,2280),(195,19,62,0,8089,'content',0,2281,149,2280,1418237397,1,2236),(195,19,62,0,8090,'content',0,2084,150,2236,1418237397,1,2281),(195,19,62,0,8091,'content',0,2282,151,2281,1418237397,1,2084),(195,19,62,0,8092,'content',0,2283,152,2084,1418237397,1,2282),(195,19,62,0,8093,'content',0,2284,153,2282,1418237397,1,2283),(195,19,62,0,8094,'content',0,985,154,2283,1418237397,1,2284),(195,19,62,0,8095,'content',0,2285,155,2284,1418237397,1,985),(195,19,62,0,8096,'content',0,2259,156,985,1418237397,1,2285),(195,19,62,0,8097,'content',0,2085,157,2285,1418237397,1,2259),(195,19,62,0,8098,'content',0,2286,158,2259,1418237397,1,2085),(195,19,62,0,8099,'content',0,2287,159,2085,1418237397,1,2286),(195,19,62,0,8100,'content',0,958,160,2286,1418237397,1,2287),(196,19,62,0,8101,'author',0,954,161,2287,1418237397,1,958),(196,19,62,0,8102,'author',0,955,162,958,1418237397,1,954),(196,19,62,0,8103,'author',0,927,163,954,1418237397,1,955),(196,19,62,0,8104,'author',0,2288,164,955,1418237397,1,927),(206,19,62,0,8105,'tags',0,2289,165,927,1418237397,1,2288),(207,19,62,0,8106,'timestamp',1418238000,0,166,2288,1418237397,1,2289),(8,4,14,0,8107,'first_name',0,954,0,0,1033920830,2,958),(9,4,14,0,8108,'last_name',0,2306,1,958,1033920830,2,954),(12,4,14,0,8109,'user_account',0,2307,2,954,1033920830,2,2306),(12,4,14,0,8110,'user_account',0,2308,3,2306,1033920830,2,2307),(12,4,14,0,8111,'user_account',0,0,4,2307,1033920830,2,2308);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=2309 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (802,3,'ez'),(803,3,'publish'),(812,1,'setup'),(814,7,'the'),(816,4,'for'),(877,1,'common'),(927,8,'ez.no'),(930,3,'users'),(951,1,'main'),(952,2,'group'),(953,2,'anonymous'),(954,10,'user'),(955,8,'nospam'),(956,1,'guest'),(957,1,'accounts'),(958,9,'administrator'),(959,1,'editors'),(961,1,'media'),(962,1,'images'),(963,1,'files'),(964,1,'multimedia'),(965,1,'ini'),(966,1,'settings'),(967,1,'sitestyle_identifier'),(968,1,'design'),(972,1,'blog'),(973,1,'root'),(978,1,'this'),(979,6,'is'),(981,6,'a'),(985,6,'and'),(986,1,'should'),(991,4,'need'),(992,1,'to'),(994,6,'that'),(1712,1,'etusizu'),(1713,1,'about'),(1714,1,'fy'),(1715,1,'asdasdasd'),(1716,1,'lausutaan'),(1717,1,'easy'),(1718,5,'on'),(1719,1,'avoimen'),(1720,1,'lahdekoodin'),(1721,1,'sisallonhallintajarjestelma'),(1722,1,'jarjestelma'),(1723,1,'toimii'),(1724,1,'ns'),(1725,1,'lamp'),(1726,1,'ymparistossa'),(1727,1,'joka'),(1728,1,'koostuu'),(1729,1,'seuraavista'),(1730,1,'osista'),(1731,1,'linux'),(1732,1,'apache'),(1733,1,'mysql'),(1734,1,'php'),(1735,1,'alustaksi'),(1736,1,'sopii'),(1737,1,'myos'),(1738,1,'windows'),(1739,1,'ja'),(1740,1,'muut'),(1741,1,'kayttojarjestelmat'),(1742,1,'publishin'),(1743,1,'kehittamisesta'),(1744,1,'vastaa'),(1745,1,'paaasiallisesti'),(1746,1,'norjalainen'),(1747,1,'systems'),(1748,1,'yritys'),(1749,1,'voi'),(1750,1,'ladata'),(1751,1,'ilmaiseksi'),(1752,1,'gpl'),(1753,1,'lisenssilla'),(1754,1,'tai'),(1755,1,'ostaa'),(1756,1,'suljetun'),(1757,1,'lisenssin'),(1758,1,'tarjoaa'),(1759,1,'tuotteelle'),(1760,1,'kaupallista'),(1761,1,'tukea'),(1762,1,'konsultointia'),(1763,1,'seka'),(1764,1,'koulutusta'),(1765,1,'suomessa'),(1766,1,'jarjestelmasta'),(1767,1,'kehityskokemusta'),(1768,1,'ainakin'),(1769,1,'exove'),(1770,1,'lla'),(1771,1,'eventio'),(1772,1,'oy'),(1773,1,'brain'),(1774,1,'alliance'),(1775,1,'solutions'),(1776,1,'nxc'),(1777,1,'finland'),(1778,1,'asamoa'),(1779,1,'tahoja'),(1780,1,'varmasti'),(1781,1,'muitakin'),(1782,1,'latauslinkin'),(1783,1,'lisatietoja'),(1784,1,'tukipalveluiden'),(1785,1,'hinnoittelu'),(1786,1,'jne'),(1787,1,'saat'),(1788,1,'systemsin'),(1789,1,'sivustolta'),(1790,1,'kayttajat'),(1791,1,'huhtikuussa'),(1792,1,'2011'),(1793,1,'tuotteella'),(1794,1,'mukaan'),(1795,1,'yli'),(1796,1,'3'),(1797,1,'miljoonaa'),(1798,1,'latausta'),(1799,1,'6000'),(1800,1,'maksavaa'),(1801,1,'asiakasta'),(1802,1,'ympari'),(1803,1,'maailman'),(1804,1,'230'),(1805,1,'yrityksen'),(1806,1,'maailmanlaajuinen'),(1807,1,'kumppaniverkosto'),(1808,1,'tuote'),(1809,1,'laajasti'),(1810,1,'kaytossa'),(1811,1,'etenkin'),(1812,1,'keski'),(1813,1,'euroopan'),(1814,1,'mediajateilla'),(1815,1,'lagardere'),(1816,1,'gruner'),(1817,1,'jahr'),(1818,1,'yritysten'),(1819,1,'tuotemerkkeja'),(1820,1,'ovat'),(1821,1,'mm'),(1822,1,'vogue'),(1823,1,'elle'),(1824,1,'stern'),(1825,1,'perussivustojen'),(1826,1,'etta'),(1827,1,'laajempien'),(1828,1,'palveluiden'),(1829,1,'esim'),(1830,1,'portaalit'),(1831,1,'rakentamiseen'),(1832,1,'koska'),(1833,1,'kohtuullisen'),(1834,1,'raskas'),(1835,1,'kannattaa'),(1836,1,'kevyen'),(1837,1,'sisallonhallinnan'),(1838,1,'tarpeisiin'),(1839,1,'harkita'),(1840,1,'muita'),(1841,1,'vaihtoehtoja'),(1842,1,'kaytoss'),(1843,1,'fiskars'),(1844,1,'oyj'),(1845,1,'sanoma'),(1846,1,'finnlines'),(1847,1,'kekkila'),(1848,1,'kaupan'),(1849,1,'liitolla'),(1850,1,'kuvataideopettajat'),(1851,1,'ry'),(1852,1,'teknisen'),(1853,1,'yhdistyksella'),(1854,1,'voima'),(1855,1,'lehdella'),(1856,1,'finnveralla'),(1857,1,'hondalla'),(1858,1,'tecnotree'),(1859,1,'european'),(1860,1,'batteries'),(1861,1,'kymenlaakson'),(1862,1,'sahkolla'),(1863,1,'ixonos'),(1864,1,'lisaksi'),(1865,1,'esimerkiksi'),(1866,1,'ikaalisten'),(1867,1,'kaupungin'),(1868,1,'mokkiavain.fi'),(1869,1,'palvelu'),(1870,1,'toteutettu'),(1871,1,'sen'),(1872,1,'avulla'),(1873,1,'mokkiavain'),(1874,1,'palvelussa'),(1875,1,'kaytetaan'),(1876,1,'jarjestelman'),(1877,1,'kieliversio'),(1878,1,'ominaisuuksia'),(1879,1,'sivusto'),(1880,1,'saatavilla'),(1881,1,'suomenkielen'),(1882,1,'englanniksi'),(1883,1,'espanjaksi'),(1884,1,'saksaksi'),(1885,1,'italiaksi'),(1886,1,'venajaksi'),(1887,1,'kieliversiot'),(1888,1,'eroteltu'),(1889,1,'domain'),(1890,1,'perusteisina'),(1891,1,'siteaccesseina'),(1892,1,'katso'),(1893,1,'suomen'),(1894,1,'referenssisivu'),(1895,1,'perusperiaatteet'),(1896,1,'kaytannossa'),(1897,1,'kaikki'),(1898,1,'sisallonhallintajarjestelmat'),(1899,1,'yhdistavat'),(1900,1,'tietokannasta'),(1901,1,'saadun'),(1902,1,'datan'),(1903,1,'sivupohjat'),(1904,1,'sapluunoita'),(1905,1,'kayttajalle'),(1906,1,'lahetettavaksi'),(1907,5,'html'),(1908,1,'ksi'),(1909,1,'nain'),(1910,1,'sisalto'),(1911,1,'ulkoasu'),(1912,1,'siis'),(1913,1,'erotettuja'),(1914,1,'toisistaan'),(1915,1,'sivuston'),(1916,1,'ulkoasun'),(1917,1,'uusia'),(1918,1,'sivupohjia'),(1919,1,'muokkaamalla'),(1920,1,'erikoisempi'),(1921,1,'ratkaisu'),(1922,1,'taas'),(1923,1,'sisaltoluokkien'),(1924,1,'kayttaminen'),(1925,1,'jokainen'),(1926,1,'objekti'),(1927,1,'sivu'),(1928,1,'tiedosto'),(1929,1,'rakennettu'),(1930,1,'oman'),(1931,1,'sisaltoluokan'),(1932,1,'sisaltoluokka'),(1933,1,'maarittelee'),(1934,1,'objektin'),(1935,1,'tarvitsemat'),(1936,1,'kentat'),(1937,1,'teksti'),(1938,1,'paivamaara'),(1939,1,'voit'),(1940,1,'itse'),(1941,1,'muokata'),(1942,1,'olemassaolevia'),(1943,1,'sisaltoluokkia'),(1944,1,'luoda'),(1945,1,'kokonaan'),(1946,1,'kenttien'),(1947,1,'nayttaminen'),(1948,1,'sivupohjamoottorin'),(1949,1,'tehtava'),(1950,1,'sisallonhallinnassa'),(1951,1,'hyvat'),(1952,1,'valmiudet'),(1953,1,'tuoda'),(1954,1,'sisaltoa'),(1955,1,'muista'),(1956,1,'jarjestelmista'),(1957,1,'xml'),(1958,1,'csv'),(1959,1,'muodossa'),(1960,1,'vakioasennukseen'),(1961,1,'helposti'),(1962,1,'rss'),(1963,1,'syotteita'),(1964,1,'muiden'),(1965,1,'muotojen'),(1966,1,'importointiin'),(1967,1,'kayttaa'),(1968,1,'import'),(1969,1,'laajennusta'),(1970,1,'hyva'),(1971,1,'kaytannon'),(1972,1,'esimerkki'),(1973,1,'sivustosta'),(1974,1,'johon'),(1975,1,'tuodaan'),(1976,1,'muualta'),(1977,1,'premiere.fr'),(1978,1,'sivustolle'),(1979,1,'elokuvien'),(1980,1,'perustiedot'),(1981,1,'niihin'),(1982,1,'liitetaan'),(1983,1,'arvostelutoiminnot'),(1984,1,'publishissa'),(1985,1,'ottaa'),(1986,1,'tuoreimmassa'),(1987,1,'4.x.x'),(1988,1,'versiossaan'),(1989,1,'huomioon'),(1990,1,'hakukoneoptimoinnin'),(1991,1,'perusteet'),(1992,1,'publishille'),(1993,1,'vaikka'),(1994,1,'melkoinen'),(1995,1,'macgyverin'),(1996,1,'linkkuveitsi'),(1997,1,'yksi'),(1998,1,'harvoin'),(1999,1,'paras'),(2000,1,'kaikessa'),(2001,1,'alla'),(2002,1,'muutama'),(2003,1,'vaihtoehtoinen'),(2004,1,'julkaisujarjestelma'),(2005,1,'tarpeiden'),(2006,1,'jaoteltuna'),(2007,1,'kevyt'),(2008,1,'sisallonhallinta'),(2009,1,'joko'),(2010,1,'valmista'),(2011,1,'palvelua'),(2012,1,'kuten'),(2013,1,'kotisivukonetta'),(2014,1,'jotain'),(2015,1,'kevyempaa'),(2016,1,'ohjelmistoa'),(2017,1,'cms'),(2018,1,'made'),(2019,6,'simple'),(2020,1,'blogi'),(2021,1,'verkkopaivakirja'),(2022,1,'blogin'),(2023,1,'yllapitamiseen'),(2024,1,'useita'),(2025,1,'hyvia'),(2026,1,'ohjelmistoja'),(2027,1,'wordpress'),(2028,1,'helppo'),(2029,1,'selkea'),(2030,1,'huonona'),(2031,1,'puolena'),(2032,1,'siina'),(2033,1,'usein'),(2034,1,'esiintyvat'),(2035,1,'tietoturva'),(2036,1,'aukot'),(2037,1,'sosiaalisen'),(2038,1,'median'),(2039,1,'verkkopalvelut'),(2040,1,'jos'),(2041,1,'haluat'),(2042,1,'rakentaa'),(2043,1,'facebook'),(2044,1,'tyyppisen'),(2045,1,'verkkopalvelun'),(2046,1,'tutustua'),(2047,1,'elgg'),(2048,1,'tuotteeseen'),(2049,1,'drupal'),(2050,1,'varteenoteettava'),(2051,1,'vaihtoehto'),(2052,1,'linkkeja'),(2053,1,'as'),(2054,1,'dokumentaatio'),(2055,1,'4.0.0'),(2056,1,'kayttoohje'),(2057,1,'learn'),(2058,1,'tutoriaali'),(2059,1,'projects'),(2060,1,'planet'),(2061,1,'uutisia'),(2062,1,'ezpedia'),(2063,1,'bug'),(2064,1,'tracker'),(2065,1,'5'),(2066,1,'javascript'),(2067,1,'client'),(2068,1,'api'),(2069,1,'docs'),(2070,1,'developer'),(2071,4,'you'),(2072,1,'use'),(2073,4,'skeleton'),(2074,1,'if'),(2075,1,'re'),(2076,1,'embarking'),(2077,6,'smaller'),(2078,4,'project'),(2079,1,'or'),(2080,4,'just'),(2081,1,'don'),(2082,1,'t'),(2083,1,'feel'),(2084,6,'like'),(2085,6,'all'),(2086,1,'utility'),(2087,6,'of'),(2088,1,'larger'),(2089,1,'frameworks'),(2090,1,'only'),(2091,1,'styles'),(2092,1,'handful'),(2093,1,'standard'),(2094,1,'elements'),(2095,1,'includes'),(2096,6,'grid'),(2097,4,'but'),(2098,4,'s'),(2099,1,'often'),(2100,1,'more'),(2101,1,'than'),(2102,1,'enough'),(2103,1,'get'),(2104,1,'started'),(2105,4,'in'),(2106,1,'fact'),(2107,1,'site'),(2108,1,'built'),(2109,1,'has'),(2110,1,'200'),(2111,1,'lines'),(2112,1,'custom'),(2113,6,'css'),(2114,1,'half'),(2115,1,'which'),(2116,1,'docking'),(2117,1,'navigation'),(2206,5,'12'),(2207,5,'column'),(2208,5,'fluid'),(2209,5,'with'),(2210,5,'max'),(2211,5,'width'),(2212,5,'960px'),(2213,5,'shrinks'),(2214,5,'browser'),(2215,5,'device'),(2216,5,'at'),(2217,5,'sizes'),(2218,5,'can'),(2219,5,'be'),(2220,5,'changed'),(2221,5,'one'),(2222,5,'line'),(2223,5,'columns'),(2224,5,'will'),(2225,5,'resize'),(2226,5,'accordingly'),(2227,5,'syntax'),(2228,5,'it'),(2229,5,'makes'),(2230,5,'coding'),(2231,5,'responsive'),(2232,5,'much'),(2233,5,'easier'),(2234,5,'go'),(2235,5,'ahead'),(2236,5,'type'),(2237,5,'set'),(2238,3,'rems'),(2239,3,'so'),(2240,3,'font'),(2241,3,'spacial'),(2242,3,'relationships'),(2243,3,'responsively'),(2244,3,'sized'),(2245,3,'based'),(2246,3,'single'),(2247,3,'lt'),(2248,3,'gt'),(2249,3,'size'),(2250,3,'property'),(2251,3,'out'),(2252,3,'box'),(2253,3,'never'),(2254,3,'changes'),(2255,3,'there'),(2256,3,'case'),(2257,3,'your'),(2258,3,'measurements'),(2259,5,'are'),(2260,3,'still'),(2261,5,'base'),(2262,3,'10'),(2263,3,'though'),(2264,3,'an'),(2265,3,'h1'),(2266,3,'5.0remfont'),(2267,3,'means'),(2268,3,'50px'),(2269,5,'typography'),(2270,5,'raleway'),(2271,5,'served'),(2272,5,'by'),(2273,5,'google'),(2274,5,'15rem'),(2275,5,'15px'),(2276,5,'over'),(2277,5,'1.6'),(2278,5,'height'),(2279,5,'24px'),(2280,5,'other'),(2281,5,'basics'),(2282,5,'anchors'),(2283,5,'strong'),(2284,5,'emphasis'),(2285,5,'underline'),(2286,5,'obviously'),(2287,5,'included'),(2288,5,'templating'),(2289,2,'1418238000'),(2290,1,'assetic'),(2291,1,'cache'),(2292,1,'busting'),(2293,3,'1418151600'),(2294,1,'creating'),(2295,1,'twig'),(2296,1,'helpers'),(2297,1,'composer'),(2298,1,'explained'),(2299,1,'ip'),(2300,1,'restriction'),(2301,1,'using'),(2302,1,'symfony2'),(2303,1,'security'),(2304,1,'voters'),(2305,1,'installation'),(2306,1,'admin'),(2307,1,'foo'),(2308,1,'bar.com');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart'),(4,'setup','','Setup','ezsetupnavigationpart'),(5,'design','','Design','ezvisualnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezpublish-release','1'),('ezpublish-version','5.4.0alpha1');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztags`
--

DROP TABLE IF EXISTS `eztags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `main_tag_id` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `depth` int(11) NOT NULL DEFAULT '1',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztags_remote_id` (`remote_id`),
  KEY `eztags_keyword` (`keyword`),
  KEY `eztags_keyword_id` (`keyword`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztags`
--

LOCK TABLES `eztags` WRITE;
/*!40000 ALTER TABLE `eztags` DISABLE KEYS */;
INSERT INTO `eztags` VALUES (1,0,0,'Developer Blog',1,'/1/',1418230577,'2fc3ce746e8d2dec254d01243914ca0f'),(2,1,0,'Templating',2,'/1/2/',1418230577,'fb2df3ece45af5dca6011733b096d92b');
/*!40000 ALTER TABLE `eztags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztags_attribute_link`
--

DROP TABLE IF EXISTS `eztags_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztags_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_version` int(11) NOT NULL DEFAULT '0',
  `object_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eztags_attr_link_keyword_id` (`keyword_id`),
  KEY `eztags_attr_link_kid_oaid_oav` (`keyword_id`,`objectattribute_id`,`objectattribute_version`),
  KEY `eztags_attr_link_kid_oid` (`keyword_id`,`object_id`),
  KEY `eztags_attr_link_oaid_oav` (`objectattribute_id`,`objectattribute_version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztags_attribute_link`
--

LOCK TABLES `eztags_attribute_link` WRITE;
/*!40000 ALTER TABLE `eztags_attribute_link` DISABLE KEYS */;
INSERT INTO `eztags_attribute_link` VALUES (1,2,208,1,60),(2,2,208,2,60),(3,2,208,3,60),(4,2,217,1,61),(5,2,217,2,61),(6,2,217,3,61),(7,2,226,1,62),(8,2,226,2,62),(9,2,226,3,62),(10,2,208,4,60),(11,2,217,4,61),(13,2,235,1,63),(14,2,235,2,63),(15,2,235,3,63),(16,2,235,4,63),(17,2,244,1,64),(18,2,244,2,64),(19,2,244,3,64),(20,2,244,4,64),(21,2,235,5,63),(22,2,244,5,64),(23,2,226,4,62);
/*!40000 ALTER TABLE `eztags_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1082368571,4,1,0,1082368571,'41caff1d7f5ad51e70ad46abbcf28fb7','http://ez.no/community/forum'),(1082368571,8,1,0,1082368571,'dfcdb471b240d964dc3f57b998eb0533','http://ez.no'),(1301057834,9,1,0,1301057834,'bb9c47d334fd775f1c54c45d460e6b2a','http://doc.ez.no/'),(1301057834,10,1,0,1301057834,'ae76fd1d17de21067cf13101f11689b1','http://ez.no/eZPublish/eZ-Publish-Enterprise-Subscription/Support-Services'),(1301057834,11,1,0,1301057834,'0c098a23ef9c7cae63ee8f85cf504b2d','http://ez.no/Requests/Contact-Sales'),(1301057834,12,1,0,1301057834,'6d8c164dd30423d9dcbc3fae1d64e25c','http://ez.no/eZPublish/Training-and-Certification'),(1301057836,13,1,0,1301057836,'b13f5ff5cdcad2a4efb461e4edf6f718','http://ez.no/Demos-videos/eZ-Publish-Administration-Interface-Video-Tutorial'),(1301057836,14,1,0,1301057836,'7b133bbdf1d039979a973e5a697e3743','http://ez.no/Demos-videos/eZ-Publish-Online-Editor-Video-Tutorial'),(1301057836,15,1,0,1301057836,'4e75c83ab35d461f109ec959aa1c5e1d','http://ez.no/Demos-videos/eZ-Flow-Video-Tutorial'),(1301057836,16,1,0,1301057836,'215310c57a3d54ef1356c20855510357','http://share.ez.no/learn/ez-publish/an-introduction-to-developing-ez-publish-extensions'),(1301057836,17,1,0,1301057836,'9ba078c54f33985da5bd1348a8f39741','http://share.ez.no/learn/ez-publish/creating-a-simple-custom-workflow-event'),(1301057836,18,1,0,1301057836,'eb3d19c36acbd41176094024d8fccfd5','http://www.slideshare.net/ezcommunity/ole-marius-smestad-rest-api-how-to-turn-ez-publish-into-a-multichannel-machine'),(1301057836,19,1,0,1301057836,'1fea0fead02dfc550fbefa5c17acc94f','http://www.slideshare.net/BertrandDunogier/presentation-winter-conference-2011-e-z-asynchronous-publishing'),(1301057836,20,1,0,1301057836,'af8f8bdc5fac2f3ada6ad337adab04cb','http://doc.ez.no/eZ-Publish/Upgrading/Upgrading-to-4.5'),(1301057836,21,1,0,1301057836,'3c6d6cfc2642951e9a946b697f84a306','http://share.ez.no/learn'),(1301057836,22,1,0,1301057836,'ac3ba54b44950b2d77fa42cc57dab914','http://ez.no/Demos-videos'),(1418235257,23,1,0,1418235257,'51c77596162c33e734ec0cf6cb0e65c1','http://ezpublish.fi/julkaisujarjestelmat/'),(1418235257,24,1,0,1418235257,'66f7ea39f9f76fc87222a696ddc1cd50','http://www.linux.org/'),(1418235257,25,1,0,1418235257,'78d04611985e7375b441e478fa36f610','http://www.apache.org/'),(1418235257,26,1,0,1418235257,'1b8f9de1ee49e04f8776a7c81e73076d','http://www.mysql.com/'),(1418235257,27,1,0,1418235257,'a855290e07a17f0457c77232603a219f','http://www.php.net/'),(1418235257,28,1,0,1418235257,'5858d21c97ee3b5089c362546a3eefa4','http://ez.no/'),(1418235257,29,1,0,1418235257,'c176d4bc09a9b68fdb828cf9c1ef8155','http://fi.wikipedia.org/wiki/GPL'),(1418235257,30,1,0,1418235257,'48fbd9331ecd019ec1297fa036d72d0d','http://www.exove.fi/'),(1418235257,31,1,0,1418235257,'81114318a46163b1a588967671650cfa','http://www.eventio.fi/'),(1418235257,32,1,0,1418235257,'9f14bbf928f753b844371ab5c7015c34','http://www.brainalliance.com/'),(1418235257,33,1,0,1418235257,'159e6b8c7041441cdb42e13cd3e2407f','http://www.nxc.fi/'),(1418235257,34,1,0,1418235257,'720a068372215697e2bb9aadc382bab0','http://ez.no/partners/worldwide_partners/asamoa_oy'),(1418235257,35,1,0,1418235257,'601610723fe86a4756ab8378fdd6ecc3','http://share.ez.no/download-develop/downloads'),(1418235257,36,1,0,1418235257,'8c99e911c289ab1c0f244e79b09d09fe','http://ez.no/store'),(1418235257,37,1,0,1418235257,'fcf6cc2bc76635f83793fe1f94f20033','http://www.ez.no/'),(1418235257,38,1,0,1418235257,'116e731486d2b37163ae650a514ac696','http://www.lagardere.com/'),(1418235257,39,1,0,1418235257,'402af754302efae692d29657be5fa8f4','http://www.guj.de/index_en.php4'),(1418235257,40,1,0,1418235257,'d83a4e70be0c91efb99a3c5a5526368d','http://www.vogue.com.au/'),(1418235257,41,1,0,1418235257,'d52ab17a484e244f8c15b0501b1b941c','http://www.elleuk.com/'),(1418235257,42,1,0,1418235257,'ec21064cb6c2460121ff2301fb579a56','http://www.stern.de/'),(1418235257,43,1,0,1418235257,'9df9334e36f6b1c01a234416f333848d','http://www2.fiskars.com/'),(1418235257,44,1,0,1418235257,'acb7feb1cfc2bcd9be43cb06c0698bdb','http://www.sanoma.com/'),(1418235257,45,1,0,1418235257,'89378203c309357615e2ea6863531cfd','http://www2.finnlines.com/passenger_fin/'),(1418235257,46,1,0,1418235257,'e178e167ecf84f73e27383d438c9c4f6','http://www.kekkila.fi/'),(1418235257,47,1,0,1418235257,'f64a017ac71740c73c352d4857481670','http://kauppa.fi/'),(1418235257,48,1,0,1418235257,'35cd7a55455e61dea8922e8de33ea7c8','http://www.kuvataideopettajaliitto.fi/'),(1418235257,49,1,0,1418235257,'6db04abfa2a03dde6901de1a0c148edf','http://tekninen.fi/'),(1418235257,50,1,0,1418235257,'11d25be9fdc8d1f2e55ea61c0adaa99d','http://www.voima.fi/'),(1418235257,51,1,0,1418235257,'5f1f97ab3e7723169c87dc47d2d120c3','http://www.finnvera.fi/'),(1418235257,52,1,0,1418235257,'691fd745d4c57f697c05335a32b5f14c','http://www.hondabikes.fi/'),(1418235257,53,1,0,1418235257,'d15a868ce1137735b8c74f413ca86dc6','http://www.tecnotree.com/'),(1418235257,54,1,0,1418235257,'4707551c32f159e624e77c1ef832535a','http://www.europeanbatteries.com/'),(1418235257,55,1,0,1418235257,'4c789366a5457e8bacc0af517abb0d30','http://www.kymenlaaksonsahko.fi/'),(1418235257,56,1,0,1418235257,'be02ccd96a4b04868ad942b867864d8c','http://ixonos.com/'),(1418235257,57,1,0,1418235257,'5263a9fad88723179795f3c693c2acbe','http://www.mokkiavain.fi/'),(1418235257,58,1,0,1418235257,'59b5b1e9883bcf80eaaba085f2025a8d','http://www.mokkiavain.com/moekkilomalle'),(1418235257,59,1,0,1418235257,'9a5a7012762e4a84da6addad6cff6fe8','http://es.mokkiavain.com/moekkilomalle'),(1418235257,60,1,0,1418235257,'614b18766b216be3375d98fd10b9db3a','http://de.mokkiavain.com/moekkilomalle'),(1418235257,61,1,0,1418235257,'5d2114621801f8b6400e15e63ecf2a8a','http://it.mokkiavain.com/moekkilomalle'),(1418235257,62,1,0,1418235257,'f08bd8a29e2071a07f37e19d281c8970','http://ru.mokkiavain.com/moekkilomalle'),(1418235257,63,1,0,1418235257,'c1167946cef63949bd7176d61252d7bb','http://ez.no/doc/ez_publish/technical_manual/4_0/installation/virtual_host_setup/virtual_host_example'),(1418235257,64,1,0,1418235257,'3c6c9a9085589db53c9d657e1a09db4f','http://ez.no/customers/references/filter/(country)/Finland'),(1418235257,65,1,0,1418235257,'bc1f51df0b15fe2a935962c6b489685d','http://ez.no/doc/ez_publish/technical_manual/4_0/reference/content_classes'),(1418235257,66,1,0,1418235257,'2d086a41ab7783721e0c87aaeaccbc27','http://ez.no/developer/contribs/import_export/data_import'),(1418235257,67,1,0,1418235257,'e9a3d26c98d08a8ec26988006b7e3a5e','http://www.premiere.fr/'),(1418235257,68,1,0,1418235257,'d83e90ad98517ef8656d786b11a1503a','http://janit.iki.fi/hakukoneoptimointi/'),(1418235257,69,1,0,1418235257,'b09933eb06357016688c648f9445ae64','http://macgyver.fi/'),(1418235257,70,1,0,1418235257,'7fc08b0250407ff2fe0169232637dc74','http://www.kotisivukone.fi/'),(1418235257,71,1,0,1418235257,'96d48fd89c1934fbef173aeec9bb4d5e','http://www.cmsmadesimple.org/'),(1418235257,72,1,0,1418235257,'08cca12f044af138eb4ec885872bfef3','http://ezpublish.fi/wordpress/'),(1418235257,73,1,0,1418235257,'8ee5dd80b42cb00f905c1b99658d8cf8','http://elgg.org/'),(1418235257,74,1,0,1418235257,'12c86e5b4cb973775ede2ad857abce93','http://ezpublish.fi/drupal/'),(1418235257,75,1,0,1418235257,'36dd501fb3d108b517ae4a7b65277291','http://ez.no/doc/ez_publish/technical_manual/4_0'),(1418235257,76,1,0,1418235257,'0bc4f87112174afb48c05c39959ca0f9','http://ez.no/doc/ez_publish/user_manual/4_0'),(1418235257,77,1,0,1418235257,'4a7eed450c81a1b0fd95f9a50d30cd1f','http://www.jegodesigns.com/learn_ez_publish'),(1418235257,78,1,0,1418235257,'9fd5c2ca7e61e4e632fc5087ab478c48','http://projects.ez.no/'),(1418235257,79,1,0,1418235257,'6ec684c0ea70c757bf13201fc580a17f','http://www.planetezpublish.org/'),(1418235257,80,1,0,1418235257,'bbc7b2ec18e64ca7d5dacb104eb6da05','http://ezpedia.org/wiki/'),(1418235257,81,1,0,1418235257,'27c3ec46897e6f1fe50e26af7c20f7a5','http://issues.ez.no/'),(1418235257,82,1,0,1418235257,'a86086cf7f5153326fd9d0624afa8b65','http://ezpublish.fi/ezpublish-javascript-client-api/'),(1418236986,83,1,0,1418236986,'8e44784acca824c6adb675547bff549b','http://www.google.com/fonts/specimen/Raleway'),(1418236986,84,1,0,1418236986,'d7993b994986124607ef636a1d88e51d','http://getskeleton.com/');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (104,6,9),(104,6,4),(104,6,10),(104,6,11),(104,6,12),(104,6,8),(104,6,13),(104,6,14),(104,6,15),(104,6,16),(104,6,17),(104,6,18),(104,6,19),(104,6,20),(104,6,21),(104,6,22),(199,3,23),(199,3,24),(199,3,25),(199,3,26),(199,3,27),(199,3,28),(199,3,29),(199,3,30),(199,3,31),(199,3,32),(199,3,33),(199,3,34),(199,3,35),(199,3,36),(199,3,37),(199,3,38),(199,3,39),(199,3,40),(199,3,41),(199,3,42),(199,3,43),(199,3,44),(199,3,45),(199,3,46),(199,3,47),(199,3,48),(199,3,49),(199,3,50),(199,3,51),(199,3,52),(199,3,53),(199,3,54),(199,3,55),(199,3,56),(199,3,57),(199,3,58),(199,3,59),(199,3,60),(199,3,61),(199,3,62),(199,3,63),(199,3,64),(199,3,65),(199,3,66),(199,3,67),(199,3,68),(199,3,69),(199,3,70),(199,3,71),(199,3,72),(199,3,73),(199,3,74),(199,3,75),(199,3,76),(199,3,77),(199,3,78),(199,3,79),(199,3,80),(199,3,81),(199,3,82),(199,4,23),(199,4,24),(199,4,25),(199,4,26),(199,4,27),(199,4,28),(199,4,29),(199,4,30),(199,4,31),(199,4,32),(199,4,33),(199,4,34),(199,4,35),(199,4,36),(199,4,37),(199,4,38),(199,4,39),(199,4,40),(199,4,41),(199,4,42),(199,4,43),(199,4,44),(199,4,45),(199,4,46),(199,4,47),(199,4,48),(199,4,49),(199,4,50),(199,4,51),(199,4,52),(199,4,53),(199,4,54),(199,4,55),(199,4,56),(199,4,57),(199,4,58),(199,4,59),(199,4,60),(199,4,61),(199,4,62),(199,4,63),(199,4,64),(199,4,65),(199,4,66),(199,4,67),(199,4,68),(199,4,69),(199,4,70),(199,4,71),(199,4,72),(199,4,73),(199,4,74),(199,4,75),(199,4,76),(199,4,77),(199,4,78),(199,4,79),(199,4,80),(199,4,81),(199,4,82),(199,5,23),(199,5,24),(199,5,25),(199,5,26),(199,5,27),(199,5,28),(199,5,29),(199,5,30),(199,5,31),(199,5,32),(199,5,33),(199,5,34),(199,5,35),(199,5,36),(199,5,37),(199,5,38),(199,5,39),(199,5,40),(199,5,41),(199,5,42),(199,5,43),(199,5,44),(199,5,45),(199,5,46),(199,5,47),(199,5,48),(199,5,49),(199,5,50),(199,5,51),(199,5,52),(199,5,53),(199,5,54),(199,5,55),(199,5,56),(199,5,57),(199,5,58),(199,5,59),(199,5,60),(199,5,61),(199,5,62),(199,5,63),(199,5,64),(199,5,65),(199,5,66),(199,5,67),(199,5,68),(199,5,69),(199,5,70),(199,5,71),(199,5,72),(199,5,73),(199,5,74),(199,5,75),(199,5,76),(199,5,77),(199,5,78),(199,5,79),(199,5,80),(199,5,81),(199,5,82),(204,2,83),(204,2,84),(204,3,83),(204,3,84),(214,3,83),(214,3,84),(223,3,83),(223,3,84),(204,4,83),(204,4,84),(214,4,83),(214,4,84),(232,4,83),(232,4,84),(241,4,83),(241,4,84),(232,5,83),(232,5,84),(241,5,83),(241,5,84),(223,4,83),(223,4,84);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),('content/view/full/50',0,27,1,1,0,'c60212835de76414f9bfd21eecb8f221','foo_bar_folder/images/vbanner'),('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia'),('content/view/full/54',0,31,1,1,0,'e501fe6c81ed14a5af2b322d248102d8','setup/common_ini_settings'),('content/view/full/56',0,32,1,1,0,'2dd3db5dc7122ea5f3ee539bb18fe97d','design/ez_publish'),('content/view/full/58',0,33,1,1,0,'31c13f47ad87dd7baa2d558a91e0fbb9','design');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` bigint(20) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9'),('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('eznode:60','eznode',1,39,0,1,2,39,0,'eZ-Publish-Developer-Blog','495d82ec1d63a09d7689e4e7cac0e498'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:59','eznode',1,38,0,1,4,38,0,'eZ-Publish-ETUSIZU','5230df2baede33de13140f9eeb5676e3'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('eznode:59','eznode',1,38,0,1,2,38,0,'ABout-eZ-Publish-fy','6f1b58a408239abc939186fab4695ef8'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:2','eznode',1,1,0,1,3,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,1,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:15','eznode',1,8,0,1,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf'),('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240'),('eznode:56','eznode',1,24,0,1,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a'),('eznode:61','eznode',1,43,0,0,2,40,39,'This-is-a-blog-entry','077fd307c3fcab44810390f84b64771a'),('eznode:62','eznode',1,41,0,1,2,41,39,'Creating-Twig-helpers','1776781669b1633d5f69851543212c6c'),('eznode:63','eznode',1,42,0,1,2,42,39,'Base-eZ-Publish-installation','55812785bcb6a368a9fbd9dc4c2b6d5e'),('eznode:61','eznode',1,40,0,1,2,40,39,'Assetic-cache-busting','752489ccca77eb50824b190c2ba9c716'),('eznode:65','eznode',1,48,0,0,2,46,39,'Assetic-cache-busting3','76c045e72903ac3e4acf62b0aff6e298'),('eznode:65','eznode',1,46,0,1,2,46,39,'IP-restriction-using-Symfony2-Security-Voters','97802c1c32648b4014c13e6d8fa7e6ae'),('eznode:64','eznode',1,45,0,1,2,45,39,'Composer-explained','b560171110896d5a3a4b3e3c2fcab321'),('eznode:62','eznode',1,44,0,0,2,41,39,'This-is-a-blog-entry2','b7746b5d47e8cbd8e3e9bfbdd0fce7a1'),('eznode:64','eznode',1,47,0,0,2,45,39,'Assetic-cache-busting2','c48f0b392bc451624479c2cfd3d711ad'),('eznode:63','eznode',1,49,0,0,2,42,39,'This-is-a-blog-entry3','df970322dc5fa4cbbf911fbf6e7b0b7c');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(50) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentobject_id`),
  KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'foo@bar.com','admin','52657265108f63a684ca01fdbff32249',2);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12,25,'','',2),(11,28,'','',1),(42,31,'','',1),(13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1418663425,0,1418227830,3,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-15 19:13:20
