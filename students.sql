CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    firstname VARCHAR(40),
    lastname VARCHAR(80),
    age INTEGER
);

INSERT INTO students VALUES (1, 'Fred', 'Flintstone', 35);
INSERT INTO students VALUES (2, 'Wilma', 'Flintstone', 29);
INSERT INTO students VALUES (3, 'Barney', 'Rubble', 33);
INSERT INTO students VALUES (4, 'Betty', 'Rubble', 29);
INSERT INTO students VALUES (5, 'Pebbles', 'Flintstone', 1);
INSERT INTO students VALUES (6, 'Bam-Bam', 'Rubble', 1);

-- My fake students data
INSERT INTO students VALUES (7, 'Wednesday', 'Addams', 18);
INSERT INTO students VALUES (8, 'Jennie', 'Kim', 27);