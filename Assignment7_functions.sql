CREATE TABLE country_4(
  id INT PRIMARY KEY,
  Country_name VARCHAR(30),
  Population INT,
  Area INT
);
CREATE TABLE persons_4(
  id INTEGER PRIMARY KEY,
  F_name VARCHAR(30),
  L_name VARCHAR(30),
  Population INTEGER,
  Rating DECIMAL(10,2),
  Country_ID INT,
  Country_name VARCHAR(30)
    );
INSERT INTO country_4(id,Country_name,Population,Area)
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
select * from country_4;

INSERT INTO persons_4(id,F_name,L_name,Population,Rating,Country_ID,Country_name) VALUES
(101,'Ravinder','shah',23,4.8,201,'India'),
(102,'Wang','Xi',24,3.1,202,'China'),
(103,'Peter' ,'Gray',3.2,4.4,203,Null),
(104,'Hannah', 'Scott',3.2,4.1,204,Null),
(105,'Grace','Evans',3.2,3.8,205,'Canada'),
(106,'Emily','Davis',3.2,4.6,206,'Japan'),
(107,'Lucy', 'White',3.2,4.2,207,'UK'),
(108,'Sarah', 'Davis',3.2,3.8,208,'USA'),
(109,'Jane', 'Doe',3.2,4.3,209,'Australia'),
(110,'Olivia', 'Martin',3.2,4.1,210,'Alaska');
SELECT * FROM persons_4;
alter table persons_4 
add DOB date;
SELECT * FROM persons_4;

INSERT INTO persons_4(id,F_name,L_name,Population,Rating,Country_ID,Country_name,DOB) VALUES
(101,'Ravinder','shah',23,4.8,201,'India', 08-08-2007),
(102,'Wang','Xi',24,3.1,202,'China',16-01-2006),
(103,'Peter' ,'Gray',3.2,4.4,203,Null,17-02-2008),
(104,'Hannah', 'Scott',3.2,4.1,204,Null,17-05-2004),
(105,'Grace','Evans',3.2,3.8,205,'Canada',14-06-2000),
(106,'Emily','Davis',3.2,4.6,206,'Japan',18-02-2002),
(107,'Lucy', 'White',3.2,4.2,207,'UK',19-06-2007),
(108,'Sarah', 'Davis',3.2,3.8,208,'USA',14-05-2006),
(109,'Jane', 'Doe',3.2,4.3,209,'Australia',18-05-2004),
(110,'Olivia', 'Martin',3.2,4.1,210,'Alaska',17-05-2008);
SELECT * FROM persons_4;
SELECT Country_name, UPPER(Country_name) AS Uppercase_Name
FROM persons_4;
SELECT Country_name, LOWER(Country_name) AS Lowercase_Name
FROM persons_4;
SELECT Country_name, LENGTH(Country_name) AS Name_Length
FROM country_4;
SELECT 
    Country_name, 
    LEFT(Country_name, 3) AS FirstThreeCharacters
FROM 
    country_4;
SELECT Country_name, GETDATE(DOB) AS DOB_persons
FROM country_4;
