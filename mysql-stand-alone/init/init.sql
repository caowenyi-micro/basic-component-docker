use mysql;
select host, user, plugin from user \G;
alter user 'root'@'%' identified with mysql_native_password by '123456';
flush privileges;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `micro_web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `micro_web`;

CREATE TABLE `operation_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `application_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用名',
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类名',
  `method_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '方法名',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户主键',
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '租户id',
  `param` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参数',
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志'

