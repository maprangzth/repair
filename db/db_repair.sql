-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 03, 2014 at 10:27 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=252 ;

-- 
-- Dumping data for table `devices`
-- 

INSERT INTO `devices` VALUES (1, 'DELL', 1, 2, 1, 6, '2014-03-31 11:24:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'IT-Helpdesk Spare B6');
INSERT INTO `devices` VALUES (3, 'WDT3OA14-0001', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (4, 'WDT3OA14-0002', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (5, 'WDT3OA14-0003', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (6, 'WDT3OA14-0004', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (7, 'WDT3OA14-0005', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (8, 'WDT3OA14-0006', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (9, 'WDT3OA14-0007', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (10, 'WDT3OA14-0008', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (11, 'WDT3OA14-0009', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (12, 'WDT3OA14-0010', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (13, 'WDT3OA14-0011', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (14, 'WDT3OA14-0012', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (15, 'WDT3OA14-0013', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (16, 'WDT3OA14-0014', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (17, 'WDT3OA14-0015', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (18, 'WDT3OA14-0016', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (19, 'WDT3OA14-0017', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (20, 'WDT3OA14-0018', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (21, 'WDT3OA14-0019', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (22, 'WDT3OA14-0020', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (23, 'WDT3OA14-0021', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (24, 'WDT3OA14-0022', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (25, 'WDT3OA14-0023', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (26, 'WDT3OA14-0024', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (27, 'WDT3OA14-0025', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (28, 'WDT3OA14-0026', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (29, 'WDT3OA14-0027', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (30, 'WDT3OA14-0028', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (31, 'WDT3OA14-0029', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (32, 'WDT3OA14-0030', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (33, 'WDT3OA14-0031', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (34, 'WDT3OA14-0032', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (35, 'WDT3OA14-0033', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (36, 'WDT3OA14-0034', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (37, 'WDT3OA14-0035', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (38, 'WDT3OA14-0036', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (39, 'WDT3OA14-0037', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (40, 'WDT3OA14-0038', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (41, 'WDT3OA14-0039', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (42, 'WDT3OA14-0040', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (43, 'WDT3OA14-0041', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (44, 'WDT3OA14-0042', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (45, 'WDT3OA14-0043', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (46, 'WDT3OA14-0044', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (47, 'WDT3OA14-0045', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (48, 'WDT3OA14-0046', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (49, 'WDT3OA14-0047', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (50, 'WDT3OA14-0048', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (51, 'WDT3OA14-0049', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (52, 'WDT3OA14-0050', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (53, 'WDT3OA14-0051', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (54, 'WDT3OA14-0052', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (55, 'WDT3OA14-0053', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (56, 'WDT3OA14-0054', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (57, 'WDT3OA14-0055', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (58, 'WDT3OA14-0056', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (59, 'WDT3OA14-0057', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (60, 'WDT3OA14-0058', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (61, 'WDT3OA14-0059', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (62, 'WDT3OA14-0060', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (63, 'WDT3OA14-0061', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (64, 'WDT3OA14-0062', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (65, 'WDT3OA14-0063', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (66, 'WDT3OA14-0064', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (67, 'WDT3OA14-0065', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (68, 'WDT3OA14-0066', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (69, 'WDT3OA14-0067', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (70, 'WDT3OA14-0068', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (71, 'WDT3OA14-0069', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (72, 'WDT3OA14-0070', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (73, 'WDT3OA14-0071', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (74, 'WDT3OA14-0072', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (75, 'WDT3OA14-0073', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (76, 'WDT3OA14-0074', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (77, 'WDT3OA14-0075', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (78, 'WDT3OA14-0076', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (79, 'WDT3OA14-0077', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (80, 'WDT3OA14-0078', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (81, 'WDT3OA14-0079', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (82, 'WDT3OA14-0080', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (83, 'WDT3OA14-0081', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (84, 'WDT3OA14-0082', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (85, 'WDT3OA14-0083', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (86, 'WDT3OA14-0084', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (87, 'WDT3OA14-0085', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (88, 'WDT3OA14-0086', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (89, 'WDT3OA14-0087', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (90, 'WDT3OA14-0088', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (91, 'WDT3OA14-0089', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (92, 'WDT3OA14-0090', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (93, 'WDT3OA14-0091', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (94, 'WDT3OA14-0092', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (95, 'WDT3OA14-0093', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (96, 'WDT3OA14-0094', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (97, 'WDT3OA14-0095', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (98, 'WDT3OA14-0096', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (99, 'WDT3OA14-0097', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (100, 'WDT3OA14-0098', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (101, 'WDT3OA14-0099', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (102, 'WDT3OA14-0100', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (103, 'WDT3OA14-0101', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (104, 'WDT3OA14-0102', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (105, 'WDT3OA14-0103', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (106, 'WDT3OA14-0104', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (107, 'WDT3OA14-0105', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (108, 'WDT3OA14-0106', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (109, 'WDT3OA14-0107', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (110, 'WDT3OA14-0108', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (111, 'WDT3OA14-0109', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (112, 'WDT3OA14-0110', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (113, 'WDT3OA14-0111', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (114, 'WDT3OA14-0112', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (115, 'WDT3OA14-0113', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (116, 'WDT3OA14-0114', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (117, 'WDT3OA14-0115', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (118, 'WDT3OA14-0116', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (119, 'WDT3OA14-0118', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (120, 'WDT3OA14-0117', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (121, 'WDT3OA14-0119', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (122, 'WDT3OA14-0120', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (123, 'WDT3OA14-0121', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (124, 'WDT3OA14-0122', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (125, 'WDT3OA14-0123', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (126, 'WDT3OA14-0124', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (127, 'WDT3OA14-0125', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (128, 'WDT3OA14-0126', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (129, 'WDT3OA14-0127', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (130, 'WDT3OA14-0128', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (131, 'WDT3OA14-0129', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (132, 'WDT3OA14-0130', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (133, 'WDT3OA14-0131', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (134, 'WDT3OA14-0132', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (135, 'WDT3OA14-0133', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (136, 'WDT3OA14-0134', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (137, 'WDT3OA14-0135', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (138, 'WDT3OA14-0136', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (139, 'WDT3OA14-0137', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (140, 'WDT3OA14-0138', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (141, 'WDT3OA14-0139', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (142, 'WDT3OA14-0140', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (143, 'WDT3OA14-0141', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (144, 'WDT3OA14-0142', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (145, 'WDT3OA14-0143', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (146, 'WDT3OA14-0144', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (147, 'WDT3OA14-0145', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (148, 'WDT3OA14-0146', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (149, 'WDT3OA14-0147', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (150, 'WDT3OA14-0148', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (151, 'WDT3OA14-0149', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (152, 'WDT3OA14-0150', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (153, 'WDT3OA14-0151', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (154, 'WDT3OA14-0152', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (155, 'WDT3OA14-0153', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (156, 'WDT3OA14-0154', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (157, 'WDT3OA14-0155', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (158, 'WDT3OA14-0156', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (159, 'WDT3OA14-0157', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (160, 'WDT3OA14-0158', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (161, 'WDT3OA14-0159', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (162, 'WDT3OA14-0160', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (163, 'WDT3OA14-0161', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (164, 'WDT3OA14-0162', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (165, 'WDT3OA14-0163', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (166, 'WDT3OA14-0164', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (167, 'WDT3OA14-0165', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (168, 'WDT3OA14-0166', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (169, 'WDT3OA14-0167', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (170, 'WDT3OA14-0168', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (171, 'WDT3OA14-0169', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (172, 'WDT3OA14-0170', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (173, 'WDT3OA14-0171', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (174, 'WDT3OA14-0172', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (175, 'WDT3OA14-0173', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (176, 'WDT3OA14-0174', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (177, 'WDT3OA14-0175', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (178, 'WDT3OA14-0176', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (179, 'WDT3OA14-0177', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (180, 'WDT3OA14-0178', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (181, 'WDT3OA14-0179', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (182, 'WDT3OA14-0180', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (183, 'WDT3OA14-0181', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (184, 'WDT3OA14-0182', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (185, 'WDT3OA14-0183', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (186, 'WDT3OA14-0184', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (187, 'WDT3OA14-0185', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (188, 'WDT3OA14-0186', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (189, 'WDT3OA14-0187', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (190, 'WDT3OA14-0188', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (191, 'WDT3OA14-0189', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (192, 'WDT3OA14-0190', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (193, 'WDT3OA14-0191', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (194, 'WDT3OA14-0192', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (195, 'WDT3OA14-0193', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (196, 'WDT3OA14-0194', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (197, 'WDT3OA14-0195', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (198, 'WDT3OA14-0196', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (199, 'WDT3OA14-0197', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (200, 'WDT3OA14-0198', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (201, 'WDT3OA14-0199', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (202, 'WDT3OA14-0200', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (203, 'WDT3OA14-0201', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (204, 'WDT3OA14-0202', 1, 2, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (205, 'WDT02407', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (206, 'WDT02499', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (207, 'WDT02388', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (208, 'WDT02465', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (209, 'WDT02306', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (210, 'WDT02460', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (211, 'WDT3_00172', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (212, 'WDT02342', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (213, 'WDT02484', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (214, 'WDB03357', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (215, 'WDT02512', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (216, 'WDT3_00600', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (217, 'WDT02396', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (218, 'WDT02213', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (219, 'WDT02418', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (220, 'WDT02452', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (221, 'WDT02433', 1, 2, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (222, 'WDT02638', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (223, 'WDT02653', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (224, 'WDT02652', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (225, 'WDT02585', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (226, 'WDT02656', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (227, 'WDT02620', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (228, 'WDT02743', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (229, 'WDT02630', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (230, 'WDT02631', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (231, 'WDT3_00602', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (232, 'WDT02616', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (233, 'WDT02607', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (234, 'WDT02602', 1, 2, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (235, 'WDT02747', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (236, 'WDT02760', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (237, 'WDT02811', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (238, 'WDT3_00051', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (239, 'WDT02790', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (240, 'WDT02397', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (241, 'WDT02613', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (242, 'WDT02614', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (243, 'WDT02776', 1, 2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (244, 'WDT02730', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (245, 'WDT3_00620', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (246, 'WDT3_00506', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (247, 'WDT3_00549', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (248, 'WDT00817', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (249, 'WDT02824', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (250, 'WDT02710', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (251, 'WDBOA0059', 1, 2, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `device_brands`
-- 

INSERT INTO `device_brands` VALUES (1, 'ACER');
INSERT INTO `device_brands` VALUES (6, 'COMPUTER SETS');
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `device_models`
-- 

INSERT INTO `device_models` VALUES (1, 2, 'Optiplex 3010');
INSERT INTO `device_models` VALUES (2, 2, 'Optiplex 780');
INSERT INTO `device_models` VALUES (3, 2, 'Optiplex 330');
INSERT INTO `device_models` VALUES (4, 2, 'Optiplex 360');
INSERT INTO `device_models` VALUES (5, 2, 'Optiplex 380');
INSERT INTO `device_models` VALUES (6, 2, 'Optiplex 745');
INSERT INTO `device_models` VALUES (7, 2, 'Optiplex 755');
INSERT INTO `device_models` VALUES (8, 2, 'Optiplex 960');
INSERT INTO `device_models` VALUES (9, 2, 'Optiplex 210L');
INSERT INTO `device_models` VALUES (10, 1, 'Veriton S661');
INSERT INTO `device_models` VALUES (11, 1, 'Veriton M661');
INSERT INTO `device_models` VALUES (12, 6, 'Computer sets');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `device_types`
-- 

INSERT INTO `device_types` VALUES (4, 'Accessories');
INSERT INTO `device_types` VALUES (1, 'Computer');
INSERT INTO `device_types` VALUES (6, 'Computer Sets');
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

INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '9a24eff8c15a6a141ece27eb6947da0f', '2014-03-25 16:43:29', '2014-04-03 21:34:06', 1, 1);
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
  ADD CONSTRAINT `requests_ibfk_43` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_44` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_45` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_48` FOREIGN KEY (`user_repair_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `requests_ibfk_49` FOREIGN KEY (`user_close_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
