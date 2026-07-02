Create database BankingDB;
show databases;
use BankingDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
    
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    
CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

ALTER TABLE Customers
ADD DateOfBirth DATE;

ALTER TABLE Customers
MODIFY Phone VARCHAR(20);

ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

desc customers;
DROP TABLE AccountBranches;
insert into customers value ( 102, "priya" , "patil" , "priya@gmail.com" , "9988776655" , "2025-05-03", "2000-09-20");
select * from customers ;
insert into accounts value  (202 , 102 , "current" , 40000);

INSERT INTO customers value 
(103, 'ram', 'Patel', 'ram@gmail.com', '9988776633', '2025-05-03', '2000-09-20');
desc customers ;
select * from customers ;
insert into accounts value  (203 , 103 , "savings" , 10000);
select * from accounts ;
INSERT INTO customers value 
(101, 'rahul', 'sharma', 'rahul@gmail.com', '9933776633', '2025-05-03', '2000-09-20');
insert into accounts value  (201 , 101 , "savings" , 15000);
select * from customers ;
INSERT INTO customers value 
(104, 'shubhangi', 'sharma', 'shubhagi@gmail.com', '9933886633', '2025-05-03', '2000-10-20');
INSERT INTO customers value 
(105, 'utkarsha', 'pirgal', 'utkarsha@gmail.com', '9933888733', '2025-08-03', '2000-10-20');
select * from customers ;
insert into accounts value 
(204 , 104 , "savings" , 11800), (205 , 105 , "current" , 50000);
select * from accounts ;

insert into Transactions value 
(301, 201, "2025-09-05" , 5000 , "card" );
insert into Transactions value 
(302, 202, "2025-12-05" , 50000 , "uip" ), (303, 203, "2024-1-08" , 780000 , "cash" ) ,(304, 204, "2024-1-07" , 10000 , "cash" ) ,(305, 205, "2023-08-23" , 167865 , "card" ) ;
select * from  Transactions;

truncate table Transactions; 

insert into Branches value 
(401, "katraj" , "pune" , "9822556677"), (402, "katraj" , "mumbai" , "9822996677"), (403, "katraj" , "pune" , "9898996677"),(404, "katraj" , "mumbai" , "9822999977"),(405, "katraj" , "pune" , "9822997677");
select  *  from Branches;

insert into  AccountBranches value 
(201 , 401 , "2025-12-16");
select * from AccountBranches;
select * from accounts;
insert into  AccountBranches value 
(203 , 403 , "2025-12-16"), (204, 404, "2025-12-16"), (205 , 405 , "2025-12-16");

select * from Loans;
insert into Loans value (
501 , 101, 2000.15, 15.65, "2025-12-5" ,"2026-12-5");
insert into Loans value (
502, 102, 20656.00, 15.05, "2025-12-5" ,"2026-12-5");
insert into Loans value (
503, 103, 27856.00, 15.05, "2025-12-5" ,"2026-12-5");
insert into Loans value (
504, 104, 89000.00, 15.00, "2025-12-5" ,"2026-12-5");
insert into Loans value (
505, 105, 12345.00, 15.05, "2025-12-5" ,"2026-12-5");

update customers set phone ="9999999999" where customerID = 101;
Select * from customers where customerID =101;

update customers set email = "priya.patil@gmail.com" where customerid = 102;
Select * from customers where customerID =102;

update Accounts set balance = "30000" where AccountID = 201;
Select * from accounts where accountID =201;

delete from  transactions where transactionid =302;
select * from transactions;
select * from customers;

drop table AccountBranches;

delete from accounts where accountID = 202;
select * from AccountBranches; 













