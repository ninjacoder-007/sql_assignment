select * from Worker where Worker_id % 2 != 0

create table duplicate_worker 
( worker_id int not null primary key,
First_name char(20),
Last_name char(20),
salary int,
joining_date datetime,
department char(20)
)

insert into duplicate_worker select * from Worker

select * from duplicate_worker