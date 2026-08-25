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