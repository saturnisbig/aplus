/*
Todo: Add Foreign Key support. Modify the table structure.

*/
SET FOREIGN_KEY_CHECKS=0;
-- --------------------------------------------------------
-- 表的结构 `course_case`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `course_case` VALUES ('1', '', '0', '2011-06-03 06:08:10');

-- --------------------------------------------------------
-- 表的结构 `course_classtype`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_classtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------
-- 表的结构 `course_class_info`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_class_info` (
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
-- 表的结构 `course_coursetype`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_coursetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
-- 表的结构 `course_grade`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(50) NOT NULL,
  `grade_alias` varchar(50) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
INSERT INTO `course_grade` (grade_name, grade_alias) VALUES ('小学六年级', '小升初');

-- --------------------------------------------------------
-- 表的结构 `course_school`
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `course_school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` int(11) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `course_school` (school_name) VALUES ('松柏校区');

-- --------------------------------------------------------
-- 表的结构 `course_season`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_season` (
  `season_id` int(11) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(50) NOT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
-- 表的结构 `course_teacher`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `course_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(100) NOT NULL,
  `courseID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
