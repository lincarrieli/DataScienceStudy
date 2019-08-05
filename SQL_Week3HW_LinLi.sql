USE Security;

CREATE TABLE Users
(UserName VARCHAR (30) NULL, GroupID INT NULL);

INSERT INTO Users(UserName, GroupID)
VALUES
('Modesto', 1),
('Ayine', 1),
('Christopher', 2),
('Cheong', 2),
('Saulat', 3),
(NULL, 4),
('Heidy', NULL);

CREATE TABLE Access
(GroupID INT NULL, GroupName VARCHAR (20) NULL, Room TEXT NULL);

INSERT INTO Access (GroupID, GroupName, Room)
VALUES
(1, 'IT', '101'),
(1, 'IT', '102'),
(2, 'Sales', '102'),
(2, 'Sales', 'Auditorium A'),
(3, 'Administration', NULL),
(4, 'Operations', NULL);

-- All groups, and the users in each group. A group should appear even if there are no users assigned to the group. 

SELECT Access.GroupName AS 'Group', Users.UserName AS 'User Name'
FROM Access
RIGHT JOIN Users
ON Access.GroupID = Users.GroupID;

-- All rooms, and the groups assigned to each room. The rooms should appear even if no groups have been assigned to them.

SELECT Access.Room As 'Room', Access.GroupName AS 'Group Name', Users.GroupID AS 'Group_ID'
FROM Access 
RIGHT JOIN Users
ON Access.GroupID = Users.GroupID;

-- A list of users, the groups that they belong to, and the rooms to which they are assigned. This should be sorted alphabetically by user, then by group, 
-- then by room.

SELECT Users.UserName AS 'User Name', Access.GroupName AS 'Group Name', Access.Room AS 'Room'
FROM Users
LEFT JOIN Access
ON Users.GroupID = Access.GroupID
GROUP BY Users.UserName, Access.GroupName,Room




