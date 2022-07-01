/*
SQLyog  v12.2.6 (64 bit)
MySQL - 8.0.21 : Database - sxpcwlkj
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1540388226923552769,'sys_user_post','用户与岗位关联表',NULL,NULL,'SysUserPost','crud','com.sxpcwlkj.system','system','userPost','用户与岗位关联','sxpcwlkj','0','/',NULL,'admin','2022-06-25 01:17:33','admin','2022-06-25 01:17:33',NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL COMMENT '编号',
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
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values

(1540388227426869250,'1540388226923552769','user_id','用户ID','bigint','Long','userId','1','0','1',NULL,'1','1',NULL,'EQ','input','',1,'admin','2022-06-25 01:35:47','admin','2022-06-25 01:35:47'),

(1540388227493978113,'1540388226923552769','post_id','岗位ID','bigint','Long','postId','1','0','1',NULL,'1','1',NULL,'EQ','input','',2,'admin','2022-06-25 01:35:47','admin','2022-06-25 01:35:47');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int NOT NULL COMMENT '参数主键',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2022-06-24 17:03:47','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),

(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2022-06-24 17:03:47','',NULL,'初始化密码 123456'),

(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2022-06-24 17:03:47','',NULL,'深色主题theme-dark，浅色主题theme-light'),

(4,'账号自助-验证码开关','sys.account.captchaOnOff','true','Y','admin','2022-06-24 17:03:47','',NULL,'是否开启验证码功能（true开启，false关闭）'),

(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2022-06-24 17:03:47','',NULL,'是否开启注册用户功能（true开启，false关闭）'),

(11,'OSS预览列表资源开关','sys.oss.previewListResource','true','Y','admin','2022-06-24 17:03:47','admin','2022-06-30 12:08:16','true:开启, false:关闭');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(500) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values

(100,0,'0','总部',0,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:36','admin','2022-06-30 10:47:50'),

(101,100,'0,100','分公司一',1,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:36','',NULL),

(102,100,'0,100','分公司二',2,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:37','',NULL),

(103,101,'0,100,101','研发部门',1,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:37','',NULL),

(104,101,'0,100,101','市场部门',2,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:37','',NULL),

(105,101,'0,100,101','测试部门',3,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:37','',NULL),

(106,101,'0,100,101','财务部门',4,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:37','',NULL),

(107,101,'0,100,101','运维部门',5,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:37','',NULL),

(108,102,'0,100,102','市场部门',1,'西决','13389186557','sxpcwlkj@163.com','0','0','admin','2022-06-24 17:03:37','',NULL),

(109,102,'0,100,102','财务部门',2,'西决','13389186557','sxpcwlkj@163.com','0','2','admin','2022-06-24 17:03:37','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,1,'男','0','sys_user_sex','','','Y','0','admin','2022-06-24 17:03:46','',NULL,'性别男'),

(2,2,'女','1','sys_user_sex','','','N','0','admin','2022-06-24 17:03:46','',NULL,'性别女'),

(3,3,'未知','2','sys_user_sex','','','N','0','admin','2022-06-24 17:03:46','',NULL,'性别未知'),

(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2022-06-24 17:03:46','',NULL,'显示菜单'),

(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'隐藏菜单'),

(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2022-06-24 17:03:46','',NULL,'正常状态'),

(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'停用状态'),

(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2022-06-24 17:03:46','',NULL,'系统默认是'),

(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'系统默认否'),

(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2022-06-24 17:03:46','',NULL,'通知'),

(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2022-06-24 17:03:46','',NULL,'公告'),

(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2022-06-24 17:03:46','',NULL,'正常状态'),

(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'关闭状态'),

(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2022-06-24 17:03:46','',NULL,'新增操作'),

(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2022-06-24 17:03:46','',NULL,'修改操作'),

(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'删除操作'),

(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2022-06-24 17:03:46','',NULL,'授权操作'),

(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2022-06-24 17:03:46','',NULL,'导出操作'),

(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2022-06-24 17:03:46','',NULL,'导入操作'),

(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'强退操作'),

(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2022-06-24 17:03:46','',NULL,'生成操作'),

(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'清空操作'),

(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2022-06-24 17:03:46','',NULL,'正常状态'),

(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2022-06-24 17:03:46','',NULL,'停用状态');

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL COMMENT '字典主键',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,'用户性别','sys_user_sex','0','admin','2022-06-24 17:03:45','',NULL,'用户性别列表'),

(2,'菜单状态','sys_show_hide','0','admin','2022-06-24 17:03:45','',NULL,'菜单状态列表'),

(3,'系统开关','sys_normal_disable','0','admin','2022-06-24 17:03:45','',NULL,'系统开关列表'),

(6,'系统是否','sys_yes_no','0','admin','2022-06-24 17:03:45','',NULL,'系统是否列表'),

(7,'通知类型','sys_notice_type','0','admin','2022-06-24 17:03:45','',NULL,'通知类型列表'),

(8,'通知状态','sys_notice_status','0','admin','2022-06-24 17:03:45','',NULL,'通知状态列表'),

(9,'操作类型','sys_oper_type','0','admin','2022-06-24 17:03:45','',NULL,'操作类型列表'),

(10,'系统状态','sys_common_status','0','admin','2022-06-24 17:03:45','',NULL,'登录状态列表');

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values

(1542421942948646913,'admin','127.0.0.1','内网IP','Chrome','Windows 10 or Windows Server 2016','0','登录成功','2022-06-30 16:17:03'),

(1542456237343952897,'admin','127.0.0.1','内网IP','Chrome','Windows 10 or Windows Server 2016','0','登录成功','2022-06-30 18:33:19'),

(1542456563564335105,'admin','127.0.0.1','内网IP','Chrome','Windows 10 or Windows Server 2016','0','登录成功','2022-06-30 18:34:37'),

(1542459387828293634,'admin','127.0.0.1','内网IP','Chrome','Windows 10 or Windows Server 2016','0','登录成功','2022-06-30 18:45:50');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query_param` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query_param`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,'系统管理',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2022-06-24 17:03:40','',NULL,'系统管理目录'),

(2,'系统监控',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2022-06-24 17:03:40','',NULL,'系统监控目录'),

(3,'系统工具',0,3,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2022-06-24 17:03:40','',NULL,'系统工具目录'),

(4,'RichAdmin',0,99,'https://doc.sxpcwlkj.com/',NULL,'',0,0,'M','0','0','','guide','admin','2022-06-24 17:03:40','admin','2022-06-30 18:47:01','sxpcwlkj官网地址'),

(5,'测试菜单',0,5,'demo',NULL,NULL,1,0,'M','0','0',NULL,'star','admin','2022-06-25 01:54:15',NULL,NULL,''),

(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2022-06-24 17:03:40','',NULL,'用户管理菜单'),

(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2022-06-24 17:03:40','',NULL,'角色管理菜单'),

(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2022-06-24 17:03:40','',NULL,'菜单管理菜单'),

(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2022-06-24 17:03:40','',NULL,'部门管理菜单'),

(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2022-06-24 17:03:40','',NULL,'岗位管理菜单'),

(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2022-06-24 17:03:40','',NULL,'字典管理菜单'),

(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2022-06-24 17:03:40','',NULL,'参数设置菜单'),

(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2022-06-24 17:03:40','',NULL,'通知公告菜单'),

(108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2022-06-24 17:03:40','',NULL,'日志管理菜单'),

(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2022-06-24 17:03:40','',NULL,'在线用户菜单'),

(111,'数据监控',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2022-06-24 17:03:40','',NULL,'数据监控菜单'),

(113,'缓存监控',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2022-06-24 17:03:40','',NULL,'缓存监控菜单'),

(114,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2022-06-24 17:03:40','',NULL,'表单构建菜单'),

(115,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2022-06-24 17:03:40','',NULL,'代码生成菜单'),

(116,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2022-06-24 17:03:40','',NULL,'系统接口菜单'),

(117,'Admin监控',2,5,'Admin','monitor/admin/index','',1,0,'C','0','0','monitor:admin:list','dashboard','admin','2022-06-24 17:03:40','',NULL,'Admin监控菜单'),

(118,'文件管理',1,10,'oss','system/oss/index','',1,0,'C','0','0','system:oss:list','upload','admin','2022-06-24 17:03:40','',NULL,'文件管理菜单'),

(120,'任务调度中心',2,5,'XxlJob','monitor/xxljob/index','',1,0,'C','0','0','monitor:xxljob:list','job','admin','2022-06-24 17:03:40','',NULL,'Xxl-Job控制台菜单'),

(500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2022-06-24 17:03:40','',NULL,'操作日志菜单'),

(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2022-06-24 17:03:40','',NULL,'登录日志菜单'),

(1001,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1002,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1003,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1004,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1005,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2022-06-24 17:03:40','',NULL,''),

(1006,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2022-06-24 17:03:40','',NULL,''),

(1007,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2022-06-24 17:03:40','',NULL,''),

(1008,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1009,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1010,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1011,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1012,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2022-06-24 17:03:40','',NULL,''),

(1013,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1014,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1015,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1016,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1017,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1018,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1019,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1020,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1021,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1022,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1023,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1024,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1025,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2022-06-24 17:03:40','',NULL,''),

(1026,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1027,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1028,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1029,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1030,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2022-06-24 17:03:40','',NULL,''),

(1031,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1032,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1033,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1034,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1035,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2022-06-24 17:03:40','',NULL,''),

(1036,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1037,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1038,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1039,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1040,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1041,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1042,'日志导出',500,4,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2022-06-24 17:03:40','',NULL,''),

(1043,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1044,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1045,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2022-06-24 17:03:40','',NULL,''),

(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2022-06-24 17:03:40','',NULL,''),

(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2022-06-24 17:03:40','',NULL,''),

(1055,'生成查询',115,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1056,'生成修改',115,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2022-06-24 17:03:40','',NULL,''),

(1057,'生成删除',115,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1058,'导入代码',115,2,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2022-06-24 17:03:40','',NULL,''),

(1059,'预览代码',115,4,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2022-06-24 17:03:40','',NULL,''),

(1060,'生成代码',115,5,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2022-06-24 17:03:40','',NULL,''),

(1500,'测试单表',5,1,'demo','demo/demo/index',NULL,1,0,'C','0','0','demo:demo:list','#','admin','2022-06-25 01:54:15','',NULL,'测试单表菜单'),

(1501,'测试单表查询',1500,1,'#','',NULL,1,0,'F','0','0','demo:demo:query','#','admin','2022-06-25 01:54:15','',NULL,''),

(1502,'测试单表新增',1500,2,'#','',NULL,1,0,'F','0','0','demo:demo:add','#','admin','2022-06-25 01:54:15','',NULL,''),

(1503,'测试单表修改',1500,3,'#','',NULL,1,0,'F','0','0','demo:demo:edit','#','admin','2022-06-25 01:54:15','',NULL,''),

(1504,'测试单表删除',1500,4,'#','',NULL,1,0,'F','0','0','demo:demo:remove','#','admin','2022-06-25 01:54:15','',NULL,''),

(1505,'测试单表导出',1500,5,'#','',NULL,1,0,'F','0','0','demo:demo:export','#','admin','2022-06-25 01:54:15','',NULL,''),

(1506,'测试树表',5,1,'tree','demo/tree/index',NULL,1,0,'C','0','0','demo:tree:list','#','admin','2022-06-25 01:54:15','',NULL,'测试树表菜单'),

(1507,'测试树表查询',1506,1,'#','',NULL,1,0,'F','0','0','demo:tree:query','#','admin','2022-06-25 01:54:15','',NULL,''),

(1508,'测试树表新增',1506,2,'#','',NULL,1,0,'F','0','0','demo:tree:add','#','admin','2022-06-25 01:54:15','',NULL,''),

(1509,'测试树表修改',1506,3,'#','',NULL,1,0,'F','0','0','demo:tree:edit','#','admin','2022-06-25 01:54:15','',NULL,''),

(1510,'测试树表删除',1506,4,'#','',NULL,1,0,'F','0','0','demo:tree:remove','#','admin','2022-06-25 01:54:15','',NULL,''),

(1511,'测试树表导出',1506,5,'#','',NULL,1,0,'F','0','0','demo:tree:export','#','admin','2022-06-25 01:54:15','',NULL,''),

(1600,'文件查询',118,1,'#','','',1,0,'F','0','0','system:oss:query','#','admin','2022-06-24 17:03:40','',NULL,''),

(1601,'文件上传',118,2,'#','','',1,0,'F','0','0','system:oss:upload','#','admin','2022-06-24 17:03:40','',NULL,''),

(1602,'文件下载',118,3,'#','','',1,0,'F','0','0','system:oss:download','#','admin','2022-06-24 17:03:40','',NULL,''),

(1603,'文件删除',118,4,'#','','',1,0,'F','0','0','system:oss:remove','#','admin','2022-06-24 17:03:40','',NULL,''),

(1604,'配置添加',118,5,'#','','',1,0,'F','0','0','system:oss:add','#','admin','2022-06-24 17:03:40','',NULL,''),

(1605,'配置编辑',118,6,'#','','',1,0,'F','0','0','system:oss:edit','#','admin','2022-06-24 17:03:40','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,'温馨提醒：Rech Admin发布啦','2','Rech Admin发布啦','0','admin','2022-06-24 17:03:48','admin','2022-06-30 11:03:15','管理员'),

(2,'维护通知：2022-07-01 系统凌晨维护','1','维护内容','0','admin','2022-06-24 17:03:48','admin','2022-06-30 11:03:36','管理员');

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`) values

(1542347268042579970,'OSS对象存储',1,'com.sxpcwlkj.web.controller.system.SysOssController.upload()','POST',1,'admin','','/system/oss/upload','127.0.0.1','内网IP','','{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"ossId\":\"1542347267782533122\",\"url\":\"http://39.98.144.174:9000/sxpcwlkj/2022/06/30/96e08338f853485fa55dacc4cf37f2f3.png\",\"fileName\":\"微信截图_20220117195857.png\"}}',0,'','2022-06-30 11:20:19'),

(1542351987318251522,'对象存储配置',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.edit()','PUT',1,'admin','','/system/oss/config','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":4,\"configKey\":\"aliyun\",\"accessKey\":\"LTAI4G2aorW5xMpfZYq9A6Xk\",\"secretKey\":\"OoBHrvhvnpE7St3u7K6GKjW9LcJI4u\",\"bucketName\":\"sxpcwlkj-test\",\"prefix\":\"\",\"endpoint\":\"http://oss-cn-hangzhou.aliyuncs.com\",\"isHttps\":\"N\",\"status\":\"1\",\"region\":\"hangzhou\",\"ext1\":\"\"}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:39:04'),

(1542352874543570946,'对象存储配置',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.edit()','PUT',1,'admin','','/system/oss/config','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":4,\"configKey\":\"aliyun\",\"accessKey\":\"LTAI4G2aorW5xMpfZYq9A6Xk\",\"secretKey\":\"OoBHrvhvnpE7St3u7K6GKjW9LcJI4u\",\"bucketName\":\"sxpcwlkj-test\",\"prefix\":\"\",\"endpoint\":\"http://oss-cn-hangzhou.aliyuncs.com\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"hangzhou\",\"ext1\":\"\"}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:42:35'),

(1542352904767725570,'对象存储配置',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.edit()','PUT',1,'admin','','/system/oss/config','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":\"minio\",\"secretKey\":\"minio123\",\"bucketName\":\"sxpcwlkj\",\"prefix\":\"\",\"endpoint\":\"http://39.98.144.174:9000\",\"isHttps\":\"N\",\"status\":\"1\",\"region\":\"\",\"ext1\":\"\"}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:42:43'),

(1542355130026352642,'对象存储配置',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.edit()','PUT',1,'admin','','/system/oss/config','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":4,\"configKey\":\"aliyun\",\"accessKey\":\"admin\",\"secretKey\":\"123456\",\"bucketName\":\"sxpcwlkj-test\",\"prefix\":\"\",\"endpoint\":\"http://oss-cn-hangzhou.aliyuncs.com\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"hangzhou\",\"ext1\":\"\"}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:51:33'),

(1542355633292500993,'对象存储状态修改',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.changeStatus()','PUT',1,'admin','','/system/oss/config/changeStatus','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:53:33'),

(1542355638925451265,'对象存储状态修改',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.changeStatus()','PUT',1,'admin','','/system/oss/config/changeStatus','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":4,\"configKey\":\"aliyun\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:53:35'),

(1542355642922622978,'对象存储状态修改',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.changeStatus()','PUT',1,'admin','','/system/oss/config/changeStatus','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:53:36'),

(1542355645753778178,'对象存储状态修改',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.changeStatus()','PUT',1,'admin','','/system/oss/config/changeStatus','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":4,\"configKey\":\"aliyun\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:53:36'),

(1542355648404578306,'对象存储状态修改',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.changeStatus()','PUT',1,'admin','','/system/oss/config/changeStatus','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:53:37'),

(1542355650778554370,'对象存储状态修改',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.changeStatus()','PUT',1,'admin','','/system/oss/config/changeStatus','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":4,\"configKey\":\"aliyun\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:53:37'),

(1542355744353476610,'OSS对象存储',1,'com.sxpcwlkj.web.controller.system.SysOssController.upload()','POST',1,'admin','','/system/oss/upload','127.0.0.1','内网IP','','',1,'上传文件失败，请检查阿里云配置信息:[The OSS Access Key Id you provided does not exist in our records.\n[ErrorCode]: InvalidAccessKeyId\n[RequestId]: 62BD1E5753726E37318C05A7\n[HostId]: sxpcwlkj-test.oss-cn-hangzhou.aliyuncs.com\n[ResponseError]:\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Error>\n  <Code>InvalidAccessKeyId</Code>\n  <Message>The OSS Access Key Id you provided does not exist in our records.</Message>\n  <RequestId>62BD1E5753726E37318C05A7</RequestId>\n  <HostId>sxpcwlkj-test.oss-cn-hangzhou.aliyuncs.com</HostId>\n  <OSSAccessKeyId>admin</OSSAccessKeyId>\n</Error>\n]','2022-06-30 11:54:00'),

(1542356496832585730,'对象存储配置',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.edit()','PUT',1,'admin','','/system/oss/config','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":4,\"configKey\":\"aliyun\",\"accessKey\":\"LTAI4G2aorW5xMpfZYq9A6Xk\",\"secretKey\":\"OoBHrvhvnpE7St3u7K6GKjW9LcJI4u\",\"bucketName\":\"sxpcwlkj-test\",\"prefix\":\"\",\"endpoint\":\"http://oss-cn-hangzhou.aliyuncs.com\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"hangzhou\",\"ext1\":\"\"}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 11:56:59'),

(1542356551375314945,'OSS对象存储',1,'com.sxpcwlkj.web.controller.system.SysOssController.upload()','POST',1,'admin','','/system/oss/upload','127.0.0.1','内网IP','','{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"ossId\":\"1542356550674866178\",\"url\":\"http://sxpcwlkj-test.oss-cn-hangzhou.aliyuncs.com/2022/06/30/4200e5cc803f47b7bb48a76d297b3ef6.jpg\",\"fileName\":\"xijue.jpg\"}}',0,'','2022-06-30 11:57:12'),

(1542356690034810881,'OSS对象存储',1,'com.sxpcwlkj.web.controller.system.SysOssController.upload()','POST',1,'admin','','/system/oss/upload','127.0.0.1','内网IP','','{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"ossId\":\"1542356689774764033\",\"url\":\"http://sxpcwlkj-test.oss-cn-hangzhou.aliyuncs.com/2022/06/30/e711c42b4ec34d568c4bdb39a41c0005.jpg\",\"fileName\":\"xijue.jpg\"}}',0,'','2022-06-30 11:57:45'),

(1542359114837446657,'对象存储状态修改',2,'com.sxpcwlkj.web.controller.system.SysOssConfigController.changeStatus()','PUT',1,'admin','','/system/oss/config/changeStatus','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:07:23'),

(1542359177504542722,'OSS对象存储',1,'com.sxpcwlkj.web.controller.system.SysOssController.upload()','POST',1,'admin','','/system/oss/upload','127.0.0.1','内网IP','','{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"ossId\":\"1542359176862814209\",\"url\":\"http://39.98.144.174:9000/sxpcwlkj/2022/06/30/7ed91cbcebd4457e9b0c30ede34e9cec.jpg\",\"fileName\":\"005F6vKGly1gzwlxxf7tbj32c03404qt.jpg\"}}',0,'','2022-06-30 12:07:38'),

(1542359214859014146,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1542359176862814209','127.0.0.1','内网IP','{ossIds=1542359176862814209}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:07:47'),

(1542359229300002817,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1542356689774764033','127.0.0.1','内网IP','{ossIds=1542356689774764033}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:07:51'),

(1542359240435879937,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1542347267782533122','127.0.0.1','内网IP','{ossIds=1542347267782533122}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:07:53'),

(1542359251601117185,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1541809472949813249','127.0.0.1','内网IP','{ossIds=1541809472949813249}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:07:56'),

(1542359262539862018,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1541809472949813250','127.0.0.1','内网IP','{ossIds=1541809472949813250}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:07:59'),

(1542359277547081729,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1541809473016922114','127.0.0.1','内网IP','{ossIds=1541809473016922114}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:08:02'),

(1542359288351608834,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1541629765922861057','127.0.0.1','内网IP','{ossIds=1541629765922861057}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:08:05'),

(1542359300175351810,'OSS对象存储',3,'com.sxpcwlkj.web.controller.system.SysOssController.remove()','DELETE',1,'admin','','/system/oss/1541627947553665026','127.0.0.1','内网IP','{ossIds=1541627947553665026}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:08:07'),

(1542359317673988098,'参数管理',2,'com.sxpcwlkj.web.controller.system.SysConfigController.updateByKey()','PUT',1,'admin','','/system/config/updateByKey','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2022-06-30 12:08:11\",\"params\":{},\"configId\":null,\"configName\":null,\"configKey\":\"sys.oss.previewListResource\",\"configValue\":\"false\",\"configType\":null,\"remark\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:08:12'),

(1542359335394922498,'参数管理',2,'com.sxpcwlkj.web.controller.system.SysConfigController.updateByKey()','PUT',1,'admin','','/system/config/updateByKey','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2022-06-30 12:08:15\",\"params\":{},\"configId\":null,\"configName\":null,\"configKey\":\"sys.oss.previewListResource\",\"configValue\":\"true\",\"configType\":null,\"remark\":null}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 12:08:16'),

(1542456370139811842,'个人信息',2,'com.sxpcwlkj.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin','','/system/user/profile','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":\"admin\",\"createTime\":\"2022-06-24 17:03:38\",\"updateBy\":\"admin\",\"updateTime\":\"2022-06-30 18:33:50\",\"params\":{},\"userId\":1,\"deptId\":103,\"userName\":null,\"nickName\":\"品创网络\",\"userType\":\"sys_user\",\"email\":\"sxpcwlkj@163.com\",\"phonenumber\":\"13389186557\",\"sex\":\"1\",\"avatar\":\"\",\"status\":\"0\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"loginDate\":\"2022-06-30 18:33:19\",\"remark\":\"管理员\",\"dept\":{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"parentName\":null,\"parentId\":101,\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"orderNum\":1,\"leader\":\"西决\",\"phone\":null,\"email\":null,\"status\":\"0\",\"delFlag\":null,\"ancestors\":\"0,100,101\"},\"roles\":[{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"roleId\":1,\"roleName\":\"超级管理员\",\"roleKey\":\"admin\",\"roleSort\":1,\"dataScope\":\"1\",\"menuCheckStrictly\":null,\"deptCheckStrictly\":null,\"status\":\"0\",\"delFlag\":null,\"remark\":null,\"flag\":false,\"menuIds\":null,\"deptIds\":null,\"admin\":true}],\"roleIds\":null,\"postIds\":null,\"roleId\":null,\"admin\":true}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 18:33:51'),

(1542456440117579778,'用户头像',2,'com.sxpcwlkj.web.controller.system.SysProfileController.avatar()','POST',1,'admin','','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"code\":200,\"msg\":\"操作成功\",\"data\":{\"imgUrl\":\"http://39.98.144.174:9000/sxpcwlkj/2022/06/30/28fe3e236ca94eceb674eb6c18109c1e.jpg\"}}',0,'','2022-06-30 18:34:07'),

(1542456448959172610,'个人信息',2,'com.sxpcwlkj.web.controller.system.SysProfileController.updateProfile()','PUT',1,'admin','','/system/user/profile','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":\"admin\",\"createTime\":\"2022-06-24 17:03:38\",\"updateBy\":\"admin\",\"updateTime\":\"2022-06-30 18:34:09\",\"params\":{},\"userId\":1,\"deptId\":103,\"userName\":null,\"nickName\":\"品创网络\",\"userType\":\"sys_user\",\"email\":\"sxpcwlkj@163.com\",\"phonenumber\":\"13389186557\",\"sex\":\"0\",\"avatar\":\"\",\"status\":\"0\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"loginDate\":\"2022-06-30 18:33:19\",\"remark\":\"管理员\",\"dept\":{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"parentName\":null,\"parentId\":101,\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"orderNum\":1,\"leader\":\"西决\",\"phone\":null,\"email\":null,\"status\":\"0\",\"delFlag\":null,\"ancestors\":\"0,100,101\"},\"roles\":[{\"searchValue\":null,\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"params\":{},\"roleId\":1,\"roleName\":\"超级管理员\",\"roleKey\":\"admin\",\"roleSort\":1,\"dataScope\":\"1\",\"menuCheckStrictly\":null,\"deptCheckStrictly\":null,\"status\":\"0\",\"delFlag\":null,\"remark\":null,\"flag\":false,\"menuIds\":null,\"deptIds\":null,\"admin\":true}],\"roleIds\":null,\"postIds\":null,\"roleId\":null,\"admin\":true}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 18:34:10'),

(1542456496883290114,'个人信息',2,'com.sxpcwlkj.web.controller.system.SysProfileController.updatePwd()','PUT',1,'admin','','/system/user/profile/updatePwd','127.0.0.1','内网IP','\"admin123\" \"123456\"','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 18:34:21'),

(1542459685468688386,'菜单管理',2,'com.sxpcwlkj.web.controller.system.SysMenuController.edit()','PUT',1,'admin','','/system/menu','127.0.0.1','内网IP','{\"searchValue\":null,\"createBy\":\"admin\",\"createTime\":\"2022-06-24 17:03:40\",\"updateBy\":\"admin\",\"updateTime\":\"2022-06-30 18:47:01\",\"params\":{},\"parentName\":null,\"parentId\":0,\"children\":[],\"menuId\":4,\"menuName\":\"RichAdmin\",\"orderNum\":99,\"path\":\"https://doc.sxpcwlkj.com/\",\"component\":null,\"queryParam\":\"\",\"isFrame\":\"0\",\"isCache\":\"0\",\"menuType\":\"M\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"\",\"icon\":\"guide\",\"remark\":\"sxpcwlkj官网地址\"}','{\"code\":200,\"msg\":\"操作成功\",\"data\":null}',0,'','2022-06-30 18:47:01');

/*Table structure for table `sys_oss` */

DROP TABLE IF EXISTS `sys_oss`;

CREATE TABLE `sys_oss` (
  `oss_id` bigint NOT NULL COMMENT '对象存储主键',
  `file_name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原名',
  `file_suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名',
  `url` varchar(500) NOT NULL COMMENT 'URL地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '上传人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新人',
  `service` varchar(10) NOT NULL DEFAULT 'minio' COMMENT '服务商',
  PRIMARY KEY (`oss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OSS对象存储表';

/*Data for the table `sys_oss` */

insert  into `sys_oss`(`oss_id`,`file_name`,`original_name`,`file_suffix`,`url`,`create_time`,`create_by`,`update_time`,`update_by`,`service`) values

(1541627713134014465,'2022/06/28/5ce8912e3ff64515a87ca2394cf344c4.jpg','xijue.jpg','.jpg','http://39.98.144.174:9000/sxpcwlkj/2022/06/28/5ce8912e3ff64515a87ca2394cf344c4.jpg','2022-06-28 11:41:04','admin','2022-06-28 11:41:04','admin','minio'),

(1542356550674866178,'2022/06/30/4200e5cc803f47b7bb48a76d297b3ef6.jpg','xijue.jpg','.jpg','http://sxpcwlkj-test.oss-cn-hangzhou.aliyuncs.com/2022/06/30/4200e5cc803f47b7bb48a76d297b3ef6.jpg','2022-06-30 11:57:12','admin','2022-06-30 11:57:12','admin','aliyun'),

(1542456439601680385,'2022/06/30/28fe3e236ca94eceb674eb6c18109c1e.jpg','xijue.jpg','.jpg','http://39.98.144.174:9000/sxpcwlkj/2022/06/30/28fe3e236ca94eceb674eb6c18109c1e.jpg','2022-06-30 18:34:07','admin','2022-06-30 18:34:07','admin','minio');

/*Table structure for table `sys_oss_config` */

DROP TABLE IF EXISTS `sys_oss_config`;

CREATE TABLE `sys_oss_config` (
  `oss_config_id` bigint NOT NULL COMMENT '主建',
  `config_key` varchar(255) NOT NULL DEFAULT '' COMMENT '配置key',
  `access_key` varchar(255) DEFAULT '' COMMENT 'accessKey',
  `secret_key` varchar(255) DEFAULT '' COMMENT '秘钥',
  `bucket_name` varchar(255) DEFAULT '' COMMENT '桶名称',
  `prefix` varchar(255) DEFAULT '' COMMENT '前缀',
  `endpoint` varchar(255) DEFAULT '' COMMENT '访问站点',
  `is_https` char(1) DEFAULT 'N' COMMENT '是否https（Y=是,N=否）',
  `region` varchar(255) DEFAULT '' COMMENT '域',
  `status` char(1) DEFAULT '1' COMMENT '状态（0=正常,1=停用）',
  `ext1` varchar(255) DEFAULT '' COMMENT '扩展字段',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`oss_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对象存储配置表';

/*Data for the table `sys_oss_config` */

insert  into `sys_oss_config`(`oss_config_id`,`config_key`,`access_key`,`secret_key`,`bucket_name`,`prefix`,`endpoint`,`is_https`,`region`,`status`,`ext1`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,'minio','minio','minio123','sxpcwlkj','','http://39.98.144.174:9000','N','','0','','admin','2022-06-24 17:03:51','admin','2022-06-30 12:07:23',NULL),

(4,'aliyun','LTAI4G2aorW5xMpfZYq9A6Xk','OoBHrvhvnpE7St3u7K6GKjW9LcJI4u','sxpcwlkj-test','','http://oss-cn-hangzhou.aliyuncs.com','N','hangzhou','1','','admin','2022-06-24 17:03:51','admin','2022-06-30 11:56:59',NULL);

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,'ceo','董事长',1,'0','admin','2022-06-24 17:03:38','',NULL,''),

(2,'se','项目经理',2,'0','admin','2022-06-24 17:03:38','',NULL,''),

(3,'hr','人力资源',3,'0','admin','2022-06-24 17:03:38','',NULL,''),

(4,'user','普通员工',4,'0','admin','2022-06-24 17:03:38','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2022-06-24 17:03:39','',NULL,'超级管理员'),

(2,'管理员','common',2,'2',1,1,'0','0','admin','2022-06-24 17:03:39','admin','2022-06-30 10:27:05','管理员'),

(3,'本部门及以下','test1',3,'4',1,1,'0','2','admin','2022-06-25 01:54:15','admin',NULL,NULL),

(4,'部门成员','department',3,'5',1,1,'0','0','admin','2022-06-25 01:54:15','admin','2022-06-30 10:36:01',NULL);

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values

(2,100),

(2,101),

(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values

(2,1),

(2,2),

(2,3),

(2,4),

(2,100),

(2,101),

(2,102),

(2,103),

(2,104),

(2,105),

(2,106),

(2,107),

(2,108),

(2,109),

(2,111),

(2,113),

(2,114),

(2,115),

(2,116),

(2,500),

(2,501),

(2,1001),

(2,1002),

(2,1003),

(2,1004),

(2,1005),

(2,1006),

(2,1007),

(2,1008),

(2,1009),

(2,1010),

(2,1011),

(2,1012),

(2,1013),

(2,1014),

(2,1015),

(2,1016),

(2,1017),

(2,1018),

(2,1019),

(2,1020),

(2,1021),

(2,1022),

(2,1023),

(2,1024),

(2,1025),

(2,1026),

(2,1027),

(2,1028),

(2,1029),

(2,1030),

(2,1031),

(2,1032),

(2,1033),

(2,1034),

(2,1035),

(2,1036),

(2,1037),

(2,1038),

(2,1039),

(2,1040),

(2,1041),

(2,1042),

(2,1043),

(2,1044),

(2,1045),

(2,1046),

(2,1047),

(2,1048),

(2,1055),

(2,1056),

(2,1057),

(2,1058),

(2,1059),

(2,1060),

(4,4),

(4,5),

(4,1500),

(4,1501),

(4,1502),

(4,1503),

(4,1504),

(4,1505),

(4,1506),

(4,1507),

(4,1508),

(4,1509),

(4,1510),

(4,1511);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(10) DEFAULT 'sys_user' COMMENT '用户类型（sys_user系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values

(1,103,'admin','品创网络','sys_user','sxpcwlkj@163.com','13389186557','0','','$2a$10$B4sTYFj.dOmlhuXhtKT8qOx5ILv1qDsOBjxInaZGLNRetyS3MdBeu','0','0','127.0.0.1','2022-06-30 18:45:50','admin','2022-06-24 17:03:38','admin','2022-06-30 18:45:50','管理员'),

(2,105,'lionli','西決 密码666666','sys_user','942879858@qq.com','15666666666','1','','$2a$10$b8yUzN0C71sbz.PhNOCgJe.Tu1yWC3RNrTyjSQ8p1W0.aaUXUJ.Ne','0','0','127.0.0.1','2022-06-24 17:03:38','admin','2022-06-24 17:03:38','',NULL,'测试员'),

(3,108,'test','本部门及以下 密码666666','sys_user','','','0','','$2a$10$b8yUzN0C71sbz.PhNOCgJe.Tu1yWC3RNrTyjSQ8p1W0.aaUXUJ.Ne','0','0','127.0.0.1','2022-06-25 01:54:15','admin','2022-06-25 01:54:15','test','2022-06-25 01:54:15',NULL),

(4,102,'test1','仅本人 密码666666','sys_user','','','0','','$2a$10$b8yUzN0C71sbz.PhNOCgJe.Tu1yWC3RNrTyjSQ8p1W0.aaUXUJ.Ne','0','0','127.0.0.1','2022-06-25 01:54:15','admin','2022-06-25 01:54:15','test1','2022-06-25 01:54:15',NULL);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values

(1,1),

(2,2);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values

(1,1),

(2,2),

(4,4);

/*Table structure for table `test_demo` */

DROP TABLE IF EXISTS `test_demo`;

CREATE TABLE `test_demo` (
  `id` bigint NOT NULL COMMENT '主键',
  `dept_id` bigint DEFAULT NULL COMMENT '部门id',
  `user_id` bigint DEFAULT NULL COMMENT '用户id',
  `order_num` int DEFAULT '0' COMMENT '排序号',
  `test_key` varchar(255) DEFAULT NULL COMMENT 'key键',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `version` int DEFAULT '0' COMMENT '版本',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `del_flag` int DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试单表';

/*Data for the table `test_demo` */

insert  into `test_demo`(`id`,`dept_id`,`user_id`,`order_num`,`test_key`,`value`,`version`,`create_time`,`create_by`,`update_time`,`update_by`,`del_flag`) values

(1,102,4,1,'测试数据权限','测试',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(2,102,3,2,'子节点1','111',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(3,102,3,3,'子节点2','222',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(4,108,4,4,'测试数据','demo',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(5,108,3,13,'子节点11','1111',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(6,108,3,12,'子节点22','2222',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(7,108,3,11,'子节点33','3333',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(8,108,3,10,'子节点44','4444',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(9,108,3,9,'子节点55','5555',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(10,108,3,8,'子节点66','6666',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(11,108,3,7,'子节点77','7777',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(12,108,3,6,'子节点88','8888',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(13,108,3,5,'子节点99','9999',0,'2022-06-25 01:54:15','admin',NULL,NULL,0);

/*Table structure for table `test_tree` */

DROP TABLE IF EXISTS `test_tree`;

CREATE TABLE `test_tree` (
  `id` bigint NOT NULL COMMENT '主键',
  `parent_id` bigint DEFAULT '0' COMMENT '父id',
  `dept_id` bigint DEFAULT NULL COMMENT '部门id',
  `user_id` bigint DEFAULT NULL COMMENT '用户id',
  `tree_name` varchar(255) DEFAULT NULL COMMENT '值',
  `version` int DEFAULT '0' COMMENT '版本',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `del_flag` int DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试树表';

/*Data for the table `test_tree` */

insert  into `test_tree`(`id`,`parent_id`,`dept_id`,`user_id`,`tree_name`,`version`,`create_time`,`create_by`,`update_time`,`update_by`,`del_flag`) values

(1,0,102,4,'测试数据权限',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(2,1,102,3,'子节点1',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(3,2,102,3,'子节点2',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(4,0,108,4,'测试树1',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(5,4,108,3,'子节点11',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(6,4,108,3,'子节点22',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(7,4,108,3,'子节点33',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(8,5,108,3,'子节点44',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(9,6,108,3,'子节点55',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(10,7,108,3,'子节点66',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(11,7,108,3,'子节点77',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(12,10,108,3,'子节点88',0,'2022-06-25 01:54:15','admin',NULL,NULL,0),

(13,10,108,3,'子节点99',0,'2022-06-25 01:54:15','admin',NULL,NULL,0);

/*Table structure for table `xxl_job_group` */

DROP TABLE IF EXISTS `xxl_job_group`;

CREATE TABLE `xxl_job_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) NOT NULL COMMENT '执行器AppName',
  `title` varchar(12) NOT NULL COMMENT '执行器名称',
  `address_type` tinyint NOT NULL DEFAULT '0' COMMENT '执行器地址类型：0=自动注册、1=手动录入',
  `address_list` text COMMENT '执行器地址列表，多地址逗号分隔',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_group` */

insert  into `xxl_job_group`(`id`,`app_name`,`title`,`address_type`,`address_list`,`update_time`) values

(1,'xxl-job-executor','执行器01',0,'http://192.168.1.33:9101/','2022-06-30 18:50:09');

/*Table structure for table `xxl_job_info` */

DROP TABLE IF EXISTS `xxl_job_info`;

CREATE TABLE `xxl_job_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_group` int NOT NULL COMMENT '执行器主键ID',
  `job_desc` varchar(255) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL COMMENT '作者',
  `alarm_email` varchar(255) DEFAULT NULL COMMENT '报警邮件',
  `schedule_type` varchar(50) NOT NULL DEFAULT 'NONE' COMMENT '调度类型',
  `schedule_conf` varchar(128) DEFAULT NULL COMMENT '调度配置，值含义取决于调度类型',
  `misfire_strategy` varchar(50) NOT NULL DEFAULT 'DO_NOTHING' COMMENT '调度过期策略',
  `executor_route_strategy` varchar(50) DEFAULT NULL COMMENT '执行器路由策略',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `executor_block_strategy` varchar(50) DEFAULT NULL COMMENT '阻塞处理策略',
  `executor_timeout` int NOT NULL DEFAULT '0' COMMENT '任务执行超时时间，单位秒',
  `executor_fail_retry_count` int NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `glue_type` varchar(50) NOT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) DEFAULT NULL COMMENT 'GLUE备注',
  `glue_updatetime` datetime DEFAULT NULL COMMENT 'GLUE更新时间',
  `child_jobid` varchar(255) DEFAULT NULL COMMENT '子任务ID，多个逗号分隔',
  `trigger_status` tinyint NOT NULL DEFAULT '0' COMMENT '调度状态：0-停止，1-运行',
  `trigger_last_time` bigint NOT NULL DEFAULT '0' COMMENT '上次调度时间',
  `trigger_next_time` bigint NOT NULL DEFAULT '0' COMMENT '下次调度时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_info` */

insert  into `xxl_job_info`(`id`,`job_group`,`job_desc`,`add_time`,`update_time`,`author`,`alarm_email`,`schedule_type`,`schedule_conf`,`misfire_strategy`,`executor_route_strategy`,`executor_handler`,`executor_param`,`executor_block_strategy`,`executor_timeout`,`executor_fail_retry_count`,`glue_type`,`glue_source`,`glue_remark`,`glue_updatetime`,`child_jobid`,`trigger_status`,`trigger_last_time`,`trigger_next_time`) values

(1,1,'测试任务1','2018-11-03 22:21:31','2022-06-27 11:46:27','XXL','942879858@qq.com','CRON','0/10 * * * * ?','DO_NOTHING','FIRST','demoJobHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-11-03 22:21:31','',0,0,0);

/*Table structure for table `xxl_job_lock` */

DROP TABLE IF EXISTS `xxl_job_lock`;

CREATE TABLE `xxl_job_lock` (
  `lock_name` varchar(50) NOT NULL COMMENT '锁名称',
  PRIMARY KEY (`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_lock` */

insert  into `xxl_job_lock`(`lock_name`) values

('schedule_lock');

/*Table structure for table `xxl_job_log` */

DROP TABLE IF EXISTS `xxl_job_log`;

CREATE TABLE `xxl_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `job_group` int NOT NULL COMMENT '执行器主键ID',
  `job_id` int NOT NULL COMMENT '任务，主键ID',
  `executor_address` varchar(255) DEFAULT NULL COMMENT '执行器地址，本次执行的地址',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `executor_sharding_param` varchar(20) DEFAULT NULL COMMENT '执行器任务分片参数，格式如 1/2',
  `executor_fail_retry_count` int NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `trigger_time` datetime DEFAULT NULL COMMENT '调度-时间',
  `trigger_code` int NOT NULL COMMENT '调度-结果',
  `trigger_msg` text COMMENT '调度-日志',
  `handle_time` datetime DEFAULT NULL COMMENT '执行-时间',
  `handle_code` int NOT NULL COMMENT '执行-状态',
  `handle_msg` text COMMENT '执行-日志',
  `alarm_status` tinyint NOT NULL DEFAULT '0' COMMENT '告警状态：0-默认、1-无需告警、2-告警成功、3-告警失败',
  PRIMARY KEY (`id`),
  KEY `I_trigger_time` (`trigger_time`),
  KEY `I_handle_code` (`handle_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_log` */

insert  into `xxl_job_log`(`id`,`job_group`,`job_id`,`executor_address`,`executor_handler`,`executor_param`,`executor_sharding_param`,`executor_fail_retry_count`,`trigger_time`,`trigger_code`,`trigger_msg`,`handle_time`,`handle_code`,`handle_msg`,`alarm_status`) values

(15,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:04:50',200,'任务触发类型：手动触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:05:02',200,'',0),

(16,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:05:36',200,'任务触发类型：手动触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:05:46',200,'',0),

(17,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:21:56',200,'任务触发类型：手动触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:22:30',200,'',0),

(18,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:27:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:27:22',200,'',0),

(19,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:27:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:27:32',200,'',0),

(20,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:27:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:27:42',200,'',0),

(21,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:27:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:27:52',200,'',0),

(22,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:27:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:28:02',200,'',0),

(23,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:51:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:51:12',200,'',0),

(24,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:51:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:51:22',200,'',0),

(25,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:51:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:51:26',500,'web container destroy and kill the job. [job running, killed]',2),

(26,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:51:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：500<br>msg：xxl-rpc remoting error(Connection refused: connect), for url : http://192.168.1.33:9101/run',NULL,0,NULL,2),

(27,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:51:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:51:52',200,'',0),

(28,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:51:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:52:02',200,'',0),

(29,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:52:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:52:12',200,'',0),

(30,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:52:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:52:22',200,'',0),

(31,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:52:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:52:32',200,'',0),

(32,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:52:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:52:43',200,'',0),

(33,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:52:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:52:53',200,'',0),

(34,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:52:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:53:05',200,'',0),

(35,1,1,'http://192.168.1.33:9102/','demoJobHandler','',NULL,0,'2022-06-27 09:53:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9102/<br>code：200<br>msg：null','2022-06-27 09:53:15',200,'',0),

(36,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:53:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:53:21',200,'',0),

(37,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:53:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:53:32',200,'',0),

(38,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:53:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:53:42',200,'',0),

(39,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:53:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:53:53',200,'',0),

(40,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:53:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:54:03',200,'',0),

(41,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:54:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:54:13',200,'',0),

(42,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:54:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:54:24',200,'',0),

(43,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:54:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:54:34',200,'',0),

(44,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:54:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:54:44',200,'',0),

(45,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:54:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:54:55',200,'',0),

(46,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:54:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:55:05',200,'',0),

(47,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:55:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:55:15',200,'',0),

(48,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:55:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:55:25',200,'',0),

(49,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:55:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:55:35',200,'',0),

(50,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:55:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:55:45',200,'',0),

(51,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:55:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:55:56',200,'',0),

(52,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:55:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:56:07',200,'',0),

(53,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:56:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:56:17',200,'',0),

(54,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:56:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/, http://192.168.1.33:9102/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:56:28',200,'',0),

(55,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:56:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:56:38',200,'',0),

(56,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:56:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:56:48',200,'',0),

(57,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:56:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:56:58',200,'',0),

(58,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:56:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:57:08',200,'',0),

(59,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:57:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:57:18',200,'',0),

(60,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:57:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:57:54',200,'',0),

(61,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:57:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:57:56',200,'',0),

(62,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:57:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:57:49',200,'',0),

(63,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:58:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:58:10',200,'',0),

(64,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:58:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:58:21',200,'',0),

(65,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:58:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:58:31',200,'',0),

(66,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:58:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:58:41',200,'',0),

(67,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:58:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:58:51',200,'',0),

(68,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:58:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:59:02',200,'',0),

(69,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:59:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:59:12',200,'',0),

(70,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:59:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:59:22',200,'',0),

(71,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:59:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:59:32',200,'',0),

(72,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:59:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:59:42',200,'',0),

(74,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:59:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 09:59:53',200,'',0),

(75,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 09:59:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:00:03',200,'',0),

(77,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:00:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:00:13',200,'',0),

(79,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:00:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:00:24',200,'',0),

(81,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:00:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:00:35',200,'',0),

(84,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:00:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:00:46',200,'',0),

(85,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:00:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:00:57',200,'',0),

(87,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:00:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:01:08',200,'',0),

(90,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:01:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:01:19',200,'',0),

(91,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:01:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:01:30',200,'',0),

(94,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:01:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:01:40',200,'',0),

(95,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:01:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:01:50',200,'',0),

(97,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:01:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:02:01',200,'',0),

(99,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:01:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:02:12',200,'',0),

(102,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:02:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:02:22',200,'',0),

(104,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:02:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:02:32',200,'',0),

(105,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:02:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:02:42',200,'',0),

(108,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:02:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:02:53',200,'',0),

(110,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:02:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:03:03',200,'',0),

(111,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:02:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:03:13',200,'',0),

(113,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:03:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:03:23',200,'',0),

(115,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:03:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:03:34',200,'',0),

(117,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:03:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:03:45',200,'',0),

(120,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:03:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:03:56',200,'',0),

(121,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:03:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:04:06',200,'',0),

(123,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:03:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:04:17',200,'',0),

(126,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:04:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:04:27',200,'',0),

(127,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:04:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:04:37',200,'',0),

(130,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:04:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:04:47',200,'',0),

(131,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:04:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:04:58',200,'',0),

(133,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:04:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:05:08',200,'',0),

(136,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:04:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:05:18',200,'',0),

(137,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:05:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:05:23',500,'web container destroy and kill the job. [job running, killed]',2),

(140,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:05:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:05:23',500,'web container destroy and kill the job. [job not executed, in the job queue, killed.]',2),

(141,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:05:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 10:05:24',500,'web container destroy and kill the job. [job not executed, in the job queue, killed.]',2),

(143,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:05:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：500<br>msg：xxl-rpc remoting error(Connection refused: connect), for url : http://192.168.1.33:9101/run',NULL,0,NULL,2),

(146,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:05:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：500<br>msg：xxl-rpc remoting error(Connection refused: connect), for url : http://192.168.1.33:9101/run',NULL,0,NULL,2),

(147,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 10:05:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：500<br>msg：xxl-rpc remoting error(Connection refused: connect), for url : http://192.168.1.33:9101/run',NULL,0,NULL,2),

(149,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:06:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(152,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:06:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(154,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:06:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(156,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:06:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(157,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:06:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(159,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:06:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(162,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:07:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(164,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:07:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(165,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:07:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(168,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:07:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(170,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:07:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(171,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:07:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(173,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:08:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(176,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:08:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(177,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:08:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(180,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:08:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(181,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:08:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(184,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:08:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(185,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:09:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(187,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:09:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(190,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:09:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(191,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:09:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(193,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:09:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(196,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:09:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(198,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:10:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(200,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:10:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(201,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:10:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(204,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:10:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(206,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:10:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(207,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:10:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(209,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:11:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(212,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:11:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(214,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:11:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(216,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:11:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(218,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:11:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(219,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:11:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(222,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:12:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(223,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:12:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(226,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:12:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(228,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:12:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(229,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:12:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(231,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:12:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(233,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:13:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(236,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:13:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(237,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:13:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(240,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:13:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(242,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:13:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(243,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:13:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(246,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:14:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(247,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:14:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(249,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:14:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(252,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:14:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(254,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:14:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(255,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:14:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(257,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:15:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(260,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:15:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(261,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:15:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(263,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:15:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(265,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:15:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(268,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:15:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(270,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:16:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(272,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:16:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(274,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:16:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(275,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:16:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(278,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:16:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(279,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:16:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(281,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:17:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(284,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:17:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(285,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:17:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(287,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:17:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(290,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:17:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(292,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:17:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(294,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:18:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(295,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:18:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(298,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:18:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(299,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:18:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(302,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:18:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(303,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:18:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(305,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:19:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(308,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:19:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(309,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:19:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(312,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:19:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(313,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:19:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(315,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:19:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(317,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:20:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(319,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:20:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(321,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:20:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(323,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:20:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(326,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:20:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(327,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:20:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(330,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:21:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(331,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:21:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(334,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:21:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(335,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:21:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(337,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:21:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(340,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:21:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(341,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:22:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(344,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:22:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(345,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:22:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(348,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:22:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(350,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:22:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(351,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:22:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(353,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:23:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(355,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:23:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(357,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:23:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(359,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:23:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(361,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:23:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(363,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:23:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(365,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:24:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(368,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:24:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(370,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:24:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(372,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:24:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(374,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:24:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(375,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:24:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(377,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:25:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(379,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:25:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(382,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:25:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(383,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:25:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(386,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:25:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(387,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:25:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(390,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:26:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(392,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:26:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(394,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:26:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(395,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:26:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(398,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:26:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(400,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:26:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(401,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:27:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2),

(403,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:27:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(405,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:27:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(408,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:27:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(409,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:27:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(412,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:27:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(414,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:28:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(416,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:28:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(418,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:28:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(420,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:28:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(422,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:28:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(423,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:28:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(426,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:29:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(427,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:29:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(429,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:29:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(431,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:29:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(434,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:29:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(436,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:29:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(438,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:30:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(440,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:30:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(441,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:30:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(444,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:30:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(446,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:30:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(447,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:30:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(450,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:31:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(452,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:31:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(453,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:31:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(455,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:31:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(457,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:31:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(460,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:31:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(461,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:32:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(464,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:32:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(466,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:32:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(468,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:32:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(469,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:32:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(472,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:32:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(473,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:33:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(476,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:33:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(477,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:33:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(480,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:33:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(481,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:33:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(484,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:33:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(485,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:34:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(487,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:34:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(490,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:34:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(491,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:34:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(493,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:34:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(495,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:34:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(498,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:35:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(499,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:35:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(502,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:35:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(504,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:35:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(505,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:35:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(507,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:35:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(510,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:36:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(512,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:36:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(513,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:36:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(515,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:36:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(517,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:36:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(519,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:36:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(522,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:37:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(523,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:37:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(526,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:37:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(527,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:37:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(529,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:37:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(531,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:37:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(534,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:38:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(535,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:38:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(537,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:38:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(540,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:38:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(541,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:38:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(544,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:38:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(545,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:39:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(548,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:39:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(550,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:39:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(551,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:39:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(554,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:39:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(555,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:39:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(558,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:40:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(559,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:40:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(562,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:40:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(563,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:40:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(566,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:40:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(568,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:40:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(569,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:41:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(571,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:41:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(574,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:41:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(576,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:41:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(578,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:41:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(580,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:41:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(581,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:42:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(584,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:42:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(585,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:42:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(588,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:42:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(589,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:42:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(591,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:42:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(594,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:43:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(595,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:43:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(597,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:43:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(600,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:43:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(602,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:43:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(604,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:43:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(605,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:44:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(608,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:44:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(609,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:44:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(611,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:44:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(613,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:44:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(616,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:44:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(618,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:45:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(620,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:45:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(621,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:45:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(624,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:45:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(626,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:45:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(627,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:45:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(630,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:46:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(631,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:46:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(633,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:46:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(635,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:46:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(637,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:46:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(640,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:46:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(642,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:47:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(644,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:47:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(645,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:47:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(647,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:47:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(649,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:47:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(651,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:47:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(653,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:48:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(656,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:48:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(658,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:48:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(660,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:48:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(661,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:48:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(663,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:48:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(666,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:49:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(668,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:49:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(670,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:49:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(672,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:49:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(673,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:49:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(675,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:49:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(678,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:50:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(680,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:50:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(681,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:50:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(683,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:50:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(685,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:50:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(688,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:50:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(690,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:51:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(692,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:51:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(694,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:51:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(696,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:51:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(697,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:51:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(699,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:51:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(701,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:52:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(704,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:52:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(706,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:52:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(707,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:52:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(709,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:52:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(712,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:52:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(714,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:53:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(716,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:53:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(718,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:53:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(720,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:53:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(722,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:53:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(724,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:53:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(725,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:54:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(727,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:54:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(730,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:54:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(731,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:54:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(734,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:54:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(736,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:54:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(737,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:55:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(739,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:55:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(741,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:55:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(744,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:55:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(745,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:55:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(747,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:55:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(749,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:56:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(752,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:56:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(753,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:56:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(756,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:56:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(757,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:56:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(759,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:56:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(762,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:57:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(763,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:57:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(766,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:57:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(768,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:57:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(770,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:57:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(771,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:57:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(773,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:58:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(775,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:58:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(778,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:58:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(779,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:58:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(782,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:59:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(784,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:59:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(786,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:59:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(788,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 10:59:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(790,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:00:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(792,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:00:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(794,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:00:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(795,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:00:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(797,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:00:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(800,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:00:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(802,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:01:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(803,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:01:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(805,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:01:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(807,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:01:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(809,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:01:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(811,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:01:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(813,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:02:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(815,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:02:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(817,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:02:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(820,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:02:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(822,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:02:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(823,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:02:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(826,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:03:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(827,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:03:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(830,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:03:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(832,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:03:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(833,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:03:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(836,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:03:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(838,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:04:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(839,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:04:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(842,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:13:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(844,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:13:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(845,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:13:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(847,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:13:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:13:52',200,'',0),

(850,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:13:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:14:02',200,'',0),

(851,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:14:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:14:13',200,'',0),

(853,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:14:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:14:23',200,'',0),

(855,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:14:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:14:33',200,'',0),

(857,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:14:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:14:43',200,'',0),

(860,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:14:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:14:54',200,'',0),

(861,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:14:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:15:04',200,'',0),

(864,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:15:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:15:15',200,'',0),

(866,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:15:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:15:25',200,'',0),

(868,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:15:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:15:35',200,'',0),

(870,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:15:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:15:45',200,'',0),

(871,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:15:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:15:55',200,'',0),

(874,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:15:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:16:06',200,'',0),

(875,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:16:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:16:11',500,'web container destroy and kill the job. [job running, killed]',3),

(878,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:16:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:16:11',500,'web container destroy and kill the job. [job not executed, in the job queue, killed.]',3),

(880,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:16:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：500<br>msg：xxl-rpc remoting error(Connection refused: connect), for url : http://192.168.1.33:9101/run',NULL,0,NULL,3),

(882,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:16:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：500<br>msg：xxl-rpc remoting error(Connection refused: connect), for url : http://192.168.1.33:9101/run',NULL,0,NULL,3),

(884,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:16:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(886,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:16:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(888,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:17:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(890,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:17:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:17:22',200,'',0),

(891,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:17:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:17:33',200,'',0),

(894,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:17:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:17:43',200,'',0),

(896,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:17:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:17:54',200,'',0),

(898,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:17:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:18:04',200,'',0),

(899,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:18:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:18:15',200,'',0),

(901,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:18:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:18:25',200,'',0),

(903,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:18:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:18:35',200,'',0),

(905,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:18:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:18:46',200,'',0),

(907,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:18:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:18:56',200,'',0),

(910,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:18:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:19:06',200,'',0),

(911,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:19:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:19:17',200,'',0),

(914,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:19:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:19:27',200,'',0),

(915,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:19:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:19:39',200,'',0),

(917,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:19:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:19:49',200,'',0),

(920,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:19:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:19:59',200,'',0),

(922,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:19:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:20:10',200,'',0),

(924,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:20:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:20:20',200,'',0),

(926,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:20:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:20:30',200,'',0),

(927,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:20:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:20:41',200,'',0),

(929,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:20:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:20:51',200,'',0),

(931,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:20:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:21:02',200,'',0),

(933,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:20:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:21:12',200,'',0),

(935,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:21:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:21:23',200,'',0),

(937,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:21:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:21:34',200,'',0),

(940,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:21:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:21:44',200,'',0),

(941,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:21:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:21:55',200,'',0),

(943,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:21:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:22:05',200,'',0),

(945,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:21:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:22:16',200,'',0),

(947,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:22:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:22:26',200,'',0),

(949,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:22:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:22:37',200,'',0),

(952,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:22:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:22:47',200,'',0),

(953,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:22:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:22:58',200,'',0),

(956,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:22:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:23:08',200,'',0),

(957,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:22:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:23:19',200,'',0),

(960,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:23:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:23:30',200,'',0),

(962,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:23:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:23:40',200,'',0),

(964,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:23:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:23:50',200,'',0),

(965,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:23:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:24:00',200,'',0),

(967,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:23:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:24:12',200,'',0),

(969,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:23:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:24:22',200,'',0),

(972,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:24:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:24:32',200,'',0),

(973,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:24:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:24:44',200,'',0),

(975,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:24:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:24:55',200,'',0),

(978,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:24:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:25:05',200,'',0),

(979,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:24:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:25:15',200,'',0),

(981,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:24:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:25:26',200,'',0),

(983,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:25:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:25:36',200,'',0),

(986,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:25:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:25:46',200,'',0),

(988,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:25:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:25:56',200,'',0),

(989,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:25:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:26:08',200,'',0),

(991,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:25:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:26:18',200,'',0),

(993,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:25:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:26:28',200,'',0),

(996,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:26:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:26:39',200,'',0),

(998,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:26:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:26:49',200,'',0),

(999,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:26:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:26:59',200,'',0),

(1001,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:26:30',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:27:10',200,'',0),

(1004,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:26:40',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:27:21',200,'',0),

(1005,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:26:50',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:27:24',500,'web container destroy and kill the job. [job running, killed]',3),

(1007,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:27:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:27:24',500,'web container destroy and kill the job. [job not executed, in the job queue, killed.]',3),

(1010,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:27:10',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:27:24',500,'web container destroy and kill the job. [job not executed, in the job queue, killed.]',3),

(1012,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:27:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：200<br>msg：null','2022-06-27 11:27:24',500,'web container destroy and kill the job. [job not executed, in the job queue, killed.]',3),

(1013,1,1,'http://192.168.1.33:9101/','demoJobHandler','',NULL,0,'2022-06-27 11:27:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：[http://192.168.1.33:9101/]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：http://192.168.1.33:9101/<br>code：500<br>msg：xxl-rpc remoting error(Connection refused: connect), for url : http://192.168.1.33:9101/run',NULL,0,NULL,3),

(1015,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:27:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1017,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:27:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1020,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:28:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1021,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:28:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1023,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:28:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1025,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:28:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1028,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:28:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1029,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:28:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1032,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:29:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1033,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:29:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1035,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:29:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1038,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:29:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1039,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:29:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1042,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:29:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1043,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:30:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1046,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:30:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1047,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:30:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1049,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:30:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1051,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:30:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1054,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:30:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1056,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:31:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1057,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:31:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1059,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:31:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1061,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:31:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1063,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:31:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1066,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:31:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1068,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:32:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1070,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:32:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1071,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:32:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1074,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:32:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1076,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:32:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1078,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:32:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1079,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:33:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1082,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:33:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1083,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:33:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1085,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:33:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1088,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:33:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1089,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:33:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1092,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:34:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1094,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:34:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1095,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:34:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1098,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:34:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1100,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:34:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1101,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:34:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1103,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:35:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1106,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:35:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1107,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:35:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1110,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:35:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1111,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:35:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1113,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:35:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1115,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:36:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1117,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:36:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1120,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:36:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1121,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:36:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1123,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:36:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1125,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:36:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1127,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:37:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1129,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:37:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1131,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:37:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1133,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:37:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1136,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:37:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1137,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:37:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1140,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:38:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1142,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:38:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1144,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:38:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1145,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:38:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1147,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:38:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1149,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:38:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1152,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:39:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1153,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:39:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1156,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:39:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1158,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:39:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1159,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:39:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1161,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:39:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1163,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:40:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1165,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:40:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1167,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:40:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1170,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:40:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1171,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:40:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1173,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:40:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1175,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:41:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1177,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:41:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1179,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:41:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1182,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:41:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1183,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:41:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1185,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:41:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1187,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:42:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1190,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:42:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1192,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:42:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1194,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:42:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1196,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:42:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1197,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:42:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1200,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:43:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1202,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:43:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1203,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:43:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1205,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:43:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1208,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:43:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1209,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:43:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1210,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:44:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1211,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:44:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1212,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:44:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1213,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:44:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1214,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:44:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1215,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:44:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1216,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:45:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1217,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:45:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1218,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:45:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1219,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:45:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1220,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:45:40',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1221,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:45:50',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1222,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:46:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1223,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:46:10',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1224,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:46:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,3),

(1225,1,1,NULL,'demoJobHandler','',NULL,0,'2022-06-27 11:46:30',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.33<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,2);

/*Table structure for table `xxl_job_log_report` */

DROP TABLE IF EXISTS `xxl_job_log_report`;

CREATE TABLE `xxl_job_log_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trigger_day` datetime DEFAULT NULL COMMENT '调度-时间',
  `running_count` int NOT NULL DEFAULT '0' COMMENT '运行中-日志数量',
  `suc_count` int NOT NULL DEFAULT '0' COMMENT '执行成功-日志数量',
  `fail_count` int NOT NULL DEFAULT '0' COMMENT '执行失败-日志数量',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_trigger_day` (`trigger_day`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_log_report` */

insert  into `xxl_job_log_report`(`id`,`trigger_day`,`running_count`,`suc_count`,`fail_count`,`update_time`) values

(1,'2022-06-24 00:00:00',0,0,0,NULL),

(2,'2022-06-23 00:00:00',0,0,0,NULL),

(3,'2022-06-22 00:00:00',0,0,0,NULL),

(4,'2022-06-25 00:00:00',0,0,0,NULL),

(5,'2022-06-26 00:00:00',0,0,0,NULL),

(6,'2022-06-27 00:00:00',0,160,483,NULL),

(7,'2022-06-28 00:00:00',0,0,0,NULL),

(8,'2022-06-29 00:00:00',0,0,0,NULL),

(9,'2022-06-30 00:00:00',0,0,0,NULL);

/*Table structure for table `xxl_job_logglue` */

DROP TABLE IF EXISTS `xxl_job_logglue`;

CREATE TABLE `xxl_job_logglue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) DEFAULT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) NOT NULL COMMENT 'GLUE备注',
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_logglue` */

/*Table structure for table `xxl_job_registry` */

DROP TABLE IF EXISTS `xxl_job_registry`;

CREATE TABLE `xxl_job_registry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(50) NOT NULL,
  `registry_key` varchar(255) NOT NULL,
  `registry_value` varchar(255) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_g_k_v` (`registry_group`,`registry_key`,`registry_value`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_registry` */

insert  into `xxl_job_registry`(`id`,`registry_group`,`registry_key`,`registry_value`,`update_time`) values

(33,'EXECUTOR','xxl-job-executor','http://192.168.1.33:9101/','2022-06-30 18:50:07');

/*Table structure for table `xxl_job_user` */

DROP TABLE IF EXISTS `xxl_job_user`;

CREATE TABLE `xxl_job_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `role` tinyint NOT NULL COMMENT '角色：0-普通用户、1-管理员',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限：执行器ID列表，多个逗号分割',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `xxl_job_user` */

insert  into `xxl_job_user`(`id`,`username`,`password`,`role`,`permission`) values

(1,'admin','e10adc3949ba59abbe56e057f20f883e',1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
