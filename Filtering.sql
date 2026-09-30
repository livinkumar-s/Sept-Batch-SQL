use septbatch1;

select * from actor where id<5 or age>50;
select * from actor where not id<5;

select * from actor where not age between 40 and 50;
select * from actor where age not in (23,32,44,50,66,60,76,80);


select * from actor where name like "r%";
select * from actor where name not like "% %";
select * from actor order by age asc;
select * from actor limit 3 offset 6;

insert into actor value (11,"Leo",90);

SELECT * FROM actor ORDER BY age DESC LIMIT 1;

select 6/6;

select sqrt(81);                                                               

