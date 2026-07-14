use bankingdb;
select avg (amount) from transactions;
select *  from transactions where amount >  avg from (amount); -- not possible 
-- using subqueries
-- SINGLE ROW SUBQUERY
-- TASK 1

select * from transactions where amount > (select avg(amount) from transactions);

-- TASK 2
SELECT AccountID,AccountType,Balance, CustomerID FROM Accounts
    WHERE Balance >(SELECT AVG(Balance)FROM Accounts)ORDER BY Balance DESC;

(SELECT AVG(Balance)FROM Accounts)ORDER BY Balance DESC; -- avg balance 
-- multi row sub query 
select * from transactions;
select * from accounts;

select accountid , accounttype, balance , customerid from accounts where accountid in ( select accountid from transactions where transactiontype ="deposite");
-- TASK 4 

select accountid, accounttype,balance,customerid from accounts where balance = (select max(balance) from accounts);
