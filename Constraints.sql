use septbatch1;

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(20) not null,
mailId varchar(100) not null unique,
noOfCenturies int not null check (noOfCenturies>10),
isActive boolean default 1
);

insert into cricketer (name, mailId, noOfCenturies) values
("virat kohli", "virat.kohli@example.com", 15),
("Rohit Sharma", "rohit.sharma@example.com", 12);

select * from cricketer;

insert into cricketer (name, mailId, noOfCenturies, isActive) values
("sachin tendulkar", "sachin.tendulkar@example.com", 18, 0),
("MS Dhoni", "ms.dhoni@example.com", 15, 0);

insert into cricketer (name, mailId, noOfCenturies, isActive) values
("goutham gambhir", "goutham.gambhir@example.com", 12, 0);

create table jersey (
id int primary key auto_increment,
jersey int not null,
playerId int,
foreign key (playerId) references cricketer(id)
);

insert into jersey (jersey,playerId) values 
(180,10);