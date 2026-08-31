use learner;


-- windows function

select productname, price,
sum(price) over() as price from products;

select productname, price,
avg(price) over() as price from products;

select productname, price,
max(price) over() as price from products;

select productname, price,
count(price) over() as price from products;

select productname, price,
sum(price) over() as price from products;


-- row number

select productname, price,
row_number() over() as 'rows' from products;


-- rank and dense rank

select productname, price,
rank() over() as ranks from products;

select productname, price,
dense_rank() over() as ranks from products;


-- Partition by 
select productname, price,
sum(price) over(partition by productname) as price from products;

-- order by
select productname, price,
row_number() over(order by price) as 'rows' from products;

select productname, price,
rank() over(order by price desc) as 'rows' from products;

select productname, price,
dense_rank() over(order by price desc) as 'rows' from products;

-- order by parttion by
select productname, price,
dense_rank() over(partition by productname order by price desc) as 'rows' from products;

select productname, category, price,
rank() over(partition by category order by price desc) as 'rows' from products;

use bankingdb;
-- task 1
select AccountID, Account_Type, Balance from accounts;

-- task 2
select * from accounts;
select * from accounts where balance <15000;
select * from accounts where balance between 1000 and 10000;
select * from customers where customerid in(104,105);
select * from customers where last_name like 'P%';

-- task 3
select * from customers order by last_name;
select * from transactions order by amount desc limit 5;
select distinct(transactiontype) from transactions;
select * from transactions order by amount limit 1,4;

-- task 4

select * from customers
where email is null;

select * from accounts
where balance is not null;

-- task 5

select transactionid, amount,
case 
when amount >=50000 then "High Transaction"
when amount >=25000 then "Medium Transaction"
Else 'Low Transaction'
End as category
from transactions;

-- task 6

select balance,
rank() over(order by balance desc) as ranks from accounts;

select accountid, balance,
sum(balance) over(order by balance desc) as ranks from accounts;

select accountid, balance,
max(balance) over() as ranks from accounts;