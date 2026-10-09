USE septbatch1;

ALTER TABLE actor ADD latestMovie VARCHAR(50);
ALTER TABLE actor MODIFY name VARCHAR(25);
ALTER TABLE actor RENAME COLUMN name TO actorName;
ALTER TABLE actor RENAME To actorDetails;
ALTER TABLE actordetails DROP COLUMN latestMovie;

SELECT * FROM actordetails;
delete from actordetails where id=11;

