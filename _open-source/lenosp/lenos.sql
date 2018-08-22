/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17 : Database - lenos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lenos` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lenos`;

/*Table structure for table `act_assignee` */

DROP TABLE IF EXISTS `act_assignee`;

CREATE TABLE `act_assignee` (
  `id` varchar(32) NOT NULL,
  `sid` varchar(32) NOT NULL COMMENT '节点id',
  `assignee` varchar(64) DEFAULT NULL COMMENT '办理人',
  `role_id` varchar(32) DEFAULT NULL COMMENT '候选组(角色)',
  `assignee_type` int(11) NOT NULL COMMENT '办理人类型1办理人2候选人3组',
  `activti_name` varchar(128) DEFAULT NULL COMMENT '节点名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `act_assignee` */

insert  into `act_assignee`(`id`,`sid`,`assignee`,`role_id`,`assignee_type`,`activti_name`) values ('34b48edb038711e884f1201a068c6482','user1',NULL,'0ea934e5e55411e7b983201a068c6482',3,'经理审批'),('34b563e0038711e884f1201a068c6482','user2',NULL,'0ea934e5e55411e7b983201a068c6482',3,'人事审批');

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('142518',7,'source',NULL,'{\"resourceId\":\"142517\",\"properties\":{\"process_id\":\"process_leave\",\"name\":\"请假流程\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\",\"conditionsequenceflow\":\"${flag==true}\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-A4504FD2-0204-42F5-9061-4A42982DB498\",\"properties\":{\"overrideid\":\"start\",\"name\":\"start\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0D258C24-1F19-4233-A976-A0D8CB9DAEAC\"}],\"bounds\":{\"lowerRight\":{\"x\":75,\"y\":84.99999735090464},\"upperLeft\":{\"x\":45.00000000000001,\"y\":54.99999735090463}},\"dockers\":[]},{\"resourceId\":\"sid-468A965E-939B-4731-A229-5178D6A0BB84\",\"properties\":{\"overrideid\":\"user1\",\"name\":\"经理审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"com.len.actlistener.ActNodeListener\",\"className\":\"com.len.actlistener.ActNodeListener\",\"expression\":\"\",\"delegateExpression\":\"\"}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-54571391-F2B3-4CB4-80A0-092DA02773A7\"}],\"bounds\":{\"lowerRight\":{\"x\":250,\"y\":109.99999735090464},\"upperLeft\":{\"x\":150.00000000000003,\"y\":29.99999735090464}},\"dockers\":[]},{\"resourceId\":\"sid-0D258C24-1F19-4233-A976-A0D8CB9DAEAC\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-468A965E-939B-4731-A229-5178D6A0BB84\"}],\"bounds\":{\"lowerRight\":{\"x\":149.78125,\"y\":69.99999735090464},\"upperLeft\":{\"x\":75.21875,\"y\":69.99999735090464}},\"dockers\":[{\"x\":14.999999999999996,\"y\":15},{\"x\":49.999999999999986,\"y\":40}],\"target\":{\"resourceId\":\"sid-468A965E-939B-4731-A229-5178D6A0BB84\"}},{\"resourceId\":\"sid-768EE4C9-323C-47DB-B480-4B027F316C85\",\"properties\":{\"overrideid\":\"user2\",\"name\":\"人事审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"com.len.actlistener.ActNodeListener\",\"className\":\"com.len.actlistener.ActNodeListener\",\"expression\":\"\",\"delegateExpression\":\"\"}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-33FBF24E-FE70-470A-9DB5-9B1881E13847\"}],\"bounds\":{\"lowerRight\":{\"x\":554.5454413182231,\"y\":109.99999645683506},\"upperLeft\":{\"x\":454.5454413182232,\"y\":29.999996456835063}},\"dockers\":[]},{\"resourceId\":\"sid-5566D076-AB4C-4A42-998F-2537789F8181\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FB594BBE-8005-4EDC-B3C8-9781ED226C95\"},{\"resourceId\":\"sid-47687581-355B-4354-843C-C304233286AF\"}],\"bounds\":{\"lowerRight\":{\"x\":700.0000000000001,\"y\":89.99999735090464},\"upperLeft\":{\"x\":660.0000000000001,\"y\":49.99999735090464}},\"dockers\":[]},{\"resourceId\":\"sid-33FBF24E-FE70-470A-9DB5-9B1881E13847\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5566D076-AB4C-4A42-998F-2537789F8181\"}],\"bounds\":{\"lowerRight\":{\"x\":659.5676516867868,\"y\":70.4405149882424},\"upperLeft\":{\"x\":555.0326569100162,\"y\":70.14346334467305}},\"dockers\":[{\"x\":49.99999999999994,\"y\":40},{\"x\":20.5,\"y\":20.499999999999996}],\"target\":{\"resourceId\":\"sid-5566D076-AB4C-4A42-998F-2537789F8181\"}},{\"resourceId\":\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-AE5AED84-0746-4787-986F-6A7927C34C34\"},{\"resourceId\":\"sid-510FE062-C0BC-46C8-9B17-8A38072A2BC6\"}],\"bounds\":{\"lowerRight\":{\"x\":355.0000000000001,\"y\":89.99999735090464},\"upperLeft\":{\"x\":315.0000000000001,\"y\":49.99999735090464}},\"dockers\":[]},{\"resourceId\":\"sid-B2F3C154-CD22-420A-BE8B-686DE4751B71\",\"properties\":{\"overrideid\":\"user\",\"name\":\"调整\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"com.len.actlistener.LeaveListenerImpl\",\"className\":\"com.len.actlistener.LeaveListenerImpl\",\"expression\":\"\",\"delegateExpression\":\"\"}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-99CCA37F-A235-4853-8472-DE233AD2ED32\"},{\"resourceId\":\"sid-04C9F29A-0BB5-4691-804C-764E4E0A2716\"}],\"bounds\":{\"lowerRight\":{\"x\":385.0000000000003,\"y\":275},\"upperLeft\":{\"x\":285.00000000000006,\"y\":195.00000000000003}},\"dockers\":[]},{\"resourceId\":\"sid-F124039C-9B7B-4A48-8E13-A655358BFD3E\",\"properties\":{\"overrideid\":\"end\",\"name\":\"end\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":853.0000000000002,\"y\":83.99999735090464},\"upperLeft\":{\"x\":825.0000000000002,\"y\":55.99999735090464}},\"dockers\":[]},{\"resourceId\":\"sid-54571391-F2B3-4CB4-80A0-092DA02773A7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\"}],\"bounds\":{\"lowerRight\":{\"x\":314.3867255581167,\"y\":70.42208858912647},\"upperLeft\":{\"x\":250.75389944188342,\"y\":70.1872811126828}},\"dockers\":[{\"x\":49.99999999999999,\"y\":40},{\"x\":20.5,\"y\":20.499999999999996}],\"target\":{\"resourceId\":\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\"}},{\"resourceId\":\"sid-AE5AED84-0746-4787-986F-6A7927C34C34\",\"properties\":{\"overrideid\":\"\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${flag==true}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-768EE4C9-323C-47DB-B480-4B027F316C85\"}],\"bounds\":{\"lowerRight\":{\"x\":454.0204140562567,\"y\":70.44235197618283},\"upperLeft\":{\"x\":354.989340769949,\"y\":70.14943887070247}},\"dockers\":[{\"x\":20.5,\"y\":20.499999999999996},{\"x\":49.99999999999994,\"y\":40}],\"target\":{\"resourceId\":\"sid-768EE4C9-323C-47DB-B480-4B027F316C85\"}},{\"resourceId\":\"sid-47687581-355B-4354-843C-C304233286AF\",\"properties\":{\"overrideid\":\"\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${flag==true}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F124039C-9B7B-4A48-8E13-A655358BFD3E\"}],\"bounds\":{\"lowerRight\":{\"x\":824.3789112256321,\"y\":70.43824904246814},\"upperLeft\":{\"x\":700.0742137743683,\"y\":70.04612065934113}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":14,\"y\":13.999999999999996}],\"target\":{\"resourceId\":\"sid-F124039C-9B7B-4A48-8E13-A655358BFD3E\"}},{\"resourceId\":\"sid-FB594BBE-8005-4EDC-B3C8-9781ED226C95\",\"properties\":{\"overrideid\":\"\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${flag==false}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B2F3C154-CD22-420A-BE8B-686DE4751B71\"}],\"bounds\":{\"lowerRight\":{\"x\":680.5000000000001,\"y\":235.00000000000006},\"upperLeft\":{\"x\":385.5791015625001,\"y\":90.7773414113455}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":680.5000000000001,\"y\":235.00000000000006},{\"x\":99,\"y\":40.000000000000014}],\"target\":{\"resourceId\":\"sid-B2F3C154-CD22-420A-BE8B-686DE4751B71\"}},{\"resourceId\":\"sid-99CCA37F-A235-4853-8472-DE233AD2ED32\",\"properties\":{\"overrideid\":\"\",\"name\":\"重新申请\",\"documentation\":\"\",\"conditionsequenceflow\":\"${flag==true}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-468A965E-939B-4731-A229-5178D6A0BB84\"}],\"bounds\":{\"lowerRight\":{\"x\":285.00000000000006,\"y\":235.0000000000001},\"upperLeft\":{\"x\":200,\"y\":110.96093549248246}},\"dockers\":[{\"x\":0.9999999999999999,\"y\":40.00000000000007},{\"x\":200,\"y\":235.0000000000001},{\"x\":49.999999999999986,\"y\":40}],\"target\":{\"resourceId\":\"sid-468A965E-939B-4731-A229-5178D6A0BB84\"}},{\"resourceId\":\"sid-510FE062-C0BC-46C8-9B17-8A38072A2BC6\",\"properties\":{\"overrideid\":\"\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${flag==false}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B2F3C154-CD22-420A-BE8B-686DE4751B71\"}],\"bounds\":{\"lowerRight\":{\"x\":335.43836675041166,\"y\":194.16016022771174},\"upperLeft\":{\"x\":335.12413324958857,\"y\":90.77733679205596}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50.000000000000114,\"y\":39.999999999999986}],\"target\":{\"resourceId\":\"sid-B2F3C154-CD22-420A-BE8B-686DE4751B71\"}},{\"resourceId\":\"sid-04C9F29A-0BB5-4691-804C-764E4E0A2716\",\"properties\":{\"overrideid\":\"\",\"name\":\"取消请假\",\"documentation\":\"\",\"conditionsequenceflow\":\"${flag==false}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F124039C-9B7B-4A48-8E13-A655358BFD3E\"}],\"bounds\":{\"lowerRight\":{\"x\":839.0000000000002,\"y\":321},\"upperLeft\":{\"x\":335.00000000000017,\"y\":84.72655999577702}},\"dockers\":[{\"x\":50.000000000000114,\"y\":78.99999999999997},{\"x\":335.00000000000017,\"y\":321},{\"x\":839.0000000000002,\"y\":321},{\"x\":14,\"y\":13.999999999999996}],\"target\":{\"resourceId\":\"sid-F124039C-9B7B-4A48-8E13-A655358BFD3E\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('142519',5,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0s\0\0\0�q|�\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0��\0\0u0\0\0�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0�\0\0��+\0\0 \0IDATx���|TU���3顄��JU�f��.*�\"�kAI**����uUTP��v� 6�U���W0@P@��\0!�@&�����Ν0��L�}?��;s���9s�{�=�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��A�:͞=����On���&C���\"�4���\\v�e?Q$\0��\0��~i֬Y����qf�ƍ�4jԨI�z�e�s�\\.�����􌌌�����n�{��{�w���Pi���]���W&$$4nР��#9<��˙���ێ;vgff�...�@�\0$�bs����p8>jٲeq�-\Z�m\n��lHOO�#I�UR�w���sE�X��v�\'7m�tu۶m�\"߫J��[�n�-[ZK9�N�\0�/�\"@U7�\"##?�ԩS����Z$�UN���u��ڵk���o�y�ĉ�P,���_Rg�ۥK�hI;�m�:T�\r\Z4���߿s���o����_\0@r� �C�\"\"\"��İn\\\\R�bccO��i`�3p��Y|��NJ8��+,,�?�FիW/��>QQQ�\r6��ȸ2%%�+�/\0�>�A������E���K�w�]kg�}����2��O6	�z���f^%��U?�qYYY/���(���\ZÖ-[Hbآ�ǵ��ڸ��l��(�2�q&.���ou�	���\0OP�:uj�n�ڹ~��W�\0TzQ%,Xp���ҡC�𲆒jb�y�{ƹg�4�����V���XnjǷ�\ZZ8q			�6m��馛�N�4i%��J\Z9�S�N��\r�߱j�$�������*.4���3o��kr�a������ݾ}{����E�_\0P=�~U\"&&�&M�D��@�FU�����w�7���S���UÆ\r�ɶET�.W���XT^��=��ۖ�����؛��B�$�;N�\0$�p�^�^�r/��Z�cګ��#�\\��AI\0�\'>>��r��-ְR갪נA�F�y\\AI\0@���CT	�әP�n�rw(��Ght�\ZW�dÅ�@�\\��G��\\EG|��:��ԩS�w�$\0���ݸr������dJ�8��I��7����$\0���]�\0\0\0\0\0@r�\Z۠��\"��R@\0��R�Qu($\0\0�!PQ\r[^`\"�jި��5\rO�N�[�&k�F������\Z�p:�\0 9*�N��L�2\ZW��nBG\n��r8��I�*��}�9\0�Ǫ�@�a��\n�P0\0���*c�V�0\0\0�!p����e6-y�����������l�e��\0�GY�ͿN(��+?6;�|�r\0���R�V�ۖ�]kg��rκ�}9͆��4���4�[�o\r���v��cv����g�.�9�fo��8s7�&�_g�j7��\0\0$��/�	Գ��3X���������$�r���ۄBPc���l2��S�p��Hr�~��Q��a��8�\0�Z�ZhO`EC_��כ��}���4hP}J!4�0����pb��v�]ε^�: 9l�x�����n������NNN�CiPQ�Ա@�`X)�E���(�o����=��3�ؑ��6U�_���Q2��Q�K�\0@;z��\Z-�\Z4���#��t���;��wIII�(\0��H $\'\'w�F�M7�TЫW�x�w�y�%H#f���.��V~��ЁO\0u,�,p$+���FIXX���]w����/o���4b�I�f�ĉ��.JMM�PEƽ��%J����\'q�O#���X��b���ky��\0�u,�,��aJJJ󢢢���b�{���c�3��I�ǾO�<y�\0e5Z\"\"\"�K���4\\ʜ=�w��-\n\n�L�6M�?]\\E��F��yL�|�V��i�w�����޳+m%^�_\0ԱԳ!�\\!D����d���/**�t�ս{�:�[��jܸq�0R�����ٿbŊ�\\�~������$�ywʔ)�U�t*����Y={������8�z߾}�����1s�̅R�\\XE��z�?\\�������T���}{���H|l߿Sb�D���D&�6\0�ؒ�zsh��ֳ�S��� �{���.���2���Z�cz2��<�y9��B�Tɡ=,���u�v<xp�3�<��d�����L�4i��^�z�.�T6�\'M����ǝr\0�:mڴ�|u��n��\\��{nbJJJ\\E^s�-����K��?������H=�Q�V���x�6d��y�OvR��#�Ӯ�7؉&�\0ԱZ�u���,�Y��d���>�eRz��z{�4���\"##߸��\"��ꪺ���c���,���/|�dɒ������M�訳��y�hi~�]w�K}r�}�uڷoߚ������L��nx޳����,3|����A�sML��y�s]�>m\0Ա�gu9��eԳ#�g�h&����\n�y�xz�-z�u��I\'?2�ڵ3���7u��5r�����a����?�\r�EEE�e��u���wW0�\nA1[��7�|M\\\\ܿ�ޠo߾ǚ�����������p8Fˇ>��Z\r\ZS�v�g�uV�{ｷ���\'�=��);vt�\\�9���?Q�V���v���˳�\'�׾x�f\0ul���E�<W��-Գ~�^)m�I��P��+��Ҽ���z<�K.�Ĵh��JU�Z�LӦM�\\`x��ꫯ:��aaan�-���I��+|r8p������G�]�}����;w�����,�p���B��\"���m۶=��{�;�Mf���]�}�#\"\">����?����˴+o@{l\Z��?�z���$i�f\'�V���3��d4�q��z�Q��?�쳎f͚{���<.�r��Nu�pTTԸ�z�VE?܊����=�X�|����;|����q�6m��裏���U\'��\'�<M\Z/	���_Vr�E\'K$���.��<O�A���ѳ�޳�ߘÇ�\0u�ճԳ��+Hb��71<��S�ȑ#�^�㡯��.�s��n���`�:9lР�g�^{mle���=�g�}���\0_/ �\r<85!!���?Y)�g��G�Kbb�IN�sR�=*�:o�\r�5�	�39�X���Nv��T��2Wb������$��@{��g;P��7I�\ro��j��C=T2t�x��x���N0�\n;!�����_>�N�{���G*�~)))��˘	j��t�M7�_�^�k�\r�������Þ��+�2E/Z�������aÆV��駟�,?H��{�4^�?~�	��e����%��h�}�H�þ�g�����Z]=�\r�?��=(���}�Ym7�O=[3t�\nI�zzO$赃\'��&����c�=�v�\\:QM�`���P*�gn��ƈ�:�t�o���rp���>w�}���\Z5\Z0bĈ�\r��@.ކ�Ua�����:t�����ƷjР�^m5Z�t��رc����]���8�8�ni�]mx�\nS���|n�v��̨�������c\'�4X\0P�L����}ߧ��W�1������Q�xo\\~���=��<�~W]u�wS,�B@&�Æ\rk����]�v���W�^���jj����u��q��!\Z�����s���sȐ!�e�M�袋t=Ԓ�.�ˬ_����g��իW�+V�X�#\"\"�4NL�>�/�����_~�di���4^^>�?���<�g+�����ř���7tx�kGI69^\0��P�c�]?O=��T=;2�Y>&SRR�뚄z[{\r59�\nz,�q���{0�\n��Y�^�!�Z�\n;�Y��QL���WI%�\'�\"�ɧ�KeN:�9п�1�EEE��M��Ou�\Z>&s䘜!���9&���1����|�Ɉ#Mh%�3C���6�����;�X����%�������nʫ����1c�$<��#��z�ԩ��V��+�˗\'z�Tmk�IE���[�ݱ����u,*��#��R�}P�cR��W�a+���$ߞ�ʤ=�g�}�c����]�+�I^^�ź`eu�������P�V�K��_\'_ί�2ޞ����D�j�6�B�~�i���lٲef�̙%��o�M�6�4���Νk-j����/��␸�����tx�Ν;������N�S���\n�S[\\}�m��1Y_6�cr�4b��1���߷����q����3����%���2z�h��J��Y���/�M�6G|�����_|�Ntt�#��/�h�/�|��\r�s�T\'����S��/X�@g�;d�4����:5����E%�u%R�crKE�Iy~I���sϭҿ���|��=�999-O>��j�7;w��V6�B����1��mi4�S׌��}���p��qфO�?�ձcGs�i��<�裏�n����t�R�e�3q�D�H�lݺ�z��W_m]�������K^��Yt�����o���:�d����M�~�J�ݨ�(���Fs饗Z�`��@zo���d��$�d��`|,?ӏtL�}���fgg���㏇��eq�uי���:��t���t�3�%��|��c�h���k?����=��(9��L��e��?�㥺i`yß���z̷�P�+=����7o��$�0T�w�:U���1Y ���M���c��P8Q�Z�2e��$��(///R�q���{�����L�m�$f���\'�ߌ���?a�gu�RXg��\'p��ݺ�i�cڋx��도u�[�nV|������fѢEV��g��lxYg��}|����z6]�d��iM~e�Y׳�ڨ�F���mذ�ZCG�ĠzO^x0�̔cR����2d���y����c���!L���g��a���k��m�h}t�m�2���$$$�=��{�\r��4�rRSS?�#���%K�����&�(��ћֲؕeK+�{�9ӡC�Kj}��棏>�CUgv�wfu,jX�\'7��f9&��s��p8��cR�D�㧊s߻�Hk@aa��2O=�8��[9�F�]<�C��W��jmhH�ߵkW���ڠцNvv�ը�!(>��y��LyK�x�U����{�ر����F�W\\am�=�����}�Ψ�ٳg�k��ƺ�g�5f͚e5��9o����=[���m�f\r�z��LuÙ��V��ر��{�B�����mrFF�pi(��YDm(w���:N|�(k/M��ͭǪu��u����^{�}{���T\'5�����:�5kfڶm[��&fZ/�����bc�J{��w�ߑ�R�i}�o�߉�:v�СY�F�z�:6��I\\/���zL����+�S�EL�d@&����|u&��|����G���r�aJU}t���j��s�9�$~&L0cƌ1{��zu�$m ��*���_�]�v��uؔ6u�����zm\r>�\\r�%־��t���۰��wx�/�q�k!�<�Lk8��-�֭������U���_�5��]���N��:\\O�K�O���ܢg������~��۷׷�\'���?hϚ��\r2���mMJ�=\'�f�\r�#�+��I�\'Ă�[�f\r��Ա�����~zæM���:6Di�U�	��IƳ�	�a��\Z��+��ɉ�	��DdM�>]����.U�X�|h!�ԏĺnݺ�����t������oV#H�$4z���G)I �\rf]Ǡ�Ui�R�eԳ�z��ҳ���V�FO����Gi��N�}���[����K댦�6���BhcLP�kux��vu����ƍ5A|\"���\Z.�j׮=���vꩧ��w�y��>~����!Ý����\r�\09���U�V����v�����~����]��|떪>�U�_���:H{��ԩs�s��i9��}�O>�Ī�Z�n4u�)���W�ױr��#u�S�V�.Z�h׶mۢt�U��Щ����o-�����29����kZdrشi�}�؍���077w�lV�����ocRRR�_H��˗NB��5\\�����Z�FGG��kn��6wU��ڀ\Z<x��㗕�e�8�묻��i��:B�{����<��a���F=�?<:�;L��+�<�1���Y�H�,�U��Z�pT/�̨:�K�}����i�\Z5�z}�ёA|L�ڢ8x��cR��9r�|N��۷/�ۓRQ�ޖN�Q��Aqq�u\\�\\�:����9y��Hy��>�裹���x��XB\rar���>^���_�	IuәJu�~*:~�xk���u�^��^��d�w�	�Ih4����z�Ir����k[F�[^����X�{����:6x�I9���0��z��tN2�e%�^�`}U�i$�5�I�&i����x�b=-�]�~A�KW(_�h�˨����2Sb�4$��CNu�M�Խ����;M���hcHc޼yV�ț����,Y��L�2ź�����f,����^������ᥳ�yI�pjx����u�t�wmԕnЕE\'��N��g\'�G=&���$�~���Jc!ʷ�}$�8y��������vnn�՘�3��0a�ܹ��H9~zI��>Ū=�$�_Z͈��(�xII���gzRK� �9T���N���S�C��!�%V�Zem��۾}��>�M��P��c���O/a������Yɡ^�V�RsV|����g���q�.�ʤ��P+ۊ+��2dg���|��3�:g%-�v姦�Zg�}g*-���ñt�w��wm\ZߞC_:U+oMϲ��ܺ֒�d��;1DY��0zi�ګW/���i��19f̘�s���Dꐘ�&-��駟rM�6��8��9��t�ש\r\Z4��\'���ɓ\';�5�L�6�aN�p.�N���&Z:����/٧�\"�����m��$5�H��ě�y\'^�6�u��d�]B�:ԱԱ�X�GDD|�r�ƺ��p��^G����U��^�m�\\! ��Ν;�����|��]H_��/_����p�$!B훨����/\r�t�9���P)]�KT�{�gýg�}i2x��g�\\�h�~*�y���ԩ�u��*�6��5zB�ۈ���[K�_�a���YB�̙cM��C��L�>G����1)\r���3���g�-��r-�)*�D�6����m�谻�C�Z36���^��~��\\t�EG\\SI\Z79ӧO���u-��ЮÔw(�ob����/[t̘1��|��֨﵂Z�h=�u��K��JK��u,B�<y����o�fO=ɦ�\0U1*D�]�	�(r��L�S*����Q/�����q���J���.�r�󱿜]/M�7m<y�,�z�ƻH�6~�K�m�x��*����WzvR���4�%���w�/}ml�ET:Ż�WR����tMEu�w�I�&Y_Uo��������K�ŋ/�FI�w�Qf]��[or�i������{������h/�>_�q-뽴�\"�Y�+���&�C�v�7�uDiZ�iO��c���е��B=�t���u,B�Զ�5�Y�C=�P��j=�\'�|򓷃��|!f�ȑ�ݺu�*=�He�ꫯ\n>���e[�n�p���E|O+fΜ9n��?,X��\\v�eJ�pR�4�����}���J7^��/]�wim�{�IUz�B\'J������tJw_�Ǐϝ7o����⋧L��I�S���:�:U+99y����,��k�V�̥�ӭ�	��p��ȸ$r����j�Tw��?���\nz-�ԩS�B���چKfVVV�5k�l��WK���u:�Q�5�tx�/�M�]O�@M�8�d(���\"uȺ����h�\0����E���pPXXX���kX_|�Ek��&�cǎ�M�%/�#Xr��?7}��ys�νD��6x�t-�aÆ��t�T4��:6�y�/�y?�����iݺ��z����?�Q2��D�uo��֞%K��������n����u,�݀�$A�@\'���ڃ���SM�$�Ob�V7S���W_}u/��X��SOUZ�����,(,,|��\rӦM�߹s�i���k����k\\���^�g��h�\Z-\0�c�cQ��N��*��`I�t�[�qȐ!:iM����__���	�\\!<���x�	ׇ~�NQQ���Ǐo�����u��Dy4���o�Q�r���{������G�|������&Mz��8�������ۿ}�������{\'8::ljԨQ6m����%}�uBPQ�:� ===�cǎk���{KB�kh꺱:ᗮ3�31����?��i\r�Q�:���n]�r�ʒ�7�gI�;%�|-��*\"�\'$!�1�=~����̙�ւ\"u�Z�ɴ��×�h����Ȧ��\0\0 \0IDAT�2e�*�J@�g:���#G^�ө��������Oeffΐ��^\0�cQ�1))�\'I\0�q�\\���th��t_j�£Y��k�L�3��ί���{>77�ݏ?�x���]��5��씆E���6k׮5�|�y��ܿ���ּ����W��}ƌ;�\n�μ�μ���w�^���_�<�s�k�>�k�,�O<Q����՚5k��h����c�?���sV�X1�S�N+%�k(��}E�.�����P0�\n��?����&��vߺr��ۖ,Y�\"	`�͛7ג�/B�\"H��J�(>>~[Æ\rj۶����W�2\0|=��?��#_>��:t�#11�����gO?�tqAA���g��:~*55�c�|������r]/y�_�~7	Mu,?�U\"M�;}n�����cv���\0p\\�{^x�7G�}gy�=�=jԨⰰ��^��Q\Z-\0@�7y��-��1hР��Y�M%bbbڇ���a\0pd?��]-Z�5|�p��u�yL���~W�\rF�;�!\Z-\0@��#�����{�b9�@<���lӦ�3�F�r���o־իW[3&7m��َ��\0�:떣�����Kr\0!���ھ}�^z�b]�h�ر�Ҙy|Ĉ�(\0��E�r�݇$|�LJ�=ʺO��Gr\0���+���æO�n�5k������P*\0@���	_3�<(99�����(������^�$\n\'}$qC\r�@���?ct�r�J�\0Ա�J<$�kv��Ob�懾O��0B�C��r�ܝk��9���H�[������wuϫeo�U�=��\0\0\0�v��8KBg!�e+�H�\"��U�O��ѕ$�W6nܸݮ]�����K�h,�ɡ��do���P(q�Dk�Y�\"�x�&1��������I�{OH<(��B��2^���	\0\0\0X�I�J����&))��l[�~rqq�	OLHH�I��yvb�\\�\\H�����k�����-q��}c\'�����k<�ɷ�<�����2^\0\0\0 �� q���;$F�͛7��ʕ+��Jrr�ݹ������\\/�_�l����R���w\0\0\0Zz��.x���z�=�\r��zrxx���_�~W�����v�1�ф]H��^H�I��D/��%:���A��q�)���X_;Y\0\0\0\Z�J�?�_$�H�JHH�у	�@��<�4jڴ鴭[��i\'�+I��^D�[b������\0�Ţ:6�$�5>Ic�\n����\0\0\0�Iv��%�/���e{AyOv�ݑ����w����7��K����6?K�(o<�|k?���O;���p�����Y�������/3LH\0\0\0k�����(ϋ��={��o���E�^0��j\"x������G�����v�m�a��5tJ�@��}z�@O{;���O�&�ȡ�\0��2e/#��n�5b��益�Y�.11��l�H�_��I��c|_�B x\r6�떵��R�~�$PCb\0�%�N��R�M���a^�^���J��PS�N����$JJJ\Zi<�DO�����r���\0�f�I�|;1�f<C��Z�o$>��^b�D*�\0�D{XtҎ��D�v�BioagC�?�Q��+,��r�(? ��F�z�C]#1�xzuR+��z���� �D;�)�8��_~SYJ\"���b��ܿ�N���T�9A�\nE�\"����ܳg����5�I�$��/*�$�FW��cX�2�/�����k���$ҫƳ��Z;���gH�F1$�����rss)?����k�̧$J�0җ��|�{{W[����PT����x��ݻwP5/;;;S>��(���굆����ڡ\0�!B���|n����n7�Q�6deeu��\'�!��p��%y����gڷ�Q\\�G�O222\"��j���S����#<��x�	S��\0H\n.�袟�a�|۶mF\rJOO�#�ö�.��\'J�`�l<k���x��zy{����OI�{�z��VTT��M�6m�4jΖ-[�8��W���*����hkn�\n�\"9�΁6lؗ��GaԀ����YYYW�\\�)�2��y#���p���v�}]��]㙔!H�7����沜I\rػwo���������Q\Z��;��	�\Z����(�D��\"D���{�4��Y�re.	b�\'�+V���p8��!�)S���$.��֎��KO��)t�/�$����q7%R�_���촴�]rs�W@{���3��DQ:�Ӆ��J1$�!={��[TTt��e��6mڔ�5<Un�4f�-_��<�}�����L��3�&e<>�xf2=��\n����r�&��c�ڵ���������t��\")����Z�D�}[�+L�	M�kI�&ц��K8E��6q��u)))����vݶm[���\\戎���p8���^�n�y���M�&MLÆ\r����u�����FՒիW�DȾ�^�z-��+�~;����#$���z�S�N=d��$��)�ி�E~~��[�l��w�ޟ���S_�/&�8���)�\r�7nܘ.��;\'\'g�컑�+�9%���e]�](���fS�p�1K��=D���ٳ�ؾ}{?	���]~;l��O?�i��رcM�����x�I���%^a�\n��x��:�-��(�v�u��_�v��\'уR��v�^��L��_Ac��؄^z�7��$�U:` �\Z4(��t�m�^r��ɱ&Lp�	��������*�ך1)\r����u�U��w\n 9��$��\\kVXX���LJ&h�)1A�J��A�cNP���x�~\0��&���u�|{�US�g����/LH���;n��v�$���~��9Ƴ��H�a�>�1�b���m���iv\\k��H�\0$�@@�d�O�]=���_��	*���w���%��ɡw\"��\0*���������}G��.�ղQxxxJ\0\0\0$�@�p�\\�K��.nv\r��S\0P��%����=z�p8���mo��,��RPje<CJ5H4�H\0��E�[]n���(�1[)�I�&���2�e,�����)���,a$E\0�n��e�g��<G���P\"F���0(�2���T�#<O\'�a	\086���)Gy��^˕���H��CJu�R��Q�����Q��>8aJ,�M��sb�#��I\0$�@@KHH�Qj��CHb�G�_PP���Ϡ���\0\0\0�PLHx�aaG��T�\"{{���4�����Z��4��&Ѹ���q@r���<�@��v�{�T�+�m-c_�/�g8)\0��]V�>��_�C̣x\0�C���p�\r=������ғN:�zJ-�-����__�����\0N����\Z�OP\0�!��$��v���@��L�ۃ%�(�\0P9�����q��:u곲y�w_RR�Hٌ����ԑ�R�����$~!1�J5G�:�Z�2e_���;(*��\0j�%o\'�k%ʚh�{�w(*\08fz����J<hʾt#�� 9\0�Ob\ZE\0�j��l�!���\0�5�\0B��ve\'�\0*��N�R\0�!\0��$��:�\0�����@r\0�� \0*�}�4�k��_�FJL�2$\ZQ<\0pBt��]e�W�d��_LH �T��Eԋ\0P�6R����\0UD\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0H\0\0\0\0$�\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�R\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0H\0\0\0\0$�\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0H\0\0\0\0$�\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0H\0\0\0\0$�\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0�,�\"\0��\r0�1���L9�HJJ\Z�#55�A�\0�@D�!\0��K�\0\0\0�!\0��)S�̔MV���\0\0$�\0��n��Gy��y3)-\0\0@r\0��N=��.�:�ɔ\0\0 9� U�V�E���,�qy,Z6��(-\0\0@r\0Aj	N���U9[��������/��\0\0\0�!\0����_lU�aa�PD\0\0��\0��=d4���\"%�l߾}.�\0\0H ��CF\'���R:�!�\0\0��\0B�$��J�w�7��t\0\0\0�!\0��;v�:�۽�G�l2].�J\0\0�@�����*�{�i��)\0\0@r\0��YK��\0\0�C\05111?�ޏ���O�\0\0\0�C\01&Lp�f��v8��~�\0\0�AE\0��������ߛ��?p߾}��ݻ7��r��ߛ��i~��gs��g��������wJ�ꎎ����^�޽��m\0\0���_������Ng���D�Q�n]�����:�/[I��p7��˻\"##��~/((ػw�t�<\0\0P\Z�JԘM�6}�q��7���k�s�9�e˖�^�z~�L/�g�7on�u�բE��ڋ8o޼k(\0\0@r�oC�k:v�h�5k�C )�*ִiSӵk�XI\Z\'͝;�JJ\0\0��Q:�tݺuלz�V�Vi��;̖�IfͷO���F�MK�g�V\n�Ԯ]�t�ҥ�$�f͚Չ\0\0$�\0j�N>�����!-/1ܼ�=���ڸ���������lZ�.	b%&��Z�r����Bi\0\0\0�C\05Bg%��gt�cY�6.4E���_����)�JҼy���̙s>�\0\0HT;]�Bg$-�\ZÂ#�j�\"*OBBB�l�Q\0\0��@��uuF����b���D�\Z5j&��\0\0P�s�Z����!j�|MdӘ�\0\0\0��C\0���r�����\0x>N\0\0�C\0�\'2�A��ED��\0\0@r $4ly����}����X����\0\0\0�!�PP��i�v�S��_7�#\0\0@r T(8l_Q�\n\0\0��@(ؿw�ٴ�]�����ۻ���q�s\0\0\0@r H�n[*��;f_��r��/g����&{��͚�\0\0\0��)��(�	ܱ�+�g�\"\\��������I8�\nc-�\0\0�E�!�\Z�=�M}i����M\0\0��x�ܮ\"\n\0\0��0�@���s�\0\0\0��9\0\0\0\0�8���z\0\0 0������ę��m���?%��z�_��>�q�0����%�%�)���+q��c�<#q���R��I| �����\0\0\0HTMϖ�-��N��#���9$Vى�`�-�8Eb��+�K��/����.��;ۏ���7����S�w�}WK��_��N\\o��(�0\0\0\0�!����N�4��%��Nۘ�=�ګx�ē�%�JDI�!1V��I4��*�E��i�k��$�{�DT��I��K������籋�Ὂ\0\0\0\\+�\'����N˓$1�N�*;Y���\Zsh/����J���A���۹��I\\g\'�]�$t��7n��������\0\0z���s\r��K������a�:|t�}���Մ�]�����i\'���O����{\\e���o��&w��%�m�}�T�R�4�����Q�����>M0�g3��\0\0��@�ic\'^�;��+=��y:1�$����i��2�p��+m%1���Y*���s���{U�ߥIc�98����4LH\0\0@r�R��P�������I�b�~?���^��M(�������܏5g6U1��d5e�k\'�^E��k\0\0@r��M�u�:�Lmsp��}���Nu��:��a���Cg7����j\'uJg8uڡ�������V��~U*Y\0\0\0�!�Jv������$_E>�o��4�k\0�^3�����$�Vsp�ò�,u_{}���-�5�ۨKf�Z�z�a_���)�5\0\0\0 9pJ�,=!��^a<�Khb���su�R]q�Ͼ�G��\"+�7�I�l�>`�\rZ�hob=>2\0\0\0�C\0���\ZB/�������iob+s�:D�n/�?�(���s��<�s{��՞I�����d>:\0\0\0�C\0�g���{����7��c�Lf��m���>��q�\r7�;?55u�\0\0�!\0�ݻw����}��~�����o&!!��L�6͌3��/ɑ��s�5j��9s�INN6S�L1�k�6W_}uДM�=\"������^#wo���\"9\0��\0�K||�iԨ��1c����0͛77}��1o����ׯ�iܸ�ٺu�iڴ�)**2�}������nkR�	aFF��={����k�_|a>��3z�h�1!lҤ��n���}Gc�\0\0H $t��ݸ\\.+�ӞD�)�>}�),,4���F$O�)ɣ��|��%�}��W�K/�d��s�X���Ǐ�zIrrr)��rs�$�ֺ���o\0\0@r\0AM{���Ҭ8p��O{��p޼y���﷒���߇�.**�Jumjժe�.�scbb\"14hP���<_�[��\\��$�\0\0�8܈��$J��,]�Ԝ~����M��^z�V/��:��˗�-[�XI������֐R�������dgg�]�v�O?��J�ׯoz��m�x�\r��,֭[g\r{�İ@�KRx�=����Q\r��w)����*�����O����\'�ç��7�:³�:˜{�&..����[�	J^���k\rC�W����K�W_}eZ�nm%��&M�zw��a��nӱcG��,t�lNN�\r\0\0@r����y�#.��B��;���kN;�4k���.^��t�ԩ��?���\Zv�M,׬Yc\rM=p�����L�:�T\'����P���ߌ;�JrK)�{+��G5\0~��C ����n��HJ�r�~��#�mHiiN��l۶����.IQ�N��D�m۶�I�&ֵ����K�.�����c�6*�j��ڴic���z3y��؂�����$4}%��/= ᖈ*�{�w\0\0�C\0>:����^�nk�����%)�����/?�:��ҙM۷oo]�����[��n޼��߿�<���~��<a��lfh�������ľn���$�}4Q�>O�J���Ñ\0\0�!\05��P���5k�u_\'��޿nݺYɢ^3Y�$S�D5�V�2�w^IO��Ilt��7��w���/���v�3=d�OB�9l��M\0\0�!\0����,[��0�SI��B5�Ӊft�\n��?�}��Y��^S��X�h���V�^}�P�@���:_sF�-er�ln/ݣ\0\0H (u�ڵ��:{���E�tHiy��X��:u�O���#\0��F\0\0\0\0\0H\0\0\0\0$�\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0H\0\0\0\0$�\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0H\0\0\0\0$�\0\0\0\0\0�C\0\0\0\0\0�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0���J\',��r�(? ��F�Q\0\0��@����ٹg�\n�dgg��&��\0\0\0$�\0�]dd���\\\n�ddd��f>%\0\0HT;���������n\n�fm����*�O(\n\0\0@r��]t�E?Kb�|۶mF\rJOO�#�ö�.��\'J\0\0��N�s��\r����Q5 \'\'gzVV�U.��AJ\0\0��1�{�^%��5+W��%A���pŊ���9�S\"\0\0��@��ٳ�ܢ���-[��iӦ,�A�r����-_��<�}����\0\0�\n�\0Ԕ�\'�KII�<77��m��N皰�0Gttt���wff��5k�iܸ��U�������aVV���ׯ_�z������ٗҫW�E}\0\0�S�N=d��]zz��P,�\05I���f���gl߾���V��%b��o^�t����_�ƍ�Yg�����Lb����0�\0\0 9��z�ꥋ�Ă�III#e3B�\'}�ё|z\0\0 p�!\0\0\0\0��\0\0\0\0@r\0\0\0\0 9\0\0\0\0�\0\0\0\0H\0\0\0\0$�\0BW3��-�yN\\��\0\05�9�&HDٷu���P�3��oJ<@Q\0\0�C\0^�K�fߞ,�P���Kb�]7�/���\0\0$�\0���$��>�:H,���a�=\0\0 9����������Ӌ�5�b\0\0��3�\0BQ�o�x[\"Fb���KM$�J�MQ\0�PA�!�P�9��C��%UO�ɢz��\0\0$�\0����3^|�\r�䰞�o�\0\0H 8u6{\n�����\\��զ�\0\0\0�!\0�Z�J��x\\��Ĳr�{��X�\0\0�@��\'�;}��M�%�.�+(.\0\0@r\0�o���H�u�.]1�\"\0\0���,\0P�SDb\0\0B=�\0B��H���v��D��9|�]\0\0�E��$�%>��u����\\�x����R��,\0\0�IDATT\0\0 T�s ����J�O�Xk<k ����QT\0\0��\0�S���-���wK��MQ\0\0�C\0^N�Y�B\'�-��\'I\0\0 9���N�����|�}{%���\0\0\0�!\0�\'��0�N����\rCJ\0@b�R\0��t{��Z��ٯ��x�\0\0�\Zz��������K�R�q=q6V��\n\0\0�@�\Z�s�U�Y�\0\0 �1�@��J\0\0\0�@6E\0\0\0��R\0��n�Y��J�_�g�\n%���yc$���\0\0\0�!\0�7$�2��,n4�%-T;�\rEu$�Nr\0\0B�J���$�ό�\r�}K�Bc?�\nE\0\0H x麆�|B=$�Q��}_\'�)��\0\0\0�!\0�����#m,q����\0\05\\s T�?�n��	��_{�\ZD�֐�L\0\0�!\0��|�/�z,F�<�6�)*\0\0\nV\n T-,u?N���S�;C\0\0@r\0�m����$���I|k<3����\0\0\0�!\0?F�]��y�Y�����QL\0\0 �p�!�P�����e<�o��)&\0\0J�9���Q\0\0 ��s T}ao���)��\\�B�ݮ#�8�{�HJJ�$\0#H 4=&�V��D�ĳ�s��3m)�Bb8?$\0\0��\0��NJ�ێG$�$f�ۿ�u(:\0\0���\0bN���%�\"�D�ǇPD\0\0\0\0�>�8�x���:��R(*\0\0*V\n M���heGyN��\0\0\0\0 x�b\'��}nO��o�[�:\0\0�UN���o{�M�(�\0\0��\0�\\;��l ��/�x&�YH\0�PF\0Q$�%�ٷ��;%^�x\0\0\0\0 ����6\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@��?�����\Zܻ\0\0\0\0IEND�B`�',NULL),('160009',1,'请假流程.bpmn20.xml','160008','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"process_leave\" name=\"请假流程\" isExecutable=\"true\">\n    <startEvent id=\"start\" name=\"start\"></startEvent>\n    <userTask id=\"user1\" name=\"经理审批\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.len.actlistener.ActNodeListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-0D258C24-1F19-4233-A976-A0D8CB9DAEAC\" sourceRef=\"start\" targetRef=\"user1\"></sequenceFlow>\n    <userTask id=\"user2\" name=\"人事审批\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.len.actlistener.ActNodeListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <exclusiveGateway id=\"sid-5566D076-AB4C-4A42-998F-2537789F8181\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-33FBF24E-FE70-470A-9DB5-9B1881E13847\" sourceRef=\"user2\" targetRef=\"sid-5566D076-AB4C-4A42-998F-2537789F8181\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\"></exclusiveGateway>\n    <userTask id=\"user\" name=\"调整\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.len.actlistener.LeaveListenerImpl\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"end\" name=\"end\"></endEvent>\n    <sequenceFlow id=\"sid-54571391-F2B3-4CB4-80A0-092DA02773A7\" sourceRef=\"user1\" targetRef=\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\"></sequenceFlow>\n    <sequenceFlow id=\"sid-AE5AED84-0746-4787-986F-6A7927C34C34\" name=\"同意\" sourceRef=\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\" targetRef=\"user2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${flag==true}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-47687581-355B-4354-843C-C304233286AF\" name=\"同意\" sourceRef=\"sid-5566D076-AB4C-4A42-998F-2537789F8181\" targetRef=\"end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${flag==true}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FB594BBE-8005-4EDC-B3C8-9781ED226C95\" name=\"不同意\" sourceRef=\"sid-5566D076-AB4C-4A42-998F-2537789F8181\" targetRef=\"user\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${flag==false}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-99CCA37F-A235-4853-8472-DE233AD2ED32\" name=\"重新申请\" sourceRef=\"user\" targetRef=\"user1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${flag==true}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-510FE062-C0BC-46C8-9B17-8A38072A2BC6\" name=\"不同意\" sourceRef=\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\" targetRef=\"user\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${flag==false}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-04C9F29A-0BB5-4691-804C-764E4E0A2716\" name=\"取消请假\" sourceRef=\"user\" targetRef=\"end\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${flag==false}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_process_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"process_leave\" id=\"BPMNPlane_process_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\n        <omgdc:Bounds height=\"30.000000000000007\" width=\"29.999999999999993\" x=\"45.00000000000001\" y=\"54.99999735090463\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"user1\" id=\"BPMNShape_user1\">\n        <omgdc:Bounds height=\"80.0\" width=\"99.99999999999997\" x=\"150.00000000000003\" y=\"29.99999735090464\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"user2\" id=\"BPMNShape_user2\">\n        <omgdc:Bounds height=\"80.0\" width=\"99.99999999999989\" x=\"454.5454413182232\" y=\"29.999996456835063\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5566D076-AB4C-4A42-998F-2537789F8181\" id=\"BPMNShape_sid-5566D076-AB4C-4A42-998F-2537789F8181\">\n        <omgdc:Bounds height=\"39.99999999999999\" width=\"40.0\" x=\"660.0000000000001\" y=\"49.99999735090464\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\" id=\"BPMNShape_sid-BE372D14-F509-4EDB-87E8-7B2107835AE5\">\n        <omgdc:Bounds height=\"39.99999999999999\" width=\"40.0\" x=\"315.0000000000001\" y=\"49.99999735090464\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"user\" id=\"BPMNShape_user\">\n        <omgdc:Bounds height=\"79.99999999999997\" width=\"100.00000000000023\" x=\"285.00000000000006\" y=\"195.00000000000003\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\n        <omgdc:Bounds height=\"27.999999999999993\" width=\"28.0\" x=\"825.0000000000002\" y=\"55.99999735090464\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-04C9F29A-0BB5-4691-804C-764E4E0A2716\" id=\"BPMNEdge_sid-04C9F29A-0BB5-4691-804C-764E4E0A2716\">\n        <omgdi:waypoint x=\"335.00000000000017\" y=\"275.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"335.00000000000017\" y=\"321.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"839.0000000000002\" y=\"321.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"839.0000000000002\" y=\"83.99999735090464\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-510FE062-C0BC-46C8-9B17-8A38072A2BC6\" id=\"BPMNEdge_sid-510FE062-C0BC-46C8-9B17-8A38072A2BC6\">\n        <omgdi:waypoint x=\"335.4420731716675\" y=\"89.55792417923723\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"335.1215805451547\" y=\"195.00000000000003\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0D258C24-1F19-4233-A976-A0D8CB9DAEAC\" id=\"BPMNEdge_sid-0D258C24-1F19-4233-A976-A0D8CB9DAEAC\">\n        <omgdi:waypoint x=\"75.0\" y=\"69.99999735090464\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"150.00000000000003\" y=\"69.99999735090464\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-99CCA37F-A235-4853-8472-DE233AD2ED32\" id=\"BPMNEdge_sid-99CCA37F-A235-4853-8472-DE233AD2ED32\">\n        <omgdi:waypoint x=\"285.00000000000006\" y=\"235.0000000000001\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"200.0\" y=\"235.0000000000001\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"200.0\" y=\"109.99999735090464\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-AE5AED84-0746-4787-986F-6A7927C34C34\" id=\"BPMNEdge_sid-AE5AED84-0746-4787-986F-6A7927C34C34\">\n        <omgdi:waypoint x=\"354.5563647225545\" y=\"70.4436326283502\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"454.5454413182232\" y=\"70.14788595038502\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FB594BBE-8005-4EDC-B3C8-9781ED226C95\" id=\"BPMNEdge_sid-FB594BBE-8005-4EDC-B3C8-9781ED226C95\">\n        <omgdi:waypoint x=\"680.5000000000001\" y=\"89.49999735090464\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"680.5000000000001\" y=\"235.00000000000006\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"385.0000000000003\" y=\"235.00000000000006\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-33FBF24E-FE70-470A-9DB5-9B1881E13847\" id=\"BPMNEdge_sid-33FBF24E-FE70-470A-9DB5-9B1881E13847\">\n        <omgdi:waypoint x=\"554.5454413182231\" y=\"70.14207884953221\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"660.443005083439\" y=\"70.44300243434344\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-54571391-F2B3-4CB4-80A0-092DA02773A7\" id=\"BPMNEdge_sid-54571391-F2B3-4CB4-80A0-092DA02773A7\">\n        <omgdi:waypoint x=\"250.0\" y=\"70.1844991959231\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"315.42592592592604\" y=\"70.42592327683056\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-47687581-355B-4354-843C-C304233286AF\" id=\"BPMNEdge_sid-47687581-355B-4354-843C-C304233286AF\">\n        <omgdi:waypoint x=\"699.5601265822786\" y=\"70.43987076862615\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"825.0000696588461\" y=\"70.04416116901555\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('160010',1,'请假流程.process_leave.png','160008','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0_\0\0K\0\0\0)�6�\0\0\"�IDATx���\r����(�M\n�I��&��i��sO��ޤ�4�j<6��Mlj#M�uY�[k�עE��Z��\"G�<\rj�B�A��.+_E8B9A� ���Y8|��}��n�efYvgwgg�䟝��]���?��y���\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B�$öl�2wժU\'������&�ǢE��e˖���1��/�\0�X.˗/OZ[[��G�\Z0��ۗ,]��@Z�\\%\"A���\0�J�c�KE0G����� �_\0P��T�Ce��x9&\"A���\0�J�y�\n��)^	��\0C�x9�w�e�ɆE��F<������\0�T�lkIֿ49�닷�2�xM�x�K��\0P��eǆ�<�p���\r�����/�\0�Q�����K/��C���%\"������K/��C���%\"@�x�K���\0`p/qw�R�K���P���%�H\0(C�i��,^�5����/�KD@���[�%�_���Sv���5����/�KD@��[�<}Z��):/ �\0��x9r$�����O�I�������/	\0�,^��$o�x��5�Z�G�x�K�\0zR�9����J���;K.و��{�EV���%\0gQ��io��Ȋ���\0�P�tgoqW{�\"��\ns�M �_�r,@E/=-\\��Q�T��ӑ�\"�_�r,@e/��J�LG[:�OǾt\\c��_����x1/�՘/j��_����F�2�/�X\0ŋ�E�Rޢ`D���!!�(^�K�ܑ�鸸�������oS�_���CR}}�yuuu㯹�ߧcu:�#IG{����?�>�mԨQ���/�J�;_\\p��}.o�cf:��l�!!ǢWҍtACCã�^{�{�\'O������ڰaCk{{��$u���7n�<gΜ%\'N\\�n��ҟ��n���/�\nL�fQ��[#�N���!!�R��B���ؗo��4��\n%�\r��84{���?�0鎴)k�9sfS�Q��c���xQ���]:�;g��+���t<�8���9��k�n+8�u��^!/�D?>~�����{���֤\'�{�7�t��u~cc��S�(^��aE�y=��cy:��#�r,�+������PM�<9�?~�}�����{�\'�8---��)S�kv�p��w�����l�SO=�?~<��ӧ�Q__��8T�*^/CJ,��ӱ�{cK��&Ł�e�_ȱl㕿�딦�����Vo���&��s�)\rX�����+D�u�w�7w�ܤ���w�sL�xR{c,���1���kL���w>�/4��ː��X9��i�6N�7��M�\\CC�)\rؐ��L��3g&}���ۘnع�V�x�z�8W��l���H�_�w��/���\n����w�� �_ȱr,=���Od�R4N+V��U�z���?�A�Q���+�M׽&LH�{c����ޞ���?ܙv��]ŋ⥪���5�^�=&��g��{U�Ϳ����t*�J�;%�_��%�ʱ�O�uU}}��QZ�dIYz�U�Vu>��{�ŋ��o>�g_z�7�=z[��K��\\�� ۻ�X�E��t|�������_��Ǌ�͍�`��@�2�/9V��o���K��Y�T�3�f͚U؀m��^��{�H�äI�֧�y���E�RU.HǦt�[S�vſH�ɂž5�tz�%������\\)������/C��c�X�F��$k������;�K�y�������^!�����_��Xw�P�[�7o>:z��u�X�x��� ��ۍ�^������=�ܙ^��O�E����!ɱr,}�|��\Z���|_�[��|�j7�5k�����^���w�\r7��O���I���t���E�2�b����ؗ�;��g��y}��ۋ��w6拓-��/������ɴ� �֫���O�Gղ�j{���zj�O<���iӦ���m/Bǡզ�ÿX�x,1٩(��T\\��fͩ�t�Z�����}FXN+\'^�/�9��������w�}}�#̘1��گ���N�z�/�K�6_k֬�\Z�f-�O�����>(^/���o�����B:>�T|�������뛖�ʈ�K�B�ep�d����w8,%n]_�w��^��o>�{��~m����Ӛn�������P���K����E|f/��bw���^����Ǉ�V@��_�r,�;&��7e�o߾�O{����¿Gu�\nq�f�cٟ��K7h��/��{���E�Ri1���ٖ�+z��t�z�Kz𻳿���ʈ�?��r���� ��tξ/�]������n�ڍ>��m�G7_k׮�%�\0��~�x��7��+Wv��[�n=�����d�ƍ%����ӻ����n���q�e\'{��k��{�\"&�1���}q\'��E��*oD�qt�7v���=�\\�/}��\"�US��f�eȱr�Qt�w�P���u�]w���|>|x�#_].����ꮈ���v\")����=�so��ۗk��������}�v�J���?$�\\rI���O\'�>�h�=����}����s�v4r�3K�.M^x���k��}��g?�|�k_�=��������>��{��g�y����oLvZ�v�8����w�:�Ϡ���H��e ��G}���-��E]�Y>��g>�Y>z��s�c�Ν�r�;dc2}|Б�2�馛���5_i��7�|\r��ɷ?���W罺�~r饗�,p������빯O>�d�m۶��hԊ��G��S�v|?|�����w������t�$s���=��D��u���\r\\/������x}x:���5����x��w�ڧ(��x��+����\r�W��Ӛ�������>���~����P�I�|���ɓ7�Z��_���^z�����)����~d���_�KYq��/9��7��{>�j���\Z�Ȏ;�6_�=��a5G�\n���\Z�h�bd{��q��X�P���S��Tns<^�`A�k|�x鿘<˽�c:-��5g�P����\n��DQ{�GZB+3^���3:\"n>��Ov���Q_��Ws9(���Q����W�B�e(Ƥ������?+��t�]w��s�r�ܝ=^�V��Q��s�iӦ\\\"�f,\n�|��=��6^��S4[�i�q�a%���)���eJa��G#�5k�;�q\\�yOs���#�������^贝��.���5�/����>����b{s+��R{�/�|��T5�#_ш�z�e�]��z뭹�$F<�&����h>���cJ1ٟ��5mڴ����I�&����ǟ8~�x���p����ħe�����eϞ=�� ���)ν��\"/��b�I��ì!��\"���ŋO{����f���s�Wv�o���I\Z+�^���ǩ<����}6��E����1E�	��_g<�����v.���R\rX�b�|��\\�4;�/!�2�444|.�ۏEC�>��d�q��1cƜ,h���W���[7��-���KH7�r�\\y�Kv�N\\����i4?���s�%��ኆ,&G�b$��ES�85�#_��k�\n��q�Sp\nO��X��\"���[W{�/\"[���V�nu,u+���,W����G��t�hЊ5_�\'ON&L�������/�X���ܯ�)�\Z�/<�쳅G���W�я~4j�ĉ����W��ѣצ��c�qe/�,e�����T���q\nMM��bq!y�z����&�e�=����(z:�9>��r�Ι���Ӊ��x���c������+�����o���;G�ƍ��}��f�;G�\"}�{�+���/�X�`�52k���W�o��/�N|�s��\n�B�.\n�חE\'��s�/}<�3�����c�Fa#V�|��o�����R�E���n��՝�5�Yq{����5wc��Θ}��⥢�{�i�k�#������}�W�7��|�>��9+;2G����3�Y�r,CEZ�/Κ��V�\\���3&N�x��א���믿���o��\'�׺u�^H���i\'�/·r���I�\"%��(\\�ϲ��;�r\\+��)<�<������9`qJN��%���b#^�)�H��Љ׾��o���R͝�\"�Ζ�8P�_]��qà�u|W���|R�����T�v�]w�U�\'!�2���ұ/k�\"_����kʔ)��yR�1c\Zƍ�akkkY�ta���ѣ�9�pp�9��k3��W�2 �A__߀�%!�ʱtC]]�5��7�#`==1~���dH�\n\r\r\r׏;�`�����h����;���e��K����wܒ��9�\n�6I��\rX\\���Yݽ�a�\\��\Z�C�W��v̘1���C��	G�o~�\'�T��O��ŋ��gY�+�r,�+����y�&,�,�G��S�����͆f̘�\\w�u\'\n.N5�+���� �H�Ǎ�g�ڵ���s�^~��g��mu\\0�\Z/ŋ�N{g�s��ښ|�����!!�R��B�-�{8�\nE6�Uф566�N�:uß���mi��;�u�޳k׮�-Z��Ow�}�����2:Xw5T�(^(����E?�����^0�ː��c�B�	;v6M�^��ӭ�\r;!�Psӱ5���_w�c~:n��O�V�(^/}]tw�-�!!�Rٽ�	��C�R9�٩8Ȋ���_���� VWWwqv$,m�4�(^�K����N��7V�2�/�X����Wp��j[ŋ�x��76�����!!�2ȥ�ֈ���͘�C�b(^*ȹ6��e�_ȱTE�5��\r6V���C�R9��v���9��k#J�����~�-���P�(���/�X(O�-����+m!/��Ea��%!�B��lę>�˵_(^ŋ�\0�K�B������n|��;�x1/\n�/�9�(^/�3�!!�\"�@�xArF����cA�x1/�3�!ɱr,b/�$g�ː��c{�x1/�3���bŋ�x�����9����3�����{(^ŋ��%!ǂ�ŋ�ErF�2�/�X�(^ŋ��%!ǂ�C�b(^$g�/C�B�E�Ao477+*c����1)9#�_ȱ ��R˖-���ڪx����2;-^���3���b�*��+�\\�dɒ�{��=���=�Q�,Z�h[:���3���b�*�.�W455���F�}�_Gl�.�3���b��a\"9ȱ�=��\'��������l\r$g\09�􁺺����w,&`}}���3��������/?V�\"H�\0r,b(�����Fڌ]a� 9ȱ�=���n~a��r��3����7�N;ꕍ������3����3�k��c�-�� �\"���O��G�\\��� �\"���M��]5^�|�� �\"�\0� ǂ�����L@��bL@��bL@�\0r,b0\0r,�=0\0ȱ�=�Dl\0ȱ�=�Dl\0ȱ ��Dl\0 �\"�\0� ǂ���������L@��bL@�\0r,b0\0r,�=0\0r,�=0\0ȱ�=�Dl\0ȱ ��Dl\0 �\"�\0� �\"�\0� ǂ�����L@��bL@��+�\"��� �\"�\0� ǂ�����L@����{`\"6\0�X{`\"6\0�c{�	��\0�cA�	��\0@�E�& b@�E�& b@��& b\09����\r\09����\r\09��� 6\0�X�`\"6\0�X{`\"6\0�c{�	��\0�c{�	��\0�cA�	��\0@�E�& b@��& b\09�&�	��\0�c{�	��\0�cA�	��\0@�E�& b@��& b@��& �\r\09����\r\09����\r\0�X�`\"6\0�X�`\"6\0�X{`\"6\0�c{�	��\0�cA�	��\0@�E�	b@�E�& b@��& b\09����\r\09����\r\09����\r� �\"�\0�2�����3�ն������.F��XW�W]]��������>t�|����f+X{�	H�caD�櫾�~�-`�E�& 勇b�~�v�����L@��]��Z/\0�/b0�i�5�Q/\0�/b0�����k�.�E\0���=����\"w헣^\0�_�`ҷq1Bl\0X{�	Xђ$�e˖��V�:��ܜ455�<-Z�,[��t�������U*\Z��˗\'����ѣG�\Z���K�.]z mĮ������U(�xi�*�;�������� ���Bq��ƧrF�|������U(�9��TT�%��/�=0�r�uh��d��\'�\r��ɍx�i�4_��������:�֒�ir��o?e�s�I�XA�	H�����+;7��4i�\0�/�=0)G����/�|�k�&�`��& eh��7�]����4M�/��bL@4_�/\0�/b0G�w7,�|�k�&�`��& eh�6�����W��i�|�_{`R�����u����:�����xMӤ��� ����W��k�>����4L�/��bL@��|9�lzu�����k�&�`��& �l���$o�x��5_�Z�G���� ���\'�ב#��M�$o,��d㕍xO��Q0�`��& g�|��h��`�/��bL@��|u�hWWG�4Q�/��bL@��|���ʆ&J�XA�	H7�/C�`�E�	hj�4_\0�_�`j��`��& �/�������/C�XA�	��24_�����h�4_\0�_�`j��`��&��K����\"�\0P����\"�\0P�eh�\0�/�=0�|i�\0���=��|�/��bL�*R[[;L����\"�\0��$I��;w�\\�bE2iҤ���0���j��90���n����=��\0۷o����~,�;r���̞={�O�����\Z��W4]队�c�`�E�&�\0;t�п�ݻ�ݤ��[��O�:�����s4_�����teC��_�`���:gǎ�?q����N�<yb���r�-��|Un�UWWwq�^ع��|�_�`��{�~��������vd�̙������TX�U�H����\"��~��Ʃcƌ�H%=h�r?�����b����?�n����ޞ�]�6�\\�X�x�i??s�}�%{����~ʔ)���2è��\nA�y\r\r\r�;v�^}���\'O�<ޝ�k���ό7nq�֖����#�Hr�e�嚯h����<�@Gs�����D��o�[�tiG�֯_�����^K,X�{�o߾�>��ꫯ�f��T���0���#��_�hkkk��z���<����D�)�?7X��:p�@����~:���K/͚���E�5}���sO>�d���ѣ�g�y����̙3hn���?]��-�|��� �F��xCC���{��ĉ����͛7?������nZcc���Tr�G��sʢaJ�M�Svd+�hmܸ���^H&O�|J�G��/_�����ݭ��Gk�\0�|TV�\Zq�-��۲eK��Ç��y�s򧰍����p�+\Z����x��C%�����k��6y��Oi��mۖ̚5+��E]��s�6m�=���|gP�r�H�JQ���B���K�	���k|_�}����G��k�#_�w^�Z�xn�Ν���bĵ^���7ޘ{���yP6_\0����&���K��nݺ��z��F��4�}�v��}��*�tň�������Y�&׌}�ᇃ��\0h�\0���|\r><w��V�4#��i�5G�\n&�\rˎ�e_|��A}�!\0h�\04_}�|�gy��o�����n�Q��Z�n]�����p�k�2�\0h�\04_�F\\��>���o�Qx��h��?���׸�F|F����s�?�裹��n]��\0���k�\0h�\0͗��\0���K�\0�/\0͗��\0�����h�\0@����|��@�eh�\0@����|��@�eh�\0@�h��\0h�\04_�/\0�|h��\0h�\04_�/\0�|h�4_\0�|�/C�\0�/\0͗�\04_\0�/C�\0�/@�eh�\0@����|��@�eh�\0@����|��@�eh�\0@�h��\0h�\04_�/\0�|h��\0h�\04_�/\0�|����fMO����:&*@�T�e˖�nmm��T�hii��6_o�J\0�|U�W^�rɒ%����{X4pG���Z�hѶt\\%*@�T��࿢��iu���\r�1o޼d������-�\0h�\0*�޽{�?cƌ$M��\Z\0���$Ir�|ЖJƎ�\'[\04_\0�;v�>�{��W[���G�*\0����:��\'N�8��2eʎ���sm\0�|P&{��ْt���=\r\r\r�m\0�|P۷o���0o޼=i�a+���^H��O9r�J5_\'O�<z�-�����fk���ڹs����lٲ���~��\0�/\0zhŊg꽒���%��ϱ�\0@�@��W��iW�F�u�w�q�\04_\0���ٳ�V��ڼy��i�^�/\0�|�K�F����j/r���\r\r\r���\04_\0������P�l�(l�f͚�X]]�4[\04_\0�I�V�p��ւX~&Mқ\Zϵu\0@�@�?�mmmGґ�;vQ}}�H[\04_\0�Gyd��3����y�\0h�\0�#q�a$�	��\0�/\0$g\0�� 9\0�w\0$g\0�� 9\0�w\0�\0�� 9\0�w\0�\0�� 9��\0�\0��H�\0��\0�\0��H�\0��@r\0��\0H�\0��@r\0��\0H�\0`}@r\0��\0�3\0`}@r\0��\0�3\0`}@r\0�;\0�3\0`}��\0�;\0�3\0X߭�\0�3\0`}��\0�;\0�3\0`}��\0�;\0�3\0X���l�aF�\rU\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pu�?��{���G\0\0\0\0IEND�B`�',1),('160014',1,'var-userLeave',NULL,'��\0sr\0com.len.entity.UserLeave\0\0\0\0\0\0\0\0L\0	beginTimet\0Ljava/util/Date;L\0createByt\0Ljava/lang/String;L\0\ncreateDateq\0~\0L\0dayst\0Ljava/lang/Integer;L\0endTimeq\0~\0L\0idq\0~\0L\0opinionListt\0Ljava/util/List;L\0processInstanceIdq\0~\0L\0reasonq\0~\0L\0statusq\0~\0L\0taskNameq\0~\0L\0updateByq\0~\0L\0\nupdateDateq\0~\0L\0userIdq\0~\0L\0userNameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0a=,\0xt\0 acfc0e9232f54732a5d9ffe9071bf572sq\0~\0w\0\0a8�F�xsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number������\0\0xp\0\0\0sq\0~\0w\0\0aG��\0xt\0 39d1d050038711e884f1201a068c6482sr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0\0w\0\0\0\0xt\02018t\0222ppppq\0~\0t\0admin',NULL),('160016',1,'hist.var-userLeave',NULL,'��\0sr\0com.len.entity.UserLeave\0\0\0\0\0\0\0\0L\0	beginTimet\0Ljava/util/Date;L\0createByt\0Ljava/lang/String;L\0\ncreateDateq\0~\0L\0dayst\0Ljava/lang/Integer;L\0endTimeq\0~\0L\0idq\0~\0L\0opinionListt\0Ljava/util/List;L\0processInstanceIdq\0~\0L\0reasonq\0~\0L\0statusq\0~\0L\0taskNameq\0~\0L\0updateByq\0~\0L\0\nupdateDateq\0~\0L\0userIdq\0~\0L\0userNameq\0~\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0a=,\0xt\0 acfc0e9232f54732a5d9ffe9071bf572sq\0~\0w\0\0a8�F�xsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number������\0\0xp\0\0\0sq\0~\0w\0\0aG��\0xt\0 39d1d050038711e884f1201a068c6482sr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0\0w\0\0\0\0xt\02018t\0222ppppq\0~\0t\0admin',NULL);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','162501',66),('schema.history','create(5.22.0.0)',1),('schema.version','5.22.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('122506','leave_process:1:120011','122505','122505','start',NULL,NULL,'start','startEvent',NULL,'2018-01-24 23:06:38.000','2018-01-24 23:06:38.000',67,''),('122507','leave_process:1:120011','122505','122505','user1','122508',NULL,'经理审批','userTask',NULL,'2018-01-24 23:06:38.000',NULL,NULL,''),('130010','leave_process:1:120011','130009','130009','start',NULL,NULL,'start','startEvent',NULL,'2018-01-24 23:47:12.000','2018-01-24 23:47:12.000',3,''),('130011','leave_process:1:120011','130009','130009','user1','130012',NULL,'经理审批','userTask',NULL,'2018-01-24 23:47:12.000',NULL,NULL,''),('130015','leave_process:1:120011','130014','130014','start',NULL,NULL,'start','startEvent',NULL,'2018-01-24 23:50:10.000','2018-01-24 23:50:10.000',1,''),('130016','leave_process:1:120011','130014','130014','user1','130017',NULL,'经理审批','userTask',NULL,'2018-01-24 23:50:10.000',NULL,NULL,''),('130020','leave_process:1:120011','130019','130019','start',NULL,NULL,'start','startEvent',NULL,'2018-01-24 23:52:30.000','2018-01-24 23:52:30.000',7,''),('130024','leave_process:1:120011','130019','130019','user1','130025',NULL,'经理审批','userTask',NULL,'2018-01-24 23:52:30.000',NULL,NULL,''),('160013','process_leave:1:160011','160012','160012','start',NULL,NULL,'start','startEvent',NULL,'2018-01-28 01:26:47.000','2018-01-28 01:26:47.000',1,''),('160017','process_leave:1:160011','160012','160012','user1','160018',NULL,'经理审批','userTask',NULL,'2018-01-28 01:26:47.000',NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('130013','0ea934e5e55411e7b983201a068c6482','candidate',NULL,'130012',NULL),('130018','0ea934e5e55411e7b983201a068c6482','candidate',NULL,'130017',NULL),('130026','0ea934e5e55411e7b983201a068c6482','candidate',NULL,'130025',NULL),('160019','0ea934e5e55411e7b983201a068c6482','candidate',NULL,'160018',NULL);

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('122505','122505',NULL,'leave_process:1:120011','2018-01-24 23:06:38.000',NULL,NULL,NULL,'start',NULL,NULL,NULL,'',NULL),('130009','130009',NULL,'leave_process:1:120011','2018-01-24 23:47:12.000',NULL,NULL,NULL,'start',NULL,NULL,NULL,'',NULL),('130014','130014',NULL,'leave_process:1:120011','2018-01-24 23:50:10.000',NULL,NULL,NULL,'start',NULL,NULL,NULL,'',NULL),('130019','130019',NULL,'leave_process:1:120011','2018-01-24 23:52:30.000',NULL,NULL,NULL,'start',NULL,NULL,NULL,'',NULL),('160012','160012',NULL,'process_leave:1:160011','2018-01-28 01:26:47.000',NULL,NULL,NULL,'start',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('122508','leave_process:1:120011','user1','122505','122505','经理审批',NULL,NULL,NULL,NULL,'2018-01-24 23:06:38.000',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('130012','leave_process:1:120011','user1','130009','130009','经理审批',NULL,NULL,NULL,NULL,'2018-01-24 23:47:12.000',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('130017','leave_process:1:120011','user1','130014','130014','经理审批',NULL,NULL,NULL,NULL,'2018-01-24 23:50:10.000',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('130025','leave_process:1:120011','user1','130019','130019','经理审批',NULL,NULL,NULL,NULL,'2018-01-24 23:52:30.000',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('160018','process_leave:1:160011','user1','160012','160012','经理审批',NULL,NULL,NULL,NULL,'2018-01-28 01:26:47.000',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('130022','130019','130019',NULL,'userLeave','serializable',0,'130023',NULL,NULL,NULL,NULL,'2018-01-24 23:52:30.000','2018-01-24 23:52:30.000'),('160015','160012','160012',NULL,'userLeave','serializable',0,'160016',NULL,NULL,NULL,NULL,'2018-01-28 01:26:47.000','2018-01-28 01:26:47.000');

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('0ea934e5e55411e7b983201a068c6482',1,'manage',NULL),('2619a672e53811e7b983201a068c6482',1,'admin',NULL),('dcb0f642fe9611e7b472201a068c6482',1,'dev',NULL);

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`) values ('2211fec3e17c11e795ed201a068c6482','0ea934e5e55411e7b983201a068c6482'),('acfc0e9232f54732a5d9ffe9071bf572','2619a672e53811e7b983201a068c6482'),('5354d45a018311e8a1a2201a068c6482','dcb0f642fe9611e7b472201a068c6482'),('6a038f15019711e8a1a2201a068c6482','dcb0f642fe9611e7b472201a068c6482'),('a4a743bffe9711e7b472201a068c6482','dcb0f642fe9611e7b472201a068c6482'),('c7f1a7d7018311e8a1a2201a068c6482','dcb0f642fe9611e7b472201a068c6482');

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('2211fec3e17c11e795ed201a068c6482',1,'Tom Curise',NULL,'154040976@qq.com',NULL,NULL),('5354d45a018311e8a1a2201a068c6482',1,'111',NULL,'',NULL,NULL),('6a038f15019711e8a1a2201a068c6482',1,'张三',NULL,'',NULL,NULL),('a4a743bffe9711e7b472201a068c6482',1,'朱肖梦',NULL,'1544040976@qq.com',NULL,NULL),('acfc0e9232f54732a5d9ffe9071bf572',1,'管理员',NULL,'',NULL,NULL),('c7f1a7d7018311e8a1a2201a068c6482',1,'666',NULL,'',NULL,NULL),('ce1f6f35018211e8a1a2201a068c6482',1,'123',NULL,'',NULL,NULL);

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('160008','请假流程',NULL,'','2018-01-28 01:26:21.000');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('142517',28,'请假流程','processKey',NULL,'2018-01-25 17:21:39.000','2018-01-28 01:26:22.000',1,'{\"name\":\"请假流程\",\"description\":\"\"}','160008','142518','142519','');

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('process_leave:1:160011',1,'http://www.activiti.org/processdef','请假流程','process_leave',1,'160008','请假流程.bpmn20.xml','请假流程.process_leave.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('160012',1,'160012',NULL,NULL,'process_leave:1:160011',NULL,'user1',1,0,1,0,1,2,'',NULL,NULL);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('160019',1,'0ea934e5e55411e7b983201a068c6482','candidate',NULL,'160018',NULL,NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('160018',1,'160012','160012','process_leave:1:160011','经理审批',NULL,NULL,'user1',NULL,NULL,NULL,50,'2018-01-28 01:26:47.000',NULL,NULL,1,'',NULL);

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('160015',1,'serializable','userLeave','160012','160012',NULL,'160014',NULL,NULL,NULL,NULL);

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `id` varchar(32) NOT NULL,
  `job_name` varchar(255) NOT NULL COMMENT '描述任务',
  `cron` varchar(255) NOT NULL COMMENT '任务表达式',
  `status` tinyint(1) NOT NULL COMMENT '状态:0未启动false/1启动true',
  `clazz_path` varchar(255) NOT NULL COMMENT '任务执行方法',
  `job_desc` varchar(255) DEFAULT NULL COMMENT '其他描述',
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_job` */

insert  into `sys_job`(`id`,`job_name`,`cron`,`status`,`clazz_path`,`job_desc`,`create_by`,`create_date`,`update_by`,`update_date`) values ('55147ebdf2f611e7a4fe201a068c6482','测试定时demo1','0/5 * * * * ?',0,'com.len.core.quartz.CustomQuartz.JobDemo1','测试定时demo1','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 12:30:00','acfc0e9232f54732a5d9ffe9071bf572','2018-01-08 00:09:06'),('ab648a22f38d11e7aca0201a068c6482','任务demo2','0 0/1 * * * ?',1,'com.len.core.quartz.CustomQuartz.JobDemo2','任务demo2','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 17:32:36','acfc0e9232f54732a5d9ffe9071bf572','2018-01-13 19:34:38');

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `param` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=884 DEFAULT CHARSET=utf8;

/*Data for the table `sys_log` */


/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `p_id` varchar(36) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `order_num` int(4) DEFAULT NULL COMMENT '排序字段',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `menu_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1栏目2菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`name`,`p_id`,`url`,`order_num`,`icon`,`create_by`,`create_date`,`update_by`,`update_date`,`permission`,`menu_type`) values ('0e6c8d4cf09511e78a57201a068c6482','删除','cff61424dfb311e7b555201a068c6482',NULL,3,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 22:47:44',NULL,NULL,'role:del',1),('18bf8d5df09511e78a57201a068c6482','新增','3873ccc2dfda11e7b555201a068c6482',NULL,1,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 22:48:01',NULL,NULL,'nemu:add',1),('28661300f9d411e7a009201a068c6482','流程管理','e06da471f90311e780aa201a068c6482','/act/goAct',2,'&#xe630;','acfc0e9232f54732a5d9ffe9071bf572','2018-01-15 17:12:06',NULL,NULL,'act:deployment',0),('2b56410cf09411e78a57201a068c6482','新增','cff61424dfb311e7b555201a068c6482',NULL,1,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 22:41:23',NULL,NULL,'role:add',1),('3873ccc2dfda11e7b555201a068c6482','菜单管理','cfda8029dfb311e7b555201a068c6482','menu/showMenu',1,'&#xe62a;',NULL,'2017-12-14 14:02:50',NULL,'2017-12-14 14:02:50','menu:show',0),('433089a6eb0111e782d5201a068c6482','编辑','cfe54921dfb311e7b555201a068c6482','',NULL,'1','acfc0e9232f54732a5d9ffe9071bf572','2017-12-27 20:27:11',NULL,NULL,'user:update',1),('4d603831fe9b11e7b472201a068c6482','待办任务','e06da471f90311e780aa201a068c6482','/leave/showTask',5,'&#xe6af;','acfc0e9232f54732a5d9ffe9071bf572','2018-01-21 19:07:43',NULL,NULL,'task:show',0),('5ae3d4e9f38e11e7aca0201a068c6482','新增','e9a13e55f35911e7aca0201a068c6482',NULL,1,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 17:37:30',NULL,NULL,'job:add',1),('6315968bf37111e7aca0201a068c6482','停止','e9a13e55f35911e7aca0201a068c6482',NULL,4,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 14:10:09',NULL,NULL,'job:end',1),('63da4415fc6211e7a781201a068c6482','模型列表','e06da471f90311e780aa201a068c6482','/act/goActModel',3,'&#xe60a;','acfc0e9232f54732a5d9ffe9071bf572','2018-01-18 23:15:17',NULL,NULL,'act',0),('6931fd22f09611e78a57201a068c6482','删除','b441914cee0811e7a60d201a068c6482',NULL,1,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 22:57:26',NULL,NULL,'control:del',1),('69f3f59cf38e11e7aca0201a068c6482','编辑','e9a13e55f35911e7aca0201a068c6482',NULL,2,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 17:37:56',NULL,NULL,'job:update',1),('6dc13c6eec5f11e7a472201a068c6482','系统日志','a1ca6642ec5e11e7a472201a068c6482','log/showLog',1,'&#xe60a;','acfc0e9232f54732a5d9ffe9071bf572','2017-12-29 14:43:46',NULL,'2017-12-29 14:43:46','log:show',0),('788d8e34f38e11e7aca0201a068c6482','删除','e9a13e55f35911e7aca0201a068c6482',NULL,5,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 17:38:20',NULL,NULL,'job:del',1),('7967e098ee0611e7a60d201a068c6482','接口api','a1ca6642ec5e11e7a472201a068c6482','swagger-ui.html',2,'&#xe64e;','acfc0e9232f54732a5d9ffe9071bf572','2017-12-31 16:42:04',NULL,NULL,NULL,0),('873f30b0f38e11e7aca0201a068c6482','查看','e9a13e55f35911e7aca0201a068c6482',NULL,6,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 17:38:45',NULL,NULL,'job:select',1),('88b8e5d1f38911e7aca0201a068c6482','查看','cff61424dfb311e7b555201a068c6482',NULL,4,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 17:03:00',NULL,NULL,'role:select',1),('a1ca6642ec5e11e7a472201a068c6482','系统监控',NULL,NULL,2,'&#xe62c;','acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 10:56:14',NULL,'2018-01-03 10:56:14',NULL,0),('b441914cee0811e7a60d201a068c6482','系统监控','a1ca6642ec5e11e7a472201a068c6482','druid/index.html',3,'&#xe628;','acfc0e9232f54732a5d9ffe9071bf572','2017-12-31 16:58:01',NULL,NULL,NULL,0),('b7839f59fe8811e7b472201a068c6482','请假流程','e06da471f90311e780aa201a068c6482','/leave/showLeave',4,'&#xe650;','acfc0e9232f54732a5d9ffe9071bf572','2018-01-21 16:54:40',NULL,NULL,'leave:show',0),('cfda8029dfb311e7b555201a068c6482','系统管理',NULL,NULL,1,'&#xe614;',NULL,'2018-01-03 10:56:13',NULL,'2018-01-03 10:56:13',NULL,0),('cfe54921dfb311e7b555201a068c6482','用户管理','cfda8029dfb311e7b555201a068c6482','/user/showUser',2,'&#xe6af;',NULL,'2017-12-29 14:40:34',NULL,'2017-12-29 14:40:34','user:show',0),('cfe54921dfb311e7b555201a068c6483','增加','cfe54921dfb311e7b555201a068c6482',NULL,1,NULL,NULL,NULL,NULL,NULL,'user:select',1),('cff61424dfb311e7b555201a068c6482','角色管理','cfda8029dfb311e7b555201a068c6482','/role/showRole',3,'&#xe613;',NULL,'2017-12-29 14:40:36',NULL,'2017-12-29 14:40:36','role:show',0),('e06da471f90311e780aa201a068c6482','工作流程管理',NULL,NULL,3,'&#xe628;','acfc0e9232f54732a5d9ffe9071bf572','2018-01-14 16:21:10',NULL,NULL,NULL,0),('e3b11497eb9e11e7928d201a068c6482','删除','cfe54921dfb311e7b555201a068c6482','',NULL,'','acfc0e9232f54732a5d9ffe9071bf572','2017-12-28 15:17:07',NULL,'2017-12-28 15:17:07','user:del',1),('e9a13e55f35911e7aca0201a068c6482','定时任务','a1ca6642ec5e11e7a472201a068c6482','/job/showJob',3,'&#xe756;','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 11:22:06',NULL,NULL,'job:show',0),('ecda560cf36f11e7aca0201a068c6482','启动','e9a13e55f35911e7aca0201a068c6482',NULL,3,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-07 13:59:41',NULL,NULL,'job:start',1),('f23f6a6bf09511e78a57201a068c6482','修改密码','cfe54921dfb311e7b555201a068c6482',NULL,4,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 22:54:06',NULL,NULL,'user:repass',1),('ff015ea5f09411e78a57201a068c6482','编辑','cff61424dfb311e7b555201a068c6482',NULL,2,'','acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 22:47:18',NULL,NULL,'role:update',1);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL,
  `role_name` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`role_name`,`remark`,`create_by`,`create_date`,`update_by`,`update_date`) values ('0ea934e5e55411e7b983201a068c6482','manage','经理','acfc0e9232f54732a5d9ffe9071bf572','2017-12-20 15:04:44',NULL,'2018-01-02 11:41:43'),('2619a672e53811e7b983201a068c6482','admin','管理员','acfc0e9232f54732a5d9ffe9071bf572','2017-12-20 11:44:57',NULL,'2018-01-02 11:38:37'),('dcb0f642fe9611e7b472201a068c6482','dev','开发','acfc0e9232f54732a5d9ffe9071bf572','2018-01-21 18:35:56',NULL,NULL);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` varchar(32) NOT NULL,
  `menu_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values ('0ea934e5e55411e7b983201a068c6482','433089a6eb0111e782d5201a068c6482'),('0ea934e5e55411e7b983201a068c6482','4d603831fe9b11e7b472201a068c6482'),('0ea934e5e55411e7b983201a068c6482','6931fd22f09611e78a57201a068c6482'),('0ea934e5e55411e7b983201a068c6482','6dc13c6eec5f11e7a472201a068c6482'),('0ea934e5e55411e7b983201a068c6482','a1ca6642ec5e11e7a472201a068c6482'),('0ea934e5e55411e7b983201a068c6482','b7839f59fe8811e7b472201a068c6482'),('0ea934e5e55411e7b983201a068c6482','cfda8029dfb311e7b555201a068c6482'),('0ea934e5e55411e7b983201a068c6482','cfe54921dfb311e7b555201a068c6482'),('0ea934e5e55411e7b983201a068c6482','e06da471f90311e780aa201a068c6482'),('2619a672e53811e7b983201a068c6482','0e6c8d4cf09511e78a57201a068c6482'),('2619a672e53811e7b983201a068c6482','18bf8d5df09511e78a57201a068c6482'),('2619a672e53811e7b983201a068c6482','28661300f9d411e7a009201a068c6482'),('2619a672e53811e7b983201a068c6482','2b56410cf09411e78a57201a068c6482'),('2619a672e53811e7b983201a068c6482','3873ccc2dfda11e7b555201a068c6482'),('2619a672e53811e7b983201a068c6482','433089a6eb0111e782d5201a068c6482'),('2619a672e53811e7b983201a068c6482','4d603831fe9b11e7b472201a068c6482'),('2619a672e53811e7b983201a068c6482','5ae3d4e9f38e11e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','6315968bf37111e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','63da4415fc6211e7a781201a068c6482'),('2619a672e53811e7b983201a068c6482','6931fd22f09611e78a57201a068c6482'),('2619a672e53811e7b983201a068c6482','69f3f59cf38e11e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','6dc13c6eec5f11e7a472201a068c6482'),('2619a672e53811e7b983201a068c6482','788d8e34f38e11e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','7967e098ee0611e7a60d201a068c6482'),('2619a672e53811e7b983201a068c6482','873f30b0f38e11e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','88b8e5d1f38911e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','a1ca6642ec5e11e7a472201a068c6482'),('2619a672e53811e7b983201a068c6482','b441914cee0811e7a60d201a068c6482'),('2619a672e53811e7b983201a068c6482','b7839f59fe8811e7b472201a068c6482'),('2619a672e53811e7b983201a068c6482','cfda8029dfb311e7b555201a068c6482'),('2619a672e53811e7b983201a068c6482','cfe54921dfb311e7b555201a068c6482'),('2619a672e53811e7b983201a068c6482','cfe54921dfb311e7b555201a068c6483'),('2619a672e53811e7b983201a068c6482','cff61424dfb311e7b555201a068c6482'),('2619a672e53811e7b983201a068c6482','e06da471f90311e780aa201a068c6482'),('2619a672e53811e7b983201a068c6482','e3b11497eb9e11e7928d201a068c6482'),('2619a672e53811e7b983201a068c6482','e9a13e55f35911e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','ecda560cf36f11e7aca0201a068c6482'),('2619a672e53811e7b983201a068c6482','f23f6a6bf09511e78a57201a068c6482'),('2619a672e53811e7b983201a068c6482','ff015ea5f09411e78a57201a068c6482'),('a56219ffeb7d11e7928d201a068c6482','433089a6eb0111e782d5201a068c6482'),('a56219ffeb7d11e7928d201a068c6482','cfda8029dfb311e7b555201a068c6482'),('a56219ffeb7d11e7928d201a068c6482','cfe54921dfb311e7b555201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','4d603831fe9b11e7b472201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','5ae3d4e9f38e11e7aca0201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','6315968bf37111e7aca0201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','69f3f59cf38e11e7aca0201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','788d8e34f38e11e7aca0201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','873f30b0f38e11e7aca0201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','a1ca6642ec5e11e7a472201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','b7839f59fe8811e7b472201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','e06da471f90311e780aa201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','e9a13e55f35911e7aca0201a068c6482'),('dcb0f642fe9611e7b472201a068c6482','ecda560cf36f11e7aca0201a068c6482');

/*Table structure for table `sys_role_user` */

DROP TABLE IF EXISTS `sys_role_user`;

CREATE TABLE `sys_role_user` (
  `user_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_user` */

insert  into `sys_role_user`(`user_id`,`role_id`) values ('2211fec3e17c11e795ed201a068c6482','0ea934e5e55411e7b983201a068c6482'),('5354d45a018311e8a1a2201a068c6482','dcb0f642fe9611e7b472201a068c6482'),('6a038f15019711e8a1a2201a068c6482','dcb0f642fe9611e7b472201a068c6482'),('a4a743bffe9711e7b472201a068c6482','dcb0f642fe9611e7b472201a068c6482'),('acfc0e9232f54732a5d9ffe9071bf572','2619a672e53811e7b983201a068c6482'),('c7f1a7d7018311e8a1a2201a068c6482','dcb0f642fe9611e7b472201a068c6482');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `age` int(4) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `real_name` varchar(18) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0可用1封禁',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`password`,`age`,`email`,`photo`,`real_name`,`create_by`,`update_by`,`create_date`,`update_date`,`del_flag`) values ('2211fec3e17c11e795ed201a068c6482','tom','11ac200620f90acd1fdae53716fd3de2',41,'154040976@qq.com','','Tom Curise',NULL,'acfc0e9232f54732a5d9ffe9071bf572','2018-01-03 15:49:48','2018-01-25 11:11:13',0),('5354d45a018311e8a1a2201a068c6482','1234','3067254ba677b120f19d11eef506c15e',25,'','','111','acfc0e9232f54732a5d9ffe9071bf572',NULL,'2018-01-25 11:53:38',NULL,0),('6a038f15019711e8a1a2201a068c6482','ceshi222','f8af8f8f19433c8a960fec7af3f8ef63',24,'','','张三','acfc0e9232f54732a5d9ffe9071bf572','acfc0e9232f54732a5d9ffe9071bf572','2018-01-25 14:17:26','2018-01-25 15:40:31',0),('a4a743bffe9711e7b472201a068c6482','zxm','f8880ebbdbc37a936245657fa9084198',25,'1544040976@qq.com','','朱肖梦','acfc0e9232f54732a5d9ffe9071bf572','acfc0e9232f54732a5d9ffe9071bf572','2018-01-21 18:41:32','2018-01-25 11:23:24',0),('acfc0e9232f54732a5d9ffe9071bf572','admin','e0b141de1c8091be350d3fc80de66528',24,'','','管理员',NULL,'acfc0e9232f54732a5d9ffe9071bf572','2017-12-20 16:34:06','2018-01-25 10:25:29',0),('c7f1a7d7018311e8a1a2201a068c6482','666','c6953f608430df414ea52e8c01b81a45',24,'','','666','acfc0e9232f54732a5d9ffe9071bf572',NULL,'2018-01-25 11:56:54',NULL,0),('ce1f6f35018211e8a1a2201a068c6482','ceshi','256246977f27f81f265beb12ffebfdd2',25,'','','123','acfc0e9232f54732a5d9ffe9071bf572','acfc0e9232f54732a5d9ffe9071bf572','2018-01-25 11:49:55','2018-01-25 13:22:48',0);

/*Table structure for table `user_leave` */

DROP TABLE IF EXISTS `user_leave`;

CREATE TABLE `user_leave` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(18) DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `process_instance_Id` varchar(32) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_leave` */

insert  into `user_leave`(`id`,`user_id`,`user_name`,`begin_time`,`end_time`,`reason`,`days`,`process_instance_Id`,`status`,`create_date`,`create_by`,`update_date`,`update_by`) values ('39d1d050038711e884f1201a068c6482','acfc0e9232f54732a5d9ffe9071bf572','admin','2018-01-29 00:00:00','2018-01-31 00:00:00','222',3,'160012',NULL,'2018-01-28 01:26:47','acfc0e9232f54732a5d9ffe9071bf572','2018-01-28 01:26:47','acfc0e9232f54732a5d9ffe9071bf572');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;