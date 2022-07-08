CREATE DATABASE Semester5;
USE Semester5;

CREATE TABLE CS_515(
	SEAT_NO VARCHAR(15) NOT NULL PRIMARY KEY,
	STUDENT_NAME VARCHAR(100) NOT NULL,
    COURSE_NAME VARCHAR(50) NOT NULL,
    INSTRUCTOR VARCHAR(100) NOT NULL,
    CLASS_DATE DATE,
    STATUS CHAR
);

CREATE TABLE CS_501(
	SEAT_NO VARCHAR(15) NOT NULL PRIMARY KEY,
	STUDENT_NAME VARCHAR(100) NOT NULL,
    COURSE_NAME VARCHAR(50) NOT NULL,
    INSTRUCTOR VARCHAR(100) NOT NULL,
    CLASS_DATE DATE,
    STATUS CHAR
);

CREATE TABLE CS_503(
	SEAT_NO VARCHAR(15) NOT NULL PRIMARY KEY,
	STUDENT_NAME VARCHAR(100) NOT NULL,
    COURSE_NAME VARCHAR(50) NOT NULL,
    INSTRUCTOR VARCHAR(100) NOT NULL,
    CLASS_DATE DATE,
    STATUS CHAR
);

CREATE TABLE CS_507(
	SEAT_NO VARCHAR(15) NOT NULL PRIMARY KEY,
	STUDENT_NAME VARCHAR(100) NOT NULL,
    COURSE_NAME VARCHAR(50) NOT NULL,
    INSTRUCTOR VARCHAR(100) NOT NULL,
    CLASS_DATE DATE,
    STATUS CHAR
);

CREATE TABLE CS_509(
	SEAT_NO VARCHAR(15) NOT NULL PRIMARY KEY,
	STUDENT_NAME VARCHAR(100) NOT NULL,
    COURSE_NAME VARCHAR(50) NOT NULL,
    INSTRUCTOR VARCHAR(100) NOT NULL,
    CLASS_DATE DATE,
    STATUS CHAR
);

CREATE TABLE CS_511(
	SEAT_NO VARCHAR(15) NOT NULL PRIMARY KEY,
	STUDENT_NAME VARCHAR(100) NOT NULL,
    COURSE_NAME VARCHAR(50) NOT NULL,
    INSTRUCTOR VARCHAR(100) NOT NULL,
    CLASS_DATE DATE,
    STATUS CHAR
);


Select * From cs_515;
Drop table cs_501;
Drop table cs_511;
Drop table cs_509;
Drop table cs_507;
Drop table cs_503;


INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102102", "Muhammad Tauha Farooqui", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102043", "Hanan John", "ARTIFICIAL INTELLIGENCE","Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102050", "Khwla Akbar", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B21110004004", "Muhammad Talha Khan", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102044", "Barak Obama", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102052", "Chris Hemsworth", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102155", "Chris Evans", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102104", "Donald Trump", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102012", "Joe Biden", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102089", "Pervez Musharaf", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");
INSERT INTO CS_515(Seat_NO, Student_Name, Course_Name, Instructor, Status) Values("B19102123", "Imran Khan", "ARTIFICIAL INTELLIGENCE", "Miss Humera Bashir", "A");



UPDATE CS_515 SET STATUS = "A", CLASS_DATE = null WHERE SEAT_NO = "B19102102";
