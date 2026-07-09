use bankingdb;
select * from transactions;

select  
a.AccountID , a.AccountType , a.Balance, t.transactionid, t.transactiondate, t.transactiontype , t.amount
from accounts a inner join transactions t on a.accountid = t.accountid;

select * from accounts;
insert into accounts values (202, 102,"SAVINGS" , 65000);

select  
a.AccountID , a.AccountType , a.Balance, t.transactionid, t.transactiondate, t.transactiontype , t.amount
from accounts a left join transactions t on a.accountid = t.accountid;

select  
a.AccountID , a.AccountType , a.Balance, t.transactionid, t.transactiondate, t.transactiontype , t.amount
from accounts a inner join transactions t on a.accountid = t.accountid
where t.transactiontype = "deposite";

update transactions set transactiontype ="withdraw" where transactionid = 301;
update transactions set transactiontype ="withdraw" where transactionid = 305;


SELECT
    a.AccountID, a.AccountType, a.Balance,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Accounts a
INNER JOIN Transactions t
ON a.AccountID = t.AccountID
WHERE a.Balance > 30000
ORDER BY a.Balance DESC;

update transactions set amount= 30000 where transactionid = 305;

SELECT
    a.AccountID, a.AccountType, a.Balance,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Accounts a
INNER JOIN Transactions t
ON a.AccountID = t.AccountID
WHERE a.Balance > 30000
ORDER BY a.Balance DESC;
