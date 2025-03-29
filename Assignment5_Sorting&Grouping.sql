CREATE TABLE country_2(
  id INT PRIMARY KEY,
  Country_name VARCHAR(30),
  Population INT,
  Area INT
);
CREATE TABLE persons_2 (
  id INTEGER PRIMARY KEY,
  F_name VARCHAR(30),
  L_name VARCHAR(30),
  Population INTEGER,
  Rating DECIMAL(10,2),
  Country_ID INT,
  Country_name VARCHAR(30)
    );
INSERT INTO country_2 (id,Country_name,Population,Area)
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
select * from country_2;

INSERT INTO persons_2 (id,F_name,L_name,Population,Rating,Country_ID,Country_name) VALUES
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
SELECT * FROM persons_2;
select substring(Country_name,1,3) from country_2;
SELECT F_name, L_name, CONCAT(F_name, L_name) AS Full_name FROM persons_2;
select max(Population) as Max_Population from country_2;
select count(Country_name) as Count_name from persons_2;
select min(Population) as Min_Population from country_2;
insert into persons_2 values (111,'Olive', Null,4,4.6,211,'Iran'),
(112,'Jack', null,7,4.4,212,'Iraq');
select count(L_name) as Last_name from persons_2;
select count(*) as total_rows from persons_2;
SELECT Country_name FROM country_2 ORDER BY id LIMIT 3;
SELECT rand(3) FROM country_2 ORDER BY Country_name LIMIT 3;
select * from persons_2 order by Rating desc;
select sum(Population) as total_pop from persons_2;
select Population from persons_2 where Population>5;