SELECT *
FROM students2
JOIN student_courses ON students2.id = student_courses.student_id
JOIN courses2 ON courses2.id = student_courses.course_id;

SELECT courses2.title, COUNT(student_courses.student_id) AS student_soni
FROM courses2
LEFT JOIN student_courses ON courses2.id = student_courses.course_id
GROUP BY courses2.title;

SELECT students2.name, courses2.title
FROM students2, courses2
WHERE NOT EXISTS (
    SELECT 1
    FROM student_courses
    WHERE student_courses.student_id = students2.id
      AND student_courses.course_id = courses2.id
);




SELECT s.name, COUNT(sc.course_id) AS kurslar_soni
FROM students2 s
JOIN student_courses sc ON s.id = sc.student_id
GROUP BY s.name
ORDER BY kurslar_soni DESC
LIMIT 1;

SELECT s.name, COUNT(sc.course_id) AS kurslar_soni
FROM students2 s
JOIN student_courses sc ON s.id = sc.student_id
GROUP BY s.name
ORDER BY kurslar_soni DESC;