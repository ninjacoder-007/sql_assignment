use sql_assign

select * from Worker

insert into Worker
(Worker_id, First_Name, Last_Name,Salary,Joining_date,Department) 
values
(012,'Shubham','Singhaniya',74123, CONVERT(datetime,'2014-02-09 09:00:00'), 'Admin')

select * from Worker where 
MONTH(Joining_date) = 02 and YEAR (Joining_date) = 2014


select * from Worker where First_Name in (select First_Name from Worker group by Department,First_Name having count(*)>1)
and Department in 
(select Department from Worker group by First_Name, Department having count(*) > 1)


delete from Worker
where Worker_id not in
(select MAX(Worker_id) from Worker
group by First_Name)