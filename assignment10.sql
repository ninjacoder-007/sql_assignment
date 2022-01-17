select * from (select First_Name, Last_Name, Department, salary, DENSE_RANK() over ( order by Salary Desc) rnk from Worker) as a
where rnk = 5;

select * from Worker

select * from Worker
where Salary in
(select Salary from Worker group by Salary having count(Salary) > 1)