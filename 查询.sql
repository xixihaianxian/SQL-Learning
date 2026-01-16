insert into emp(id,workNo,name,gender,age,entryDate,workAddress) values (22,'12233345', 'liususu', 'F', 33, '2011-11-28', 'Guilin');

use learnsql;

select * from emp;

-- 查询年龄等于25的员工
select * from emp where age=25;

-- 查询年龄小于25的员工
select * from emp where age<25;

-- 查询年龄下于等于25的员工
select * from emp where age<=25;

-- 查询没有身份证号的员工
select * from emp where idCard is null;

-- 查询有身份证的员工
select * from emp where idCard is not null;

-- 查询年龄不等于22的员工
select * from emp where age!=22;

-- 查询年龄在25到30岁之间的员工
select * from emp where age between 25 and 30;
select * from emp where age>=25 and age<=30;

-- 查询性别为女且年龄小于25的员工
select * from emp where gender='F' and age<25 or gender='女' and age<25;

-- 查询年龄等于18或者20或者40的员工
select * from emp where age in (18,20,40);

-- 查询身份证是32开头的员工
select * from emp where idCard like '32%';

-- 查询是身份证最有一位是0的员工
select * from emp where idCard like '%1';