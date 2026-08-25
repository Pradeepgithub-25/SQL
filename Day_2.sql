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