use  project;
create table  worker(worker_id int primary key,
first_name varchar(50),
last_name varchar(50),
salary int,
joining_date datetime,
department varchar(50));
insert into worker values(1,'monika','arora',100000,'2014-02-20 09:00:00','HR');
insert into worker values(2,'nihanika','varma',80000,'2014-11-06 09:00:00','Admin');
insert into worker values(3,'visha','singhal',300000,'2014-02-20 09:00:00','HR');
insert into worker values(4,'amitabh','singh',500000,'2014-11-06 09:00:00','Admin');
insert into worker values(5,'vivek','bhati',500000,'2014-02-20 09:00:00','Admin');
insert into worker values(6,'vipul','diwan',500000,'2014-02-20 09:00:00','Account');
insert into worker values(7,'stish','kumar',750000,'2014-01-20 09:00:00','Account');
insert into worker values(8,'gitika','chauhan',900000,'2014-02-04 09:00:00','Admin');
select * from worker;
-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
-- Ascending and DEPARTMENT Descending. 
select * from worker order by first_name asc,department desc;
-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
-- workerfrom the Worker table. 
use project;
select * from worker where first_name='vipul' or first_name='satish';

update worker 
set first_name='satish' where worker_id=7;
select * from worker;
-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
-- contains six alphabets.
select * from worker where first_name like '%h' and length(first_name)=6;
-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
select *  from worker where salary < 100000;


-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
select count(worker_id) as work_id,department from worker group by department;
-- 6. Write an SQL query to show the top 6 records of a table. 
select * from worker
limit 6;
-- 7. Write an SQL query to fetch the departments that have less than five people in them. 
select  count(department) as dept,department
from worker group by department having count(department)<5;
-- 8. Write an SQL query to show all departments along with the number of people in there. 
select count(department) as dep_count,department
from worker group by department;
-- 9. Write an SQL query to print the name of employees having the highest salary in each 
-- department. 
select w.first_name,w.salary from worker w 
where w.salary in(select max(salary) from worker group by department);
use project;
create table student(student_id int primary key,
std_name varchar(50),
sex varchar(50),
percentage float,
class int,
sec varchar(50),
streamm varchar(50), 
dob date);
insert into student values(1001,'surekha joshi','female',82.0,12,'A','science','1998-08-03');
insert into student values(1002,'mahi agarwal','female',56,11,'C','commarce','2008-11-23');
insert into student values(1003,'sanam verma','male',52.0,11,'C','commarce','2006-06-29');
insert into student values(1004,'ronit kumar','male',63.0,11,'C','commarce','1997-05-11');


insert into student values(1005,'dipes pulkit','male',78.0,11,'C','science','2003-09-14');
insert into student values(1006,'jahanvi puri','female',60.0,11,'B','commarce','2008-07-11');
insert into student values(1007,'sanam kumar','male',23.0,11,'F','commarce','1998-08-03');
insert into student values(1008,'sahil saras','male',56.0,11,'C','commarce','2008-11-07');
insert into student values(1009,'akshara agarwal','female',72.0,12,'B','commarce','1996-10-01');
insert into student values(1010,'stuti mishra','female',39.0,12,'F','science','2008-11-23');
insert into student values(1011,'harsh agrawal','male',42.0,11,'C','science','1998-08-03');
insert into student values(1012,'nikunj agarwal','male',49.0,12,'C','commarce','1998-06-28');
insert into student values(1013,'akriti saxena','female',89.0,12,'A','science','2008-11-23');

insert into student values(1014,'tani rastogi','female',82.0,12,'A','science','2011-11-23');
use project;
select * from student;
select std_name,dob from student;

SELECT * FROM student WHERE percentage >= 80; 
SELECT std_name,streamm,Percentage from student WHERE percentage > 80; 
SELECT * from student WHERE streamm = 'science' AND percentage > 75;





