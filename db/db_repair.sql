-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 26, 2014 at 11:17 AM
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

INSERT INTO `authitem` VALUES ('Admin', 2, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Authenticated', 2, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Guest', 2, NULL, NULL, 'N;');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `departments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `devices`
-- 

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `device_code` varchar(50) NOT NULL COMMENT 'Device Code',
  `device_type_id` int(11) NOT NULL COMMENT 'Device Type',
  `device_brand_id` int(11) NOT NULL COMMENT 'Device Brand',
  `device_model_id` int(11) NOT NULL COMMENT 'Device Model',
  `location_id` int(11) NOT NULL COMMENT 'Location',
  `device_create_at` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'Create at',
  PRIMARY KEY  (`device_code`),
  KEY `device_type_device` (`device_type_id`),
  KEY `device_location_device` (`location_id`),
  KEY `device_model_device` (`device_model_id`),
  KEY `device_brand_device` (`device_brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `devices`
-- 


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `device_brands`
-- 

INSERT INTO `device_brands` VALUES (1, 'ACER');
INSERT INTO `device_brands` VALUES (2, 'DELL');
INSERT INTO `device_brands` VALUES (3, 'HP');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `device_models`
-- 


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `device_types`
-- 


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `profiles`
-- 

INSERT INTO `profiles` VALUES (1, 'Admin', 'Administrator', 000000, 00000, '6', '0');
INSERT INTO `profiles` VALUES (2, 'Demo', 'Demo', 999999, 00000, '0', '0');

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
INSERT INTO `profiles_fields` VALUES (5, 'location_id', 'Location', 'INTEGER', '11', '1', 1, '', '', 'Please select your location.', '', '', 'UWrelBelongsTo', '{"modelName":"Location","optionName":"location_name","emptyField":"Plaese select your location.","relationName":"locations"}', 4, 3);
INSERT INTO `profiles_fields` VALUES (6, 'department_id', 'Department', 'INTEGER', '10', '1', 1, '', '', 'Please select your department.', '', '', 'UWrelBelongsTo', '{"modelName":"Department","optionName":"department_name","emptyField":"Please select your department.","relationName":"departments"}', 5, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '9a24eff8c15a6a141ece27eb6947da0f', '2014-03-25 16:43:29', '2014-03-26 11:05:15', 1, 1);
INSERT INTO `users` VALUES (2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@example.com', '099f825543f7850cc038b90aaff39fac', '2014-03-25 16:43:29', '2014-03-25 19:46:28', 0, 1);

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
