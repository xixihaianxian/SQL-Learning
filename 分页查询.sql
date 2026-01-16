use learnsql;

select * from learnsql.emp;

-- 查询第一页的员工数，每页展示10
select * from learnsql.emp limit 0,10;

-- 查询第二页员工数据，每页展示10条数据
select * from learnsql.emp limit 10,10;