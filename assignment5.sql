select * from Worker

insert into Worker(Worker_id,First_Name,Last_Name,Salary,Joining_date,Department)  values
(009,'Satish','Verma', 35670,convert(datetime, '2021-07-01 09:00:00'), 'Account')


select * from worker where First_Name not in ('Satish','Vipul' )

select * from Worker where First_Name like '_____h'

select * from Worker where email not like '%@ineruon.ai'