use learnsql;

select * from learnsql.employee;

select * from learnsql.department;

-- 查询与张晓琳和孙雪华职位和薪资相同的员工信息
select job,salary from employee where name='张晓琳' or name='孙雪华';

select *
from employee
where (job, salary) in (select job, salary from employee where name = '张晓琳' or name = '孙雪华');

-- 查询入职时间是2022-1-1之后的员工信息，及其部门信息
select * from employee where entryDate>'2023-1-1'; # 把查询的结果作为一张表

select emp.name as name, dep.name as depart
from (select * from employee where entryDate > '2023-1-1') as emp
         left outer join department as dep on
    emp.deptId = dep.id;