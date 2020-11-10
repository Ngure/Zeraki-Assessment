SELECT institution.name AS "INSTITUTION NAME", course.name AS "COURSE NAME", COUNT(student.course) AS "NUMBER OF STUDENTS"
    FROM student
    JOIN course ON course.courseid = student.course
    JOIN institution ON institution.institutionid = course.institution
	 GROUP BY institution.name, course.name, student.course
	 ORDER BY student.course;
