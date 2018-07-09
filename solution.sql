-- 1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

-- 2. Return ONLY the name column from the 'people' table

SELECT name FROM people;

-- 3. Oops! Someone at CodeClan spelled Vicky's name wrong! Change it to reflect the proper spelling ('Vicky Jackson-Five' should be 'Vicky Jackson').

UPDATE people
SET name = 'Vicky Jackson'
WHERE name = 'Vicky Jackson-Five';
--to check result
SELECT name FROM people;

-- 4. Return ONLY your name from the 'people' table.

SELECT name FROM people
WHERE name = 'Ricardo Ruiz';

-- 5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies
WHERE title = 'Batman Begins';
--to check result
SELECT * FROM movies;

-- 6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name)
VALUES('Colin');
--to check result
SELECT * FROM people;

-- 7. Donald Trump has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people
WHERE name = 'Donald Trump';
--to check result
SELECT * FROM people;
-- 8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time)
VALUES('Avengers: Infinity War', 2018, '00:00');
--to check result
SELECT * FROM movies;

-- 9. The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

SELECT * FROM movies WHERE title = 'Guardians of the Galaxy 2';
UPDATE movies
SET show_time = '00h20'
WHERE title = 'Guardians of the Galaxy 2';
--to check result
SELECT * FROM movies WHERE title = 'Guardians of the Galaxy 2';

-- 1. Research how to delete multiple entries from your table in a single command.
-- Can be done in two ways, via ID or values.
DELETE FROM people
WHERE name in ('Ricardo Ruiz', 'Colin');
