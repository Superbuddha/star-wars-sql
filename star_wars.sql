DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);
--
-- SELECT * FROM characters;

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);

SELECT * FROM characters;

-- INSERT INTO characters (name, darkside) VALUES ('Yoda', false);

-- SELECT * FROM characters;
--
-- SELECT name FROM characters;
-- --
-- SELECT COUNT(*)FROM characters;
--
-- UPDATE characters SET darkside = true;
-- SELECT * FROM characters;

UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';

SELECT * FROM characters;

INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);

SELECT * FROM characters;

UpDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';
SELECT * FROM characters;

DELETE FROM characters WHERE name = 'Darth Maul';
SELECT * FROM characters;

INSERT INTO characters (name, darkside, age) VALUES ('Tintin', true, 24);
SELECT * FROM characters;

DELETE FROM characters WHERE name = 'Tintin';
SELECT * FROM characters;

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
SELECT * FROM characters;

UPDATE characters SET age = 29 WHERE id = 9;
SELECT * FROM characters;
