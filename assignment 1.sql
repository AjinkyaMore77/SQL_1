create table Emp_details (Firstname varchar(20),Middlename varchar(20),Lastname varchar(20),Age int,City varchar(20),
Birthdate varchar(20),Email varchar(200),Mobile varchar(20),Dept varchar(20),Salary int,YearofJoin int);
select * from Emp_details ;
alter table Emp_details add Id int
INSERT INTO Emp_details (Firstname, Middlename, Lastname, Age, City, Birthdate, Email, Mobile, Dept, Salary, YearofJoin, Id) VALUES
('John', 'A', 'Doe', 30, 'Pune', '1995-04-15', 'john.doe@example.com', '9876543210', 'HR', 50000, 2020, 1),
('Jane', 'B', 'Smith', 25, 'Mumbai', '2000-01-10', 'jane.smith@example.com', '9876543211', 'IT', 60000, 2019, 2),
('Michael', 'C', 'Johnson', 35, 'Bangalore', '1989-07-25', 'michael.johnson@example.com', '9876543212', 'Sales', 55000, 2018, 3),
('Emily', 'D', 'Davis', 28, 'Chennai', '1994-11-05', 'emily.davis@example.com', '9876543213', 'Marketing', 65000, 2021, 4),
('David', 'E', 'Wilson', 40, 'Hyderabad', '1985-03-30', 'david.wilson@example.com', '9876543214', 'Finance', 70000, 2017, 5),
('Sarah', 'F', 'Brown', 27, 'Delhi', '1995-05-15', 'sarah.brown@example.com', '9876543215', 'HR', 50000, 2020, 6),
('James', 'G', 'Williams', 32, 'Kolkata', '1991-02-10', 'james.williams@example.com', '9876543216', 'IT', 60000, 2019, 7),
('Jessica', 'H', 'Jones', 26, 'Pune', '1996-12-25', 'jessica.jones@example.com', '9876543217', 'Sales', 55000, 2018, 8),
('Daniel', 'I', 'Garcia', 29, 'Mumbai', '1993-08-05', 'daniel.garcia@example.com', '9876543218', 'Marketing', 65000, 2021, 9),
('Laura', 'J', 'Martinez', 38, 'Bangalore', '1987-10-30', 'laura.martinez@example.com', '9876543219', 'Finance', 70000, 2017, 10),
('Matthew', 'K', 'Rodriguez', 31, 'Chennai', '1992-06-15', 'matthew.rodriguez@example.com', '9876543220', 'HR', 50000, 2020, 11),
('Sophia', 'L', 'Anderson', 24, 'Hyderabad', '1999-03-10', 'sophia.anderson@example.com', '9876543221', 'IT', 60000, 2019, 12),
('William', 'M', 'Thomas', 34, 'Delhi', '1989-11-25', 'william.thomas@example.com', '9876543222', 'Sales', 55000, 2018, 13),
('Olivia', 'N', 'Jackson', 28, 'Kolkata', '1994-01-05', 'olivia.jackson@example.com', '9876543223', 'Marketing', 65000, 2021, 14),
('Lucas', 'O', 'White', 37, 'Pune', '1986-05-30', 'lucas.white@example.com', '9876543224', 'Finance', 70000, 2017, 15),
('Mia', 'P', 'Harris', 29, 'Mumbai', '1993-12-15', 'mia.harris@example.com', '9876543225', 'HR', 50000, 2020, 16),
('Benjamin', 'Q', 'Clark', 33, 'Bangalore', '1990-04-10', 'benjamin.clark@example.com', '9876543226', 'IT', 60000, 2019, 17),
('Ava', 'R', 'Lewis', 27, 'Chennai', '1996-09-25', 'ava.lewis@example.com', '9876543227', 'Sales', 55000, 2018, 18),
('Henry', 'S', 'Walker', 36, 'Hyderabad', '1988-01-05', 'henry.walker@example.com', '9876543228', 'Marketing', 65000, 2021, 19),
('Grace', 'T', 'Hall', 40, 'Delhi', '1985-07-30', 'grace.hall@example.com', '9876543229', 'Finance', 70000, 2017, 20),
('Jack', 'U', 'Allen', 30, 'Kolkata', '1995-05-15', 'jack.allen@example.com', '9876543230', 'HR', 50000, 2020, 21),
('Lily', 'V', 'Young', 25, 'Pune', '2000-02-10', 'lily.young@example.com', '9876543231', 'IT', 60000, 2019, 22),
('Sebastian', 'W', 'King', 35, 'Mumbai', '1989-07-25', 'sebastian.king@example.com', '9876543232', 'Sales', 55000, 2018, 23),
('Chloe', 'X', 'Scott', 28, 'Bangalore', '1994-11-05', 'chloe.scott@example.com', '9876543233', 'Marketing', 65000, 2021, 24),
('Alexander', 'Y', 'Green', 40, 'Chennai', '1985-03-30', 'alexander.green@example.com', '9876543234', 'Finance', 70000, 2017, 25),
('Amelia', 'Z', 'Baker', 27, 'Hyderabad', '1995-05-15', 'amelia.baker@example.com', '9876543235', 'HR', 50000, 2020, 26),
('Ethan', 'A1', 'Adams', 32, 'Delhi', '1991-02-10', 'ethan.adams@example.com', '9876543236', 'IT', 60000, 2019, 27),
('Aria', 'B1', 'Hernandez', 26, 'Kolkata', '1996-12-25', 'aria.hernandez@example.com', '9876543237', 'Sales', 55000, 2018, 28),
('Jacob', 'C1', 'Lopez', 29, 'Pune', '1993-08-05', 'jacob.lopez@example.com', '9876543238', 'Marketing', 65000, 2021, 29),
('Isabella', 'D1', 'Gonzalez', 38, 'Mumbai', '1987-10-30', 'isabella.gonzalez@example.com', '9876543239', 'Finance', 70000, 2017, 30);
ALTER TABLE Emp_details ALTER COLUMN Email VARCHAR(200);

select * from Emp_details 

--1. Increase salary by 2% for employees living in pune only
select *,New_salary=Salary*1.02 from Emp_details

--2. If given salary is 30 days salry then find out 28 days salary
select *,New_28dayssal=(Salary/30)*28 from Emp_details

--3. find out employees whose Firstname not starts with vowels
select * from Emp_details where (Firstname like 'a%' or Firstname like 'e%' or Firstname like 'i%' or Firstname like 'o%' or Firstname like 'u%');
select * from Emp_details where not(Firstname like 'a%' or Firstname like 'e%' or Firstname like 'i%' or Firstname like 'o%' or Firstname like 'u%');

--4. find out employees from out of mumbai,pune city, their age should be > than 28 respective dept should not null and their email domain contain only 'gmail'
select * from Emp_details where City in ('Mumbai','Pune') and Age >28 and Dept is not null and Email like '%example____'

--5. disply emoloyees having salary greater than 25000 and hiring year is >2015 
select * from Emp_details where YearofJoin >2018  and Salary >28000