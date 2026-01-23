use learnsql;

select * from learnsql.employee;

select * from department;

-- 查询销售部所有员工的信息
select id from department where name='销售部';
select name from employee where deptId=(select id from department where name='销售部');
select * from employee where deptId=2;

-- 查询姜尚臻入职后的员工信息
select entryDate from employee where name='姜尚臻';
select * from employee where entryDate>(select entryDate from employee where name='姜尚臻');