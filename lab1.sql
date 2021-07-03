CREATE DATABASE laboratory_work1;

CREATE TABLE users(
    id serial,
    first_name varchar(50),
    last_name varchar (50)
);

ALTER TABLE users
    ADD isadmin INT;

ALTER TABLE  users
    ALTER COLUMN isadmin TYPE BOOLEAN USING isadmin::BOOLEAN;

ALTER TABLE  users
    ALTER COLUMN isadmin SET DEFAULT FALSE,

ALTER TABLE users
    ADD CONSTRAINT id PRIMARY KEY (id);

create table tasks(
    id serial,
    name varchar(50),
    user_id int
);

drop table tasks;

drop database lab1;