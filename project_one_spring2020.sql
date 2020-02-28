/*This database is used to register students for culinary school.
The courses names are based on their cuisine type. */

CREATE DATABASE CulinarySchoolRegistration;

# Creates table named students with columns, datatypes, and associated constraints.
CREATE TABLE students (
	student_id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
    grade int NOT NULL,
    PRIMARY KEY (student_id)
);

# Creates table named coures with columns, datatypes, and associated constraints.
CREATE TABLE courses (
	course_id INT NOT NULL AUTO_INCREMENT,
	cuisine_type varchar(255),
    teacher varchar(255),
    PRIMARY KEY (course_id)
);

# Inserting rows of data into the students table.
INSERT INTO students (name, grade)
VALUES ('John Wick', 5),
	   ('Ip Man', 5),
       ('Tony Stark', 4),
       ('Winter Soldier', 4),
       ('Yoda', 4);

# Inserting rows of data into the courses table.
INSERT INTO courses (cuisine_type, teacher)
VALUES ('Korean', 'Jane'),
       ('Japanese', 'Joe'),
       ('Indian', 'John'),
       ('American', 'Joseph'),
       ('Italian', 'Jay');
       
SELECT *
FROM students;

SELECT *
FROM courses;

/* The very important table that actually allows the student to register for multiple courses.
It references two foreign IDs - student_id and course_id from two different tables. */
CREATE TABLE courses_students_taking (
	student_id int NOT NULL,
	course_id int NOT NULL,
	cuisine_type varchar(255),
    teacher varchar(255)
);

# Inserting rows of data into the table that was created above.
INSERT INTO courses_students_taking 
VALUES (1, 1, 'Korean', 'Jane'),
	   (1, 2, 'Japanese', 'Joe'),
       (1, 5, 'Italian', 'Jay'),
       (2, 4, 'American', 'Joseph'),
       (2, 5, 'Italian', 'Jay'),
       (2, 3, 'Indian', 'John'),
       (3, 1, 'Korean', 'Jane'),
       (3, 2, 'Japanese', 'Joe'),
       (3, 4, 'American', 'Joseph'),
       (4, 4, 'American', 'Joseph'),
       (4, 3, 'Indian', 'John'),
       (5, 3, 'Indian', 'John'),
       (5, 4, 'American', 'Joseph'),
       (5, 5, 'Italian', 'Jay');       

# Making sure the table was created and data was inserted correctly.
SELECT *
FROM courses_students_taking;

# A table that joins on student_id. It shows the courses that each student is taking.
SELECT name, 
	cuisine_type
FROM students
JOIN courses_students_taking
	ON students.student_id = courses_students_taking.student_id;

# Drops the tables and database to avoid errors when running queries multiple times.
DROP TABLE students, courses, courses_students_taking;
DROP DATABASE CulinarySchoolRegistration;

