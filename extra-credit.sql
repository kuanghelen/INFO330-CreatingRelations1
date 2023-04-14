CREATE TABLE IF NOT EXISTS timeslots (
    start TIME,
    end TIME,
    id INTEGER PRIMARY KEY
    CONSTRAINT CHK_time CHECK (end > start)
);

CREATE TABLE IF NOT EXISTS temp_room (
    id INTEGER PRIMARY KEY,
    number INTEGER,
    buildingid INTEGER REFERENCES buildings(id),
    seating INTEGER
);

DROP TABLE rooms;
ALTER TABLE temp_room RENAME TO rooms;

CREATE TABLE IF NOT EXISTS schedule (
    coursecode VARCHAR(40) REFERENCES courses(code),
    roomid INTEGER UNIQUE REFERENCES rooms(id),
    timeslotid INTEGER UNIQUE REFERENCES timeslots(id)
);

-- My fake timeslots data
INSERT INTO timeslots VALUES ('08-30-00', '10-30-00', 1);
INSERT INTO timeslots VALUES ('10-30-00', '11-30-00', 2);

-- My fake rooms data
INSERT INTO rooms VALUES (1310, 131, (SELECT id FROM buildings WHERE shortname = 'SUZ'), 30);
INSERT INTO rooms VALUES (1200, 120, (SELECT id FROM buildings WHERE shortname = 'KNE'), 400);

-- My fake schedule data
INSERT INTO schedule VALUES ('CSE421A', 1310, 1);
INSERT INTO schedule VALUES ('CSE484A', 1200, 2);
