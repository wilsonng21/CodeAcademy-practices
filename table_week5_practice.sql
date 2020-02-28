# Query below creates a database called Video_Reviews.
CREATE DATABASE Video_Reviews;

# Query below below creates table and states column names and corresponding datatypes with contraints.
CREATE TABLE videos (
	VideoID int NOT NULL AUTO_INCREMENT,
    title varchar(255),
    length_in_minutes int,
    url varchar(255),
    PRIMARY KEY (VideoID)
);

# Query below insert data into corresponding columns of table called videos.
INSERT INTO videos (title, length_in_minutes, url)
VALUES ('Lofi hip hop mix - Beats to Relax/Study to [2018]', 180, 'https://www.youtube.com/watch?v=-FlxM_0S2lA'),
	   ('1 A.M Study Session - [lofi hip hop/chill beats]', 61, 'https://www.youtube.com/watch?v=lTRiuFIWV54'),
       ('[ Peaceful Relaxing Soothing ] Meditation - Monoman', 74, 'https://www.youtube.com/watch?v=FjHGZj2IjBk');

# Query below to double check if I inserted data correctly.
SELECT *
FROM videos;

# Creates new table called video_reviews with column names and corresponding data types with constraints.
CREATE TABLE video_reviews (
	user_name varchar(255),
    rating int NOT NULL CHECK (rating BETWEEN 0 and 5),
    review varchar(255), 
    VideoID int NOT NULL
);

/* Query below inserts data into the table called video_reviews. Columns didn't need to be specified
because all new data corresponded with all columns. */
INSERT INTO video_reviews
VALUES ('jane_smith', 5, 'amazing, great job!', 1),
	   ('john_smith', 4, 'loved it!', 2),
       ('babysmith001', 3, 'I think it was okay', 3);
       
SELECT *
FROM video_reviews;

# Query selects all columns from videos and inner join video_reviews where both table's VideoID matches up.
SELECT *
FROM videos
JOIN video_reviews
	ON videos.VideoID = video_reviews.VideoID;
    
    
