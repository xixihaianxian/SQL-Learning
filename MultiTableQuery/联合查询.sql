use learnsql;

select * from learnsql.employee;

-- 查询薪资大于6500，年龄大于28的员工
select *
from employee
where salary > 6500
union
select *
from employee
where age > 28;