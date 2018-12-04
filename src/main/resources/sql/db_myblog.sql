/*
Navicat MySQL Data Transfer

Source Server         : 本机MYSQL
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : db_myblog

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-12-04 10:43:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MENU_NAME` varchar(200) NOT NULL COMMENT '菜单名称',
  `MENU_PATH` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `PARENT_ID` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `MENU_SORT` int(11) DEFAULT NULL COMMENT '排序',
  `CSS_CLASS` varchar(255) DEFAULT NULL COMMENT 'css样式',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '文章管理', '', '0', '1', 'glyphicon glyphicon-file');
INSERT INTO `sys_menu` VALUES ('2', '评论管理', '', '0', '2', 'glyphicon glyphicon-pencil');
INSERT INTO `sys_menu` VALUES ('3', '系统管理', '#systemSetting', '0', '99', 'glyphicon glyphicon-cog');
INSERT INTO `sys_menu` VALUES ('4', '用户管理', '/user/usermanager', '3', '1', 'glyphicon glyphicon-user');
INSERT INTO `sys_menu` VALUES ('5', '菜单管理', '/menu/menumanager', '3', '2', 'glyphicon glyphicon-th-list');
INSERT INTO `sys_menu` VALUES ('6', '角色管理', '', '3', '3', 'glyphicon glyphicon-asterisk');
INSERT INTO `sys_menu` VALUES ('7', '修改密码', '', '3', '4', 'glyphicon glyphicon-edit');
INSERT INTO `sys_menu` VALUES ('22', '测试菜单', '#newCreate', '0', '4', 'glyphicon glyphicon-flag');
INSERT INTO `sys_menu` VALUES ('24', '测试子菜单', '', '22', '1', 'glyphicon glyphicon-fast-backward');
INSERT INTO `sys_menu` VALUES ('25', '测试三菜单', '', '22', '3', 'glyphicon glyphicon-camera');
INSERT INTO `sys_menu` VALUES ('26', '测试四菜单', '', '22', '3', 'glyphicon glyphicon-headphones');
INSERT INTO `sys_menu` VALUES ('27', '测试五菜单', '', '22', '6', 'glyphicon glyphicon-indent-right');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `USERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `TRUE_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('02c087d01ef54fafa4c052c2c597f859', 'kangxi', '7eb8ce49a24e20b8524d01581f3f968b', '康熙');
INSERT INTO `sys_user` VALUES ('07a0b8ea905942a68d70aeb162f88284', 'zhaomin', 'd6dbac672b140dc05ba6b76bd1c2f7e7', '赵敏');
INSERT INTO `sys_user` VALUES ('0d9c22f6d0824814bb1006067b959a97', 'xinyue', '7908d64679ef78456ab4817b92e807f2', '辛月');
INSERT INTO `sys_user` VALUES ('0de5d26294ff4ab4afd42fcdbbbc2e87', 'langjianwei', '61554f888e96943ca55cf581224b1184', '郎建伟');
INSERT INTO `sys_user` VALUES ('146aa26b07aa4904b7f390e16e129770', 'weichunhua', 'f7291c3f79c36942163a53046cd50142', '韦春花');
INSERT INTO `sys_user` VALUES ('21eecbf343ae4c88809c4e8a258bd13f', 'xiexun', 'cda6fbb7be3cc420ef6d05f16f6196d7', '谢逊');
INSERT INTO `sys_user` VALUES ('27466997347244d8b107ab9e76464cdc', 'admin', 'f0edf9dd67467c940a758535b7d2367b', '管理员');
INSERT INTO `sys_user` VALUES ('298bf9b65e834fc9826cd435ec345a85', 'liyan', '6b1fe64ae2bb79cfcde8fe6be67a1660', '李岩');
INSERT INTO `sys_user` VALUES ('29f27ac4f2ff43d7be663dfa96ec5f4c', 'zhoubotong', '5cc6acbf9e863d63b5d2084677d8cf42', '周伯通');
INSERT INTO `sys_user` VALUES ('456248063ab849338a7527bb673d3a03', 'liupengcheng', '08f65e4b9dcd174bb40918bd0e67dc2f', '刘鹏程');
INSERT INTO `sys_user` VALUES ('45bcef4b7ec74a4492aa8c1ff49a9436', 'xiaoguizi', '7b9eedf9656fbcf6da9a2a5d901a6c88', '小桂子');
INSERT INTO `sys_user` VALUES ('46d870823fca465190b12ecfacad3a1c', 'zhoudongyu', 'e8c55e80219fd702412883373b896d34', '周冬雨');
INSERT INTO `sys_user` VALUES ('47e0212becf74d8882404f7cc36782d9', 'mayun', '41d2b91dcdf3f5b6f2699b8f534e5e5f', '马云');
INSERT INTO `sys_user` VALUES ('4e1ade2593b14da69c6ac75551851bdd', 'huangrong', '99848220b34229371acdcb5ee57e53cb', '黄蓉');
INSERT INTO `sys_user` VALUES ('511089e2d4374378978f8e7420831050', 'zhouyunlong', '4c92c479a6508dfca1c05ab36e88e764', '周云龙');
INSERT INTO `sys_user` VALUES ('614dd4bd1f0249a9b16c5c665ac7c99a', 'yangguo', 'c6853ca115f6507b72ad9ee8e4079e15', '杨过');
INSERT INTO `sys_user` VALUES ('62074d506c034c53b8786cdeca143241', 'zhangwuji', '85b22d34412b66c284ae027fd39b1821', '张无忌');
INSERT INTO `sys_user` VALUES ('63c5b2a7e7ff4ffe8c7002266eb6528b', 'yueyunpeng', '887d93760976c56fbfbcc98f7b5f521c', '岳云鹏');
INSERT INTO `sys_user` VALUES ('673f1326a02b43ce81d9014fedefdae7', 'qianxuesen', 'c393a8ba599923b65a857b856d488cae', '钱学森');
INSERT INTO `sys_user` VALUES ('842ab28a613e479886b930fc8ac794ae', 'xiaolongnv', '9972b48b0180ce51239486a5126484e9', '小龙女');
INSERT INTO `sys_user` VALUES ('896779193be74b548d18302358afcb6a', 'qianlong', '024dcb1723ca72fcc54755c3f0acd871', '乾隆');
INSERT INTO `sys_user` VALUES ('8a40a97798a649c6acee7e26f0ba91c9', 'guojing', 'dab28507043a2c7d1ed4ead5e5a0f17c', '郭靖');
INSERT INTO `sys_user` VALUES ('9314552ded3a4052947012f41a211733', 'administrator', 'ce1712b709166a6e693779ebad1a1e3f', '超级管理员');
INSERT INTO `sys_user` VALUES ('94b12f5be149478c9b78169c8e7bb432', 'wanglihong', '1e6a7788350c9f6d87ff740e7329a6cf', '王力宏');
INSERT INTO `sys_user` VALUES ('9865880c99234b7b8a57f75528526633', 'jinlunfawang', 'ff65264772bd1da671e994a0b6cf1ba6', '金轮法王');
INSERT INTO `sys_user` VALUES ('99b4169cc3d84fa78685dc9548239b1c', 'weiyixiao', '0e7ed926756ca47972fb482225815312', '韦一笑');
INSERT INTO `sys_user` VALUES ('a128e017604946689272480f9ddda405', 'liyuekang', '85541c7796b67c9d2a8bb8dc574924d4', '李悦康');
INSERT INTO `sys_user` VALUES ('abdc9da6bcb147b88d876697a91e65ad', 'haidafu', 'b71dace1f1cd00dcfe320a5bb432f0b4', '海大富');
INSERT INTO `sys_user` VALUES ('b1f1db75f1e4448196c007f08b4b1153', 'liuqiangdong', 'eb7075f4766eafcd1282efa0fcff5a02', '刘强东');
INSERT INTO `sys_user` VALUES ('b8d883b9bae24a528bd3619cd0f7fcf7', 'tanxiaohong', '394c798c6bf442ee2a35a0ee526100dd', '谭小红');
INSERT INTO `sys_user` VALUES ('be241cd358904c5c83a7d933cfc6dfe7', 'liuqian', 'c78e6403308a3cd536d2eb3c5336ce6f', '刘谦');
INSERT INTO `sys_user` VALUES ('c66047cd063949d3a58082ee5ebee938', 'zhouzhiruo', '6e98acb7de73b0534a04a0ba9083815f', '周芷若');
INSERT INTO `sys_user` VALUES ('ca16176d9d464821b0c04045ab0d1526', 'chengjunxiang', '5eed59b8e0332a5e60e80b2caf638c58', '程俊祥');
INSERT INTO `sys_user` VALUES ('d542befa8b674584974658065f11fd30', 'yongzheng', '4fd8ca1cec935c0f7372ce107b555a97', '雍正');
INSERT INTO `sys_user` VALUES ('f474223f109641519e4a351e4af1d5b0', 'guodegang', '8c3bd41a146aa1459911ee4ed874255e', '郭德纲');
INSERT INTO `sys_user` VALUES ('f4bc1f68fb6d4a8684a0bebbd612ab87', 'zhoujielun', 'aa77d9a4e1afb37654bd65f8a69b7c20', '周杰伦');
INSERT INTO `sys_user` VALUES ('f63b07bd3bc44cb0a524c868183188c2', 'weixiaobao', 'afb9696082aa8d29c6f112d34f3a0110', '韦小宝');
INSERT INTO `sys_user` VALUES ('f6fd99f869944ea08a61e672f540d007', 'oudarun', '3a55a3635e05b314312b78ac080e30d2', '殴打润');
INSERT INTO `sys_user` VALUES ('fd29ce025ecf475699aa7acfa82616ca', 'guomingze', '130191ba519ef81290d78f00b1c26b19', '郭明泽');
INSERT INTO `sys_user` VALUES ('ff890077213f47b5937f04e99ec4573f', 'zhuliang', '5d8e33309333ae75ac35c2c91d915569', '朱亮');
