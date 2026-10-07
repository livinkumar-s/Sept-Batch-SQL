USE septbatch1;

CREATE TABLE iplTeam (
id int primary key auto_increment,
name varchar(5) not null,
playerId int not null
);

INSERT INTO iplteam (name,playerId) values ("csk",6),("mi",5),
("mi",2),("pbks",10);

SELECT * from cricketer;
SELECT * from jersey;
SELECT * from iplteam;


SELECT * from cricketer inner join iplteam 
on cricketer.id=iplteam.playerId;

SELECT * from cricketer left join iplteam 
on cricketer.id=iplteam.playerId;

SELECT * from cricketer right join iplteam 
on cricketer.id=iplteam.playerId;


SELECT * from cricketer left join iplteam 
on cricketer.id=iplteam.playerId
UNION
SELECT * from cricketer right join iplteam 
on cricketer.id=iplteam.playerId;

select c.name, i.name,j.jersey 
from cricketer c inner join jersey j on
j.playerId=c.id inner join iplteam i on
i.playerId=c.id;
