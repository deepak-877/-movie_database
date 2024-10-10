create schema moviedatabase;

use moviedatabase;

CREATE TABLE genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100) NOT NULL
);

CREATE TABLE Directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    birthdate DATE
);

CREATE TABLE Actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    birthdate DATE
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(255) NOT NULL,
    release_year YEAR,
    genre_id INT,
    director_id INT,
    rating FLOAT,
    duration INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
    FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

CREATE TABLE Movie_Actors (
    movie_id INT,
    actor_id INT,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);
INSERT INTO Genres (genre_id ,genre_name) VALUES 
(1,'Action'), (2,'Drama'), (3,'Comedy'), (4,'Horror'),
(5,'Action'), (6,'Drama'), (7,'Comedy'), (8,'Horror'),(9,'compey'),(10,'mystery');


INSERT INTO Directors (direct_id ,name, birthdate) VALUES ('Christopher Nolan', '1970-07-30');
INSERT INTO Directors  VALUES (3,'vijay', '1970-07-30');
INSERT INTO Directors  VALUES (4,'Steven Spielberg', '1946-12-18');
INSERT INTO Directors  VALUES (5,'Martin Scorsese', '1942-11-07');
INSERT INTO Directors  VALUES (6,'Quentin Tarantino', '1963-05-27');
INSERT INTO Directors  VALUES (7,'Ridley Scott', '1963-10-17');
INSERT INTO Directors  VALUES (8,'James Cameron', '1964-05-04');
INSERT INTO Directors  VALUES (9,'Tim Burton', '1958-10-14');
INSERT INTO Directors  VALUES (10,'Greta Gerwig', '1983-10-23');

select* from directors

INSERT INTO Actors (actor_id,name, birthdate) VALUES (1,'Leonardo DiCaprio', '1974-11-11'), 
                                                     (2,'Emma Watson', '1990-04-15');
INSERT INTO Actors  VALUES (4,'Meryl Streep', '1949-11-14');
INSERT INTO Actors VALUES (5,'Tom Hanks', '1945-10-24');
INSERT INTO Actors VALUES (6,'Natalie Portman', '1981-8-10');
INSERT INTO Actors VALUES (7,'Robert Downey Jr.', '1965-7-15');
INSERT INTO Actors VALUES (8,'Scarlett Johansson', '1984-11-19');
INSERT INTO Actors VALUES (9,'Brad Pitt','1964-12-16');
INSERT INTO Actors VALUES (10,'Emma Stone','1988-09-04');

select* from actors;

INSERT INTO Movies (title, release_year, genre_id, director_id, rating, duration)  VALUES 
('super man', 2010, 2, 2, 7.8, 138),
('the Num', 2015, 3,3,7.1, 125),
 ('bad boy', 1998, 4, 4,6.9, 144),
 ('top tom', 1993, 5, 5,6.6, 184),
 ('spider man',2003, 6, 6,9.1, 194),
 ('bad boy', 1998, 7, 7,7.5, 156),
 ('venom', 2012, 8, 8,7.8, 146),
 ('leo', 2022, 9, 9,5.8, 186),
 ('mass', 2017, 10,10,7.1, 196);

select* from movies;


INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(1, 1), (1, 2);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(2,2), (2,3);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(3,3), (3,4);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(4,4), (4,5);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(5,5), (5,6);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(6,6), (6,7);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(7,7), (7,8);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(8,8), (8,9);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(9,9), (9,10);
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES(10,10), (10,1);

select * from movie_actors;

drop table senres;

SELECT M.title, G.genre_name, D.name AS director_name
FROM Movies M
JOIN Genres G ON M.genre_id = G.genre_id
JOIN Directors D ON M.director_id = D.director_id;

SELECT A.name
FROM Actors A
JOIN Movie_Actors MA ON A.actor_id = MA.actor_id
JOIN Movies M ON MA.movie_id = M.movie_id
WHERE M.title = 'Inception';

INSERT INTO Directors (name, birthdate) VALUES ('vijay', '1974-07-30');

update actor set actor_id=3 where actor_id=7;



