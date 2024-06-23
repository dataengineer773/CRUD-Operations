# Run the below command on the newly opened terminal.
NDQwNi1zaGFubWFo

# Create Keyspace and Table
CREATE KEYSPACE training
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

# Create movies table
use training;
CREATE TABLE movies(
movie_id int PRIMARY KEY,
movie_name text,
year_of_release int
);

# Insert data into a table
INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (1,'Toy Story',1995);

# Verify that the data is saved.
select * from movies;

# Insert the below movies into the table.

movie_id	movie_name	year_of_release
2	Jumanji	1995
3	Heat	1995
4	Scream	1995
5	Fargo	1996


INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (2,'Jumanji',1995);

INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (3,'Heat',1995);

INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (4,'Scream',1995);

INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (5,'Fargo',1996);


# Read data from a table
select * from movies;

# Query the movie name where movie_id is 1.
select movie_name from movies where movie_id = 1;

# Update data in a table
UPDATE movies
SET year_of_release = 1996
WHERE movie_id = 4;

# Verify that the update was successful.
select * from movies where movie_id = 4;

# Delete data from a table
DELETE from movies
WHERE movie_id = 5;


