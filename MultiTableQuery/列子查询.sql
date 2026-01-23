use learnsql;

-- 查询销售部和市场部的所有的员工信息
select id from department where name in ('销售部','市场部');
select * from employee where deptId in (select id from department where name in ('销售部','市场部'));