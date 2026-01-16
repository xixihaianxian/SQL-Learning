## DQL执行顺序/DQL总结

- ### 1. 执行顺序
  ```mysql
  # from -> where -> group by -> order by -> limit -> seletc
  ```
  
- ### 2. 总结
  ```mysql
  select * from 表名 where 条件 group by 字段 having 条件 order by 字段,升序/降序 limit 索引,查询数量;
  ```