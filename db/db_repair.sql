-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 03, 2014 at 07:52 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `db_repair`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `authassignment`
-- 

DROP TABLE IF EXISTS `authassignment`;
CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY  (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `authassignment`
-- 

INSERT INTO `authassignment` VALUES ('Admin', '1', NULL, 'N;');
INSERT INTO `authassignment` VALUES ('Helpdesk', '3', NULL, 'N;');
INSERT INTO `authassignment` VALUES ('Helpdesk', '4', NULL, 'N;');

-- --------------------------------------------------------

-- 
-- Table structure for table `authitem`
-- 

DROP TABLE IF EXISTS `authitem`;
CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `authitem`
-- 

INSERT INTO `authitem` VALUES ('Admin', 2, 'Administrator', NULL, 'N;');
INSERT INTO `authitem` VALUES ('Authenticated', 2, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Guest', 2, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Helpdesk', 2, 'IT-Helpdesk', NULL, 'N;');
INSERT INTO `authitem` VALUES ('Helpdesk-Mgr-Eng-Clerk', 2, 'Helpdesk-Mgr-Eng-Clerk', NULL, 'N;');
INSERT INTO `authitem` VALUES ('EmployeeWD', 2, 'EmployeeWD', NULL, 'N;');
INSERT INTO `authitem` VALUES ('Department.View', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Department.Create', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Department.Update', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Department.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Department.Index', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Department.Admin', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceBrand.View', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceBrand.Create', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceBrand.Update', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceBrand.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceBrand.Index', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceBrand.Admin', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Device.View', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Device.Create', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Device.Update', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Device.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Device.Index', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Device.Admin', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceModel.View', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceModel.Create', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceModel.Update', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceModel.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceModel.Index', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceModel.Admin', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceType.View', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceType.Create', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceType.Update', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceType.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceType.Index', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('DeviceType.Admin', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Location.View', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Location.Create', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Location.Update', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Location.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Location.Index', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Location.Admin', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

-- 
-- Table structure for table `authitemchild`
-- 

DROP TABLE IF EXISTS `authitemchild`;
CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY  (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `authitemchild`
-- 

INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Department.Admin');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Department.Create');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Department.Delete');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Department.Index');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Department.Update');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Department.View');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Device.Admin');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Device.Create');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Device.Delete');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Device.Index');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Device.Update');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Device.View');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceBrand.Admin');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceBrand.Create');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceBrand.Delete');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceBrand.Index');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceBrand.Update');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceBrand.View');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceModel.Admin');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceModel.Create');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceModel.Delete');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceModel.Index');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceModel.Update');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceModel.View');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceType.Admin');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceType.Create');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceType.Delete');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceType.Index');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceType.Update');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'DeviceType.View');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Location.Admin');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Location.Create');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Location.Delete');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Location.Index');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Location.Update');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Location.View');

-- --------------------------------------------------------

-- 
-- Table structure for table `departments`
-- 

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `department_name` varchar(50) NOT NULL COMMENT 'Department',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `department_name_UNIQUE` (`department_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `departments`
-- 

INSERT INTO `departments` VALUES (1, 'AME');
INSERT INTO `departments` VALUES (2, 'FA Lab');
INSERT INTO `departments` VALUES (3, 'IT');
INSERT INTO `departments` VALUES (4, 'Mechanical Lab');
INSERT INTO `departments` VALUES (5, 'PDE');
INSERT INTO `departments` VALUES (6, 'Servo');
INSERT INTO `departments` VALUES (7, 'SPW');
INSERT INTO `departments` VALUES (8, 'STW');
INSERT INTO `departments` VALUES (13, 'TDE');
INSERT INTO `departments` VALUES (11, 'Tooling Office');
INSERT INTO `departments` VALUES (10, 'Tooling PM & Setup');
INSERT INTO `departments` VALUES (9, 'Tooling Repair');
INSERT INTO `departments` VALUES (12, 'TSD');

-- --------------------------------------------------------

-- 
-- Table structure for table `devices`
-- 

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `device_code` varchar(50) NOT NULL COMMENT 'Device Code',
  `device_type_id` int(11) NOT NULL COMMENT 'Device Type',
  `device_brand_id` int(11) NOT NULL COMMENT 'Device Brand',
  `device_model_id` int(11) NOT NULL COMMENT 'Device Model',
  `location_id` int(11) NOT NULL COMMENT 'Location',
  `device_create_at` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'Create at',
  `device_buy_date` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Device buy date',
  `device_warranty_expire` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Device warranty expire',
  `device_remark` varchar(255) NOT NULL COMMENT 'Remark',
  PRIMARY KEY  (`id`),
  KEY `device_type_device` (`device_type_id`),
  KEY `device_location_device` (`location_id`),
  KEY `device_model_device` (`device_model_id`),
  KEY `device_brand_device` (`device_brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `devices`
-- 

INSERT INTO `devices` VALUES (1, 'DELL', 1, 2, 1, 6, '2014-03-31 11:24:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'IT-Helpdesk Spare B6');
INSERT INTO `devices` VALUES (2, 'WDT02848', 1, 2, 2, 6, '2014-03-31 11:28:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'IT-Helpdesk Spare B6');

-- --------------------------------------------------------

-- 
-- Table structure for table `device_brands`
-- 

DROP TABLE IF EXISTS `device_brands`;
CREATE TABLE IF NOT EXISTS `device_brands` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `device_brand_name` varchar(50) NOT NULL COMMENT 'Device Brand',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `device_brand_name` (`device_brand_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `device_brands`
-- 

INSERT INTO `device_brands` VALUES (1, 'ACER');
INSERT INTO `device_brands` VALUES (2, 'DELL');
INSERT INTO `device_brands` VALUES (3, 'HP');
INSERT INTO `device_brands` VALUES (5, 'LENOVO');
INSERT INTO `device_brands` VALUES (4, 'TOSHIBA');

-- --------------------------------------------------------

-- 
-- Table structure for table `device_models`
-- 

DROP TABLE IF EXISTS `device_models`;
CREATE TABLE IF NOT EXISTS `device_models` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `device_brand_id` int(11) NOT NULL COMMENT 'Device Brand',
  `device_model_name` varchar(50) NOT NULL COMMENT 'Device Model',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `device_model_name` (`device_model_name`),
  KEY `device_model_device_brand_id` (`device_brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `device_models`
-- 

INSERT INTO `device_models` VALUES (1, 2, 'Optiplex 3010');
INSERT INTO `device_models` VALUES (2, 2, 'Optiplex 780');

-- --------------------------------------------------------

-- 
-- Table structure for table `device_types`
-- 

DROP TABLE IF EXISTS `device_types`;
CREATE TABLE IF NOT EXISTS `device_types` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `device_type_name` varchar(50) NOT NULL COMMENT 'Device Type',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `device_type_name` (`device_type_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `device_types`
-- 

INSERT INTO `device_types` VALUES (4, 'Accessories');
INSERT INTO `device_types` VALUES (1, 'Computer');
INSERT INTO `device_types` VALUES (2, 'Laptop');
INSERT INTO `device_types` VALUES (5, 'Other');
INSERT INTO `device_types` VALUES (3, 'Printer');

-- --------------------------------------------------------

-- 
-- Table structure for table `locations`
-- 

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `location_name` varchar(50) NOT NULL COMMENT 'Location',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `location_name` (`location_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `locations`
-- 

INSERT INTO `locations` VALUES (1, 'Building 1');
INSERT INTO `locations` VALUES (2, 'Building 2');
INSERT INTO `locations` VALUES (3, 'Building 3');
INSERT INTO `locations` VALUES (4, 'Building 4');
INSERT INTO `locations` VALUES (5, 'Building 5');
INSERT INTO `locations` VALUES (6, 'Building 6');
INSERT INTO `locations` VALUES (7, 'NAVA');

-- --------------------------------------------------------

-- 
-- Table structure for table `profiles`
-- 

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `user_id` int(11) NOT NULL auto_increment,
  `lastname` varchar(50) NOT NULL default '',
  `firstname` varchar(50) NOT NULL default '',
  `employee_number` int(6) unsigned zerofill NOT NULL,
  `extension_number` int(5) unsigned zerofill NOT NULL,
  `location_id` varchar(50) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `employee_number` (`employee_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `profiles`
-- 

INSERT INTO `profiles` VALUES (1, 'Admin', 'Administrator', 000000, 00000, '0', '0');
INSERT INTO `profiles` VALUES (2, 'Demo', 'Demo', 000001, 00000, '0', '0');
INSERT INTO `profiles` VALUES (3, 'Trainee', 'ITStudent', 000006, 77634, '6', '3');
INSERT INTO `profiles` VALUES (4, 'Trainee', 'ITStudent', 000003, 77277, '3', '3');

-- --------------------------------------------------------

-- 
-- Table structure for table `profiles_fields`
-- 

DROP TABLE IF EXISTS `profiles_fields`;
CREATE TABLE IF NOT EXISTS `profiles_fields` (
  `id` int(10) NOT NULL auto_increment,
  `varname` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `field_type` varchar(50) NOT NULL,
  `field_size` varchar(15) NOT NULL default '0',
  `field_size_min` varchar(15) NOT NULL default '0',
  `required` int(1) NOT NULL default '0',
  `match` varchar(255) NOT NULL default '',
  `range` varchar(255) NOT NULL default '',
  `error_message` varchar(255) NOT NULL default '',
  `other_validator` varchar(5000) NOT NULL default '',
  `default` varchar(255) NOT NULL default '',
  `widget` varchar(255) NOT NULL default '',
  `widgetparams` varchar(5000) NOT NULL default '',
  `position` int(3) NOT NULL default '0',
  `visible` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `varname` (`varname`,`widget`,`visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `profiles_fields`
-- 

INSERT INTO `profiles_fields` VALUES (1, 'lastname', 'Last Name', 'VARCHAR', '50', '3', 1, '', '', 'Incorrect Last Name (length between 3 and 50 characters).', '', '', '', '', 1, 3);
INSERT INTO `profiles_fields` VALUES (2, 'firstname', 'First Name', 'VARCHAR', '50', '3', 1, '', '', 'Incorrect First Name (length between 3 and 50 characters).', '', '', '', '', 0, 3);
INSERT INTO `profiles_fields` VALUES (3, 'employee_number', 'En.', 'INTEGER', '6', '6', 1, '', '', 'Please type your en.', '', '', '', '', 2, 3);
INSERT INTO `profiles_fields` VALUES (4, 'extension_number', 'Ext.', 'INTEGER', '5', '5', 1, '', '', 'Please input your ext.', '', '', '', '', 3, 3);
INSERT INTO `profiles_fields` VALUES (5, 'location_id', 'Location', 'INTEGER', '11', '1', 1, '', '1;2;3;4;5;6;7;8;9;10', 'Please select your location.', '', '', 'UWrelBelongsTo', '{"modelName":"Location","optionName":"location_name","emptyField":"Plaese select your location.","relationName":"locations","htmlOptions":"array(''style''=>''width: 250px;'')"}', 4, 3);
INSERT INTO `profiles_fields` VALUES (6, 'department_id', 'Department', 'INTEGER', '10', '1', 1, '', '', 'Please select your department.', '', '', 'UWrelBelongsTo', '{"modelName":"Department","optionName":"department_name","emptyField":"Not fond","relationName":"departments"}', 5, 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `requests`
-- 

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL auto_increment,
  `request_fname` varchar(50) NOT NULL COMMENT 'First name',
  `request_lname` varchar(50) NOT NULL COMMENT 'Last name',
  `request_en` int(11) NOT NULL COMMENT 'En.',
  `request_ext` int(5) NOT NULL COMMENT 'Ext.',
  `request_email` varchar(125) NOT NULL COMMENT 'E-mail',
  `location_id` int(11) NOT NULL COMMENT 'Location',
  `department_id` int(11) NOT NULL COMMENT 'Department',
  `device_id` int(11) NOT NULL COMMENT 'Device',
  `request_problem` varchar(500) NOT NULL COMMENT 'Requests problem',
  `request_detail` text NOT NULL COMMENT 'Requests detail',
  `request_remark` text NOT NULL COMMENT 'Requests remark',
  `request_create_date` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'Requests date',
  `request_get_date` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Get request date',
  `request_start_repair_date` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Start repair',
  `request_end_repair_date` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'End repair',
  `request_clame_date` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Clame date',
  `request_clame_remark` varchar(500) NOT NULL COMMENT 'Clame remark',
  `request_close_date` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Closed date',
  `user_repair_id` int(11) NOT NULL COMMENT 'Repair by',
  `user_close_id` int(11) NOT NULL COMMENT 'Close by',
  `request_answer` text NOT NULL COMMENT 'Requests answer',
  `request_repair_detail` text NOT NULL COMMENT 'Repair detail',
  `request_status` enum('wait','get','repair','forward','repair_out','repair_end','close') NOT NULL COMMENT 'Requests status',
  `request_end_remark` text NOT NULL COMMENT 'End remark',
  PRIMARY KEY  (`id`),
  KEY `user_repair_request` (`user_repair_id`),
  KEY `user_close_request` (`user_close_id`),
  KEY `location_request` (`location_id`),
  KEY `department_request` (`department_id`),
  KEY `device_request` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `requests`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `rights`
-- 

DROP TABLE IF EXISTS `rights`;
CREATE TABLE IF NOT EXISTS `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY  (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `rights`
-- 

INSERT INTO `rights` VALUES ('Admin', 2, 0);
INSERT INTO `rights` VALUES ('Authenticated', 2, 4);
INSERT INTO `rights` VALUES ('Helpdesk', 2, 1);
INSERT INTO `rights` VALUES ('Helpdesk-Mgr-Eng-Clerk', 2, 2);
INSERT INTO `rights` VALUES ('Guest', 2, 5);
INSERT INTO `rights` VALUES ('EmployeeWD', 2, 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activkey` varchar(128) NOT NULL default '',
  `create_at` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  `superuser` int(1) NOT NULL default '0',
  `status` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`),
  KEY `superuser` (`superuser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '9a24eff8c15a6a141ece27eb6947da0f', '2014-03-25 16:43:29', '2014-04-03 19:34:45', 1, 1);
INSERT INTO `users` VALUES (2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@example.com', '099f825543f7850cc038b90aaff39fac', '2014-03-25 16:43:29', '2014-04-02 15:58:58', 0, 1);
INSERT INTO `users` VALUES (3, 'it_student_b6', 'f65c10ef2cf4fb089208c220296240a7', 'itstudent.trainee@wdc.com', 'a68e114ebb1a165db672404d5ac74fbd', '2014-04-01 16:28:03', '2014-04-03 14:03:50', 0, 1);
INSERT INTO `users` VALUES (4, 'it_student_b3', 'f65c10ef2cf4fb089208c220296240a7', 'itstudent.trainee3@wdc.com', 'e783f5e5e3c282f7b672def73d7856e7', '2014-04-01 16:32:39', '0000-00-00 00:00:00', 0, 1);

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `devices`
-- 
ALTER TABLE `devices`
  ADD CONSTRAINT `device_brand_device` FOREIGN KEY (`device_brand_id`) REFERENCES `device_brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `device_location_device` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `device_model_device` FOREIGN KEY (`device_model_id`) REFERENCES `device_models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `device_type_device` FOREIGN KEY (`device_type_id`) REFERENCES `device_types` (`id`) ON DELETE CASCADE;

-- 
-- Constraints for table `device_models`
-- 
ALTER TABLE `device_models`
  ADD CONSTRAINT `device_model_device_brand_id` FOREIGN KEY (`device_brand_id`) REFERENCES `device_brands` (`id`) ON DELETE CASCADE;

-- 
-- Constraints for table `profiles`
-- 
ALTER TABLE `profiles`
  ADD CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

-- 
-- Constraints for table `requests`
-- 
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_49` FOREIGN KEY (`user_close_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_43` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_44` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_45` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_48` FOREIGN KEY (`user_repair_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
