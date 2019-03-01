/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-02-25 23:12:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin1', '111', 'admin1', '2');
INSERT INTO `admin` VALUES ('2', 'admin2', '222', 'admin2', '2');
INSERT INTO `admin` VALUES ('3', 'admin3', '333', 'admin3', '2');
INSERT INTO `admin` VALUES ('4', 'admin4', '444', 'admin4', '2');
INSERT INTO `admin` VALUES ('5', 'admin5', '555', 'admin5', '2');

-- ----------------------------
-- Table structure for need
-- ----------------------------
DROP TABLE IF EXISTS `need`;
CREATE TABLE `need` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tel` varchar(11) NOT NULL,
  `price` int(30) NOT NULL,
  `level` varchar(255) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `is_delete` int(2) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of need
-- ----------------------------
INSERT INTO `need` VALUES ('1', 'mike', '标题1', '需求内容需', '1213212323', '12121', '成熟需求', '0', null, '1', '1548846372');
INSERT INTO `need` VALUES ('2', '需求者', '标题2', '', '11111111111', '1144', '需求', '0', null, null, null);
INSERT INTO `need` VALUES ('3', '1231', '54', '545', '5545444', '0', '', '0', null, null, null);
INSERT INTO `need` VALUES ('4', '5', '15165', '', '', '15', '', '0', null, null, null);
INSERT INTO `need` VALUES ('5', '', '5', '', '', '0', '', '0', null, null, null);
INSERT INTO `need` VALUES ('6', '', '6', '', '', '0', '', '0', null, '1', '1544608911');
INSERT INTO `need` VALUES ('7', '', '7', '', '', '0', '', '0', null, null, null);
INSERT INTO `need` VALUES ('8', '666666', '666666', '', '', '0', '', '0', null, null, null);
INSERT INTO `need` VALUES ('9', '', '9', '', '', '0', '', '0', null, null, null);
INSERT INTO `need` VALUES ('10', '', '10', '', '', '0', '', '0', null, null, null);
INSERT INTO `need` VALUES ('11', 'asfasfsaf', 'sdfs', '', '', '0', '', null, null, null, null);
INSERT INTO `need` VALUES ('12', 'adminxcvv', '', '', '', '0', '', null, null, null, null);
INSERT INTO `need` VALUES ('13', 'admin', '', '', '', '20000', '高级', null, null, null, null);
INSERT INTO `need` VALUES ('14', 'wr(教授)', 'sxvcvcx', '', '', '1000', '高级', null, null, null, null);
INSERT INTO `need` VALUES ('15', 'admin', '78575', '786575446', '7676', '1000', '中级', null, null, null, null);

-- ----------------------------
-- Table structure for need_message
-- ----------------------------
DROP TABLE IF EXISTS `need_message`;
CREATE TABLE `need_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `need_id` int(11) NOT NULL,
  `need_name` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `createtime` varchar(11) DEFAULT NULL,
  `delete_time` varchar(11) DEFAULT NULL,
  `is_delete` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of need_message
-- ----------------------------
INSERT INTO `need_message` VALUES ('2', '0', '12132', '1', 'adad', '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('4', '0', '121354', '1', 'sadasd ', '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('5', '0', '111', '1', 'xzczxc', '厉害哦~！！', '2019-02-21 ', null, '1');
INSERT INTO `need_message` VALUES ('6', '1132', 'adsa', '1', 'asdas ', '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('7', '12', 'asdasd', '1', 'asdasd', '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('8', '2132', 'asdad', '1', 'asdas', '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('9', '545', '', '1', null, '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('10', '54564', '', '0', null, '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('11', '77', '', '0', null, '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('12', '88', '', '0', null, '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('13', '77', '', '0', null, '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('14', '899', '', '0', null, '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('15', '0', '', '0', null, '厉害哦~！！', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('16', '1', 'admin', '1', '标题1', 'frrrfrge', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('17', '1', 'admin', '2', '标题2', '胜多负少', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('18', '1', 'admin', '2', '标题2', '【】】', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('19', '1', 'admin', '1', '标题1', ' 那不就好你妈jhnn', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('20', '1', 'admin', '4', '15165', '犹太人同一人', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('21', '1', 'admin', '5', '5', 'xixi', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('22', '1', 'admin1', '3', '54', '嗯嗯', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('23', '1', 'admin', '2', '标题2', '豆腐干的双方各', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('24', '1', 'admin', '2', '标题2', '豆腐干的双方各', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('25', '1', 'admin', '2', '标题2', '豆腐干的双方各', '2019-02-21 ', null, null);
INSERT INTO `need_message` VALUES ('26', '1', 'admin', '15', '78575', 'dsfgsdgs ', '2019-02-24 ', null, null);

-- ----------------------------
-- Table structure for professor
-- ----------------------------
DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(2) NOT NULL,
  `honor` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `school` varchar(32) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `education` varchar(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of professor
-- ----------------------------
INSERT INTO `professor` VALUES ('1', 'Join', '11236547789', '12516351', '', 'Join@qq.com', '1', '最高荣誉', '行业', '广大华软', '个人简介', '1548846324', null, '学霸', '1');
INSERT INTO `professor` VALUES ('2', 'Mike', '13247521816', '21213erter', '', 'wewq@qq.com', '1', '最高荣誉', '行业', '广大华软', '个人简介', '1548846324', null, '学渣发鬼地方个', '1');
INSERT INTO `professor` VALUES ('3', 'sadsa', '11236547789', '4444', '的的范德萨', 'sdf@qq.com', '1', '最高荣誉', '行业', '广大华软', '个人简介', '1548846324', null, '学霸ert', '1');
INSERT INTO `professor` VALUES ('4', 'wr', '11236547789', 'wr', '', 'qwerqwr@qq.com', '1', '最高荣誉', '行业', '广大华软', '个人简介', '1548846324', null, '学霸dsfsdf', '1');
INSERT INTO `professor` VALUES ('5', '青蛙二翁人', '11236547789', '123456', '', 'wqeqwe@qq.com', '1', '最高荣誉', '石油化工', '广大华软', '个人简介', '1548846324', null, '学霸', '1');
INSERT INTO `professor` VALUES ('6', '3242sfsfs', '', '123456fdgdf', '', 'qeqwew@qq.com', '1', '最高荣誉', '', '广大华软', '个人简介', '1548846324', null, '学霸', '1');
INSERT INTO `professor` VALUES ('7', '33333', '', '123456', '', 'adminwerew@qq.com', '1', '', '', '广大华软', '个人简介', '1548846324', null, '学霸', '1');
INSERT INTO `professor` VALUES ('11', 'feifei', '', '123456', '', 'feifei@qq.com', '1', '', '行业', 'feifeischool', '个人简介', '0', null, null, null);
INSERT INTO `professor` VALUES ('12', 'ertwe', '', 'erter', '', 'qwerd@qq.com', '1', '', '行业', '学校', '个人简介', '0', null, null, null);
INSERT INTO `professor` VALUES ('13', 'feifeifei', '', 'asdfas', '', 'asfd@qq.vom', '1', '', '行业', '学校', '个人简介', null, null, '', null);
INSERT INTO `professor` VALUES ('14', '胜多负少的', '', 'dsfsf', '', 'asfa@qq.com', '1', '', '行业', 'school', '个人简介', null, null, 'education', null);
INSERT INTO `professor` VALUES ('15', '5450', '', '', '', '', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('16', '44444', '', '', '', '', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('17', 'xxxx', '', 'sfsf', '', 'wsfsdfs@qq.com', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('18', 'ccccccc', '', 'admin', '', 'adminxvsxdvd@qq.com', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('19', 'cccccc', '', 'sdd', '', '', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('20', 'dfgdfg', '', '', '', '', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('21', 'sfasdf', '', '123123', '', 'asfasf@qq.com', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('22', '452424', '', '', '', '', '1', '', '', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('23', '4274', '', '', '', '', '1', '', '石油化工', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('24', '', '', '', '谁谁谁', '', '1', '', '组织机构', '', '', null, null, '', null);
INSERT INTO `professor` VALUES ('25', '558555', '', '', '', '', '1', '', '', '', '', null, null, '', null);

-- ----------------------------
-- Table structure for professor_message
-- ----------------------------
DROP TABLE IF EXISTS `professor_message`;
CREATE TABLE `professor_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `professor_name` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `createtime` varchar(11) DEFAULT NULL,
  `delete_time` varchar(11) DEFAULT NULL,
  `is_delete` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of professor_message
-- ----------------------------
INSERT INTO `professor_message` VALUES ('1', '1', 'admin', '3', 'sadsa', '感受到根深蒂固', '2019-02-25 ', null, '1');
INSERT INTO `professor_message` VALUES ('2', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('3', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('4', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('5', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('6', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('7', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('8', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('9', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('10', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('11', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('12', '2', '', '0', null, '', null, null, null);
INSERT INTO `professor_message` VALUES ('13', '0', '', '0', null, '', null, null, null);

-- ----------------------------
-- Table structure for professor_vip
-- ----------------------------
DROP TABLE IF EXISTS `professor_vip`;
CREATE TABLE `professor_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `professor_id` int(11) DEFAULT NULL,
  `professor_name` varchar(255) DEFAULT NULL,
  `vip` int(2) DEFAULT NULL,
  `start_time` varchar(11) DEFAULT NULL,
  `time` varchar(11) DEFAULT NULL,
  `end_time` varchar(11) DEFAULT NULL,
  `delete_time` varchar(11) DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of professor_vip
-- ----------------------------
INSERT INTO `professor_vip` VALUES ('1', '1', '教授', '1', '开始', '6个月', '结束', null, '1');
INSERT INTO `professor_vip` VALUES ('2', '2', '教授', '1', '开始', '6个月', '结束', null, '1');
INSERT INTO `professor_vip` VALUES ('3', '3', '教授', '1', '开始', '6个月', '结束', null, '1');
INSERT INTO `professor_vip` VALUES ('4', '4', '教授', '1', '开始', '6个月', '结束', null, null);
INSERT INTO `professor_vip` VALUES ('5', '5', '教授', '1', '开始', '6个月', '结束', null, null);
INSERT INTO `professor_vip` VALUES ('6', '6', '教授', '1', '开始', '6个月', '结束', null, null);
INSERT INTO `professor_vip` VALUES ('7', '7', '教授', '1', '开始', '6个月', '结束', null, null);
INSERT INTO `professor_vip` VALUES ('8', '8', '教授', '1', '开始', '6个月', '结束', null, null);

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `level` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('1', 'name1', '12312112', 'sadfsa', '132134154', '初级洗', '11111', null, '1544876452', null, '1');
INSERT INTO `result` VALUES ('2', 'name2', '1321445v', 'sfsfs', '12312465', '高级', '110101', null, '1544876452', null, '1');
INSERT INTO `result` VALUES ('5', '45', '44555', '', '', '中级', '0', null, null, null, null);
INSERT INTO `result` VALUES ('6', '', '515', '', '', '中级', '0', null, null, null, null);
INSERT INTO `result` VALUES ('7', '456456', '', '', '', '中级', '0', null, '1544876463', null, '1');
INSERT INTO `result` VALUES ('8', '', '', '', '54', '中级', '0', null, '1544876452', null, '1');
INSERT INTO `result` VALUES ('9', '水电费水电费', '', '4', '', '中级', '0', null, '1544876452', null, '1');
INSERT INTO `result` VALUES ('10', '4', '', '', '', '中级', '0', null, '1544876452', null, '1');
INSERT INTO `result` VALUES ('11', '44546', '', '', '', '高级', '0', null, null, null, null);
INSERT INTO `result` VALUES ('12', '456465', '', 'sdfsdf', '', '高级', '0', null, '1548846357', null, '1');
INSERT INTO `result` VALUES ('13', '666666', '', '', '', '高级', '0', null, '1544876452', null, '1');
INSERT INTO `result` VALUES ('14', '', '', 'admin', '', '高级', '0', null, null, null, null);
INSERT INTO `result` VALUES ('15', '', '', 'adminddd', '', '高级', '0', null, null, null, null);
INSERT INTO `result` VALUES ('16', '', '', 'admin', '', '高级', '0', null, null, null, null);
INSERT INTO `result` VALUES ('17', '454544', '', 'adminzzzz', '11111111111', '初级', '20000', null, null, null, null);
INSERT INTO `result` VALUES ('18', 'asdasdad', '水电费感受到公司的公司的故事大概十大歌手大概', 'adminxxx', '12123132121', '初级', '1000', null, null, null, null);
INSERT INTO `result` VALUES ('19', '啛啛喳喳错', '', 'admin', '', '初级', '1000', null, null, null, null);
INSERT INTO `result` VALUES ('20', 'xcvxvxcvxc', '', 'wr(教授)', 'sdfsdf', '初级', '1000', null, null, null, null);
INSERT INTO `result` VALUES ('21', 'ghf', 'dfgdf', 'admin', 'dfgs', '初级', '1000', null, null, null, null);
INSERT INTO `result` VALUES ('22', '你好', 'sfsf s', 'admin', '78768', '高级', '20000', null, null, null, null);
INSERT INTO `result` VALUES ('23', '', '', 'admin', '', '初级', '10000', null, null, null, null);
INSERT INTO `result` VALUES ('24', '][', '', 'wr(教授)', '', '初级', '1000', null, null, null, null);

-- ----------------------------
-- Table structure for result_message
-- ----------------------------
DROP TABLE IF EXISTS `result_message`;
CREATE TABLE `result_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `result_id` int(11) NOT NULL,
  `result_name` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `createtime` varchar(11) DEFAULT NULL,
  `delete_time` varchar(11) DEFAULT NULL,
  `is_delete` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result_message
-- ----------------------------
INSERT INTO `result_message` VALUES ('2', '0', '12132', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('4', '0', '121354', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('5', '0', '111', '0', null, '', null, null, '1');
INSERT INTO `result_message` VALUES ('6', '1132', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('7', '12', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('8', '2132', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('9', '545', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('10', '54564', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('11', '77', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('12', '88', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('13', '77', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('14', '899', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('15', '0', '', '0', null, '', null, null, null);
INSERT INTO `result_message` VALUES ('16', '1', 'admin', '1', 'name1', '擦擦擦', '2019-02-21 ', null, null);
INSERT INTO `result_message` VALUES ('17', '1', 'admin', '2', 'name2', '你好啊', '2019-02-21 ', null, null);
INSERT INTO `result_message` VALUES ('18', '4', 'wr', '21', 'ghf', 'ertyue ', '2019-02-21 ', null, null);
INSERT INTO `result_message` VALUES ('19', '1', 'admin', '24', '][', 'dfgdfg ', '2019-02-24 ', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(2) NOT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `is_delete` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '4534534供应环节', 'admin@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('2', 'peterxvcxc玩', 'e10adc3949ba59abbe56e057f20f883e', '', 'peter@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('4', 'root', '63a9f0ea7bb98050796b649e85481845', '', 'root@qq.com', '0', null, '1550724703', '1');
INSERT INTO `user` VALUES ('5', '111dxfvdxf', '111111', '', '111@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('6', '22222', '1221323213213213', '', '222xdvxd@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('3', 'user', 'user', '', 'user@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('7', '333', '333', '', '333@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('8', 'zxvzxcv', '123123', '', 'qwer@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('9', '1122sss', '42425', '', 'qwesad@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('10', '4424', '111111', '', 'qqqqqq@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('11', 'sdfsdf', '1213213', '', 'weq@sdf.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('12', '123132', '1111', '', '45456@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('13', '41145', '151', '', '1515', '0', null, null, null);
INSERT INTO `user` VALUES ('15', 'werwe', '123456', '', '234@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('14', 'asdfaf', '123123', '', '112123@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('16', 'Ada', '1231231', '', 'Ada@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('17', 'adasdsd', '12132', '', '121@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('18', 'wrwrw', '233223dd', '', 'ewsrfas@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('19', '玩儿', '123456', '', 'adminddf@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('20', 'sadas', '123456', '', 'sdffsd@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('23', '嘻嘻嘻嘻嘻', '666666', '', 'asfd@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('22', '嘻嘻', '111111', '', '', '0', null, null, null);
INSERT INTO `user` VALUES ('21', '55555', '', '', '', '0', null, null, null);
INSERT INTO `user` VALUES ('24', '12.20', '123456', '', 'adminasdf@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('25', 'xdfds', 'sfsfsd', '', '2123@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('26', 'xczcz', '123456zc', '', 'dscff@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('27', 'sdf ', '123456', '', 'admin@qq.xxx', '0', null, null, null);
INSERT INTO `user` VALUES ('28', 'asdfasfs', 'm,.', '', 'admin@qq.xxx', '0', null, null, '1');
INSERT INTO `user` VALUES ('29', 'ccc', '12121', '', 'sdfs@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('30', 'cxccc', '123456', '', 'adminsed@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('31', 'dsf ', '123456', '', 'adminsdf@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('32', 'sss', '123456sfs', '', 'adminsf@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('33', '的若干', 'ffff', '', 'dgdgf@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('34', 'zxvzxcv', 'dfgdfg', '', 'dfdddd@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('35', 'ddddddddd', '123456', '', 'adminddd@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('36', 'zzxzxzxzxzxz', '123456', '', 'zxzxzxzx@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('37', 'cvcvv', '123456', '', 'admin@qq.comsss', '0', null, null, null);
INSERT INTO `user` VALUES ('38', 'zzzz', 'zzzz', '', 'zzzz@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('39', 'zzzzzz', '1121321', '', '213213@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('40', 'aaaaa', 'ccccc', '', 'rootaasd@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('41', 'nihaoma', '111111', '', 'nihaoma@qq', '0', null, null, '1');
INSERT INTO `user` VALUES ('42', 'sdgdsg ', '5545544', '', 'asdfas@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('43', 'sfsfs', 'asdfsaf', '', 'fsdfs@qq.com', '0', null, null, '1');
INSERT INTO `user` VALUES ('44', 'nihaoma111', '111111', '', 'nihaomamm@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('45', '2222222', '212121212', '', '212121@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('46', '44444', 'nihiahf', '', '465465@qq.com', '0', null, null, null);
INSERT INTO `user` VALUES ('47', '', '', '999', '', '0', null, null, null);
INSERT INTO `user` VALUES ('48', '777', '', 'safdsf ', '', '0', null, null, null);

-- ----------------------------
-- Table structure for user_vip
-- ----------------------------
DROP TABLE IF EXISTS `user_vip`;
CREATE TABLE `user_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `vip` int(2) DEFAULT NULL,
  `start_time` varchar(11) DEFAULT NULL,
  `time` varchar(11) DEFAULT NULL,
  `end_time` varchar(11) DEFAULT NULL,
  `delete_time` varchar(11) DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_vip
-- ----------------------------
INSERT INTO `user_vip` VALUES ('1', '1', '姓名', '1', '开始时间', '1个月', '结束时间', null, null);
INSERT INTO `user_vip` VALUES ('2', '2', '姓名', '1', '开始时间', '1个月', '结束时间', '1551084481', '1');
INSERT INTO `user_vip` VALUES ('3', '3', '姓名', '1', '开始时间', '1个月', '结束时间', null, null);
INSERT INTO `user_vip` VALUES ('4', '4', '姓名', '1', '开始时间', '1个月', '结束时间', null, '1');
INSERT INTO `user_vip` VALUES ('5', '5', '姓名', '1', '开始时间', '1个月', '结束时间', null, '1');
INSERT INTO `user_vip` VALUES ('6', '6', '姓名', '1', '开始时间', '1个月', '结束时间', null, null);
INSERT INTO `user_vip` VALUES ('7', '7', '姓名', '1', '开始时间', '1个月', '结束时间', null, null);
INSERT INTO `user_vip` VALUES ('8', null, 'admin', '1', '2019-02-25 ', '12个月', null, null, null);
INSERT INTO `user_vip` VALUES ('9', '1', 'admin', '1', '2019-02-25 ', '3个月', null, null, null);
INSERT INTO `user_vip` VALUES ('10', '1', 'admin', '1', '2019-02-25 ', '12个月', null, null, null);
INSERT INTO `user_vip` VALUES ('11', '1', 'admin', '1', '2019-02-25 ', '6个月', null, null, null);
INSERT INTO `user_vip` VALUES ('12', '1', 'admin', '1', '2019-02-25 ', '3个月', null, null, null);
INSERT INTO `user_vip` VALUES ('13', '1', 'admin', '1', '2019-02-25 ', '1个月', null, null, null);
INSERT INTO `user_vip` VALUES ('14', '3', 'user', '1', '2019-02-25 ', '3个月', null, null, null);
INSERT INTO `user_vip` VALUES ('15', '3', 'user', '1', '2019-02-25 ', '3个月', null, null, null);
INSERT INTO `user_vip` VALUES ('16', '3', 'user', '1', '2019-02-25 ', '3个月', null, null, null);
INSERT INTO `user_vip` VALUES ('17', '3', 'user', '1', '2019-02-25 ', '6个月', null, null, null);
INSERT INTO `user_vip` VALUES ('18', '3', 'user', '1', '2019-02-25 ', '1个月', null, null, null);
INSERT INTO `user_vip` VALUES ('19', '3', 'user', '1', '2019-02-25 ', '12个月', null, null, null);
INSERT INTO `user_vip` VALUES ('20', '3', 'user', '1', '2019-02-25 ', '6个月', null, null, null);
INSERT INTO `user_vip` VALUES ('21', '3', 'user', '1', '2019-02-25 ', '6个月', null, null, null);
