USE movies;

DROP TABLE Movies;

CREATE TABLE Movies (
FriendName VARCHAR (10),
MovieName VARCHAR(30),
Rating INT);

INSERT INTO Movies(FriendName, MovieName, Rating)
VALUES 
('Brett', 'Avengers', 4), 
('Brett', 'Toy Story 4', 5),
('Brett', 'The Lion King', 2), 
('Brett', 'Spider Man', 5), 
('Brett', 'Joker', 3),
('Brett', 'Aladdin', 4),
('Regina', 'Avengers', 2),
('Regina', 'Toy Story 4', 5),
('Regina', 'The Lion King', 4),
('Regina', 'Spider Man', 2),
('Regina', 'Joker', 5),
('Regina', 'Aladdin', 5),
('Yi', 'Avengers', 4),
('Yi', 'Toy Story 4', 2),
('Yi', 'The Lion King', 3),
('Yi', 'Spider Man', 2),
('Yi', 'Joker', 5),
('Yi', 'Aladdin', 4),
('Sarah', 'Avengers', 5),
('Sarah', 'Toy Story 4', 3),
('Sarah', 'The Lion King', 3),
('Sarah', 'Spider Man', 5),
('Sarah', 'Joker', 2),
('Sarah', 'Aladdin', 3),
('Liz', 'Avengers', 4),
('Liz', 'Toy Story 4', 5),
('Liz', 'The Lion King', 3),
('Liz', 'Spider Man', 4),
('Liz', 'Joker', 4),
('Liz', 'Aladdin', 2);

SELECT * FROM Movies;

