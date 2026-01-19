## DCL总结

- ### 1. 用户管理
  ```mysql
  -- 创建用户
  create user 'user name'@'host' identified by 'password';
  -- 修改用户密码
  alter user 'user name'@'host' identified with mysql_native_password by 'password';
  -- 删除用户
  drop user 'user name'@'host'
  ```

- ### 2. 权限管理
  ```mysql
  -- 查看权限
  show grants for 'user name'@'host';
  -- 授予权限
  grant permission on database to 'user name'@'host';
  -- 撤销权限
  revoke permission on database from 'user name'@'host';
  ```