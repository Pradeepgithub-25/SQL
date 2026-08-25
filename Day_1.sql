create database learner;

use learner;

desc learners;

create table learners (
id int,
name varchar(20));

insert into learners value (1,'Pradeep'),(2,'Kumar'),(3,'John');

alter table learners add column Gender char(1) after id;

update learners set gender ='M';