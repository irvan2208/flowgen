/*
 Navicat Premium Data Transfer

 Source Server         : database
 Source Server Type    : MySQL
 Source Server Version : 100126
 Source Host           : localhost:3306
 Source Schema         : flowchart_generator

 Target Server Type    : MySQL
 Target Server Version : 100126
 File Encoding         : 65001

 Date: 30/04/2018 14:17:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flowchart
-- ----------------------------
DROP TABLE IF EXISTS `flowchart`;
CREATE TABLE `flowchart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flowchart
-- ----------------------------
INSERT INTO `flowchart` VALUES (1, 'project apa11', '{ \"class\": \"go.GraphLinksModel\",\n  \"linkFromPortIdProperty\": \"fromPort\",\n  \"linkToPortIdProperty\": \"toPort\",\n  \"nodeDataArray\": [ \n{\"category\":\"Start\", \"text\":\"Start\", \"key\":-1, \"loc\":\"-904.7733400921488 -819.2733400921489\"},\n{\"category\":\"End\", \"text\":\"End\", \"key\":-4, \"loc\":\"-768.9999999999999 -356.00000000000045\"},\n{\"text\":\"asd\", \"key\":-2, \"loc\":\"-779.34716796875 -550.8131729125978\"},\n{\"text\":\"sad\", \"figure\":\"Diamond\", \"key\":-3, \"loc\":\"-914 -478.3754486083984\"},\n{\"text\":\"Step\", \"key\":-5, \"loc\":\"-1163.5048828125 -298.8754486083984\"},\n{\"text\":\"Step\", \"key\":-6, \"loc\":\"-578 -610\"}\n ],\n  \"linkDataArray\": [ \n{\"from\":-1, \"to\":-2, \"fromPort\":\"R\", \"toPort\":\"T\", \"points\":[-880,-819.2733400921489,-870,-819.2733400921489,-779.34716796875,-819.2733400921489,-779.34716796875,-730.7932565023734,-779.34716796875,-642.3131729125978,-779.34716796875,-632.3131729125978]},\n{\"from\":-2, \"to\":-3, \"fromPort\":\"L\", \"toPort\":\"T\", \"points\":[-900.84716796875,-550.8131729125978,-910.84716796875,-550.8131729125978,-914,-550.8131729125978,-914,-535.7820350646973,-914,-520.7508972167968,-914,-510.75089721679683]},\n{\"from\":-3, \"to\":-5, \"fromPort\":\"B\", \"toPort\":\"T\", \"visible\":true, \"points\":[-914,-445.99999999999994,-914,-435.99999999999994,-914,-393.43772430419915,-1163.5048828125,-393.43772430419915,-1163.5048828125,-350.8754486083984,-1163.5048828125,-340.8754486083984]},\n{\"from\":-5, \"to\":-4, \"fromPort\":\"B\", \"toPort\":\"T\", \"points\":[-1163.5048828125,-256.8754486083984,-1163.5048828125,-246.87544860839841,-948.0634559365205,-246.87544860839841,-948.0634559365205,-386.62202906054165,-768.9999999999999,-386.62202906054165,-768.9999999999999,-376.62202906054165]},\n{\"from\":-3, \"to\":-6, \"fromPort\":\"R\", \"toPort\":\"L\", \"visible\":true, \"points\":[-843.01220703125,-478.3754486083984,-833.01220703125,-478.3754486083984,-833.01220703125,-478.3754486083984,-833.01220703125,-484,-756,-484,-756,-610,-612.384033203125,-610,-602.384033203125,-610], \"text\":\"No\"}\n ]}');
INSERT INTO `flowchart` VALUES (15, 'Project baru', '{ \"class\": \"go.GraphLinksModel\",\n  \"nodeDataArray\": [ \n{\"category\":\"Start\", \"text\":\"Start\", \"key\":-1, \"loc\":\"-306 -283\"},\n{\"text\":\"Step\", \"key\":-2, \"loc\":\"-309 -182\"},\n{\"text\":\"???\", \"figure\":\"Diamond\", \"key\":-3, \"loc\":\"-304 -92\"},\n{\"text\":\"Step\", \"key\":-4, \"loc\":\"-302 -5\"},\n{\"category\":\"End\", \"text\":\"End\", \"key\":-5, \"loc\":\"-300 98\"}\n ],\n  \"linkDataArray\": [ \n{\"from\":-1, \"to\":-2, \"points\":[-306,-258.2266599078511,-306,-248.22665990785111,-306,-228.33219210602516,-309,-228.33219210602516,-309,-208.4377243041992,-309,-198.4377243041992]},\n{\"from\":-2, \"to\":-3, \"points\":[-309,-165.56227569580076,-309,-155.56227569580076,-309,-144.9688621520996,-304,-144.9688621520996,-304,-134.37544860839844,-304,-124.37544860839844]},\n{\"from\":-3, \"to\":-4, \"visible\":true, \"points\":[-304,-59.62455139160156,-304,-49.62455139160156,-304,-40.53113784790039,-302,-40.53113784790039,-302,-31.437724304199218,-302,-21.437724304199218]},\n{\"from\":-4, \"to\":-5, \"points\":[-302,11.437724304199218,-302,21.437724304199218,-302,44.40784762182901,-300,44.40784762182901,-300,67.3779709394588,-300,77.3779709394588]}\n ]}');

SET FOREIGN_KEY_CHECKS = 1;
