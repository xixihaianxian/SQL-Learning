use learnsql;

select * from emp;

-- 根据性别分组，统计男性员工和女性员工的数量
select gender,count(*) from learnsql.emp group by gender;

-- 根据性别分组，统计男性员工和女性员工的评价年龄
select gender,avg(age) from learnsql.emp group by gender;

-- 查询年龄小于26岁的员工，并根据性别分组，获取人数大于1的性别
select gender,count(*) as 'number' from learnsql.emp where age<26 group by gender having number>1;
