create database learner;

use learner;

desc learners;

create table learners (
id int,
name varchar(20));

insert into learners value (1,'Pradeep'),(2,'Kumar'),(3,'John');

alter table learners add column Gender char(1) after id;

update learners set gender ='M';

select * from learners;

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

select * from products;

select productname || 'cost around' || price from products;

select cast(productid AS decimal) as new_price from products;

insert into products values('P010',"book","yes",009);

show char set;
delete from products
where productid ='0p001';

update products set 
category = 'Furniture'
where Productid='P006';

select productname from products;

select productname, Price from products;

select * from products
where price<>5000;

select * from products
where category = 'Furniture' and Price >=5000;

select * from products
where category = 'Furniture' or Price >=5000;

select * from products
where category != 'Furniture';

select * from products
where not category = 'Furniture';

select * from products
where productid in('P001','P003','P002');

select * from products
where productid ='P001'or productid ='P002';

select * from products
where productid not in('P001','P002');

select * from products
where category = 'Furniture' or category ='Electronics';

select * from products
where price between 5000 and 100000;

select * from products
where price>=5000 and price<=100000;

Select * from products
where productname like'%R';

Select productname from products
order by productname asc;

Select productname from products
order by productname desc;

Select * from products
order by productname asc, price desc;

Select * from products
where productname not in('Mobile');

Select category from products;

Select distinct category from products;

insert into products values ('P007','Pen','stationary',null);

select * from products
where price is null;

select * from products
where price is not null;

select * from products
limit 2;

select * from products
limit 2 offset 2;

select * from products
limit 2 offset 2;


use sakila;

select * from city;

select * from city
limit 20 offset 10;

select * from city
limit 20, 10;

select * from products;

select * from products
where price <25000;

select * from products
where price between 1000 and 25000;

select * from city
where city like 'sam%';

select * from city
where city like '%am';

select * from city
where city like '_m%';

select * from city
where city like 's_m%';

select * from city
where city like '%pol%';


select * from products
where productid between 'P001' and 'P005';

select * from products
where productname like'M%';

select * from products;

select Productname, Price,
case
When price is null then 0
when price>75000 then "Best Seller"
when price between 20000 and 50000 then "Medium seller"
else "low Seller"
end as status
from products;

select Productname, Price,
sum(price) over() as total_price
from products;

select Productname, Price,
avg(price) over() as total_price
from products;

select Productname, Price,
row_number() over(order by price desc) as total_row
from products;


select Productname, Price,
rank() over(order by price desc) as "rank"
from products;

select Productname, Price,
dense_rank() over(order by price desc) as "dense rank"
from products;

select Productname, Price,
dense_rank() over(partition by productname order by price desc) as "rank"
from products;

use sakila;

select database();

show tables;

select*from city;

select * from city
where city like "%sam%";

select * from language;

select * from language
where last_update like "%02%";

select * from film;

select * from film as f
join language as l on l.language_id=f.language_id
where f.length>100
order by f.length desc;


desc language;

desc film;