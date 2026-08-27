create database learner;

use learner;

desc learners;

CREATE TABLE Products (
    Productid INT PRIMARY KEY,
    Productname VARCHAR(25),
    Category VARCHAR(10),
    Price FLOAT
);

desc products;

alter table products modify column  Productid varchar(10);
alter table products modify column  category varchar(25);

insert into products values ('P001','Mobile','Electronics',25000),
('P002','Earphones','Electronics',2000),
('P003','Laptop','Electronics',100000),
('P004','Chair','Furniture',2500),
('P005','Table','Furniture',5000),
('P006','Mobile','Electronics',25000);

update products set 
category = 'Furniture'
where Productid='P006';

delete from products where productid= 'p007';

insert into products values ('P007','Pen','stationary',null),
('P008','Pencil','stationary',500),
('P009','Cosmics book','stationary',1500);

select* from products;

-- aggregate function

select sum(price) as 'total price' from products;
select avg(price) as 'Avg price' from products;
select min(price) as 'Min price' from products;
select max(price) as 'Max price' from products;
select count(price) as 'Count price' from products;


-- group by

select category, sum(price) as 'total price' from products
group by category;
select category, avg(price) as 'Avg price' from products
group by category;
select category, min(price) as 'Min price' from products
group by category;
select category, max(price) as 'Max price' from products
group by category;
select category, count(price) as 'total count' from products
group by category;


-- math function
select sqrt(81);
select ceil(9.2);
select floor(9.2);
select round(1.23456,2);
select round(29.56633,3);
select power(5,2);
select pow(2,3);


select abs(-5);

select 5%2;
select mod(6,4) as 'Modulous value';

