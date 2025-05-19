
CREATE TABLE Managers (
    Manager_ID int unique,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Date_of_Birth date NOT NULL,
    Age int check (Age>=18) NOT NULL,
    Last_update varchar(50) NOT NULL,
    Gender varchar(15) NOT NULL,
    Department varchar(30) NOT NULL,
    Salary DECIMAL(10, 2) NOT null
);
insert into Managers (Manager_ID,First_Name,Last_Name,Date_of_Birth,Age,Last_update,Gender,Department,Salary)
values 
(1, 'Sarah', 'John', 22-04-1988,36, 'present','Female','Finance',50000.00),
(2, 'John', 'Thomas', 18-05-1987,37, 'present','Male','HR',60000.00),
(3, 'Nick', 'Jothan', 08-09-1986,38, 'resigned','Male','IT',50000.00),
(4, 'Sonal', 'Mehta', 19-05-1987,37, 'present','Female','Communication',65000.00),
(5, 'Juhi', 'Jural', 18-05-1987,36, 'present','Female','IT',23000.00),
(6, 'Rakesh', 'Rosh', 22-04-1988,36, 'present','Male','IT',55000.00),
(7, 'Arya', 'Sree', 04-05-1989,35, 'present','Female','Communication',19000.00),
(8, 'Sarang', 'Rev', 31-11-1992,32, 'resigned','Male','Finance',62000.00),
(9, 'Rahul', 'Lal', 12-09-1994,30, 'present','Male','HR',57000.00),
(10, 'Aliya', 'Fathima', 10-12-1992,32, 'present','Female','IT',72000.00);
select * from managers;
select First_Name,Date_of_Birth from managers where Manager_ID=1;
select * from managers where Salary!=72000.00;
select * from managers where Department='IT' and Salary>=25000;
select  First_Name from managers where Salary between 10000.00 and 35000.00;
select * from managers;