insert into Worker (Worker_id, First_Name,Last_Name,Salary,Joining_date,Department) values
(011,'Ashok','Layland',56000,convert(datetime,'2020-07-26 10:00:00'),'HR')


select * from Worker order by Worker_id 

select top 10 * from Worker

select * from Worker 
order by Salary
offset 6 rows
fetch next 1 rows only



select * from Worker order by Salary desc;