use bankingdb;

-- like

select * from customers ;

select * from customers 
where first_name like "%P";

select * from customers 
where email like "%@gmail%";

select * from customers 
where last_name like "k%";

select * from customers 
where phone like "%5";

-- IN

select * from accounts
where account_type in ('savings','current');

select * from transactions
where transactiontype in ('Withdraw','deposit');

select * from customers
where customerid in (101,105);

select * from accounts
where accountid in (202,205);

-- order by asc\desc

select * from customers
order by first_name;

select * from accounts 
order by account_type;

select * from transactions
order by amount desc;

select * from customers
order by dateofbirth asc;







