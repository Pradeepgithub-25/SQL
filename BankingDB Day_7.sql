create database BankingDB;

show databases;

select database ();

use BankingDB;

CREATE TABLE customers (
    customerID INT PRIMARY KEY,
    First_name VARCHAR(25),
    Last_name VARCHAR(25),
    Email VARCHAR(100),
    Phone INT
);

alter table customers add DateofBirth Date;

DESCRIBE customers;

alter table customers add  AccountCreationDate DATE;

CREATE TABLE accounts (
    AccountID INT,
    Account_type VARCHAR(20),
    Balance DECIMAL(10 , 2 )
);

CREATE TABLE Transactions (
    TransactionID INT,
    TransactionDate DATE,
    Amount DECIMAL(10 , 2 ),
    TransactionType VARCHAR(20)
);


CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10 , 2 ),
    InterestRate DECIMAL(5 , 2 ),
    StartDate DATE,
    EndDate DATE
);

use sakila;

describe branches;

-- customers

alter table customers add DateofBirth Date;
alter table customers add unique (email);
alter table customers modify phone varchar(20);


-- accounts

ALTER TABLE Accounts ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

alter table accounts add customerID int;
alter table accounts add BranchID int;
alter table accounts drop column customerid;

alter table accounts add primary key (accountid);

alter table accounts add constraint fk_customers_accounts 
foreign key (customerid) references customers(customerid);

alter table accounts add constraint fk_branch_customers
foreign key (branchid) references branches(branchid);

-- transactions

alter table Transactions add constraint trans_id primary key (TransactionID);
alter table transactions add AccountID int;
alter table transactions add constraint fk_account_transaction
foreign key (accountid) references accounts(accountid);

-- branches

alter table Branches add constraint Branch_id primary key (BranchID);

desc branches;

-- Loans

alter table Loans add constraint Loan_id primary key (LoanID);
alter table Loans add customerID int;
alter table transactions drop customerid;
alter table Loans add constraint fk_customer_loans
foreign key (customerid) references customers(customerID);

select*from customers;

insert into customers values (101,"Pradeep","Kumar","Pr@gmail.com","9578104345","1999-07-25");

select*from accounts;

INSERT INTO Accounts (AccountID, CustomerID, Account_Type, Balance,branchid)
VALUES (201,101,'Savings',25000,null);

delete from accounts where accountid=201;

set foreign_key_checks=0;

set foreign_key_checks=1;



DESCRIBE accounts;

update customers set email='pradeep.kumar@gmail.com'
where customerid=101;

update accounts set balance = 30000
where accountid=201;


select * from customers where customerid=101;

select * from accounts;

select * from transactions;

-- insert tables in data

insert into customers values 
(102,'Peter','Parker','peter.parker@gmail.com','9523746891','1998-02-01',Null);

delete from customers where customerid=102;

INSERT INTO Customers
(CustomerID, First_Name, Last_Name, Email, Phone, DateOfBirth,Accountcreationdate)
VALUES
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2000-09-20',Null),
(103, 'Amit', 'Patel', 'amit.patel@gmail.com', '9876500001', '1995-06-18',Null),
(104, 'Sneha', 'Joshi', 'sneha.joshi@gmail.com', '9876500002', '1997-09-12',Null),
(105, 'Rohan', 'Kulkarni', 'rohan.k@gmail.com', '9876500003', '1993-11-25',Null);

-- Insert 4 Records into Accounts Table


desc accounts;


INSERT INTO Accounts
(AccountID,CustomerID, Account_type,Balance,BranchID)
VALUES
(202, 102, 'Current', 40000,Null),
(203, 103, 'Savings', 35000,null),
(204, 104, 'Current', 60000,null),
(205, 105, 'Savings', 45000,null);


-- Insert 5 Records into Transactions Table
INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 201, '2025-05-10', 5000, 'Deposit'),
(302, 202, '2025-05-11', 2500, 'Withdraw'),
(303, 203, '2025-05-12', 10000, 'Deposit'),
(304, 204, '2025-05-13', 3000, 'Withdraw'),
(305, 205, '2025-05-14', 7000, 'Deposit');

desc transactions;

delete from transactions where transactionid=301;

set foreign_key_checks=0;

set foreign_key_checks=1;

select * from transactions;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(1, 'Mumbai Branch', 'Andheri, Mumbai', '0221111111'),
(2, 'Pune Branch', 'Shivaji Nagar, Pune', '0202222222'),
(3, 'Nashik Branch', 'College Road, Nashik', '0253222222'),
(4, 'Nagpur Branch', 'Sitabuldi, Nagpur', '0712333333'),
(5, 'Navi Mumbai Branch', 'Vashi, Navi Mumbai', '0224444444');

select * from branches;

-- Insert 5 Records into Loans Table
INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(301, 500000, 8.50, '2025-01-15', '2030-01-15', 101),
(302, 300000, 9.25, '2025-02-10', '2028-02-10', 102),
(303, 750000, 8.75, '2025-03-20', '2032-03-20', 103),
(304, 250000, 10.00, '2025-04-05', '2029-04-05', 104),
(305, 1000000, 7.95, '2025-05-12', '2035-05-12', 105);

select * from loans;

select accountid,account_type,balance from accounts;

select * from accounts
where account_type= 'savings';

select * from accounts
where balance>25000;

select * from accounts
where balance between 5000 and 50000;

