create database employees;

use employees;
select database ();


create table employees(
Emp_id int primary key,
Emp_name varchar(20) null,
Gender char(1),
Email varchar(50) unique,
Dept varchar(20) not null,
Age int check(age>18),
salary decimal(10,2),
Location varchar(25) default 'chennai',
Hire_date Date);

insert into employees values 
(1,'Pradeep kumar','M','pradeepkumar@gmail.com','IT',27,50000.00,default,'2025-07-07'),
(2,'Aiswarya','F','Aiswarya@gmail.com','CSE',26,60000.00,default,'2025-06-07'),
(3,'Peter','M','peter@gmail.com','IT',30,75000.00,'Coimbatore','2018-08-15'),
(4,'Parker','M','parker@gmail.com','Finance',35,100000.00,'Mumbai','2017-04-19'),
(5,'Victoria','F','victoria@gmail.com','HR',25,25000.00,default,'2020-01-09');

desc employees;

select * from employees;

select emp_name, dept from employees where dept <> 'IT';

select count(emp_name) as 'total employee' from employees;
select * from employees where dept='it';

select emp_name, salary from employees
order by salary desc
limit 1 offset 1;

select avg(salary) as salary from employees
group by dept;

select count(dept), dept from employees group by dept;

select emp_name, hire_date from employees
where hire_date >'2020-01-01';

select emp_name, hire_date from employees
where year(hire_date) >2020;


select emp_name, salary from employees
order by salary desc
limit 3;

-- find diff betw salary

select DEPT, min(salary) as min,max(salary) as max, max(salary)-min(salary) as salarygap
from employees
group by dept;

select dept,sum(salary) as 'total_salary' from employees
group by dept
having total_salary>50000;

select dept, count(*) from employees
group by dept
having count(*)>1;

