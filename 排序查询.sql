use learnsql;

-- 根据年龄对公司员工进行升序排序
select * from learnsql.emp order by age asc ;

-- 根据入职时间，对员工进行降序排序
select * from learnsql.emp order by entryDate desc ;

-- 根据年龄对员工进行升序排序，年龄相同，在按照入职时间进行降序排序
select * from learnsql.emp order by age asc, entryDate desc ;