use bankingdb;

desc accounts;

select * from transactions;
select*from accounts;

-- Task 1

select a.accountid, a.account_type,a.balance,
t.transactionid,t.transactiondate,t.transactiontype,t.amount
from accounts as a inner join transactions as t on
a.accountid = t.accountid;

update transactions set accountid=201
where accountid=200;

insert into accounts values (206,"current",50000.00,102,null);

-- task 2

select a.accountid, a.account_type,a.balance,
t.transactionid,t.transactiondate,t.transactiontype,t.amount
from accounts as a left join transactions as t on
a.accountid = t.accountid;

-- task 3

select a.accountid, a.account_type,a.balance,
t.transactionid,t.transactiondate,t.transactiontype,t.amount
from accounts as a inner join transactions as t on
a.accountid = t.accountid
where t.transactiontype = 'deposit'; 

-- task 4

select a.accountid, a.account_type,a.balance,
t.transactionid,t.transactiondate,t.transactiontype,t.amount
from accounts as a inner join transactions as t on
a.accountid = t.accountid
where a.balance >30000
order by a.balance desc;


-- Subquery
use learnerinfo;

select * from products
where  price >(select min(price) from products);

create table departments (
dept_id int primary key,
dept_name varchar(25));

create table employees(
Emp_id int primary key,
Emp_name varchar(25),
salary decimal(7,2),
dept_id int,
constraint fk_emp foreign key (dept_id) references departments (dept_id));

insert into departments values (
10,'IT'),(20,'HR'),(30,'Sales');

insert into employees values (1,'Pradeep',60000,10),(2,'Kumar',55000,20),
(3,'Peter',74200,30),(4,'Parker',45780,20),(5,'Aishu',90000,10);


select emp_name, salary from employees 
where salary >( select min(salary) from employees);