use PK_hospital;

select* from bills;
select* from employee;

alter table bills
add column doctor_id int;

update bills
set doctor_id =5
where id = 6;

alter table bills
add constraint fk_doctor_id foreign key (doctor_id) references employee (e_id)
on delete cascade;

delete from employee
where e_id=2;

alter table bills
drop constraint fk_doctor_id;

show databases;

select database();


show tables;

select * from branch;

desc branch;
