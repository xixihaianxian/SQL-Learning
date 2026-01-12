## DDL总结

- ### 1. 数据库操作
  ```mysql
  show databases; # 展示说有数据库
  
  create database if not exists 数据库名; # 创建数据库
  
  use 数据库名;  # 使用数据库;

  select database(); # 展示前使用的数据库
  
  drop database if exists 数据库名; # 删除数据库
  ```
  
- ### 2. 表操作
  ```mysql
  show tables; # 展示所有表
  
  create table 表名(字段 类型, 字段 类型); # 创建表
  
  desc 表名; # 展示表的字段
  
  show create table 表名; # 展示创建表
  
  alter table 表名 add 字段 类型; # 添加表的字段
  
  alter table 表名 modify 字段 类型; # 修改字段类型
  
  alter table 表名 change 旧字段 新字段 类型; # 修改字段
  
  alter table 旧表名 rename to 新表名; # 修改表名

  alter table 表名 drop 字段名; # 删除字段
  
  drop table if exists 表名; # 删除表
  
  truncate table 表名; # 删除表
  ```