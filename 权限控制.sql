use learnsql;

-- 查询权限
show grants for 'lisisi'@'localhost';

-- 授予权限
grant all on learnsql.* to 'lisisi'@'localhost';

-- 撤销权限
revoke all on learnsql.* from 'lisisi'@'localhost';