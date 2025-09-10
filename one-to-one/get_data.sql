SELECT
    *
FROM students
JOIN passports ON students.id = passports.student_id;

SELECT
    *
FROM students
LEFT JOIN passports ON students.id = passports.student_id;

SELECT
    *
FROM students
FULL OUTER JOIN passports ON students.id = passports.student_id;

SELECT
    *
FROM students
RIGHT JOIN passports ON students.id = passports.student_id;

SELECT
    s.id, s.name, p.passport_number
FROM students s
JOIN passports p ON s.id = p.student_id
WHERE p.passport_number = 'AB5312543';
