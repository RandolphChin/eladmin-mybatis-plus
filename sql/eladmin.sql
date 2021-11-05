/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50733
Source Host           : 127.0.0.1:3306
Source Database       : eladmin

Target Server Type    : MYSQL
Target Server Version : 50733
File Encoding         : 65001

Date: 2021-11-05 09:02:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ali_charger_cron
-- ----------------------------
DROP TABLE IF EXISTS `ali_charger_cron`;
CREATE TABLE `ali_charger_cron` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(6) DEFAULT NULL COMMENT '星期几',
  `cron_open` varchar(35) DEFAULT NULL COMMENT '开机cron表达式',
  `cron_close` varchar(35) DEFAULT NULL COMMENT '关机cron表达式',
  `status` bit(1) DEFAULT NULL COMMENT '是否暂停',
  `job_id` bigint(20) DEFAULT NULL COMMENT '场馆',
  `job_week` varchar(6) DEFAULT NULL COMMENT '场馆与星期数组合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ali_charger_cron
-- ----------------------------
INSERT INTO `ali_charger_cron` VALUES ('218', '周一', '0 0 8 ? * 2', '0 30 17 ? * 2', '\0', '11', '11-2');
INSERT INTO `ali_charger_cron` VALUES ('219', '周二', '0 0 8 ? * 3', '0 30 17 ? * 3', '\0', '11', '11-3');
INSERT INTO `ali_charger_cron` VALUES ('220', '周三', '0 0 8 ? * 4', '0 30 17 ? * 4', '\0', '11', '11-4');
INSERT INTO `ali_charger_cron` VALUES ('221', '周四', '0 0 8 ? * 5', '0 30 17 ? * 5', '\0', '11', '11-5');
INSERT INTO `ali_charger_cron` VALUES ('222', '周五', '0 0 8 ? * 6', '0 30 17 ? * 6', '\0', '11', '11-6');
INSERT INTO `ali_charger_cron` VALUES ('223', '周六', '0 0 8 ? * 7', '0 30 17 ? * 7', '\0', '11', '11-7');
INSERT INTO `ali_charger_cron` VALUES ('224', '周日', '0 0 8 ? * 1', '0 30 17 ? * 1', '\0', '11', '11-1');
INSERT INTO `ali_charger_cron` VALUES ('225', '周一', '0 0 8 ? * 2', '0 30 17 ? * 2', '', '12', '12-2');
INSERT INTO `ali_charger_cron` VALUES ('226', '周二', '0 0 8 ? * 3', '0 30 17 ? * 3', '', '12', '12-3');
INSERT INTO `ali_charger_cron` VALUES ('227', '周三', '0 0 8 ? * 4', '0 30 17 ? * 4', '', '12', '12-4');
INSERT INTO `ali_charger_cron` VALUES ('228', '周四', '0 0 8 ? * 5', '0 30 17 ? * 5', '', '12', '12-5');
INSERT INTO `ali_charger_cron` VALUES ('229', '周五', '0 0 8 ? * 6', '0 30 17 ? * 6', '', '12', '12-6');
INSERT INTO `ali_charger_cron` VALUES ('230', '周六', '0 0 8 ? * 7', '0 30 17 ? * 7', '', '12', '12-7');
INSERT INTO `ali_charger_cron` VALUES ('231', '周日', '0 0 8 ? * 1', '0 30 17 ? * 1', '', '12', '12-1');

-- ----------------------------
-- Table structure for code_column_config
-- ----------------------------
DROP TABLE IF EXISTS `code_column_config`;
CREATE TABLE `code_column_config` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) DEFAULT NULL,
  `column_name` varchar(255) DEFAULT NULL,
  `column_type` varchar(255) DEFAULT NULL,
  `dict_name` varchar(255) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `form_show` bit(1) DEFAULT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `key_type` varchar(255) DEFAULT NULL,
  `list_show` bit(1) DEFAULT NULL,
  `not_null` bit(1) DEFAULT NULL,
  `query_type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `date_annotation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`column_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成字段信息存储';

-- ----------------------------
-- Records of code_column_config
-- ----------------------------
INSERT INTO `code_column_config` VALUES ('191', 'sys_user', 'user_id', 'bigint', null, 'auto_increment', '', null, 'PRI', '', '', null, 'ID', null);
INSERT INTO `code_column_config` VALUES ('192', 'sys_user', 'dept_id', 'bigint', null, '', '', null, 'MUL', '', '\0', null, '部门名称', null);
INSERT INTO `code_column_config` VALUES ('193', 'sys_user', 'username', 'varchar', null, '', '', null, 'UNI', '', '\0', null, '用户名', null);
INSERT INTO `code_column_config` VALUES ('194', 'sys_user', 'nick_name', 'varchar', null, '', '', null, '', '', '\0', null, '昵称', null);
INSERT INTO `code_column_config` VALUES ('195', 'sys_user', 'gender', 'varchar', null, '', '', null, '', '', '\0', null, '性别', null);
INSERT INTO `code_column_config` VALUES ('196', 'sys_user', 'phone', 'varchar', null, '', '', null, '', '', '\0', null, '手机号码', null);
INSERT INTO `code_column_config` VALUES ('197', 'sys_user', 'email', 'varchar', null, '', '', null, 'UNI', '', '\0', null, '邮箱', null);
INSERT INTO `code_column_config` VALUES ('198', 'sys_user', 'avatar_name', 'varchar', null, '', '', null, 'MUL', '', '\0', null, '头像地址', null);
INSERT INTO `code_column_config` VALUES ('199', 'sys_user', 'avatar_path', 'varchar', null, '', '', null, '', '', '\0', null, '头像真实路径', null);
INSERT INTO `code_column_config` VALUES ('200', 'sys_user', 'password', 'varchar', null, '', '', null, '', '', '\0', null, '密码', null);
INSERT INTO `code_column_config` VALUES ('201', 'sys_user', 'is_admin', 'bit', null, '', '', null, '', '', '\0', null, '是否为admin账号', null);
INSERT INTO `code_column_config` VALUES ('202', 'sys_user', 'enabled', 'bigint', null, '', '', null, 'MUL', '', '\0', null, '状态：1启用、0禁用', null);
INSERT INTO `code_column_config` VALUES ('203', 'sys_user', 'create_by', 'varchar', null, '', '', null, '', '', '\0', null, '创建者', null);
INSERT INTO `code_column_config` VALUES ('204', 'sys_user', 'update_by', 'varchar', null, '', '', null, '', '', '\0', null, '更新者', null);
INSERT INTO `code_column_config` VALUES ('205', 'sys_user', 'pwd_reset_time', 'datetime', null, '', '', null, '', '', '\0', null, '修改密码的时间', null);
INSERT INTO `code_column_config` VALUES ('206', 'sys_user', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '创建日期', null);
INSERT INTO `code_column_config` VALUES ('207', 'sys_user', 'update_time', 'datetime', null, '', '', null, '', '', '\0', null, '更新时间', null);
INSERT INTO `code_column_config` VALUES ('208', 'ali_charger_cron', 'id', 'bigint', null, 'auto_increment', '\0', null, 'PRI', '', '\0', null, 'ID', null);
INSERT INTO `code_column_config` VALUES ('209', 'ali_charger_cron', 'name', 'varchar', null, '', '', 'Input', '', '', '\0', 'Like', '星期几', null);
INSERT INTO `code_column_config` VALUES ('210', 'ali_charger_cron', 'cron_open', 'varchar', null, '', '', 'Input', '', '', '\0', 'Like', '开机cron表达式', null);
INSERT INTO `code_column_config` VALUES ('211', 'ali_charger_cron', 'cron_close', 'varchar', null, '', '', 'Input', '', '', '\0', 'Like', '关机cron表达式', null);
INSERT INTO `code_column_config` VALUES ('212', 'ali_charger_cron', 'status', 'bit', null, '', '\0', null, '', '', '\0', null, '是否暂停', null);
INSERT INTO `code_column_config` VALUES ('213', 'ali_charger_cron', 'job_id', 'bigint', null, '', '\0', null, '', '', '\0', null, '场馆', null);
INSERT INTO `code_column_config` VALUES ('214', 'ali_charger_cron', 'job_week', 'varchar', null, '', '\0', null, '', '', '\0', null, '场馆与星期数组合', null);
INSERT INTO `code_column_config` VALUES ('215', 'qrtz_cron_triggers', 'SCHED_NAME', 'varchar', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('216', 'qrtz_cron_triggers', 'TRIGGER_NAME', 'varchar', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('217', 'qrtz_cron_triggers', 'TRIGGER_GROUP', 'varchar', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('218', 'qrtz_cron_triggers', 'CRON_EXPRESSION', 'varchar', null, '', '', null, '', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('219', 'qrtz_cron_triggers', 'TIME_ZONE_ID', 'varchar', null, '', '\0', null, '', '', '\0', null, '', null);

-- ----------------------------
-- Table structure for code_gen_config
-- ----------------------------
DROP TABLE IF EXISTS `code_gen_config`;
CREATE TABLE `code_gen_config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`config_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成器配置';

-- ----------------------------
-- Records of code_gen_config
-- ----------------------------
INSERT INTO `code_gen_config` VALUES ('7', 'sys_user', 'wwe', '', 'eladmin-system', 'me.zhengjie.modules.quartz', 'D:\\project\\eladmin-plus\\eladmin-ui\\src\\views\\system\\charger', 'D:\\project\\eladmin-plus\\eladmin-ui\\src\\api', 'ali_', 'Quartz');
INSERT INTO `code_gen_config` VALUES ('8', 'ali_charger_cron', 'randy', '', 'eladmin-system', 'me.zhengjie.modules.quartz', 'D:\\project\\eladmin-plus\\eladmin-ui\\src\\views\\system\\charger', 'D:\\project\\eladmin-plus\\eladmin-ui\\src\\api', 'ali_', 'Quartz');
INSERT INTO `code_gen_config` VALUES ('9', 'qrtz_cron_triggers', 'wwe', '', 'eladmin-system', 'me.zhengjie.modules.quartz', 'C:\\Users\\Administrator\\Desktop', 'C:\\Users\\Administrator\\Desktop\\', 'qrtz_', 'CronTrigger');

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app` (
  `app_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) DEFAULT NULL COMMENT '备份路径',
  `port` int(255) DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) DEFAULT NULL COMMENT '部署脚本',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='应用管理';

-- ----------------------------
-- Records of mnt_app
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database` (
  `db_id` varchar(50) NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) NOT NULL COMMENT '账号',
  `pwd` varchar(255) NOT NULL COMMENT '密码',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`db_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据库管理';

-- ----------------------------
-- Records of mnt_database
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy` (
  `deploy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `app_id` bigint(20) DEFAULT NULL COMMENT '应用编号',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`deploy_id`) USING BTREE,
  KEY `FK6sy157pseoxx4fmcqr1vnvvhy` (`app_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部署管理';

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history` (
  `history_id` varchar(50) NOT NULL COMMENT 'ID',
  `app_name` varchar(255) NOT NULL COMMENT '应用名称',
  `deploy_date` datetime NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) NOT NULL COMMENT '部署用户',
  `ip` varchar(20) NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint(20) DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部署历史管理';

-- ----------------------------
-- Records of mnt_deploy_history
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server` (
  `deploy_id` bigint(20) NOT NULL COMMENT '部署ID',
  `server_id` bigint(20) NOT NULL COMMENT '服务ID',
  PRIMARY KEY (`deploy_id`,`server_id`) USING BTREE,
  KEY `FKeaaha7jew9a02b3bk9ghols53` (`server_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='应用与服务器关联';

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server` (
  `server_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(50) DEFAULT NULL COMMENT '账号',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `port` int(11) DEFAULT NULL COMMENT '端口',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`server_id`) USING BTREE,
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='服务器管理';

-- ----------------------------
-- Records of mnt_server
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(190) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('SsmScheduler', 'test', 'default', '0 0/1 * * * ? *', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `INSTANCE_NAME` varchar(190) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(190) DEFAULT NULL,
  `JOB_GROUP` varchar(190) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(190) NOT NULL,
  `JOB_GROUP` varchar(190) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('SsmScheduler', 'test', 'default', null, 'me.zhengjie.modules.quartz.task.TestTask', '0', '0', '0', '0', 0x230D0A23467269204E6F762030352030383A34363A35362043535420323032310D0A);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('SsmScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('SsmScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(190) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('SsmScheduler', 'PC-20210322QHBE1636073795397', '1636074144535', '2000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `JOB_NAME` varchar(190) NOT NULL,
  `JOB_GROUP` varchar(190) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('SsmScheduler', 'test', 'default', 'test', 'default', '{\"username\":\"tester\"}', '1636074180000', '1636074120000', '5', 'WAITING', 'CRON', '1636073216000', '0', null, '2', 0x230D0A23467269204E6F762030352030383A34363A35362043535420323032310D0A757365726E616D653D7465737465720D0A);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级部门',
  `sub_count` int(5) DEFAULT '0' COMMENT '子部门数目',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `dept_sort` int(5) DEFAULT '999' COMMENT '排序',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  KEY `inx_pid` (`pid`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('2', '7', '1', '研发部', '3', '', 'admin', 'admin', '2019-03-25 09:15:32', '2020-08-02 14:48:47');
INSERT INTO `sys_dept` VALUES ('5', '7', '0', '运维部', '4', '', 'admin', 'admin', '2019-03-25 09:20:44', '2020-05-17 14:27:27');
INSERT INTO `sys_dept` VALUES ('6', '8', '0', '测试部', '6', '', 'admin', 'admin', '2019-03-25 09:52:18', '2020-06-08 11:59:21');
INSERT INTO `sys_dept` VALUES ('7', null, '2', '华南分部', '0', '', 'admin', 'admin', '2019-03-25 11:04:50', '2020-06-08 12:08:56');
INSERT INTO `sys_dept` VALUES ('8', null, '2', '华北分部', '1', '', 'admin', 'admin', '2019-03-25 11:04:53', '2020-05-14 12:54:00');
INSERT INTO `sys_dept` VALUES ('15', '8', '0', 'UI部门', '7', '', 'admin', 'admin', '2020-05-13 22:56:53', '2020-05-14 12:54:13');
INSERT INTO `sys_dept` VALUES ('17', '2', '0', '研发一组', '999', '', 'admin', 'admin', '2020-08-02 14:49:07', '2020-08-02 14:49:07');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '字典名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', 'user_status', '用户状态', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict` VALUES ('4', 'dept_status', '部门状态', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict` VALUES ('5', 'job_status', '岗位状态', null, null, '2019-10-27 20:31:36', null);

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail` (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint(11) DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) NOT NULL COMMENT '字典标签',
  `value` varchar(255) NOT NULL COMMENT '字典值',
  `dict_sort` int(5) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES ('1', '1', '激活', 'true', '1', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict_detail` VALUES ('2', '1', '禁用', 'false', '2', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('3', '4', '启用', 'true', '1', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('4', '4', '停用', 'false', '2', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict_detail` VALUES ('5', '5', '启用', 'true', '1', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('6', '5', '停用', 'false', '2', null, null, '2019-10-27 20:31:36', null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `job_sort` int(5) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='岗位';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('8', '人事专员', '', '3', null, null, '2019-03-29 14:52:28', null);
INSERT INTO `sys_job` VALUES ('10', '产品经理', '', '4', null, null, '2019-03-29 14:55:51', null);
INSERT INTO `sys_job` VALUES ('11', '全栈开发', '', '2', null, 'admin', '2019-03-31 13:39:30', '2020-05-05 11:33:43');
INSERT INTO `sys_job` VALUES ('12', '软件测试', '', '5', null, 'admin', '2019-03-31 13:39:43', '2020-05-10 19:56:26');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text,
  `request_ip` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `log_create_time_index` (`create_time`),
  KEY `inx_log_type` (`log_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3561 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('3537', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"5\",\"uuid\":\"code-key-f817177aeda940e8bcc0e52ecec2c97b\",\"password\":\"dzpbZQqBWVyRrzBRsOa04l1qDasPZjQRFVnX0jIcelI5UhUKPFqknsQaoaq5mVvEHs9S1XVNwOdAwxFlwsQ/4A==\",\"username\":\"admin\"}', '192.168.0.128', '1898', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 16:56:30');
INSERT INTO `sys_log` VALUES ('3538', '新增菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{\"cache\":false,\"hidden\":false,\"pid\":1,\"permission\":\"quartz:list\",\"updateTime\":1635930283592,\"type\":1,\"title\":\"Timer\",\"subCount\":0,\"path\":\"quartz\",\"component\":\"system/quartz/index\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1635930283592,\"iFrame\":false,\"id\":118,\"componentName\":\"Quartz\",\"menuSort\":9}', '192.168.0.128', '53', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:04:45');
INSERT INTO `sys_log` VALUES ('3539', '修改角色菜单', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{\"id\":1,\"menus\":[{\"id\":97},{\"id\":98},{\"id\":102},{\"id\":103},{\"id\":104},{\"id\":105},{\"id\":106},{\"id\":107},{\"id\":108},{\"id\":109},{\"id\":110},{\"id\":111},{\"id\":112},{\"id\":113},{\"id\":114},{\"id\":116},{\"id\":118},{\"id\":1},{\"id\":2},{\"id\":3},{\"id\":5},{\"id\":6},{\"id\":7},{\"id\":9},{\"id\":10},{\"id\":11},{\"id\":14},{\"id\":15},{\"id\":18},{\"id\":19},{\"id\":21},{\"id\":22},{\"id\":23},{\"id\":24},{\"id\":27},{\"id\":28},{\"id\":30},{\"id\":32},{\"id\":33},{\"id\":34},{\"id\":35},{\"id\":36},{\"id\":37},{\"id\":38},{\"id\":39},{\"id\":41},{\"id\":44},{\"id\":45},{\"id\":46},{\"id\":48},{\"id\":49},{\"id\":50},{\"id\":52},{\"id\":53},{\"id\":54},{\"id\":56},{\"id\":57},{\"id\":58},{\"id\":60},{\"id\":61},{\"id\":62},{\"id\":64},{\"id\":65},{\"id\":66},{\"id\":73},{\"id\":74},{\"id\":75},{\"id\":77},{\"id\":78},{\"id\":79},{\"id\":80},{\"id\":82},{\"id\":83},{\"id\":90},{\"id\":92},{\"id\":93},{\"id\":94}]}', '192.168.0.128', '53', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:04:53');
INSERT INTO `sys_log` VALUES ('3540', '修改菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{\"cache\":false,\"hidden\":false,\"pid\":1,\"permission\":\"quartz:list\",\"updateTime\":1635930284000,\"type\":1,\"title\":\"Timer\",\"subCount\":0,\"path\":\"charger\",\"component\":\"system/charger/index\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1635930284000,\"iFrame\":false,\"id\":118,\"componentName\":\"Charger\",\"menuSort\":9}', '192.168.0.128', '28', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:05:41');
INSERT INTO `sys_log` VALUES ('3541', '查询Quartz', 'INFO', 'me.zhengjie.modules.quartz.rest.ChargerCronController.query()', '', '192.168.0.128', '10', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:05:48');
INSERT INTO `sys_log` VALUES ('3542', '查询Quartz', 'INFO', 'me.zhengjie.modules.quartz.rest.ChargerCronController.query()', '', '192.168.0.128', '3', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:06:26');
INSERT INTO `sys_log` VALUES ('3543', '查询Quartz', 'INFO', 'me.zhengjie.modules.quartz.rest.ChargerCronController.query()', '', '192.168.0.128', '86982', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:08:43');
INSERT INTO `sys_log` VALUES ('3544', '查询Quartz', 'INFO', 'me.zhengjie.modules.quartz.rest.ChargerCronController.query()', '', '192.168.0.128', '8', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:08:50');
INSERT INTO `sys_log` VALUES ('3545', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"-1\",\"uuid\":\"code-key-5c6a20c8385f4253909faed6a0b5ffac\",\"password\":\"STgQaJgW25N4pb3qfhEuyW2kOCzmd6QerVHWiTbybPUcdSNHQPBH8W6OqGGdyzN9ile7vaDLTVfe02oyGa1YwA==\",\"username\":\"admin\"}', '192.168.0.128', '183', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:15:01');
INSERT INTO `sys_log` VALUES ('3546', '查询Quartz', 'INFO', 'me.zhengjie.modules.quartz.rest.ChargerCronController.query()', '', '192.168.0.128', '11', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:15:02');
INSERT INTO `sys_log` VALUES ('3547', '查询Quartz', 'INFO', 'me.zhengjie.modules.quartz.rest.ChargerCronController.query()', '', '192.168.0.128', '6', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:15:18');
INSERT INTO `sys_log` VALUES ('3548', '修改定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.update()', '{\"jobName\":\"测试3\",\"pauseAfterFailure\":true,\"methodName\":\"run2\",\"description\":\"测试3\",\"updateTime\":1635931056653,\"isPause\":true,\"cronExpression\":\"0/25 * * * * ?\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1588682141000,\"beanName\":\"testTask\",\"id\":6,\"personInCharge\":\"Zheng Jie\",\"email\":\"\"}', '192.168.0.128', '5', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:17:37');
INSERT INTO `sys_log` VALUES ('3549', '更改定时任务状态', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.update()', '', '192.168.0.128', '19', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-03 17:17:41');
INSERT INTO `sys_log` VALUES ('3550', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"13\",\"uuid\":\"code-key-7a3ea92ee3164963a79f6663f092cea3\",\"password\":\"UD0c66RZhH+C5ywRwUBiNwSWLKbjNUpiFPYhGxCh/RmCGyr1STef4gbtF/li0G2ct9XraHt40omrCAV9DN3b3g==\",\"username\":\"admin\"}', '192.168.0.128', '1764', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 10:02:38');
INSERT INTO `sys_log` VALUES ('3551', '删除菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '[118]', '192.168.0.128', '60', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 14:06:30');
INSERT INTO `sys_log` VALUES ('3552', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"35\",\"uuid\":\"code-key-ddefb3f0313a4480a797ad4bb21919c9\",\"password\":\"M5psp3IaCVJjUNNfCk95tjQH6S8yQKaHZgCI3V30XBW5VxImaAUHBmPmOZEysLyicQwCP9g/nafEzSW+uBE8KA==\",\"username\":\"admin\"}', '192.168.0.128', '1711', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 15:23:22');
INSERT INTO `sys_log` VALUES ('3553', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"8\",\"uuid\":\"code-key-95f0376e23504056950840524d241910\",\"password\":\"b9XyNK2DPf1MuPZiFWBMIU3EnE9GqQmBjRT+Znmln6dnMHWLM3rHQ/KGVWoe1+gObPmQ7e4Vb3gGtonQ6vQ0Ig==\",\"username\":\"admin\"}', '192.168.0.128', '79', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 15:24:37');
INSERT INTO `sys_log` VALUES ('3554', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"16\",\"uuid\":\"code-key-a15ba46c7add4ba79ad26c7503032438\",\"password\":\"V7ARFDg1e6MzCMKdtaGY0fuMARu0UPyX0ez9xRF+0vNGUsQmw07j+6UHubCZhKQALwrFNC6ggUjUoY4Cuv5T2w==\",\"username\":\"admin\"}', '192.168.0.128', '1660', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 15:29:47');
INSERT INTO `sys_log` VALUES ('3555', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"45\",\"uuid\":\"code-key-1b132dec358043e68aecf05fd542db42\",\"password\":\"rJ42pUf5F4eGg83kJGmy+L/I17eyys2Az6+l5exkuGDUF0eZ7tK488ZdiY84fnIgwHtWKGRcikkQHQ1zwriFQQ==\",\"username\":\"admin\"}', '192.168.0.128', '1720', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 15:44:20');
INSERT INTO `sys_log` VALUES ('3556', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"3\",\"uuid\":\"code-key-b1daa510e802432bb4b14c550ef9fb9a\",\"password\":\"So25KZsEOqWcz+OfMgrcs7e9mGE9aULosQyRZiJWB+WGKM9xx6RkJ8rqir52x3PHHOWVnCkfJXSfHihJrvmqCw==\",\"username\":\"admin\"}', '192.168.0.128', '1675', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 15:51:37');
INSERT INTO `sys_log` VALUES ('3557', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"9\",\"uuid\":\"code-key-66ef6754f734416a8fd96c8bf17036a9\",\"password\":\"a9/ZIn1kzyfPwKAqKBxaPwXCX/3eUdpNGKDZxy6+KJrtKcAGnmXnU8XunXNz0HY7QYhpVstwkqA0Fg/VnxUhtQ==\",\"username\":\"admin\"}', '192.168.0.128', '1772', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 16:19:44');
INSERT INTO `sys_log` VALUES ('3558', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"12\",\"uuid\":\"code-key-ff6e2225e347413ebc728535955bb702\",\"password\":\"M1OEaCjIsgO4X4nhKIHeXrn9sHZPmwKtcVHpV0CfGShfdwQUS6gJl5ReS1GvEixh4Jn77Sx6b2oJdqjQ/NOASQ==\",\"username\":\"admin\"}', '192.168.0.128', '1828', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-04 16:55:29');
INSERT INTO `sys_log` VALUES ('3559', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"3\",\"uuid\":\"code-key-44b37e6502794927b776a333e71cb746\",\"password\":\"ZWBYA9QggYDvbeiPv0tGyrpL5xLYTVdZMuYH62+x5eo6u4ztyv1LBMOwdD+Nxa8g5j5AgE5K34NWDqpi7LfwOQ==\",\"username\":\"admin\"}', '192.168.0.128', '2026', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-05 08:37:59');
INSERT INTO `sys_log` VALUES ('3560', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{\"code\":\"-3\",\"uuid\":\"code-key-5d023d93237b405ab96444666ffba15a\",\"password\":\"QKlv3cs4rW2vhQqtipzhXZKFroj4lTDxlN/NP/N/EMWzoWwbhLhz9anabXOk6U8elsnL7dGIQbQFavkS5/bF5Q==\",\"username\":\"admin\"}', '192.168.0.128', '1652', 'admin', '内网IP', 'Firefox 93.0', null, '2021-11-05 08:57:14');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int(5) DEFAULT '0' COMMENT '子菜单数目',
  `type` int(11) DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(255) DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `menu_sort` int(5) DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `path` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE KEY `uniq_title` (`title`),
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', null, '8', '0', '系统管理', null, null, '1', 'system', 'system', '\0', '\0', '\0', null, null, 'admin', '2018-12-18 15:11:29', '2021-11-04 14:06:28');
INSERT INTO `sys_menu` VALUES ('2', '1', '3', '1', '用户管理', 'User', 'system/user/index', '2', 'peoples', 'user', '\0', '\0', '\0', 'user:list', null, null, '2018-12-18 15:14:44', null);
INSERT INTO `sys_menu` VALUES ('3', '1', '3', '1', '角色管理', 'Role', 'system/role/index', '3', 'role', 'role', '\0', '\0', '\0', 'roles:list', null, null, '2018-12-18 15:16:07', null);
INSERT INTO `sys_menu` VALUES ('5', '1', '3', '1', '菜单管理', 'Menu', 'system/menu/index', '5', 'menu', 'menu', '\0', '\0', '\0', 'menu:list', null, null, '2018-12-18 15:17:28', null);
INSERT INTO `sys_menu` VALUES ('6', null, '5', '0', '系统监控', null, null, '10', 'monitor', 'monitor', '\0', '\0', '\0', null, null, null, '2018-12-18 15:17:48', null);
INSERT INTO `sys_menu` VALUES ('7', '6', '0', '1', '操作日志', 'Log', 'monitor/log/index', '11', 'log', 'logs', '\0', '', '\0', null, null, 'admin', '2018-12-18 15:18:26', '2020-06-06 13:11:57');
INSERT INTO `sys_menu` VALUES ('9', '6', '0', '1', 'SQL监控', 'Sql', 'monitor/sql/index', '18', 'sqlMonitor', 'druid', '\0', '\0', '\0', null, null, null, '2018-12-18 15:19:34', null);
INSERT INTO `sys_menu` VALUES ('10', null, '5', '0', '组件管理', null, null, '50', 'zujian', 'components', '\0', '\0', '\0', null, null, null, '2018-12-19 13:38:16', null);
INSERT INTO `sys_menu` VALUES ('11', '10', '0', '1', '图标库', 'Icons', 'components/icons/index', '51', 'icon', 'icon', '\0', '\0', '\0', null, null, null, '2018-12-19 13:38:49', null);
INSERT INTO `sys_menu` VALUES ('14', '36', '0', '1', '邮件工具', 'Email', 'tools/email/index', '35', 'email', 'email', '\0', '\0', '\0', null, null, null, '2018-12-27 10:13:09', null);
INSERT INTO `sys_menu` VALUES ('15', '10', '0', '1', '富文本', 'Editor', 'components/Editor', '52', 'fwb', 'tinymce', '\0', '\0', '\0', null, null, null, '2018-12-27 11:58:25', null);
INSERT INTO `sys_menu` VALUES ('18', '36', '3', '1', '存储管理', 'Storage', 'tools/storage/index', '34', 'qiniu', 'storage', '\0', '\0', '\0', 'storage:list', null, null, '2018-12-31 11:12:15', null);
INSERT INTO `sys_menu` VALUES ('19', '36', '0', '1', '支付宝工具', 'AliPay', 'tools/aliPay/index', '37', 'alipay', 'aliPay', '\0', '\0', '\0', null, null, null, '2018-12-31 14:52:38', null);
INSERT INTO `sys_menu` VALUES ('21', null, '2', '0', '多级菜单', null, '', '900', 'menu', 'nested', '\0', '\0', '\0', null, null, 'admin', '2019-01-04 16:22:03', '2020-06-21 17:27:35');
INSERT INTO `sys_menu` VALUES ('22', '21', '2', '0', '二级菜单1', null, '', '999', 'menu', 'menu1', '\0', '\0', '\0', null, null, 'admin', '2019-01-04 16:23:29', '2020-06-21 17:27:20');
INSERT INTO `sys_menu` VALUES ('23', '21', '0', '1', '二级菜单2', null, 'nested/menu2/index', '999', 'menu', 'menu2', '\0', '\0', '\0', null, null, null, '2019-01-04 16:23:57', null);
INSERT INTO `sys_menu` VALUES ('24', '22', '0', '1', '三级菜单1', 'Test', 'nested/menu1/menu1-1', '999', 'menu', 'menu1-1', '\0', '\0', '\0', null, null, null, '2019-01-04 16:24:48', null);
INSERT INTO `sys_menu` VALUES ('27', '22', '0', '1', '三级菜单2', null, 'nested/menu1/menu1-2', '999', 'menu', 'menu1-2', '\0', '\0', '\0', null, null, null, '2019-01-07 17:27:32', null);
INSERT INTO `sys_menu` VALUES ('28', '1', '3', '1', '任务调度', 'Timing', 'system/timing/index', '999', 'timing', 'timing', '\0', '\0', '\0', 'timing:list', null, null, '2019-01-07 20:34:40', null);
INSERT INTO `sys_menu` VALUES ('30', '36', '0', '1', '代码生成', 'GeneratorIndex', 'generator/index', '32', 'dev', 'generator', '\0', '', '\0', null, null, null, '2019-01-11 15:45:55', null);
INSERT INTO `sys_menu` VALUES ('32', '6', '0', '1', '异常日志', 'ErrorLog', 'monitor/log/errorLog', '12', 'error', 'errorLog', '\0', '\0', '\0', null, null, null, '2019-01-13 13:49:03', null);
INSERT INTO `sys_menu` VALUES ('33', '10', '0', '1', 'Markdown', 'Markdown', 'components/MarkDown', '53', 'markdown', 'markdown', '\0', '\0', '\0', null, null, null, '2019-03-08 13:46:44', null);
INSERT INTO `sys_menu` VALUES ('34', '10', '0', '1', 'Yaml编辑器', 'YamlEdit', 'components/YamlEdit', '54', 'dev', 'yaml', '\0', '\0', '\0', null, null, null, '2019-03-08 15:49:40', null);
INSERT INTO `sys_menu` VALUES ('35', '1', '3', '1', '部门管理', 'Dept', 'system/dept/index', '6', 'dept', 'dept', '\0', '\0', '\0', 'dept:list', null, null, '2019-03-25 09:46:00', null);
INSERT INTO `sys_menu` VALUES ('36', null, '7', '0', '系统工具', null, '', '30', 'sys-tools', 'sys-tools', '\0', '\0', '\0', null, null, null, '2019-03-29 10:57:35', null);
INSERT INTO `sys_menu` VALUES ('37', '1', '3', '1', '岗位管理', 'Job', 'system/job/index', '7', 'Steve-Jobs', 'job', '\0', '\0', '\0', 'job:list', null, null, '2019-03-29 13:51:18', null);
INSERT INTO `sys_menu` VALUES ('38', '36', '0', '1', '接口文档', 'Swagger', 'tools/swagger/index', '36', 'swagger', 'swagger2', '\0', '\0', '\0', null, null, null, '2019-03-29 19:57:53', null);
INSERT INTO `sys_menu` VALUES ('39', '1', '3', '1', '字典管理', 'Dict', 'system/dict/index', '8', 'dictionary', 'dict', '\0', '\0', '\0', 'dict:list', null, null, '2019-04-10 11:49:04', null);
INSERT INTO `sys_menu` VALUES ('41', '6', '0', '1', '在线用户', 'OnlineUser', 'monitor/online/index', '10', 'Steve-Jobs', 'online', '\0', '\0', '\0', null, null, null, '2019-10-26 22:08:43', null);
INSERT INTO `sys_menu` VALUES ('44', '2', '0', '2', '用户新增', null, '', '2', '', '', '\0', '\0', '\0', 'user:add', null, null, '2019-10-29 10:59:46', null);
INSERT INTO `sys_menu` VALUES ('45', '2', '0', '2', '用户编辑', null, '', '3', '', '', '\0', '\0', '\0', 'user:edit', null, null, '2019-10-29 11:00:08', null);
INSERT INTO `sys_menu` VALUES ('46', '2', '0', '2', '用户删除', null, '', '4', '', '', '\0', '\0', '\0', 'user:del', null, null, '2019-10-29 11:00:23', null);
INSERT INTO `sys_menu` VALUES ('48', '3', '0', '2', '角色创建', null, '', '2', '', '', '\0', '\0', '\0', 'roles:add', null, null, '2019-10-29 12:45:34', null);
INSERT INTO `sys_menu` VALUES ('49', '3', '0', '2', '角色修改', null, '', '3', '', '', '\0', '\0', '\0', 'roles:edit', null, null, '2019-10-29 12:46:16', null);
INSERT INTO `sys_menu` VALUES ('50', '3', '0', '2', '角色删除', null, '', '4', '', '', '\0', '\0', '\0', 'roles:del', null, null, '2019-10-29 12:46:51', null);
INSERT INTO `sys_menu` VALUES ('52', '5', '0', '2', '菜单新增', null, '', '2', '', '', '\0', '\0', '\0', 'menu:add', null, null, '2019-10-29 12:55:07', null);
INSERT INTO `sys_menu` VALUES ('53', '5', '0', '2', '菜单编辑', null, '', '3', '', '', '\0', '\0', '\0', 'menu:edit', null, null, '2019-10-29 12:55:40', null);
INSERT INTO `sys_menu` VALUES ('54', '5', '0', '2', '菜单删除', null, '', '4', '', '', '\0', '\0', '\0', 'menu:del', null, null, '2019-10-29 12:56:00', null);
INSERT INTO `sys_menu` VALUES ('56', '35', '0', '2', '部门新增', null, '', '2', '', '', '\0', '\0', '\0', 'dept:add', null, null, '2019-10-29 12:57:09', null);
INSERT INTO `sys_menu` VALUES ('57', '35', '0', '2', '部门编辑', null, '', '3', '', '', '\0', '\0', '\0', 'dept:edit', null, null, '2019-10-29 12:57:27', null);
INSERT INTO `sys_menu` VALUES ('58', '35', '0', '2', '部门删除', null, '', '4', '', '', '\0', '\0', '\0', 'dept:del', null, null, '2019-10-29 12:57:41', null);
INSERT INTO `sys_menu` VALUES ('60', '37', '0', '2', '岗位新增', null, '', '2', '', '', '\0', '\0', '\0', 'job:add', null, null, '2019-10-29 12:58:27', null);
INSERT INTO `sys_menu` VALUES ('61', '37', '0', '2', '岗位编辑', null, '', '3', '', '', '\0', '\0', '\0', 'job:edit', null, null, '2019-10-29 12:58:45', null);
INSERT INTO `sys_menu` VALUES ('62', '37', '0', '2', '岗位删除', null, '', '4', '', '', '\0', '\0', '\0', 'job:del', null, null, '2019-10-29 12:59:04', null);
INSERT INTO `sys_menu` VALUES ('64', '39', '0', '2', '字典新增', null, '', '2', '', '', '\0', '\0', '\0', 'dict:add', null, null, '2019-10-29 13:00:17', null);
INSERT INTO `sys_menu` VALUES ('65', '39', '0', '2', '字典编辑', null, '', '3', '', '', '\0', '\0', '\0', 'dict:edit', null, null, '2019-10-29 13:00:42', null);
INSERT INTO `sys_menu` VALUES ('66', '39', '0', '2', '字典删除', null, '', '4', '', '', '\0', '\0', '\0', 'dict:del', null, null, '2019-10-29 13:00:59', null);
INSERT INTO `sys_menu` VALUES ('73', '28', '0', '2', '任务新增', null, '', '2', '', '', '\0', '\0', '\0', 'timing:add', null, null, '2019-10-29 13:07:28', null);
INSERT INTO `sys_menu` VALUES ('74', '28', '0', '2', '任务编辑', null, '', '3', '', '', '\0', '\0', '\0', 'timing:edit', null, null, '2019-10-29 13:07:41', null);
INSERT INTO `sys_menu` VALUES ('75', '28', '0', '2', '任务删除', null, '', '4', '', '', '\0', '\0', '\0', 'timing:del', null, null, '2019-10-29 13:07:54', null);
INSERT INTO `sys_menu` VALUES ('77', '18', '0', '2', '上传文件', null, '', '2', '', '', '\0', '\0', '\0', 'storage:add', null, null, '2019-10-29 13:09:09', null);
INSERT INTO `sys_menu` VALUES ('78', '18', '0', '2', '文件编辑', null, '', '3', '', '', '\0', '\0', '\0', 'storage:edit', null, null, '2019-10-29 13:09:22', null);
INSERT INTO `sys_menu` VALUES ('79', '18', '0', '2', '文件删除', null, '', '4', '', '', '\0', '\0', '\0', 'storage:del', null, null, '2019-10-29 13:09:34', null);
INSERT INTO `sys_menu` VALUES ('80', '6', '0', '1', '服务监控', 'ServerMonitor', 'monitor/server/index', '14', 'codeConsole', 'server', '\0', '\0', '\0', 'monitor:list', null, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO `sys_menu` VALUES ('82', '36', '0', '1', '生成配置', 'GeneratorConfig', 'generator/config', '33', 'dev', 'generator/config/:tableName', '\0', '', '', '', null, null, '2019-11-17 20:08:56', null);
INSERT INTO `sys_menu` VALUES ('83', '10', '0', '1', '图表库', 'Echarts', 'components/Echarts', '50', 'chart', 'echarts', '\0', '', '\0', '', null, null, '2019-11-21 09:04:32', null);
INSERT INTO `sys_menu` VALUES ('90', null, '5', '1', '运维管理', 'Mnt', '', '20', 'mnt', 'mnt', '\0', '\0', '\0', null, null, null, '2019-11-09 10:31:08', null);
INSERT INTO `sys_menu` VALUES ('92', '90', '3', '1', '服务器', 'ServerDeploy', 'mnt/server/index', '22', 'server', 'mnt/serverDeploy', '\0', '\0', '\0', 'serverDeploy:list', null, null, '2019-11-10 10:29:25', null);
INSERT INTO `sys_menu` VALUES ('93', '90', '3', '1', '应用管理', 'App', 'mnt/app/index', '23', 'app', 'mnt/app', '\0', '\0', '\0', 'app:list', null, null, '2019-11-10 11:05:16', null);
INSERT INTO `sys_menu` VALUES ('94', '90', '3', '1', '部署管理', 'Deploy', 'mnt/deploy/index', '24', 'deploy', 'mnt/deploy', '\0', '\0', '\0', 'deploy:list', null, null, '2019-11-10 15:56:55', null);
INSERT INTO `sys_menu` VALUES ('97', '90', '1', '1', '部署备份', 'DeployHistory', 'mnt/deployHistory/index', '25', 'backup', 'mnt/deployHistory', '\0', '\0', '\0', 'deployHistory:list', null, null, '2019-11-10 16:49:44', null);
INSERT INTO `sys_menu` VALUES ('98', '90', '3', '1', '数据库管理', 'Database', 'mnt/database/index', '26', 'database', 'mnt/database', '\0', '\0', '\0', 'database:list', null, null, '2019-11-10 20:40:04', null);
INSERT INTO `sys_menu` VALUES ('102', '97', '0', '2', '删除', null, '', '999', '', '', '\0', '\0', '\0', 'deployHistory:del', null, null, '2019-11-17 09:32:48', null);
INSERT INTO `sys_menu` VALUES ('103', '92', '0', '2', '服务器新增', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:add', null, null, '2019-11-17 11:08:33', null);
INSERT INTO `sys_menu` VALUES ('104', '92', '0', '2', '服务器编辑', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:edit', null, null, '2019-11-17 11:08:57', null);
INSERT INTO `sys_menu` VALUES ('105', '92', '0', '2', '服务器删除', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:del', null, null, '2019-11-17 11:09:15', null);
INSERT INTO `sys_menu` VALUES ('106', '93', '0', '2', '应用新增', null, '', '999', '', '', '\0', '\0', '\0', 'app:add', null, null, '2019-11-17 11:10:03', null);
INSERT INTO `sys_menu` VALUES ('107', '93', '0', '2', '应用编辑', null, '', '999', '', '', '\0', '\0', '\0', 'app:edit', null, null, '2019-11-17 11:10:28', null);
INSERT INTO `sys_menu` VALUES ('108', '93', '0', '2', '应用删除', null, '', '999', '', '', '\0', '\0', '\0', 'app:del', null, null, '2019-11-17 11:10:55', null);
INSERT INTO `sys_menu` VALUES ('109', '94', '0', '2', '部署新增', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:add', null, null, '2019-11-17 11:11:22', null);
INSERT INTO `sys_menu` VALUES ('110', '94', '0', '2', '部署编辑', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:edit', null, null, '2019-11-17 11:11:41', null);
INSERT INTO `sys_menu` VALUES ('111', '94', '0', '2', '部署删除', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:del', null, null, '2019-11-17 11:12:01', null);
INSERT INTO `sys_menu` VALUES ('112', '98', '0', '2', '数据库新增', null, '', '999', '', '', '\0', '\0', '\0', 'database:add', null, null, '2019-11-17 11:12:43', null);
INSERT INTO `sys_menu` VALUES ('113', '98', '0', '2', '数据库编辑', null, '', '999', '', '', '\0', '\0', '\0', 'database:edit', null, null, '2019-11-17 11:12:58', null);
INSERT INTO `sys_menu` VALUES ('114', '98', '0', '2', '数据库删除', null, '', '999', '', '', '\0', '\0', '\0', 'database:del', null, null, '2019-11-17 11:13:14', null);
INSERT INTO `sys_menu` VALUES ('116', '36', '0', '1', '生成预览', 'Preview', 'generator/preview', '999', 'java', 'generator/preview/:tableName', '\0', '', '', null, null, null, '2019-11-26 14:54:36', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `level` int(255) DEFAULT NULL COMMENT '角色级别',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(255) DEFAULT NULL COMMENT '数据权限',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `role_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '1', '-', '全部', null, 'admin', '2018-11-23 11:04:37', '2020-08-06 16:10:24');
INSERT INTO `sys_role` VALUES ('2', '普通用户', '2', '-', '本级', null, 'admin', '2018-11-23 13:09:06', '2020-09-05 10:45:12');

-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_depts`;
CREATE TABLE `sys_roles_depts` (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE,
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色部门关联';

-- ----------------------------
-- Records of sys_roles_depts
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus` (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单关联';

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES ('1', '1');
INSERT INTO `sys_roles_menus` VALUES ('2', '1');
INSERT INTO `sys_roles_menus` VALUES ('3', '1');
INSERT INTO `sys_roles_menus` VALUES ('5', '1');
INSERT INTO `sys_roles_menus` VALUES ('6', '1');
INSERT INTO `sys_roles_menus` VALUES ('7', '1');
INSERT INTO `sys_roles_menus` VALUES ('9', '1');
INSERT INTO `sys_roles_menus` VALUES ('10', '1');
INSERT INTO `sys_roles_menus` VALUES ('11', '1');
INSERT INTO `sys_roles_menus` VALUES ('14', '1');
INSERT INTO `sys_roles_menus` VALUES ('15', '1');
INSERT INTO `sys_roles_menus` VALUES ('18', '1');
INSERT INTO `sys_roles_menus` VALUES ('19', '1');
INSERT INTO `sys_roles_menus` VALUES ('21', '1');
INSERT INTO `sys_roles_menus` VALUES ('22', '1');
INSERT INTO `sys_roles_menus` VALUES ('23', '1');
INSERT INTO `sys_roles_menus` VALUES ('24', '1');
INSERT INTO `sys_roles_menus` VALUES ('27', '1');
INSERT INTO `sys_roles_menus` VALUES ('28', '1');
INSERT INTO `sys_roles_menus` VALUES ('30', '1');
INSERT INTO `sys_roles_menus` VALUES ('32', '1');
INSERT INTO `sys_roles_menus` VALUES ('33', '1');
INSERT INTO `sys_roles_menus` VALUES ('34', '1');
INSERT INTO `sys_roles_menus` VALUES ('35', '1');
INSERT INTO `sys_roles_menus` VALUES ('36', '1');
INSERT INTO `sys_roles_menus` VALUES ('37', '1');
INSERT INTO `sys_roles_menus` VALUES ('38', '1');
INSERT INTO `sys_roles_menus` VALUES ('39', '1');
INSERT INTO `sys_roles_menus` VALUES ('41', '1');
INSERT INTO `sys_roles_menus` VALUES ('44', '1');
INSERT INTO `sys_roles_menus` VALUES ('45', '1');
INSERT INTO `sys_roles_menus` VALUES ('46', '1');
INSERT INTO `sys_roles_menus` VALUES ('48', '1');
INSERT INTO `sys_roles_menus` VALUES ('49', '1');
INSERT INTO `sys_roles_menus` VALUES ('50', '1');
INSERT INTO `sys_roles_menus` VALUES ('52', '1');
INSERT INTO `sys_roles_menus` VALUES ('53', '1');
INSERT INTO `sys_roles_menus` VALUES ('54', '1');
INSERT INTO `sys_roles_menus` VALUES ('56', '1');
INSERT INTO `sys_roles_menus` VALUES ('57', '1');
INSERT INTO `sys_roles_menus` VALUES ('58', '1');
INSERT INTO `sys_roles_menus` VALUES ('60', '1');
INSERT INTO `sys_roles_menus` VALUES ('61', '1');
INSERT INTO `sys_roles_menus` VALUES ('62', '1');
INSERT INTO `sys_roles_menus` VALUES ('64', '1');
INSERT INTO `sys_roles_menus` VALUES ('65', '1');
INSERT INTO `sys_roles_menus` VALUES ('66', '1');
INSERT INTO `sys_roles_menus` VALUES ('73', '1');
INSERT INTO `sys_roles_menus` VALUES ('74', '1');
INSERT INTO `sys_roles_menus` VALUES ('75', '1');
INSERT INTO `sys_roles_menus` VALUES ('77', '1');
INSERT INTO `sys_roles_menus` VALUES ('78', '1');
INSERT INTO `sys_roles_menus` VALUES ('79', '1');
INSERT INTO `sys_roles_menus` VALUES ('80', '1');
INSERT INTO `sys_roles_menus` VALUES ('82', '1');
INSERT INTO `sys_roles_menus` VALUES ('83', '1');
INSERT INTO `sys_roles_menus` VALUES ('90', '1');
INSERT INTO `sys_roles_menus` VALUES ('92', '1');
INSERT INTO `sys_roles_menus` VALUES ('93', '1');
INSERT INTO `sys_roles_menus` VALUES ('94', '1');
INSERT INTO `sys_roles_menus` VALUES ('97', '1');
INSERT INTO `sys_roles_menus` VALUES ('98', '1');
INSERT INTO `sys_roles_menus` VALUES ('102', '1');
INSERT INTO `sys_roles_menus` VALUES ('103', '1');
INSERT INTO `sys_roles_menus` VALUES ('104', '1');
INSERT INTO `sys_roles_menus` VALUES ('105', '1');
INSERT INTO `sys_roles_menus` VALUES ('106', '1');
INSERT INTO `sys_roles_menus` VALUES ('107', '1');
INSERT INTO `sys_roles_menus` VALUES ('108', '1');
INSERT INTO `sys_roles_menus` VALUES ('109', '1');
INSERT INTO `sys_roles_menus` VALUES ('110', '1');
INSERT INTO `sys_roles_menus` VALUES ('111', '1');
INSERT INTO `sys_roles_menus` VALUES ('112', '1');
INSERT INTO `sys_roles_menus` VALUES ('113', '1');
INSERT INTO `sys_roles_menus` VALUES ('114', '1');
INSERT INTO `sys_roles_menus` VALUES ('116', '1');
INSERT INTO `sys_roles_menus` VALUES ('1', '2');
INSERT INTO `sys_roles_menus` VALUES ('2', '2');
INSERT INTO `sys_roles_menus` VALUES ('6', '2');
INSERT INTO `sys_roles_menus` VALUES ('7', '2');
INSERT INTO `sys_roles_menus` VALUES ('9', '2');
INSERT INTO `sys_roles_menus` VALUES ('10', '2');
INSERT INTO `sys_roles_menus` VALUES ('11', '2');
INSERT INTO `sys_roles_menus` VALUES ('14', '2');
INSERT INTO `sys_roles_menus` VALUES ('15', '2');
INSERT INTO `sys_roles_menus` VALUES ('19', '2');
INSERT INTO `sys_roles_menus` VALUES ('21', '2');
INSERT INTO `sys_roles_menus` VALUES ('22', '2');
INSERT INTO `sys_roles_menus` VALUES ('23', '2');
INSERT INTO `sys_roles_menus` VALUES ('24', '2');
INSERT INTO `sys_roles_menus` VALUES ('27', '2');
INSERT INTO `sys_roles_menus` VALUES ('30', '2');
INSERT INTO `sys_roles_menus` VALUES ('32', '2');
INSERT INTO `sys_roles_menus` VALUES ('33', '2');
INSERT INTO `sys_roles_menus` VALUES ('34', '2');
INSERT INTO `sys_roles_menus` VALUES ('36', '2');
INSERT INTO `sys_roles_menus` VALUES ('80', '2');
INSERT INTO `sys_roles_menus` VALUES ('82', '2');
INSERT INTO `sys_roles_menus` VALUES ('83', '2');
INSERT INTO `sys_roles_menus` VALUES ('116', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门名称',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `avatar_name` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `avatar_path` varchar(255) DEFAULT NULL COMMENT '头像真实路径',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `is_admin` bit(1) DEFAULT b'0' COMMENT '是否为admin账号',
  `enabled` bigint(20) DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `pwd_reset_time` datetime DEFAULT NULL COMMENT '修改密码的时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`),
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`) USING BTREE,
  KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_name`) USING BTREE,
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '2', 'admin', '管理员', '男', '18888888888', '201507802@qq.com', 'avatar-20200806032259161.png', '/Users/jie/Documents/work/me/admin/eladmin/~/avatar/avatar-20200806032259161.png', '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', '', '1', null, 'admin', '2020-05-03 16:38:31', '2018-08-23 09:11:56', '2020-09-05 10:43:31');
INSERT INTO `sys_user` VALUES ('2', '2', 'test', '测试', '男', '19999999999', '231@qq.com', null, null, '$2a$10$4XcyudOYTSz6fue6KFNMHeUQnCX5jbBQypLEnGk1PmekXt5c95JcK', '\0', '1', 'admin', 'admin', null, '2020-05-05 11:15:49', '2020-09-05 10:43:38');

-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_jobs`;
CREATE TABLE `sys_users_jobs` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `job_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users_jobs
-- ----------------------------
INSERT INTO `sys_users_jobs` VALUES ('1', '11');
INSERT INTO `sys_users_jobs` VALUES ('2', '12');

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色关联';

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES ('1', '1');
INSERT INTO `sys_users_roles` VALUES ('2', '2');

-- ----------------------------
-- Table structure for tool_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_alipay_config`;
CREATE TABLE `tool_alipay_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) DEFAULT NULL COMMENT '编码',
  `format` varchar(255) DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '异步回调',
  `private_key` text COMMENT '私钥',
  `public_key` text COMMENT '公钥',
  `return_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='支付宝配置类';

-- ----------------------------
-- Records of tool_alipay_config
-- ----------------------------
INSERT INTO `tool_alipay_config` VALUES ('1', '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for tool_email_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_email_config`;
CREATE TABLE `tool_email_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `from_user` varchar(255) DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) DEFAULT NULL COMMENT '密码',
  `port` varchar(255) DEFAULT NULL COMMENT '端口',
  `user` varchar(255) DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱配置';

-- ----------------------------
-- Records of tool_email_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_local_storage
-- ----------------------------
DROP TABLE IF EXISTS `tool_local_storage`;
CREATE TABLE `tool_local_storage` (
  `storage_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `real_name` varchar(255) DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `size` varchar(100) DEFAULT NULL COMMENT '大小',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='本地存储';

-- ----------------------------
-- Records of tool_local_storage
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_config`;
CREATE TABLE `tool_qiniu_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `access_key` text COMMENT 'accessKey',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) NOT NULL COMMENT '外链域名',
  `secret_key` text COMMENT 'secretKey',
  `type` varchar(255) DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云配置';

-- ----------------------------
-- Records of tool_qiniu_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_content`;
CREATE TABLE `tool_qiniu_content` (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型：私有或公开',
  `url` varchar(255) DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) DEFAULT NULL COMMENT '文件后缀',
  `update_time` datetime DEFAULT NULL COMMENT '上传或同步的时间',
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云文件存储';

-- ----------------------------
-- Records of tool_qiniu_content
-- ----------------------------
