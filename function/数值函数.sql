-- ceil
select ceil(3.14) as result;

-- floor
select floor(3.14) as result;

-- mod
select mod(3,4) as result;

-- rand
select rand() as result;

-- round
select round(3.1415926,4) as result;

-- 生成一个6位数是随机验证码
select lpad(round(rand(),6)*1000000,6,'0') as result;