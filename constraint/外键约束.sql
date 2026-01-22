use learnsql;

show tables;

-- 员工表
create table Employee(
    id int auto_increment not null primary key,
    name varchar(10) not null,
    age tinyint check ( age>=0 and age<=120 ),
    job varchar(10) not null ,
    salary smallint not null ,
    entryDate date not null ,
    managerId tinyint,
    deptId int not null,
    constraint fk_emp_dept_id foreign key (deptId) references Department(id) on delete cascade
);

-- 部门表
create table Department(
    id int auto_increment primary key ,
    name varchar(10) not null
);

INSERT INTO Department (name) VALUES
('研发部'),
('销售部'),
('人事部'),
('财务部'),
('市场部');

INSERT INTO Employee (name, age, job, salary, entryDate, managerId, deptId) VALUES
('王铭俊', 28, '工程师', 8000, '2023-03-15', NULL, 1),
('李文博', 32, '架构师', 12000, '2022-07-01', 1, 1),
('张晓琳', 25, '销售', 6000, '2024-01-10', NULL, 2),
('赵一鸣', 29, '销售主管', 9000, '2021-11-20', 2, 2),
('钱多多', 35, 'HR', 7500, '2020-05-12', NULL, 3),
('孙雪华', 27, '会计', 7000, '2023-08-30', NULL, 4),
('周志远', 30, '出纳', 6500, '2022-09-05', 6, 4),
('吴雅婷', 26, '策划', 6800, '2024-02-14', NULL, 5),
('郑凯风', 31, '推广', 7200, '2023-06-18', 8, 5),
('陈思宇', 24, '助理', 5000, '2025-01-05', 4, 3);

select * from Department;

select *from Employee;

alter table Employee add constraint fk_emp_dept_id foreign key (deptId) references Department(id) on update no action on update no action ;

alter table Employee add constraint fk_emp_dept_id foreign key (deptId) references Department(id) on delete cascade on update cascade ;

alter table Employee add constraint fk_emp_dept_id foreign key (deptId) references Department(id) on delete set null on update set null ;

alter table Employee drop foreign key fk_emp_dept_id;

insert into Department values (1,'研发部');

update Department set id=6 where name='研发部';

update Department set id=1 where name='研发部';

delete from Employee;

-- 删除表
drop table if exists Employee;

truncate table Employee;

alter table Employee modify deptId int;

delete from Department where id=1;