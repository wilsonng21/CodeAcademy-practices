/*
This project is where you show off your ability to (1) translate a business requirement into a database design, 
(2) design a database using one-to-many and many-to-many relationships, 
and (3) know when to use LEFT and/or RIGHT JOINs to build result sets for reporting.

An organization grants key-card access to rooms based on groups that key-card holders belong to. 
You may assume that users below to only one group. 
Your job is to design the database that supports the key-card system.

There are six users, and four groups. 
Modesto and Ayine are in group “I.T.” Christopher and Cheong woo are in group “Sales”. 

There are four rooms: “101”, “102”, “Auditorium A”, and “Auditorium B”. 

Saulat is in group “Administration.” Group “Operations” currently doesn’t have any users assigned. 

I.T. should be able to access Rooms 101 and 102. Sales should be able to access Rooms 102 and Auditorium A. 
Administration does not have access to any rooms. Heidy is a new employee, who has not yet been assigned to any group.
After you determine the tables any relationships between the tables (One to many? Many to one? Many to many?), 
you should create the tables and populate them with the information indicated above.
Next, write SELECT statements that provide the following information:

• All groups, and the users in each group. A group should appear even if there are no users assigned to the group.
• All rooms, and the groups assigned to each room. The rooms should appear even if no groups have been
assigned to them.
• A list of users, the groups that they belong to, and the rooms to which they are assigned. This should be sorted
alphabetically by user, then by group, then by room.
*/

DROP TABLE room_group;
DROP TABLE users;
DROP TABLE rooms;
DROP TABLE org_groups;

CREATE TABLE org_groups (                          #creates the table to house groupID and group name.
	groupID int NOT NULL AUTO_INCREMENT,
	group_name VARCHAR(255),
    PRIMARY KEY (groupID)
);

CREATE TABLE users (
	userID int NOT NULL AUTO_INCREMENT,     #creates the table to house userID, user name, references the org_groups table through groupID.
	name VARCHAR(255),
    groupID int,
    PRIMARY KEY (userID),
    FOREIGN KEY (groupID) REFERENCES org_groups(groupID)
);

CREATE TABLE rooms (                       #creates the rooms table to house roomID and roomName.
	roomID int NOT NULL AUTO_INCREMENT,
    roomName VARCHAR(255),
    PRIMARY KEY (roomID)
);

CREATE TABLE room_group (   #room_groups creates a many-many relationship by having multiple ID reference mulitple ID in different tables.
  	roomID int,
  	groupID int,
  	PRIMARY KEY (roomID, groupID),
  	FOREIGN KEY (roomID) REFERENCES rooms(roomID),
    FOREIGN KEY (groupID) REFERENCES org_groups(groupID)
);


INSERT INTO org_groups(group_name)
VALUES 
('IT'), ('Sales'), ('Administration'), ('Operations')
;

INSERT INTO rooms(roomName)
VALUES 
('101'), ('102'), ('Auditorium A'), ('Auditorium B')
;

INSERT INTO room_group (roomID, groupID)
VALUES
(1, 1), (2, 1), (2, 2), (3, 2)
;

INSERT INTO users(name, groupID)
VALUES 
('Modesto', 1), ('Ayine', 1), ('Christopher', 2), ('Cheong Woo', 2), ('Saulat', 3), ('Heidy', null)
;

# Task 01
SELECT *
FROM org_groups
LEFT JOIN users
ON org_groups.groupID = users.groupID;

# Task 02
SELECT roomName, group_name
FROM rooms
LEFT JOIN room_group
ON rooms.roomID = room_group.roomID
LEFT JOIN org_groups
ON org_groups.groupID = room_group.groupID;

# Task 03
SELECT 
	name,
	group_name,
    roomName
FROM room_group
LEFT JOIN org_groups
ON org_groups.groupID = room_group.groupID
LEFT JOIN rooms
ON rooms.roomID = room_group.roomID
LEFT JOIN users
ON org_groups.groupID = users.groupID
ORDER BY name, group_name,roomName
;

