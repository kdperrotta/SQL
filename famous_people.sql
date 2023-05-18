CREATE TABLE characters (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, role TEXT);

INSERT INTO characters (name, role) VALUES ("Albus Dumbledore", "headmaster");
INSERT INTO characters (name, role) VALUES ("Minverva McGonagall", "professor");
INSERT INTO characters (name, role) VALUES ("Harry Potter", "student");
INSERT INTO characters (name, role) VALUES ("Ron Weasley", "student");
INSERT INTO characters (name, role) VALUES ("Hermione Granger", "student");
INSERT INTO characters (name, role) VALUES ("Ginny Weasley", "student");
INSERT INTO characters (name, role) VALUES ("Fred Weasley", "student");
INSERT INTO characters (name, role) VALUES ("George Weasley", "student");
INSERT INTO characters (name, role) VALUES ("Voldemort", "dark lord");
INSERT INTO characters (name, role) VALUES ("Bellatrix Lestrange", "death eater");

CREATE table relationships (id INTEGER PRIMARY KEY AUTOINCREMENT, person1_id INTEGER, person2_id INTEGER);

INSERT INTO relationships (person1_id, person2_id) VALUES (1, 2);
INSERT INTO relationships (person1_id, person2_id) VALUES (3, 6);
INSERT INTO relationships (person1_id, person2_id) VALUES (4, 5);
INSERT INTO relationships (person1_id, person2_id) VALUES (7, 8);
INSERT INTO relationships (person1_id, person2_id) VALUES (9, 10);

SELECT characters.name AS "person1", partner.name AS "person2"
FROM characters
JOIN relationships
ON relationships.person1_id = characters.id
JOIN characters AS "partner"
ON relationships.person2_id = partner.id;
