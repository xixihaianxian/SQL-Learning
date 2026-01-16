use learnsql;

select * from learnsql.emp;

-- 查询年龄在20,21,22,23岁的女性员工信息
select * from learnsql.emp where age in (20,21,22,23) and gender='F';

-- 查询性别为男，同时年龄在21-28岁的，姓名以J开头的员工
select * from learnsql.emp where age>=21 and age<=28 and gender='M' and name like 'J%';

-- 统计员工表中年龄小于28岁的男性员工和女性员工的人数
select gender,count(*) from learnsql.emp where age<28 group by gender;

-- 查询年龄小于等于28岁员工的姓名和年龄，并对结果进行按年龄升序排序，如果年龄相同按入职时间降序排序
select emp.name,emp.age,emp.entryDate from learnsql.emp where age<=28 order by age asc  ,entryDate desc ;

-- 查询性别为男，且年龄在20-28之间的5个员工信息，但排序的结果按年龄升序排序，年龄相同按入职时间升序排序
select * from learnsql.emp where age between 20 and 28 and emp.gender='M' order by age asc ,entryDate desc limit 0,5;