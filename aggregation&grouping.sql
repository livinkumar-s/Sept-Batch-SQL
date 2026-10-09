CREATE TABLE products (
id int primary key auto_increment,
name varchar(30) not null,
price float not null,
category enum ("veg","fruit","gadget")
);


insert into products (name, price, category) values
("apple", 10, "fruit"),
("banana", 20, "fruit"),
("carrot", 30, "veg"),
("mango", 40, "fruit"),
("potato", 50, "veg"),
("tomato", 60, "veg"),
("onion", 70, "veg"),
("cabbage", 80, "veg"),
("grapes", 90, "fruit"),
("kiwi", 100, "fruit"),
("laptop", 20000, "gadget"),
("mobile", 15000, "gadget");


select * from products;


select count(*) from products;
select count(*) from products;
select sum(price) from products;
select avg(price) from products;
select max(price) from products;
select min(price) from products;


select count(*), sum(id), avg(price) from products;
select name, avg(price), price from products;
select avg(price) from products where price>1000;

select count(*), sum(price), category from products group by category
HAVING sum(price)>1000;


