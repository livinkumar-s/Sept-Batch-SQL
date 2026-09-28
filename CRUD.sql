USE septbatch1;

INSERT INTO actor (id,name,age) VALUES (1,"Robert Jr",45);

INSERT INTO actor (id,name,age) VALUES (2,"John",35);

INSERT INTO actor VALUES (3,"Smith",25),(4,"David",30),
(5,"Peter",40),(6,"Sam",50),(7,"Tom",60),(8,"Jerry",70),(9,"Harry",80),
(10,"Ron",90);

SELECT * FROM actor WHERE name="John";
UPDATE actor SET age=36;
DELETE FROM actor;
SET SQL_SAFE_UPDATES=1;
ROLLBACK;

SELECT "Hello" as data;
SELECT name as actorName from actor;

select 4+4;
select 3*5;
select age+10 from actor;
