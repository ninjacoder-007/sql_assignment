create database sql_assign
use sql_assign
create table Worker(
Worker_id Int not null Primary Key,
First_Name char(20),
Last_Name char(25),
Salary int,
Joining_date datetime,
Department varchar(30)
)
select * from Worker

Insert into Worker 
(Worker_id, First_Name,Last_Name,Salary, Joining_date,Department) values
		
		(002, 'Niharika', 'Verma', 80000, convert(datetime,'2020-10-02 09:00:00') , 'Admin'),
		(003, 'Vishal', 'Singhal', 90000, convert(datetime,'2019-10-02 09:00:00') , 'HR'),
		(004, 'Amitabh', 'Singh', 500000, convert(datetime,'2019-08-05 09:00:00') , 'Admin'),
		(005, 'Vivek', 'Bhati', 10000, convert(datetime,'2018-10-03 09:00:00') , 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, convert(datetime,'2020-11-12 09:00:00') , 'Account'),
		(007, 'Satish', 'Kumar', 75000, convert(datetime,'2019-10-02 09:00:00') , 'Account'),
		(008, 'Geetika', 'Chauhan', 650000, convert(datetime,'2018-01-02 09:00:00') , 'Admin')
		

		select * from Worker



select  SUBSTRING( First_Name,1,3) as Name from Worker

select CHARINDEX('a','Amitabh', 2) as 'Position'





select FIRST_NAME ,Department,Salary
FROM WORKER 
where Salary in (select MAX(salary) 
from Worker
GROUP BY DEPARTMENT)


