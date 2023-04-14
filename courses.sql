CREATE TABLE IF NOT EXISTS courses (
    code VARCHAR(40) NOT NULL CHECK (LENGTH(code) >= 7) PRIMARY KEY,
    description VARCHAR(400),
    start DATE NOT NULL,
    end DATE NOT NULL,
    CONSTRAINT CHK_dates CHECK (end > start)
);

INSERT INTO courses VALUES ('INFO330A', 'Data and databases', '2023-04-01', '2023-06-01');
INSERT INTO courses VALUES ('INFO314', 'Networking and distributed Systems', '2023-04-01', '2023-06-01');
INSERT INTO courses VALUES ('INFO448A', 'Introduction to iOS', '2023-09-25', '2023-12-19');
INSERT INTO courses VALUES ('INFO449A', 'Introduction to Android', '2023-09-25', '2023-12-19');
INSERT INTO courses VALUES ('BAW0100', 'Introduction to Basket-Weaving', '2023-04-01', '2023-06-01');
INSERT INTO courses VALUES ('BAW100A', 'Underwater Basket-Weaving', '2023-04-01', '2023-06-01');

-- My fake courses data
INSERT INTO courses VALUES ('CSE421A', 'Introduction to Algorithms', '2023-05-01', '2023-07-01');
INSERT INTO courses VALUES ('CSE484A', 'Computer Security', '2023-05-01', '2023-07-01');