use bankingdb;
show tables;

CREATE VIEW High_Balance_Accounts AS
SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID
FROM Accounts
WHERE Balance > 30000;
select * from accounts;
SELECT * FROM High_Balance_Accounts;

-- Task 3: Modify the View to Include Transaction Details

CREATE OR REPLACE VIEW High_Balance_Accounts AS
SELECT
    a.AccountID, a.AccountType, a.Balance, a.CustomerID,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Accounts a
INNER JOIN Transactions t
ON a.AccountID = t.AccountID
WHERE a.Balance > 30000;

SELECT * FROM High_Balance_Accounts;
update accounts set accounttype ="savings" where accountid =202;

select * from transactions;

-- TASK 4
SELECT
    AccountID,
    AccountType,
    Balance,
    CustomerID,
    TransactionID,
    TransactionDate,
    TransactionType,
    Amount
FROM High_Balance_Accounts
ORDER BY Balance DESC;
S