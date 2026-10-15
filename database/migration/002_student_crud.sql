-- Student SQL#  : select all students
SELECT * FROM student;

-- Student SQL2#  : select student by id
SELECT * FROM student
ORDER BY student_id ASC;

-- student SQL3# : select student in desc order by id:
SELECT * FROM student
ORDER BY student_id DESC;

-- student SQL4# : select student in desc order by id:
SELECT * FROM student
ORDER BY student_last_name ASC;

-- student SQL5# : select student in desc order by id:
SELECT * FROM student
ORDER BY student_last_name DESC;

--student SQL6# : select student in desc order by id:
SELECT * FROM student
ORDER BY student_last_name ASC;

-- student SQL6# : select student in desc order by id:
SELECT * FROM student
ORDER BY student_last_name DESC;

-- You can modify displayed columns by selecting
-- specific columns after SELECT coommand
-- student SQL8# display all students first_name and last_name
SELECT student_first_name,
         student_last_name 
FROM student
ORDER BY student_last_name ASC;

-- student SQL#9 LIMIT 1
SELECT student_first_name,
         student_last_name
FROM student
WHERE student_id = 1
ORDER BY student_last_name ASC
 LIMIT 1;

-- student SQL#10- update student name a student based on id
UPDATE student
SET student_first_name='kakashi',
student_last_name='hahaha'
WHERE student_id=3;