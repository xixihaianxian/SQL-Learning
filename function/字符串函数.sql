use learnsql;

-- concat
select concat('hello',' mysql') as Say;

-- lower
select lower('HAHAHA') as Say;

-- upper
select upper('hahaha') as Say;

-- lpad
select lpad('01',5,'0') as Say;

-- rpad
select rpad('01',5,'0') as Say;

-- trim
select trim(' hello mysql ') as Say;

-- substring
select substring('hello mysql',1,5) as Say;

-- 工号变更
update emp set workNo=rpad(workNo,7,'0');
select * from emp;