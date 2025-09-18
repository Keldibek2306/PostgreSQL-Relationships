SELECT s.full_name AS student, t.full_name AS teacher
FROM students s
LEFT JOIN teachers t ON s.teacher_id = t.teacher_id;


SELECT t.full_name, COUNT(s.student_id) AS student_soni
FROM teachers t
LEFT JOIN students s ON t.teacher_id = s.teacher_id
GROUP BY t.full_name
ORDER BY student_soni DESC
LIMIT 1;


SELECT t.full_name, COUNT(s.student_id) AS student_soni
FROM teachers t
LEFT JOIN students s ON t.teacher_id = s.teacher_id
GROUP BY t.full_name;