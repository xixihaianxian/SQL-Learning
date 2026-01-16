use learnsql;

select * from emp;

-- 统计该企业的员工数量
select count(*) from emp;

-- 统计该企业员工的平均年龄
select avg(emp.age) from emp;

-- 统计最大年龄
select max(emp.age) from emp;

-- 统计最小年龄
select min(emp.age) from emp;

-- 统计身份证是32开头的员工的年龄之和
select sum(emp.age) from emp where idCard like '32%';