create database db1;
use db1;
drop table student;
CREATE TABLE student (
roll_no varchar(10) PRIMARY KEY,
name VARCHAR(20),
surname VARCHAR(15),
gender VARCHAR(1),
course_id INT,
year_of_admission YEAR,
sap_id bigint,
university_id INT
);

INSERT INTO student VALUES ('J240', 'Vardhan', 'Jain', 'M', 1, 2018, 70431118047, 2022334); 
INSERT INTO student VALUES ('J205', 'Diksha', 'Rao', 'F', 1, 2019, 70431119040, 2022221);
INSERT INTO student VALUES ('M205', 'Tanishq', 'Singhai', 'M', 2, 2018, 70431118020, 2022434);  
INSERT INTO student VALUES ('J220', 'Naman', 'Bhargava', 'M', 1, 2020, 70431117035, 2022224);
INSERT INTO student VALUES ('M215', 'Naveen', 'Vaishnav', 'M', 2, 2019, 70431119027, 2022434); 
INSERT INTO student VALUES ('M210', 'Maaz', 'Munir', 'M', 2, 2018, 70431118009, 2022214); 
INSERT INTO student VALUES ('J219', 'Manasvi', 'Sharma', 'F', 1, 2019, 70431119011, 2022323); 
INSERT INTO student VALUES ('J232', 'Harshi', 'Raghuwanshi', 'F', 1, 2019, 70431119021, 2022343); 
INSERT INTO student VALUES ('J217', 'Tejas', 'Patil', 'M', 1, 2020, 70431117034, 2022365); 
INSERT INTO student VALUES ('M228', 'Yash', 'Jain', 'M', 2, 2021, 70431116044, 2022323); 
INSERT INTO student VALUES ('J207', 'Muskan', 'Patel', 'F', 1, 2019, 70431119033, 2022353); 
INSERT INTO student VALUES ('M222', 'Bhim', 'Rao', 'M', 2, 2018, 70431118022, 2022365); 
INSERT INTO student VALUES ('M203', 'Rashmi', 'Lodha', 'F', 2, 2021, 70431116015, 2022319);

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(15)
);

drop table courses;
select * from student;

ALTER TABLE student ADD FOREIGN KEY(course_id) REFERENCES courses(course_id) On delete set null;
DESCRIBE courses;
SELECT * FROM courses;

INSERT INTO courses VALUES (1, 'B.Pharm');
INSERT INTO courses VALUES (2, 'M.Pharm');

SELECT * FROM student WHERE gender='F' AND course_id=1 AND year_of_admission=2019;
SELECT * FROM student WHERE gender='M' AND surname='Rao';
SELECT student.name FROM student WHERE gender='M' AND surname='Rao';