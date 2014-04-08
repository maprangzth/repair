-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 09, 2014 at 12:30 AM
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
INSERT INTO `authassignment` VALUES ('EmployeeWD', '5', NULL, 'N;');
INSERT INTO `authassignment` VALUES ('Admin', '5', NULL, 'N;');

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
INSERT INTO `authitem` VALUES ('Request.View', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.Create', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.Update', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.Delete', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.Index', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.Admin', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.RequestGetRequest', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.CheckRequest', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.RequestForm', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.RequestGetRequestForm', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.RequestGetRepairForm', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.RequestGetRepair', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.EndRepairForm', 0, NULL, NULL, 'N;');
INSERT INTO `authitem` VALUES ('Request.EndRepair', 0, NULL, NULL, 'N;');

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

INSERT INTO `authitemchild` VALUES ('Guest', 'Request.CheckRequest');
INSERT INTO `authitemchild` VALUES ('Guest', 'Request.Create');
INSERT INTO `authitemchild` VALUES ('Guest', 'Request.Index');
INSERT INTO `authitemchild` VALUES ('Guest', 'Request.RequestForm');
INSERT INTO `authitemchild` VALUES ('Guest', 'Request.View');
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
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.Admin');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.CheckRequest');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.Create');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.Delete');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.EndRepair');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.EndRepairForm');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.Index');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.RequestForm');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.RequestGetRepair');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.RequestGetRepairForm');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.RequestGetRequest');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.RequestGetRequestForm');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.Update');
INSERT INTO `authitemchild` VALUES ('Helpdesk', 'Request.View');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

-- 
-- Dumping data for table `departments`
-- 

INSERT INTO `departments` VALUES (14, '1ST LEVEL DRIVE FAILURE ANALYSIS');
INSERT INTO `departments` VALUES (15, '2.5 MSDS/ MDW');
INSERT INTO `departments` VALUES (16, '2.5 ONLINE SUPPORT');
INSERT INTO `departments` VALUES (17, '2ND LEVEL DRIVE FA- CLIENT/ 3.5 SP');
INSERT INTO `departments` VALUES (18, '2ND LEVEL DRIVE FA- ENTERPRISE/ 3.5 MP');
INSERT INTO `departments` VALUES (19, '2ND LEVEL DRIVE FAILURE ANALYSIS');
INSERT INTO `departments` VALUES (20, '3.5 SEEDER');
INSERT INTO `departments` VALUES (21, '3.5 SEEDER OFF LINE');
INSERT INTO `departments` VALUES (22, '3.5 SEEDER ON LINE');
INSERT INTO `departments` VALUES (23, '3.5 SEEDER SOFTWARE');
INSERT INTO `departments` VALUES (24, '320GB/640GB AND TPC');
INSERT INTO `departments` VALUES (25, '500GB/640GB 7200RPM');
INSERT INTO `departments` VALUES (26, '750GB & NPI');
INSERT INTO `departments` VALUES (27, 'ABS');
INSERT INTO `departments` VALUES (28, 'ABS SUPPORT');
INSERT INTO `departments` VALUES (29, 'ADMINISTRATION CENTER');
INSERT INTO `departments` VALUES (30, 'ADVANCE ANALYTICS');
INSERT INTO `departments` VALUES (1, 'AME');
INSERT INTO `departments` VALUES (2, 'FA Lab');
INSERT INTO `departments` VALUES (31, 'HAS');
INSERT INTO `departments` VALUES (3, 'IT');
INSERT INTO `departments` VALUES (4, 'Mechanical Lab');
INSERT INTO `departments` VALUES (32, 'MFG');
INSERT INTO `departments` VALUES (33, 'NPI');
INSERT INTO `departments` VALUES (5, 'PDE');
INSERT INTO `departments` VALUES (34, 'PQE');
INSERT INTO `departments` VALUES (35, 'QA DATA PACKAGE/AUDIT');
INSERT INTO `departments` VALUES (36, 'R&D ');
INSERT INTO `departments` VALUES (37, 'RSS ENGINEERING');
INSERT INTO `departments` VALUES (38, 'S/F MAINTENANCE');
INSERT INTO `departments` VALUES (6, 'Servo');
INSERT INTO `departments` VALUES (39, 'SF MFG. PICO ETCHING A');
INSERT INTO `departments` VALUES (40, 'SF MFG. PICO MMX BACK END LAPPING');
INSERT INTO `departments` VALUES (41, 'SF MFG. PICO PHOTO');
INSERT INTO `departments` VALUES (42, 'SHG / CLEANING');
INSERT INTO `departments` VALUES (7, 'SPW');
INSERT INTO `departments` VALUES (43, 'STAGING/CHARACTERIZATION PROGRAM MGT');
INSERT INTO `departments` VALUES (8, 'STW');
INSERT INTO `departments` VALUES (44, 'SUPPLY CHAIN EICC/CSR');
INSERT INTO `departments` VALUES (45, 'SUPPORT - ACCESSORY');
INSERT INTO `departments` VALUES (46, 'SUPPORT - MRB');
INSERT INTO `departments` VALUES (47, 'SUPPORT - PCB REWORK');
INSERT INTO `departments` VALUES (48, 'SUPPORT - PREGNANT');
INSERT INTO `departments` VALUES (49, 'SUPPORT BAR BOND & PHOTO');
INSERT INTO `departments` VALUES (50, 'SYSTEM ENGINEER');
INSERT INTO `departments` VALUES (9, 'TDE');
INSERT INTO `departments` VALUES (51, 'TECHNICAL PROCUREMENT');
INSERT INTO `departments` VALUES (52, 'TECHNICAL SUPPORT ENGINEERING DEPARTMENT');
INSERT INTO `departments` VALUES (53, 'TELECOM/PABX');
INSERT INTO `departments` VALUES (54, 'TEST ENGINEERING SECTION');
INSERT INTO `departments` VALUES (55, 'TEST EQUIPMENT DEVELOPMENT');
INSERT INTO `departments` VALUES (56, 'THAILAND ACCOUNTING AND TREASURY MHO/WDTH DEPT.');
INSERT INTO `departments` VALUES (57, 'THAILAND HRMS/PAYROLL LEAD/ SOX AUDIT');
INSERT INTO `departments` VALUES (58, 'THAILAND HROD & OD');
INSERT INTO `departments` VALUES (59, 'THAILAND STAFFING');
INSERT INTO `departments` VALUES (60, 'THAILAND STAFFING DEPARTMENT');
INSERT INTO `departments` VALUES (61, 'TIG & SOFTWARE DEPLOYEMENT ENGINEERING');
INSERT INTO `departments` VALUES (62, 'TIP/ APTI/ BURNISHING');
INSERT INTO `departments` VALUES (63, 'TOOLING ');
INSERT INTO `departments` VALUES (10, 'Tooling Office');
INSERT INTO `departments` VALUES (11, 'Tooling PM & Setup');
INSERT INTO `departments` VALUES (64, 'TOOLING PM IONIZER&REPAIRING');
INSERT INTO `departments` VALUES (65, 'TOOLING PM/ SET UP&CONVERSION');
INSERT INTO `departments` VALUES (66, 'TOOLING PRECISION CLEANING');
INSERT INTO `departments` VALUES (67, 'TOOLING REAL TIME SYSTEM');
INSERT INTO `departments` VALUES (12, 'Tooling Repair');
INSERT INTO `departments` VALUES (68, 'TOOLING SHOP');
INSERT INTO `departments` VALUES (69, 'TOOLING SOFTWARE DEVELOPMENT');
INSERT INTO `departments` VALUES (70, 'TOOLING SOFTWARE RELEASED');
INSERT INTO `departments` VALUES (71, 'TOOLING SPARE PART');
INSERT INTO `departments` VALUES (72, 'TOOLING TEARDOWN');
INSERT INTO `departments` VALUES (73, 'TOOLING-EQUIPMENT');
INSERT INTO `departments` VALUES (74, 'TRAFFIC OPERATION');
INSERT INTO `departments` VALUES (75, 'TRAVELLING CENTER');
INSERT INTO `departments` VALUES (76, 'TRAY CLEANING');
INSERT INTO `departments` VALUES (77, 'TREASURY/WDSDT');
INSERT INTO `departments` VALUES (78, 'TRIBOLOGY');
INSERT INTO `departments` VALUES (13, 'TSD');
INSERT INTO `departments` VALUES (79, 'UNDER COAT / COATING');
INSERT INTO `departments` VALUES (80, 'UNDER COAT/ WAFER RECLAIM');
INSERT INTO `departments` VALUES (81, 'US GL ACCOUNTING & TREASURY');
INSERT INTO `departments` VALUES (82, 'WAFER EVALUATE/IMP');
INSERT INTO `departments` VALUES (83, 'WAFER FEEDBACK');
INSERT INTO `departments` VALUES (84, 'WAREHOUSE AND TRAFFIC NAVANAKORN');
INSERT INTO `departments` VALUES (85, 'WAREHOUSE/ RECEIVING');
INSERT INTO `departments` VALUES (86, 'WDB DEVELOPMENT DIVISION');
INSERT INTO `departments` VALUES (87, 'WDB OPERATION FINANCE');
INSERT INTO `departments` VALUES (88, 'WDB OPERATION SUPPORT');
INSERT INTO `departments` VALUES (89, 'WDB QUALITY ASSURANCE DEPARTMENT');
INSERT INTO `departments` VALUES (90, 'WDTH IE');
INSERT INTO `departments` VALUES (91, 'WDTH QMS');
INSERT INTO `departments` VALUES (92, 'WF/SF/HGA PROCESS & PROD. QUALIFICATION');
INSERT INTO `departments` VALUES (93, 'WORLDWIDE QUALITY ASSURANCE DIV.');
INSERT INTO `departments` VALUES (94, 'WRITER');
INSERT INTO `departments` VALUES (95, 'WYKO/AFM');

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
  `device_owner` varchar(255) NOT NULL COMMENT 'Device  Owner',
  `device_buy_date` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Device buy date',
  `device_warranty_expire` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Device warranty expire',
  `device_remark` varchar(255) NOT NULL COMMENT 'Remark',
  PRIMARY KEY  (`id`),
  KEY `device_type_device` (`device_type_id`),
  KEY `device_location_device` (`location_id`),
  KEY `device_model_device` (`device_model_id`),
  KEY `device_brand_device` (`device_brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=727 ;

-- 
-- Dumping data for table `devices`
-- 

INSERT INTO `devices` VALUES (1, 'DELL', 1, 2, 1, 6, '2014-03-31 11:24:55', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'IT-Helpdesk Spare B6');
INSERT INTO `devices` VALUES (3, 'WDT3OA14-0001', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (4, 'WDT3OA14-0002', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (5, 'WDT3OA14-0003', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (6, 'WDT3OA14-0004', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (7, 'WDT3OA14-0005', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (8, 'WDT3OA14-0006', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (9, 'WDT3OA14-0007', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (10, 'WDT3OA14-0008', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (11, 'WDT3OA14-0009', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (12, 'WDT3OA14-0010', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (13, 'WDT3OA14-0011', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (14, 'WDT3OA14-0012', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (15, 'WDT3OA14-0013', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (16, 'WDT3OA14-0014', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (17, 'WDT3OA14-0015', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (18, 'WDT3OA14-0016', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (19, 'WDT3OA14-0017', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (20, 'WDT3OA14-0018', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (21, 'WDT3OA14-0019', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (22, 'WDT3OA14-0020', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (23, 'WDT3OA14-0021', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (24, 'WDT3OA14-0022', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (25, 'WDT3OA14-0023', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (26, 'WDT3OA14-0024', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (27, 'WDT3OA14-0025', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (28, 'WDT3OA14-0026', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (29, 'WDT3OA14-0027', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (30, 'WDT3OA14-0028', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (31, 'WDT3OA14-0029', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (32, 'WDT3OA14-0030', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (33, 'WDT3OA14-0031', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (34, 'WDT3OA14-0032', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (35, 'WDT3OA14-0033', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (36, 'WDT3OA14-0034', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (37, 'WDT3OA14-0035', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (38, 'WDT3OA14-0036', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (39, 'WDT3OA14-0037', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (40, 'WDT3OA14-0038', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (41, 'WDT3OA14-0039', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (42, 'WDT3OA14-0040', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (43, 'WDT3OA14-0041', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (44, 'WDT3OA14-0042', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (45, 'WDT3OA14-0043', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (46, 'WDT3OA14-0044', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (47, 'WDT3OA14-0045', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (48, 'WDT3OA14-0046', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (49, 'WDT3OA14-0047', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (50, 'WDT3OA14-0048', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (51, 'WDT3OA14-0049', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (52, 'WDT3OA14-0050', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (53, 'WDT3OA14-0051', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (54, 'WDT3OA14-0052', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (55, 'WDT3OA14-0053', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (56, 'WDT3OA14-0054', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (57, 'WDT3OA14-0055', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (58, 'WDT3OA14-0056', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (59, 'WDT3OA14-0057', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (60, 'WDT3OA14-0058', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (61, 'WDT3OA14-0059', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (62, 'WDT3OA14-0060', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (63, 'WDT3OA14-0061', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (64, 'WDT3OA14-0062', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (65, 'WDT3OA14-0063', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (66, 'WDT3OA14-0064', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (67, 'WDT3OA14-0065', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (68, 'WDT3OA14-0066', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (69, 'WDT3OA14-0067', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (70, 'WDT3OA14-0068', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (71, 'WDT3OA14-0069', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (72, 'WDT3OA14-0070', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (73, 'WDT3OA14-0071', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (74, 'WDT3OA14-0072', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (75, 'WDT3OA14-0073', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (76, 'WDT3OA14-0074', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (77, 'WDT3OA14-0075', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (78, 'WDT3OA14-0076', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (79, 'WDT3OA14-0077', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (80, 'WDT3OA14-0078', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (81, 'WDT3OA14-0079', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (82, 'WDT3OA14-0080', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (83, 'WDT3OA14-0081', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (84, 'WDT3OA14-0082', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (85, 'WDT3OA14-0083', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (86, 'WDT3OA14-0084', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (87, 'WDT3OA14-0085', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (88, 'WDT3OA14-0086', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (89, 'WDT3OA14-0087', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (90, 'WDT3OA14-0088', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (91, 'WDT3OA14-0089', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (92, 'WDT3OA14-0090', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (93, 'WDT3OA14-0091', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (94, 'WDT3OA14-0092', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (95, 'WDT3OA14-0093', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (96, 'WDT3OA14-0094', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (97, 'WDT3OA14-0095', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (98, 'WDT3OA14-0096', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (99, 'WDT3OA14-0097', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (100, 'WDT3OA14-0098', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (101, 'WDT3OA14-0099', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (102, 'WDT3OA14-0100', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (103, 'WDT3OA14-0101', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (104, 'WDT3OA14-0102', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (105, 'WDT3OA14-0103', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (106, 'WDT3OA14-0104', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (107, 'WDT3OA14-0105', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (108, 'WDT3OA14-0106', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (109, 'WDT3OA14-0107', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (110, 'WDT3OA14-0108', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (111, 'WDT3OA14-0109', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (112, 'WDT3OA14-0110', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (113, 'WDT3OA14-0111', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (114, 'WDT3OA14-0112', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (115, 'WDT3OA14-0113', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (116, 'WDT3OA14-0114', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (117, 'WDT3OA14-0115', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (118, 'WDT3OA14-0116', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (119, 'WDT3OA14-0118', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (120, 'WDT3OA14-0117', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (121, 'WDT3OA14-0119', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (122, 'WDT3OA14-0120', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (123, 'WDT3OA14-0121', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (124, 'WDT3OA14-0122', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (125, 'WDT3OA14-0123', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (126, 'WDT3OA14-0124', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (127, 'WDT3OA14-0125', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (128, 'WDT3OA14-0126', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (129, 'WDT3OA14-0127', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (130, 'WDT3OA14-0128', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (131, 'WDT3OA14-0129', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (132, 'WDT3OA14-0130', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (133, 'WDT3OA14-0131', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (134, 'WDT3OA14-0132', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (135, 'WDT3OA14-0133', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (136, 'WDT3OA14-0134', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (137, 'WDT3OA14-0135', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (138, 'WDT3OA14-0136', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (139, 'WDT3OA14-0137', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (140, 'WDT3OA14-0138', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (141, 'WDT3OA14-0139', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (142, 'WDT3OA14-0140', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (143, 'WDT3OA14-0141', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (144, 'WDT3OA14-0142', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (145, 'WDT3OA14-0143', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (146, 'WDT3OA14-0144', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (147, 'WDT3OA14-0145', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (148, 'WDT3OA14-0146', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (149, 'WDT3OA14-0147', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (150, 'WDT3OA14-0148', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (151, 'WDT3OA14-0149', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (152, 'WDT3OA14-0150', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (153, 'WDT3OA14-0151', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (154, 'WDT3OA14-0152', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (155, 'WDT3OA14-0153', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (156, 'WDT3OA14-0154', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (157, 'WDT3OA14-0155', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (158, 'WDT3OA14-0156', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (159, 'WDT3OA14-0157', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (160, 'WDT3OA14-0158', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (161, 'WDT3OA14-0159', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (162, 'WDT3OA14-0160', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (163, 'WDT3OA14-0161', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (164, 'WDT3OA14-0162', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (165, 'WDT3OA14-0163', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (166, 'WDT3OA14-0164', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (167, 'WDT3OA14-0165', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (168, 'WDT3OA14-0166', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (169, 'WDT3OA14-0167', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (170, 'WDT3OA14-0168', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (171, 'WDT3OA14-0169', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (172, 'WDT3OA14-0170', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (173, 'WDT3OA14-0171', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (174, 'WDT3OA14-0172', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (175, 'WDT3OA14-0173', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (176, 'WDT3OA14-0174', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (177, 'WDT3OA14-0175', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (178, 'WDT3OA14-0176', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (179, 'WDT3OA14-0177', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (180, 'WDT3OA14-0178', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (181, 'WDT3OA14-0179', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (182, 'WDT3OA14-0180', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (183, 'WDT3OA14-0181', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (184, 'WDT3OA14-0182', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (185, 'WDT3OA14-0183', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (186, 'WDT3OA14-0184', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (187, 'WDT3OA14-0185', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (188, 'WDT3OA14-0186', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (189, 'WDT3OA14-0187', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (190, 'WDT3OA14-0188', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (191, 'WDT3OA14-0189', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (192, 'WDT3OA14-0190', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (193, 'WDT3OA14-0191', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (194, 'WDT3OA14-0192', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (195, 'WDT3OA14-0193', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (196, 'WDT3OA14-0194', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (197, 'WDT3OA14-0195', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (198, 'WDT3OA14-0196', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (199, 'WDT3OA14-0197', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (200, 'WDT3OA14-0198', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (201, 'WDT3OA14-0199', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (202, 'WDT3OA14-0200', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (203, 'WDT3OA14-0201', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (204, 'WDT3OA14-0202', 1, 2, 1, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (205, 'WDT02407', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (206, 'WDT02499', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (207, 'WDT02388', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (208, 'WDT02465', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (209, 'WDT02306', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (210, 'WDT02460', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (211, 'WDT3_00172', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (212, 'WDT02342', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (213, 'WDT02484', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (214, 'WDB03357', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (215, 'WDT02512', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (216, 'WDT3_00600', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (217, 'WDT02396', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (218, 'WDT02213', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (219, 'WDT02418', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (220, 'WDT02452', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (221, 'WDT02433', 1, 2, 3, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (222, 'WDT02638', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (223, 'WDT02653', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (224, 'WDT02652', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (225, 'WDT02585', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (226, 'WDT02656', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (227, 'WDT02620', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (228, 'WDT02743', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (229, 'WDT02630', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (230, 'WDT02631', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (231, 'WDT3_00602', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (232, 'WDT02616', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (233, 'WDT02607', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (234, 'WDT02602', 1, 2, 4, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (235, 'WDT02747', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (236, 'WDT02760', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (237, 'WDT02811', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (238, 'WDT3_00051', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (239, 'WDT02790', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (240, 'WDT02397', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (241, 'WDT02613', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (242, 'WDT02614', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (243, 'WDT02776', 1, 2, 5, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (244, 'WDT02730', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (245, 'WDT3_00620', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (246, 'WDT3_00506', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (247, 'WDT3_00549', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (248, 'WDT00817', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (249, 'WDT02824', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (250, 'WDT02710', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (251, 'WDBOA0059', 1, 2, 2, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (252, 'WDT02813', 6, 6, 12, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (253, 'WDT02375', 6, 6, 12, 3, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (254, 'WDT00043', 6, 6, 12, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (255, 'WDTN041', 6, 6, 12, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (256, 'WDTN00110', 6, 6, 12, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (257, 'WDT12-190', 6, 6, 12, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (258, 'WDT00760', 6, 6, 12, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (259, 'wdt4l00032', 6, 6, 12, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (260, 'WDT6L14-0115', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (261, 'WDT6L14-0006', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (262, 'WDT6L14-0007', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (263, 'WDT6L14-0008', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (264, 'WDT6L14-0009', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (265, 'WDT6L14-0010', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (266, 'WDT6L14-0011', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (267, 'WDT6L14-0012', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (268, 'WDT6L14-0013', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (269, 'WDT6L14-0014', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (270, 'WDT6L14-0015', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (271, 'WDT6L14-0016', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (272, 'WDT6L14-0017', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (273, 'WDT6L14-0018', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (274, 'WDT6L14-0019', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (275, 'WDT6L14-0020', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (276, 'WDT6L14-0021', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (277, 'WDT6L14-0022', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (278, 'WDT6L14-0023', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (279, 'WDT6L14-0024', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (280, 'WDT6L14-0025', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (281, 'WDT6L14-0026', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (282, 'WDT6L14-0027', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (283, 'WDT6L14-0028', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (284, 'WDT6L14-0029', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (285, 'WDT6L14-0030', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (286, 'WDT6L14-0031', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (287, 'WDT6L14-0032', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (288, 'WDT6L14-0033', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (289, 'WDT6L14-0034', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (290, 'WDT6L14-0035', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (291, 'WDT6L14-0036', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (292, 'WDT6L14-0037', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (293, 'WDT6L14-0038', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (294, 'WDT6L14-0039', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (295, 'WDT6L14-0040', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (296, 'WDT6L14-0046', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (297, 'WDT6L14-0047', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (298, 'WDT6L14-0048', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (299, 'WDT6L14-0049', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (300, 'WDT6L14-0050', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (301, 'WDT6L14-0051', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (302, 'WDT6L14-0052', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (303, 'WDT6L14-0053', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (304, 'WDT6L14-0054', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (305, 'WDT6L14-0055', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (306, 'WDT6L14-0058', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (307, 'WDT6L14-0059', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (308, 'WDT6L14-0060', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (309, 'WDT6L14-0061', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (310, 'WDT6L14-0062', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (311, 'WDT6L14-0063', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (312, 'WDT6L14-0064', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (313, 'WDT6L14-0065', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (314, 'WDT6L14-0066', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (315, 'WDT6L14-0067', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (316, 'WDT6L14-0068', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (317, 'WDT6L14-0069', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (318, 'WDT6L14-0070', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (319, 'WDT6L14-0071', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (320, 'WDT6L14-0072', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (321, 'WDT6L14-0073', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (322, 'WDT6L14-0074', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (323, 'WDT6L14-0075', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (324, 'WDT6L14-0076', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (325, 'WDT6L14-0077', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (326, 'WDT6L14-0078', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (327, 'WDT6L14-0080', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (328, 'WDT6L14-0081', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (329, 'WDT6L14-0082', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (330, 'WDT6L14-0083', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (331, 'WDT6L14-0084', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (332, 'WDT6L14-0085', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (333, 'WDT6L14-0086', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (334, 'WDT6L14-0087', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (335, 'WDT6L14-0088', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (336, 'WDT6L14-0089', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (337, 'WDT6L14-0090', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (338, 'WDT6L14-0091', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (339, 'WDT6L14-0092', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (340, 'WDT6L14-0093', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (341, 'WDT6L14-0094', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (342, 'WDT6L14-0095', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (343, 'WDT6L14-0096', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (344, 'WDT6L14-0097', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (345, 'WDT6L14-0098', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (346, 'WDT6L14-0099', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (347, 'WDT6l14-0100', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (348, 'WDT6L14-0101', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (349, 'WDT6L14-0102', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (350, 'WDT6L14-0103', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (351, 'WDT6L14-0104', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (352, 'WDT6L14-0105', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (353, 'WDT6L14-0107', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (354, 'WDT6L14-0108', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (355, 'WDT6L14-0109', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (356, 'WDT6L14-0110', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (357, 'WDT6L14-0111', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (358, 'WDT6L14-0112', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (359, 'WDT6L14-0113', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (360, 'WDT6L14-0114', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (361, 'WDT6L14-0116', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (362, 'WDT6L14-0117', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (363, 'WDT6L14-0119', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (364, 'WDT6L14-0150', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (365, 'WDT6L14-0152', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (366, 'WDT6L14-0153', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (367, 'WDT6L14-0154', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (368, 'WDT6L14-0155', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (369, 'WDT6L14-0156', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (370, 'WDT6L14-0157', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (371, 'WDT6L14-0158', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (372, 'WDT6L14-0159', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (373, 'WDT6L14-0160', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (374, 'WDT6L14-0162', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (375, 'WDT6L14-0164', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (376, 'WDT6L14-0165', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (377, 'WDT6L14-0166', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (378, 'WDT6L14-0167', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (379, 'WDT6L14-0168', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (380, 'WDT6L14-0171', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (381, 'WDT6L14-0172', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (382, 'WDT6L14-0173', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (383, 'WDT6L14-0174', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (384, 'WDT6L14-0175', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (385, 'WDT6L14-0176', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (386, 'WDT6L14-0177', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (387, 'WDT6L14-0178', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (388, 'WDT6L14-0179', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (389, 'WDT6L14-0180', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (390, 'WDT6L14-0181', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (391, 'WDT6L14-0182', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (392, 'WDT6L14-0183', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (393, 'WDT6L14-0184', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (394, 'WDT6L14-0185', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (395, 'WDT6L14-0208', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (396, 'WDT6L14-0209', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (397, 'WDT4L00408', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (398, 'WDT4L00283', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (399, 'WDT4L00322', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (400, 'WDT4L00325', 6, 6, 12, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (401, 'WDT4OA14-0001', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (402, 'WDT4OA14-0002', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (403, 'WDT4OA14-0003', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (404, 'WDT4OA14-0004', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (405, 'WDT4OA14-0005', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (406, 'WDT4OA14-0006', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (407, 'WDT4OA14-0007', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (408, 'WDT4OA14-0008', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (409, 'WDT4OA14-0009', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (410, 'WDT4OA14-0010', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (411, 'WDT4OA14-0011', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (412, 'WDT4OA14-0012', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (413, 'WDT4OA14-0013', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (414, 'WDT4OA14-0014', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (415, 'WDT4OA14-0015', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (416, 'WDT4OA14-0016', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (417, 'WDT4OA14-0017', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (418, 'WDT4OA14-0018', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (419, 'WDT4OA14-0019', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (420, 'WDT4OA14-0020', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (421, 'WDT4OA14-0121', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (422, 'WDT4OA14-0122', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (423, 'WDT4OA14-0123', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (424, 'WDT4OA14-0124', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (425, 'WDT4OA14-0125', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (426, 'WDT4OA14-0126', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (427, 'WDT4OA14-0127', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (428, 'WDT4OA14-0128', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (429, 'WDT4OA14-0129', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (430, 'WDT4OA14-0130', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (431, 'WDT4OA14-0131', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (432, 'WDT4OA14-0132', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (433, 'WDT4OA14-0133', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (434, 'WDT4OA14-0134', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (435, 'WDT4OA14-0135', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (436, 'WDT4OA14-0136', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (437, 'WDT4OA14-0137', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (438, 'WDT4OA14-0138', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (439, 'WDT4OA14-0139', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (440, 'WDT4OA14-0140', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (441, 'WDT4OA14-0141', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (442, 'WDT4OA14-0142', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (443, 'WDT4OA14-0143', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (444, 'WDT4OA14-0144', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (445, 'WDT4OA14-0145', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (446, 'WDT4OA14-0146', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (447, 'WDT4OA14-0147', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (448, 'WDT4OA14-0148', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (449, 'WDT4OA14-0149', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (450, 'WDT4OA14-0150', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (451, 'WDT4OA14-0151', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (452, 'WDT4OA14-0152', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (453, 'WDT4OA14-0153', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (454, 'WDT4OA14-0154', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (455, 'WDT4OA14-0155', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (456, 'WDT4OA14-0156', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (457, 'WDT4OA14-0157', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (458, 'WDT4OA14-0158', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (459, 'WDT4OA14-0159', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (460, 'WDT4OA14-0160', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (461, 'WDT4OA14-0161', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (462, 'WDT4OA14-0162', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (463, 'WDT4OA14-0163', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (464, 'WDT4OA14-0021', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (465, 'WDT4OA14-0022', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (466, 'WDT4OA14-0023', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (467, 'WDT4OA14-0024', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (468, 'WDT4OA14-0025', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (469, 'WDT4OA14-0026', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (470, 'WDT4OA14-0027', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (471, 'WDT4OA14-0028', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (472, 'WDT4OA14-0029', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (473, 'WDT4OA14-0030', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (474, 'WDT4OA14-0031', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (475, 'WDT4OA14-0032', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (476, 'WDT4OA14-0033', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (477, 'WDT4OA14-0034', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (478, 'WDT4OA14-0035', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (479, 'WDT4OA14-0036', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (480, 'WDT4OA14-0037', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (481, 'WDT4OA14-0038', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (482, 'WDT4OA14-0039', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (483, 'WDT4OA14-0040', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (484, 'WDT4OA14-0041', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (485, 'WDT4OA14-0042', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (486, 'WDT4OA14-0043', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (487, 'WDT4OA14-0044', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (488, 'WDT4OA14-0045', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (489, 'WDT4OA14-0046', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (490, 'WDT4OA14-0047', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (491, 'WDT4OA14-0048', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (492, 'WDT4OA14-0049', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (493, 'WDT4OA14-0050', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (494, 'WDT4OA14-0051', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (495, 'WDT4OA14-0052', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (496, 'WDT4OA14-0053', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (497, 'WDT4OA14-0054', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (498, 'WDT4OA14-0055', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (499, 'WDT4OA14-0056', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (500, 'WDT4OA14-0057', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (501, 'WDT4OA14-0058', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (502, 'WDT4OA14-0059', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (503, 'WDT4OA14-0060', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (504, 'WDT4OA14-0061', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (505, 'WDT4OA14-0062', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (506, 'WDT4OA14-0063', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (507, 'WDT4OA14-0064', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (508, 'WDT4OA14-0065', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (509, 'WDT4OA14-0066', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (510, 'WDT4OA14-0067', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (511, 'WDT4OA14-0068', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (512, 'WDT4OA14-0069', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (513, 'WDT4OA14-0070', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (514, 'WDT4OA14-0071', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (515, 'WDT4OA14-0072', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (516, 'WDT4OA14-0073', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (517, 'WDT4OA14-0074', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (518, 'WDT4OA14-0075', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (519, 'WDT4OA14-0076', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (520, 'WDT4OA14-0077', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (521, 'WDT4OA14-0078', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (522, 'WDT4OA14-0079', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (523, 'WDT4OA14-0080', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (524, 'WDT4OA14-0081', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (525, 'WDT4OA14-0082', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (526, 'WDT4OA14-0083', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (527, 'WDT4OA14-0084', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (528, 'WDT4OA14-0085', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (529, 'WDT4OA14-0086', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (530, 'WDT4OA14-0087', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (531, 'WDT4OA14-0088', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (532, 'WDT4OA14-0089', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (533, 'WDT4OA14-0090', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (534, 'WDT4OA14-0091', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (535, 'WDT4OA14-0092', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (536, 'WDT4OA14-0093', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (537, 'WDT4OA14-0094', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (538, 'WDT4OA14-0095', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (539, 'WDT4OA14-0096', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (540, 'WDT4OA14-0097', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (541, 'WDT4OA14-0098', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (542, 'WDT4OA14-0099', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (543, 'WDT4OA14-0100', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (544, 'WDT4OA14-0101', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (545, 'WDT4OA14-0102', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (546, 'WDT4OA14-0103', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (547, 'WDT4OA14-0104', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (548, 'WDT4OA14-0105', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (549, 'WDT4OA14-0106', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (550, 'WDT4OA14-0107', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (551, 'WDT4OA14-0108', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (552, 'WDT4OA14-0109', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (553, 'WDT4OA14-0110', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (554, 'WDT4OA14-0111', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (555, 'WDT4OA14-0112', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (556, 'WDT4OA14-0113', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (557, 'WDT4OA14-0114', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (558, 'WDT4OA14-0115', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (559, 'WDT4OA14-0116', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (560, 'WDT4OA14-0117', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (561, 'WDT4OA14-0118', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (562, 'WDT4OA14-0119', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (563, 'WDT4OA14-0120', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (564, 'WDT4OA14-0164', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (565, 'WDT4OA14-0165', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (566, 'WDT4OA14-0166', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (567, 'WDT4OA14-0167', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (568, 'WDT4OA14-0168', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (569, 'WDT4OA14-0169', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (570, 'WDT4OA14-0170', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (571, 'WDT4OA14-0171', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (572, 'WDT4OA14-0172', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (573, 'WDT4OA14-0173', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (574, 'WDT4OA14-0174', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (575, 'WDT4OA14-0175', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (576, 'WDT4OA14-0176', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (577, 'WDT4OA14-0177', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (578, 'WDT4OA14-0178', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (579, 'WDT4OA14-0179', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (580, 'WDT4OA14-0180', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (581, 'WDT4OA14-0181', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (582, 'WDT4OA14-0182', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (583, 'WDT4OA14-0183', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (584, 'WDT4OA14-0184', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (585, 'WDT4OA14-0185', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (586, 'WDT4OA14-0186', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (587, 'WDT4OA14-0187', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (588, 'WDT4OA14-0188', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (589, 'WDT4OA14-0189', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (590, 'WDT4OA14-0190', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (591, 'WDT4OA14-0191', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (592, 'WDT4OA14-0192', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (593, 'WDT4OA14-0193', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (594, 'WDT4OA14-0194', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (595, 'WDT4OA14-0195', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (596, 'WDT4OA14-0196', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (597, 'WDT4OA14-0197', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (598, 'WDT4OA14-0198', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (599, 'WDT4OA14-0199', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (600, 'WDT4OA14-0200', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (601, 'WDT4OA14-0201', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (602, 'WDT4OA14-0202', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (603, 'WDT4OA14-0203', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (604, 'WDT4OA14-0204', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (605, 'WDT4OA14-0205', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (606, 'WDT4OA14-0206', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (607, 'WDT4OA14-0207', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (608, 'WDT4OA14-0208', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (609, 'WDT4OA14-0209', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (610, 'WDT4OA14-0210', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (611, 'WDT4OA14-0211', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (612, 'WDT4OA14-0212', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (613, 'WDT4OA14-0213', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (614, 'WDT4OA14-0214', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (615, 'WDT4OA14-0215', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (616, 'WDT4OA14-0216', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (617, 'WDT4OA14-0217', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (618, 'WDT4OA14-0218', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (619, 'WDT4OA14-0219', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (620, 'WDT4OA14-0220', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (621, 'WDT4OA14-0221', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (622, 'WDT4OA14-0222', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (623, 'WDT4OA14-0223', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (624, 'WDT4OA14-0224', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (625, 'WDT4OA14-0225', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (626, 'WDT4OA14-0226', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (627, 'WDT4OA14-0227', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (628, 'WDT4OA14-0228', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (629, 'WDT4OA14-0229', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (630, 'WDT4OA14-0230', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (631, 'WDT4OA14-0231', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (632, 'WDT4OA14-0232', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (633, 'WDT4OA14-0233', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (634, 'WDT4OA14-0234', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (635, 'WDT4OA14-0235', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (636, 'WDT4OA14-0236', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (637, 'WDT4OA14-0237', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (638, 'WDT4OA14-0238', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (639, 'WDT4OA14-0239', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (640, 'WDT4OA14-0240', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (641, 'WDT4OA14-0241', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (642, 'WDT4OA14-0242', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (643, 'WDT4OA14-0243', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (644, 'WDT4OA14-0244', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (645, 'WDT4OA14-0245', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (646, 'WDT4OA14-0246', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (647, 'WDT4OA14-0247', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (648, 'WDT4OA14-0248', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (649, 'WDT4OA14-0249', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (650, 'WDT4OA14-0250', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (651, 'WDT4OA14-0251', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (652, 'WDT4OA14-0252', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (653, 'WDT4OA14-0253', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (654, 'WDT4OA14-0254', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (655, 'WDT4OA14-0255', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (656, 'WDT4OA14-0256', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (657, 'WDT4OA14-0257', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (658, 'WDT4OA14-0258', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (659, 'WDT4OA14-0259', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (660, 'WDT4OA14-0260', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (661, 'WDT4OA14-0261', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (662, 'WDT4OA14-0262', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (663, 'WDT4OA14-0263', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (664, 'WDT4OA14-0264', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (665, 'WDT4OA14-0265', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (666, 'WDT4OA14-0267', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (667, 'WDT4OA14-0268', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (668, 'WDT4OA14-0269', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (669, 'WDT4OA14-0270', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (670, 'WDT4OA14-0271', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (671, 'WDT4OA14-0272', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (672, 'WDT4OA14-0273', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (673, 'WDT4OA14-0274', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (674, 'WDT4OA14-0275', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (675, 'WDT4OA14-0276', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (676, 'WDT4OA14-0277', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (677, 'WDT4OA14-0278', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (678, 'WDT4OA14-0279', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (679, 'WDT4OA14-0280', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (680, 'WDT4OA14-0281', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (681, 'WDT4OA14-0282', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (682, 'WDT4OA14-0283', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (683, 'WDT4OA14-0284', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (684, 'WDT4OA14-0285', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (685, 'WDT4OA14-0286', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (686, 'WDT4OA14-0287', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (687, 'WDT4OA14-0288', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (688, 'WDT4OA14-0289', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (689, 'WDT4OA14-0290', 1, 2, 1, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (690, 'WDT02488', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (691, 'WDT002275', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (692, 'WDT02480', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (693, 'WDT02293', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (694, 'wdt02289', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (695, 'WDT02490', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (696, 'WDT02411', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (697, 'WDT102508', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (698, 'WDT02347', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (699, 'WDT02283', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (700, 'WDT02389', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (701, 'WDT03348', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (702, 'WDT4ENPL006', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (703, 'WDT02288', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (704, 'WDT02313', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (705, 'WDT02445', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (706, 'wdt00329', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (707, 'wdt02505', 1, 2, 3, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (708, 'WDT02377', 1, 2, 4, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (709, 'WDT02668', 1, 2, 4, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (710, 'WDT02624', 1, 2, 4, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (711, 'WDT02651', 1, 2, 4, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (712, 'WDT02659', 1, 2, 4, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (713, 'WDT02107', 1, 2, 4, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (714, 'WDT02746', 1, 2, 5, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (715, 'WDTN00764', 1, 2, 5, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (716, 'WDT4L00207', 1, 2, 6, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (717, 'SPEAR1', 1, 2, 2, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (718, 'WDT02705', 1, 2, 2, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (719, 'WDT02671', 1, 2, 8, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (720, 'WDT4L00556', 1, 1, 11, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (721, 'WDT4L000306', 1, 1, 11, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (722, 'WDT02568', 1, 1, 10, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (723, 'SORTINGTB4-9217', 1, 1, 10, 4, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (724, 'WDT02605', 1, 2, 4, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (725, 'WDT3_00616', 1, 2, 2, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `devices` VALUES (726, 'WDT02387', 1, 2, 3, 6, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `profiles`
-- 

INSERT INTO `profiles` VALUES (1, 'Admin', 'Administrator', 000000, 00000, '0', '0');
INSERT INTO `profiles` VALUES (2, 'Demo', 'Demo', 000001, 33333, '3', '0');
INSERT INTO `profiles` VALUES (3, 'Trainee', 'ITStudent', 000006, 77634, '6', '0');
INSERT INTO `profiles` VALUES (4, 'Trainee', 'ITStudent', 000003, 77277, '3', '0');
INSERT INTO `profiles` VALUES (5, 'Souwannachairob', 'Monfangmickarush', 115256, 77945, '3', '0');

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
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `request_by_user` varchar(50) character set utf8 NOT NULL COMMENT 'Requested by',
  `request_en` int(11) NOT NULL COMMENT 'En.',
  `request_ext` int(5) NOT NULL COMMENT 'Ext.',
  `request_email` varchar(125) character set utf8 NOT NULL COMMENT 'E-mail',
  `location_id` int(11) NOT NULL COMMENT 'Location',
  `department_id` int(11) NOT NULL COMMENT 'Department',
  `device_id` int(11) NOT NULL COMMENT 'Device',
  `request_problem` varchar(500) character set utf8 NOT NULL COMMENT 'Requests problem',
  `request_detail` text character set utf8 NOT NULL COMMENT 'Requests detail',
  `request_remark` text character set utf8 NOT NULL COMMENT 'Requests remark',
  `request_create_date` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'Requests date',
  `request_get_date` datetime NOT NULL COMMENT 'Accepted request date',
  `user_accept_request` varchar(50) character set utf8 NOT NULL COMMENT 'Accepted by',
  `request_start_repair_date` datetime NOT NULL COMMENT 'Start repair date',
  `user_repair` varchar(50) character set utf8 NOT NULL COMMENT 'Repair by',
  `request_end_repair_date` datetime NOT NULL COMMENT 'End repair date',
  `request_close_date` datetime NOT NULL COMMENT 'Close job date',
  `user_close` varchar(50) character set utf8 NOT NULL COMMENT 'Close job by',
  `request_answer` text character set utf8 NOT NULL COMMENT 'Cause symptoms',
  `request_repair_detail` text character set utf8 NOT NULL COMMENT 'Repair detail',
  `request_status` enum('wait','accepted','pending','forward','repair_out','completed','close') character set utf8 NOT NULL COMMENT 'Requests status',
  `request_end_remark` text character set utf8 NOT NULL COMMENT 'End remark',
  PRIMARY KEY  (`id`),
  KEY `location_request` (`location_id`),
  KEY `department_request` (`department_id`),
  KEY `device_request` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '9a24eff8c15a6a141ece27eb6947da0f', '2014-03-25 16:43:29', '2014-04-08 16:20:28', 1, 1);
INSERT INTO `users` VALUES (2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@example.com', '099f825543f7850cc038b90aaff39fac', '2014-03-25 16:43:29', '2014-04-02 15:58:58', 0, 1);
INSERT INTO `users` VALUES (3, 'it_student_b6', 'f65c10ef2cf4fb089208c220296240a7', 'itstudent.trainee@wdc.com', 'a68e114ebb1a165db672404d5ac74fbd', '2014-04-01 16:28:03', '2014-04-07 17:25:25', 0, 1);
INSERT INTO `users` VALUES (4, 'it_student_b3', 'f65c10ef2cf4fb089208c220296240a7', 'itstudent.trainee3@wdc.com', 'e783f5e5e3c282f7b672def73d7856e7', '2014-04-01 16:32:39', '0000-00-00 00:00:00', 0, 1);
INSERT INTO `users` VALUES (5, 'Monfang_S', '1364768a5062610cb8aff90cb9ff097b', 'Monfangmickarush.Souwannachairob@wdc.com', '890462578c764b355f9342f4c338fa27', '2014-04-04 15:08:09', '2014-04-04 16:25:29', 0, 1);

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
  ADD CONSTRAINT `department_request` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `device_request` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `location_request` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
