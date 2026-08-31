select concat('pradeep','kumar');
select concat('pradeep'," ",'kumar');


-- Math

select sin(90);
select cos(50);
select tan(80);
select log10(100);
select log2(8);

select concat(upper(left('Pradeep',1)),
lower(right('pradeep',length('pradeep') - 1)))
as capitalized_name;

select first_name, upper(first_name) as Uppercasename from customers;
select first_name, Lower(first_name) as Lowercasename from customers;


select now();
select curdate();
select curtime();
select year(curdate());
select month(curdate());
select day(curdate());

select hour(now());
select minute(now());
select second(now());

select date_add(curdate(),interval 7 day);
select date_add(curdate(),interval 7 month);
select date_add(curdate(),interval 7 year);
select date_add(curdate(),interval -7 day);
select date_add(curdate(),interval -7 month);
select date_add(curdate(),interval -7 year);
select date_add(curdate(),interval 7 day);
select date_add(curdate(),interval 7 month);
select date_sub(curdate(),interval 3 day);
select date_sub(curdate(),interval -3 day);

select date_format(curdate(),"%d-%m-%Y") as date;
select date_format(curdate(),"%d-%m-%y") as date;
select dayname(curdate());
select monthname(curdate());


select timestampdiff(year,'1999-07-25',curdate());
select timestampdiff(month,'1999-07-25',curdate());
select timestampdiff(day,'1999-07-25',curdate());

select customerid, year(dateofbirth) as Birthyear from customers;
select customerid, month(dateofbirth) as Birthmonth from customers;

select customerid, datediff(curdate(), dateofbirth) as Birthmonth from customers;

select first_name, Dateofbirth,
if(year(dateofbirth) >1995,'Adult','Young') 
as category from customers;

select first_name,
ifnull(accountcreationdate,'NA') 
as category from customers;

Select * from customers;

select max(dateofbirth) from customers;
select greatest(dateofbirth,2) from customers;
select(greatest('Hello','Hi','Welcome'));
select(least('Hello','Hi','Welcome'));

select first_name,
nullif(first_name,'priya') 
from customers;
