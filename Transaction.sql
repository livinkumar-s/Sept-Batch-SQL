use septbatch1;

select * from products;
update products set price=price+2 where id=1;
commit;
ROLLBACK;

select @@autocommit;
set autocommit=0;

CREATE TABLE bankacc (
id int primary key auto_increment,
accHolder varchar(50) not null,
balance double
);

INSERT INTO bankacc (accHolder, balance) VALUES ('John Doe', 1000.00),
('Jane Smith', 1500.00),
('Alice Johnson', 2000.00),
('Bob Brown', 2500.00),
('Charlie Davis', 3000.00);