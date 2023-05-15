/*
 Navicat Premium Data Transfer

 Source Server         : hch
 Source Server Type    : MariaDB
 Source Server Version : 101102 (10.11.2-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : bicycle

 Target Server Type    : MariaDB
 Target Server Version : 101102 (10.11.2-MariaDB)
 File Encoding         : 65001

 Date: 15/05/2023 22:07:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Bike
-- ----------------------------
DROP TABLE IF EXISTS `Bike`;
CREATE TABLE `Bike` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Brand` varchar(255) NOT NULL DEFAULT '',
  `Type` varchar(255) NOT NULL DEFAULT '',
  `Color` varchar(255) NOT NULL DEFAULT '',
  `Status` int(10) unsigned NOT NULL DEFAULT 1,
  `FromStation` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FromStation` (`FromStation`),
  CONSTRAINT `FromStation` FOREIGN KEY (`FromStation`) REFERENCES `Station` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for Order
-- ----------------------------
DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PaymentID` int(10) unsigned NOT NULL,
  `UID` int(10) unsigned DEFAULT NULL,
  `BikeID` int(10) unsigned DEFAULT NULL,
  `RentalTIme` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `RentalStation` int(10) unsigned NOT NULL COMMENT '站点ID',
  `BackTime` datetime NOT NULL,
  `BackStation` int(10) unsigned NOT NULL COMMENT '站点ID',
  `Fee` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PaymentID` (`PaymentID`),
  KEY `BikeID` (`BikeID`),
  KEY `RentalStation` (`RentalStation`),
  KEY `UID` (`UID`),
  KEY `BackStation` (`BackStation`),
  CONSTRAINT `BackStation` FOREIGN KEY (`BackStation`) REFERENCES `Bike` (`FromStation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `Payment` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `RentalStation` FOREIGN KEY (`RentalStation`) REFERENCES `Station` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for Payment
-- ----------------------------
DROP TABLE IF EXISTS `Payment`;
CREATE TABLE `Payment` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` int(10) unsigned DEFAULT NULL,
  `UID` int(10) unsigned NOT NULL,
  `BikeID` int(10) unsigned NOT NULL,
  `Total` int(10) unsigned NOT NULL,
  `PayMethod` varchar(255) NOT NULL,
  `PayTIme` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Status` int(10) unsigned NOT NULL DEFAULT 2 COMMENT '2支付中，1支付成功，0支付失败',
  PRIMARY KEY (`ID`),
  KEY `UID` (`UID`),
  KEY `BikeID` (`BikeID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `BikeID` FOREIGN KEY (`BikeID`) REFERENCES `Bike` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `UID` FOREIGN KEY (`UID`) REFERENCES `User` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for Repair
-- ----------------------------
DROP TABLE IF EXISTS `Repair`;
CREATE TABLE `Repair` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BikeID` int(10) unsigned NOT NULL,
  `ReportTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Reporter` int(10) unsigned NOT NULL COMMENT '填UID',
  `Status` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'true代表维修好了',
  PRIMARY KEY (`ID`),
  KEY `Reporter` (`Reporter`),
  CONSTRAINT `Reporter` FOREIGN KEY (`Reporter`) REFERENCES `User` (`UID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for Station
-- ----------------------------
DROP TABLE IF EXISTS `Station`;
CREATE TABLE `Station` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `StationName` varchar(255) NOT NULL DEFAULT '',
  `Address` varchar(255) NOT NULL DEFAULT '',
  `Capacity` int(10) unsigned NOT NULL DEFAULT 50,
  PRIMARY KEY (`ID`),
  KEY `StationName` (`StationName`,`Address`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `UID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL DEFAULT '',
  `Password` varchar(255) NOT NULL DEFAULT '',
  `Telephone` varchar(255) NOT NULL DEFAULT '',
  `IsStaff` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
