/*
Todo: Add Foreign Key support. Modify the table structure.
Done:
Todo: Create class_info table, which has many relationships with other tables.

*/
SET FOREIGN_KEY_CHECKS=0;
-- --------------------------------------------------------
-- 教学案例表的结构 `aplus_case`
-- --------------------------------------------------------
/*
CREATE TABLE IF NOT EXISTS `aplus_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_case` VALUES ('1', '', '0', '2011-06-03 06:08:10');
*/
-- --------------------------------------------------------
-- 课程类型表的结构 `aplus_classtype`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_class_type` (
  `class_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`class_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_class_type`(class_type_name) values('同步强化');
INSERT INTO `aplus_class_type`(class_type_name) values('提高冲刺');
INSERT INTO `aplus_class_type`(class_type_name) values('培优竞赛');

-- --------------------------------------------------------
-- 课程信息表的结构 `aplus_class_info`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_class_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `gradeID` int(11) NOT NULL,
  `schoolID` int(11) NOT NULL,
  `seasonID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `caseID` int(11) NOT NULL,
  `intro` text NOT NULL,
  `totalFee` float NOT NULL,
  `totalTime` float NOT NULL,
  `perFee` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------
-- 学科表的结构 `aplus_course`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_course`(course_name) values('语文');
INSERT INTO `aplus_course`(course_name) values('数学');
INSERT INTO `aplus_course`(course_name) values('英语');
INSERT INTO `aplus_course`(course_name) values('物理');
INSERT INTO `aplus_course`(course_name) values('化学');
INSERT INTO `aplus_course`(course_name) values('生物');
INSERT INTO `aplus_course`(course_name) values('政治');
INSERT INTO `aplus_course`(course_name) values('历史');
INSERT INTO `aplus_course`(course_name) values('地理');

-- --------------------------------------------------------
-- 年级信息表的结构 `aplus_grade`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(50) NOT NULL,
  `grade_alias` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('小学一年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('小学二年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('小学三年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('小学四年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('小学五年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('小学六年级', '小升初');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('初中一年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('初中二年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('初中三年级', '中考');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('高中一年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('高中二年级', '');
INSERT INTO `aplus_grade` (grade_name, grade_alias) VALUES ('高中三年级', '高考');

-- --------------------------------------------------------
-- 阶段信息表的结构 `aplus_stage`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_stage` (
  `stage_id` int(11) NOT NULL AUTO_INCREMENT,
  `stage_name` varchar(50) NOT NULL,
  PRIMARY KEY (`stage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_stage` (stage_name) VALUES ('小学');
INSERT INTO `aplus_stage` (stage_name) VALUES ('初中');
INSERT INTO `aplus_stage` (stage_name) VALUES ('高中');

-- --------------------------------------------------------
-- 表的结构 `aplus_school`
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `aplus_school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` int(11) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_school` (school_name) VALUES ('松柏校区');

-- --------------------------------------------------------
-- 季度表的结构 `aplus_season`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_season` (
  `season_id` int(11) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(50) NOT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_season` (season_name) VALUES ('春季班');
INSERT INTO `aplus_season` (season_name) VALUES ('暑假班');
INSERT INTO `aplus_season` (season_name) VALUES ('秋季班');
INSERT INTO `aplus_season` (season_name) VALUES ('寒假班');

-- --------------------------------------------------------
-- 教师信息表的结构 `aplus_teacher`
-- course_id: 外键，对应学科表
-- stage_id : 外键，对应阶段表
-- school_id: 外键，对应校区表
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `teacher_intro` text DEFAULT NULL,
  `teacher_style` text DEFAULT NULL,
  `teacher_method` text DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_teacher` (teacher_name, course_id, stage_id, school_id, teacher_intro, teacher_style, teacher_method) VALUES ('林老师', 4, 2, 1, \
  "A佳教育个性化1对1初中物理高级资深教师，有着扎实的物理功底、丰富的教学敬仰。学生认可，在循序渐进中提升学生的成绩。对中考分析把握透彻，所带学生进步率85%", \
  "风趣，有条不紊", \
  "在授课中着重引导学生独立思考，启发学生思维。面对不同类型的孩子，或严厉；或关爱。对不同的学生，扮演不同的角色，是良师，是益友。");
-- --------------------------------------------------------
-- 活动信息表的结构 `aplus_activity`
-- --------------------------------------------------------
/**/
CREATE TABLE IF NOT EXISTS `aplus_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_title` varchar(255) NOT NULL,
  `activity_content` text DEFAULT NULL,
  `activity_post_date` datetime,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `aplus_activity`(activity_title, activity_post_date) VALUES('A佳教育活动1', '20120421');
INSERT INTO `aplus_activity`(activity_title, activity_post_date) VALUES('A佳教育活动2', '20120421');
/*
-- --------------------------------------------------------
-- 新闻信息表的结构 `aplus_news`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `aplus_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) NOT NULL,
  `news_content` text DEFAULT NULL 
  `news_post_date` datetime,
)
 */
