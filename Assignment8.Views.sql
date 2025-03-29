create database Product;
use Product;
create table Customer
(
    customer_id INT PRIMARY KEY,
    F_name VARCHAR(30),
    L_name VARCHAR(30),
    Email VARCHAR(50),
    Phone_no INT,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip_code VARCHAR(50),
    Country VARCHAR(50)
    );
    INSERT INTO Customer(customer_id,F_name,L_name,Email,Phone_no,Address,City,State,Zip_code,Country) VALUES
(101,'MARIYAM','HAKEEM','MARIYAMHAKEEM@GMAIL.COM',08776547,'75 SANGO AREA','MINNEAPOLIS','CAROLINA','A1002','USA'),
(102,'SAMAD','HALIM','SAMADHALIM@GMAIL.COM',07789457,'20 MARKET AREA','TAMPA','CALIFORNIA','A1004','Alaska'),
(103,'RASAQ','AKEEN','RASAQAKEEN@GMAIL.COM',06675698,'25 SPRING AREA','TULSA','PHOENIX','A1006','Canada'),
(104,'AISHAT','SULAIMAN','AISHATSUL@GMAIL.COM',09978452,'20 MARKET AREA','OAKLAND','CHICAGO','A1008','Brazil'),
(105,'SAMAD','HALIM','SAMADHALIM@GMAIL.COM',08745612,'38 OKLEKE AREA','WISCHITA','PORTLAND','A1010','Argentina');
SELECT * FROM Customer;
CREATE VIEW customer_info AS SELECT F_name, Email FROM Customer;
select * from  customer_info;
CREATE VIEW US_Customers2 AS SELECT Country,customer_id FROM Customer;
select * from  US_Customers2;
CREATE VIEW Customer_details AS SELECT customer_id,Email,Phone_no,State,concat(F_name,L_name) FROM Customer;
select * from Customer_details;
UPDATE Customer_details SET Phone_no =07789459 WHERE State='CALIFORNIA';
select * from Customer_details;
CREATE VIEW Customer_details AS SELECT customer_id,Country
FROM Customer ORDER BY State ASC;
select * from Customer_details;