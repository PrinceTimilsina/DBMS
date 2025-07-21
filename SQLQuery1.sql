create database prince;
create table student(s_id int primary key,s_name varchar(255) );    
select * from student;
insert into student values(1,'abhishek');

select * from student;
insert into student values(2,'rachin'),(3,'rohan'),(4,'arjun');
select * from student;
insert into student values(5,'rohash');
select * from student;


create database teacher;
create table teacher(t_id int primary key,t_name varchar(255));    
select * from teacher;
insert into teacher values(1,'abhishek');
select * from teacher;
insert into teacher values(2,'rachin'),(3,'roshan'),(4,'arjun');
select * from teacher;
insert into teacher values(5,'rohash');
select * from teacher;