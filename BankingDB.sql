create database BankingDB;

show databases;

select database ();

use BankingDB;

create table customers(
customerID int primary key,
First_name varchar(25),
Last_name Varchar(25),
Email varchar(100),
Phone int
);

alter table customers add DateofBirth Date;

alter table customers add unique (email);



create table accounts(
AccountID int,
Account_type varchar(20),
Balance decimal(10,2)
);

ALTER TABLE Accounts ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

alter table accounts add customerID int;


alter table accounts add BranchID int;

alter table accounts drop column customerid;


show tables;

select * from accounts;

desc accounts;

alter table accounts add primary key (accountid);

alter table accounts add constraint fk_customers_accounts 
foreign key (customerid) references customers(customerid);

alter table accounts add constraint fk_branch_customers
foreign key (branchid) references branches(branchid);

CREATE TABLE Transactions (
    TransactionID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20)
);

alter table Transactions add constraint trans_id primary key (TransactionID);

alter table transactions add AccountID int;

alter table transactions add constraint fk_account_transaction
foreign key (accountid) references accounts(accountid);

CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

alter table Branches add constraint Branch_id primary key (BranchID);



CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);

alter table Loans add constraint Loan_id primary key (LoanID);


alter table Loans add customerID int;

alter table transactions drop customerid;

alter table Loans add constraint fk_customer_loans
foreign key (customerid) references customers(customerID);


