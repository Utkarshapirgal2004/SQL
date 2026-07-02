3use BankingDB;
select  * from customers;
select firstname , lastname , email , phone from customers ;
select * from accounts;
	
SELECT *
FROM Accounts
WHERE AccountType = 'Savings';

	
SELECT *
FROM Accounts
WHERE Balance > 25000;

SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;

	
SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);

SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

-- 1.Retrieve all current account records 
select * from accountS where AccountType ="current"; 

-- 2.Find accounts with balance less than 15000
Select * from accounts where balance >15000;

-- 3.Display transactions between 1000 and 10000 
select * from Transactions  where amount between 1000 and 10000;

-- 4.Retrieve customer records for CustomerID 104 and 105
select * from  customers where CustomerID =104 and 105; 

-- 5.Display customers whose last name starts with S
select * from customers where lastname like "s%";

-- questions 
-- Display Customers in Alphabetical Order
SELECT *FROM Customers ORDER BY FirstName ASC;

SELECT *FROM Accounts ORDER BY Balance DESC;

select distinct accounttype from accounts;

	
SELECT * FROM Accounts ORDER BY Balance DESC LIMIT 3;

SELECT * FROM Transactions LIMIT 3 OFFSET 2; 

-- 6.Display customers sorted by LastName
select * from customers order by lastname ;

-- 7.Retrieve top 5 transactions with highest amount
select * from transactions order  by amount desc limit 5 ;

-- 8.Display unique transaction type
select distinct transactiontype from transactions;

-- 9 . Skip the first 3 transaction records and display the next 4 records
select * from transactions limit 4 offset 3 ;

-- question .Task 4: Identify Missing Banking Information

SELECT * FROM Customers WHERE Phone IS NULL;
	
SELECT * FROM Customers WHERE Email IS NOT NULL;

-- 10 . Find customers without email addresses
select * from customers where email is null;

-- 11.display all accounts where balance information is available
select * from accounts where balance is not null;

-- . Task 5: Categorize Customer Accounts Based on Balance
SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;

-- 12. Create a report that categorizes transactions as:
-- High Transaction Medium Transaction Low Transaction based on transaction amount.

SELECT transactionID, 
       amount,
       CASE
           WHEN amount >= 40000 THEN "high transaction"
           WHEN amount >= 20000 THEN "medium transaction"
           ELSE "low transaction"
       END AS "transaction category"
FROM transactions;

-- . Task 6: Analyze Customer Transactions Using Window Functions
SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

-- . Calculate Running Total of Transactions
SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal-- previous value mai next total add ho raha hai , total add + next number 
FROM Transactions;

-- . DISPLAY Average Transaction Amount
SELECT TransactionID, Amount, AVG(Amount) OVER () AS AverageTransaction FROM Transactions;

-- 13 .Rank customers based on account balance
SELECT customerid 
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS ACCOUNTBalance
FROM accounts;


