use learnsql;

-- 查询每个员工的姓名和关联的部门（隐式内连接）
select employee.name as name, department.name as department
from employee,
     department
where employee.deptId = department.id;

-- 查询每一个员工的姓名和关联的部门（显示内连接）
select employee.name as name, department.name as department
from employee
         inner join department on employee.deptId = department.id;
