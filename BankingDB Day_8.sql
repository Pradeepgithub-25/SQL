use BankingDB;


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

