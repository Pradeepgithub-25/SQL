use bankingdb;

select sum(balance) from accounts;




-- rank

select loanid, customerid,loanamount,
rank() over(order by loanamount desc) from loans;

-- dense rank
select loanid, customerid,loanamount,
dense_rank() over(order by loanamount desc) from loans;

-- row number
select loanid, customerid,loanamount,
row_number() over(order by loanamount desc) from loans;

-- partition by
 select loanid, customerid,loanamount,
 row_number() over(partition by customerid order by loanamount) as row_no from loans; 
 
-- sum over
select loanid, customerid,loanamount,
sum(loanamount) over(order by loanamount desc) as total from loans; 

-- lag
select loanid, customerid,loanamount,
lag(loanamount) over(order by loanamount desc) as total from loans;

-- lead
select loanid, customerid,loanamount,
lead(loanamount) over(order by loanamount desc) as total from loans;  

