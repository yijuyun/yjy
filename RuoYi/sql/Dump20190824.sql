-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: yijuyun
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT '=' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','DESKTOP-AJIQBL31566627952932',1566628499138,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1566627960000,-1,5,'PAUSED','CRON',1566627953000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1566627960000,-1,5,'PAUSED','CRON',1566627953000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1566627960000,-1,5,'PAUSED','CRON',1566627953000,0,NULL,2,'');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','深色主题theme-dark，浅色主题theme-light');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_cteph`
--

DROP TABLE IF EXISTS `sys_cteph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_cteph` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(20) DEFAULT NULL COMMENT '编码',
  `department` int(11) DEFAULT NULL COMMENT '科室',
  `maker` int(11) DEFAULT NULL COMMENT '制表人',
  `patient_name` varchar(20) DEFAULT NULL COMMENT '患者姓名',
  `patient_sex` int(11) DEFAULT NULL COMMENT '患者性别',
  `patient_address` varchar(200) DEFAULT NULL COMMENT '患者地址',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `height` float DEFAULT NULL COMMENT '身高',
  `weight` float DEFAULT NULL COMMENT '体重',
  `firsttime` datetime DEFAULT NULL COMMENT '首发症状时间',
  `specialsigns` int(11) DEFAULT NULL COMMENT '特殊临床症状体征',
  `vtehistory` int(11) DEFAULT NULL COMMENT '既往静脉血栓栓塞症（VTE）病史',
  `ape` int(11) DEFAULT NULL COMMENT '急性肺栓塞',
  `ledvt` int(11) DEFAULT NULL COMMENT '下肢深静脉血栓',
  `otherthrombus` varchar(200) DEFAULT NULL COMMENT '其他部位深静脉血栓',
  `firstvtetime` datetime DEFAULT NULL COMMENT '首发VTE事件时间',
  `vterelapse` int(11) DEFAULT NULL COMMENT '是否有VTE事件复发',
  `malignanttumor` int(11) DEFAULT NULL COMMENT '恶性肿瘤',
  `specifictumor` varchar(200) DEFAULT NULL COMMENT '具体肿瘤诊断',
  `malignanttumordate` date DEFAULT NULL COMMENT '诊断时间',
  `splenectomy` int(11) DEFAULT NULL COMMENT '脾切除',
  `splenectormydate` date DEFAULT NULL COMMENT '脾切除手术时间',
  `pacemaker` int(11) DEFAULT NULL COMMENT '起搏器植入',
  `pacemakerdate` date DEFAULT NULL COMMENT '起搏器植入时间',
  `atrialhistory` int(11) DEFAULT NULL COMMENT '脑室心房分流手术',
  `atrialhistorydate` date DEFAULT NULL COMMENT '手术时间',
  `levv` int(11) DEFAULT NULL COMMENT '下肢静脉曲张',
  `levvdate` date DEFAULT NULL COMMENT '下肢静脉曲张诊断时间',
  `ibd` int(11) DEFAULT NULL COMMENT '炎症性肠病',
  `ibddiagnosis` varchar(200) DEFAULT NULL COMMENT '炎症性肠病具体诊断',
  `ibddate` date DEFAULT NULL COMMENT '炎症性肠病诊断时间',
  `connectivetissue` int(11) DEFAULT NULL COMMENT '结缔组织病',
  `aas` int(11) DEFAULT NULL COMMENT '抗磷脂抗体综合征',
  `la` int(11) DEFAULT NULL COMMENT '狼疮抗凝物（LA）',
  `acL_igg` int(11) DEFAULT NULL COMMENT 'ACL IgG',
  `acl_igm` int(11) DEFAULT NULL COMMENT 'ACL IgM',
  `lgg` int(11) DEFAULT NULL COMMENT 'β2GP1 IgG',
  `lgm` int(11) DEFAULT NULL COMMENT 'β2GP1 IgM',
  `sie` int(11) DEFAULT NULL COMMENT '系统性红斑狼疮',
  `sjogrens` int(11) DEFAULT NULL COMMENT '干燥综合征',
  `ssclerosis` int(11) DEFAULT NULL COMMENT '系统性硬化症',
  `mctd` int(11) DEFAULT NULL COMMENT '混合性结缔组织病',
  `rarthritis` int(11) DEFAULT NULL COMMENT '类风湿性关节炎',
  `uctd` int(11) DEFAULT NULL COMMENT '未分化结缔组织病',
  `octd` int(11) DEFAULT NULL COMMENT '其他结缔组织病',
  `octdspecific` varchar(200) DEFAULT NULL COMMENT '具体其他结缔组织病',
  `hps` int(11) DEFAULT NULL COMMENT '高同型半胱氨酸（HCY）血症',
  `hcylevel` float DEFAULT NULL COMMENT 'HCY水平',
  `maximum` float DEFAULT NULL COMMENT '参考值上限',
  `threeitems` int(11) DEFAULT NULL COMMENT '易栓三项',
  `at` float DEFAULT NULL COMMENT 'ATIII %',
  `proteins` float DEFAULT NULL COMMENT '蛋白S',
  `proteinc` float DEFAULT NULL COMMENT '蛋白C',
  `hat` int(11) DEFAULT NULL COMMENT '检测时或之前7日是否接受华法林抗凝治疗',
  `otherriskjudge` int(11) DEFAULT NULL COMMENT '其他危险因素',
  `otherrisk` varchar(20) DEFAULT NULL COMMENT '具体危险因素',
  `hypertension` int(11) DEFAULT NULL COMMENT '高血压',
  `coronaryheart` int(11) DEFAULT NULL COMMENT '冠心病',
  `revascularization` int(11) DEFAULT NULL COMMENT '冠心病是否已行血运重建',
  `diabetes` int(11) DEFAULT NULL COMMENT '糖尿病',
  `lhfailure` int(11) DEFAULT NULL COMMENT '左心衰竭',
  `lhfailurespecific` int(11) DEFAULT NULL COMMENT '左心衰竭具体',
  `renalinsufficiency` int(11) DEFAULT NULL COMMENT '慢性肾功能不全',
  `cerebralinfarction` int(11) DEFAULT NULL COMMENT '脑梗塞',
  `copd` int(11) DEFAULT NULL COMMENT '慢性阻塞性肺疾病',
  `congenitalheart` int(11) DEFAULT NULL COMMENT '先天性心脏病',
  `chdspecific` varchar(20) DEFAULT NULL COMMENT '先天性心脏病具体',
  `hypothyroidism` int(11) DEFAULT NULL COMMENT '甲状腺功能减低',
  `hyperthyroidism` int(11) DEFAULT NULL COMMENT '甲状腺功能亢进',
  `anemia` int(11) DEFAULT NULL COMMENT '贫血',
  `polycythemia` int(11) DEFAULT NULL COMMENT '红细胞增多症',
  `eosinophilia` int(11) DEFAULT NULL COMMENT '嗜酸粒细胞增多增多症',
  `plateletlower` int(11) DEFAULT NULL COMMENT '血小板减低',
  `plateletup` int(11) DEFAULT NULL COMMENT '血小板增多',
  `othercomplications` int(11) DEFAULT NULL COMMENT '其他重要合并疾病',
  `othercomplicationss` varchar(200) DEFAULT NULL COMMENT '具体疾病',
  `cteph` int(11) DEFAULT NULL COMMENT '确诊CTEPH时心功能分级',
  `sixmwd` int(11) DEFAULT NULL COMMENT '6MWD是否进行',
  `noreason1` int(11) DEFAULT NULL COMMENT '6MWD未进行原因',
  `walking` float DEFAULT NULL COMMENT '步行距离（m）',
  `respiratory` int(11) DEFAULT NULL COMMENT '呼吸功能',
  `vcmax` float DEFAULT NULL COMMENT 'VC MAX (%)',
  `tlc` float DEFAULT NULL COMMENT 'TLC (%)',
  `rv` float DEFAULT NULL COMMENT 'RV(%)',
  `rvtlc` float DEFAULT NULL COMMENT 'RV/TLC (%)',
  `fev1` float DEFAULT NULL COMMENT 'FEV1 (%)实/预',
  `fev1fvc` float DEFAULT NULL COMMENT 'FEV1/FVC (%)实测',
  `fef` float DEFAULT NULL COMMENT 'FEF25-75 (%)',
  `tlcosb` float DEFAULT NULL COMMENT 'TLCO SB (%)',
  `tlcova` float DEFAULT NULL COMMENT 'TLCO/VA (%)',
  `cet` int(11) DEFAULT NULL COMMENT '心肺运动试验',
  `heartmri` int(11) DEFAULT NULL COMMENT '心脏MRI',
  `ppi` int(11) DEFAULT NULL COMMENT '肺灌注显像',
  `ctpat` int(11) DEFAULT NULL COMMENT 'CT肺动脉增强',
  `mripae` int(11) DEFAULT NULL COMMENT 'MRI肺动脉增强',
  `cmri` int(11) DEFAULT NULL,
  `rhc` int(11) DEFAULT NULL COMMENT '右心导管',
  `noreason2` int(11) DEFAULT NULL COMMENT '右心导管未做原因',
  `otherreason` varchar(20) DEFAULT NULL COMMENT '其他原因',
  `pa` int(11) DEFAULT NULL COMMENT '肺动脉造影',
  `firstcatheter` datetime DEFAULT NULL COMMENT '首次导管时间',
  `hr` float DEFAULT NULL COMMENT 'HR, bpm',
  `bpshrink` float DEFAULT NULL COMMENT 'BP收缩(mm Hg)',
  `bprelaxation` float DEFAULT NULL COMMENT 'BP舒张(mm Hg)',
  `bpave` float DEFAULT NULL COMMENT 'BP平均(mm Hg)',
  `rap` int(11) DEFAULT NULL COMMENT 'RAP',
  `rapshrink` float DEFAULT NULL COMMENT 'RAP收缩(mm Hg)',
  `raprelaxation1` float DEFAULT NULL COMMENT 'RAP舒张(mm Hg)',
  `rapave` float DEFAULT NULL COMMENT 'RAP平均(mm Hg)',
  `pap` int(11) DEFAULT NULL COMMENT 'PAP',
  `papshrink` float DEFAULT NULL COMMENT 'PAP收缩(mm Hg)',
  `raprelaxation2` float DEFAULT NULL COMMENT 'PAP舒张(mm Hg)',
  `papave` float DEFAULT NULL COMMENT 'PAP平均(mm Hg)',
  `pawp` int(11) DEFAULT NULL COMMENT 'PAWP',
  `pawpshrink` float DEFAULT NULL COMMENT 'PAWP收缩(mm Hg)',
  `pawprelaxation` float DEFAULT NULL COMMENT 'PAWP舒张(mm Hg)',
  `pawpave` float DEFAULT NULL COMMENT 'PAWP平均(mm Hg)',
  `co` float DEFAULT NULL COMMENT 'CO (Qp), L/min',
  `comethod` int(11) DEFAULT NULL COMMENT 'CO测定方法',
  `ci` float DEFAULT NULL COMMENT 'CI, L/min/m2',
  `pvr` float DEFAULT NULL COMMENT 'PVR, Wood U',
  `lvedd` float DEFAULT NULL COMMENT '左室舒张末内径LVEDD (mm)',
  `lvef` float DEFAULT NULL COMMENT '左室射血分数LVEF (%)',
  `pasp` float DEFAULT NULL COMMENT '超声估测肺动脉收缩压PASP(mm Hg)',
  `tapse` float DEFAULT NULL COMMENT '三尖瓣环收缩期位移 TAPSE（mm）',
  `pe` int(11) DEFAULT NULL COMMENT '心包积液',
  `bloodgroup` int(11) DEFAULT NULL COMMENT '血型',
  `ddimer` float DEFAULT NULL COMMENT 'D-二聚体(μg/mL)',
  `nt` int(11) DEFAULT NULL COMMENT 'NT-proBNP',
  `ntnumber` float DEFAULT NULL COMMENT 'NT-proBNP pg/ml',
  `ast` float DEFAULT NULL COMMENT 'AST（IU/ml）',
  `alt` float DEFAULT NULL COMMENT 'ALT（IU/ml）',
  `tbil` float DEFAULT NULL COMMENT 'Tbil（μmol/L）',
  `dbil` float DEFAULT NULL COMMENT 'Dbil（μmol/L）',
  `cr` float DEFAULT NULL COMMENT '血Cr（μmol/L）',
  `bloodgas` int(11) DEFAULT NULL COMMENT '动脉血气',
  `abgt` int(11) DEFAULT NULL COMMENT '动脉血气类型',
  `pco` float DEFAULT NULL COMMENT 'PCO2 mmHg',
  `po` float DEFAULT NULL COMMENT 'PO2 mmHg',
  `sao` float DEFAULT NULL COMMENT 'SaO2 %',
  `paa` float DEFAULT NULL COMMENT 'P(A-a) mmHg',
  `anticoagulant` int(11) DEFAULT NULL COMMENT '抗凝治疗',
  `drug1` int(11) DEFAULT NULL COMMENT '抗凝治疗药物',
  `otherdrug` varchar(20) DEFAULT NULL COMMENT '抗凝治疗其他药物',
  `antiplatelet` int(11) DEFAULT NULL COMMENT '抗血小板治疗',
  `drug5` int(11) DEFAULT NULL COMMENT '抗血小板治疗药物',
  `otherdrug2` varchar(200) DEFAULT NULL COMMENT '抗血小板治疗其他药物',
  `targeting` int(11) DEFAULT NULL COMMENT '靶向治疗',
  `laxg` int(11) DEFAULT NULL COMMENT '利奥西呱',
  `fivepi` int(11) DEFAULT NULL COMMENT '5型磷酸二酯酶抑制剂',
  `drug2` int(11) DEFAULT NULL COMMENT '5型磷酸二酯酶抑制剂药物',
  `era` int(11) DEFAULT NULL COMMENT '内皮素受体拮抗剂',
  `drug3` int(11) DEFAULT NULL COMMENT '内皮素受体拮抗剂药物',
  `prostacyclin` int(11) DEFAULT NULL COMMENT '前列环素',
  `drug4` int(11) DEFAULT NULL COMMENT '前列环素药物',
  `exfoliation` int(11) DEFAULT NULL COMMENT '肺动脉内膜剥脱术',
  `exfoliationdate` date DEFAULT NULL COMMENT '肺动脉内膜剥脱术时间',
  `angioplasty` int(11) DEFAULT NULL COMMENT '球囊肺动脉成形术',
  `angioplastyfdate` date DEFAULT NULL COMMENT '球囊肺动脉成形术时间',
  `death` int(11) DEFAULT NULL COMMENT '是否死亡',
  `deathreason` int(11) DEFAULT NULL COMMENT '死亡原因',
  `create_by` varchar(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `ts` datetime DEFAULT NULL COMMENT '时间戳',
  `dr` int(11) DEFAULT NULL COMMENT '删除标记',
  `svo2` float DEFAULT NULL COMMENT 'SvO2 (肺动脉氧饱和度), %',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_cteph`
--

LOCK TABLES `sys_cteph` WRITE;
/*!40000 ALTER TABLE `sys_cteph` DISABLE KEYS */;
INSERT INTO `sys_cteph` VALUES (6,NULL,104,NULL,'张三',0,'北京市海淀区','1995-01-30',184,80,'2018-11-04 00:00:00',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'若依','2019-08-11 16:32:10',NULL,NULL,'2019-08-11 16:32:10',0,NULL),(7,NULL,105,NULL,'李四',1,'北京市朝阳区','1995-01-30',184,68,'2018-11-04 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'若依','2019-08-11 16:32:10',NULL,NULL,'2019-08-11 16:32:10',0,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'测试','2019-08-21 21:03:27',NULL,NULL,'2019-08-21 21:03:27',1,NULL),(9,NULL,104,NULL,'张三',0,'北京市','1969-02-28',166,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'若依','2019-08-24 12:40:24',NULL,NULL,'2019-08-24 12:40:24',0,NULL);
/*!40000 ALTER TABLE `sys_cteph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','医聚云科技',0,'武美奇','15888888888','wmq@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-08-21 20:53:45'),(101,100,'0,100','北京总公司',1,'李康','15888888888','lk@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-08-21 20:51:13'),(102,100,'0,100','临沂分公司',2,'王凯','15888888888','wk@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-08-21 20:53:45'),(103,101,'0,100,101','研发部门',1,'陈贵文','15888888888','cgw@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-08-21 20:50:50'),(104,101,'0,100,101','市场部门',2,'谭江山','15888888888','tjs@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-08-21 20:51:13'),(105,101,'0,100,101','测试部门',3,'石倩倩','15888888888','sqq@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','财务部门',4,'刘芳超','15888888888','lfc@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','运维部门',5,'刘宁宁','15888888888','lnn@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','市场部门',1,'谭江山','15888888888','tjs@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(109,102,'0,100,102','财务部门',2,'刘芳超','15888888888','lfc@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_follow`
--

DROP TABLE IF EXISTS `sys_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(45) DEFAULT NULL COMMENT '编码',
  `department` int(11) DEFAULT NULL COMMENT '科室',
  `doctor` varchar(45) DEFAULT NULL COMMENT '医生',
  `patient_name` varchar(45) DEFAULT NULL COMMENT '患者姓名',
  `patient_sex` int(11) DEFAULT NULL COMMENT '患者性别',
  `patient_age` int(11) DEFAULT NULL COMMENT '患者年龄',
  `patient_medno` varchar(45) DEFAULT NULL COMMENT '患者病案号',
  `patient_phone` char(11) DEFAULT NULL COMMENT '患者手机',
  `patient_phone2` char(11) DEFAULT NULL COMMENT '患者电话',
  `patient_wechat` varchar(45) DEFAULT NULL COMMENT '患者微信',
  `patient_address` varchar(45) DEFAULT NULL COMMENT '患者地址',
  `family_phone` char(11) DEFAULT NULL COMMENT '家人电话',
  `pamily_phone2` char(11) DEFAULT NULL COMMENT '家人手机',
  `deteriorate` int(1) DEFAULT NULL COMMENT '发生临床恶化事件',
  `hospitalization` int(1) DEFAULT NULL COMMENT '是否住院',
  `number` int(11) DEFAULT NULL COMMENT '住院次数',
  `pulmonary` int(1) DEFAULT NULL COMMENT '肺部感染',
  `rightheartfailure` int(1) DEFAULT NULL COMMENT '右心衰加重',
  `hemoptysis1` int(1) DEFAULT NULL COMMENT '咯血',
  `other` varchar(100) DEFAULT NULL COMMENT '其他出血情况',
  `pulmonaryembolism` int(1) DEFAULT NULL COMMENT '再发肺栓塞',
  `lowervein` int(1) DEFAULT NULL COMMENT '下肢深静脉血栓',
  `arrhythmia` int(1) DEFAULT NULL COMMENT '心律失常',
  `death` int(1) DEFAULT NULL COMMENT '是否死亡',
  `deathdate` datetime DEFAULT NULL COMMENT '死亡时间',
  `nonpertension` int(1) DEFAULT NULL COMMENT '非肺高压原因',
  `specific_reason` varchar(200) DEFAULT NULL COMMENT '具体死亡原因',
  `review` int(1) DEFAULT NULL COMMENT '常规复查',
  `hospitalizationdate1` datetime DEFAULT NULL COMMENT '住院时间',
  `hospitalizationdate2` datetime DEFAULT NULL COMMENT '住院时间',
  `hospitalizationdate3` datetime DEFAULT NULL COMMENT '住院时间',
  `deterioratespecific` varchar(200) DEFAULT NULL COMMENT '重要恶化事件请详述',
  `regulardose` int(1) DEFAULT NULL COMMENT '是否规律服药',
  `othersereason` varchar(200) DEFAULT NULL COMMENT '不规律原因',
  `xdnf` int(1) DEFAULT NULL COMMENT '西地那非',
  `xdnf_dosage` double(20,8) DEFAULT NULL COMMENT '西地那非剂量',
  `tdnf` int(1) DEFAULT NULL COMMENT '他达那非',
  `tdnf_dosage` double(20,8) DEFAULT NULL COMMENT '他达那非剂量',
  `facered1` int(1) DEFAULT NULL COMMENT '面色潮红',
  `headache1` int(1) DEFAULT NULL COMMENT '头痛',
  `stuffynose1` int(1) DEFAULT NULL COMMENT '鼻塞',
  `musclepain1` int(1) DEFAULT NULL COMMENT '肌肉疼痛',
  `dizziness1` int(1) DEFAULT NULL COMMENT '头晕',
  `blurredvision1` int(1) DEFAULT NULL COMMENT '视物模糊',
  `hypotension1` int(1) DEFAULT NULL COMMENT '低血压',
  `menstrualdisorder1` int(1) DEFAULT NULL COMMENT '月经紊乱',
  `other1` varchar(200) DEFAULT NULL COMMENT '其他',
  `bst` int(1) DEFAULT NULL COMMENT '波生坦',
  `bst_dosage` double(20,8) DEFAULT NULL COMMENT '波生坦剂量',
  `mxtt` int(1) DEFAULT NULL COMMENT '马昔腾坦',
  `mxtt_dosage` double(20,8) DEFAULT NULL COMMENT '马昔腾坦剂量',
  `facered2` int(1) DEFAULT NULL COMMENT '面色潮红',
  `headache2` int(1) DEFAULT NULL COMMENT '头痛',
  `stuffynose2` int(1) DEFAULT NULL COMMENT '鼻塞',
  `musclepain2` int(1) DEFAULT NULL COMMENT '肌肉疼痛',
  `dizziness2` int(1) DEFAULT NULL COMMENT '头晕',
  `transaminaseraise2` int(1) DEFAULT NULL COMMENT '转氨酶增高',
  `anemia2` int(1) DEFAULT NULL COMMENT '贫血',
  `peripheraledema2` int(1) DEFAULT NULL COMMENT '外周浮肿',
  `hypotension2` int(1) DEFAULT NULL COMMENT '低血压',
  `menstrualdisorder2` int(1) DEFAULT NULL COMMENT '月经紊乱',
  `other2` varchar(200) DEFAULT NULL COMMENT '其他',
  `bqls` int(1) DEFAULT NULL COMMENT '贝前列素',
  `bqls_dosage` double(20,8) DEFAULT NULL COMMENT '贝前列素剂量',
  `rmdl` int(1) DEFAULT NULL COMMENT '瑞莫杜林',
  `rmdl_dosage` double(20,8) DEFAULT NULL COMMENT '瑞莫杜林剂量',
  `facered3` int(1) DEFAULT NULL COMMENT '面色潮红',
  `headache3` int(1) DEFAULT NULL COMMENT '头痛',
  `stuffynose3` int(1) DEFAULT NULL COMMENT '鼻塞',
  `musclepain3` int(1) DEFAULT NULL COMMENT '肌肉疼痛',
  `diarrhea3` int(1) DEFAULT NULL COMMENT '腹泻',
  `localpain3` int(1) DEFAULT NULL COMMENT '局部疼痛',
  `hypotension3` int(1) DEFAULT NULL COMMENT '低血压',
  `other3` varchar(200) DEFAULT NULL COMMENT '其他',
  `laxg` int(1) DEFAULT NULL COMMENT '利奥西呱',
  `laxg_dosage` double(20,8) DEFAULT NULL COMMENT '利奥西呱剂量',
  `facered4` int(1) DEFAULT NULL COMMENT '面色潮红',
  `headache4` int(1) DEFAULT NULL COMMENT '头痛',
  `stuffynose4` int(1) DEFAULT NULL COMMENT '鼻塞',
  `dizziness4` int(1) DEFAULT NULL COMMENT '头晕',
  `diarrhea4` int(1) DEFAULT NULL COMMENT '腹泻',
  `hypotension4` int(1) DEFAULT NULL COMMENT '低血压',
  `other4` varchar(200) DEFAULT NULL COMMENT '其他',
  `routineblood` int(1) DEFAULT NULL COMMENT '血常规',
  `bloodbiochemistry` int(1) DEFAULT NULL COMMENT '血生化',
  `nt` int(1) DEFAULT NULL COMMENT 'NT-proBNP',
  `ntnumber` double(20,8) DEFAULT NULL COMMENT 'NT-proBNP数值',
  `sexhormone` int(1) DEFAULT NULL COMMENT '性激素',
  `ironmetabolism` int(1) DEFAULT NULL COMMENT '铁代谢',
  `walk` int(1) DEFAULT NULL COMMENT '步行距离',
  `walkdistance` double(20,8) DEFAULT NULL COMMENT '6分钟步行距离',
  `ct` int(1) DEFAULT NULL COMMENT 'CT',
  `cprt` int(1) DEFAULT NULL COMMENT 'CPET',
  `mri` int(1) DEFAULT NULL COMMENT 'MRI',
  `othercheck` varchar(200) DEFAULT NULL COMMENT '其他检查',
  `breath_short` int(11) DEFAULT NULL COMMENT '气短',
  `syncope` int(11) DEFAULT NULL COMMENT '晕厥',
  `syncope_times` int(11) DEFAULT NULL COMMENT '晕厥次数',
  `syncope_time` datetime DEFAULT NULL COMMENT '最近晕厥时间',
  `hemoptysis` int(11) DEFAULT NULL COMMENT '咳血',
  `hemoptysis_times` int(11) DEFAULT NULL COMMENT '咳血次数',
  `hemoptysis_max` datetime DEFAULT NULL COMMENT '咳血量',
  `swollen` int(11) DEFAULT NULL COMMENT '浮肿',
  `others` varchar(500) DEFAULT NULL COMMENT '其他',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `ts` datetime DEFAULT NULL COMMENT '时间戳',
  `dr` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='肺高血压随访表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_follow`
--

LOCK TABLES `sys_follow` WRITE;
/*!40000 ALTER TABLE `sys_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误1次','2019-08-11 16:21:57'),(101,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','密码输入错误2次','2019-08-11 16:22:05'),(102,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-11 16:22:16'),(103,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-11 16:53:06'),(104,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-18 15:57:45'),(105,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-08-18 17:02:53'),(106,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-18 17:02:57'),(107,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 20:42:36'),(108,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 20:54:08'),(109,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-08-21 20:55:12'),(110,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-08-21 20:55:16'),(111,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 20:55:21'),(112,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 20:56:19'),(113,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 20:56:28'),(114,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 20:56:38'),(115,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-08-21 20:56:43'),(116,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 20:56:47'),(117,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 20:57:10'),(118,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 20:57:20'),(119,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 20:57:54'),(120,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 20:57:58'),(121,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 20:58:40'),(122,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-08-21 20:58:50'),(123,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 20:58:52'),(124,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:00:26'),(125,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:00:47'),(126,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:01:02'),(127,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:01:05'),(128,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:01:30'),(129,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:01:39'),(130,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:01:55'),(131,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:02:11'),(132,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:02:18'),(133,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:02:21'),(134,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:02:47'),(135,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:02:55'),(136,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:03:50'),(137,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:03:53'),(138,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:04:29'),(139,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:04:37'),(140,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:04:46'),(141,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:05:20'),(142,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:05:28'),(143,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:05:31'),(144,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-21 21:05:59'),(145,'test','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-21 21:06:07'),(146,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-24 12:39:15'),(147,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-08-24 14:01:09'),(148,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-24 14:01:11'),(149,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-24 14:18:48'),(150,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','退出成功','2019-08-24 14:20:27'),(151,'admin','127.0.0.1','内网IP','Chrome','Windows 10','1','验证码错误','2019-08-24 14:20:30'),(152,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-24 14:20:32'),(153,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-24 14:26:04'),(154,'admin','127.0.0.1','内网IP','Firefox','Windows 10','1','密码输入错误1次','2019-08-24 14:27:22'),(155,'admin','127.0.0.1','内网IP','Firefox','Windows 10','1','密码输入错误2次','2019-08-24 14:27:27'),(156,'admin','127.0.0.1','内网IP','Firefox','Windows 10','0','登录成功','2019-08-24 14:27:34'),(157,'admin','127.0.0.1','内网IP','Chrome','Windows 10','0','登录成功','2019-08-24 14:28:36'),(158,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','1','密码输入错误1次','2019-08-24 14:29:07'),(159,'admin','127.0.0.1','内网IP','Microsoft Edge','Windows 10','0','登录成功','2019-08-24 14:29:12');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录'),(3,'系统工具',0,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(100,'用户管理',1,1,'/system/user','','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'表单构建',3,1,'/tool/build','','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(114,'代码生成',3,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'/tool/swagger','','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导入',100,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'重置密码',100,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色查询',101,1,'#','','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色新增',101,2,'#','','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色修改',101,3,'#','','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色删除',101,4,'#','','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色导出',101,5,'#','','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单查询',102,1,'#','','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单新增',102,2,'#','','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单修改',102,3,'#','','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单删除',102,4,'#','','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'岗位查询',104,1,'#','','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位新增',104,2,'#','','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位修改',104,3,'#','','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位删除',104,4,'#','','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位导出',104,5,'#','','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'字典查询',105,1,'#','','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典新增',105,2,'#','','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典修改',105,3,'#','','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典删除',105,4,'#','','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典导出',105,5,'#','','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'参数查询',106,1,'#','','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数新增',106,2,'#','','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数修改',106,3,'#','','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数删除',106,4,'#','','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数导出',106,5,'#','','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'公告查询',107,1,'#','','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告新增',107,2,'#','','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告修改',107,3,'#','','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告删除',107,4,'#','','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'操作查询',500,1,'#','','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作删除',500,2,'#','','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'详细信息',500,3,'#','','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'在线查询',109,1,'#','','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'批量强退',109,2,'#','','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'单条强退',109,3,'#','','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'任务查询',110,1,'#','','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务新增',110,2,'#','','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务修改',110,3,'#','','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务删除',110,4,'#','','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'状态修改',110,5,'#','','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'任务详细',110,6,'#','','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'任务导出',110,7,'#','','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'生成查询',114,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成修改',114,2,'#','','F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1058,'生成删除',114,3,'#','','F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1059,'预览代码',114,4,'#','','F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1060,'生成代码',114,5,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'CTEPH调查',2005,1,'/system/cteph','menuItem','C','0','system:cteph:view','#','admin','2018-03-01 00:00:00','admin','2019-08-11 16:23:25','CTEPH调查菜单'),(2001,'CTEPH调查查询',2000,1,'#','','F','0','system:cteph:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2002,'CTEPH调查新增',2000,2,'#','','F','0','system:cteph:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2003,'CTEPH调查修改',2000,3,'#','','F','0','system:cteph:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2004,'CTEPH调查删除',2000,4,'#','','F','0','system:cteph:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2005,'医疗表单',0,4,'#','menuItem','M','0',NULL,'fa fa-code-fork','admin','2019-08-11 16:23:10','',NULL,''),(2006,'CTEPH调查详情',2000,5,'#','menuItem','F','0','system:cteph:view','#','admin','2019-08-24 14:11:15','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','研发部门','/system/user/resetPwd/1','127.0.0.1','内网IP','{ }',0,NULL,'2019-08-11 16:22:24'),(101,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','研发部门','/system/user/resetPwd','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-08-11 16:22:31'),(102,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"医疗表单\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-code-fork\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-11 16:23:10'),(103,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2000\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"CTEPH调查\" ],\r\n  \"url\" : [ \"/system/cteph\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:cteph:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-11 16:23:25'),(104,'CTEPH调查',1,'com.ruoyi.web.controller.cteph.CtephController.addSave()',1,'admin','研发部门','/system/cteph/add','127.0.0.1','内网IP','{\r\n  \"department\" : [ \"104\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"patientName\" : [ \"张三\" ],\r\n  \"patientSex\" : [ \"0\" ],\r\n  \"patientAddress\" : [ \"北京市海淀区\" ],\r\n  \"birthday\" : [ \"1995-01-30\" ],\r\n  \"height\" : [ \"184\" ],\r\n  \"weight\" : [ \"68\" ],\r\n  \"firsttime\" : [ \"2018-11-04\" ],\r\n  \"specialsigns\" : [ \"\" ],\r\n  \"vtehistory\" : [ \"\" ],\r\n  \"ape\" : [ \"\" ],\r\n  \"ledvt\" : [ \"\" ],\r\n  \"otherthrombus\" : [ \"\" ],\r\n  \"firstvtetime\" : [ \"\" ],\r\n  \"malignanttumor\" : [ \"\" ],\r\n  \"specifictumor\" : [ \"\" ],\r\n  \"malignanttumordate\" : [ \"\" ],\r\n  \"splenectomy\" : [ \"\" ],\r\n  \"splenectormydate\" : [ \"\" ],\r\n  \"pacemaker\" : [ \"\" ],\r\n  \"pacemakerdate\" : [ \"\" ],\r\n  \"atrialhistory\" : [ \"\" ],\r\n  \"atrialhistorydate\" : [ \"\" ],\r\n  \"levv\" : [ \"\" ],\r\n  \"levvdate\" : [ \"\" ],\r\n  \"ibd\" : [ \"\" ],\r\n  \"ibddiagnosis\" : [ \"\" ],\r\n  \"ibddate\" : [ \"\" ],\r\n  \"connectivetissue\" : [ \"\" ],\r\n  \"aas\" : [ \"\" ],\r\n  \"la\" : [ \"\" ],\r\n  \"aclIgg\" : [ \"\" ],\r\n  \"aclIgm\" : [ \"\" ],\r\n  \"lgg\" : [ \"\" ],\r\n  \"lgm\" : [ \"\" ],\r\n  \"sie\" : [ \"\" ],\r\n  \"sjogrens\" : [ \"\" ],\r\n  \"ssclerosis\" : [ \"\" ],\r\n  \"mctd\" : [ \"\" ],\r\n  \"rarthritis\" : [ \"\" ],\r\n  \"uctd\" : [ \"\" ],\r\n  \"octd\" : [ \"\" ],\r\n  \"octdspecific\" : [ \"\" ],\r\n  \"hps\" : [ \"\" ],\r\n  \"hcylevel\" : [ \"\" ],\r\n  \"maximum\" : [ \"\" ],\r\n  \"threeitems\" : [ \"\" ],\r\n  \"at\" : [ \"\" ],\r\n  \"proteins\" : [ \"\" ],\r\n  \"proteinc\" : [ \"\" ],\r\n  \"otherriskjudge\" : [ \"\" ],\r\n  \"otherrisk\" : [ \"\" ],\r\n  \"hypertension\" : [ \"\" ],\r\n  \"coronaryheart\" : [ \"\" ],\r\n  \"diabetes\" : [ \"\" ],\r\n  \"lhfailure\" : [ \"\" ],\r\n  \"lhfailurespecific\" : [ \"\" ],\r\n  \"renalinsufficiency\" : [ \"\" ],\r\n  \"cerebralinfarction\" : [ \"\" ],\r\n  \"copd\" : [ \"\" ],\r\n  \"congenitalheart\" : [ \"\" ],\r\n  \"chdspecific\" : [ \"\" ],\r\n  \"hypothyroidism\" : [ \"\" ],\r\n  \"hyperthyroidism\" : [ \"\" ],\r\n  \"anemia\" : [ \"\" ],\r\n  \"polycythemia\" : [ \"\" ],\r\n  \"eosinophilia\" : [ \"\" ],\r\n  \"plateletlower\" : [ \"\" ],\r\n  \"plateletup\" : [ \"\" ],\r\n  \"othercomplications\" : [ \"\" ],\r\n  \"othercomplicationss\" : [ \"\" ],\r\n  \"cteph\" : [ \"\" ],\r\n  \"sixmwd\" : [ \"\" ],\r\n  \"noreason1\" : [ \"\" ],\r\n  \"walking\" : [ \"\" ],\r\n  \"respirat',0,NULL,'2019-08-11 16:32:10'),(105,'CTEPH调查',3,'com.ruoyi.web.controller.cteph.CtephController.remove()',1,'admin','研发部门','/system/cteph/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"6\" ]\r\n}',0,NULL,'2019-08-11 16:41:25'),(106,'CTEPH调查',2,'com.ruoyi.web.controller.cteph.CtephController.editSave()',1,'admin','研发部门','/system/cteph/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"6\" ],\r\n  \"patientAddress\" : [ \"北京市海淀区\" ],\r\n  \"height\" : [ \"184.0\" ],\r\n  \"weight\" : [ \"68.0\" ],\r\n  \"firsttime\" : [ \"\" ],\r\n  \"specialsigns\" : [ \"\" ],\r\n  \"vtehistory\" : [ \"\" ],\r\n  \"ape\" : [ \"\" ],\r\n  \"ledvt\" : [ \"\" ],\r\n  \"otherthrombus\" : [ \"\" ],\r\n  \"firstvtetime\" : [ \"\" ],\r\n  \"malignanttumor\" : [ \"\" ],\r\n  \"specifictumor\" : [ \"\" ],\r\n  \"malignanttumordate\" : [ \"\" ],\r\n  \"splenectomy\" : [ \"\" ],\r\n  \"splenectormydate\" : [ \"\" ],\r\n  \"pacemaker\" : [ \"\" ],\r\n  \"pacemakerdate\" : [ \"\" ],\r\n  \"atrialhistory\" : [ \"\" ],\r\n  \"atrialhistorydate\" : [ \"\" ],\r\n  \"levv\" : [ \"\" ],\r\n  \"levvdate\" : [ \"\" ],\r\n  \"ibd\" : [ \"\" ],\r\n  \"ibddiagnosis\" : [ \"\" ],\r\n  \"ibddate\" : [ \"\" ],\r\n  \"connectivetissue\" : [ \"\" ],\r\n  \"aas\" : [ \"\" ],\r\n  \"la\" : [ \"\" ],\r\n  \"aclIgg\" : [ \"\" ],\r\n  \"aclIgm\" : [ \"\" ],\r\n  \"lgg\" : [ \"\" ],\r\n  \"lgm\" : [ \"\" ],\r\n  \"sie\" : [ \"\" ],\r\n  \"sjogrens\" : [ \"\" ],\r\n  \"ssclerosis\" : [ \"\" ],\r\n  \"mctd\" : [ \"\" ],\r\n  \"rarthritis\" : [ \"\" ],\r\n  \"uctd\" : [ \"\" ],\r\n  \"octd\" : [ \"\" ],\r\n  \"octdspecific\" : [ \"\" ],\r\n  \"hps\" : [ \"\" ],\r\n  \"hcylevel\" : [ \"\" ],\r\n  \"maximum\" : [ \"\" ],\r\n  \"threeitems\" : [ \"\" ],\r\n  \"at\" : [ \"\" ],\r\n  \"proteins\" : [ \"\" ],\r\n  \"proteinc\" : [ \"\" ],\r\n  \"otherriskjudge\" : [ \"\" ],\r\n  \"otherrisk\" : [ \"\" ],\r\n  \"hypertension\" : [ \"\" ],\r\n  \"coronaryheart\" : [ \"\" ],\r\n  \"diabetes\" : [ \"\" ],\r\n  \"lhfailure\" : [ \"\" ],\r\n  \"lhfailurespecific\" : [ \"\" ],\r\n  \"renalinsufficiency\" : [ \"\" ],\r\n  \"cerebralinfarction\" : [ \"\" ],\r\n  \"copd\" : [ \"\" ],\r\n  \"congenitalheart\" : [ \"\" ],\r\n  \"chdspecific\" : [ \"\" ],\r\n  \"hypothyroidism\" : [ \"\" ],\r\n  \"hyperthyroidism\" : [ \"\" ],\r\n  \"anemia\" : [ \"\" ],\r\n  \"polycythemia\" : [ \"\" ],\r\n  \"eosinophilia\" : [ \"\" ],\r\n  \"plateletlower\" : [ \"\" ],\r\n  \"plateletup\" : [ \"\" ],\r\n  \"othercomplications\" : [ \"\" ],\r\n  \"othercomplicationss\" : [ \"\" ],\r\n  \"cteph\" : [ \"\" ],\r\n  \"noreason1\" : [ \"\" ],\r\n  \"walking\" : [ \"\" ],\r\n  \"respiratory\" : [ \"\" ],\r\n  \"vcmax\" : [ \"\" ],\r\n  \"tlc\" : [ \"\" ],\r\n  \"rv\" : [ \"\" ],\r\n  \"rvtlc\" : [ \"\" ],\r\n  \"fev1\" : [ \"\" ],\r\n  \"fev1fvc\" : [ \"\" ],\r\n  \"fef\" : [ \"\" ],\r',0,NULL,'2019-08-11 17:04:58'),(107,'CTEPH调查',2,'com.ruoyi.web.controller.cteph.CtephController.editSave()',1,'admin','研发部门','/system/cteph/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"6\" ],\r\n  \"patientAddress\" : [ \"北京市海淀区\" ],\r\n  \"height\" : [ \"184.0\" ],\r\n  \"weight\" : [ \"68.0\" ],\r\n  \"firsttime\" : [ \"\" ],\r\n  \"specialsigns\" : [ \"\" ],\r\n  \"vtehistory\" : [ \"\" ],\r\n  \"ape\" : [ \"\" ],\r\n  \"ledvt\" : [ \"\" ],\r\n  \"otherthrombus\" : [ \"\" ],\r\n  \"firstvtetime\" : [ \"\" ],\r\n  \"malignanttumor\" : [ \"\" ],\r\n  \"specifictumor\" : [ \"\" ],\r\n  \"malignanttumordate\" : [ \"\" ],\r\n  \"splenectomy\" : [ \"\" ],\r\n  \"splenectormydate\" : [ \"\" ],\r\n  \"pacemaker\" : [ \"\" ],\r\n  \"pacemakerdate\" : [ \"\" ],\r\n  \"atrialhistory\" : [ \"\" ],\r\n  \"atrialhistorydate\" : [ \"\" ],\r\n  \"levv\" : [ \"\" ],\r\n  \"levvdate\" : [ \"\" ],\r\n  \"ibd\" : [ \"\" ],\r\n  \"ibddiagnosis\" : [ \"\" ],\r\n  \"ibddate\" : [ \"\" ],\r\n  \"connectivetissue\" : [ \"\" ],\r\n  \"aas\" : [ \"\" ],\r\n  \"la\" : [ \"\" ],\r\n  \"aclIgg\" : [ \"\" ],\r\n  \"aclIgm\" : [ \"\" ],\r\n  \"lgg\" : [ \"\" ],\r\n  \"lgm\" : [ \"\" ],\r\n  \"sie\" : [ \"\" ],\r\n  \"sjogrens\" : [ \"\" ],\r\n  \"ssclerosis\" : [ \"\" ],\r\n  \"mctd\" : [ \"\" ],\r\n  \"rarthritis\" : [ \"\" ],\r\n  \"uctd\" : [ \"\" ],\r\n  \"octd\" : [ \"\" ],\r\n  \"octdspecific\" : [ \"\" ],\r\n  \"hps\" : [ \"\" ],\r\n  \"hcylevel\" : [ \"\" ],\r\n  \"maximum\" : [ \"\" ],\r\n  \"threeitems\" : [ \"\" ],\r\n  \"at\" : [ \"\" ],\r\n  \"proteins\" : [ \"\" ],\r\n  \"proteinc\" : [ \"\" ],\r\n  \"otherriskjudge\" : [ \"\" ],\r\n  \"otherrisk\" : [ \"\" ],\r\n  \"hypertension\" : [ \"\" ],\r\n  \"coronaryheart\" : [ \"\" ],\r\n  \"diabetes\" : [ \"\" ],\r\n  \"lhfailure\" : [ \"\" ],\r\n  \"lhfailurespecific\" : [ \"\" ],\r\n  \"renalinsufficiency\" : [ \"\" ],\r\n  \"cerebralinfarction\" : [ \"\" ],\r\n  \"copd\" : [ \"\" ],\r\n  \"congenitalheart\" : [ \"\" ],\r\n  \"chdspecific\" : [ \"\" ],\r\n  \"hypothyroidism\" : [ \"\" ],\r\n  \"hyperthyroidism\" : [ \"\" ],\r\n  \"anemia\" : [ \"\" ],\r\n  \"polycythemia\" : [ \"\" ],\r\n  \"eosinophilia\" : [ \"\" ],\r\n  \"plateletlower\" : [ \"\" ],\r\n  \"plateletup\" : [ \"\" ],\r\n  \"othercomplications\" : [ \"\" ],\r\n  \"othercomplicationss\" : [ \"\" ],\r\n  \"cteph\" : [ \"\" ],\r\n  \"noreason1\" : [ \"\" ],\r\n  \"walking\" : [ \"\" ],\r\n  \"respiratory\" : [ \"\" ],\r\n  \"vcmax\" : [ \"\" ],\r\n  \"tlc\" : [ \"\" ],\r\n  \"rv\" : [ \"\" ],\r\n  \"rvtlc\" : [ \"\" ],\r\n  \"fev1\" : [ \"\" ],\r\n  \"fev1fvc\" : [ \"\" ],\r\n  \"fef\" : [ \"\" ],\r',0,NULL,'2019-08-11 17:05:48'),(108,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()',1,'admin','研发部门','/system/user/changeStatus','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ]\r\n}',1,'不允许修改超级管理员用户','2019-08-18 16:03:22'),(109,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()',1,'admin','研发部门','/system/user/changeStatus','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"2\" ],\r\n  \"status\" : [ \"1\" ]\r\n}',0,NULL,'2019-08-18 16:03:25'),(110,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"若依科技\" ],\r\n  \"deptName\" : [ \"北京总公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"若依\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:49:12'),(111,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"医聚云科技\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"若依\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:49:36'),(112,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"parentName\" : [ \"无\" ],\r\n  \"deptName\" : [ \"医聚云科技\" ],\r\n  \"orderNum\" : [ \"0\" ],\r\n  \"leader\" : [ \"武美奇\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"wmq@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:50:06'),(113,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"医聚云科技\" ],\r\n  \"deptName\" : [ \"北京总公司\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"李康\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"lk@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:50:26'),(114,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"北京总公司\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"陈贵文\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"cgw@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:50:50'),(115,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"104\" ],\r\n  \"parentId\" : [ \"101\" ],\r\n  \"parentName\" : [ \"北京总公司\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"谭江山\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"tjs@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:51:13'),(116,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"102\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"医聚云科技\" ],\r\n  \"deptName\" : [ \"临沂分公司\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"若依\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:53:15'),(117,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"102\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"医聚云科技\" ],\r\n  \"deptName\" : [ \"临沂分公司\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"leader\" : [ \"王凯\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"wk@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-21 20:53:45'),(118,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\r\n  \"deptId\" : [ \"104\" ],\r\n  \"userName\" : [ \"测试\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"18099999999\" ],\r\n  \"email\" : [ \"test@qq.com\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"password\" : [ \"111111\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}',0,NULL,'2019-08-21 20:56:05'),(119,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()',1,'admin','研发部门','/system/user/resetPwd/100','127.0.0.1','内网IP','{ }',0,NULL,'2019-08-21 20:56:09'),(120,'重置密码',2,'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()',1,'admin','研发部门','/system/user/resetPwd','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"password\" : [ \"111111\" ]\r\n}',0,NULL,'2019-08-21 20:56:14'),(121,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"104\" ],\r\n  \"userName\" : [ \"测试\" ],\r\n  \"dept.deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"18099999999\" ],\r\n  \"email\" : [ \"test@qq.com\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\", \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}',0,NULL,'2019-08-21 20:57:08'),(122,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048\" ]\r\n}',0,NULL,'2019-08-21 21:00:00'),(123,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.editSave()',1,'admin','研发部门','/system/user/edit','127.0.0.1','内网IP','{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"104\" ],\r\n  \"userName\" : [ \"测试\" ],\r\n  \"dept.deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"18099999999\" ],\r\n  \"email\" : [ \"test@qq.com\" ],\r\n  \"loginName\" : [ \"test\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}',0,NULL,'2019-08-21 21:01:17'),(124,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-08-21 21:02:39'),(125,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,105\" ]\r\n}',0,NULL,'2019-08-21 21:02:44'),(126,'CTEPH调查',1,'com.ruoyi.web.controller.cteph.CtephController.addSave()',1,'test','市场部门','/system/cteph/add','127.0.0.1','内网IP','{\r\n  \"status\" : [ \"1\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}',0,NULL,'2019-08-21 21:03:27'),(127,'CTEPH调查',3,'com.ruoyi.web.controller.cteph.CtephController.remove()',1,'admin','研发部门','/system/cteph/remove','127.0.0.1','内网IP','{\r\n  \"ids\" : [ \"8\" ]\r\n}',0,NULL,'2019-08-21 21:04:03'),(128,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048\" ]\r\n}',0,NULL,'2019-08-21 21:04:22'),(129,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,2005,2000,2001,2002,2003,2004\" ]\r\n}',0,NULL,'2019-08-21 21:05:53'),(130,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,105\" ]\r\n}',0,NULL,'2019-08-21 21:05:57'),(131,'CTEPH调查',2,'com.ruoyi.web.controller.cteph.CtephController.editSave()',1,'test','市场部门','/system/cteph/edit','127.0.0.1','内网IP','{\r\n  \"id\" : [ \"6\" ],\r\n  \"patientAddress\" : [ \"北京市海淀区\" ],\r\n  \"height\" : [ \"184.0\" ],\r\n  \"weight\" : [ \"80\" ],\r\n  \"firsttime\" : [ \"\" ],\r\n  \"specialsigns\" : [ \"\" ],\r\n  \"vtehistory\" : [ \"\" ],\r\n  \"ape\" : [ \"\" ],\r\n  \"ledvt\" : [ \"\" ],\r\n  \"otherthrombus\" : [ \"\" ],\r\n  \"firstvtetime\" : [ \"\" ],\r\n  \"malignanttumor\" : [ \"\" ],\r\n  \"specifictumor\" : [ \"\" ],\r\n  \"malignanttumordate\" : [ \"\" ],\r\n  \"splenectomy\" : [ \"\" ],\r\n  \"splenectormydate\" : [ \"\" ],\r\n  \"pacemaker\" : [ \"\" ],\r\n  \"pacemakerdate\" : [ \"\" ],\r\n  \"atrialhistory\" : [ \"\" ],\r\n  \"atrialhistorydate\" : [ \"\" ],\r\n  \"levv\" : [ \"\" ],\r\n  \"levvdate\" : [ \"\" ],\r\n  \"ibd\" : [ \"\" ],\r\n  \"ibddiagnosis\" : [ \"\" ],\r\n  \"ibddate\" : [ \"\" ],\r\n  \"connectivetissue\" : [ \"\" ],\r\n  \"aas\" : [ \"\" ],\r\n  \"la\" : [ \"\" ],\r\n  \"aclIgg\" : [ \"\" ],\r\n  \"aclIgm\" : [ \"\" ],\r\n  \"lgg\" : [ \"\" ],\r\n  \"lgm\" : [ \"\" ],\r\n  \"sie\" : [ \"\" ],\r\n  \"sjogrens\" : [ \"\" ],\r\n  \"ssclerosis\" : [ \"\" ],\r\n  \"mctd\" : [ \"\" ],\r\n  \"rarthritis\" : [ \"\" ],\r\n  \"uctd\" : [ \"\" ],\r\n  \"octd\" : [ \"\" ],\r\n  \"octdspecific\" : [ \"\" ],\r\n  \"hps\" : [ \"\" ],\r\n  \"hcylevel\" : [ \"\" ],\r\n  \"maximum\" : [ \"\" ],\r\n  \"threeitems\" : [ \"\" ],\r\n  \"at\" : [ \"\" ],\r\n  \"proteins\" : [ \"\" ],\r\n  \"proteinc\" : [ \"\" ],\r\n  \"otherriskjudge\" : [ \"\" ],\r\n  \"otherrisk\" : [ \"\" ],\r\n  \"hypertension\" : [ \"\" ],\r\n  \"coronaryheart\" : [ \"\" ],\r\n  \"diabetes\" : [ \"\" ],\r\n  \"lhfailure\" : [ \"\" ],\r\n  \"lhfailurespecific\" : [ \"\" ],\r\n  \"renalinsufficiency\" : [ \"\" ],\r\n  \"cerebralinfarction\" : [ \"\" ],\r\n  \"copd\" : [ \"\" ],\r\n  \"congenitalheart\" : [ \"\" ],\r\n  \"chdspecific\" : [ \"\" ],\r\n  \"hypothyroidism\" : [ \"\" ],\r\n  \"hyperthyroidism\" : [ \"\" ],\r\n  \"anemia\" : [ \"\" ],\r\n  \"polycythemia\" : [ \"\" ],\r\n  \"eosinophilia\" : [ \"\" ],\r\n  \"plateletlower\" : [ \"\" ],\r\n  \"plateletup\" : [ \"\" ],\r\n  \"othercomplications\" : [ \"\" ],\r\n  \"othercomplicationss\" : [ \"\" ],\r\n  \"cteph\" : [ \"\" ],\r\n  \"noreason1\" : [ \"\" ],\r\n  \"walking\" : [ \"\" ],\r\n  \"respiratory\" : [ \"\" ],\r\n  \"vcmax\" : [ \"\" ],\r\n  \"tlc\" : [ \"\" ],\r\n  \"rv\" : [ \"\" ],\r\n  \"rvtlc\" : [ \"\" ],\r\n  \"fev1\" : [ \"\" ],\r\n  \"fev1fvc\" : [ \"\" ],\r\n  \"fef\" : [ \"\" ],\r\n ',0,NULL,'2019-08-21 21:06:25'),(132,'CTEPH调查',1,'com.ruoyi.web.controller.cteph.CtephController.addSave()',1,'admin','研发部门','/system/cteph/add','127.0.0.1','内网IP','{\r\n  \"department\" : [ \"104\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"patientName\" : [ \"张三\" ],\r\n  \"patientSex\" : [ \"0\" ],\r\n  \"patientAddress\" : [ \"北京市\" ],\r\n  \"birthday\" : [ \"1969-02-28\" ],\r\n  \"height\" : [ \"166\" ],\r\n  \"weight\" : [ \"65\" ],\r\n  \"firsttime\" : [ \"\" ],\r\n  \"specialsigns\" : [ \"\" ],\r\n  \"vtehistory\" : [ \"\" ],\r\n  \"ape\" : [ \"\" ],\r\n  \"ledvt\" : [ \"\" ],\r\n  \"otherthrombus\" : [ \"\" ],\r\n  \"firstvtetime\" : [ \"\" ],\r\n  \"vterelapse\" : [ \"\" ],\r\n  \"malignanttumor\" : [ \"\" ],\r\n  \"specifictumor\" : [ \"\" ],\r\n  \"malignanttumordate\" : [ \"\" ],\r\n  \"splenectomy\" : [ \"\" ],\r\n  \"splenectormydate\" : [ \"\" ],\r\n  \"pacemaker\" : [ \"\" ],\r\n  \"pacemakerdate\" : [ \"\" ],\r\n  \"atrialhistory\" : [ \"\" ],\r\n  \"atrialhistorydate\" : [ \"\" ],\r\n  \"levv\" : [ \"\" ],\r\n  \"levvdate\" : [ \"\" ],\r\n  \"ibd\" : [ \"\" ],\r\n  \"ibddiagnosis\" : [ \"\" ],\r\n  \"ibddate\" : [ \"\" ],\r\n  \"connectivetissue\" : [ \"\" ],\r\n  \"aas\" : [ \"\" ],\r\n  \"la\" : [ \"\" ],\r\n  \"aclIgg\" : [ \"\" ],\r\n  \"aclIgm\" : [ \"\" ],\r\n  \"lgg\" : [ \"\" ],\r\n  \"lgm\" : [ \"\" ],\r\n  \"sie\" : [ \"\" ],\r\n  \"sjogrens\" : [ \"\" ],\r\n  \"ssclerosis\" : [ \"\" ],\r\n  \"mctd\" : [ \"\" ],\r\n  \"rarthritis\" : [ \"\" ],\r\n  \"uctd\" : [ \"\" ],\r\n  \"octd\" : [ \"\" ],\r\n  \"octdspecific\" : [ \"\" ],\r\n  \"hps\" : [ \"\" ],\r\n  \"hcylevel\" : [ \"\" ],\r\n  \"maximum\" : [ \"\" ],\r\n  \"threeitems\" : [ \"\" ],\r\n  \"at\" : [ \"\" ],\r\n  \"proteins\" : [ \"\" ],\r\n  \"proteinc\" : [ \"\" ],\r\n  \"hat\" : [ \"\" ],\r\n  \"otherriskjudge\" : [ \"\" ],\r\n  \"otherrisk\" : [ \"\" ],\r\n  \"hypertension\" : [ \"\" ],\r\n  \"coronaryheart\" : [ \"\" ],\r\n  \"revascularization\" : [ \"\" ],\r\n  \"diabetes\" : [ \"\" ],\r\n  \"lhfailure\" : [ \"\" ],\r\n  \"lhfailurespecific\" : [ \"\" ],\r\n  \"renalinsufficiency\" : [ \"\" ],\r\n  \"cerebralinfarction\" : [ \"\" ],\r\n  \"copd\" : [ \"\" ],\r\n  \"congenitalheart\" : [ \"\" ],\r\n  \"chdspecific\" : [ \"\" ],\r\n  \"hypothyroidism\" : [ \"\" ],\r\n  \"hyperthyroidism\" : [ \"\" ],\r\n  \"anemia\" : [ \"\" ],\r\n  \"polycythemia\" : [ \"\" ],\r\n  \"eosinophilia\" : [ \"\" ],\r\n  \"plateletlower\" : [ \"\" ],\r\n  \"plateletup\" : [ \"\" ],\r\n  \"othercomplications\" : [ \"\" ],\r\n  \"othercomplicationss\" : [ \"\" ],\r\n  \"cteph\" : [ \"\" ],\r\n  \"sixmwd\" : [ \"',0,NULL,'2019-08-24 12:40:23'),(133,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"CTEPH调查详情\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:cteph:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}',0,NULL,'2019-08-24 14:11:15'),(134,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"roleSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,113,114,1056,1057,1058,1059,1060,115,2005,2000,2001,2002,2003,2004,2006\" ]\r\n}',0,NULL,'2019-08-24 14:20:23');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','admin','2019-08-24 14:20:23','管理员'),(2,'普通角色','common',2,'2','0','0','admin','2018-03-16 11:33:00','admin','2019-08-21 21:05:57','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1),(1,2),(1,3),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,500),(1,501),(1,1000),(1,1001),(1,1002),(1,1003),(1,1004),(1,1005),(1,1006),(1,1007),(1,1008),(1,1009),(1,1010),(1,1011),(1,1012),(1,1013),(1,1014),(1,1015),(1,1016),(1,1017),(1,1018),(1,1019),(1,1020),(1,1021),(1,1022),(1,1023),(1,1024),(1,1025),(1,1026),(1,1027),(1,1028),(1,1029),(1,1030),(1,1031),(1,1032),(1,1033),(1,1034),(1,1035),(1,1036),(1,1037),(1,1038),(1,1039),(1,1040),(1,1041),(1,1042),(1,1043),(1,1044),(1,1045),(1,1046),(1,1047),(1,1048),(1,1049),(1,1050),(1,1051),(1,1052),(1,1053),(1,1054),(1,1055),(1,1056),(1,1057),(1,1058),(1,1059),(1,1060),(1,2000),(1,2001),(1,2002),(1,2003),(1,2004),(1,2005),(1,2006),(2,1),(2,2),(2,100),(2,108),(2,109),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,2000),(2,2001),(2,2002),(2,2003),(2,2004),(2,2005);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','30710afc5ea794642bb8559f31807311','19e631','0','0','127.0.0.1','2019-08-24 14:29:13','admin','2018-03-16 11:33:00','ry','2019-08-24 14:29:12','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','1','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','ry','2019-08-18 16:03:25','测试员'),(100,104,'test','测试','00','test@qq.com','18099999999','0','','8d489329d1ad7370fb5d1208ffa6ca08','dd5ece','0','0','127.0.0.1','2019-08-21 21:06:08','admin','2019-08-21 20:56:05','admin','2019-08-21 21:06:07','');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('0d57bc28-61ab-497d-8e35-2a16c15ce3c6','admin','研发部门','127.0.0.1','内网IP','Chrome','Windows 10','on_line','2019-08-24 14:26:01','2019-08-24 14:28:20',1800000),('4ada8320-1586-4293-98ed-132273a76bb1','admin','研发部门','127.0.0.1','内网IP','Chrome','Windows 10','on_line','2019-08-24 14:28:33','2019-08-24 14:28:37',1800000),('7b5d0bf7-6010-4964-8677-e463f9f0fd83','admin','研发部门','127.0.0.1','内网IP','Microsoft Edge','Windows 10','on_line','2019-08-24 14:29:04','2019-08-24 14:31:42',1800000),('83190f10-20f4-4ea4-a284-6644109ec545','admin','研发部门','127.0.0.1','内网IP','Firefox','Windows 10','on_line','2019-08-24 14:27:19','2019-08-24 14:27:34',1800000),('c4222dfa-82e5-4d54-96ff-cd536ad45e0f','admin','研发部门','127.0.0.1','内网IP','Chrome','Windows 10','on_line','2019-08-24 14:20:28','2019-08-24 14:24:14',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(100,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-24 14:35:06
