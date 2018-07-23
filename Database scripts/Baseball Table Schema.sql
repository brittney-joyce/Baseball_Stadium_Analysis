CREATE DATABASE `baseball`;
DROP TABLE IF EXISTS Dodgers;
DROP TABLE IF EXISTS Dodgers_data;
CREATE TABLE Dodgers(
`Game` INT,
`Date` Varchar(30),
`MISC` Varchar(10),
`Team` Varchar(10),
`Opponent` Varchar(10),
`Win_Loss` Varchar(10),
`R` INT,
`RA` INT,
`Inn` INT,
`W-L` Varchar(10),
`Rank` INT,
`GB` Varchar(10),
`Win` Varchar(15),
`Loss` Varchar(15),
`Save` Varchar(15),
`Time` Varchar(10),
`D/N` Varchar(5),
`Attendance` Varchar(10),
`Streak` Varchar(10),
`Orig_Scheduled` Varchar(20),
`Season` Int,
`YYYYMMDD` DateTime
);

LOAD DATA LOCAL INFILE 'C:/Users/roger/Desktop/git/Project 3 Work/LADodgerAttendance.csv'
INTO TABLE Dodgers
COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;