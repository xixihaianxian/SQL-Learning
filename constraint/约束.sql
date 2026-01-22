use learnsql;

show tables ;

create table PrimaryClass(
    id int primary key auto_increment comment 'student id',
    name varchar(10) not null unique comment 'student name',
    age int check ( age>0 and age<120 ) comment 'student age',
    status char(1) default '1' comment 'student status',
    gender char(1) comment 'student gender'
) comment 'primary class student information';

select * from PrimaryClass;

desc PrimaryClass;

show create table PrimaryClass;

insert into PrimaryClass(name, age, status, gender) values
('lisisi',19,'1','女'),
('liusisi',18,'1','女');

insert into PrimaryClass(name, age, status, gender) values ('zhangsiyu',20,'0','男');

alter table PrimaryClass modify status char(1) default '1' not null ;

insert into PrimaryClass(name, age, status, gender) values ('liuzixin',21,'0','男');

insert into PrimaryClass(name, age, gender) values ('zhangyu',24,'男');

delete from PrimaryClass where name='zhangyu';