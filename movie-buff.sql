DROP TABLE movies;

CREATE TABLE movies (
  movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR (120),
  year INTEGER,
  director VARCHAR (120),
);

CREATE TABLE directors (
  director_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  first VARCHAR (120),
  last VARCHAR (120),
  country VARCHAR (120)
);

SELECT title FROM movies;

SELECT title FROM movies ORDER BY year;

INSERT INTO directors (first, last, country)
    VALUES
    ("Jean-Pierre", "Jeunet", "France");

SELECT director_id FROM directors;

INSERT INTO movies (title, year, director)
    VALUES
    ("Amelie", 2001, "Jean-Pierre Jeunet");

SELECT * FROM directors ORDER BY country;

SELECT movies.title, directors.country
FROM movies
INNER JOIN directors
ON movies.director = directors.country;

SELECT movies.title, directors.first, directors.last
FROM movies
INNER JOIN directors
ON movies.director_id = directors.id;
