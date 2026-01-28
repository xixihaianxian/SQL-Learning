use learnsql;

select * from learnsql.department;

select * from learnsql.employee;

insert into employee(name, age, job, salary, entryDate, managerId, deptId)
values ('刘宇宁',33,'销售',4500,'2022-02-07',3,2);

-- 查询姜尚臻的薪资及直属领导相同的员工信息
select salary,managerId from employee where name='姜尚臻';

select *
from employee
where (salary, managerId) = (select salary, managerId from employee where name = '姜尚臻')
  and name != '姜尚臻';