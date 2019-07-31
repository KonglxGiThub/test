/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : zpwz

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2016-04-24 11:07:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(8) NOT NULL auto_increment,
  `account` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(20) default NULL,
  `name_all` varchar(50) default NULL,
  `property` varchar(20) default NULL,
  `industry` varchar(50) default NULL,
  `size` varchar(20) default NULL,
  `profile` varchar(1024) default NULL,
  `linkman` varchar(20) default NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `web` varchar(30) default NULL,
  `addr` varchar(50) default NULL,
  `logo` varchar(50) default NULL,
  `state` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'user1', '1', '北京红澳卓越', '北京红澳卓越投资管理有限公司', '性质', '1900', '1000', '现有员工近 100多人， 拥有和整合各种运输，先进的物流设备，仓库、分拨场地 并在全国 32个省、市、自治区近 32个大中城市建立了合作网络公司，与国内外 多家企业建立了长期的合作关系。 凭着稳定、可　　靠、安全的运营网络、科学的资源整合、先进的管理技术，可为各类企业提供全方位的物流服务，我们将一如既往地坚持“以客为本、服务领先” 的经营理念，为客户提供门对门、仓对仓的一站式服务。', '哒哒哒', '18854845545', '1', 'www.com.cn', '大连高新园区1111号', '1', '1');
INSERT INTO `company` VALUES ('2', 'user2', '1', '大连大地之窗', '大连大地之窗广告有限公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('3', 'user3', '1', '中钢集团吉林机电', '中钢集团吉林机电设备有限公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('4', 'user4', '1', '大连宇龙', '大连宇龙仪器仪表有限公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('5', 'user5', '1', '大连科讯创鑫科技', '大连科讯创鑫科技有限公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('6', 'user6', '1', '大连平衡影楼', '大连平衡影楼工作室', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('7', 'user7', '1', '大连万岩通', '大连万岩通软件有限公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('8', 'user8', '1', '大连百思特', '大连百思特电信科技发展公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('9', 'user9', '1', '大连斯科威尔', '大连斯科威尔体育文化有限公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `company` VALUES ('10', '1', '1', '大连大汉方圆', '大连大汉方圆文化发展中心', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('11', '1', '1', '亚太恒通', '亚太恒通大连科技有限公司', '1', '1400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('12', '1', '1', '太平洋人寿', '太平洋人寿大连分公司', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('13', '1', '1', '大连强鑫', '大连强鑫财富投资管理有限公司', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('14', '1', '1', '大连创亿嘉信', '大连创亿嘉信科技发展有限公司', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('15', '1', '1', '大连易拓', '大连易拓财富投资管理有限公司', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('16', '1', '1', '大连4U', '大连4U财富管理中心', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('17', '1', '1', '大连今联', '大连今联投资有限公司', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('18', '1', '1', '大连平衡资产', '大连平衡资产', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('19', '1', '1', '大连腾铭', '大连腾铭律师事务所', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('20', '1', '1', '大连金鸿德', '大连金鸿德投资有限责任公司', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('21', '1', '1', '大连京宝融', '大连京宝融投资担保有限公司', '1', '2400', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('22', '1', '1', '大连韵达', '大连韵达物流有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('23', '1', '1', '大连财智亿达', '大连财智亿达理财顾问有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('24', '1', '1', '大连赢商', '大连赢商房地产经纪有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('25', '1', '1', '大连凯达金科', '大连凯达金科装饰有限责任公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('26', '1', '1', '大连链家', '大连链家房地产经纪有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('27', '1', '1', '大连金源日盛', '大连金源日盛工程技术有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('28', '1', '1', '麦田房产', '麦田房产', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('29', '1', '1', '大连安艺达', '大连安艺达保安服务有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('30', '1', '1', '中物联物业', '中物联物业集团有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('31', '1', '1', '上海悦宝', '上海悦宝环保科技有限公司', '1', '4500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('32', '1', '1', '大连亚泰世纪', '大连亚泰世纪文化交流中心', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('33', '1', '1', '大连宏茂', '大连宏茂国际影视文化交流中心', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('34', '1', '1', '大连盈润振华', '大连盈润振华文化传媒有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('35', '1', '1', '大连兼程', '大连兼程信息技术有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('36', '1', '1', '大连升星', '大连升星文化传媒有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('37', '1', '1', '大连旺旅', '大连旺旅展览展示有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('38', '1', '1', '世信朗普', '世信朗普国际展览(大连)有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('39', '1', '1', '大连东清特达', '大连东清特达文化传媒有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('40', '1', '1', '大连世博威', '大连世博威国际展览有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('41', '1', '1', '大连德远', '大连德远联合广告有限公司', '1', '3900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('42', '1', '1', '大连天易恒辉', '大连天易恒辉商贸有限公司', '1', '3500', '1', '现有员工近 100多人， 拥有和整合各种运输，先进的物流设备，仓库、分拨场地 并在全国 32个省、市、自治区近 32个大中城市建立了合作网络公司，与国内外 多家企业建立了长期的合作关系。 凭着稳定、可　　靠、安全的运营网络、科学的资源整合、先进的管理技术，可为各类企业提供全方位的物流服务，我们将一如既往地坚持“以客为本、服务领先” 的经营理念，为客户提供门对门、仓对仓的一站式服务。', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('43', '1', '1', '大连嘉德喜', '大连嘉德喜商贸中心', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('44', '1', '1', '恒旺兴达（大连）', '恒旺兴达（大连）国际贸易有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('45', '1', '1', '北岛北方科贸（大连）', '北岛北方科贸（大连）有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('46', '1', '1', '广东趣尚网', '广东趣尚网商贸有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('47', '1', '1', '大连丁丁', '大连丁丁投资有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('48', '1', '1', '大连建迅网天', '大连建迅网天科技有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('49', '1', '1', '大连宏方誉达', '大连宏方誉达商贸有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('50', '1', '1', '大连零味道', '大连零味道商贸有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('51', '1', '1', '大连腾飞盛世', '大连腾飞盛世环保科技有限公司', '1', '3500', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('52', '1', '1', '大连三川纵横', '大连三川纵横科技有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('53', '1', '1', '大连国立信', '大连国立信科技术有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('54', '1', '1', '大连普安', '大连普安科技有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('55', '1', '1', '大连万车达', '大连万车达汽车俱乐部有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('56', '1', '1', '大连禾信', '大连禾信科学仪器有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('57', '1', '1', '中国包装', '中国包装总公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('58', '1', '1', '大连华科拓普', '大连华科拓普电子仪器有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('59', '1', '1', '大连尤萨', '大连尤萨洗涤设备有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('60', '1', '1', '大连藤田', '大连藤田科技有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('61', '1', '1', '大连欣益鸿', '大连欣益鸿科技有限公司', '1', '2700', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('62', '1', '1', '大连天谱创辉', '大连天谱创辉企业管理咨询有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('63', '1', '1', '大连世纪森宝', '大连世纪森宝商贸有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('64', '1', '1', '大连驭时德隆', '大连驭时德隆科技有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('65', '1', '1', '大连中建', '大连中建前沿信息咨询中心', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('66', '1', '1', '大连华宇聚智', '大连华宇聚智企业管理有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('67', '1', '1', '大连安济', '大连安济律师事务所', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('68', '1', '1', '大连巨源', '大连巨源信息咨询有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('69', '1', '1', '大连环创', '大连环创企业管理顾问有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('70', '1', '1', '深圳市新阳光', '深圳市新阳光教育发展有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('71', '1', '1', '大连金蓝', '大连金蓝人力资源服务有限公司', '1', '5100', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('72', '1', '1', '邦尔泰生物科技', '邦尔泰生物科技（大连）有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('73', '1', '1', '大连远程心界', '大连远程心界医院管理有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('74', '1', '1', '大连世恒尔力', '大连世恒尔力科贸有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('75', '1', '1', '大连华益精点', '大连华益精点生物技术有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('76', '1', '1', '大连盛世堂', '大连盛世堂生物科技有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('77', '1', '1', '大连宝润佳', '大连宝润佳科技有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('78', '1', '1', '大连珺邦友成', '大连珺邦友成经贸有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('79', '1', '1', '大连安信立洋', '大连安信立洋商贸有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('80', '1', '1', '大连全民康', '大连全民康科技发展有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('81', '1', '1', '大连健坤禾润', '大连健坤禾润科技有限公司', '1', '3600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('82', '1', '1', '大连百润伯龙', '大连百润伯龙科技有限公司', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('83', '1', '1', '大连康洁源', '大连康洁源环保科技有限公司', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('84', '1', '1', '大连金瑞冉', '大连金瑞冉形象设计工作室', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('85', '1', '1', '大连宠包汇', '大连宠包汇商贸有限公司', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('86', '1', '1', '大连欧思贝', '大连欧思贝科技有限公司', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('87', '1', '1', '大连中科量子', '大连中科量子医学研究院', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('88', '1', '1', '小微律政', '小微律政(大连)企业管理有限公司', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('89', '1', '1', '大连大易大醒', '大连大易大醒餐饮有限公司', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('90', '1', '1', '大连华娱星城公司', '大连华娱星城文化传媒有限公司', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('91', '1', '1', '大连万年青', '大连万年青宾馆', '1', '5600', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('92', '1', '1', '大连凯力正信公司', '大连凯力正信科技发展有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('93', '1', '1', '大连九运初', '大连九运初科技有限责任公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('94', '1', '1', '大连国禄', '大连国禄中央空调设备有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('95', '1', '1', '华电峰源', '华电峰源（大连）贸易有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('96', '1', '1', '斯诺德科技', '斯诺德科技（大连）有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('97', '1', '1', '大连东方企联', '大连东方企联环保技术服务中心', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('98', '1', '1', '中能国电集团', '中能国电集团新能源有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('99', '1', '1', '大连中鼎品道', '大连中鼎品道集调贸易有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('100', '1', '1', '中石国际', '中石国际贸易有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('101', '1', '1', '大连市大地开源', '大连市大地开源地质工程有限公司', '1', '2900', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('102', '1', '1', '池州九华山', '池州九华山慈善基金会', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('103', '1', '1', '大连泽博恒业', '大连泽博恒业电子科技有限公司', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('104', '1', '1', '大连鑫融宏泰', '大连鑫融宏泰投资管理有限公司', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('105', '1', '1', '大连三江致远', '大连三江致远商业管理有限公司', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('106', '1', '1', '大连国协九九天', '大连国协九九天科技发展有限公司', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('107', '1', '1', '大连安达禾欣', '大连安达禾欣科技发展有限公司', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('108', '1', '1', '大连乾坤恒大', '大连乾坤恒大健康扶贫基金会', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('109', '1', '1', '大连东方巨龙', '大连东方巨龙高新技术交流中心', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('110', '1', '1', '天路苑', '天路苑酒店', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('111', '1', '1', '斯麦恩科技', '斯麦恩科技（大连）有限公司', '1', '6800', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('112', '1', '1', '北京天易恒辉', '北京天易恒辉商贸有限公司 ', '1', '5000', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `company` VALUES ('113', '1', '1', '北京恒源智兴', '北京恒源智兴文化交流中心', '1', '5000', '1', '1', '1', '1', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for `cs`
-- ----------------------------
DROP TABLE IF EXISTS `cs`;
CREATE TABLE `cs` (
  `id` int(8) NOT NULL auto_increment,
  `sid` int(8) default NULL,
  `cid` int(8) default NULL,
  `time` varchar(20) default NULL,
  `state` int(2) default NULL,
  `type` int(2) default NULL,
  `jid` varchar(8) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs
-- ----------------------------
INSERT INTO `cs` VALUES ('3', '1', '1', '2016-04-25', '0', '1', '1');
INSERT INTO `cs` VALUES ('4', '1', '1', '2016-04-25', '0', '1', '3');
INSERT INTO `cs` VALUES ('5', '1', '1', '2016-04-25', '0', '1', '59');

-- ----------------------------
-- Table structure for `guide`
-- ----------------------------
DROP TABLE IF EXISTS `guide`;
CREATE TABLE `guide` (
  `id` int(8) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `source` varchar(50) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide
-- ----------------------------

-- ----------------------------
-- Table structure for `job`
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(8) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `cName` varchar(50) NOT NULL,
  `money` varchar(20) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `welfare` varchar(50) NOT NULL,
  `education` varchar(20) NOT NULL,
  `background` varchar(1024) NOT NULL,
  `language` varchar(50) NOT NULL,
  `num` int(8) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `state` int(2) NOT NULL,
  `cid` int(8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '郑重声明：我公司直接用人，绝不收取员工押金，服装、报名一切费用。\r\n\r\n{{招聘岗位}}：\r\n\r\n一、《长途跟单员》3名 :\r\n(1)适用期工资6500元 一个月转正工资7500员+ 奖金 + 补助 + 保险,包食宿\r\n(2)工作内容:主要负责押运珠宝，名烟名表贵重物品，看管货物,以免被丢、上下车货物清点记单,不需要装卸车。\r\n(3)工作时间:出车3-7天左右,回来休息3天。出车有补助。\r\n(4)招聘要求:男性,18至48岁,能吃苦耐劳,身体健康。\r\n\r\n+++++++++++++++++++++++++++++++++++++++++++++++++\r\n\r\n二、《市内送货员》1名 :\r\n(1)适用期底4500一个月转正底薪5500 + 奖金 + 补助 +保险月入8000元以上满一年有带薪年假十天每周单休息 。\r\n(2)工作时间早9点——晚17点:有加班补助20一小时计算\r\n(3)工作内容:跟车往市内各区送货, 每个车上有一名跟单员和一名司机。\r\n(4)招聘要求:,48周岁以下,身高165cm以上,能吃苦耐劳。\r\n\r\n+++++++++++++++++++++++++++++++++++++++++++++++++\r\n\r\n四、福利待遇：\r\n1.公司免费提供住宿，宿舍6-8人/间，生活设施一应俱全\r\n2.员工享有国家法定假日(每年11天)、工伤假、婚假、产假、带薪年休假等假期\r\n3.公司提供员工就餐，一日三餐均为自助餐形式（早餐供应：各类面包、蛋类、粥类；中餐和晚餐每位员工可选择四菜一汤（2荤2素）。\r\n4.为保障员工切身利益，一经录用即为员工缴纳三险一金（养老、医疗、失业、生育、工伤保险、住房公积金），员工离职时可转出或退保。\r\n\r\n韩经理：13611343740', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('2', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('3', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('4', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('5', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('6', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('7', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('8', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('10', '销售经理', '北京红澳卓越投资管理有限公司', '5000-8000元', '北京市-房山区', '2015-10-07', '1', '1', '1', '1', '1', '有经验者优先，男女不限，有较强的责任心和管理能力。', '11111111111', '1', '1');
INSERT INTO `job` VALUES ('22', '直聘普工跟车送货员', '北京天易恒辉商贸有限公司 ', '7000-8000元', '北京市', '2015-10-14', '1', '不限', '不限', '1', '500', '1', '11111111111', '1', '112');
INSERT INTO `job` VALUES ('23', '北京专线送货员/普工', '北京天易恒辉商贸有限公司', '7000-8000元', '北京市', '2015-10-14', '1', '不限', '不限', '1', '500', '1', '11111111111', '1', '112');
INSERT INTO `job` VALUES ('24', '北京专线送货员普工', '北京天易恒辉商贸有限公司 ', '7000-8000元', '北京市-丰台区', '2015-10-14', '1', '不限', '不响', '1', '500', '1', '11111111111', '1', '112');
INSERT INTO `job` VALUES ('25', '普工送货员', '北京天易恒辉商贸有限公司 ', '7000-8000元', '北京市-丰台区', '2015-10-14', '1', '不限', '不限', '1', '500', '1', '11111111111', '1', '112');
INSERT INTO `job` VALUES ('26', '化妆助理', '北京恒源智兴文化交流中心', '4000-6000元', '北京市', '2015-10-14', '1', '不限', '不限', '1', '400', '1', '11111111111', '1', '113');
INSERT INTO `job` VALUES ('27', '灯光助理', '北京恒源智兴文化交流中心', '4000-6000元', '北京市', '2015-10-14', '1', '不限', '不限', '1', '400', '1', '11111111111', '1', '113');
INSERT INTO `job` VALUES ('28', '兼职代驾司机', '小微律政（北京）企业管理有限公司', '3000-5000元', '北京市-朝阳区', '2015-10-14', '1', '不限', '不限', '1', '100', '1', '11111111111', '1', '88');
INSERT INTO `job` VALUES ('29', '代价司机', '小微律政（北京）企业管理有限公司 ', '1', '北京市', '2015-10-14', '1', '不限', '不限', '1', '100', '1', '11111111111', '1', '88');
INSERT INTO `job` VALUES ('30', '商务代表', '北京汇美佳艺建筑装饰工程有限公司', '底薪:3000-5000元+提成', '北京市-丰台区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('31', '网络销售代表', '北京瑞创丰顺投资有限公司', '底薪:3000-5000元+提成', '北京市', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('32', '房地产销售业务员', '北京我爱我家房地产经纪有限公司', '8000-12000元', '北京市', '2015-10-14', '1', '高中', '不限', '1', '600', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('33', '房地产销售精英', '北京我爱我家房地产经纪有限公司', '8000-12000元', '北京市', '2015-10-14', '1', '高中', '不限', '1', '600', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('34', '客户服务专员', '北京4U财富管理中心', '2000-3000元', '北京市-海淀区', '2015-10-14', '1', '不限', '不限', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('35', '人事专员', '北京4U财富管理中心 ', '2000-3000元', '北京市-海淀区', '2015-10-14', '1', '专科', '不限', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('36', '咨询课程顾问', '北京棣源管理咨询有限公司', '1', '北京市-朝阳区', '2015-10-14', '1', '专科', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('37', '售后服务专员', '太平洋人寿北京分公司 ', '底薪:3000-5000元+提成', '北京市-朝阳区', '2015-10-14', '1', '专科', '一年以上', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('38', '售后区域主管', '太平洋人寿北京分公司', '1', '北京市-朝阳区', '2015-10-14', '1', '专科', '三年以上', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('39', '水吧服务员', '北京空港驰锐上网服务有限公司 ', '1', '北京市-朝阳区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('40', '保洁员', '北京空港驰锐上网服务有限公司 ', '2500-3000元', '北京市-朝阳区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('41', '销售代表', '北京腾飞盛世环保科技有限公司 ', '底薪:3000-5000元+提成', '北京市-朝阳区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('42', '市场拓展员', '北京腾飞盛世环保科技有限公司', '底薪:3000-5000元+提成', '北京市-朝阳区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('43', '电话销售代表', '北京世纪信达展览展示有限责任公司 ', '底薪:2000-3000元+提成', '北京市-朝阳区', '2015-10-14', '1', '高中', '一年以上', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('44', '接听客服', '北京二六三网络科技有限公司 ', '2000-4000元', '北京市-昌平区', '2015-10-14', '1', '高中', '不限', '1', '500', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('45', '产品咨询人员', '北京二六三网络科技有限公司', '底薪:2500-3000元+提成', '北京市-昌平区', '2015-10-14', '1', '高中', '不限', '1', '500', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('46', '总经理助理', '北京时创影通科贸有限公司', '2500-4000元', '北京市-丰台区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('47', '技术支持与维护专员', '北京时创影通科贸有限公司', '3000-5000元', '北京市-丰台区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('48', '文秘', '北京文通伟业科技有限公司', '2000-3000元', '北京市', '2015-10-14', '1', '本科', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('49', '客户经理', '北京文通伟业科技有限公司', '1', '北京市', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('50', '客户经理', '北京日益盛投资管理有限公司', '底薪:3000-5000元+提成', '北京市-石景山区', '2015-10-14', '1', '不限', '不限', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('51', '人事助理', '北京日益盛投资管理有限公司 ', '3000-3000元', '北京市-石景山区', '2015-10-14', '1', '专科', '两年以上', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('52', '校长层管理人才', '北京华知学园教育科技有限公司 ', '8000-10000元', '北京市', '2015-10-14', '1', '本科', '不限', '1', '100', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('53', '高中物理教师', '北京华知学园教育科技有限公司 ', '1', '北京市-门头沟区', '2015-10-14', '1', '本科', '一年以上', '1', '100', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('54', '美容技师', '北京奥婷环燕美容化妆品有限公司', '1', '北京市-海淀区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('55', '培训师', '北京奥婷环燕美容化妆品有限公司', '1', '北京市-海淀区', '2015-10-14', '1', '不限', '不限', '1', '50', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('56', '高端营销顾问', '麦田房产', '6000-8000元', '北京市', '2015-10-14', '1', '专科', '不限', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('57', '高端涉外顾问（英语、韩语专业优先', '麦田房产', '5000-6000元', '北京市', '2015-10-14', '1', '专科', '不限', '1', '1000', '1', '11111111111', '1', '0');
INSERT INTO `job` VALUES ('59', 'java开发程序员', '北京红澳卓越投资管理有限公司', '4500左右', '大连软件园', '2015-11-25 21:39:53', '无', '本科', '不限', '2', '5', '有经验者优先，男女不限，有较强的责任心和管理能力。', '1', '1', '1');
INSERT INTO `job` VALUES ('60', '前台架构师', '北京红澳卓越投资管理有限公司', '6000', '大连', '2015-12-29 00:49:57', '五险一金', '双学位', '不限', '日语', '5', '有经验者优先，男女不限，有较强的责任心和管理能力。', '18854845545', '1', '1');

-- ----------------------------
-- Table structure for `lianjie`
-- ----------------------------
DROP TABLE IF EXISTS `lianjie`;
CREATE TABLE `lianjie` (
  `id` int(8) NOT NULL auto_increment,
  `herf` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  PRIMARY KEY  (`id`,`herf`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lianjie
-- ----------------------------
INSERT INTO `lianjie` VALUES ('1', 'http://www.zh-365.com/', '在线学习');
INSERT INTO `lianjie` VALUES ('2', 'http://www.wustudy.com/', '吾学网');
INSERT INTO `lianjie` VALUES ('3', 'http://beijing.okcis.cn/', '大连招标网');
INSERT INTO `lianjie` VALUES ('4', 'http://www.uzielts.com/', '大连雅思培训');
INSERT INTO `lianjie` VALUES ('5', 'http://yulu.quhua.com/', '经典语录');
INSERT INTO `lianjie` VALUES ('6', 'http://www.0875job.net/', '宝山地区人才网');
INSERT INTO `lianjie` VALUES ('7', 'http://headhunt.goodjobs.cn/', '合肥猎头招聘');
INSERT INTO `lianjie` VALUES ('8', 'http://www.0527rc.cn/', '宿迁人才网');
INSERT INTO `lianjie` VALUES ('9', 'http://mentougou.597.com/', '门头沟人才网');
INSERT INTO `lianjie` VALUES ('10', 'http://pinggu.597.com/', '平谷人才网');
INSERT INTO `lianjie` VALUES ('11', 'http://www.xinjin.zp300.cn/', '新津人才网');
INSERT INTO `lianjie` VALUES ('12', 'http://shenzhen.workpcb.com/', '深圳pcb人才网');
INSERT INTO `lianjie` VALUES ('13', 'http://maanshan.goodjobs.cn/', '马鞍山招聘网');
INSERT INTO `lianjie` VALUES ('14', 'http://w.aia.edu.cn/index.html', 'AIA培训');
INSERT INTO `lianjie` VALUES ('15', 'http://www.qszpw.net/', '潜山招聘网');
INSERT INTO `lianjie` VALUES ('16', 'http://hz.fenlei168.com/', '杭州分类信息');
INSERT INTO `lianjie` VALUES ('17', 'http://www.hr0668.cn/', '茂名招聘网');
INSERT INTO `lianjie` VALUES ('18', 'http://dongcheng.597.com/', '东城人才网');
INSERT INTO `lianjie` VALUES ('19', 'http://fangshan.597.com/', '房山人才网');
INSERT INTO `lianjie` VALUES ('20', 'http://miyun.597.com/', '密云人才网');
INSERT INTO `lianjie` VALUES ('21', 'http://www.hotpoll.com.cn/', '石家庄人事考试信息网');
INSERT INTO `lianjie` VALUES ('22', 'http://www.dksrcw.com/', '昆山人才网');
INSERT INTO `lianjie` VALUES ('23', 'http://www.rqzpw.com/', '任丘招聘网');
INSERT INTO `lianjie` VALUES ('24', 'http://news.dl.fang.com/', '大连房地产新闻');
INSERT INTO `lianjie` VALUES ('25', 'http://www.0543hr.com/', '滨州招聘网');
INSERT INTO `lianjie` VALUES ('26', 'http://beijing.pztuan.com/', '大连团购');
INSERT INTO `lianjie` VALUES ('27', 'http://xy.0516zpw.com/', '新沂人才网');
INSERT INTO `lianjie` VALUES ('28', 'http://xicheng.597.com/', '西城人才网');
INSERT INTO `lianjie` VALUES ('29', 'http://tongzhou.597.com/', '通州人才网');
INSERT INTO `lianjie` VALUES ('30', 'http://yanqing.597.com/', '延庆人才网');
INSERT INTO `lianjie` VALUES ('31', 'http://www.meilele.com/beijing/', '大连家具');
INSERT INTO `lianjie` VALUES ('32', 'http://www.w379.com/', '洛阳民营经济网');
INSERT INTO `lianjie` VALUES ('33', 'http://www.sdjob.com/', '山东人才网');
INSERT INTO `lianjie` VALUES ('34', 'http://news.sy.fang.com/', '沈阳房产资讯');
INSERT INTO `lianjie` VALUES ('35', 'http://www.mochateam.com/', '婚礼策划');
INSERT INTO `lianjie` VALUES ('36', 'http://www.hao123.com/?tn=90531056_s_hao_pg', '青岛本地宝');
INSERT INTO `lianjie` VALUES ('37', 'http://beijing.tuliu.com/', '大连土地流转');
INSERT INTO `lianjie` VALUES ('38', 'http://chaoyang.597.com/', '朝阳人才网');
INSERT INTO `lianjie` VALUES ('39', 'http://shunyi.597.com/', '顺义人才网');
INSERT INTO `lianjie` VALUES ('40', 'http://bjzhoubian.597.com/', '大连周边人才网');
INSERT INTO `lianjie` VALUES ('41', 'http://beijing.ganchang.cn/', '大连信息网');
INSERT INTO `lianjie` VALUES ('42', 'http://www.5918job.com/', '义乌人才网');
INSERT INTO `lianjie` VALUES ('43', 'http://jobs.zhaopin.com/zhongshan/', '中山人才网');
INSERT INTO `lianjie` VALUES ('44', 'http://www.xinxian.wang/', '新县网');
INSERT INTO `lianjie` VALUES ('45', 'http://www.xmbcw.cn/', '厦门博才网');
INSERT INTO `lianjie` VALUES ('46', 'http://www.qdjiazheng.com/', '青岛家政公司');
INSERT INTO `lianjie` VALUES ('47', 'http://www.myubbs.com/', '大学论坛大全');
INSERT INTO `lianjie` VALUES ('48', 'http://fengtai.597.com/', '丰台人才网');
INSERT INTO `lianjie` VALUES ('49', 'http://changping.597.com/', '昌平人才网');
INSERT INTO `lianjie` VALUES ('50', 'http://www.fxzpw.com/', '丰县人才网');
INSERT INTO `lianjie` VALUES ('51', 'http://yy.60.cm/', '云阳人才网');
INSERT INTO `lianjie` VALUES ('52', 'http://www.0579job.com/', '金华人才网');
INSERT INTO `lianjie` VALUES ('53', 'http://www.zljob.net/', '会展人才');
INSERT INTO `lianjie` VALUES ('54', 'http://xjh.yjbys.com/', '宣讲会');
INSERT INTO `lianjie` VALUES ('55', 'http://www.job5555.com/', '资阳招聘网');
INSERT INTO `lianjie` VALUES ('56', 'http://bj.baiye5.com/', '大连免费发布信息网');
INSERT INTO `lianjie` VALUES ('57', 'http://shijingshan.597.com/', '石景山人才网');
INSERT INTO `lianjie` VALUES ('58', 'http://daxing.597.com/', '大兴人才网');
INSERT INTO `lianjie` VALUES ('59', 'http://bj.jiaoyubao.cn/', '大连培训学校');
INSERT INTO `lianjie` VALUES ('60', 'http://zhangjiajie.fang.com/', '张家界搜房网');
INSERT INTO `lianjie` VALUES ('61', 'http://ah.jinrongren.net/', '安徽银行招聘网');
INSERT INTO `lianjie` VALUES ('62', 'http://www.ttxuexi.net/', '范文网');
INSERT INTO `lianjie` VALUES ('63', 'http://daxue.chazidian.com/', '大学网');
INSERT INTO `lianjie` VALUES ('64', 'http://www.bxycw.com/', '保险招聘');
INSERT INTO `lianjie` VALUES ('65', 'http://hengyang.ohqly.com/', '衡阳百姓网');
INSERT INTO `lianjie` VALUES ('66', 'http://haidian.597.com/', '海淀人才网');
INSERT INTO `lianjie` VALUES ('67', 'http://huairou.597.com/', '怀柔人才网');

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(8) NOT NULL auto_increment,
  `c1` varchar(50) NOT NULL,
  `c2` varchar(50) NOT NULL,
  `c3` varchar(50) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `n3` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', '12', '00', '0', '计算机硬件', '--', '--');
INSERT INTO `position` VALUES ('2', '12', '10', '0', '计算机硬件', '计算机硬件', '--');
INSERT INTO `position` VALUES ('3', '12', '11', '0', '计算机硬件', '高级硬件工程师', '--');
INSERT INTO `position` VALUES ('4', '12', '12', '0', '计算机硬件', '硬件工程师', '--');
INSERT INTO `position` VALUES ('5', '12', '13', '0', '计算机硬件', '其他', '--');
INSERT INTO `position` VALUES ('6', '13', '00', '0', '计算机软件', '--', '--');
INSERT INTO `position` VALUES ('7', '13', '10', '0', '计算机软件', '计算机软件', '--');
INSERT INTO `position` VALUES ('8', '13', '11', '0', '计算机软件', '高级软件工程师', '--');
INSERT INTO `position` VALUES ('9', '13', '12', '0', '计算机软件', '软件工程师', '--');
INSERT INTO `position` VALUES ('10', '13', '13', '0', '计算机软件', '软件UI设计师/工程师', '--');
INSERT INTO `position` VALUES ('11', '13', '14', '0', '计算机软件', '仿真应用工程师', '--');
INSERT INTO `position` VALUES ('12', '13', '15', '0', '计算机软件', 'ERP实施顾问', '--');
INSERT INTO `position` VALUES ('13', '13', '16', '0', '计算机软件', 'ERP技术开发', '--');
INSERT INTO `position` VALUES ('14', '13', '17', '0', '计算机软件', '需求工程师', '--');
INSERT INTO `position` VALUES ('15', '13', '18', '0', '计算机软件', '系统集成工程师', '--');
INSERT INTO `position` VALUES ('16', '13', '19', '0', '计算机软件', '系统分析员', '--');
INSERT INTO `position` VALUES ('17', '13', '20', '0', '计算机软件', '系统工程师', '--');
INSERT INTO `position` VALUES ('18', '13', '21', '0', '计算机软件', '系统架构设计师', '--');
INSERT INTO `position` VALUES ('19', '13', '22', '0', '计算机软件', '数据库工程师/管理员', '--');
INSERT INTO `position` VALUES ('20', '13', '23', '0', '计算机软件', '计算机辅助设计工程师', '--');
INSERT INTO `position` VALUES ('21', '13', '24', '0', '计算机软件', '其他', '--');
INSERT INTO `position` VALUES ('22', '13', '25', '0', '计算机软件', '设计总监', '--');
INSERT INTO `position` VALUES ('23', '13', '26', '0', '计算机软件', '设计经理', '--');
INSERT INTO `position` VALUES ('24', '13', '27', '0', '计算机软件', '设计主管', '--');
INSERT INTO `position` VALUES ('25', '14', '00', '0', '互联网/网游', '--', '--');
INSERT INTO `position` VALUES ('26', '14', '10', '0', '互联网/网游', '互联网/网游', '--');
INSERT INTO `position` VALUES ('27', '14', '11', '0', '互联网/网游', ' 互联网软件开发工程师', '--');
INSERT INTO `position` VALUES ('28', '14', '12', '0', '互联网/网游', '语音/视频开发工程师', '--');
INSERT INTO `position` VALUES ('29', '14', '13', '0', '互联网/网游', '多媒体/游戏开发工程师', '--');
INSERT INTO `position` VALUES ('30', '14', '14', '0', '互联网/网游', '网站营运经理/主管', '--');
INSERT INTO `position` VALUES ('31', '14', '15', '0', '互联网/网游', '网站营运专员', '--');
INSERT INTO `position` VALUES ('32', '14', '16', '0', '互联网/网游', '网络工程师', '--');
INSERT INTO `position` VALUES ('33', '14', '17', '0', '互联网/网游', 'UI设计师/顾问', '--');
INSERT INTO `position` VALUES ('34', '14', '18', '0', '互联网/网游', '网站架构设计师', '--');
INSERT INTO `position` VALUES ('35', '14', '19', '0', '互联网/网游', '网站维护工程师', '--');
INSERT INTO `position` VALUES ('36', '14', '20', '0', '互联网/网游', '系统管理员/网络管理员', '--');
INSERT INTO `position` VALUES ('37', '14', '21', '0', '互联网/网游', '网站策划', '--');
INSERT INTO `position` VALUES ('38', '14', '22', '0', '互联网/网游', '网站编辑', '--');
INSERT INTO `position` VALUES ('39', '14', '23', '0', '互联网/网游', '网页设计/制作/美工', '--');
INSERT INTO `position` VALUES ('40', '14', '24', '0', '互联网/网游', '脚本开发工程师', '--');
INSERT INTO `position` VALUES ('41', '14', '25', '0', '互联网/网游', '游戏策划师', '--');
INSERT INTO `position` VALUES ('42', '14', '26', '0', '互联网/网游', '游戏界面设计师', '--');
INSERT INTO `position` VALUES ('43', '14', '27', '0', '互联网/网游', 'Flash设计/开发', '--');
INSERT INTO `position` VALUES ('44', '14', '28', '0', '互联网/网游', '特效设计师', '--');
INSERT INTO `position` VALUES ('45', '14', '29', '0', '互联网/网游', '视觉设计师', '--');
INSERT INTO `position` VALUES ('46', '14', '30', '0', '互联网/网游', '音效设计师', '--');
INSERT INTO `position` VALUES ('47', '14', '31', '0', '互联网/网游', 'SEO搜索引擎优化', '--');
INSERT INTO `position` VALUES ('48', '14', '32', '0', '互联网/网游', '网络信息安全工程师', '--');
INSERT INTO `position` VALUES ('49', '14', '33', '0', '互联网/网游', '智能大厦/综合布线', '--');
INSERT INTO `position` VALUES ('50', '14', '34', '0', '互联网/网游', '其他', '--');
INSERT INTO `position` VALUES ('51', '15', '00', '0', 'IT-管理', '--', '--');
INSERT INTO `position` VALUES ('52', '15', '10', '0', 'IT-管理', 'IT-管理', '--');
INSERT INTO `position` VALUES ('53', '15', '11', '0', 'IT-管理', '首席技术执行官CTO/首席信息官CIO', '--');
INSERT INTO `position` VALUES ('54', '15', '12', '0', 'IT-管理', '技术总监/经理', '--');
INSERT INTO `position` VALUES ('55', '15', '13', '0', 'IT-管理', '信息技术经理/主管', '--');
INSERT INTO `position` VALUES ('56', '15', '14', '0', 'IT-管理', '信息技术专员', '--');
INSERT INTO `position` VALUES ('57', '15', '15', '0', 'IT-管理', '项目总监', '--');
INSERT INTO `position` VALUES ('58', '15', '16', '0', 'IT-管理', '项目经理', '--');
INSERT INTO `position` VALUES ('59', '15', '17', '0', 'IT-管理', '项目主管', '--');
INSERT INTO `position` VALUES ('60', '15', '18', '0', 'IT-管理', '项目执行/协调人员', '--');
INSERT INTO `position` VALUES ('61', '15', '19', '0', 'IT-管理', '其他', '--');
INSERT INTO `position` VALUES ('62', '16', '00', '0', 'IT-品管、技术支持及其它', '--', '--');
INSERT INTO `position` VALUES ('63', '16', '10', '0', 'IT-品管、技术支持及其它', 'IT-品管、技术支持及其它', '--');
INSERT INTO `position` VALUES ('64', '16', '11', '0', 'IT-品管、技术支持及其它', '技术支持/维护经理', '--');
INSERT INTO `position` VALUES ('65', '16', '12', '0', 'IT-品管、技术支持及其它', '技术支持/维护工程师', '--');
INSERT INTO `position` VALUES ('66', '16', '13', '0', 'IT-品管、技术支持及其它', 'Helpdesk 技术支持', '--');
INSERT INTO `position` VALUES ('67', '16', '14', '0', 'IT-品管、技术支持及其它', '计量工程师', '--');
INSERT INTO `position` VALUES ('68', '16', '15', '0', 'IT-品管、技术支持及其它', '标准化工程师', '--');
INSERT INTO `position` VALUES ('69', '16', '16', '0', 'IT-品管、技术支持及其它', '品质经理', '--');
INSERT INTO `position` VALUES ('70', '16', '17', '0', 'IT-品管、技术支持及其它', '系统测试', '--');
INSERT INTO `position` VALUES ('71', '16', '18', '0', 'IT-品管、技术支持及其它', '软件测试', '--');
INSERT INTO `position` VALUES ('72', '16', '19', '0', 'IT-品管、技术支持及其它', '硬件测试', '--');
INSERT INTO `position` VALUES ('73', '16', '20', '0', 'IT-品管、技术支持及其它', '测试员', '--');
INSERT INTO `position` VALUES ('74', '16', '21', '0', 'IT-品管、技术支持及其它', '文档工程师', '--');
INSERT INTO `position` VALUES ('75', '16', '22', '0', 'IT-品管、技术支持及其它', '技术文员/助理', '--');
INSERT INTO `position` VALUES ('76', '16', '23', '0', 'IT-品管、技术支持及其它', '其他', '--');
INSERT INTO `position` VALUES ('77', '16', '24', '0', 'IT-品管、技术支持及其它', '研发总监', '--');
INSERT INTO `position` VALUES ('78', '16', '25', '0', 'IT-品管、技术支持及其它', '研发经理', '--');
INSERT INTO `position` VALUES ('79', '16', '26', '0', 'IT-品管、技术支持及其它', '研发主管', '--');
INSERT INTO `position` VALUES ('80', '16', '27', '0', 'IT-品管、技术支持及其它', '研发工程师', '--');
INSERT INTO `position` VALUES ('81', '16', '28', '0', 'IT-品管、技术支持及其它', '助理研发工程师', '--');
INSERT INTO `position` VALUES ('82', '17', '00', '0', '通信技术开发及应用', '--', '--');
INSERT INTO `position` VALUES ('83', '17', '10', '0', '通信技术开发及应用', '通信技术开发及应用', '--');
INSERT INTO `position` VALUES ('84', '17', '11', '0', '通信技术开发及应用', '通信技术工程师', '--');
INSERT INTO `position` VALUES ('85', '17', '12', '0', '通信技术开发及应用', '有线传输工程师', '--');
INSERT INTO `position` VALUES ('86', '17', '13', '0', '通信技术开发及应用', '无线通信工程师', '--');
INSERT INTO `position` VALUES ('87', '17', '14', '0', '通信技术开发及应用', '电信交换工程师', '--');
INSERT INTO `position` VALUES ('88', '17', '15', '0', '通信技术开发及应用', '数据通信工程师', '--');
INSERT INTO `position` VALUES ('89', '17', '16', '0', '通信技术开发及应用', '移动通信工程师', '--');
INSERT INTO `position` VALUES ('90', '17', '17', '0', '通信技术开发及应用', '电信网络工程师', '--');
INSERT INTO `position` VALUES ('91', '17', '18', '0', '通信技术开发及应用', '通信电源工程师', '--');
INSERT INTO `position` VALUES ('92', '17', '19', '0', '通信技术开发及应用', '增值产品开发工程师', '--');
INSERT INTO `position` VALUES ('93', '17', '20', '0', '通信技术开发及应用', '手机软件开发工程师', '--');
INSERT INTO `position` VALUES ('94', '17', '21', '0', '通信技术开发及应用', '手机应用开发工程师', '--');
INSERT INTO `position` VALUES ('95', '17', '22', '0', '通信技术开发及应用', '其他', '--');
INSERT INTO `position` VALUES ('96', '18', '00', '0', '电子/电器/半导体/仪器仪表', '--', '--');
INSERT INTO `position` VALUES ('97', '18', '10', '0', '电子/电器/半导体/仪器仪表', '电子/电器/半导体/仪器仪表', '--');
INSERT INTO `position` VALUES ('98', '18', '11', '0', '电子/电器/半导体/仪器仪表', '集成电路IC设计/应用工程师', '--');
INSERT INTO `position` VALUES ('99', '18', '12', '0', '电子/电器/半导体/仪器仪表', 'IC验证工程师', '--');
INSERT INTO `position` VALUES ('100', '18', '13', '0', '电子/电器/半导体/仪器仪表', '电子工程师/技术员', '--');
INSERT INTO `position` VALUES ('101', '18', '14', '0', '电子/电器/半导体/仪器仪表', '电子技术研发工程师', '--');
INSERT INTO `position` VALUES ('102', '18', '15', '0', '电子/电器/半导体/仪器仪表', '射频工程师', '--');
INSERT INTO `position` VALUES ('103', '18', '16', '0', '电子/电器/半导体/仪器仪表', '电子/电器维修工程师/技', '--');
INSERT INTO `position` VALUES ('104', '18', '17', '0', '电子/电器/半导体/仪器仪表', '变压器与磁电工程师', '--');
INSERT INTO `position` VALUES ('105', '18', '18', '0', '电子/电器/半导体/仪器仪表', '版图设计工程师', '--');
INSERT INTO `position` VALUES ('106', '18', '19', '0', '电子/电器/半导体/仪器仪表', '电气工程师/技术员', '--');
INSERT INTO `position` VALUES ('107', '18', '20', '0', '电子/电器/半导体/仪器仪表', '电路工程师/技术员(模拟/数字)', '--');
INSERT INTO `position` VALUES ('108', '18', '21', '0', '电子/电器/半导体/仪器仪表', '电声/音响工程师/技术员', '--');
INSERT INTO `position` VALUES ('109', '18', '22', '0', '电子/电器/半导体/仪器仪表', '激光/光电子技术', '--');
INSERT INTO `position` VALUES ('110', '18', '23', '0', '电子/电器/半导体/仪器仪表', '半导体技术', '--');
INSERT INTO `position` VALUES ('111', '18', '24', '0', '电子/电器/半导体/仪器仪表', '自动控制工程师/技术员', '--');
INSERT INTO `position` VALUES ('112', '18', '25', '0', '电子/电器/半导体/仪器仪表', '电子软件开发(ARM/MCU...)', '--');
INSERT INTO `position` VALUES ('113', '18', '26', '0', '电子/电器/半导体/仪器仪表', '嵌入式软件开发(Linux/单片机/DLC/DSP…)', '--');
INSERT INTO `position` VALUES ('114', '18', '27', '0', '电子/电器/半导体/仪器仪表', '嵌入式硬件开发(主板机…)', '--');
INSERT INTO `position` VALUES ('115', '18', '28', '0', '电子/电器/半导体/仪器仪表', '电池/电源开发', '--');
INSERT INTO `position` VALUES ('116', '18', '29', '0', '电子/电器/半导体/仪器仪表', 'FAE 现场应用工程师', '--');
INSERT INTO `position` VALUES ('117', '18', '30', '0', '电子/电器/半导体/仪器仪表', '工艺工程师', '--');
INSERT INTO `position` VALUES ('118', '18', '31', '0', '电子/电器/半导体/仪器仪表', '家用电器/数码产品研发', '--');
INSERT INTO `position` VALUES ('119', '18', '32', '0', '电子/电器/半导体/仪器仪表', '仪器/仪表/计量分析师', '--');
INSERT INTO `position` VALUES ('120', '18', '33', '0', '电子/电器/半导体/仪器仪表', '测试工程师', '--');
INSERT INTO `position` VALUES ('121', '18', '34', '0', '电子/电器/半导体/仪器仪表', '其他', '--');
INSERT INTO `position` VALUES ('122', '19', '00', '0', '销售管理', '--', '--');
INSERT INTO `position` VALUES ('123', '19', '10', '0', '销售管理', '销售管理', '--');
INSERT INTO `position` VALUES ('124', '19', '11', '0', '销售管理', '销售总监', '--');
INSERT INTO `position` VALUES ('125', '19', '12', '0', '销售管理', '销售经理', '--');
INSERT INTO `position` VALUES ('126', '19', '13', '0', '销售管理', '销售主管', '--');
INSERT INTO `position` VALUES ('127', '19', '14', '0', '销售管理', '业务拓展主管/经理', '--');
INSERT INTO `position` VALUES ('128', '19', '15', '0', '销售管理', '渠道/分销总监', '--');
INSERT INTO `position` VALUES ('129', '19', '16', '0', '销售管理', '渠道/分销经理', '--');
INSERT INTO `position` VALUES ('130', '19', '17', '0', '销售管理', '分销主管', '--');
INSERT INTO `position` VALUES ('131', '19', '18', '0', '销售管理', '大客户经理', '--');
INSERT INTO `position` VALUES ('132', '19', '19', '0', '销售管理', '客户经理/主管', '--');
INSERT INTO `position` VALUES ('133', '19', '20', '0', '销售管理', '区域销售总监', '--');
INSERT INTO `position` VALUES ('134', '19', '21', '0', '销售管理', '区域销售经理', '--');
INSERT INTO `position` VALUES ('135', '19', '22', '0', '销售管理', '团购经理/主管', '--');
INSERT INTO `position` VALUES ('136', '19', '23', '0', '销售管理', '其他', '--');
INSERT INTO `position` VALUES ('137', '20', '00', '0', '销售人员', '--', '--');
INSERT INTO `position` VALUES ('138', '20', '10', '0', '销售人员', '销售人员', '--');
INSERT INTO `position` VALUES ('139', '20', '11', '0', '销售人员', '销售代表', '--');
INSERT INTO `position` VALUES ('140', '20', '12', '0', '销售人员', '渠道/分销专员', '--');
INSERT INTO `position` VALUES ('141', '20', '13', '0', '销售人员', '客户代表', '--');
INSERT INTO `position` VALUES ('142', '20', '14', '0', '销售人员', '销售工程师', '--');
INSERT INTO `position` VALUES ('143', '20', '15', '0', '销售人员', '电话销售', '--');
INSERT INTO `position` VALUES ('144', '20', '16', '0', '销售人员', '团购业务员', '--');
INSERT INTO `position` VALUES ('145', '20', '17', '0', '销售人员', '经销商', '--');
INSERT INTO `position` VALUES ('146', '20', '18', '0', '销售人员', '其他', '--');
INSERT INTO `position` VALUES ('147', '21', '00', '0', '销售行政及商务', '--', '--');
INSERT INTO `position` VALUES ('148', '21', '10', '0', '销售行政及商务', '销售行政及商务', '--');
INSERT INTO `position` VALUES ('149', '21', '11', '0', '销售行政及商务', '销售行政经理/主管', '--');
INSERT INTO `position` VALUES ('150', '21', '12', '0', '销售行政及商务', '销售行政专员/助理', '--');
INSERT INTO `position` VALUES ('151', '21', '13', '0', '销售行政及商务', '业务分析经理/主管', '--');
INSERT INTO `position` VALUES ('152', '21', '14', '0', '销售行政及商务', '业务分析专员/助理', '--');
INSERT INTO `position` VALUES ('153', '21', '15', '0', '销售行政及商务', '商务经理', '--');
INSERT INTO `position` VALUES ('154', '21', '16', '0', '销售行政及商务', '商务主管/专员', '--');
INSERT INTO `position` VALUES ('155', '21', '17', '0', '销售行政及商务', '商务助理', '--');
INSERT INTO `position` VALUES ('156', '21', '18', '0', '销售行政及商务', '销售助理', '--');
INSERT INTO `position` VALUES ('157', '21', '19', '0', '销售行政及商务', '其他', '--');
INSERT INTO `position` VALUES ('158', '22', '00', '0', '客服及技术支持', '--', '--');
INSERT INTO `position` VALUES ('159', '22', '10', '0', '客服及技术支持', '客服及技术支持', '--');
INSERT INTO `position` VALUES ('160', '22', '11', '0', '客服及技术支持', '客服总监(非技术)', '--');
INSERT INTO `position` VALUES ('161', '22', '12', '0', '客服及技术支持', '客服经理(非技术)', '--');
INSERT INTO `position` VALUES ('162', '22', '13', '0', '客服及技术支持', '客服主管(非技术)', '--');
INSERT INTO `position` VALUES ('163', '22', '14', '0', '客服及技术支持', '客服专员/助理(非技术)', '--');
INSERT INTO `position` VALUES ('164', '22', '15', '0', '客服及技术支持', '客户关系经理/主管', '--');
INSERT INTO `position` VALUES ('165', '22', '16', '0', '客服及技术支持', '投诉专员', '--');
INSERT INTO `position` VALUES ('166', '22', '17', '0', '客服及技术支持', '售前/售后技术支持经理', '--');
INSERT INTO `position` VALUES ('167', '22', '18', '0', '客服及技术支持', '售前/售后技术支持主管', '--');
INSERT INTO `position` VALUES ('168', '22', '19', '0', '客服及技术支持', '售前/售后技术支持工程师', '--');
INSERT INTO `position` VALUES ('169', '22', '20', '0', '客服及技术支持', '咨询热线/呼叫中心服务人员', '--');
INSERT INTO `position` VALUES ('170', '22', '21', '0', '客服及技术支持', 'VIP专员', '--');
INSERT INTO `position` VALUES ('171', '22', '22', '0', '客服及技术支持', '其他', '--');
INSERT INTO `position` VALUES ('172', '23', '00', '0', '财务/审计/税务', '--', '--');
INSERT INTO `position` VALUES ('173', '23', '10', '0', '财务/审计/税务', '财务/审计/税务', '--');
INSERT INTO `position` VALUES ('174', '23', '11', '0', '财务/审计/税务', '首席财务官 CFO', '--');
INSERT INTO `position` VALUES ('175', '23', '12', '0', '财务/审计/税务', '财务总监', '--');
INSERT INTO `position` VALUES ('176', '23', '13', '0', '财务/审计/税务', '财务经理', '--');
INSERT INTO `position` VALUES ('177', '23', '14', '0', '财务/审计/税务', '财务顾问', '--');
INSERT INTO `position` VALUES ('178', '23', '15', '0', '财务/审计/税务', '财务主管/总帐主管', '--');
INSERT INTO `position` VALUES ('179', '23', '16', '0', '财务/审计/税务', '会计经理/会计主管', '--');
INSERT INTO `position` VALUES ('180', '23', '17', '0', '财务/审计/税务', '会计', '--');
INSERT INTO `position` VALUES ('181', '23', '18', '0', '财务/审计/税务', '出纳员', '--');
INSERT INTO `position` VALUES ('182', '23', '19', '0', '财务/审计/税务', '财务/会计助理', '--');
INSERT INTO `position` VALUES ('183', '23', '20', '0', '财务/审计/税务', '会计文员', '--');
INSERT INTO `position` VALUES ('184', '23', '21', '0', '财务/审计/税务', '固定资产会计', '--');
INSERT INTO `position` VALUES ('185', '23', '22', '0', '财务/审计/税务', '财务分析经理/主管', '--');
INSERT INTO `position` VALUES ('186', '23', '23', '0', '财务/审计/税务', '财务分析员', '--');
INSERT INTO `position` VALUES ('187', '23', '24', '0', '财务/审计/税务', '成本经理/成本主管', '--');
INSERT INTO `position` VALUES ('188', '23', '25', '0', '财务/审计/税务', '成本管理员', '--');
INSERT INTO `position` VALUES ('189', '23', '26', '0', '财务/审计/税务', '资金经理/主管', '--');
INSERT INTO `position` VALUES ('190', '23', '27', '0', '财务/审计/税务', '资金专员', '--');
INSERT INTO `position` VALUES ('191', '23', '28', '0', '财务/审计/税务', '审计经理/主管', '--');
INSERT INTO `position` VALUES ('192', '23', '29', '0', '财务/审计/税务', '审计专员/助理', '--');
INSERT INTO `position` VALUES ('193', '23', '30', '0', '财务/审计/税务', '税务经理/税务主管', '--');
INSERT INTO `position` VALUES ('194', '23', '31', '0', '财务/审计/税务', '税务专员/助理', '--');
INSERT INTO `position` VALUES ('195', '23', '32', '0', '财务/审计/税务', '统计员', '--');
INSERT INTO `position` VALUES ('196', '23', '33', '0', '财务/审计/税务', '其他', '--');
INSERT INTO `position` VALUES ('197', '24', '00', '0', '金融/证券/期货/投资', '--', '--');
INSERT INTO `position` VALUES ('198', '24', '10', '0', '金融/证券/期货/投资', '金融/证券/期货/投资', '--');
INSERT INTO `position` VALUES ('199', '24', '11', '0', '金融/证券/期货/投资', '证券/期货/外汇经纪人', '--');
INSERT INTO `position` VALUES ('200', '24', '12', '0', '金融/证券/期货/投资', '证券分析师', '--');
INSERT INTO `position` VALUES ('201', '24', '13', '0', '金融/证券/期货/投资', '股票/期货操盘手', '--');
INSERT INTO `position` VALUES ('202', '24', '14', '0', '金融/证券/期货/投资', '金融/经济研究员', '--');
INSERT INTO `position` VALUES ('203', '24', '15', '0', '金融/证券/期货/投资', '投资/基金项目经理', '--');
INSERT INTO `position` VALUES ('204', '24', '16', '0', '金融/证券/期货/投资', '投资/理财顾问', '--');
INSERT INTO `position` VALUES ('205', '24', '17', '0', '金融/证券/期货/投资', '投资银行业务', '--');
INSERT INTO `position` VALUES ('206', '24', '18', '0', '金融/证券/期货/投资', '融资经理/融资主管', '--');
INSERT INTO `position` VALUES ('207', '24', '19', '0', '金融/证券/期货/投资', '融资专员', '--');
INSERT INTO `position` VALUES ('208', '24', '20', '0', '金融/证券/期货/投资', '拍卖师', '--');
INSERT INTO `position` VALUES ('209', '24', '21', '0', '金融/证券/期货/投资', '其他', '--');
INSERT INTO `position` VALUES ('210', '24', '22', '0', '金融/证券/期货/投资', '高级证券分析师', '--');
INSERT INTO `position` VALUES ('211', '24', '23', '0', '金融/证券/期货/投资', '理财总监', '--');
INSERT INTO `position` VALUES ('212', '24', '24', '0', '金融/证券/期货/投资', '理财经理', '--');
INSERT INTO `position` VALUES ('213', '24', '25', '0', '金融/证券/期货/投资', '融资总监', '--');
INSERT INTO `position` VALUES ('214', '25', '00', '0', '银行', '--', '--');
INSERT INTO `position` VALUES ('215', '25', '10', '0', '银行', '银行', '--');
INSERT INTO `position` VALUES ('216', '25', '11', '0', '银行', '行长/副行长', '--');
INSERT INTO `position` VALUES ('217', '25', '12', '0', '银行', '个人业务部门经理/主管', '--');
INSERT INTO `position` VALUES ('218', '25', '13', '0', '银行', '个人业务客户经理', '--');
INSERT INTO `position` VALUES ('219', '25', '14', '0', '银行', '公司业务部门经理/主管', '--');
INSERT INTO `position` VALUES ('220', '25', '15', '0', '银行', '公司业务客户经理', '--');
INSERT INTO `position` VALUES ('221', '25', '16', '0', '银行', '综合业务经理/主管', '--');
INSERT INTO `position` VALUES ('222', '25', '17', '0', '银行', '综合业务专员', '--');
INSERT INTO `position` VALUES ('223', '25', '18', '0', '银行', '资产评估/分析', '--');
INSERT INTO `position` VALUES ('224', '25', '19', '0', '银行', '风险控制', '--');
INSERT INTO `position` VALUES ('225', '25', '20', '0', '银行', '信贷管理', '--');
INSERT INTO `position` VALUES ('226', '25', '21', '0', '银行', '信审核查', '--');
INSERT INTO `position` VALUES ('227', '25', '22', '0', '银行', '进出口/信用证结算', '--');
INSERT INTO `position` VALUES ('228', '25', '23', '0', '银行', '外汇交易', '--');
INSERT INTO `position` VALUES ('229', '25', '24', '0', '银行', '清算人员', '--');
INSERT INTO `position` VALUES ('230', '25', '25', '0', '银行', '高级客户经理/客户经理', '--');
INSERT INTO `position` VALUES ('231', '25', '26', '0', '银行', '客户主管/专员', '--');
INSERT INTO `position` VALUES ('232', '25', '27', '0', '银行', '营业部大堂经理', '--');
INSERT INTO `position` VALUES ('233', '25', '28', '0', '银行', '银行柜员', '--');
INSERT INTO `position` VALUES ('234', '25', '29', '0', '银行', '银行卡、电子银行业务推广', '--');
INSERT INTO `position` VALUES ('235', '25', '30', '0', '银行', '其他', '--');
INSERT INTO `position` VALUES ('236', '26', '00', '0', '保险', '--', '--');
INSERT INTO `position` VALUES ('237', '26', '10', '0', '保险', '保险', '--');
INSERT INTO `position` VALUES ('238', '26', '11', '0', '保险', '保险精算师', '--');
INSERT INTO `position` VALUES ('239', '26', '12', '0', '保险', '保险产品开发/项目策划', '--');
INSERT INTO `position` VALUES ('240', '26', '13', '0', '保险', '保险业务经理/主管', '--');
INSERT INTO `position` VALUES ('241', '26', '14', '0', '保险', '保险代理/经纪人/客户经理', '--');
INSERT INTO `position` VALUES ('242', '26', '15', '0', '保险', '理财顾问/财务规划师', '--');
INSERT INTO `position` VALUES ('243', '26', '16', '0', '保险', '储备经理人', '--');
INSERT INTO `position` VALUES ('244', '26', '17', '0', '保险', '保险核保', '--');
INSERT INTO `position` VALUES ('245', '26', '18', '0', '保险', '保险理赔', '--');
INSERT INTO `position` VALUES ('246', '26', '19', '0', '保险', '保险客户服务/续期管理', '--');
INSERT INTO `position` VALUES ('247', '26', '20', '0', '保险', '保险培训师', '--');
INSERT INTO `position` VALUES ('248', '26', '21', '0', '保险', '保险内勤', '--');
INSERT INTO `position` VALUES ('249', '26', '22', '0', '保险', '契约管理', '--');
INSERT INTO `position` VALUES ('250', '26', '23', '0', '保险', '其他', '--');
INSERT INTO `position` VALUES ('251', '27', '00', '0', '生产/营运', '--', '--');
INSERT INTO `position` VALUES ('252', '27', '10', '0', '生产/营运', '生产/营运', '--');
INSERT INTO `position` VALUES ('253', '27', '11', '0', '生产/营运', '工厂经理/厂长', '--');
INSERT INTO `position` VALUES ('254', '27', '12', '0', '生产/营运', '总工程师/副总工程师', '--');
INSERT INTO `position` VALUES ('255', '27', '13', '0', '生产/营运', '项目总监', '--');
INSERT INTO `position` VALUES ('256', '27', '14', '0', '生产/营运', '项目经理/主管', '--');
INSERT INTO `position` VALUES ('257', '27', '15', '0', '生产/营运', '项目工程师', '--');
INSERT INTO `position` VALUES ('258', '27', '16', '0', '生产/营运', '营运经理', '--');
INSERT INTO `position` VALUES ('259', '27', '17', '0', '生产/营运', '营运主管', '--');
INSERT INTO `position` VALUES ('260', '27', '18', '0', '生产/营运', '生产总监', '--');
INSERT INTO `position` VALUES ('261', '27', '19', '0', '生产/营运', '生产经理/车间主任', '--');
INSERT INTO `position` VALUES ('262', '27', '20', '0', '生产/营运', '生产计划/物料管理(PMC)', '--');
INSERT INTO `position` VALUES ('263', '27', '21', '0', '生产/营运', '生产主管/督导/领班/组长', '--');
INSERT INTO `position` VALUES ('264', '27', '22', '0', '生产/营运', '生产文员', '--');
INSERT INTO `position` VALUES ('265', '27', '23', '0', '生产/营运', '化验员', '--');
INSERT INTO `position` VALUES ('266', '27', '23', '0', '生产/营运', '其他', '--');
INSERT INTO `position` VALUES ('267', '28', '00', '0', '质量/安全管理', '--', '--');
INSERT INTO `position` VALUES ('268', '28', '10', '0', '质量/安全管理', '质量/安全管理', '--');
INSERT INTO `position` VALUES ('269', '28', '11', '0', '质量/安全管理', '质量管理/测试经理(QA/QC经理)', '--');
INSERT INTO `position` VALUES ('270', '28', '12', '0', '质量/安全管理', '质量管理/测试主管(QA/QC主管)', '--');
INSERT INTO `position` VALUES ('271', '28', '13', '0', '质量/安全管理', '质量管理/测试工程师(QA/QC工程师)', '--');
INSERT INTO `position` VALUES ('272', '28', '14', '0', '质量/安全管理', '质量检验员/测试员', '--');
INSERT INTO `position` VALUES ('273', '28', '15', '0', '质量/安全管理', '可靠度工程师', '--');
INSERT INTO `position` VALUES ('274', '28', '16', '0', '质量/安全管理', '故障分析工程师', '--');
INSERT INTO `position` VALUES ('275', '28', '17', '0', '质量/安全管理', '认证工程师/审核员', '--');
INSERT INTO `position` VALUES ('276', '28', '18', '0', '质量/安全管理', '体系工程师/审核员', '--');
INSERT INTO `position` VALUES ('277', '28', '19', '0', '质量/安全管理', '环境/健康/安全经理/主管（EHS）', '--');
INSERT INTO `position` VALUES ('278', '28', '20', '0', '质量/安全管理', '环境/健康/安全工程师（EHS）', '--');
INSERT INTO `position` VALUES ('279', '28', '21', '0', '质量/安全管理', '供应商管理', '--');
INSERT INTO `position` VALUES ('280', '28', '22', '0', '质量/安全管理', '采购材料、设备质量管理', '--');
INSERT INTO `position` VALUES ('281', '28', '23', '0', '质量/安全管理', '其他', '--');
INSERT INTO `position` VALUES ('282', '29', '00', '0', '工程/机械/能源', '--', '--');
INSERT INTO `position` VALUES ('283', '29', '10', '0', '工程/机械/能源', '工程/机械/能源', '--');
INSERT INTO `position` VALUES ('284', '29', '11', '0', '工程/机械/能源', '技术研发经理/主管', '--');
INSERT INTO `position` VALUES ('285', '29', '12', '0', '工程/机械/能源', '技术研发工程师', '--');
INSERT INTO `position` VALUES ('286', '29', '13', '0', '工程/机械/能源', '产品工艺/制程工程师', '--');
INSERT INTO `position` VALUES ('287', '29', '14', '0', '工程/机械/能源', '产品规划工程师', '--');
INSERT INTO `position` VALUES ('288', '29', '15', '0', '工程/机械/能源', '实验室负责人/工程师', '--');
INSERT INTO `position` VALUES ('289', '29', '16', '0', '工程/机械/能源', '工程/设备经理', '--');
INSERT INTO `position` VALUES ('290', '29', '17', '0', '工程/机械/能源', '工程/设备主管', '--');
INSERT INTO `position` VALUES ('291', '29', '18', '0', '工程/机械/能源', '工程/设备工程师', '--');
INSERT INTO `position` VALUES ('292', '29', '19', '0', '工程/机械/能源', '工程/机械绘图员', '--');
INSERT INTO `position` VALUES ('293', '29', '20', '0', '工程/机械/能源', '工业工程师', '--');
INSERT INTO `position` VALUES ('294', '29', '21', '0', '工程/机械/能源', '材料工程师', '--');
INSERT INTO `position` VALUES ('295', '29', '22', '0', '工程/机械/能源', '机械工程师', '--');
INSERT INTO `position` VALUES ('296', '29', '23', '0', '工程/机械/能源', '结构工程师', '--');
INSERT INTO `position` VALUES ('297', '29', '24', '0', '工程/机械/能源', '模具工程师', '--');
INSERT INTO `position` VALUES ('298', '29', '25', '0', '工程/机械/能源', '机电工程师', '--');
INSERT INTO `position` VALUES ('299', '29', '26', '0', '工程/机械/能源', '维修经理/主管', '--');
INSERT INTO `position` VALUES ('300', '29', '27', '0', '工程/机械/能源', '维修工程师', '--');
INSERT INTO `position` VALUES ('301', '29', '28', '0', '工程/机械/能源', '装配工程师/技师', '--');
INSERT INTO `position` VALUES ('302', '29', '29', '0', '工程/机械/能源', '铸造/锻造工程师/技师', '--');
INSERT INTO `position` VALUES ('303', '29', '30', '0', '工程/机械/能源', '注塑工程师/技师', '--');
INSERT INTO `position` VALUES ('304', '29', '31', '0', '工程/机械/能源', '焊接工程师/技师', '--');
INSERT INTO `position` VALUES ('305', '29', '32', '0', '工程/机械/能源', '夹具工程师/技师', '--');
INSERT INTO `position` VALUES ('306', '29', '33', '0', '工程/机械/能源', 'CNC工程师', '--');
INSERT INTO `position` VALUES ('307', '29', '34', '0', '工程/机械/能源', '冲压工程师/技师', '--');
INSERT INTO `position` VALUES ('308', '29', '35', '0', '工程/机械/能源', '锅炉工程师/技师', '--');
INSERT INTO `position` VALUES ('309', '29', '36', '0', '工程/机械/能源', '电力工程师/技术员', '--');
INSERT INTO `position` VALUES ('310', '29', '37', '0', '工程/机械/能源', '光源与照明工程', '--');
INSERT INTO `position` VALUES ('311', '29', '38', '0', '工程/机械/能源', '汽车/摩托车工程师', '--');
INSERT INTO `position` VALUES ('312', '29', '39', '0', '工程/机械/能源', '船舶工程师', '--');
INSERT INTO `position` VALUES ('313', '29', '40', '0', '工程/机械/能源', '轨道交通工程师/技术员', '--');
INSERT INTO `position` VALUES ('314', '29', '41', '0', '工程/机械/能源', '飞机维修机械师', '--');
INSERT INTO `position` VALUES ('315', '29', '42', '0', '工程/机械/能源', '飞行器设计与制造', '--');
INSERT INTO `position` VALUES ('316', '29', '43', '0', '工程/机械/能源', '水利/水电工程师', '--');
INSERT INTO `position` VALUES ('317', '29', '44', '0', '工程/机械/能源', '石油天然气技术人员', '--');
INSERT INTO `position` VALUES ('318', '29', '45', '0', '工程/机械/能源', '矿产勘探/地质勘测工程师', '--');
INSERT INTO `position` VALUES ('319', '29', '46', '0', '工程/机械/能源', '其他', '--');
INSERT INTO `position` VALUES ('320', '29', '47', '0', '工程/机械/能源', '研发总监', '--');
INSERT INTO `position` VALUES ('321', '29', '48', '0', '工程/机械/能源', '研发经理', '--');
INSERT INTO `position` VALUES ('322', '29', '49', '0', '工程/机械/能源', '研发主管', '--');
INSERT INTO `position` VALUES ('323', '29', '50', '0', '工程/机械/能源', '研发工程师', '--');
INSERT INTO `position` VALUES ('324', '29', '51', '0', '工程/机械/能源', '助理研发工程师', '--');
INSERT INTO `position` VALUES ('325', '30', '00', '0', '汽车', '--', '--');
INSERT INTO `position` VALUES ('326', '30', '10', '0', '汽车', '汽车', '--');
INSERT INTO `position` VALUES ('327', '30', '11', '0', '汽车', '汽车机构工程师', '--');
INSERT INTO `position` VALUES ('328', '30', '12', '0', '汽车', '汽车设计工程师', '--');
INSERT INTO `position` VALUES ('329', '30', '13', '0', '汽车', '汽车电子工程师', '--');
INSERT INTO `position` VALUES ('330', '30', '14', '0', '汽车', '汽车质量管理', '--');
INSERT INTO `position` VALUES ('331', '30', '15', '0', '汽车', '汽车安全性能工程师', '--');
INSERT INTO `position` VALUES ('332', '30', '16', '0', '汽车', '汽车装配工艺工程师', '--');
INSERT INTO `position` VALUES ('333', '30', '17', '0', '汽车', '汽车修理人员', '--');
INSERT INTO `position` VALUES ('334', '30', '18', '0', '汽车', '4S店经理/维修站经理', '--');
INSERT INTO `position` VALUES ('335', '30', '19', '0', '汽车', '汽车销售/经纪人', '--');
INSERT INTO `position` VALUES ('336', '30', '20', '0', '汽车', '二手车评估师', '--');
INSERT INTO `position` VALUES ('337', '30', '21', '0', '汽车', '其他', '--');
INSERT INTO `position` VALUES ('338', '31', '00', '0', '技工', '--', '--');
INSERT INTO `position` VALUES ('339', '31', '10', '0', '技工', '技工', '--');
INSERT INTO `position` VALUES ('340', '31', '11', '0', '技工', '钳工/机修工/钣金工', '--');
INSERT INTO `position` VALUES ('341', '31', '12', '0', '技工', '电焊工/铆焊工', '--');
INSERT INTO `position` VALUES ('342', '31', '13', '0', '技工', '车工/磨工/铣工/冲压工/锣工', '--');
INSERT INTO `position` VALUES ('343', '31', '14', '0', '技工', '切割技工', '--');
INSERT INTO `position` VALUES ('344', '31', '15', '0', '技工', '模具工', '--');
INSERT INTO `position` VALUES ('345', '31', '16', '0', '技工', '电工', '--');
INSERT INTO `position` VALUES ('346', '31', '17', '0', '技工', '叉车工', '--');
INSERT INTO `position` VALUES ('347', '31', '18', '0', '技工', '空调工/电梯工/锅炉工', '--');
INSERT INTO `position` VALUES ('348', '31', '19', '0', '技工', '水工/木工/漆工', '--');
INSERT INTO `position` VALUES ('349', '31', '20', '0', '技工', '普工/操作工', '--');
INSERT INTO `position` VALUES ('350', '31', '21', '0', '技工', '裁缝印纺熨烫', '--');
INSERT INTO `position` VALUES ('351', '31', '22', '0', '技工', '汽车修理工', '--');
INSERT INTO `position` VALUES ('352', '31', '23', '0', '技工', '其他', '--');
INSERT INTO `position` VALUES ('353', '32', '00', '0', '服装/纺织/皮革', '--', '--');
INSERT INTO `position` VALUES ('354', '32', '10', '0', '服装/纺织/皮革', '服装/纺织/皮革', '--');
INSERT INTO `position` VALUES ('355', '32', '11', '0', '服装/纺织/皮革', '服装/纺织设计总监', '--');
INSERT INTO `position` VALUES ('356', '32', '12', '0', '服装/纺织/皮革', '服装/纺织设计', '--');
INSERT INTO `position` VALUES ('357', '32', '13', '0', '服装/纺织/皮革', '面料辅料开发', '--');
INSERT INTO `position` VALUES ('358', '32', '14', '0', '服装/纺织/皮革', '面料辅料采购', '--');
INSERT INTO `position` VALUES ('359', '32', '15', '0', '服装/纺织/皮革', '服装/纺织/皮革跟单', '--');
INSERT INTO `position` VALUES ('360', '32', '16', '0', '服装/纺织/皮革', '质量管理/验货员(QA/QC)', '--');
INSERT INTO `position` VALUES ('361', '32', '17', '0', '服装/纺织/皮革', '板房/楦头/底格出格师', '--');
INSERT INTO `position` VALUES ('362', '32', '18', '0', '服装/纺织/皮革', '打样/制版', '--');
INSERT INTO `position` VALUES ('363', '32', '19', '0', '服装/纺织/皮革', '电脑放码员', '--');
INSERT INTO `position` VALUES ('364', '32', '20', '0', '服装/纺织/皮革', '纸样师/车板工', '--');
INSERT INTO `position` VALUES ('365', '32', '21', '0', '服装/纺织/皮革', '裁床', '--');
INSERT INTO `position` VALUES ('366', '32', '22', '0', '服装/纺织/皮革', '其他', '--');
INSERT INTO `position` VALUES ('367', '33', '00', '0', '采购', '--', '--');
INSERT INTO `position` VALUES ('368', '33', '10', '0', '采购', '采购', '--');
INSERT INTO `position` VALUES ('369', '33', '11', '0', '采购', '采购总监', '--');
INSERT INTO `position` VALUES ('370', '33', '12', '0', '采购', '采购经理', '--');
INSERT INTO `position` VALUES ('371', '33', '13', '0', '采购', '采购主管', '--');
INSERT INTO `position` VALUES ('372', '33', '14', '0', '采购', '采购员', '--');
INSERT INTO `position` VALUES ('373', '33', '15', '0', '采购', '采购助理', '--');
INSERT INTO `position` VALUES ('374', '33', '16', '0', '采购', '买手', '--');
INSERT INTO `position` VALUES ('375', '33', '17', '0', '采购', '供应商开发', '--');
INSERT INTO `position` VALUES ('376', '33', '18', '0', '采购', '其他', '--');
INSERT INTO `position` VALUES ('377', '34', '00', '0', '贸易', '--', '--');
INSERT INTO `position` VALUES ('378', '34', '10', '0', '贸易', '贸易', '--');
INSERT INTO `position` VALUES ('379', '34', '11', '0', '贸易', '贸易/进出口经理/主管', '--');
INSERT INTO `position` VALUES ('380', '34', '12', '0', '贸易', '贸易/进出口专员/助理', '--');
INSERT INTO `position` VALUES ('381', '34', '13', '0', '贸易', '国内贸易人员', '--');
INSERT INTO `position` VALUES ('382', '34', '14', '0', '贸易', '业务跟单经理', '--');
INSERT INTO `position` VALUES ('383', '34', '15', '0', '贸易', '高级业务跟单', '--');
INSERT INTO `position` VALUES ('384', '34', '16', '0', '贸易', '业务跟单', '--');
INSERT INTO `position` VALUES ('385', '34', '17', '0', '贸易', '助理业务跟单', '--');
INSERT INTO `position` VALUES ('386', '34', '18', '0', '贸易', '其他', '--');
INSERT INTO `position` VALUES ('387', '35', '00', '0', '物流/仓储', '--', '--');
INSERT INTO `position` VALUES ('388', '35', '10', '0', '物流/仓储', '物流/仓储', '--');
INSERT INTO `position` VALUES ('389', '35', '11', '0', '物流/仓储', '物流总监', '--');
INSERT INTO `position` VALUES ('390', '35', '12', '0', '物流/仓储', '物流经理', '--');
INSERT INTO `position` VALUES ('391', '35', '13', '0', '物流/仓储', '物流主管', '--');
INSERT INTO `position` VALUES ('392', '35', '14', '0', '物流/仓储', '物流专员/助理', '--');
INSERT INTO `position` VALUES ('393', '35', '15', '0', '物流/仓储', '供应链总监', '--');
INSERT INTO `position` VALUES ('394', '35', '16', '0', '物流/仓储', '供应链经理', '--');
INSERT INTO `position` VALUES ('395', '35', '17', '0', '物流/仓储', '供应链主管/专员', '--');
INSERT INTO `position` VALUES ('396', '35', '18', '0', '物流/仓储', '物料经理', '--');
INSERT INTO `position` VALUES ('397', '35', '19', '0', '物流/仓储', '物料主管/专员', '--');
INSERT INTO `position` VALUES ('398', '35', '20', '0', '物流/仓储', '仓库经理/主管', '--');
INSERT INTO `position` VALUES ('399', '35', '21', '0', '物流/仓储', '仓库管理员', '--');
INSERT INTO `position` VALUES ('400', '35', '22', '0', '物流/仓储', '运输经理/主管', '--');
INSERT INTO `position` VALUES ('401', '35', '23', '0', '物流/仓储', '项目经理/主管', '--');
INSERT INTO `position` VALUES ('402', '35', '24', '0', '物流/仓储', '货运代理', '--');
INSERT INTO `position` VALUES ('403', '35', '25', '0', '物流/仓储', '集装箱业务', '--');
INSERT INTO `position` VALUES ('404', '35', '26', '0', '物流/仓储', '海关事务管理', '--');
INSERT INTO `position` VALUES ('405', '35', '27', '0', '物流/仓储', '报关员', '--');
INSERT INTO `position` VALUES ('406', '35', '28', '0', '报关员', '单证员', '--');
INSERT INTO `position` VALUES ('407', '35', '29', '0', '物流/仓储', '船务/空运陆运操作', '--');
INSERT INTO `position` VALUES ('408', '35', '30', '0', '物流/仓储', '快递员', '--');
INSERT INTO `position` VALUES ('409', '35', '31', '0', '物流/仓储', '调度员', '--');
INSERT INTO `position` VALUES ('410', '35', '32', '0', '物流/仓储', '理货员', '--');
INSERT INTO `position` VALUES ('411', '35', '33', '0', '物流/仓储', '其他', '--');
INSERT INTO `position` VALUES ('412', '36', '00', '0', '生物/制药/医疗器械', '--', '--');
INSERT INTO `position` VALUES ('413', '36', '10', '0', '生物/制药/医疗器械', '生物/制药/医疗器械', '--');
INSERT INTO `position` VALUES ('414', '36', '11', '0', '生物/制药/医疗器械', '生物工程/生物制药', '--');
INSERT INTO `position` VALUES ('415', '36', '12', '0', '生物/制药/医疗器械', '化学分析测试员', '--');
INSERT INTO `position` VALUES ('416', '36', '13', '0', '生物/制药/医疗器械', '医药技术研发管理人员', '--');
INSERT INTO `position` VALUES ('417', '36', '14', '0', '生物/制药/医疗器械', '医药技术研发人员', '--');
INSERT INTO `position` VALUES ('418', '36', '15', '0', '生物/制药/医疗器械', '临床研究员', '--');
INSERT INTO `position` VALUES ('419', '36', '16', '0', '生物/制药/医疗器械', '临床协调员', '--');
INSERT INTO `position` VALUES ('420', '36', '17', '0', '生物/制药/医疗器械', '临床数据分析员', '--');
INSERT INTO `position` VALUES ('421', '36', '18', '0', '生物/制药/医疗器械', '药品注册', '--');
INSERT INTO `position` VALUES ('422', '36', '19', '0', '生物/制药/医疗器械', '药品生产/质量管理', '--');
INSERT INTO `position` VALUES ('423', '36', '20', '0', '生物/制药/医疗器械', '药品市场推广经理', '--');
INSERT INTO `position` VALUES ('424', '36', '21', '0', '生物/制药/医疗器械', '药品市场推广主管/专员', '--');
INSERT INTO `position` VALUES ('425', '36', '22', '0', '生物/制药/医疗器械', '医药招商', '--');
INSERT INTO `position` VALUES ('426', '36', '23', '0', '生物/制药/医疗器械', '政府事务管理', '--');
INSERT INTO `position` VALUES ('427', '36', '24', '0', '生物/制药/医疗器械', '招投标管理', '--');
INSERT INTO `position` VALUES ('428', '36', '25', '0', '生物/制药/医疗器械', '医药销售经理/主管', '--');
INSERT INTO `position` VALUES ('429', '36', '26', '0', '生物/制药/医疗器械', '医药销售代表', '--');
INSERT INTO `position` VALUES ('430', '36', '27', '0', '生物/制药/医疗器械', '医疗设备注册', '--');
INSERT INTO `position` VALUES ('431', '36', '28', '0', '生物/制药/医疗器械', '医疗设备生产/质量管理', '--');
INSERT INTO `position` VALUES ('432', '36', '29', '0', '生物/制药/医疗器械', '医疗器械市场推广', '--');
INSERT INTO `position` VALUES ('433', '36', '30', '0', '生物/制药/医疗器械', '医疗器械销售', '--');
INSERT INTO `position` VALUES ('434', '36', '31', '0', '生物/制药/医疗器械', '医疗器械维修人员', '--');
INSERT INTO `position` VALUES ('435', '36', '32', '0', '生物/制药/医疗器械', '其他', '--');
INSERT INTO `position` VALUES ('436', '36', '33', '0', '生物/制药/医疗器械', '研发总监', '--');
INSERT INTO `position` VALUES ('437', '36', '34', '0', '生物/制药/医疗器械', '研发经理', '--');
INSERT INTO `position` VALUES ('438', '36', '35', '0', '生物/制药/医疗器械', '研发主管', '--');
INSERT INTO `position` VALUES ('439', '36', '36', '0', '生物/制药/医疗器械', '研发工程师', '--');
INSERT INTO `position` VALUES ('440', '36', '37', '0', '生物/制药/医疗器械', '助理研发工程师', '--');
INSERT INTO `position` VALUES ('441', '37', '00', '0', '化工', '--', '--');
INSERT INTO `position` VALUES ('442', '37', '10', '0', '化工', '化工', '--');
INSERT INTO `position` VALUES ('443', '37', '11', '0', '化工', '化工技术应用/化工工程师', '--');
INSERT INTO `position` VALUES ('444', '37', '12', '0', '化工', '化工实验室研究员/技术员', '--');
INSERT INTO `position` VALUES ('445', '37', '13', '0', '化工', '涂料研发工程师', '--');
INSERT INTO `position` VALUES ('446', '37', '14', '0', '化工', '配色技术员', '--');
INSERT INTO `position` VALUES ('447', '37', '15', '0', '化工', '塑料工程师', '--');
INSERT INTO `position` VALUES ('448', '37', '16', '0', '化工', '化妆品研发', '--');
INSERT INTO `position` VALUES ('449', '37', '17', '0', '化工', '食品/饮料研发', '--');
INSERT INTO `position` VALUES ('450', '37', '18', '0', '化工', '造纸研发', '--');
INSERT INTO `position` VALUES ('451', '37', '19', '0', '化工', '其他', '--');
INSERT INTO `position` VALUES ('452', '38', '00', '0', '医院/医疗/护理', '--', '--');
INSERT INTO `position` VALUES ('453', '38', '10', '0', '医院/医疗/护理', '医院/医疗/护理', '--');
INSERT INTO `position` VALUES ('454', '38', '11', '0', '医院/医疗/护理', '医院管理人员', '--');
INSERT INTO `position` VALUES ('455', '38', '12', '0', '医院/医疗/护理', '内科医生', '--');
INSERT INTO `position` VALUES ('456', '38', '13', '0', '医院/医疗/护理', '外科医生', '--');
INSERT INTO `position` VALUES ('457', '38', '14', '0', '医院/医疗/护理', '专科医生', '--');
INSERT INTO `position` VALUES ('458', '38', '15', '0', '医院/医疗/护理', '牙科医生', '--');
INSERT INTO `position` VALUES ('459', '38', '16', '0', '医院/医疗/护理', '麻醉医生', '--');
INSERT INTO `position` VALUES ('460', '38', '17', '0', '医院/医疗/护理', '美容整形师', '--');
INSERT INTO `position` VALUES ('461', '38', '18', '0', '医院/医疗/护理', '理疗师', '--');
INSERT INTO `position` VALUES ('462', '38', '19', '0', '医院/医疗/护理', '中医科医生', '--');
INSERT INTO `position` VALUES ('463', '38', '20', '0', '医院/医疗/护理', '针灸、推拿', '--');
INSERT INTO `position` VALUES ('464', '38', '21', '0', '医院/医疗/护理', '儿科医生', '--');
INSERT INTO `position` VALUES ('465', '38', '22', '0', '医院/医疗/护理', '心理医生', '--');
INSERT INTO `position` VALUES ('466', '38', '23', '0', '医院/医疗/护理', '营养师', '--');
INSERT INTO `position` VALUES ('467', '38', '24', '0', '医院/医疗/护理', '药库主任/药剂师', '--');
INSERT INTO `position` VALUES ('468', '38', '25', '0', '医院/医疗/护理', '医药学检验', '--');
INSERT INTO `position` VALUES ('469', '38', '26', '0', '医院/医疗/护理', '公共卫生/疾病控制', '--');
INSERT INTO `position` VALUES ('470', '38', '27', '0', '医院/医疗/护理', '护理主任/护士长', '--');
INSERT INTO `position` VALUES ('471', '38', '28', '0', '医院/医疗/护理', '护士/护理人员', '--');
INSERT INTO `position` VALUES ('472', '38', '29', '0', '医院/医疗/护理', '兽医', '--');
INSERT INTO `position` VALUES ('473', '38', '30', '0', '医院/医疗/护理', '验光师', '--');
INSERT INTO `position` VALUES ('474', '38', '31', '0', '医院/医疗/护理', '其他', '--');
INSERT INTO `position` VALUES ('475', '39', '00', '0', '广告', '--', '--');
INSERT INTO `position` VALUES ('476', '39', '10', '0', '广告', '广告', '--');
INSERT INTO `position` VALUES ('477', '39', '11', '0', '广告', '广告客户总监/副总监', '--');
INSERT INTO `position` VALUES ('478', '39', '12', '0', '广告', '广告客户经理', '--');
INSERT INTO `position` VALUES ('479', '39', '13', '0', '广告', '广告客户主管/专员', '--');
INSERT INTO `position` VALUES ('480', '39', '14', '0', '广告', '广告创意/设计经理', '--');
INSERT INTO `position` VALUES ('481', '39', '15', '0', '广告', '广告创意总监', '--');
INSERT INTO `position` VALUES ('482', '39', '16', '0', '广告', '广告创意/设计主管/专员', '--');
INSERT INTO `position` VALUES ('483', '39', '17', '0', '广告', '美术指导', '--');
INSERT INTO `position` VALUES ('484', '39', '18', '0', '广告', '文案/策划', '--');
INSERT INTO `position` VALUES ('485', '39', '19', '0', '广告', '企业/业务发展经理', '--');
INSERT INTO `position` VALUES ('486', '39', '20', '0', '广告', '企业策划人员', '--');
INSERT INTO `position` VALUES ('487', '39', '21', '0', '广告', '其他', '--');
INSERT INTO `position` VALUES ('488', '40', '00', '0', '公关/媒介', '--', '--');
INSERT INTO `position` VALUES ('489', '40', '10', '0', '公关/媒介', '公关/媒介', '--');
INSERT INTO `position` VALUES ('490', '40', '11', '0', '公关/媒介', '公关经理', '--');
INSERT INTO `position` VALUES ('491', '40', '12', '0', '公关/媒介', '公关主管', '--');
INSERT INTO `position` VALUES ('492', '40', '13', '0', '公关/媒介', '公关专员', '--');
INSERT INTO `position` VALUES ('493', '40', '14', '0', '公关/媒介', '会务/会展经理', '--');
INSERT INTO `position` VALUES ('494', '40', '15', '0', '公关/媒介', '务/会展主管', '--');
INSERT INTO `position` VALUES ('495', '40', '16', '0', '公关/媒介', '会务/会展专员', '--');
INSERT INTO `position` VALUES ('496', '40', '17', '0', '公关/媒介', '媒介经理', '--');
INSERT INTO `position` VALUES ('497', '40', '18', '0', '公关/媒介', '媒介主管', '--');
INSERT INTO `position` VALUES ('498', '40', '19', '0', '公关/媒介', '媒介专员', '--');
INSERT INTO `position` VALUES ('499', '40', '20', '0', '公关/媒介', '公关/媒介助理', '--');
INSERT INTO `position` VALUES ('500', '40', '21', '0', '公关/媒介', '媒介销售', '--');
INSERT INTO `position` VALUES ('501', '40', '22', '0', '公关/媒介', '活动策划', '--');
INSERT INTO `position` VALUES ('502', '40', '23', '0', '公关/媒介', '其他', '--');
INSERT INTO `position` VALUES ('503', '41', '00', '0', '市场/营销', '--', '--');
INSERT INTO `position` VALUES ('504', '41', '10', '0', '市场/营销', '市场/营销', '--');
INSERT INTO `position` VALUES ('505', '41', '11', '0', '市场/营销', '市场/营销/拓展总监', '--');
INSERT INTO `position` VALUES ('506', '41', '12', '0', '市场/营销', '市场/营销/拓展经理', '--');
INSERT INTO `position` VALUES ('507', '41', '13', '0', '市场/营销', '市场/营销/拓展主管', '--');
INSERT INTO `position` VALUES ('508', '41', '14', '0', '市场/营销', '市场/营销/拓展专员', '--');
INSERT INTO `position` VALUES ('509', '41', '15', '0', '市场/营销', '市场助理', '--');
INSERT INTO `position` VALUES ('510', '41', '16', '0', '市场/营销', '市场分析/调研人员', '--');
INSERT INTO `position` VALUES ('511', '41', '17', '0', '市场/营销', '产品/品牌经理', '--');
INSERT INTO `position` VALUES ('512', '41', '18', '0', '市场/营销', '产品/品牌主管', '--');
INSERT INTO `position` VALUES ('513', '41', '19', '0', '市场/营销', '产品/品牌专员', '--');
INSERT INTO `position` VALUES ('514', '41', '20', '0', '市场/营销', '市场通路经理/主管', '--');
INSERT INTO `position` VALUES ('515', '41', '21', '0', '市场/营销', '市场通路专员', '--');
INSERT INTO `position` VALUES ('516', '41', '22', '0', '市场/营销', '市场企划经理/主管', '--');
INSERT INTO `position` VALUES ('517', '41', '23', '0', '市场/营销', '市场企划专员', '--');
INSERT INTO `position` VALUES ('518', '41', '24', '0', '市场/营销', '促销经理', '--');
INSERT INTO `position` VALUES ('519', '41', '25', '0', '市场/营销', '促销主管/督导', '--');
INSERT INTO `position` VALUES ('520', '41', '26', '0', '市场/营销', '促销员/导购', '--');
INSERT INTO `position` VALUES ('521', '41', '27', '0', '市场/营销', '选址拓展/新店开发', '--');
INSERT INTO `position` VALUES ('522', '41', '28', '0', '市场/营销', '其他', '--');
INSERT INTO `position` VALUES ('523', '42', '00', '0', '影视/媒体', '--', '--');
INSERT INTO `position` VALUES ('524', '42', '10', '0', '影视/媒体', '影视/媒体', '--');
INSERT INTO `position` VALUES ('525', '42', '11', '0', '影视/媒体', '影视策划/制作人员', '--');
INSERT INTO `position` VALUES ('526', '42', '12', '0', '影视/媒体', '导演/编导', '--');
INSERT INTO `position` VALUES ('527', '42', '13', '0', '影视/媒体', '艺术/设计总监', '--');
INSERT INTO `position` VALUES ('528', '42', '14', '0', '影视/媒体', '经纪人/星探', '--');
INSERT INTO `position` VALUES ('529', '42', '15', '0', '影视/媒体', '演员/模特/主持人', '--');
INSERT INTO `position` VALUES ('530', '42', '16', '0', '影视/媒体', '摄影师/摄像师', '--');
INSERT INTO `position` VALUES ('531', '42', '17', '0', '影视/媒体', '后期制作', '--');
INSERT INTO `position` VALUES ('532', '42', '18', '0', '影视/媒体', '音效师', '--');
INSERT INTO `position` VALUES ('533', '42', '19', '0', '影视/媒体', '配音员', '--');
INSERT INTO `position` VALUES ('534', '42', '20', '0', '影视/媒体', '放映经理/主管', '--');
INSERT INTO `position` VALUES ('535', '42', '21', '0', '影视/媒体', '放映员', '--');
INSERT INTO `position` VALUES ('536', '42', '22', '0', '影视/媒体', '化妆师/造型师', '--');
INSERT INTO `position` VALUES ('537', '42', '23', '0', '影视/媒体', '其他', '--');
INSERT INTO `position` VALUES ('538', '43', '00', '0', '写作/出版/印刷', '--', '--');
INSERT INTO `position` VALUES ('539', '43', '10', '0', '写作/出版/印刷', '写作/出版/印刷', '--');
INSERT INTO `position` VALUES ('540', '43', '11', '0', '写作/出版/印刷', '总编/副总编', '--');
INSERT INTO `position` VALUES ('541', '43', '12', '0', '写作/出版/印刷', '编辑', '--');
INSERT INTO `position` VALUES ('542', '43', '13', '0', '写作/出版/印刷', '作家/撰稿人', '--');
INSERT INTO `position` VALUES ('543', '43', '14', '0', '写作/出版/印刷', '记者', '--');
INSERT INTO `position` VALUES ('544', '43', '15', '0', '写作/出版/印刷', '电话采编', '--');
INSERT INTO `position` VALUES ('545', '43', '16', '0', '写作/出版/印刷', '美术编辑', '--');
INSERT INTO `position` VALUES ('546', '43', '17', '0', '写作/出版/印刷', '排版设计', '--');
INSERT INTO `position` VALUES ('547', '43', '18', '0', '写作/出版/印刷', '校对/录入', '--');
INSERT INTO `position` VALUES ('548', '43', '19', '0', '写作/出版/印刷', '出版/发行', '--');
INSERT INTO `position` VALUES ('549', '43', '20', '0', '写作/出版/印刷', '电分操作员', '--');
INSERT INTO `position` VALUES ('550', '43', '21', '0', '写作/出版/印刷', '印刷排版/制版', '--');
INSERT INTO `position` VALUES ('551', '43', '22', '0', '写作/出版/印刷', '数码直印/菲林输出', '--');
INSERT INTO `position` VALUES ('552', '43', '23', '0', '写作/出版/印刷', '打稿机操作员', '--');
INSERT INTO `position` VALUES ('553', '43', '24', '0', '写作/出版/印刷', '调墨技师', '--');
INSERT INTO `position` VALUES ('554', '43', '25', '0', '写作/出版/印刷', '印刷机械机长', '--');
INSERT INTO `position` VALUES ('555', '43', '26', '0', '写作/出版/印刷', '晒版/拼版/装订/烫金技工', '--');
INSERT INTO `position` VALUES ('556', '43', '27', '0', '写作/出版/印刷', '其他', '--');
INSERT INTO `position` VALUES ('557', '44', '00', '0', '艺术/设计', '--', '--');
INSERT INTO `position` VALUES ('558', '44', '10', '0', '艺术/设计', '艺术/设计', '--');
INSERT INTO `position` VALUES ('559', '44', '11', '0', '艺术/设计', '平面设计总监', '--');
INSERT INTO `position` VALUES ('560', '44', '12', '0', '艺术/设计', '平面设计经理/主管', '--');
INSERT INTO `position` VALUES ('561', '44', '13', '0', '艺术/设计', '平面设计师', '--');
INSERT INTO `position` VALUES ('562', '44', '14', '0', '艺术/设计', '绘画', '--');
INSERT INTO `position` VALUES ('563', '44', '15', '0', '艺术/设计', '动画/3D设计', '--');
INSERT INTO `position` VALUES ('564', '44', '16', '0', '艺术/设计', '原画师', '--');
INSERT INTO `position` VALUES ('565', '44', '17', '0', '艺术/设计', '展览/展示/店面设计', '--');
INSERT INTO `position` VALUES ('566', '44', '18', '0', '艺术/设计', '多媒体设计', '--');
INSERT INTO `position` VALUES ('567', '44', '19', '0', '艺术/设计', '包装设计', '--');
INSERT INTO `position` VALUES ('568', '44', '20', '0', '艺术/设计', '工业/产品设计', '--');
INSERT INTO `position` VALUES ('569', '44', '21', '0', '艺术/设计', '工艺品/珠宝设计鉴定', '--');
INSERT INTO `position` VALUES ('570', '44', '22', '0', '艺术/设计', '家具/家居用品设计', '--');
INSERT INTO `position` VALUES ('571', '44', '23', '0', '艺术/设计', '玩具设计', '--');
INSERT INTO `position` VALUES ('572', '44', '24', '0', '艺术/设计', '其他', '--');
INSERT INTO `position` VALUES ('573', '45', '00', '0', '建筑装潢/市政建设', '--', '--');
INSERT INTO `position` VALUES ('574', '45', '10', '0', '建筑装潢/市政建设', '建筑装潢/市政建设', '--');
INSERT INTO `position` VALUES ('575', '45', '11', '0', '建筑装潢/市政建设', '高级建筑工程师/总工', '--');
INSERT INTO `position` VALUES ('576', '45', '12', '0', '建筑装潢/市政建设', '建筑工程师', '--');
INSERT INTO `position` VALUES ('577', '45', '13', '0', '建筑装潢/市政建设', '建筑设计师', '--');
INSERT INTO `position` VALUES ('578', '45', '14', '0', '建筑装潢/市政建设', '市政工程师', '--');
INSERT INTO `position` VALUES ('579', '45', '15', '0', '建筑装潢/市政建设', '结构/土木/土建工程师', '--');
INSERT INTO `position` VALUES ('580', '45', '16', '0', '建筑装潢/市政建设', '公路/桥梁/港口/隧道工程', '--');
INSERT INTO `position` VALUES ('581', '45', '17', '0', '建筑装潢/市政建设', '岩土工程', '--');
INSERT INTO `position` VALUES ('582', '45', '18', '0', '建筑装潢/市政建设', '楼宇自动化', '--');
INSERT INTO `position` VALUES ('583', '45', '19', '0', '建筑装潢/市政建设', '建筑机电工程师', '--');
INSERT INTO `position` VALUES ('584', '45', '20', '0', '建筑装潢/市政建设', '安防工程师', '--');
INSERT INTO `position` VALUES ('585', '45', '21', '0', '建筑装潢/市政建设', '给排水/暖通工程', '--');
INSERT INTO `position` VALUES ('586', '45', '22', '0', '建筑装潢/市政建设', '幕墙工程师', '--');
INSERT INTO `position` VALUES ('587', '45', '23', '0', '建筑装潢/市政建设', '规划与设计', '--');
INSERT INTO `position` VALUES ('588', '45', '24', '0', '建筑装潢/市政建设', '室内外装潢设计', '--');
INSERT INTO `position` VALUES ('589', '45', '25', '0', '建筑装潢/市政建设', '园艺/园林/景观设计', '--');
INSERT INTO `position` VALUES ('590', '45', '26', '0', '建筑装潢/市政建设', '测绘/测量', '--');
INSERT INTO `position` VALUES ('591', '45', '27', '0', '建筑装潢/市政建设', '建筑制图', '--');
INSERT INTO `position` VALUES ('592', '45', '28', '0', '建筑装潢/市政建设', '开发报建', '--');
INSERT INTO `position` VALUES ('593', '45', '29', '0', '建筑装潢/市政建设', '工程造价师/预结算经理', '--');
INSERT INTO `position` VALUES ('594', '45', '30', '0', '建筑装潢/市政建设', '预结算员', '--');
INSERT INTO `position` VALUES ('595', '45', '31', '0', '建筑装潢/市政建设', '建筑工程管理/项目经理', '--');
INSERT INTO `position` VALUES ('596', '45', '32', '0', '建筑装潢/市政建设', '建筑工程验收', '--');
INSERT INTO `position` VALUES ('597', '45', '33', '0', '建筑装潢/市政建设', '工程监理', '--');
INSERT INTO `position` VALUES ('598', '45', '34', '0', '建筑装潢/市政建设', '合同管理', '--');
INSERT INTO `position` VALUES ('599', '45', '35', '0', '建筑装潢/市政建设', '安全员', '--');
INSERT INTO `position` VALUES ('600', '45', '36', '0', '建筑装潢/市政建设', '资料员', '--');
INSERT INTO `position` VALUES ('601', '45', '37', '0', '建筑装潢/市政建设', '施工员', '--');
INSERT INTO `position` VALUES ('602', '45', '38', '0', '建筑装潢/市政建设', '其他', '--');
INSERT INTO `position` VALUES ('603', '46', '00', '0', '房地产', '--', '--');
INSERT INTO `position` VALUES ('604', '46', '10', '0', '房地产', '房地产', '--');
INSERT INTO `position` VALUES ('605', '46', '11', '0', '房地产', '房地产项目/开发/策划经理', '--');
INSERT INTO `position` VALUES ('606', '46', '12', '0', '房地产', '房地产项目/开发/策划主管/专员', '--');
INSERT INTO `position` VALUES ('607', '46', '13', '0', '房地产', '房产项目配套工程师', '--');
INSERT INTO `position` VALUES ('608', '46', '14', '0', '房地产', '房地产项目招投标', '--');
INSERT INTO `position` VALUES ('609', '46', '15', '0', '房地产', '房地产评估', '--');
INSERT INTO `position` VALUES ('610', '46', '16', '0', '房地产', '房地产中介/交易', '--');
INSERT INTO `position` VALUES ('611', '46', '17', '0', '房地产', '房地产销售经理/主管', '--');
INSERT INTO `position` VALUES ('612', '46', '18', '0', '房地产', '房地产销售人员', '--');
INSERT INTO `position` VALUES ('613', '46', '19', '0', '房地产', '其他', '--');
INSERT INTO `position` VALUES ('614', '46', '20', '0', '房地产', '项目总监', '--');
INSERT INTO `position` VALUES ('615', '46', '21', '0', '房地产', '项目经理', '--');
INSERT INTO `position` VALUES ('616', '46', '22', '0', '房地产', '项目主管', '--');
INSERT INTO `position` VALUES ('617', '46', '23', '0', '房地产', '质量管理', '--');
INSERT INTO `position` VALUES ('618', '46', '24', '0', '房地产', '研发总监', '--');
INSERT INTO `position` VALUES ('619', '46', '25', '0', '房地产', '研发经理', '--');
INSERT INTO `position` VALUES ('620', '46', '26', '0', '房地产', '研发主管', '--');
INSERT INTO `position` VALUES ('621', '46', '27', '0', '房地产', '研发工程师', '--');
INSERT INTO `position` VALUES ('622', '46', '28', '0', '房地产', '助理研发工程师', '--');
INSERT INTO `position` VALUES ('623', '46', '29', '0', '房地产', '设计总监', '--');
INSERT INTO `position` VALUES ('624', '46', '30', '0', '房地产', '设计经理', '--');
INSERT INTO `position` VALUES ('625', '46', '31', '0', '房地产', '设计主管', '--');
INSERT INTO `position` VALUES ('626', '47', '00', '0', '物业管理', '--', '--');
INSERT INTO `position` VALUES ('627', '47', '10', '0', '物业管理', '物业管理', '--');
INSERT INTO `position` VALUES ('628', '47', '11', '0', '物业管理', '高级物业顾问/物业顾问', '--');
INSERT INTO `position` VALUES ('629', '47', '12', '0', '物业管理', '物业管理经理/主管', '--');
INSERT INTO `position` VALUES ('630', '47', '13', '0', '物业管理', '物业管理专员/助理', '--');
INSERT INTO `position` VALUES ('631', '47', '14', '0', '物业管理', '物业招商/租赁/租售', '--');
INSERT INTO `position` VALUES ('632', '47', '15', '0', '物业管理', '物业设施管理人员', '--');
INSERT INTO `position` VALUES ('633', '47', '16', '0', '物业管理', '物业机电工程师', '--');
INSERT INTO `position` VALUES ('634', '47', '17', '0', '物业管理', '物业维修人员', '--');
INSERT INTO `position` VALUES ('635', '47', '18', '0', '物业管理', '其他', '--');
INSERT INTO `position` VALUES ('636', '48', '00', '0', '人力资源', '--', '--');
INSERT INTO `position` VALUES ('637', '48', '10', '0', '人力资源', '人力资源', '--');
INSERT INTO `position` VALUES ('638', '48', '11', '0', '人力资源', '人事总监', '--');
INSERT INTO `position` VALUES ('639', '48', '12', '0', '人力资源', '人事经理', '--');
INSERT INTO `position` VALUES ('640', '48', '13', '0', '人力资源', '人事主管', '--');
INSERT INTO `position` VALUES ('641', '48', '14', '0', '人力资源', '人事专员', '--');
INSERT INTO `position` VALUES ('642', '48', '15', '0', '人力资源', '人事助理', '--');
INSERT INTO `position` VALUES ('643', '48', '16', '0', '人力资源', '招聘经理/主管', '--');
INSERT INTO `position` VALUES ('644', '48', '17', '0', '人力资源', '招聘专员/助理', '--');
INSERT INTO `position` VALUES ('645', '48', '18', '0', '人力资源', '薪资福利经理/主管', '--');
INSERT INTO `position` VALUES ('646', '48', '19', '0', '人力资源', '薪资福利专员/助理', '--');
INSERT INTO `position` VALUES ('647', '48', '20', '0', '人力资源', '绩效考核经理/主管', '--');
INSERT INTO `position` VALUES ('648', '48', '21', '0', '人力资源', '绩效考核专员/助理', '--');
INSERT INTO `position` VALUES ('649', '48', '22', '0', '人力资源', '培训经理/主管', '--');
INSERT INTO `position` VALUES ('650', '48', '23', '0', '人力资源', '培训专员/助理/培训师', '--');
INSERT INTO `position` VALUES ('651', '48', '24', '0', '人力资源', '企业文化/员工关系/工会管理', '--');
INSERT INTO `position` VALUES ('652', '48', '25', '0', '人力资源', '人力资源信息系统专员', '--');
INSERT INTO `position` VALUES ('653', '48', '26', '0', '人力资源', '其他', '--');
INSERT INTO `position` VALUES ('654', '48', '27', '0', '人力资源', '人力资源总监', '--');
INSERT INTO `position` VALUES ('655', '48', '28', '0', '人力资源', '人力资源经理', '--');
INSERT INTO `position` VALUES ('656', '48', '29', '0', '人力资源', '人力资源主管', '--');
INSERT INTO `position` VALUES ('657', '48', '30', '0', '人力资源', '人力资源专员', '--');
INSERT INTO `position` VALUES ('658', '49', '00', '0', '高级管理', '--', '--');
INSERT INTO `position` VALUES ('659', '49', '10', '0', '高级管理', '高级管理', '--');
INSERT INTO `position` VALUES ('660', '49', '11', '0', '高级管理', '首席执行官CEO/总裁/总经理', '--');
INSERT INTO `position` VALUES ('661', '49', '12', '0', '高级管理', '首席运营官COO', '--');
INSERT INTO `position` VALUES ('662', '49', '13', '0', '高级管理', '副总经理/副总裁', '--');
INSERT INTO `position` VALUES ('663', '49', '14', '0', '高级管理', '总监/部门经理', '--');
INSERT INTO `position` VALUES ('664', '49', '15', '0', '高级管理', '策略发展总监', '--');
INSERT INTO `position` VALUES ('665', '49', '16', '0', '高级管理', '办事处首席代表', '--');
INSERT INTO `position` VALUES ('666', '49', '17', '0', '高级管理', '办事处/分公司/分支机构经理', '--');
INSERT INTO `position` VALUES ('667', '49', '18', '0', '高级管理', '总裁助理/总经理助理', '--');
INSERT INTO `position` VALUES ('668', '49', '19', '0', '高级管理', '其他', '--');
INSERT INTO `position` VALUES ('669', '49', '20', '0', '高级管理', '运营总监', '--');
INSERT INTO `position` VALUES ('670', '49', '21', '0', '高级管理', '运营经理', '--');
INSERT INTO `position` VALUES ('671', '49', '22', '0', '高级管理', '运营主管', '--');
INSERT INTO `position` VALUES ('672', '50', '00', '0', '行政/后勤', '--', '--');
INSERT INTO `position` VALUES ('673', '50', '10', '0', '行政/后勤', '行政/后勤', '--');
INSERT INTO `position` VALUES ('674', '50', '11', '0', '行政/后勤', '行政总监', '--');
INSERT INTO `position` VALUES ('675', '50', '12', '0', '行政/后勤', '行政经理/主管/办公室主任', '--');
INSERT INTO `position` VALUES ('676', '50', '13', '0', '行政/后勤', '行政专员/助理', '--');
INSERT INTO `position` VALUES ('677', '50', '14', '0', '行政/后勤', '经理助理/秘书', '--');
INSERT INTO `position` VALUES ('678', '50', '15', '0', '行政/后勤', '前台接待/总机/接待生', '--');
INSERT INTO `position` VALUES ('679', '50', '16', '0', '行政/后勤', '后勤', '--');
INSERT INTO `position` VALUES ('680', '50', '17', '0', '行政/后勤', '图书管理员/资料管理员', '--');
INSERT INTO `position` VALUES ('681', '50', '18', '0', '行政/后勤', '电脑操作员/打字员', '--');
INSERT INTO `position` VALUES ('682', '50', '19', '0', '行政/后勤', '其他', '--');
INSERT INTO `position` VALUES ('683', '51', '00', '0', '咨询/顾问', '--', '--');
INSERT INTO `position` VALUES ('684', '51', '10', '0', '咨询/顾问', '咨询/顾问', '--');
INSERT INTO `position` VALUES ('685', '51', '11', '0', '咨询/顾问', '专业顾问', '--');
INSERT INTO `position` VALUES ('686', '51', '12', '0', '咨询/顾问', '咨询总监', '--');
INSERT INTO `position` VALUES ('687', '51', '13', '0', '咨询/顾问', '咨询经理', '--');
INSERT INTO `position` VALUES ('688', '51', '14', '0', '咨询/顾问', '专业培训师', '--');
INSERT INTO `position` VALUES ('689', '51', '15', '0', '咨询/顾问', '咨询员', '--');
INSERT INTO `position` VALUES ('690', '51', '16', '0', '咨询/顾问', '调研员', '--');
INSERT INTO `position` VALUES ('691', '51', '17', '0', '咨询/顾问', '猎头/人才中介', '--');
INSERT INTO `position` VALUES ('692', '51', '18', '0', '咨询/顾问', '情报信息分析人员', '--');
INSERT INTO `position` VALUES ('693', '51', '19', '0', '咨询/顾问', '其他', '--');
INSERT INTO `position` VALUES ('694', '52', '00', '0', '律师/法务/合规', '--', '--');
INSERT INTO `position` VALUES ('695', '52', '10', '0', '律师/法务/合规', '律师/法务/合规', '--');
INSERT INTO `position` VALUES ('696', '52', '11', '0', '律师/法务/合规', '律师/法律顾问', '--');
INSERT INTO `position` VALUES ('697', '52', '12', '0', '律师/法务/合规', '律师助理', '--');
INSERT INTO `position` VALUES ('698', '52', '13', '0', '律师/法务/合规', '法务经理', '--');
INSERT INTO `position` VALUES ('699', '52', '14', '0', '律师/法务/合规', '法务主管/专员', '--');
INSERT INTO `position` VALUES ('700', '52', '15', '0', '律师/法务/合规', '法务助理', '--');
INSERT INTO `position` VALUES ('701', '52', '16', '0', '律师/法务/合规', '合规经理', '--');
INSERT INTO `position` VALUES ('702', '52', '17', '0', '律师/法务/合规', '合规主管/专员', '--');
INSERT INTO `position` VALUES ('703', '52', '18', '0', '律师/法务/合规', '知识产权/专利顾问/专员', '--');
INSERT INTO `position` VALUES ('704', '52', '19', '0', '律师/法务/合规', '其他', '--');
INSERT INTO `position` VALUES ('705', '53', '00', '0', '教师', '--', '--');
INSERT INTO `position` VALUES ('706', '53', '10', '0', '教师', '教师', '--');
INSERT INTO `position` VALUES ('707', '53', '11', '0', '教师', '校长', '--');
INSERT INTO `position` VALUES ('708', '53', '12', '0', '教师', '大学教授', '--');
INSERT INTO `position` VALUES ('709', '53', '13', '0', '教师', '讲师/助教', '--');
INSERT INTO `position` VALUES ('710', '53', '14', '0', '教师', '中学教师', '--');
INSERT INTO `position` VALUES ('711', '53', '15', '0', '教师', '小学教师', '--');
INSERT INTO `position` VALUES ('712', '53', '16', '0', '教师', '幼教', '--');
INSERT INTO `position` VALUES ('713', '53', '17', '0', '教师', '院校教务管理人员', '--');
INSERT INTO `position` VALUES ('714', '53', '18', '0', '教师', '兼职教师', '--');
INSERT INTO `position` VALUES ('715', '53', '19', '0', '教师', '家教', '--');
INSERT INTO `position` VALUES ('716', '53', '20', '0', '教师', '职业技术教师', '--');
INSERT INTO `position` VALUES ('717', '53', '21', '0', '教师', '其他', '--');
INSERT INTO `position` VALUES ('718', '54', '00', '0', '培训', '--', '--');
INSERT INTO `position` VALUES ('719', '54', '10', '0', '培训', '培训', '--');
INSERT INTO `position` VALUES ('720', '54', '11', '0', '培训', '培训督导', '--');
INSERT INTO `position` VALUES ('721', '54', '12', '0', '培训', '培训讲师', '--');
INSERT INTO `position` VALUES ('722', '54', '13', '0', '培训', '培训策划', '--');
INSERT INTO `position` VALUES ('723', '54', '14', '0', '培训', '培训产品开发', '--');
INSERT INTO `position` VALUES ('724', '54', '15', '0', '培训', '培训/课程顾问', '--');
INSERT INTO `position` VALUES ('725', '54', '16', '0', '培训', '培训助理', '--');
INSERT INTO `position` VALUES ('726', '54', '17', '0', '培训', '其他', '--');
INSERT INTO `position` VALUES ('727', '55', '00', '0', '科研人员', '--', '--');
INSERT INTO `position` VALUES ('728', '55', '10', '0', '科研人员', '科研人员', '--');
INSERT INTO `position` VALUES ('729', '55', '11', '0', '科研人员', '科研管理人员', '--');
INSERT INTO `position` VALUES ('730', '55', '12', '0', '科研人员', '科研人员', '--');
INSERT INTO `position` VALUES ('731', '56', '00', '0', '餐饮/娱乐', '--', '--');
INSERT INTO `position` VALUES ('732', '56', '10', '0', '餐饮/娱乐', '餐饮/娱乐', '--');
INSERT INTO `position` VALUES ('733', '56', '11', '0', '餐饮/娱乐', '餐饮/娱乐管理', '--');
INSERT INTO `position` VALUES ('734', '56', '12', '0', '餐饮/娱乐', '餐饮/娱乐领班/部长', '--');
INSERT INTO `position` VALUES ('735', '56', '13', '0', '餐饮/娱乐', '餐饮/娱乐服务员', '--');
INSERT INTO `position` VALUES ('736', '56', '14', '0', '餐饮/娱乐', '传菜主管/传菜员', '--');
INSERT INTO `position` VALUES ('737', '56', '15', '0', '餐饮/娱乐', '礼仪/迎宾', '--');
INSERT INTO `position` VALUES ('738', '56', '16', '0', '餐饮/娱乐', '司仪', '--');
INSERT INTO `position` VALUES ('739', '56', '17', '0', '餐饮/娱乐', '行政主厨/厨师长', '--');
INSERT INTO `position` VALUES ('740', '56', '18', '0', '餐饮/娱乐', '厨师/面点师', '--');
INSERT INTO `position` VALUES ('741', '56', '19', '0', '餐饮/娱乐', '调酒师/吧台员', '--');
INSERT INTO `position` VALUES ('742', '56', '20', '0', '餐饮/娱乐', '茶艺师', '--');
INSERT INTO `position` VALUES ('743', '56', '21', '0', '餐饮/娱乐', '其他', '--');
INSERT INTO `position` VALUES ('744', '57', '00', '0', '酒店/旅游', '--', '--');
INSERT INTO `position` VALUES ('745', '57', '10', '0', '酒店/旅游', '酒店/旅游', '--');
INSERT INTO `position` VALUES ('746', '57', '11', '0', '酒店/旅游', '酒店/宾馆经理', '--');
INSERT INTO `position` VALUES ('747', '57', '12', '0', '酒店/旅游', '酒店/宾馆营销', '--');
INSERT INTO `position` VALUES ('748', '57', '13', '0', '酒店/旅游', '宴会管理', '--');
INSERT INTO `position` VALUES ('749', '57', '14', '0', '酒店/旅游', '大堂经理', '--');
INSERT INTO `position` VALUES ('750', '57', '15', '0', '酒店/旅游', '宾客服务经理', '--');
INSERT INTO `position` VALUES ('751', '57', '16', '0', '酒店/旅游', '楼面经理', '--');
INSERT INTO `position` VALUES ('752', '57', '17', '0', '酒店/旅游', '前厅接待', '--');
INSERT INTO `position` VALUES ('753', '57', '18', '0', '酒店/旅游', '预定部主管', '--');
INSERT INTO `position` VALUES ('754', '57', '19', '0', '酒店/旅游', '预定员', '--');
INSERT INTO `position` VALUES ('755', '57', '20', '0', '酒店/旅游', '客房服务员/楼面服务员', '--');
INSERT INTO `position` VALUES ('756', '57', '21', '0', '酒店/旅游', '机场代表', '--');
INSERT INTO `position` VALUES ('757', '57', '22', '0', '酒店/旅游', '行李员', '--');
INSERT INTO `position` VALUES ('758', '57', '23', '0', '酒店/旅游', '管家部经理/主管', '--');
INSERT INTO `position` VALUES ('759', '57', '24', '0', '酒店/旅游', '清洁服务人员', '--');
INSERT INTO `position` VALUES ('760', '57', '25', '0', '酒店/旅游', '健身房服务', '--');
INSERT INTO `position` VALUES ('761', '57', '26', '0', '酒店/旅游', '旅游产品销售', '--');
INSERT INTO `position` VALUES ('762', '57', '27', '0', '酒店/旅游', '导游/旅行顾问', '--');
INSERT INTO `position` VALUES ('763', '57', '28', '0', '酒店/旅游', '行程管理/操作', '--');
INSERT INTO `position` VALUES ('764', '57', '29', '0', '酒店/旅游', '票务/订房服务', '--');
INSERT INTO `position` VALUES ('765', '57', '30', '0', '酒店/旅游', '签证专员', '--');
INSERT INTO `position` VALUES ('766', '57', '31', '0', '酒店/旅游', '其他', '--');
INSERT INTO `position` VALUES ('767', '58', '00', '0', '美容/健身/体育', '--', '--');
INSERT INTO `position` VALUES ('768', '58', '10', '0', '美容/健身/体育', '美容/健身/体育', '--');
INSERT INTO `position` VALUES ('769', '58', '11', '0', '美容/健身/体育', '美容顾问/化妆', '--');
INSERT INTO `position` VALUES ('770', '58', '12', '0', '美容/健身/体育', '彩妆培训师', '--');
INSERT INTO `position` VALUES ('771', '58', '13', '0', '美容/健身/体育', '专柜彩妆顾问(BA)', '--');
INSERT INTO `position` VALUES ('772', '58', '14', '0', '美容/健身/体育', '美容助理/见席美容师', '--');
INSERT INTO `position` VALUES ('773', '58', '15', '0', '美容/健身/体育', '瘦身顾问', '--');
INSERT INTO `position` VALUES ('774', '58', '16', '0', '美容/健身/体育', '发型师', '--');
INSERT INTO `position` VALUES ('775', '58', '17', '0', '美容/健身/体育', '发型助理/学徒', '--');
INSERT INTO `position` VALUES ('776', '58', '18', '0', '美容/健身/体育', '美甲师', '--');
INSERT INTO `position` VALUES ('777', '58', '19', '0', '美容/健身/体育', '按摩/足疗', '--');
INSERT INTO `position` VALUES ('778', '58', '20', '0', '美容/健身/体育', '健身顾问/教练', '--');
INSERT INTO `position` VALUES ('779', '58', '21', '0', '美容/健身/体育', '体育运动教练', '--');
INSERT INTO `position` VALUES ('780', '58', '22', '0', '美容/健身/体育', '救生员', '--');
INSERT INTO `position` VALUES ('781', '58', '23', '0', '美容/健身/体育', '瑜伽/舞蹈老师', '--');
INSERT INTO `position` VALUES ('782', '58', '24', '0', '美容/健身/体育', '宠物护理/美容', '--');
INSERT INTO `position` VALUES ('783', '58', '25', '0', '美容/健身/体育', '其他', '--');
INSERT INTO `position` VALUES ('784', '59', '00', '0', '百货/连锁/零售服务', '--', '--');
INSERT INTO `position` VALUES ('785', '59', '10', '0', '百货/连锁/零售服务', '百货/连锁/零售服务', '--');
INSERT INTO `position` VALUES ('786', '59', '11', '0', '百货/连锁/零售服务', '店长/卖场经理/楼面管理', '--');
INSERT INTO `position` VALUES ('787', '59', '12', '0', '百货/连锁/零售服务', '品类经理', '--');
INSERT INTO `position` VALUES ('788', '59', '13', '0', '百货/连锁/零售服务', '店员/营业员', '--');
INSERT INTO `position` VALUES ('789', '59', '14', '0', '百货/连锁/零售服务', '安防主管', '--');
INSERT INTO `position` VALUES ('790', '59', '15', '0', '百货/连锁/零售服务', '防损员/内保', '--');
INSERT INTO `position` VALUES ('791', '59', '16', '0', '百货/连锁/零售服务', '收银主管/收银员', '--');
INSERT INTO `position` VALUES ('792', '59', '17', '0', '百货/连锁/零售服务', '理货员/陈列员/收货员', '--');
INSERT INTO `position` VALUES ('793', '59', '18', '0', '百货/连锁/零售服务', '导购员', '--');
INSERT INTO `position` VALUES ('794', '59', '19', '0', '百货/连锁/零售服务', '西点师/面包糕点加工', '--');
INSERT INTO `position` VALUES ('795', '59', '20', '0', '百货/连锁/零售服务', '生鲜食品加工/处理', '--');
INSERT INTO `position` VALUES ('796', '59', '21', '0', '百货/连锁/零售服务', '熟食加工', '--');
INSERT INTO `position` VALUES ('797', '59', '22', '0', '百货/连锁/零售服务', '兼职店员', '--');
INSERT INTO `position` VALUES ('798', '59', '23', '0', '百货/连锁/零售服务', '其他', '--');
INSERT INTO `position` VALUES ('799', '60', '00', '0', '交通运输服务', '--', '--');
INSERT INTO `position` VALUES ('800', '60', '10', '0', '交通运输服务', '交通运输服务', '--');
INSERT INTO `position` VALUES ('801', '60', '11', '0', '交通运输服务', '飞机机长/副机长', '--');
INSERT INTO `position` VALUES ('802', '60', '12', '0', '交通运输服务', '空乘人员', '--');
INSERT INTO `position` VALUES ('803', '60', '13', '0', '交通运输服务', '地勤人员', '--');
INSERT INTO `position` VALUES ('804', '60', '14', '0', '交通运输服务', '列车/地铁车长', '--');
INSERT INTO `position` VALUES ('805', '60', '15', '0', '交通运输服务', '列车/地铁司机', '--');
INSERT INTO `position` VALUES ('806', '60', '16', '0', '交通运输服务', '船长/副船长', '--');
INSERT INTO `position` VALUES ('807', '60', '17', '0', '交通运输服务', '船员', '--');
INSERT INTO `position` VALUES ('808', '60', '18', '0', '交通运输服务', '乘务员', '--');
INSERT INTO `position` VALUES ('809', '60', '19', '0', '交通运输服务', '司机', '--');
INSERT INTO `position` VALUES ('810', '60', '20', '0', '交通运输服务', '其他', '--');
INSERT INTO `position` VALUES ('811', '61', '00', '0', '保安/家政/其他服务', '--', '--');
INSERT INTO `position` VALUES ('812', '61', '10', '0', '保安/家政/其他服务', '保安/家政/其他服务', '--');
INSERT INTO `position` VALUES ('813', '61', '11', '0', '交通运输服务', '保安经理', '--');
INSERT INTO `position` VALUES ('814', '61', '12', '0', '交通运输服务', '保安人员', '--');
INSERT INTO `position` VALUES ('815', '61', '13', '0', '交通运输服务', '保镖', '--');
INSERT INTO `position` VALUES ('816', '61', '14', '0', '交通运输服务', '寻呼员/话务员', '--');
INSERT INTO `position` VALUES ('817', '61', '15', '0', '交通运输服务', '搬运工', '--');
INSERT INTO `position` VALUES ('818', '61', '16', '0', '交通运输服务', '清洁工', '--');
INSERT INTO `position` VALUES ('819', '61', '17', '0', '交通运输服务', '家政服务/保姆', '--');
INSERT INTO `position` VALUES ('820', '61', '18', '0', '交通运输服务', '其他', '--');
INSERT INTO `position` VALUES ('821', '62', '00', '0', '公务员', '--', '--');
INSERT INTO `position` VALUES ('822', '62', '10', '0', '公务员', '公务员', '--');
INSERT INTO `position` VALUES ('823', '63', '00', '0', '翻译', '--', '--');
INSERT INTO `position` VALUES ('824', '63', '10', '0', '翻译', '翻译', '--');
INSERT INTO `position` VALUES ('825', '63', '11', '0', '翻译', '英语翻译', '--');
INSERT INTO `position` VALUES ('826', '63', '12', '0', '翻译', '日语翻译', '--');
INSERT INTO `position` VALUES ('827', '63', '13', '0', '翻译', '德语翻译', '--');
INSERT INTO `position` VALUES ('828', '63', '14', '0', '翻译', '法语翻译', '--');
INSERT INTO `position` VALUES ('829', '63', '15', '0', '翻译', '俄语翻译', '--');
INSERT INTO `position` VALUES ('830', '63', '16', '0', '翻译', '意大利语翻译', '--');
INSERT INTO `position` VALUES ('831', '63', '17', '0', '翻译', '西班牙语翻译', '--');
INSERT INTO `position` VALUES ('832', '63', '18', '0', '翻译', '葡萄牙语翻译', '--');
INSERT INTO `position` VALUES ('833', '63', '19', '0', '翻译', '阿拉伯语翻译', '--');
INSERT INTO `position` VALUES ('834', '63', '20', '0', '翻译', '韩语/朝鲜语翻译', '--');
INSERT INTO `position` VALUES ('835', '63', '21', '0', '翻译', '泰语翻译', '--');
INSERT INTO `position` VALUES ('836', '63', '22', '0', '翻译', '中国方言翻译', '--');
INSERT INTO `position` VALUES ('837', '63', '23', '0', '翻译', '其他语种翻译', '--');
INSERT INTO `position` VALUES ('838', '64', '00', '0', '在校学生', '--', '--');
INSERT INTO `position` VALUES ('839', '64', '10', '0', '在校学生', '在校学生', '--');
INSERT INTO `position` VALUES ('840', '64', '11', '0', '在校学生', '研究生', '--');
INSERT INTO `position` VALUES ('841', '64', '12', '0', '在校学生', '大学/大专应届毕业生', '--');
INSERT INTO `position` VALUES ('842', '64', '13', '0', '在校学生', '中专/职校生', '--');
INSERT INTO `position` VALUES ('843', '64', '14', '0', '在校学生', '其他', '--');
INSERT INTO `position` VALUES ('844', '65', '00', '0', '储备干部/培训生/实习生', '--', '--');
INSERT INTO `position` VALUES ('845', '65', '10', '0', '储备干部/培训生/实习生', '储备干部/培训生/实习生', '--');
INSERT INTO `position` VALUES ('846', '65', '11', '0', '储备干部/培训生/实习生', '储备干部', '--');
INSERT INTO `position` VALUES ('847', '65', '12', '0', '储备干部/培训生/实习生', '培训生', '--');
INSERT INTO `position` VALUES ('848', '65', '13', '0', '储备干部/培训生/实习生', '实习生', '--');
INSERT INTO `position` VALUES ('849', '66', '00', '0', '兼职', '--', '--');
INSERT INTO `position` VALUES ('850', '66', '10', '0', '兼职', '兼职', '--');
INSERT INTO `position` VALUES ('851', '67', '00', '0', '其他', '--', '--');
INSERT INTO `position` VALUES ('852', '67', '10', '0', '其他', '其他', '--');
INSERT INTO `position` VALUES ('853', '67', '11', '0', '其他', '驯兽师/助理驯兽师', '--');
INSERT INTO `position` VALUES ('854', '67', '12', '0', '其他', '志愿者', '--');
INSERT INTO `position` VALUES ('855', '68', '00', '0', '环保', '--', '--');
INSERT INTO `position` VALUES ('856', '68', '10', '0', '环保', '环保', '--');
INSERT INTO `position` VALUES ('857', '68', '11', '0', '环保', '环保工程师', '--');
INSERT INTO `position` VALUES ('858', '68', '12', '0', '环保', '环境影响评价工程师', '--');
INSERT INTO `position` VALUES ('859', '68', '13', '0', '环保', '环保检测', '--');
INSERT INTO `position` VALUES ('860', '68', '14', '0', '环保', '水质检测员', '--');
INSERT INTO `position` VALUES ('861', '68', '15', '0', '环保', '污水处理工程师', '--');
INSERT INTO `position` VALUES ('862', '68', '16', '0', '环保', '固废工程师', '--');
INSERT INTO `position` VALUES ('863', '68', '17', '0', '环保', '其它', '--');
INSERT INTO `position` VALUES ('864', '69', '00', '0', '农/林/牧/渔', '--', '--');
INSERT INTO `position` VALUES ('865', '69', '10', '0', '农/林/牧/渔', '农/林/牧/渔', '--');
INSERT INTO `position` VALUES ('866', '69', '11', '0', '农/林/牧/渔', '养殖部主管', '--');
INSERT INTO `position` VALUES ('867', '69', '12', '0', '农/林/牧/渔', '场长(农/林/牧/渔业)', '--');
INSERT INTO `position` VALUES ('868', '69', '13', '0', '农/林/牧/渔', '农艺师', '--');
INSERT INTO `position` VALUES ('869', '69', '14', '0', '农/林/牧/渔', '畜牧师', '--');
INSERT INTO `position` VALUES ('870', '69', '15', '0', '农/林/牧/渔', '饲养员', '--');
INSERT INTO `position` VALUES ('871', '69', '16', '0', '农/林/牧/渔', '动物营养/饲料研发', '--');
INSERT INTO `position` VALUES ('872', '69', '17', '0', '农/林/牧/渔', '其他', '--');

-- ----------------------------
-- Table structure for `seeker`
-- ----------------------------
DROP TABLE IF EXISTS `seeker`;
CREATE TABLE `seeker` (
  `id` int(8) NOT NULL auto_increment,
  `account` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(20) default NULL,
  `sex` varchar(20) default NULL,
  `age` varchar(20) default NULL,
  `addr` varchar(50) default NULL,
  `tel` varchar(11) NOT NULL,
  `cardId` varchar(18) default NULL,
  `political` varchar(20) default NULL,
  `email` varchar(204) NOT NULL,
  `qq` varchar(20) default NULL,
  `state` int(2) NOT NULL,
  `education` varchar(50) default NULL,
  `background` varchar(100) default NULL,
  `text` varchar(1024) default NULL,
  `file` varchar(1024) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seeker
-- ----------------------------
INSERT INTO `seeker` VALUES ('1', 'user', '1', '求职者1', '1', '1992/02/03', '大连', '18485648854', '123123123123123', '普通群众', 'wwww@qq.com', '1', '1', '中转', '已参加工作', '活泼开朗', '');
INSERT INTO `seeker` VALUES ('2', 'user2', '1', '求职者2', '2', '1992/02/03', '大连', '15484589964', '123123123123123', '普通群众', 'wwww@qq.com', null, '2', '本科', '已参加工作', '活泼开朗', null);
INSERT INTO `seeker` VALUES ('3', 'user3', '1', '求职者3', '1', '1992/02/03', '大连', '13444444444', '123123123123123', '普通群众', 'wwww@qq.com', null, '3', '本科', '已参加工作', '活泼开朗', null);
INSERT INTO `seeker` VALUES ('4', 'user4', '1', '求职者4', '2', '1992/02/03', '大连', '13444444444', '123123123123123', '普通群众', 'wwww@qq.com', null, '1', '双学位', '已参加工作', '活泼开朗', null);
INSERT INTO `seeker` VALUES ('5', 'user5', '1', '求职者5', '2', '1992/02/03', '大连', '13444444444', '123123123123123', '普通群众', 'wwww@qq.com', null, '2', '双学位', '已参加工作', '活泼开朗', null);
INSERT INTO `seeker` VALUES ('12', 'user5', '1', '求职者6', '1', '1992/02/03', '大连', '13444444444', '123123123123123', '党员', 'wwww@qq.com', null, '1', '双学位', '已参加工作', '活泼开朗', null);
INSERT INTO `seeker` VALUES ('13', '123', '1', '求职者7', '1', '1992/02/03', '大连', '13298984485', '2484484614546546', '预备党员', 'asdaa@qq.com', '717171717', '2', '硕士', '目前在读/应届生', '爱好广泛', null);

-- ----------------------------
-- Table structure for `work`
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `id` int(8) NOT NULL auto_increment,
  `jid` int(8) NOT NULL,
  `pid` int(8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('1', '1', '125');
INSERT INTO `work` VALUES ('16', '2', '125');
INSERT INTO `work` VALUES ('17', '3', '125');
INSERT INTO `work` VALUES ('18', '4', '125');
INSERT INTO `work` VALUES ('19', '5', '125');
INSERT INTO `work` VALUES ('20', '6', '125');
INSERT INTO `work` VALUES ('21', '7', '125');
INSERT INTO `work` VALUES ('22', '8', '125');
INSERT INTO `work` VALUES ('23', '9', '125');
INSERT INTO `work` VALUES ('24', '1', '125');
INSERT INTO `work` VALUES ('25', '1', '125');
INSERT INTO `work` VALUES ('26', '12', '125');
INSERT INTO `work` VALUES ('27', '1', '125');
INSERT INTO `work` VALUES ('28', '12', '125');
INSERT INTO `work` VALUES ('29', '1', '125');
INSERT INTO `work` VALUES ('30', '12', '125');
INSERT INTO `work` VALUES ('31', '1', '125');
INSERT INTO `work` VALUES ('32', '1', '125');
INSERT INTO `work` VALUES ('33', '1', '125');
INSERT INTO `work` VALUES ('34', '1', '125');
INSERT INTO `work` VALUES ('35', '1', '125');
INSERT INTO `work` VALUES ('36', '1', '125');
INSERT INTO `work` VALUES ('37', '11', '125');
INSERT INTO `work` VALUES ('38', '1', '125');
INSERT INTO `work` VALUES ('39', '11', '125');
INSERT INTO `work` VALUES ('40', '59', '7');
INSERT INTO `work` VALUES ('41', '60', '26');
