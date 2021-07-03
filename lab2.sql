CREATE DATABASE laborotory_work2

CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name varchar(50),
    region_id integer,
    populaton integer
);

INSERT INTO countries(country_name, district_id, populaton)
VALUES('NEW-YORK', '1', '244000')

INSERT INTO countries(country_id, country_name)
VALUES('2', 'Tokyo')

INSERT INTO countries(country_name)
VALUES ('Almaty');

INSERT INTO countries(region_id)
values (NULL);

INSERT INTO countries(country_name, region_id, populaton)
VALUES('Semey', '16', '320000'), ('Astana', '01', '12000000'), ('Kalkaman', '15','9999999')

alter table countries
alter column country_name set default 'Kazakhstan';

insert into countries(country_name)
values (default);

insert into countries(country_name, region_id, populaton)
values (default, default, default)

create table countries_new (LIKE countries)
select * from countries_new;
insert into countries_new select * from countries;

update countries_new set region_id = 1 where region_id is null;
update countries_new set populaton = 1000 where populaton is null;

alter table countries_new add column new_population integer;
update countries_new set new_population = populaton * 1.15
where new_population is null

delete from countries_new where populaton < 100000;