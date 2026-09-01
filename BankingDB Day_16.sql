create database Learnersinfo;

use learnersinfo;

create table learner (
id int primary key auto_increment,
name varchar(25));

create table course (
course_id int primary key,
learner_id int,
course_name varchar(50),
constraint learn_id foreign key (learner_id)  references learner(id));

insert into learner (id,name) values 
(1,'pradeep'),(2,'Kumar'),(3,'peter'),(4,'Parker'),(5,'Aishu');

insert into course (course_id,learner_id,course_name) values
(101,1,'SQL'),(102,1,'JAVA'),(103,2,'PYTHON'),(104,3,'HTML'),(105,3,'CSS');

show tables;

select * from learner;
select * from course;

desc learner;
desc course;

drop table course;


-- inner join returns only records tjat have a match in both tables

select l.id,l.name, c.course_id, c.course_name from learner as l
inner join course as c on
l.id=c.learner_id;

-- left join

select l.id,l.name, c.course_id, c.course_name from learner as l
left join course as c on
l.id=c.learner_id;


-- right join

INSERT INTO COURSE (COURSE_ID, LEARNER_ID,course_NAME)
values(106,Null,'C++');

select l.id, l.name, c.course_id, c.course_name from learner as l
right join course as c on
l.id=c.learner_id;

-- union
 
 select l.id,l.name, c.course_id, c.course_name from learner as l
left join course as c on
l.id=c.learner_id union select l.id, l.name, c.course_id, c.course_name from learner as l
right join course as c on
l.id=c.learner_id;

-- cross join

select * from learner 
cross join course; 

select l.name,c.course_name from learner as l
cross join course as c; 

create table users(
id int primary key,
Name varchar(25));

create table shoes(
id int primary key,
shoe_brand varchar(25),
constraint shoeid foreign key (id) references users(id));

insert into users values (1,'Pradeep'),(2,'Kumar');
insert into shoes values (1,'Puma'),(2,'Adidas');

insert into users values (3,'Peter');


alter table shoes drop constraint shoeid;

select u.id, u.name, s.shoe_brand from users as u
cross join shoes as s; 

-- find courses without learners

select c.course_id, c.course_name from learner as l
right join course as c on
l.id=c.learner_id
where l.id is null;

-- find a learner who is studying sql
 
select l.name, c.course_name from learner as l
inner join course as c on
l.id=c.learner_id
where c.course_name= 'SQL';


-- each person course list
select l.name, count(c.course_name) from learner as l
inner join course as c on
l.id=c.learner_id
group by l.name
having count(c.course_name);


