CREATE TABLE country_1(
  id INT PRIMARY KEY,
  Country_name VARCHAR(30),
  Population INT,
  Area INT
);
CREATE TABLE persons_1 (
  id INTEGER PRIMARY KEY,
  F_name VARCHAR(30),
  L_name VARCHAR(30),
  Population INTEGER,
  Rating DECIMAL(10,2),
  Country_ID INT,
  Country_name VARCHAR(30)
    );
INSERT INTO country_1 (id,Country_name,Population,Area)
VALUES 
(101, 'India',23,6),
(102,'China',22,12),
(103,'Nepal',9,2),
(104,'Bhutan',8,2),
(105,'Canada',12,10),
(106,'Japan',10,4),
(107,'UK',16,8),
(108,'USA',17,12),
(109,'Australia',12,13),
(110,'Alaska',6,14);
select * from country_1;

INSERT INTO persons_1 (id,F_name,L_name,Population,Rating,Country_ID,Country_name) VALUES
(101,'Ravinder','shah',23,4.8,201,'India'),
(102,'Wang','Xi',22,3.1,202,'China'),
(103,'Peter' ,'Gray',9,4.4,203,Null),
(104,'Hannah', 'Scott',8,4.1,204,Null),
(105,'Grace','Evans',12,3.8,205,'Canada'),
(106,'Emily','Davis',10,4.6,206,'Japan'),
(107,'Lucy', 'White',16,4.2,207,'UK'),
(108,'Sarah', 'Davis',17,3.8,208,'USA'),
(109,'Jane', 'Doe',12,4.3,209,'Australia'),
(110,'Olivia', 'Martin',6,4.1,210,'Alaska');
SELECT * FROM persons_1;
select distinct Country_name from persons_1;
select F_name as First_Name from persons_1;
select L_name as Last_Name from persons_1;
select * from persons_1 where Rating>4.0;
select Country_name,Rating from persons_1 where Country_name  = "USA" or Rating>4.5 ;
select *  from persons_1 where Country_name is null;
select Population,Country_name from persons_1 where Population in ('USA','Canada','UK');
select Country_name,F_name from persons_1 where Country_name!='India' and 'Australia';
select Country_name,Population from persons_1 where Population between 5 and 20;
select Country_name from persons_1 where Country_name!= "C";
