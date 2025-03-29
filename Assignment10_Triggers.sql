CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    salary DECIMAL(10, 2)
);
INSERT INTO teachers (id, name, subject, experience, salary) VALUES
(1, 'Alice', 'Geography', 8, 50000),
(2, 'Bob', 'Chemistry', 3, 55000),
(3, 'Charlie', 'English', 5, 45000),
(4, 'Diana', 'History', 10, 60000),
(5, 'Eve', 'Physics', 4, 42000),
(6, 'Frank', 'Science', 9, 58000),
(7, 'Grace', 'Biology', 7, 56000),
(8, 'Hank', 'Maths', 6, 53000);
select * from teachers;

##### 2.create 'before insert' trigger to prevent negative salary
DELIMITER $$
CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END;
DELIMITER ;
select * from teachers;


CREATE TABLE teacher_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT,
    action VARCHAR(20),
    timestamp DATETIME
);
##### 3.Create 'after insert' trigger
DELIMITER $$
CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (NEW.id, 'INSERT', NOW());
END;
DELIMITER ;
##### 4.Create a 'before delete' trigger
DELIMITER $$
CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete a teacher with more than 10 years of experience';
    END IF;
END;

DELIMITER ;
select * from teachers;
###### 5.Create an 'after delete' trigger
DELIMITER $$
CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (OLD.id, 'DELETE', NOW());
END;
DELIMITER ;