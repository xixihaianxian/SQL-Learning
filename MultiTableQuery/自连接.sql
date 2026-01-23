use learnsql;

select * from learnsql.employee;

-- 查询员工以及直属领导的名字
select emp1.name as name, emp2.name as manager
from employee as emp1
         join employee as emp2 on emp1.managerId = emp2.id;

-- 查询员工以及直属领导的名字，如果没有领导一需要显示出来
select emp1.name as name, emp2.name as manager
from employee as emp1
         left outer join employee as emp2 on emp1.managerId = emp2.id;