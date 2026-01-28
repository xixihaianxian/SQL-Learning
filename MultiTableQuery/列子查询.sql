use learnsql;

select * from department;

-- 查询销售部和市场部的所有的员工信息
select id from department where name in ('销售部','市场部');
select *
from employee
where deptId in (select id from department where name in ('销售部', '市场部'));



-- 查询比财务部所有员工工资都高的员工信息
select id
from department
where name = '财务部';
select max(employee.salary)
from employee
where deptId = (select id from department where name = '财务部');
select *
from employee
where salary >
      (select max(employee.salary) from employee where deptId = (select id from department where name = '财务部'));
select *
from employee
where salary > all
      (select salary from employee where deptId = (select id from department where name = '财务部'));

-- 查询比研发部任意一人工资都高的员工信息
select *
from employee
where salary > any
      (select salary from employee where deptId = (select id from department where name = '研发部'));