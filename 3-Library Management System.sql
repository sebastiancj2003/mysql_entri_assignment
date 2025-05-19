CREATE DATABASE Library;
USE Library;
##Table Branch
CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_id VARCHAR(50),
    Branch_address VARCHAR(255),
    Contact_no INT
);
INSERT INTO Branch (Branch_no,Manager_id,Branch_address,Contact_no) VALUES
(101,'E109','123MainSt',2099988676),
(102,'E109','456ElmSt',2099988677),
(103,'E109','789OakSt',2099988678),
(104,'E110','567PineSt',2099988679),
(105,'E110','890MapleSt',2099988680);
select * from  Branch;
##Table Employee
CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(255),
    Position VARCHAR(255),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);
INSERT INTO Employee (Emp_id,Emp_name,Position,Salary,Branch_no) VALUES
(201,'John Doe','Clerk',60000.00,101),
(202,'Jane Smith','Clerk',45000.00,102),
(203,'Mike Johnson','Librarian',55000.00,101),
(204,'Emily Davis','Assistan',40000.00,101),
(205,'Sarah Brown','Assistant',42000.00,101),
(206,'Michelle Ramirez','Assistant',43000.00,101),
(207,'Michael Thompson','Clerk',62000.00,105),
(208,'Jessica Taylor','Clerk',46000.00,104),
(209,'Daniel Anderson','Manager',57000.00,103),
(210,'Laura Martinez','Manager',41000.00,105);
select * from  Employee;
##Table Books
CREATE TABLE Books (
    ISBN INT PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(255),
    Rental_price DECIMAL(10, 2),
    Status VARCHAR(10) CHECK (Status IN ('yes', 'no')),
    Author VARCHAR(255),
    Publisher VARCHAR(255)
);
INSERT INTO Books (ISBN,Book_title,Category,Rental_price,Status,Author,Publisher) VALUES
(978-0-553-29698-2, 'The Catcher in the Rye', 'Classic', 17.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
(978-0-330-25864-8, 'Animal Farm', 'Classic', 15.50, 'yes', 'George Orwell', 'Penguin Books'),
(978-0-14-118776-1, 'One Hundred Years of Solitude', 'Literary Fiction', 16.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
(978-0-525-47535-5, 'The Great Gatsby', 'Classic', 18.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
(978-0-141-44171-6, 'Jane Eyre', 'Classic', 14.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
(978-0-307-37840-1, 'The Alchemist', 'Fiction', 12.50, 'yes', 'Paulo Coelho', 'HarperOne'),
(978-0-679-76489-8, 'Harry Potter and the Sorcerers Stone', 'Fantasy', 17.00, 'yes', 'J.K. Rowling', 'Scholastic'),
(978-0-7432-4722-4, 'The Da Vinci Code', 'Mystery', 28.00, 'yes', 'Dan Brown', 'Doubleday'),
(978-0-09-957807-9, 'A Game of Thrones', 'Fantasy', 27.50, 'yes', 'George R.R. Martin', 'Bantam'),
(978-0-393-05081-8, 'A Peoples History of the United States', 'History', 29.00, 'yes', 'Howard Zinn', 'Harper Perennial'),
(978-0-19-280551-1, 'The Guns of August', 'History', 17.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
(978-0-307-58837-1, 'Sapiens: A Brief History of Humankind', 'History', 18.00, 'no', 'Yuval Noah Harari', 'Harper Perennial'),
(978-0-375-41398-8, 'The Diary of a Young Girl', 'History',16.50, 'no', 'Anne Frank', 'Bantam'),
(978-0-14-044930-3, 'The Histories', 'History', 15.50, 'yes', 'Herodotus', 'Penguin Classics'),
(978-0-393-91257-8, 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 17.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
(978-0-7432-7357-1, '1491: New Revelations of the Americas Before Columbus', 'History', 16.50, 'no', 'Charles C. Mann', 'Vintage Books'),
(978-0-14-143951-8, 'Pride and Prejudice', 'Classic', 25.00, 'yes', 'Jane Austen', 'Penguin Classics'),
(978-0-452-28240-7, 'Brave New World', 'Dystopian', 26.50, 'yes', 'Aldous Huxley', 'Harper Perennial'),
(978-0-670-81302-4, 'The Road', 'Dystopian', 17.00, 'yes', 'Cormac McCarthy', 'Knopf'),
(978-0-385-33312-0, 'The Shining', 'Horror', 16.00, 'yes', 'Stephen King', 'Doubleday'),
(978-0-451-52993-5, 'Fahrenheit 451', 'Dystopian', 15.50, 'yes', 'Ray Bradbury', 'Ballantine Books'),
(978-0-345-39180-3, 'Dune', 'Science Fiction', 18.50, 'yes', 'Frank Herbert', 'Ace'),
(978-0-375-50167-0, 'The Road', 'Dystopian', 27.00, 'yes', 'Cormac McCarthy', 'Vintage'),
(978-0-06-025492-6, 'Where the Wild Things Are', 'Children', 13.50, 'yes', 'Maurice Sendak', 'HarperCollins'),
(978-0-06-112241-5, 'The Kite Runner', 'Fiction', 15.50, 'yes', 'Khaled Hosseini', 'Riverhead Books'),
(978-0-06-440055-8, 'Charlotte''s Web', 'Children', 34.00, 'yes', 'E.B. White', 'Harper & Row'),
(978-0-679-77644-3, 'Beloved', 'Fiction', 26.50, 'yes', 'Toni Morrison', 'Knopf'),
(978-0-14-027526-3, 'A Tale of Two Cities', 'Classic', 34.50, 'yes', 'Charles Dickens', 'Penguin Books'),
(978-0-7434-7679-3, 'The Stand', 'Horror', 17.00, 'yes', 'Stephen King', 'Doubleday'),
(978-0-451-52994-2, 'Moby Dick', 'Classic', 16.50, 'yes', 'Herman Melville', 'Penguin Books'),
(978-0-06-112008-4, 'To Kill a Mockingbird', 'Classic', 28.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');

select * from  Books;
##Table Customer
CREATE TABLE Customer_1 (
    customer_id INT PRIMARY KEY,
    Customer_name VARCHAR(255),
    Customer_address VARCHAR(255),
    Reg_date DATE
);
INSERT INTO Customer_1(customer_id,Customer_name,customer_address,Reg_date)VALUES
(301, 'Alice Johnson', '324 Main St', '2021-05-15'),
(302, 'Bob Smith', '654 Elm St', '2021-06-20'),
(303, 'Carol Davis', '987 Oak St', '2021-07-10'),
(304, 'Dave Wilson', '765 Pine St', '2021-08-05'),
(305, 'Eve Brown', '980 Maple St', '2021-09-25'),
(306, 'Frank Thomas', '432 Cedar St', '2021-10-15'),
(309, 'Grace Taylor', '654 Walnut St', '2021-11-20'),
(310, 'Henry Anderson', '354 Birch St', '2021-12-10');
select * from  Customer_1;
##Table Issue_Status
CREATE TABLE Issue_Status (
    Issue_id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    ISBN_book INT,
    FOREIGN KEY (Issued_cust) REFERENCES Customer_1(customer_id),
    FOREIGN KEY (ISBN_book) REFERENCES Books(ISBN)
);
INSERT INTO Issue_Status(Issue_id,Issued_cust,Issued_book_name,Issue_date,ISBN_book)VALUES
(406,306,'Animal Farm','2024-03-10',978-0-330-25864-8),
(410,310,'The Alchemist','2024-03-14',978-0-307-37840-1),
(412,309,'A Game of Thrones','2024-03-16',978-0-09-957807-9),
(413,309,'A Peoples History of the United States','2024-03-17',978-0-393-05081-8),
(414,309,'The Guns of August','2024-03-18',978-0-19-280551-1),
(415,309,'The Histories','2024-03-19',978-0-14-044930-3),
(416,310,'Guns, Germs, and Steel: The Fates of Human Societies','2024-03-20',978-0-393-91257-8),
(418,301,'Pride and Prejudice','2024-03-22',978-0-14-143951-8),
(419,310,'Brave New World','2024-03-23',978-0-452-28240-7),
(420,310,'The Road','2024-03-24',978-0-375-50167-0),
(421,302,'The Shining','2024-03-25',978-0-385-33312-0),
(422,302,'Fahrenheit 451','2024-03-26',978-0-451-52993-5),
(423,303,'Dune','2024-03-27',978-0-345-39180-3),
(424,304,'Where the Wild Things Are','2024-03-28',978-0-06-025492-6);
select * from  Issue_Status;
##Table Return_Status
CREATE TABLE Return_Status (
    Return_id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    ISBN_book_2 INT,
    FOREIGN KEY (Return_cust) REFERENCES Customer_1(customer_id),
    FOREIGN KEY (ISBN_book_2) REFERENCES Books(ISBN)
);
INSERT INTO Return_Status(Return_id,Return_cust,Return_book_name,Return_date,ISBN_book_2)VALUES
(501,301,'Pride and Prejudice','2023-06-06',978-0-14-143951-8),
(502,305,'The Kite Runner','2023-06-07',978-0-06-112241-5),
(503,303,'Dune','2023-08-07',978-0-345-39180-3),
(504,306,'Animal Farm','2024-05-01',978-0-330-25864-8),
(507,309,'The Histories','2024-05-07',978-0-14-044930-3);
select * from Return_Status;
###1.Retrieve the book title,category and rental price
SELECT Book_title, Category, Rental_price
FROM Books
WHERE Status = 'yes';

###2.List the employee names and their respective salaries in descending order of salary
SELECT Emp_name, Salary
FROM Employee
ORDER BY Salary DESC;

###3.Retrieve the book titles and the corresponding customers who have issued those books
SELECT Books.Book_title, Customer_1.Customer_name
FROM Issue_Status
JOIN Books ON Issue_Status.ISBN_book = Books.ISBN
JOIN Customer_1 ON Issue_Status.Issued_cust = Customer_1.Customer_id;

###4. Display the total count of books in each category
SELECT Category, COUNT(*) AS Total_Books
FROM Books
GROUP BY Category;

###5.Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000
SELECT Emp_name, Position
FROM Employee
WHERE Salary > 50000.00;

###6.List the customer names who registered before 2022-01-01 and have not issued any books yet
SELECT Customer_1.Customer_name
FROM Customer_1
LEFT JOIN Issue_Status ON Customer_1.Customer_id = Issue_Status.Issued_cust
WHERE Customer_1.Reg_date < '2022-01-01' AND Issue_Status.Issue_id IS NULL;

###7.Display the branch numbers and the total count of employees in each branch
SELECT Branch_no, COUNT(Emp_id) AS Total_Employees
FROM Employee
GROUP BY Branch_no;

###8. Display the names of customers who have issued books in the month of June 2023
SELECT Customer_1.Customer_name
FROM Issue_Status
JOIN Customer_1 ON Issue_Status.Issued_cust = Customer_1.Customer_id
WHERE MONTH(Issue_date) = 6 AND YEAR(Issue_date) = 2023;

###9.Retrieve book_title from book table containing history
SELECT DISTINCT Books.Book_title
FROM Issue_Status
JOIN Books ON Issue_Status.ISBN_book = Books.ISBN;

###10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
SELECT Branch_no, COUNT(Emp_id) AS Employee_Count
FROM Employee
GROUP BY Branch_no
HAVING COUNT(Emp_id) > 2;

###11.Retrieve the names of employees who manage branches and their respective branch addresses
SELECT E.Emp_name, B.Branch_address
FROM Employee E
JOIN Branch B ON E.Emp_id = B.Manager_id;

###12.Display the names of customers who have issued books with a rental price higher than Rs. 25
SELECT DISTINCT C.Customer_name
FROM Customer_1 C
JOIN Issue_Status I ON C.Customer_id = I.Issued_cust
JOIN Books B ON I.ISBN_book = B.ISBN
WHERE B.Rental_price > 25;






