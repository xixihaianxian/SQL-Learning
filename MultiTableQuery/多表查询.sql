use learnsql;

show tables ;

select * from employee;

select * from department;

update employee set deptId=1 where deptId is null;

select * from employee,department where employee.deptId=department.id;