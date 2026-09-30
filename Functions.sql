USE septbatch1;

SELECT ROUND(3.48574746749,5) as result;
SELECT FLOOR(4.999999);
SELECT CEIL(1.0001);
SELECT abs(-2.2134341);
SELECT mod(3,4);
select power(3,4);



select concat("Hello"," ","World") as result;
select length("HelloWorld") as result;
select upper("HelloWorld") as result;
select lower("HelloWorld") as result;
select concat(".",trim("    Hello World     "),".") as result;
select concat(".",ltrim("    Hello World     "),".") as result;
select concat(".",rtrim("    Hello World     "),".") as result;
select reverse("hello") as result;
select substring("Hello world",7,5) as result;
select replace("hello hello hello world","hello","hi") as result;


select curtime();
select curdate();
select Now();
select datediff("2026-12-25",curdate()) as result;


select sqrt(age) from actor; 
SELECT mod(age,2) as result from actor;

