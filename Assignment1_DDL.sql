use entri_d42;
CREATE TABLE STUDENT (
    Roll_no INT,
    Name VARCHAR(50),
    Mark INT,
    Grade VARCHAR(50)
);

select* from STUDENT;

INSERT INTO STUDENT (Roll_no, Name, Mark,Grade)
VALUES
(1, 'John', 35,'B'),
(2, 'Sarah', 42,'A'),
(3, 'David',46,'A'),
(4, 'Alice',28,'C'),
(5, 'James', 32,'B'),
(6, 'Emily',48, 'A');
    ALTER TABLE STUDENT 
ADD Contact int;
select * from STUDENT;
INSERT INTO STUDENT (Roll_no, Name, Mark,Grade)
VALUES
(1, 'John', 35,9876),
(2, 'Sarah', 42,9745),
(3, 'David',46,9245),
(4, 'Alice',28,8475),
(5, 'James', 32,9875),
(6, 'Emily',48, 6874);
select * from STUDENT;
ALTER TABLE STUDENT
DROP COLUMN Grade;
select * from STUDENT;
ALTER TABLE STUDENT RENAME TO CLASSTEN;
select * from CLASSTEN;
truncate table CLASSTEN;
drop table CLASSTEN;


 

