CREATE TABLE Student (
    studentid int PRIMARY key,
    name varchar(50),
    email VARCHAR(100) UNIQUE); 
insert into Student VALUES (101,'shabd','s@gmail.com'),(104,'shabd','sk@gmail.com');
--FOR PRINTING ALL THE ROWS
select * from Student;
--INSERTING INTO PARTICULAR COLUinMN
INSERT into Student(email,studentid)
values ('SHABD@GMAIL.COM','586');

--PRINT DATA FOR STUDENTID OR SELECTED ROW
SELECT * FROM Student
WHERE studentid=101;


UPDATE Student 
SET name = 'SK' , email = 'SHABDKHURANA@GMAIL.COM'
WHERE studentid= 101;

--&& --> AND
--|| --> OR
--! --> NOT
-- < , > , <= , >= , != OR <> , =

UPDATE Student 
SET name = 'SHABDK' , email = 'SHABDKHU@GMAIL.COM'
WHERE name = 'SK' AND email = 'SHABDKHURANA@GMAIL.COM'
;
delete student where studentid = 101;
SELECT * FROM Student;
delete Student;
-- delete works in select mode not projection mode
delete name from Student; --this will show error

-- drop the table
DROP TABLE Student;
--delete deletes the data of table 
-- drop can delete data as well as structure

CREATE TABLE course (
    courseid char(5) primary key,
    cname VARCHAR(30),
    progname VARCHAR(100),
    ccredit char(1)   
);
insert into course values (10199,'web programming','it eng','3'),(20483,null,'slw eng','4'),(24178,'database','comp','3');

select * FROM course;

UPDATE course
set cname = 'cloud' 
where courseid = 20483;
select * FROM course;

DELETE FROM course
WHERE courseid IN (20483, 24178);


SELECT * from course 
where courseid in (10199 , 20483);