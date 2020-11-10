CREATE DATABASE IF NOT EXISTS `education`
USE `education`;


CREATE TABLE IF NOT EXISTS `course` (
  `courseid` int(11),
  `name` varchar(250),
  `institution` int(11),
  KEY `FK_course_institution` (`institution`)
)


CREATE TABLE IF NOT EXISTS `institution` (
  `institutionid` int(11),
  `name` varchar(250)
)


CREATE TABLE IF NOT EXISTS `student` (
  `studentid` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  KEY `FK_student_course` (`course`)
)
