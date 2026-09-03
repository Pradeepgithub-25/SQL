use learner;

desc employees;
desc departments;

select * from employees;
select * from departments;

-- sub query

select emp_name, salary from employees
where salary >= ( select avg(salary) from employees);

select * from departments
where dept_name in ('it','Hr');

select emp_id, emp_name from employees 
where dept_id in (select dept_id from departments
where dept_name in ('it','Hr'));

select emp_name, salary from employees 
where salary in (select salary from employees
where dept_id =10);


-- Multirow subquery

-- normal

select emp_name, salary from employees 
where salary < (select salary from employees
where dept_id =10);

-- all
select emp_name, salary from employees 
where salary < all (select salary from employees
where dept_id =10);

-- any 
select emp_name, salary from employees 
where salary < any (select salary from employees
where dept_id =10);


-- correlated subquery

select 	e.emp_name, e.salary from employees as e
where e.salary >
(select avg (e2.salary) from employees as e2
where e2.dept_id =  e.dept_id);

use bankingdb;

-- Task 1 

select * from transactions
where amount > (select avg(amount) from transactions); 

-- TASK 2

select accountid, account_type,balance,customerid, branchid
from accounts where balance > 
(select avg(balance) from accounts)
order by balance desc;





