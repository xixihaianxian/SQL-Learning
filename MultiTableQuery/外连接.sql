use learnsql;

select * from employee;

show create table employee;

-- 查询员工表的姓名以及对应的部门信息（左外连接）
select employee.name as name, department.name as department
from employee
         left outer join department on employee.deptId = department.id;

-- 查询部门部门名称以及对应的员工信息（右外连接）
select department.name as department, employee.name as name
from employee
         right outer join department on employee.deptId = department.id;