use bankingdb;
-- TASK 2
Select LoanID, CustomerID, LoanAmount, rank() over(order by LoanAmount desc) as LoanRank from Loans;
-- TASK 3
Select LoanID, CustomerID, LoanAmount, dense_rank() over(order by LoanAmount desc) as DenseRank from Loans;

select * from loans;

Update loans set LoanAmount = 20332.89 where loanID = 503;

SELECT LoanID, CustomerID, LoanAmount, ROW_NUMBER() OVER(ORDER BY LoanAmount DESC) AS RowNumber FROM Loans;

select * from customers;

insert into loans value(507, 104, 20332.89, 456.90, "2018-03-04", "2037-09-04");
select * from loans order by LoanAmount desc; -- if we want to loan amount in desc order


select LoanID, CustomerID, LoanAmount, SUM(LoanAmount) over(order by LoanAmount desc) as RunningTotal from loans; -- RUNNING TOTAL

select loanid, customerid, loanamount, lag(loanamount) over(order by loanamount desc) as PreviousLoanAmount from loans;
select loanid, customerid, loanamount, lead(loanamount) over(order by loanamount desc) as Next_Loan_Amount from loans;