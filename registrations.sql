CREATE TABLE IF NOT EXISTS student_courses (
    studentid INTEGER REFERENCES students(id),
    course VARCHAR(40) REFERENCES courses(code),
    grade FLOAT DEFAULT NULL
);

INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO448A');
INSERT INTO student_courses (studentid, course) VALUES (1, 'INFO314');
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO330A');
INSERT INTO student_courses (studentid, course) VALUES (3, 'INFO449A');
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW0100');
INSERT INTO student_courses (studentid, course) VALUES (2, 'BAW100A');
INSERT INTO student_courses (studentid, course) VALUES (4, 'BAW0100');

-- My fake student_courses data
INSERT INTO student_courses (studentid, course, grade) VALUES (7, 'CSE421A', 0.7);
INSERT INTO student_courses (studentid, course, grade) VALUES (8, 'CSE484A', 4.0);