CREATE TABLE items (id INTEGER PRIMARY KEY, name TEXT, gluten_free TEXT, organic TEXT, price INTEGER);

INSERT INTO items VALUES (3, "lemon muffins", "no", "yes", 3);
INSERT INTO items VALUES (4, "lemon muffins", "no", "yes", 4);
INSERT INTO items VALUES (5, "chocolate chip cookies", "yes", "no", 5);
INSERT INTO items VALUES (6, "blueberry muffins", "no", "yes", 6);
INSERT INTO items VALUES (7, "white chocolate cookies", "no", "yes", 7);
INSERT INTO items VALUES (8, "lemon scones", "no", "yes", 8);
INSERT INTO items VALUES (9, "croissants", "no", "yes", 9);
INSERT INTO items VALUES (10, "baguette", "no", "yes", 10);
INSERT INTO items VALUES (11, "petits fours", "no", "yes", 11);
INSERT INTO items VALUES (12, "almond tart", "no", "yes", 13);
INSERT INTO items VALUES (14, "tarte aux pommes", "no", "yes", 14);
INSERT INTO items VALUES (15, "biscotti", "no", "yes", 15);


SELECT * from items
GROUP BY price;
