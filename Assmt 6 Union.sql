CREATE TABLE country_3(
  id INT,
  Country_name VARCHAR(30),
  Population INT,
  Area INT
);
CREATE TABLE persons_3(
  id INTEGER,
  Country_name VARCHAR(30),
   Population INT,
   Area INT
    );
INSERT INTO country_3(id,Country_name,Population,Area)
VALUES 
(101, 'India',23,6),
(102,'China',22,12),
(103,'Nepal',9,2),
(104,'Bhutan',8,2),
(105,'Canada',12,10);
select * from country_3;

INSERT INTO persons_3 (id,Country_name,Population,Area) VALUES
(101, 'India',23,6),
(102,'Czhech',22,12),
(103,'Nepal',9,2),
(104,'Bruno',8,2),
(105,'Brazil',14,12);

SELECT * FROM persons_3;
SELECT * FROM country_3 
UNION
SELECT * FROM persons_3;
SELECT * FROM country_3 
UNION ALL
SELECT * FROM persons_3;