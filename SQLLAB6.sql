use bankingdb;
Select FirstName, upper(FirstName) as UpperCaseName from customers;

Select FirstName, lower(FirstName) as lowerCaseName from customers;
select firstname, length(firstname) as lengthname from customers;
SELECT FirstName, LEFT(FirstName,3) AS Initials FROM customers;
Select FirstName, left(FirstName, 4) as Initials from customers;
select concat(FirstName,' - ',LastName) as FullName from customers; 

SELECT ROUND(1256.23) AS Rounded_Value; -- Rounds a decimal number to the nearest whole number.
select round(1234.78) as rounded_values;

SELECT CEIL(1256.25) AS Ceiling_Value; -- Returns the smallest integer greater than or equal to a number.
select ceil(328.65) as ceiling_value;

SELECT FLOOR(1256.75) AS Floor_Value; -- Returns the largest integer less than or equal to a number.
select floor(345.23) as floor_values;

SELECT ABS(-2500) AS Absolute_Value; -- Returns the positive value of a number.
select abs(-698) as absolute_values;

select curdate(); -- Display the current system date.

SELECT NOW(); -- Display the current system date and time.

SELECT CustomerID, YEAR(DateOfBirth) AS BirthYear FROM customers; -- Display the Birth of year

SELECT CustomerID, MONTH(DateOfBirth) AS BirthMonth FROM customers; -- DISPLAY THE BIRTH MONTH

SELECT CustomerID, DATEDIFF(CURDATE(),DateOfBirth) AS Days FROM customers; -- Calculate the number of days since BirthDate.

SELECT FirstName, DateOfBirth, IF(YEAR(DateOfBirth) <= 2000, 'Adult', 'Young') AS Age_Category FROM Customers; -- Categorize customers as Adult or Young based on their birth year.

select firstname, dateofbirth, if(year(dateofbirth) <= 2000, 'Adult', 'Young') as Age_category from customers;

SELECT FirstName, IFNULL(Phone, 'Not Available') AS PhoneNumber FROM Customers;
select * from customers;
insert into customers(customerID, Firstname, lastname, email, accountcreationdate, dateofbirth) values(106, 'devika', 'das', 'devika@gmail.com', '2023-08-09', '2003-08-06');
delete from customers where firstname = 'nikita';
delete from customers where FirstName = 'devika';

SELECT GREATEST('2000-09-02', '2000-09-20', '2000-08-03', '2001-08-03', '2011-08-03', '2003-08-06') AS LatestBirthDate;
SELECT GREATEST('2000-09-20', '1995-06-18', '1997-09-12', '1993-11-25') AS LatestBirthDate;
SELECT LEAST('2000-09-20', '1995-06-18', '1997-09-12', '1993-11-25') AS EarliestBirthDate;

SELECT FirstName, NULLIF(FirstName,'Priya') AS Result FROM Customers;

-- AGGREGATE FUNCTIONS
SELECT SUM(Balance) as total_balance FROM Accounts; -- Sum function

SELECT AVG(Balance) AS average_balance FROM Accounts; -- Average function (AVG)

SELECT MAX(Balance) AS highest_balance FROM Accounts; -- Max function 
select * from accounts where balance = (select max(balance) from accounts);

SELECT MIN(Balance) AS lowest_balance FROM Accounts; -- MIN FUNCTION
select * from accounts where balance = (select MIN(balance) from accounts);

SELECT COUNT(*) AS total_accounts FROM Accounts; -- Determine the total number of customer accounts available in the system

SELECT SUM(BALANCE) FROM ACCOUNTS;

SELECT AccountType, SUM(Balance) AS TotalBalance FROM Accounts GROUP BY AccountType;

SELECT AccountType, SUM(Balance) AS TotalBalance FROM Accounts GROUP BY AccountType HAVING SUM(Balance) > 25000;
