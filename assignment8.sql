select * from Worker
intersect
select * from [dbo].[duplicate_worker]
--OR
select * from Worker
where Worker_id in ( select Worker_id from duplicate_worker)


select * from Worker
left join duplicate_worker on 
Worker.Worker_id = duplicate_worker.worker_id

insert into Worker
(Worker_id, First_Name, Last_Name,Salary,Joining_date,Department) 
values
(013,'Karan','Kundra',74123, CONVERT(datetime,'2014-11-10 09:00:00'), 'Admin')
 --OR
select * from Worker
where Worker_id not in(select Worker_id from duplicate_worker)