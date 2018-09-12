DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  character_id INT8 REFERENCES characters(id),
  colour VARCHAR(255) NOT NULL
);
--
-- SELECT * FROM characters;

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);

-- SELECT * FROM characters;

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

-- SELECT * FROM characters;

INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);

-- SELECT * FROM characters;

UpDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';
-- SELECT * FROM characters;

-- DELETE FROM characters WHERE name = 'Darth Maul';
-- SELECT * FROM characters;

-- INSERT INTO characters (name, darkside, age) VALUES ('Tintin', true, 24);
-- SELECT * FROM characters;
--
-- DELETE FROM characters WHERE name = 'Tintin';
-- SELECT * FROM characters;

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- SELECT * FROM characters;

UPDATE characters SET age = 29 WHERE id = 9;
SELECT * FROM characters;

INSERT INTO lightsabers (colour, character_id, hilt_metal) VALUES ('green', 1,'palladium');
INSERT INTO lightsabers ( colour, character_id, hilt_metal) VALUES ('red', 4,'gold');
INSERT INTO lightsabers ( colour, hilt_metal) VALUES ('blue', 'unobtainium');
INSERT INTO lightsabers ( colour, character_id, hilt_metal) VALUES ('orange', 36,'platinium');
-- SELECT * FROM lightsabers;

-- INSERT INTO lightsabers (colour) VALUES ('violet');

-- UPDATE lightsabers SET id = 1;

SELECT * FROM lightsabers;
