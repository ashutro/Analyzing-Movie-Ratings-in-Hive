CREATE TABLE movies (
  movieId INT,
  title STRING,
  genres STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


CREATE TABLE ratings (
  userId INT,
  movieId INT,
  rating FLOAT,
  timestamp INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


SET hive.cli.print.header=true;

LOAD DATA INPATH '/user/hive/warehouse/movieratings/movies.csv' INTO TABLE movies;


LOAD DATA INPATH '/user/hive/warehouse/movieratings/ratings.csv' INTO TABLE ratings;


SELECT m.movieId, m.title, AVG(r.rating) as avg_rating
FROM movies m
JOIN ratings r ON m.movieId = r.movieId
GROUP BY m.movieId, m.title;
