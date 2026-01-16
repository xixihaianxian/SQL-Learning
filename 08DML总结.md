## DML总结

- ### 1. 添加操作
  ```mysql
  # 为指定的字段添加值
  insert into 表名(字段1, 字段2, 字段3, ...) values (值1, 值2, 值3, ...);
  
  # 为所有的字段添加值
  insert into 表名 values (值1, 值2, 值3, ...);
  ```

- ### 2. 修改数据
  ```mysql
  update 表名 set 字段1=值1, 字段2=值2, ... [where 条件];
  ```

- ### 3. 删除数据
  ```mysql
  delete from 表名 [where 条件];
  ```