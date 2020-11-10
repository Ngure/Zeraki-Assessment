SELECT institution.name AS "INSTITUTION NAME", course.name AS "COURSE NAME", COUNT(student.course) AS "NUMBER OF STUDENTS"
    FROM student
    LEFT JOIN course ON course.courseid = student.course
    INNER JOIN institution ON institution.institutionid = course.institution
	 GROUP BY institution.name, course.name, student.course
	 ORDER BY student.course;