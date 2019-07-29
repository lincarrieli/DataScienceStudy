USE Videos;

-- 1. Videos table. Create one table to keep track of the videos. This table should include a unique ID, the title of the video, 
--    the length in minutes, and the URL. Populate the table with at least three related videos from YouTube or other publicly 
--    available resources.

CREATE TABLE Videos
(VideoID INT AUTO_INCREMENT PRIMARY KEY NOT NULL, Title VARCHAR (50), Length TIME, URL TEXT);

INSERT INTO Videos(Title, Length, URL)
VALUES
('MySQL Workbench Database Export and Import', '8:08', 'https://www.youtube.com/watch?v=Jvul-wr-_Bg'),
('SQL Tutorial - 9: Create Table Statement', '7:48', 'https://www.youtube.com/watch?v=oReH2vO8Izc'),
('MySQL - How to Change Null Values to 0 in SQL', '0:51', 'https://www.youtube.com/watch?v=3Gt1WiN9VgE');


-- 2. Create and populate Reviewers table. Create a second table that provides at least two user reviews for each of at least 
--    two of the videos. These should be imaginary reviews that include columns for the user’s name (“Asher”, “Cyd”, etc.), the 
--    rating (which could be NULL, or a number between 0 and 5), and a short text review (“Loved it!”). There should be a column 
--    that links back to the ID column in the table of videos. 

CREATE TABLE Reviewers
(UserName VARCHAR (20), Rating INT NULL, Review TEXT, VideoID INT NOT NULL);

INSERT INTO Reviewers (UserName, Rating, Review, VideoId)
Values
('Jane', 5, 'Very helpful', 1),
('Mez', NULL, 'How can I import csv', 2),
('Angela', 1, 'not useful.', 3);

ALTER TABLE Reviewers
ADD FOREIGN KEY(VideoID)
REFERENCES Videos (VideoID);

-- 3. Report on Video Reviews. Write a JOIN statement that shows information from both tables.

SELECT Videos.VideoID, Videos.Title, DATE_FORMAT(Videos.Length, '%i:%S') AS 'Length', Videos.URL, Reviewers.* FROM Videos
INNER JOIN Reviewers
ON Videos.VideoID = Reviewers.VideoID;


