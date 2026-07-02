USE bankingdb;
-- TASK 1
select *  from  customers where firstname like "A%";
select * from customers where email like "%gmail%";
select * from customers where lastname like "%kar";

-- 1. Display customers whose first name starts with R
select *  from  customers where firstname like "r%";

-- 2.Find customers whose email contains yahoo
select * from customers where email like "%yahoo%";

-- 3.Display customers whose last name starts with P
select * from customers where  lastname like "%p";

-- 4.Search customers whose phone number ends with 99
select * from customers where phone like "%99";

-- Task 2: Filter Records for Selected Banking Categories
SELECT * FROM Accounts WHERE AccountType IN ('Savings', 'Current');

SELECT * FROM Transactions WHERE TransactionType IN ('deposite', 'withdrawal');
select * from transactions;

update transactions set transactiontype ="withdrawl" where transactiontype ="online";
update transactions set transactiontype ="deposite" where transactiontype ="cash";

SELECT *
FROM Customers
WHERE CustomerID IN (101,102,105);

-- 5.Display accounts belonging to Salary and Savings account types
SELECT * FROM Accounts WHERE AccountType IN ('Savings', 'salary');

-- 6.Retrieve transactions for Payment and Deposit categories
SELECT * FROM Transactions WHERE TransactionType IN ('deposite', 'payment');

 -- 7.Display customer records for CustomerID 103 and 104
SELECT * FROM Customers WHERE CustomerID IN (103,104);

-- 8.Retrieve selected account records using AccountID values
select * from accounts where accountid in (201,202,203);

 -- Task 3: Generate Sorted Banking Reports

SELECT * FROM Customers ORDER BY LastName ASC;
SELECT * FROM Accounts ORDER BY Balance DESC;
SELECT * FROM Transactions ORDER BY TransactionDate DESC;

-- 9 . Display customers sorted by FirstName
select * from customers order by firstname ;

-- 10.Display accounts sorted by AccountType
select * from accounts order  by accounttype;

-- 11.Display transactions sorted by Amount in descending order
select * from transactions order by Amount desc;

-- 12.Display customers sorted by DateOfBirth
select  * from customers order by dateofbirth asc;

-- Task 4: Control Result Size for Faster Review
SELECT *FROM Accounts ORDER BY Balance DESC LIMIT 3;
SELECT * FROM Customers LIMIT 3;
SELECT * FROM Transactions LIMIT 3 OFFSET 2;

-- 13.Display top 3 transactions with highest amount
SELECT *FROM transactions ORDER BY amount DESC LIMIT 3 ;

-- 14.Retrieve only 4 customer records
SELECT * FROM Customers LIMIT 4;

-- 15. Skip first 2 account records and display next 3 record
select * from accounts limit 3 offset 2; -- fisrt 2 chodke next 3 recored do .. 

-- 16 .Display top 5 latest transactions
select * from transactions order by  transactiondate desc limit 5;

-- Task 5: Build Customer Search Reports for Banking

SELECT * FROM Accounts WHERE AccountType = 'Savings' ORDER BY Balance DESC;
SELECT * FROM Customers WHERE FirstName LIKE 'S%' LIMIT 5;                    
SELECT * FROM Transactions WHERE TransactionType IN ('deposite','withdrawal') ORDER BY TransactionDate DESC; 