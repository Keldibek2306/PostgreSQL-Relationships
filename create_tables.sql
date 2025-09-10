CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(64)
);

CREATE TABLE IF NOT EXISTS courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(64) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS enrollments (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id) ON DELETE CASCADE,
    course_id INT REFERENCES courses(id) ON DELETE CASCADE,
    joined_date DATE DEFAULT CURRENT_DATE,

    UNIQUE (student_id, course_id)
);

DROP TABLE IF EXISTS performences;

CREATE TABLE IF NOT EXISTS performences (
    id SERIAL PRIMARY KEY,
    student_id INT UNIQUE REFERENCES students(id) ON DELETE CASCADE,
    lang VARCHAR(10) DEFAULT 'uz',
    mode VARCHAR(10) DEFAULT 'light'
);

