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
(102,'Wang','Xi',24,3.1,202,'China'),
(103,'Peter' ,'Gray',3.2,4.4,203,Null),
(104,'Hannah', 'Scott',3.2,4.1,204,Null),
(105,'Grace','Evans',3.2,3.8,205,'Canada'),
(106,'Emily','Davis',3.2,4.6,206,'Japan'),
(107,'Lucy', 'White',3.2,4.2,207,'UK'),
(108,'Sarah', 'Davis',3.2,3.8,208,'USA'),
(109,'Jane', 'Doe',3.2,4.3,209,'Australia'),
(110,'Olivia', 'Martin',3.2,4.1,210,'Alaska');
SELECT * FROM persons_1;
SELECT C.Country_name as country_1_country_name,C.id as country_1_id, C.Population as country_1_Population, C.Area as country_1_Area,
       P.id as persons_1_id, P.F_name as persons_1_F_name,P.L_name as persons_1_L_name, P.Population as persons_1_Population, 
       P.Rating as persons_1_Rating,P.Country_ID as persons_1_Country_ID,P.Country_name as persons_1_Country_name
FROM country_1 C
INNER JOIN persons_1 P ON C.Country_name = P.Country_name;
SELECT C.Country_name as country_1_country_name,C.id as country_1_id, C.Population as country_1_Population, C.Area as country_1_Area,
       P.id as persons_1_id, P.F_name as persons_1_F_name,P.L_name as persons_1_L_name, P.Population as persons_1_Population, 
       P.Rating as persons_1_Rating,P.Country_ID as persons_1_Country_ID,P.Country_name as persons_1_Country_name
FROM country_1 C
LEFT JOIN persons_1 P ON C.Country_name = P.Country_name;
SELECT C.Country_name as country_1_country_name,C.id as country_1_id, C.Population as country_1_Population, C.Area as country_1_Area,
       P.id as persons_1_id, P.F_name as persons_1_F_name,P.L_name as persons_1_L_name, P.Population as persons_1_Population, 
       P.Rating as persons_1_Rating,P.Country_ID as persons_1_Country_ID,P.Country_name as persons_1_Country_name
FROM persons_1 P
RIGHT JOIN country_1 C ON C.Population = P.Population;