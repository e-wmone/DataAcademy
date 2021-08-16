CREATE DATABASE dogs;

CREATE TABLE dog
(
  id int(11) NOT NULL auto_increment,
  name varchar(255),
  descr text,
  size enum('small','medium','large'),
  date timestamp(14),
  PRIMARY KEY (id)
);

INSERT INTO dog (name,descr,size,date) VALUES('Max','Its distinctive appearance and deep foghorn voice make it stand out in a crowd.','medium',NOW());
INSERT INTO dog (name,descr,size,date) VALUES('Jake','It loves human companionship and being part of the group.','medium',NOW());
INSERT INTO dog (name,descr,size,date) VALUES('Buster','Short-legged but surprisingly strong and agile.','small',NOW());

CREATE TABLE breed
(
  id int(11) NOT NULL auto_increment,
  name varchar(255),
  descr text,
  date timestamp(14),
  PRIMARY KEY (id)
);

INSERT INTO breed (name,descr,date) VALUES('Hounds','One of the oldest groups of dog originating thousands of years ago.',NOW());
INSERT INTO breed (name,descr,date) VALUES('Terrier','A tough, no-nonsense, rabbiting and badgering dog.',NOW());

ALTER TABLE dog
ADD breed_id int(11) AFTER date;

EXPLAIN dog;

SELECT dog.id,dog.name,breed.name AS breed
FROM dog,breed
WHERE dog.breed_id = breed.id
ORDER BY dog.name ASC;

UPDATE dog
SET name = 'pooch'
WHERE id = 1;

SELECT * FROM dog;

DELETE FROM breed 
WHERE id ='4';

SELECT * FROM breed;

