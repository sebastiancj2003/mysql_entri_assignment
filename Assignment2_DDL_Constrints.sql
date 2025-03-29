create database sales;
CREATE TABLE Orders_2 
(
  Order_Id INT PRIMARY KEY,
  Customer_name varchar(50) NOT NULL,
  Product_category varchar(50) NOT NULL,
  Ordered_item varchar(50) NULL,
  Contact_no int UNIQUE
);
INSERT INTO Orders_2
(Order_Id,Customer_name,Product_category,Ordered_item,Contact_no) 
VALUES
(101,'White Clover','Electronics','Television',987456),
(102,'John Stross','Home textiles','Pillows',987457),
(103,'Jack Stone','Electronics','Computer',987466),
(104,'John Stock','Jewellary','Earrings',987356),
(105,'Tim Cook','Electronics','Powerbank charger',987459),
(106,'Ann Tim','Cosmetics','Sunscreen','986456'),
(107,'Jimmy Stock','Electronics','LED lights',977456),
(108,'Jim Clover','Appliances','Refrigerator',987856),
(109,'Mary Clover','Fashion Apparel','Sweaters',997456),
(110,'Rose Petals','Skincare','Skin cleansing',987256)
;
ALTER TABLE Orders_2
ADD Order_quantity INT; 
select * from Orders_2;
ALTER TABLE Orders_2 RENAME TO Sales_orders;
select* from Sales_orders;
select Customer_name,Ordered_item from sales_orders;
SET SQL_SAFE_UPDATES=0;
UPDATE sales_orders SET Ordered_item=1;
SET SQL_SAFE_UPDATES=1;
select* from Sales_orders;
DROP table sales_orders;