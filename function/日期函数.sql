use learnsql;

-- curdate
select curdate() as result;

-- curtime
select curtime() as result;

-- now
select now() as result;

-- year,month,day
select year(curdate()) as result;
select month(curtime()) as result;
select day(curdate()) as result;

-- date_add
select date_add(now(),interval 17 day );
select date_add(now(),interval 17 month );
select date_add(now(),interval 17 year );

-- datediff
select datediff(date_add(now(),interval 17 month ),now());

-- 获取员工的入职天数，同时估计入职天数进行神升序排序
select name,datediff(now(),emp.entryDate) as 'entryDay' from emp order by entryDay asc ;