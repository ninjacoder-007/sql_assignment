

select  REPLACE(First_Name, 'a','A') from Worker


select * from Worker order by First_Name asc , Department desc;

select First_Name , Last_Name , Salary from Worker where Salary = (select max(Salary) from Worker)