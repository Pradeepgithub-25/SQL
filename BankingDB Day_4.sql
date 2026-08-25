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

alter table customers add DateofBirth Date;
alter table customers add unique (email);
alter table customers modify phone varchar(20);

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


alter table Transactions add constraint trans_id primary key (TransactionID);
alter table transactions add AccountID int;
alter table transactions add constraint fk_account_transaction
foreign key (accountid) references accounts(accountid);


alter table Branches add constraint Branch_id primary key (BranchID);

desc branches;

alter table Loans add constraint Loan_id primary key (LoanID);
alter table Loans add customerID int;
alter table transactions drop customerid;
alter table Loans add constraint fk_customer_loans
foreign key (customerid) references customers(customerID);