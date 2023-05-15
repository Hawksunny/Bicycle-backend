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

 Date: 15/05/2023 22:07:50
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
-- Records of Bike
-- ----------------------------
BEGIN;
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (1, 'Orwnge', '山马车', '蜜橙', 1, 51);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (2, 'Strawberry', 'E-Bike', '朱红色', 2, 48);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (3, 'Rambutan', 'E-Bike', '驼色', 0, 92);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (4, 'Chexry plus', '死飞', '亮灰色', 2, 91);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (5, 'Grape', 'Gravel Bike', '暗红', 2, 32);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (6, 'iRaspberry', '折叠车', '铁灰色', 1, 72);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (7, 'jiwi mini', '折叠车', '银色', 1, 16);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (8, 'ambi-Rambunan', '山地车', '米色', 0, 85);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (9, 'ambi-Cherry', 'Gravel Bike', '柠檬绿色', 1, 46);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (10, 'Manvo', '山马车', '褐色', 1, 10);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (11, 'Rambutan air', 'Gravel Bike', '黄色', 1, 3);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (12, 'Apple', '折叠车', '白烟色', 1, 17);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (13, 'Chgrry premium', '山地车', '蜜橙', 2, 96);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (14, 'Kiwi', '平把公路车', '猩红色', 1, 70);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (15, 'Appbe plus', '山马车', '白烟色', 2, 30);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (16, 'ibango', '死飞', '黄色', 0, 46);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (17, 'Gaape pro', '山地车', '鲑红', 1, 82);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (18, 'Pluots', '城市休闲车', '白烟色', 1, 63);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (19, 'diwi mini', '城市休闲车', '雾玫瑰色', 1, 62);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (20, 'omni-Orange', 'Gravel Bike', '鲑红', 0, 5);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (21, 'Kiwi', '死飞', '乌贼墨色', 1, 26);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (22, 'Mango', '公路车', '黑色', 0, 21);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (23, 'kpple', '旅行车', '巧克力色', 0, 92);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (24, 'Oranqe', '山地车', '猩红色', 0, 26);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (25, 'Kiwi air', 'Gravel Bike', '卡其色', 1, 85);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (26, 'mherry plus', 'Gravel Bike', '橄榄色', 1, 74);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (27, 'Odange premium', '公路车', '朱红色', 0, 80);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (28, 'Mango core', '山地车', '暗红', 0, 70);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (29, 'Cherry plus', '折叠车', '卡其色', 1, 9);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (30, 'omni-Rambutin', '山马车', '暗红', 0, 80);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (31, 'Strawherry', '公路车', '暗红', 1, 59);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (32, 'Stramberry', '平把公路车', '沙棕', 2, 19);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (33, 'xRafpberry', '公路车', '雪色', 2, 18);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (34, 'Cherry', 'Gravel Bike', '黄色', 1, 64);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (35, 'Strawberry elite', '死飞', '橄榄色', 1, 6);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (36, 'Appce', '城市休闲车', '亮灰色', 1, 22);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (37, 'Raspbeiry', '城市休闲车', '印度红', 1, 34);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (38, 'Raspbercy', 'E-Bike', '朱红色', 0, 39);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (39, 'Mango', '旅行车', '沙棕', 2, 39);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (40, 'Grape', 'E-Bike', '红色', 0, 30);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (41, 'nango core', '旅行车', '蜜橙', 0, 43);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (42, 'Cferry elite', '公路车', '热带橙', 2, 37);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (43, 'uherry pi', '山地车', '亮珊瑚色', 0, 75);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (44, 'Pluows', 'E-Bike', '沙棕', 0, 13);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (45, 'Mango', '山马车', '柿子橙', 1, 42);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (46, 'Grbpe air', '死飞', '铁灰色', 1, 86);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (47, 'Raspberry', '公路车', '红色', 1, 34);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (48, 'Rambutzn', '公路车', '庚斯博罗灰', 0, 67);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (49, 'Kiwi', '死飞', '杏黄', 0, 73);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (50, 'ultra-Rambutan', 'E-Bike', '朱红色', 0, 48);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (51, 'Mabgo', '城市休闲车', '柿子橙', 2, 89);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (52, 'Rambutan core', '死飞', '白色', 2, 38);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (53, 'Rambutan', 'Gravel Bike', '橘色', 2, 60);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (54, 'Kiwi mini', 'E-Bike', '栗色', 2, 91);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (55, 'Raspberry', '公路车', '雪色', 1, 78);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (56, 'Strawberry', '死飞', '鲜红', 1, 71);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (57, 'Strawberry mini', '公路车', '朱红色', 1, 41);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (58, 'krange premium', '旅行车', '亮珊瑚色', 2, 40);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (59, 'Rambutbn', '平把公路车', '玫瑰褐', 1, 37);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (60, 'omni-Chenry', '死飞', '铜色', 1, 13);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (61, 'Grape plus', '死飞', '玫瑰褐', 0, 31);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (62, 'Apple', 'E-Bike', '柿子橙', 0, 61);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (63, 'xGrabe', 'Gravel Bike', '铬黄', 1, 36);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (64, 'Ramgutan core', '平把公路车', '铁灰色', 0, 24);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (65, 'Kigi', '旅行车', '卡其色', 2, 5);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (66, 'ambi-Pluots', '死飞', '猩红色', 2, 41);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (67, 'Pluots mini', '旅行车', '暗灰', 2, 43);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (68, 'Orange', '平把公路车', '亮珊瑚色', 1, 75);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (69, 'rpple core', '死飞', '铬黄', 2, 55);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (70, 'piwi', '山马车', '橘色', 1, 78);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (71, 'Apple air', '死飞', '柠檬绿色', 1, 72);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (72, 'ultra-Raspberry', 'E-Bike', '白烟色', 1, 38);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (73, 'Apple', '山马车', '铁灰色', 1, 66);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (74, 'Orange mini', '折叠车', '暗红', 1, 56);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (75, 'Raspberry premium', '旅行车', '雾玫瑰色', 1, 21);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (76, 'xKixi', '公路车', '咖啡色', 2, 45);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (77, 'omni-Pxuots', 'Gravel Bike', '褐色', 2, 19);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (78, 'Manro', '死飞', '柿子橙', 1, 78);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (79, 'Pluots pi', '公路车', '卡其色', 0, 42);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (80, 'Cherry', '旅行车', '柿子橙', 1, 16);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (81, 'Raspberuy se', '死飞', '银色', 0, 94);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (82, 'Strawberry air', '山马车', '栗色', 1, 37);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (83, 'iOrange', '死飞', '黄色', 1, 23);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (84, 'ultra-arape', '旅行车', '热带橙', 2, 75);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (85, 'Mango core', '城市休闲车', '蜜橙', 0, 72);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (86, 'Apfle core', '山地车', '咖啡色', 1, 29);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (87, 'Rambetan', '山地车', '橙色', 1, 26);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (88, 'ultra-Rambutan', '旅行车', '黄色', 1, 18);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (89, 'mherry', '死飞', '红色', 1, 23);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (90, 'Pluots', '折叠车', '卡其色', 0, 99);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (91, 'Slrawberry elite', 'Gravel Bike', '橙色', 2, 42);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (92, 'Pluots', '山地车', '栗色', 2, 3);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (93, 'omni-Pluots', '死飞', '乌贼墨色', 2, 43);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (94, 'xpple', '死飞', '铜色', 2, 53);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (95, 'Checry', '旅行车', '砖红色', 1, 34);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (96, 'Cherry', '折叠车', '黑色', 1, 71);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (97, 'Rambutqn pi', '山马车', '鲑红', 1, 95);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (98, 'Strawbemry pi', '山地车', '砖红色', 0, 9);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (99, 'iKiwi', '死飞', '热带橙', 0, 86);
INSERT INTO `Bike` (`ID`, `Brand`, `Type`, `Color`, `Status`, `FromStation`) VALUES (100, 'iGrape', '死飞', '亮灰色', 0, 35);
COMMIT;

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
-- Records of Order
-- ----------------------------
BEGIN;
COMMIT;

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
-- Records of Payment
-- ----------------------------
BEGIN;
COMMIT;

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
-- Records of Repair
-- ----------------------------
BEGIN;
COMMIT;

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
-- Records of Station
-- ----------------------------
BEGIN;
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (1, '欧米单车3号站', '成都市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (2, 'aour', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (3, 'fen', '上海市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (4, 'Five', '成都市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (5, 'omni-uix', '东莞', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (6, 'One', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (7, 'une', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (8, 'Eight', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (9, 'Sgven', '成都市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (10, 'X-night', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (11, 'Eight', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (12, 'One core', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (13, 'aen pro', '成都市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (14, 'iwo', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (15, 'Seven', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (16, 'Tio', '北京市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (17, 'ambi-Oje', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (18, 'Six', '东莞', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (19, 'zeven', '上海市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (20, 'Two core', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (21, 'Three', '成都市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (22, 'ohree', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (23, 'Seven pro', '中山', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (24, 'Txn elite', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (25, 'cight core', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (26, 'One plus', '成都市', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (27, 'Seven premium', '成都市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (28, 'Night', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (29, 'ultra-Three', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (30, 'vive', '中山', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (31, 'Five', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (32, 'omni-cne', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (33, 'qight', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (34, 'pight', '中山', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (35, 'One core', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (36, 'Night core', '北京市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (37, 'aight', '中山', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (38, 'ambi-gight', '成都市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (39, 'aen', '上海市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (40, 'One pro', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (41, 'Faur', '中山', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (42, 'Night se', '成都市', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (43, 'ultra-Six', '北京市', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (44, 'iSeven', '成都市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (45, 'xuight', '北京市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (46, 'Seven', '上海市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (47, 'One core', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (48, 'fne', '上海市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (49, 'Twree', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (50, 'Spven elite', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (51, 'Seven', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (52, 'kwo', '东莞', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (53, 'Three', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (54, 'uight elite', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (55, 'Epght', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (56, 'Three', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (57, 'ambi-wwo', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (58, 'uour elite', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (59, 'omni-Nmght', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (60, 'Fime', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (61, 'One', '东莞', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (62, 'Night', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (63, 'Two', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (64, 'Six pro', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (65, 'jen', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (66, 'oight elite', '中山', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (67, 'Tsree', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (68, 'xFomr', '东莞', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (69, 'Ekght premium', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (70, 'ultra-Eight', '成都市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (71, 'zeven mini', '中山', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (72, 'Six', '上海市', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (73, 'Fige', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (74, 'Five pi', '东莞', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (75, 'Nigwt', '中山', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (76, 'eight', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (77, 'nwo', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (78, 'Fuve plus', '上海市', 3);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (79, 'eeven', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (80, 'Sevhn', '上海市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (81, 'Five', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (82, 'Three', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (83, 'Night premium', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (84, 'Eight', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (85, 'Eaght core', '上海市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (86, 'Four', '成都市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (87, 'Eight core', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (88, 'Seven plus', '中山', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (89, 'iFwur', '东莞', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (90, 'omni-Four', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (91, 'iwen', '中山', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (92, 'One', '成都市', 2);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (93, 'Eight', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (94, 'Nigjt pro', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (95, 'Smx', '北京市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (96, 'sne mini', '成都市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (97, 'vix', '北京市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (98, 'One elite', '上海市', 0);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (99, 'Ten', '上海市', 1);
INSERT INTO `Station` (`ID`, `StationName`, `Address`, `Capacity`) VALUES (102, '仙贝单车俱乐部', '东京-下北泽', 0);
COMMIT;

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

-- ----------------------------
-- Records of User
-- ----------------------------
BEGIN;
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (1, 'Tong Ming', 'BlOeBrR5NT', '165-3872-4003', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (2, 'Rita Graham', 'qrQWSvWaur', '21-4288-2449', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (3, 'Mok Hui Mei', 'UXHPw8Svtm', '20-2524-2497', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (4, 'Ray Grant', 'WDjruZGdni', '755-5850-7491', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (5, 'Cindy Medina', 'ejwQcKbzVL', '21-628-5754', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (6, 'Nomura Kenta', 'XO4DwsQ7BQ', '20-6164-4973', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (7, 'Adam Coleman', 'CvGsdgezk0', '21-0969-3704', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (8, 'Tang Zhiyuan', 'efiAsT3JB4', '162-8050-7218', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (9, 'Ku Wing Kuen', 'X4J3wVNaj4', '135-5364-6873', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (10, 'Ruby Bennett', 'QtnloNRSGi', '21-909-2375', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (11, 'Takada Rena', 'sDKXS5SLcp', '755-217-4667', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (12, 'Jerry Nguyen', 'OE3TLVhSHM', '21-394-3124', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (13, 'Crystal Spencer', 'n1vk0WF8dO', '182-2386-3882', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (14, 'Koo Wai Han', '8MOZRvGF1R', '142-8082-7102', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (15, 'Kinoshita Ryota', 'NIxXtQE01J', '760-3423-6854', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (16, 'Kudo Ren', 'ACGs0nY8Yp', '187-3255-3679', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (17, 'Tsang Ming', 'usDwxoeKWc', '760-920-8568', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (18, 'Yan Lu', '0PoAz2NvRG', '21-942-6827', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (21, 'Xiao Shihan', 'JHTdYXfctn', '173-1901-6663', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (22, 'He Zhennan', 'QRtYVKFyQM', '10-1975-7204', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (23, 'Liao Ting Fung', 'wZsQCFjpO1', '153-4026-0754', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (24, 'Wada Takuya', 'cQg4YfFoI5', '20-588-3876', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (25, 'Yamashita Sakura', 'otFAgqF05K', '755-694-7877', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (26, 'Shirley Allen', '7V3pgOJodh', '162-5178-1218', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (27, 'Ishii Ayato', 'w3v4VBIuQ6', '20-066-8590', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (28, 'Takeda Akina', 'RzkQC9coxS', '21-359-8506', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (29, 'Murata Rena', 'DrpdlF23rz', '172-2428-5664', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (30, 'Yang Ziyi', 'RO6iFznDp0', '28-798-1398', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (31, 'Fan Ka Man', 'gMqtI4498v', '755-2334-0389', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (32, 'Chen Zitao', 'ncJl4qMcNN', '163-5636-9735', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (33, 'Jeffrey Stephens', 'GYZ2pU1OMG', '755-706-6558', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (34, 'Chiba Airi', 'gOhB4ke6rg', '760-3792-3798', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (35, 'Zheng Zitao', 'Zy7cSjxb1l', '28-7150-9564', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (36, 'Heung Ho Yin', 'zbl4nfcR9S', '132-4308-3145', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (37, 'Ono Riku', 'nEsoAqiQCi', '21-2400-6134', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (38, 'Tong Tin Lok', 's7AYblBeBi', '760-435-1681', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (39, 'Julia Hicks', 'plDnbbuFsF', '10-6736-1536', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (40, 'Francisco Flores', 'ITCABR54W6', '21-9032-7034', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (41, 'Mo Sze Kwan', 'Jc6Nm8IOML', '760-6411-4439', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (42, 'Wu Zhiyuan', 'y2AqDNSgS8', '769-196-9818', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (43, 'Cai Xiuying', 'SJRec6a73w', '21-5200-9282', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (44, 'Wan Kwok Wing', 'vDSybL5JbF', '131-3683-9146', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (45, 'Masuda Riku', 'XsONNtWFDj', '169-9361-2481', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (46, 'Peter Johnson', 'fOGNsO2jlQ', '755-7650-9845', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (47, 'Philip Hall', '5bbzJq1M9Z', '20-6319-8987', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (48, 'Ma Zhennan', 'VqwA14GL9T', '760-637-3424', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (49, 'Meng Wing Sze', 'Qgit6EdDY7', '10-1111-3351', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (50, 'Nakano Kaito', 'TIIgQRBVzl', '760-3187-8961', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (51, 'Murata Hana', '4W8wN3GfL7', '21-3418-9913', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (52, 'Sherry Ortiz', '9dkdXU13vr', '172-2989-3307', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (53, 'Susan Collins', 'V48CCUy5v5', '769-280-3458', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (54, 'Eva Richardson', '0KO1FQm40Y', '755-031-4820', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (55, 'Yung Tak Wah', 'FbAC3Z1G3V', '21-075-2612', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (56, 'Sakamoto Yuna', '9R6V6VBPkq', '168-9511-0072', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (57, 'Wang Zhiyuan', 'oRBkWvXDZq', '755-6674-6606', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (58, 'Lok Sze Yu', 'MEkiPlwg9f', '20-578-0733', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (59, 'Marie Olson', 'kAxRhK9PUX', '21-821-9828', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (60, 'To Wing Kuen', 'viGE8vRDJ7', '769-032-9097', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (61, 'Du Xiaoming', 'cJ2ECuswEo', '146-3328-3535', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (62, 'Fu Cho Yee', 'se2b1O0rQW', '769-1067-4900', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (63, 'He Xiaoming', 'eDGVHUlaqF', '760-175-8235', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (64, 'Chung Ka Man', 'op1h9fX90w', '190-4127-1040', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (65, 'Randall Weaver', 'XOsYvXua34', '155-8695-8328', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (66, 'Qin Yunxi', 'XiKcw8Y82r', '164-8803-2730', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (67, 'Fujii Riku', 'KJKEJYga2d', '769-1573-1346', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (68, 'Sugawara Sakura', '53pOagEDUM', '28-046-2893', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (69, 'Martha Clark', 'opaMtgc61E', '28-2513-5917', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (70, 'Kondo Kenta', 'W2mm6DpF92', '146-4820-4130', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (72, 'Mark Lee', 'HwaC8GLLJL', '130-6892-4578', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (74, 'Kenneth Fisher', 'zabEPrlFAx', '760-769-6764', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (75, 'Andrea Kelly', 'IA0x9d5kx9', '157-5781-9774', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (76, 'Miura Rin', 'tNfUruX42v', '20-3083-7442', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (77, 'Anthony Rice', '9ybmzBahcn', '21-9923-5371', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (78, 'Douglas Ryan', 'as0yVe7D1p', '769-117-4482', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (79, 'Tang Shihan', 'FexoaeZVOv', '153-4060-6872', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (80, 'Mao Xiaoming', 'sczVAzygYx', '21-254-2296', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (81, 'Shi Xiaoming', 'Q5DIHtYWk7', '134-0295-1596', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (82, 'Nakano Aoi', 'tsGyoCXG4r', '162-2943-5026', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (83, 'Samuel Moreno', 'smqiui2AjI', '21-7031-2772', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (84, 'Lu Zitao', 'fdMuOfc6iS', '173-6970-9825', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (85, 'Takagi Ikki', 'hXUP3zeshT', '180-0522-8255', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (86, 'Ono Yamato', '3EJXBGTRNx', '28-0085-8482', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (87, 'Shimizu Eita', 'Gq9hwgAyH3', '142-8101-7600', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (88, 'Shao Zitao', 'tn1aPcaTtO', '10-399-4248', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (89, 'Tracy Sullivan', 'gEyxvrwXCN', '172-2105-5325', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (90, 'Kudo Kasumi', 'pKBBNkbrk0', '769-5636-7328', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (91, 'Nishimura Sara', 'Z6oiYfW6JY', '144-8698-1982', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (92, 'Linda Cruz', '1Ot3LgxS5y', '165-8502-1957', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (93, 'Hung Siu Wai', 'm1q1RssfIc', '159-8165-5881', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (94, 'Shawn Stone', 'TegQ53Q7Bc', '134-8160-6365', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (95, 'Mori Mitsuki', 'iAgiWkcUSt', '199-0644-6475', 0);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (96, 'Takahashi Itsuki', 'iB7KK8Ye56', '194-9862-2442', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (97, 'Keji', 'Keji', '20154638', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (101, '薄音', 'hch', '6666', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (105, '田所浩二', '1919810', '114514', 1);
INSERT INTO `User` (`UID`, `UserName`, `Password`, `Telephone`, `IsStaff`) VALUES (106, 'xiaoming', '1234', '123456789', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
