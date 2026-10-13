use septbatch1;

create table students (
id int primary key auto_increment,
name varchar(40) not null,
mark int not null,
dept enum("ECE","EEE","CIVIL")
);

INSERT INTO students (name, mark, dept) VALUES
("John", 85, "ECE"),
("Alice", 90, "EEE"),
("Bob", 75, "CIVIL"),
("Eve", 95, "ECE"),
("Charlie", 80, "EEE"),
("David", 70, "CIVIL"),
("Frank", 88, "ECE"),
("Grace", 92, "EEE"),
("Hannah", 78, "CIVIL"),
("Ivy", 82, "ECE");


select * from students;

select avg(mark) from students;
select * from students where mark>83.5000;

select * from students where mark>(select avg(mark) from students);
select max(mark) from students;
select * From students where mark=(select max(mark) from students);

select * from students where 
id not in (SELECT id from students where dept="ECE");

select mark from students where dept="ECE";

select * from students where 
mark> ANY (select mark from students where dept="ECE");

select * from students s1 where mark>(select avg(mark) from students
where dept=s1.dept);

SELECT * FROM actordetails ORDER BY age DESC limit 2;
INSERT INTO actordetails value (11,"personX",90);

select max(age) from actordetails;
select * from actordetails where age=(select max(age) from actordetails);

select name, price, (select avg(price) from products where category=p1.category) 
from products p1;