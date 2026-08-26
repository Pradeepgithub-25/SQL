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

