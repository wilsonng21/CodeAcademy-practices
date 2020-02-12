CREATE TABLE friends(
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends(id, name, birthday)
VALUES(0, 'Jane Doe', '1990-05-30');

INSERT INTO friends(id, name, birthday)
VALUES(1, 'John Doe', '1990-06-30');

INSERT INTO friends(id, name, birthday)
VALUES(2, 'David Doe', '1990-04-30');

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 0;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'jane@codeacademy.com'
WHERE id = 0;

DELETE FROM friends
WHERE id = 0;

SELECT *
FROM friends;
