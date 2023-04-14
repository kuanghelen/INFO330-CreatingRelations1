CREATE TABLE IF NOT EXISTS buildings (
    name VARCHAR(80) NOT NULL,
    shortname VARCHAR(10) UNIQUE,
    id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE IF NOT EXISTS rooms (
    number INTEGER,
    buildingid INTEGER REFERENCES buildings(id) PRIMARY KEY,
    seating INTEGER
);

-- My fake buildings data
INSERT INTO buildings (name, shortname) VALUES ('Suzzallo Library', 'SUZ');
INSERT INTO buildings (name, shortname) VALUES ('Kane Hall', 'KNE');

-- My fake rooms data
INSERT INTO rooms VALUES (131, (SELECT id FROM buildings WHERE shortname = 'SUZ'), 30);
INSERT INTO rooms VALUES (120, (SELECT id FROM buildings WHERE shortname = 'KNE'), 400);