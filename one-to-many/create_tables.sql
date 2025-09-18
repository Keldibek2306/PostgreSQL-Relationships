CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100)
);

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON DELETE SET NULL
);