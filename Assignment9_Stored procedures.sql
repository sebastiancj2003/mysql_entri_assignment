use entri_d42;
CREATE TABLE Worker (
	Worker_Id INT,
    First_Name CHAR(25),
    Last_Name CHAR(25),
    Salary INT,
    Joining_Date DATETIME,
    Department CHAR(25)
);

INSERT INTO Worker (Worker_Id,First_Name,Last_Name,Salary,Joining_Date,Department)
VALUES 
(1, 'John', 'Smith', 60000, '2024-11-27', 'HR'),
(2, 'Alex', 'Johnson', 55000, '2023-10-26', 'HR'),
(3, 'Michael', 'Clarke', 65000, '2022-09-25', 'HR'),
(4, 'David', 'Warner', 56000, '2021-08-24', 'HR');
select * from Worker;
DELIMITER $$
CREATE PROCEDURE AddWorker(
    IN p_Worker_Id INT,
    IN p_FirstName CHAR(25),
    IN p_LastName CHAR(25),
    IN p_Salary INT,
    IN p_JoiningDate DATETIME,
    IN p_Department CHAR(25)
)
BEGIN
    INSERT INTO Worker (Worker_Id,First_Name,Last_Name,Salary,Joining_Date,Department)
    VALUES (p_Worker_Id, p_First_Name, p_Last_Name, p_Salary, p_Joining_Date, p_Department);
END$$
DELIMITER ;
CALL AddWorker(5, 'John', 'Doe', 50000, '2024-11-27', 'HR');
DELIMITER $$
CREATE PROCEDURE GetWorkerSalary(
    IN p_Worker_Id INT,
    OUT p_Salary INT
)
BEGIN
    SELECT Salary INTO p_Salary FROM Worker WHERE Worker_Id = p_Worker_Id;
END$$
DELIMITER ;

-- Procedure Call
CALL GetWorkerSalary(4, @Salary);
SELECT @Salary AS WorkerSalary;
DELIMITER $$
CREATE PROCEDURE UpdateWorkerDepartment(
    IN p_Worker_Id INT,
    IN p_Department CHAR(25)
)
BEGIN
    UPDATE Worker
    SET Department = p_Department
    WHERE Worker_Id = p_Worker_Id;
END$$
DELIMITER ;

-- Procedure Call
CALL UpdateWorkerDepartment(1, 'Finance');
DELIMITER $$
CREATE PROCEDURE GetWorkerCountByDepartment(
    IN p_Department CHAR(25),
    OUT p_WorkerCount INT
)
BEGIN
    SELECT COUNT(*) INTO p_WorkerCount
    FROM Worker
    WHERE Department = p_Department;
END$$
DELIMITER ;

-- Procedure Call
CALL GetWorkerCountByDepartment('HR', @WorkerCount);
SELECT @WorkerCount AS WorkerCountInDepartment;
DELIMITER $$
CREATE PROCEDURE GetAvgSalaryByDepartment(
    IN p_Department CHAR(25),
    OUT p_AvgSalary FLOAT
)
BEGIN
    SELECT AVG(Salary) INTO p_AvgSalary
    FROM Worker
    WHERE Department = p_Department;
END$$
DELIMITER ;

-- Procedure Call
CALL GetAvgSalaryByDepartment('HR', @AvgSalary);
SELECT @AvgSalary AS AvgSalaryInDepartment;