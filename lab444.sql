CREATE DATABASE labaratory_woork_4;
CREATE TABLE  warhouses(
  code INTEGER PRIMARY KEY,
  location VARCHAR(255) NOT NULL ,
  capacity INTEGER NOT NULL
);
INSERT INTO warhouses(code,location,capacity) VALUES(1,'Chicago',3);
INSERT INTO warhouses(code,location,capacity) VALUES(2,'Chicago',4);
INSERT INTO warhouses(code,location,capacity) VALUES(3,'New York',7);
INSERT INTO warhouses(code,location,capacity) VALUES(4,'Los Angeles',2);
INSERT INTO warhouses(code,location,capacity) VALUES(5,'San Francisco',8);

CREATE TABLE  packs(
  code CHARACTER(4) PRIMARY KEY,
  contents VARCHAR(255) NOT NULL ,
  value REAL,
  warehouse INTEGER NOT NULL
);

INSERT INTO packs(code,contents,value,warehouse) VALUES('0MN7','Rocks',180,3);
INSERT INTO packs(code,contents,value,warehouse) VALUES('4H8P','Rocks',250,1);
INSERT INTO packs(code,contents,value,warehouse) VALUES('4RT3','Scissors',190,4);
INSERT INTO packs(code,contents,value,warehouse) VALUES('7G3H','Rocks',200,1);
INSERT INTO packs(code,contents,value,warehouse) VALUES('8JN6','Papers',75,1);
INSERT INTO packs(code,contents,value,warehouse) VALUES('8Y6U','Papers',50,3);
INSERT INTO packs(code,contents,value,warehouse) VALUES('9J6F','Papers',175,2);
INSERT INTO packs(code,contents,value,warehouse) VALUES('LL08','Rocks',140,4);
INSERT INTO packs(code,contents,value,warehouse) VALUES('P0H6','Scissors',125,1);
INSERT INTO packs(code,contents,value,warehouse) VALUES('P2T6','Scissors',150,2);
INSERT INTO packs(code,contents,value,warehouse) VALUES('TU55','Papers',90,5);

SELECT * FROM packs;
SELECT * FROM warhouses;

SELECT * FROM packs WHERE value>180;

SELECT DISTINCT ON(contents) * FROM packs;

SELECT code, capacity FROM warhouses;

SELECT code, capacity FROM warhouses WHERE capacity >2;

INSERT INTO warhouses VALUES (6,'Texas',5);

INSERT INTO packs VALUES ('H5RT','Papers',350,2);

UPDATE packs SET value = value *0.82 WHERE value =
(SELECT value FROM packs ORDER BY value DESC LIMIT 1);
SELECT * FROM packs ORDER BY value DESC;

DELETE FROM packs WHERE value<150;
SELECT * FROM packs ORDER BY value DESC ;

DELETE FROM packs WHERE warehouse = 1 OR warehouse = 2 RETURNING *;

select code from warhouses
    expect
select warehouse from packs;

select location, capacity from warhouses
where exists(select * from warhouses where location = 'New York');

select location, capacity from warhouses
where location in(select * from warhouses where location = 'New York');

select location, capacity from warhouses
where location not in(select * from warhouses where location = 'New York');

select coalesce(null, 1, 2, null);




select value from packs order by value desc offset 2 limit 1;


DROP TABLE warhouses;
DROP TABLE packs;