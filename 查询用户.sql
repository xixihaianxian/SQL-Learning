use mysql;

select * from mysql.user;

-- 创建用户lisisi，只能在当前localhost访问，密码为1433223
create user 'lisisi'@'localhost' identified by '1433223';

-- 创建用户lisisi，可以在任意的主机上访问数据库，密码为1433223
create user 'lisisi'@'%' identified by '1433223';

-- 修改用户的密码，密码为1332333
alter user 'lisisi'@'localhost' identified with mysql_native_password by '1332333';

-- 删除用户'lisisi'@'localhost'
drop user if exists 'lisisi'@'localhost';